import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C037
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
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
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

/-!
# A345200: G.f. A(x) satisfies: A(x) = x + x^2 * exp(2 * Sum_{k>=1} A(x^k) / k).

The programs for A345200, there is no canonical definition to state claims against.
-/

/-! ## A345200.P5716649699471440109

`∑[A164836(ceil(2^(n-1)))]+1`
-/

namespace A345200.P5716649699471440109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164836 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A345200.P5716649699471440109

/-! ## A345200.P15153989152168197040

`∑[A356955(A331934(n+2))]-n`
-/

namespace A345200.P15153989152168197040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356955 (A331934 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A345200.P15153989152168197040

/-! ## A345200.P17404392809357154268

`A157271(A255705(n)+A145080(n))`
-/

namespace A345200.P17404392809357154268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A255705 n + A145080 n).toNat

end

end A345200.P17404392809357154268

/-! ## A345200.P11401679493799425217

`A244511(A181324(2*n+1))+A198888(n)`
-/

namespace A345200.P11401679493799425217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244511 (A181324 (2 * n + 1)).toNat + A198888 n

end

end A345200.P11401679493799425217

/-!
# A345201: Bit-reverse the odd part of the Zeckendorf representation of n: a(n) = A022290(A057889(A003714(n))).

The programs for A345201, the canonical program `A345201.P2335743236257920929` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345201 has offset 0).

The definition of A345201 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A022290, A057889, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A345201.P2335743236257920929

`A022290(A057889(A003714(n)))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A345201

/-- `A022290(A057889(A003714(n)))` -/
def P2335743236257920929.Spec : Prop :=
  ∀ n, P2335743236257920929.a n = A345201 n

theorem P2335743236257920929.correct : P2335743236257920929.Spec := by
  intro n
  simp only [A345201]

end A345201

/-!
# A345206: Maximum number of unit cubes that can be fully enclosed in n unit cubes.

The programs for A345206, there is no canonical definition to state claims against.
-/

/-! ## A345206.P16373008445871015943

`∑[A102683(A301764(A000124(n)))]`
-/

namespace A345206.P16373008445871015943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A301764 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345206.P16373008445871015943

/-! ## A345206.P3955916521914094539

`A111898(A111939(n+1)+A111894(2*(n+1)))`
-/

namespace A345206.P3955916521914094539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111898 (A111939 (n + 1) + A111894 (2 * (n + 1))).toNat

end

end A345206.P3955916521914094539

/-! ## A345206.P4943368037026528119

`A111895(lt[A181821(n+1), A246335(n)])`
-/

namespace A345206.P4943368037026528119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111895 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A345206.P4943368037026528119

/-! ## A345206.P7820183302567366093

`∑[A101605(A373949(n)+A185216(n)+1)]`
-/

namespace A345206.P7820183302567366093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (A373949 n + A185216 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345206.P7820183302567366093

/-! ## A345206.P5628764748270060649

`floor(A092820(n)/A383694(n+3))`
-/

namespace A345206.P5628764748270060649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A092820 n : ℚ) / (A383694 (n + 3) : ℚ)⌋

end

end A345206.P5628764748270060649

/-!
# A345207: Number of (unlabeled) 7-paths with n vertices.

The programs for A345207, there is no canonical definition to state claims against.
-/

/-! ## A345207.P15903558681329493199

`A103293(n+1)-A025458(A118930(n))`
-/

namespace A345207.P15903558681329493199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103293 (n + 1) - A025458 (A118930 n).toNat

end

end A345207.P15903558681329493199

/-! ## A345207.P3981273527783027159

`A103293(n+1)-A285515(A322364(n))`
-/

namespace A345207.P3981273527783027159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103293 (n + 1) - A285515 (A322364 n).toNat

end

end A345207.P3981273527783027159

/-! ## A345207.P11706276569615590799

`A103293(A032563(n+1))-A010057(3*(n+1))`
-/

namespace A345207.P11706276569615590799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103293 (A032563 (n + 1)).toNat - A010057 (3 * (n + 1))

end

end A345207.P11706276569615590799

/-! ## A345207.P8971575962528566572

`A103293(C(n+1, ∑{d}[(n+1)/∏{p}[n+1, #], #]))`
-/

namespace A345207.P8971575962528566572
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103293 (Nat.choose (n + 1) (∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d))

end

end A345207.P8971575962528566572

/-!
# A345209: Number of Petrie polygons on the regular triangular map corresponding to the principal congruence subgroup Gamma(n) of the modular group.

The programs for A345209, there is no canonical definition to state claims against.
-/

/-! ## A345209.P6542043041131429364

`lcm(2, A000056(n+1)/A301759(n+1))/2`
-/

namespace A345209.P6542043041131429364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (SequenceMachineLib.roundAway ((A000056 (n + 1) : ℚ) / (A301759 (n + 1) : ℚ))) : ℚ) / 2

end

end A345209.P6542043041131429364

/-! ## A345209.P15201303589845502534

`A004525(A000056(n+1)/A301759(n+1))`
-/

namespace A345209.P15201303589845502534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway ((A000056 (n + 1) : ℚ) / (A301759 (n + 1) : ℚ))).toNat

end

end A345209.P15201303589845502534

/-! ## A345209.P1010286964655111580

`A026741(A000056(n+1)/A301759(n+1))`
-/

namespace A345209.P1010286964655111580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((A000056 (n + 1) : ℚ) / (A301759 (n + 1) : ℚ))).toNat

end

end A345209.P1010286964655111580

/-! ## A345209.P16065049340269318377

`A032742(A000056(n+1)/A301759(n+1))`
-/

namespace A345209.P16065049340269318377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (SequenceMachineLib.roundAway ((A000056 (n + 1) : ℚ) / (A301759 (n + 1) : ℚ))).toNat

end

end A345209.P16065049340269318377

/-! ## A345209.P24043950846801327

`A065033(A000056(n+1)/A301759(n+1))`
-/

namespace A345209.P24043950846801327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.roundAway ((A000056 (n + 1) : ℚ) / (A301759 (n + 1) : ℚ))).toNat

end

end A345209.P24043950846801327

/-!
# A345211: Numbers with the same number of odd / even, refactorable divisors.

The programs for A345211, the canonical program `A345211.P1825161859213107462` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345211 has offset 1).

The definition of A345211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345211.P6187596122335288844

`2*comp[lcm(3, n)+n]`
-/

namespace A345211.P6187596122335288844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A345211.P6187596122335288844

namespace A345211

/-- `2*comp[lcm(3, n)+n]` -/
def P6187596122335288844.Spec : Prop :=
  ∀ n, (P6187596122335288844.a n : ℤ) = A345211 (n + 1)

end A345211

/-! ## A345211.P5309209380016121563

`comp[n*and(7, 2-n²)]`
-/

namespace A345211.P5309209380016121563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 7 (2 - (n ^ 2 : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A345211.P5309209380016121563

namespace A345211

/-- `comp[n*and(7, 2-n²)]` -/
def P5309209380016121563.Spec : Prop :=
  ∀ n, (P5309209380016121563.a n : ℤ) = A345211 (n + 1)

end A345211

/-! ## A345211.P5172825636109754610

`2*comp[∪[4*n, 6*n]]`
-/

namespace A345211.P5172825636109754610
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A345211.P5172825636109754610

namespace A345211

/-- `2*comp[∪[4*n, 6*n]]` -/
def P5172825636109754610.Spec : Prop :=
  ∀ n, (P5172825636109754610.a n : ℤ) = A345211 (n + 1)

end A345211

/-! ## A345211.P6228733841436596960

`2*comp[∑[4-and(2, n)]-4]`
-/

namespace A345211.P6228733841436596960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (Nat.land 2 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A345211.P6228733841436596960

namespace A345211

/-- `2*comp[∑[4-and(2, n)]-4]` -/
def P6228733841436596960.Spec : Prop :=
  ∀ n, (P6228733841436596960.a n : ℤ) = A345211 (n + 1)

end A345211

/-! ## A345211.P7245117185944587138

`comp[(n-2)*gcd(6, n²%8)]`
-/

namespace A345211.P7245117185944587138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * (Nat.gcd 6 (n ^ 2 % 8) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A345211.P7245117185944587138

namespace A345211

/-- `comp[(n-2)*gcd(6, n²%8)]` -/
def P7245117185944587138.Spec : Prop :=
  ∀ n, (P7245117185944587138.a n : ℤ) = A345211 (n + 1)

end A345211

/-! ## A345211.P9756307224884592478

`2*comp[∑[gcd(4, n-n²)]-4]`
-/

namespace A345211.P9756307224884592478
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 ((n : ℤ) - (n ^ 2 : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A345211.P9756307224884592478

namespace A345211

/-- `2*comp[∑[gcd(4, n-n²)]-4]` -/
def P9756307224884592478.Spec : Prop :=
  ∀ n, (P9756307224884592478.a n : ℤ) = A345211 (n + 1)

end A345211

/-! ## A345211.P3220165969710577017

`2*comp[n-3-∑[or(n, -3)]]`
-/

namespace A345211.P3220165969710577017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3 - ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A345211.P3220165969710577017

namespace A345211

/-- `2*comp[n-3-∑[or(n, -3)]]` -/
def P3220165969710577017.Spec : Prop :=
  ∀ n, (P3220165969710577017.a n : ℤ) = A345211 (n + 1)

end A345211

/-! ## A345211.P1825161859213107462

`record[lcm(2, lcm(n+1, (n+1)²%6))]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A345211

/-- `record[lcm(2, lcm(n+1, (n+1)²%6))]` -/
def P1825161859213107462.Spec : Prop :=
  ∀ n, (P1825161859213107462.a n : ℤ) = A345211 (n + 1)

theorem P1825161859213107462.correct : P1825161859213107462.Spec := by
  intro n
  simp only [A345211, Nat.add_sub_cancel]

end A345211

/-! ## A345211.P15036572079976529489

`Δ[n²]+or(1, xor(n, (n%8)%3))`
-/

namespace A345211.P15036572079976529489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.lor 1 (Nat.xor n (n % 8 % 3)) : ℤ)

end

end A345211.P15036572079976529489

namespace A345211

/-- `Δ[n²]+or(1, xor(n, (n%8)%3))` -/
def P15036572079976529489.Spec : Prop :=
  ∀ n, P15036572079976529489.a n = A345211 (n + 1)

end A345211

/-! ## A345211.P10669459535225519134

`∑[and(2, (n+2)*∑[n+1])]+2*n`
-/

namespace A345211.P10669459535225519134
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 ((n + 2) * (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * n

end

end A345211.P10669459535225519134

namespace A345211

/-- `∑[and(2, (n+2)*∑[n+1])]+2*n` -/
def P10669459535225519134.Spec : Prop :=
  ∀ n, (P10669459535225519134.a n : ℤ) = A345211 (n + 1)

end A345211

/-! ## A345211.P7612523401413703190

`∪[A259755(n+1), A016825(n)]`
-/

namespace A345211.P7612523401413703190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345211.P7612523401413703190

namespace A345211

/-- `∪[A259755(n+1), A016825(n)]` -/
def P7612523401413703190.Spec : Prop :=
  ∀ n, (P7612523401413703190.a n : ℤ) = A345211 (n + 1)

end A345211

/-! ## A345211.P18374671875364970359

`∪[2*A108118(n+1), A016825(n)]`
-/

namespace A345211.P18374671875364970359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345211.P18374671875364970359

namespace A345211

/-- `∪[2*A108118(n+1), A016825(n)]` -/
def P18374671875364970359.Spec : Prop :=
  ∀ n, (P18374671875364970359.a n : ℤ) = A345211 (n + 1)

end A345211

/-! ## A345211.P9861863478937466899

`∪[2*A108118(n+1), A017593(n)]`
-/

namespace A345211.P9861863478937466899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017593 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345211.P9861863478937466899

namespace A345211

/-- `∪[2*A108118(n+1), A017593(n)]` -/
def P9861863478937466899.Spec : Prop :=
  ∀ n, (P9861863478937466899.a n : ℤ) = A345211 (n + 1)

end A345211

/-! ## A345211.P5567673140701663670

`∪[2*A108118(n+1), A073760(n+1)]`
-/

namespace A345211.P5567673140701663670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345211.P5567673140701663670

namespace A345211

/-- `∪[2*A108118(n+1), A073760(n+1)]` -/
def P5567673140701663670.Spec : Prop :=
  ∀ n, (P5567673140701663670.a n : ℤ) = A345211 (n + 1)

end A345211

/-! ## A345211.P3806104897586739995

`filter[A047410(n+1), A168185(#)]`
-/

namespace A345211.P3806104897586739995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A345211.P3806104897586739995

namespace A345211

/-- `filter[A047410(n+1), A168185(#)]` -/
def P3806104897586739995.Spec : Prop :=
  ∀ n, P3806104897586739995.a n = A345211 (n + 1)

end A345211

/-! ## A345211.P7574228936663790462

`∩[A047410(n+1), A260391(n+1)]`
-/

namespace A345211.P7574228936663790462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345211.P7574228936663790462

namespace A345211

/-- `∩[A047410(n+1), A260391(n+1)]` -/
def P7574228936663790462.Spec : Prop :=
  ∀ n, (P7574228936663790462.a n : ℤ) = A345211 (n + 1)

end A345211

/-! ## A345211.P12696112434162894892

`∩[A047411(n+1), A260391(n+1)]`
-/

namespace A345211.P12696112434162894892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345211.P12696112434162894892

namespace A345211

/-- `∩[A047411(n+1), A260391(n+1)]` -/
def P12696112434162894892.Spec : Prop :=
  ∀ n, (P12696112434162894892.a n : ℤ) = A345211 (n + 1)

end A345211

/-! ## A345211.P3924412479893083195

`∩[A047417(n+1), A260391(n+1)]`
-/

namespace A345211.P3924412479893083195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345211.P3924412479893083195

namespace A345211

/-- `∩[A047417(n+1), A260391(n+1)]` -/
def P3924412479893083195.Spec : Prop :=
  ∀ n, (P3924412479893083195.a n : ℤ) = A345211 (n + 1)

end A345211

/-! ## A345211.P14955394352115625257

`∩[A047433(n+1), A260391(n+1)]`
-/

namespace A345211.P14955394352115625257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345211.P14955394352115625257

namespace A345211

/-- `∩[A047433(n+1), A260391(n+1)]` -/
def P14955394352115625257.Spec : Prop :=
  ∀ n, (P14955394352115625257.a n : ℤ) = A345211 (n + 1)

end A345211

/-! ## A345211.P10671678816552170869

`∩[A047510(n+1), A260391(n+1)]`
-/

namespace A345211.P10671678816552170869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345211.P10671678816552170869

namespace A345211

/-- `∩[A047510(n+1), A260391(n+1)]` -/
def P10671678816552170869.Spec : Prop :=
  ∀ n, (P10671678816552170869.a n : ℤ) = A345211 (n + 1)

end A345211

/-!
# A345212: Numbers with equal numbers of prime and semiprime divisors.

The programs for A345212, the canonical program `A345212.P17671319425580127952` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345212 has offset 1).

The definition of A345212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345212.P17671319425580127952

`eq[A001221(n+1), A086971(n+1)]+1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A345212

/-- `eq[A001221(n+1), A086971(n+1)]+1` -/
def P17671319425580127952.Spec : Prop :=
  ∀ n, (P17671319425580127952.a n : ℤ) = A345212 (n + 1)

theorem P17671319425580127952.correct : P17671319425580127952.Spec := by
  intro n
  simp only [A345212, Nat.add_sub_cancel]

end A345212

/-! ## A345212.P12485593596736762577

`eq[A056169(n+1), A079275(n+1)]+1`
-/

namespace A345212.P12485593596736762577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079275 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A345212.P12485593596736762577

namespace A345212

/-- `eq[A056169(n+1), A079275(n+1)]+1` -/
def P12485593596736762577.Spec : Prop :=
  ∀ n, (P12485593596736762577.a n : ℤ) = A345212 (n + 1)

end A345212

/-! ## A345212.P2084860469470620558

`eq[A106405(n+1), A205745(n+1)]+1`
-/

namespace A345212.P2084860469470620558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205745 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A345212.P2084860469470620558

namespace A345212

/-- `eq[A106405(n+1), A205745(n+1)]+1` -/
def P2084860469470620558.Spec : Prop :=
  ∀ n, (P2084860469470620558.a n : ℤ) = A345212 (n + 1)

end A345212

/-!
# A345213: Primes p such that q^r == r^q (mod p), where p,q,r are consecutive primes.

The programs for A345213, there is no canonical definition to state claims against.
-/

/-! ## A345213.P17565078092992574259

`∩[A089190(n+1), A111166(n+1)]`
-/

namespace A345213.P17565078092992574259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345213.P17565078092992574259

/-!
# A345216: Number of simple graphs on n nodes with no cycle of length 5.

The programs for A345216, there is no canonical definition to state claims against.
-/

/-! ## A345216.P16595475127394355814

`A097564(n)+A024417(A047849(n))`
-/

namespace A345216.P16595475127394355814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 n + A024417 (A047849 n).toNat

end

end A345216.P16595475127394355814

/-! ## A345216.P5029121289413009470

`A265331(A005809(n))+A192905(n)`
-/

namespace A345216.P5029121289413009470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265331 (A005809 n).toNat + A192905 n

end

end A345216.P5029121289413009470

/-! ## A345216.P14402449305621979947

`A192905(n)+A135010(A195259(n))`
-/

namespace A345216.P14402449305621979947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192905 n + A135010 (A195259 n).toNat

end

end A345216.P14402449305621979947

/-!
# A345218: Number of labeled triangle-free connected simple graphs on n vertices.

The programs for A345218, there is no canonical definition to state claims against.
-/

/-! ## A345218.P75146371171428672

`A000265(A079144(n)+A049056(n))`
-/

namespace A345218.P75146371171428672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A079144 n + A049056 n).toNat

end

end A345218.P75146371171428672

/-! ## A345218.P5419706690285103465

`A001281(A079144(n)+A049056(n))`
-/

namespace A345218.P5419706690285103465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A079144 n + A049056 n).toNat

end

end A345218.P5419706690285103465

/-!
# A345219: Number of divisors d of n with an odd number of primes not exceeding d.

The programs for A345219, the canonical program `A345219.P8018862151870191580` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345219 has offset 1).

The definition of A345219 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A345220, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A345219.P8018862151870191580

`A000005(n+1)-A345220(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A345219

/-- `A000005(n+1)-A345220(n+1)` -/
def P8018862151870191580.Spec : Prop :=
  ∀ n, P8018862151870191580.a n = A345219 (n + 1)

theorem P8018862151870191580.correct : P8018862151870191580.Spec := by
  intro n
  simp only [A345219, Nat.add_sub_cancel]

end A345219

/-! ## A345219.P14205651033484791945

`∑{d}[n+1, A071986(#)]`
-/

namespace A345219.P14205651033484791945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A071986 d

end

end A345219.P14205651033484791945

namespace A345219

/-- `∑{d}[n+1, A071986(#)]` -/
def P14205651033484791945.Spec : Prop :=
  ∀ n, P14205651033484791945.a n = A345219 (n + 1)

end A345219

/-! ## A345219.P6700787141633656245

`∑{d}[n+1, A000720(#)%2]`
-/

namespace A345219.P6700787141633656245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A000720 d) 2

end

end A345219.P6700787141633656245

namespace A345219

/-- `∑{d}[n+1, A000720(#)%2]` -/
def P6700787141633656245.Spec : Prop :=
  ∀ n, P6700787141633656245.a n = A345219 (n + 1)

end A345219

/-! ## A345219.P18293769365909370574

`∑{d}[n+1, A000035(A000720(#))]`
-/

namespace A345219.P18293769365909370574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000035 (A000720 d).toNat

end

end A345219.P18293769365909370574

namespace A345219

/-- `∑{d}[n+1, A000035(A000720(#))]` -/
def P18293769365909370574.Spec : Prop :=
  ∀ n, P18293769365909370574.a n = A345219 (n + 1)

end A345219

/-! ## A345219.P4633925782214765516

`A345220(n+1)-A373923(n+1)`
-/

namespace A345219.P4633925782214765516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345220 (n + 1) - A373923 (n + 1)

end

end A345219.P4633925782214765516

namespace A345219

/-- `A345220(n+1)-A373923(n+1)` -/
def P4633925782214765516.Spec : Prop :=
  ∀ n, P4633925782214765516.a n = A345219 (n + 1)

end A345219

/-! ## A345219.P14348515844002269356

`∑{d}[n+1, A131378(#)]`
-/

namespace A345219.P14348515844002269356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A131378 d

end

end A345219.P14348515844002269356

namespace A345219

/-- `∑{d}[n+1, A131378(#)]` -/
def P14348515844002269356.Spec : Prop :=
  ∀ n, P14348515844002269356.a n = A345219 (n + 1)

end A345219

/-! ## A345219.P9245120863491403619

`∑{d}[n+1, A230980(#)%2]`
-/

namespace A345219.P9245120863491403619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A230980 d) 2

end

end A345219.P9245120863491403619

namespace A345219

/-- `∑{d}[n+1, A230980(#)%2]` -/
def P9245120863491403619.Spec : Prop :=
  ∀ n, P9245120863491403619.a n = A345219 (n + 1)

end A345219

/-! ## A345219.P7972112179352381055

`∑{d}[n+1, gcd(n, #)]-∑{d}[n+1, A131377(#)]`
-/

namespace A345219.P7972112179352381055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℤ) - ∑ d ∈ Nat.divisors (f2 n), A131377 d

end

end A345219.P7972112179352381055

namespace A345219

/-- `∑{d}[n+1, gcd(n, #)]-∑{d}[n+1, A131377(#)]` -/
def P7972112179352381055.Spec : Prop :=
  ∀ n, P7972112179352381055.a n = A345219 (n + 1)

end A345219

/-!
# A345220: Number of divisors d of n with an even number of primes not exceeding d.

The programs for A345220, the canonical program `A345220.P5170341548952036932` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345220 has offset 1).

The definition of A345220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345220.P15475283676608715823

`A000005(n+1)-A345219(n+1)`
-/

namespace A345220.P15475283676608715823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A345219 (n + 1)

end

end A345220.P15475283676608715823

namespace A345220

/-- `A000005(n+1)-A345219(n+1)` -/
def P15475283676608715823.Spec : Prop :=
  ∀ n, P15475283676608715823.a n = A345220 (n + 1)

end A345220

/-! ## A345220.P5170341548952036932

`∑{d}[n+1, and(1, A036234(#))]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A345220

/-- `∑{d}[n+1, and(1, A036234(#))]` -/
def P5170341548952036932.Spec : Prop :=
  ∀ n, P5170341548952036932.a n = A345220 (n + 1)

theorem P5170341548952036932.correct : P5170341548952036932.Spec := by
  intro n
  simp only [A345220, Nat.add_sub_cancel]

end A345220

/-! ## A345220.P16973153971096981636

`∑{d}[n+1, floor(acot(A071986(#)))]`
-/

namespace A345220.P16973153971096981636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊SequenceMachineLib.acot (A071986 d : ℝ)⌋

end

end A345220.P16973153971096981636

namespace A345220

/-- `∑{d}[n+1, floor(acot(A071986(#)))]` -/
def P16973153971096981636.Spec : Prop :=
  ∀ n, P16973153971096981636.a n = A345220 (n + 1)

end A345220

/-! ## A345220.P9025202062833835271

`∑{d}[n+1, (A000720(#)+1)%2]`
-/

namespace A345220.P9025202062833835271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A000720 d + 1) 2

end

end A345220.P9025202062833835271

namespace A345220

/-- `∑{d}[n+1, (A000720(#)+1)%2]` -/
def P9025202062833835271.Spec : Prop :=
  ∀ n, P9025202062833835271.a n = A345220 (n + 1)

end A345220

/-! ## A345220.P16281000908826623097

`A373923(n+1)+A345219(n+1)`
-/

namespace A345220.P16281000908826623097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373923 (n + 1) + A345219 (n + 1)

end

end A345220.P16281000908826623097

namespace A345220

/-- `A373923(n+1)+A345219(n+1)` -/
def P16281000908826623097.Spec : Prop :=
  ∀ n, P16281000908826623097.a n = A345220 (n + 1)

end A345220

/-! ## A345220.P1107529215888501879

`∑{d}[n+1, A020639(2*#)]/2-A345219(n+1)`
-/

namespace A345220.P1107529215888501879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A020639 (2 * d) : ℤ) : ℚ) / 2 - (A345219 (n + 1) : ℚ)

end

end A345220.P1107529215888501879

namespace A345220

/-- `∑{d}[n+1, A020639(2*#)]/2-A345219(n+1)` -/
def P1107529215888501879.Spec : Prop :=
  ∀ n, P1107529215888501879.a n = (A345220 (n + 1) : ℚ)

end A345220

/-! ## A345220.P12424140288838279586

`∑{d}[n+1, A131377(#)]`
-/

namespace A345220.P12424140288838279586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A131377 d

end

end A345220.P12424140288838279586

namespace A345220

/-- `∑{d}[n+1, A131377(#)]` -/
def P12424140288838279586.Spec : Prop :=
  ∀ n, P12424140288838279586.a n = A345220 (n + 1)

end A345220

/-! ## A345220.P6199632518976135174

`∏{e}[n+1, #+1]-∑{d}[n+1, A131378(#)]`
-/

namespace A345220.P6199632518976135174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - ∑ d ∈ Nat.divisors (f2 n), A131378 d

end

end A345220.P6199632518976135174

namespace A345220

/-- `∏{e}[n+1, #+1]-∑{d}[n+1, A131378(#)]` -/
def P6199632518976135174.Spec : Prop :=
  ∀ n, P6199632518976135174.a n = A345220 (n + 1)

end A345220

/-! ## A345220.P9433467123040278461

`∑{d}[n+1, C(A048656(#)+1, 2)%3]`
-/

namespace A345220.P9433467123040278461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose (A048656 d + 1).toNat 2 % 3

end

end A345220.P9433467123040278461

namespace A345220

/-- `∑{d}[n+1, C(A048656(#)+1, 2)%3]` -/
def P9433467123040278461.Spec : Prop :=
  ∀ n, (P9433467123040278461.a n : ℤ) = A345220 (n + 1)

end A345220

/-!
# A345221: Number of divisors of n with an even sum of divisors.

The programs for A345221, the canonical program `A345221.P15261552467884618322` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345221 has offset 1).

The definition of A345221 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A065704, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A345221.P15261552467884618322

`A000005(n+1)-A065704(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A345221

/-- `A000005(n+1)-A065704(n+1)` -/
def P15261552467884618322.Spec : Prop :=
  ∀ n, P15261552467884618322.a n = A345221 (n + 1)

theorem P15261552467884618322.correct : P15261552467884618322.Spec := by
  intro n
  simp only [A345221, Nat.add_sub_cancel]

end A345221

/-! ## A345221.P4221492125677319380

`A065704(n+1)-A348223(n+1)`
-/

namespace A345221.P4221492125677319380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065704 (n + 1) - A348223 (n + 1)

end

end A345221.P4221492125677319380

namespace A345221

/-- `A065704(n+1)-A348223(n+1)` -/
def P4221492125677319380.Spec : Prop :=
  ∀ n, P4221492125677319380.a n = A345221 (n + 1)

end A345221

/-! ## A345221.P3280884299283695719

`A328372(n+1)-A347992(n+1)`
-/

namespace A345221.P3280884299283695719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328372 (n + 1) - A347992 (n + 1)

end

end A345221.P3280884299283695719

namespace A345221

/-- `A328372(n+1)-A347992(n+1)` -/
def P3280884299283695719.Spec : Prop :=
  ∀ n, P3280884299283695719.a n = A345221 (n + 1)

end A345221

/-! ## A345221.P6380120747672812865

`∑{d}[n+1, A001511(#)*A324908((n+1)/#)]`
-/

namespace A345221.P6380120747672812865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A324908 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345221.P6380120747672812865

namespace A345221

/-- `∑{d}[n+1, A001511(#)*A324908((n+1)/#)]` -/
def P6380120747672812865.Spec : Prop :=
  ∀ n, P6380120747672812865.a n = A345221 (n + 1)

end A345221

/-! ## A345221.P5979383626970641939

`∑{d}[n+1, A059841(A000203(#))]`
-/

namespace A345221.P5979383626970641939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (A000203 d).toNat

end

end A345221.P5979383626970641939

namespace A345221

/-- `∑{d}[n+1, A059841(A000203(#))]` -/
def P5979383626970641939.Spec : Prop :=
  ∀ n, P5979383626970641939.a n = A345221 (n + 1)

end A345221

/-!
# A345222: Number of divisors of n with a prime number of divisors.

The programs for A345222, the canonical program `A345222.P1944739227301177000` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345222 has offset 1).

The definition of A345222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345222.P757266345626305886

`∑{e}[n+1, A000720(#+1)]`
-/

namespace A345222.P757266345626305886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000720 (Nat.factorization (f1 n) p + 1)

end

end A345222.P757266345626305886

namespace A345222

/-- `∑{e}[n+1, A000720(#+1)]` -/
def P757266345626305886.Spec : Prop :=
  ∀ n, P757266345626305886.a n = A345222 (n + 1)

end A345222

/-! ## A345222.P1944739227301177000

`∑{e}[n+1, A230980(#+1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A345222

/-- `∑{e}[n+1, A230980(#+1)]` -/
def P1944739227301177000.Spec : Prop :=
  ∀ n, P1944739227301177000.a n = A345222 (n + 1)

theorem P1944739227301177000.correct : P1944739227301177000.Spec := by
  intro n
  simp only [A345222, Nat.add_sub_cancel]

end A345222

/-! ## A345222.P13731178742668063488

`∑{e}[n+1, floor(sqrt(A032937(#+1)+1))]`
-/

namespace A345222.P13731178742668063488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.sqrt (A032937 (Nat.factorization (f1 n) p + 1) + 1)

end

end A345222.P13731178742668063488

namespace A345222

/-- `∑{e}[n+1, floor(sqrt(A032937(#+1)+1))]` -/
def P13731178742668063488.Spec : Prop :=
  ∀ n, P13731178742668063488.a n = A345222 (n + 1)

end A345222

/-! ## A345222.P16261373373125280703

`∑{d}[n+1, A010051(A000005(#))]`
-/

namespace A345222.P16261373373125280703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 (A000005 d).toNat

end

end A345222.P16261373373125280703

namespace A345222

/-- `∑{d}[n+1, A010051(A000005(#))]` -/
def P16261373373125280703.Spec : Prop :=
  ∀ n, P16261373373125280703.a n = A345222 (n + 1)

end A345222

/-! ## A345222.P8236937588524861412

`A299090(A112624(n+1))+A001221(n+1)`
-/

namespace A345222.P8236937588524861412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299090 (A112624 (n + 1)).toNat + A001221 (n + 1)

end

end A345222.P8236937588524861412

namespace A345222

/-- `A299090(A112624(n+1))+A001221(n+1)` -/
def P8236937588524861412.Spec : Prop :=
  ∀ n, P8236937588524861412.a n = A345222 (n + 1)

end A345222

/-! ## A345222.P13543114624583532714

`A001221(n+1)+A001221(A294897(n+1))`
-/

namespace A345222.P13543114624583532714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + A001221 (A294897 (n + 1)).toNat

end

end A345222.P13543114624583532714

namespace A345222

/-- `A001221(n+1)+A001221(A294897(n+1))` -/
def P13543114624583532714.Spec : Prop :=
  ∀ n, P13543114624583532714.a n = A345222 (n + 1)

end A345222

/-! ## A345222.P16952419411990221687

`A001222(∏{e}[n+1, 6^#-1])`
-/

namespace A345222.P16952419411990221687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), ((6 ^ Nat.factorization (f1 n) p : ℤ) - 1)).toNat

end

end A345222.P16952419411990221687

namespace A345222

/-- `A001222(∏{e}[n+1, 6^#-1])` -/
def P16952419411990221687.Spec : Prop :=
  ∀ n, P16952419411990221687.a n = A345222 (n + 1)

end A345222

/-! ## A345222.P12222059893222981765

`∑{e}[n+1, A043537(A073733(#))]`
-/

namespace A345222.P12222059893222981765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A043537 (A073733 (Nat.factorization (f1 n) p)).toNat

end

end A345222.P12222059893222981765

namespace A345222

/-- `∑{e}[n+1, A043537(A073733(#))]` -/
def P12222059893222981765.Spec : Prop :=
  ∀ n, P12222059893222981765.a n = A345222 (n + 1)

end A345222

/-! ## A345222.P6821932902220575215

`A056239(A000005(n+1)%A033870(2*(n+2)))`
-/

namespace A345222.P6821932902220575215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.tmod (A000005 (n + 1)) (A033870 (2 * (n + 2)))).toNat

end

end A345222.P6821932902220575215

namespace A345222

/-- `A056239(A000005(n+1)%A033870(2*(n+2)))` -/
def P6821932902220575215.Spec : Prop :=
  ∀ n, P6821932902220575215.a n = A345222 (n + 1)

end A345222

/-! ## A345222.P16433943815584660903

`A056239(A056239(A328166(n+1)))`
-/

namespace A345222.P16433943815584660903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A056239 (A328166 (n + 1)).toNat).toNat

end

end A345222.P16433943815584660903

namespace A345222

/-- `A056239(A056239(A328166(n+1)))` -/
def P16433943815584660903.Spec : Prop :=
  ∀ n, P16433943815584660903.a n = A345222 (n + 1)

end A345222

/-! ## A345222.P13140786735968334391

`A056239(A000005(n+1))%A033833(2*n+1)`
-/

namespace A345222.P13140786735968334391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A000005 (n + 1)).toNat) (A033833 (2 * n + 1))

end

end A345222.P13140786735968334391

namespace A345222

/-- `A056239(A000005(n+1))%A033833(2*n+1)` -/
def P13140786735968334391.Spec : Prop :=
  ∀ n, P13140786735968334391.a n = A345222 (n + 1)

end A345222

/-! ## A345222.P3234836743178664220

`A385378(A129202(n))`
-/

namespace A345222.P3234836743178664220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385378 (A129202 n).toNat

end

end A345222.P3234836743178664220

namespace A345222

/-- `A385378(A129202(n))` -/
def P3234836743178664220.Spec : Prop :=
  ∀ n, P3234836743178664220.a n = A345222 (n + 1)

end A345222

/-! ## A345222.P3977454602649716026

`∑{e}[A019554(A064549(n+1)), #]`
-/

namespace A345222.P3977454602649716026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A064549 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A345222.P3977454602649716026

namespace A345222

/-- `∑{e}[A019554(A064549(n+1)), #]` -/
def P3977454602649716026.Spec : Prop :=
  ∀ n, (P3977454602649716026.a n : ℤ) = A345222 (n + 1)

end A345222

/-! ## A345222.P6785754256703053720

`A122375(A005179(A046951((n+1)²)))`
-/

namespace A345222.P6785754256703053720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122375 (A005179 (A046951 ((n + 1) ^ 2)).toNat).toNat

end

end A345222.P6785754256703053720

namespace A345222

/-- `A122375(A005179(A046951((n+1)²)))` -/
def P6785754256703053720.Spec : Prop :=
  ∀ n, P6785754256703053720.a n = A345222 (n + 1)

end A345222

/-! ## A345222.P8673824846135817057

`A275024(A003963(A007425((n+1)²)))`
-/

namespace A345222.P8673824846135817057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275024 (A003963 (A007425 ((n + 1) ^ 2)).toNat).toNat

end

end A345222.P8673824846135817057

namespace A345222

/-- `A275024(A003963(A007425((n+1)²)))` -/
def P8673824846135817057.Spec : Prop :=
  ∀ n, P8673824846135817057.a n = A345222 (n + 1)

end A345222

/-! ## A345222.P4152533696296221966

`A001222(A019554((n+1)*A007947(n+1)))`
-/

namespace A345222.P4152533696296221966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A019554 ((n + 1 : ℤ) * A007947 (n + 1)).toNat).toNat

end

end A345222.P4152533696296221966

namespace A345222

/-- `A001222(A019554((n+1)*A007947(n+1)))` -/
def P4152533696296221966.Spec : Prop :=
  ∀ n, P4152533696296221966.a n = A345222 (n + 1)

end A345222

/-!
# A345225: a(n) = order of 2-primary subgroup of the group K_n(Z).

The programs for A345225, there is no canonical definition to state claims against.
-/

/-! ## A345225.P3409529570845405698

`A006519(A345267(n))`
-/

namespace A345225.P3409529570845405698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A345267 n).toNat

end

end A345225.P3409529570845405698

/-! ## A345225.P3417240589528208729

`gcd(A000302(n), A008593(A345267(n)))`
-/

namespace A345225.P3417240589528208729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000302 n) (A008593 (A345267 n).toNat)

end

end A345225.P3417240589528208729

/-! ## A345225.P16255782239185795035

`gcd(A000038(n), A055975(A345267(n)))`
-/

namespace A345225.P16255782239185795035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A055975 (A345267 n).toNat)

end

end A345225.P16255782239185795035

/-! ## A345225.P4750357231290574716

`gcd(A008706(A345267(n)), A198633(n))`
-/

namespace A345225.P4750357231290574716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008706 (A345267 n).toNat) (A198633 n)

end

end A345225.P4750357231290574716

/-! ## A345225.P7397569151708690837

`∑{d}[A055975(A345267(n)), A000010(#)]`
-/

namespace A345225.P7397569151708690837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (A345267 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A345225.P7397569151708690837

/-!
# A345226: Irregular triangle, row sums equal A000041; in the format of A233932.

The programs for A345226, there is no canonical definition to state claims against.
-/

/-! ## A345226.P4112561347394961563

`A093032(A326333(n)+A285914(n+1))`
-/

namespace A345226.P4112561347394961563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093032 (A326333 n + A285914 (n + 1)).toNat

end

end A345226.P4112561347394961563

/-! ## A345226.P2533695713663260005

`A055087(n)+A000001(A001844(2*(n+2)))`
-/

namespace A345226.P2533695713663260005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n + A000001 (A001844 (2 * (n + 2))).toNat

end

end A345226.P2533695713663260005

/-! ## A345226.P9970230476047658924

`A100484(n+1)%A342309(A100484(n+1))`
-/

namespace A345226.P9970230476047658924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100484 (n + 1)) (A342309 (A100484 (n + 1)).toNat)

end

end A345226.P9970230476047658924

/-! ## A345226.P7251011206579718343

`A326568(C(A226649(2*n+1), A340366(n+1)))`
-/

namespace A345226.P7251011206579718343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326568 (Nat.choose (A226649 (2 * n + 1)).toNat (A340366 (n + 1)).toNat)

end

end A345226.P7251011206579718343

/-! ## A345226.P5652281159674659252

`A238404(A069834(n+1))`
-/

namespace A345226.P5652281159674659252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238404 (A069834 (n + 1)).toNat

end

end A345226.P5652281159674659252

/-!
# A345228: Square array T(m, n), read by ascending antidiagonals. Let f(k) = k/2 if k is even, otherwise ((2*n+1)*k + 2*T(m, n) + 1)/2, T(m, n) is the smallest integer greater than -1, where m = f^j(m) for j > 0 exists. f^j(m) means the j-th iterate of f(m).

The programs for A345228, there is no canonical definition to state claims against.
-/

/-! ## A345228.P254216181676998542

`A159780(2*A309141(n+1))`
-/

namespace A345228.P254216181676998542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159780 (2 * A309141 (n + 1)).toNat

end

end A345228.P254216181676998542

/-! ## A345228.P13625919874998277879

`A063962(C(n, A181061(2*(n+1)))+1)`
-/

namespace A345228.P13625919874998277879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (Nat.choose n (A181061 (2 * (n + 1))).toNat + 1)

end

end A345228.P13625919874998277879

/-! ## A345228.P3934643438902802573

`A231561(A262307(n+4))%A269982(3*(n+1))`
-/

namespace A345228.P3934643438902802573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231561 (A262307 (n + 4)).toNat) (A269982 (3 * (n + 1)))

end

end A345228.P3934643438902802573

/-! ## A345228.P10047566790288975181

`A084888(A015698(n+2))`
-/

namespace A345228.P10047566790288975181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084888 (A015698 (n + 2)).toNat

end

end A345228.P10047566790288975181

/-! ## A345228.P14710463134101502581

`floor(2^(n-1))%A000120(A327352(n))`
-/

namespace A345228.P14710463134101502581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (A000120 (A327352 n).toNat)

end

end A345228.P14710463134101502581

/-!
# A345229: Square array T(n,k), n >= 1, k >= 1, read by antidiagonals, where T(n,k) = Sum_{1 <= x_1 <= x_2 <= ... <= x_k <= n} gcd(x_1, x_2, ..., x_k).

The programs for A345229, there is no canonical definition to state claims against.
-/

/-! ## A345229.P17942161400835459310

`A086271(n+1)+A024360(A329070(n))`
-/

namespace A345229.P17942161400835459310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086271 (n + 1) + A024360 (A329070 n).toNat

end

end A345229.P17942161400835459310

/-! ## A345229.P13370741779567725907

`or(A010060(A014495(n)), A086271(n+1))`
-/

namespace A345229.P13370741779567725907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010060 (A014495 n).toNat) (A086271 (n + 1))

end

end A345229.P13370741779567725907

/-! ## A345229.P6689358849457234056

`or(A058710(A058710(n)), A086271(n+1))`
-/

namespace A345229.P6689358849457234056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A058710 (A058710 n).toNat) (A086271 (n + 1))

end

end A345229.P6689358849457234056

/-! ## A345229.P12019219934489967918

`or(A086271(n+1), A250299(A134512(n)))`
-/

namespace A345229.P12019219934489967918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A086271 (n + 1)) (A250299 (A134512 n).toNat)

end

end A345229.P12019219934489967918

/-! ## A345229.P15973946160264373779

`A186747(A008279(n+1))+A086271(n+1)`
-/

namespace A345229.P15973946160264373779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186747 (A008279 (n + 1)).toNat + A086271 (n + 1)

end

end A345229.P15973946160264373779

/-!
# A345230: a(n) = Sum_{1 <= x_1 <= x_2 <= ... <= x_n <= n} gcd(x_1, x_2, ..., x_n).

The programs for A345230, there is no canonical definition to state claims against.
-/

/-! ## A345230.P10998830442552889407

`A149917(n)-A239136(A010551(n))`
-/

namespace A345230.P10998830442552889407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149917 n - A239136 (A010551 n).toNat

end

end A345230.P10998830442552889407

/-! ## A345230.P6501745655691116942

`A003056(floor(10^(n-1)))`
-/

namespace A345230.P6501745655691116942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

end

end A345230.P6501745655691116942

/-!
# A345234: G.f. A(x) satisfies: A(x) = x + x^2 * exp(A(x) - A(-x^2)/2 + A(x^3)/3 - A(-x^4)/4 + ...).

The programs for A345234, there is no canonical definition to state claims against.
-/

/-! ## A345234.P14390232268597870907

`A348403(n+1)+A003056(A345243(n+1))`
-/

namespace A345234.P14390232268597870907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348403 (n + 1) + A003056 (A345243 (n + 1)).toNat

end

end A345234.P14390232268597870907

/-! ## A345234.P15444895333037113905

`A003056(A345243(n+1))+A348402(n+1)-A348404(n+1)`
-/

namespace A345234.P15444895333037113905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A345243 (n + 1)).toNat + (A348402 (n + 1) - A348404 (n + 1))

end

end A345234.P15444895333037113905

/-! ## A345234.P12560279579302023943

`floor(root(A264639(n+1), 7))`
-/

namespace A345234.P12560279579302023943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A264639 (n + 1) : ℝ) ^ (1 / (7 : ℝ))⌋

end

end A345234.P12560279579302023943

/-! ## A345234.P3079178566594452802

`A003056(A128816(n))`
-/

namespace A345234.P3079178566594452802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A128816 n).toNat

end

end A345234.P3079178566594452802

/-! ## A345234.P16255451593595801162

`A103128(A351437(n))`
-/

namespace A345234.P16255451593595801162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A351437 n).toNat

end

end A345234.P16255451593595801162

/-!
# A345235: G.f. A(x) satisfies: A(x) = x + x^2 * exp(A(x) + A(-x^2)/2 + A(x^3)/3 + A(-x^4)/4 + ...).

The programs for A345235, there is no canonical definition to state claims against.
-/

/-! ## A345235.P11433312872884346663

`A349520(floor(sqrt(n!)))`
-/

namespace A345235.P11433312872884346663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (Nat.sqrt (Nat.factorial n))

end

end A345235.P11433312872884346663

/-! ## A345235.P3153929215476034889

`A227568(A000571(n))`
-/

namespace A345235.P3153929215476034889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A000571 n).toNat

end

end A345235.P3153929215476034889

/-! ## A345235.P14681490006132824723

`A295866(A036250(n))`
-/

namespace A345235.P14681490006132824723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295866 (A036250 n).toNat

end

end A345235.P14681490006132824723

/-! ## A345235.P10900545972600681314

`A295866(A036251(n))`
-/

namespace A345235.P10900545972600681314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295866 (A036251 n).toNat

end

end A345235.P10900545972600681314

/-! ## A345235.P1402750054661425524

`A111651(A246555(n))`
-/

namespace A345235.P1402750054661425524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (A246555 n).toNat

end

end A345235.P1402750054661425524

/-!
# A345236: Triangle read by rows: The rightmost column contains the terms of A002262 starting at A002262(1). Each time a column's value is zero (except for a(0)), the column to its left starts at the next term in A002262, or if that column does not yet exist, it starts at A002262(2).

The programs for A345236, there is no canonical definition to state claims against.
-/

/-! ## A345236.P12346257410709493687

`A010060(A333854(3*n+4))+A010060(n)`
-/

namespace A345236.P12346257410709493687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A333854 (3 * n + 4)).toNat + A010060 n

end

end A345236.P12346257410709493687

/-! ## A345236.P4321195417089554219

`A340006(or(A000328(n), A083920(n)))`
-/

namespace A345236.P4321195417089554219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340006 (Int.lor (A000328 n) (A083920 n)).toNat

end

end A345236.P4321195417089554219

/-! ## A345236.P7997616072317321076

`A030341(n*A128731(n))`
-/

namespace A345236.P7997616072317321076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 ((n : ℤ) * A128731 n).toNat

end

end A345236.P7997616072317321076

/-! ## A345236.P10518696250977890822

`A335617(A116601(n))+1-char[xor(n, 2*n)]`
-/

namespace A345236.P10518696250977890822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335617 (A116601 n).toNat + (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A345236.P10518696250977890822

/-! ## A345236.P17552963694546150507

`A379643(A256755(n+1))`
-/

namespace A345236.P17552963694546150507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379643 (A256755 (n + 1)).toNat

end

end A345236.P17552963694546150507

/-!
# A345239: Primes p such that p+2^k is composite for all k with 2^k < p.

The programs for A345239, there is no canonical definition to state claims against.
-/

/-! ## A345239.P1912827125259104100

`A045344(eq[0, A345238(n+1)])`
-/

namespace A345239.P1912827125259104100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A345239.P1912827125259104100

/-! ## A345239.P8270448487208781879

`A065091(eq[0, A345238(n+1)])`
-/

namespace A345239.P8270448487208781879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A345239.P8270448487208781879

/-! ## A345239.P7697744835838384373

`A000040(eq[0, A345238(n+1)]+1)`
-/

namespace A345239.P7697744835838384373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A345239.P7697744835838384373

/-! ## A345239.P12600069471583253493

`A006005(eq[0, A345238(n+1)]+1)`
-/

namespace A345239.P12600069471583253493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A345239.P12600069471583253493

/-! ## A345239.P14918859261371582729

`p?[gcd(A000040(n+1), A345238(n+1))]`
-/

namespace A345239.P14918859261371582729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A345238 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A345239.P14918859261371582729

/-!
# A345240: a(1) = 1; thereafter a(n) = A161406(a(n-1)).

The programs for A345240, there is no canonical definition to state claims against.
-/

/-! ## A345240.P4729079308362032541

`A161406(a(n-1))` with `a(0)=1, a(1)=52, a(2)=158, a(3)=229, a(4)=278`
-/

namespace A345240.P4729079308362032541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 52, 158, 229, 278] fun n a =>
  A161406 (a (n - 1)).toNat

end

end A345240.P4729079308362032541

/-!
# A345241: G.f. A(x) satisfies: A(x) = x + x^2 * exp(3 * Sum_{k>=1} A(x^k) / k).

The programs for A345241, there is no canonical definition to state claims against.
-/

/-! ## A345241.P4778918420750455100

`A210709(4*n+1)+A000048(2*n+1)`
-/

namespace A345241.P4778918420750455100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210709 (4 * n + 1) + A000048 (2 * n + 1)

end

end A345241.P4778918420750455100

/-! ## A345241.P4022995011650035305

`A149834(n)-A001221(A273145(n))`
-/

namespace A345241.P4022995011650035305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149834 n - A001221 (A273145 n).toNat

end

end A345241.P4022995011650035305

/-! ## A345241.P13937470565118533936

`A210709(A000032(n))+A051841(2*n+1)`
-/

namespace A345241.P13937470565118533936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210709 (A000032 n).toNat + A051841 (2 * n + 1)

end

end A345241.P13937470565118533936

/-!
# A345242: G.f. A(x) satisfies: A(x) = x + x^2 * exp(4 * Sum_{k>=1} A(x^k) / k).

The programs for A345242, there is no canonical definition to state claims against.
-/

/-! ## A345242.P12703725242990336243

`A053615(A064641(n))+A015521(n)`
-/

namespace A345242.P12703725242990336243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A064641 n).toNat + A015521 n

end

end A345242.P12703725242990336243

/-! ## A345242.P3519504925260658105

`A034380(A284242(2*n))+A001196(A001629(n))`
-/

namespace A345242.P3519504925260658105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (A284242 (2 * n)).toNat + A001196 (A001629 n).toNat

end

end A345242.P3519504925260658105

/-!
# A345243: G.f. A(x) satisfies: A(x) = x + x^2 * exp(2 * Sum_{k>=1} (-1)^(k+1) * A(x^k) / k).

The programs for A345243, there is no canonical definition to state claims against.
-/

/-! ## A345243.P4109375179716006345

`A008651(A106729(n)+10)+A002262(A060577(n))`
-/

namespace A345243.P4109375179716006345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A106729 n + 10).toNat + A002262 (A060577 n).toNat

end

end A345243.P4109375179716006345

/-! ## A345243.P11216965959517258673

`A051889(A113682(n))`
-/

namespace A345243.P11216965959517258673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A113682 n).toNat

end

end A345243.P11216965959517258673

/-! ## A345243.P11549009151435740297

`A276581(A161131(n))+A056556(n)`
-/

namespace A345243.P11549009151435740297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A161131 n).toNat + A056556 n

end

end A345243.P11549009151435740297

/-! ## A345243.P10731826605540731174

`A333222(A123916(n+1))+A007318(n)`
-/

namespace A345243.P10731826605540731174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333222 (A123916 (n + 1)).toNat + A007318 n

end

end A345243.P10731826605540731174

/-!
# A345244: G.f. A(x) satisfies: A(x) = x + x^2 * exp(3 * Sum_{k>=1} (-1)^(k+1) * A(x^k) / k).

The programs for A345244, there is no canonical definition to state claims against.
-/

/-! ## A345244.P7558841379627625685

`A014419(A073193(n))`
-/

namespace A345244.P7558841379627625685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014419 (A073193 n).toNat

end

end A345244.P7558841379627625685

/-! ## A345244.P16537828974836025716

`A014419(A148151(n))`
-/

namespace A345244.P16537828974836025716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014419 (A148151 n).toNat

end

end A345244.P16537828974836025716

/-! ## A345244.P13017574674339426025

`A014419(A148152(n))`
-/

namespace A345244.P13017574674339426025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014419 (A148152 n).toNat

end

end A345244.P13017574674339426025

/-!
# A345245: G.f. A(x) satisfies: A(x) = x + x^2 * exp(4 * Sum_{k>=1} (-1)^(k+1) * A(x^k) / k).

The programs for A345245, there is no canonical definition to state claims against.
-/

/-! ## A345245.P11970501258127797726

`A295072(eq[A026736(2*n), A353352(n+3)])`
-/

namespace A345245.P11970501258127797726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026736 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353352 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295072 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A345245.P11970501258127797726

/-! ## A345245.P10213109132942036177

`A079210(A042005(n))`
-/

namespace A345245.P10213109132942036177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079210 (A042005 n).toNat

end

end A345245.P10213109132942036177

/-!
# A345246: Number of 2-connected unlabeled simple graphs with no triangles.

The programs for A345246, there is no canonical definition to state claims against.
-/

/-! ## A345246.P14324936812509288381

`A139711(A005651(n))+A061395(n+1)`
-/

namespace A345246.P14324936812509288381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139711 (A005651 n).toNat + A061395 (n + 1)

end

end A345246.P14324936812509288381

/-! ## A345246.P7243916943011726116

`A103221(A081671(n))+A078357(n+1)`
-/

namespace A345246.P7243916943011726116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A081671 n).toNat + A078357 (n + 1)

end

end A345246.P7243916943011726116

/-!
# A345247: Number of unlabeled graphs of odd girth at least 7 with n vertices.

The programs for A345247, there is no canonical definition to state claims against.
-/

/-! ## A345247.P1196570253837189935

`A117546(A001710(n))+A076278(n+1)`
-/

namespace A345247.P1196570253837189935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117546 (A001710 n).toNat + A076278 (n + 1)

end

end A345247.P1196570253837189935

/-! ## A345247.P3899799331502886344

`A351202(A130018(n))+A076278(n+1)`
-/

namespace A345247.P3899799331502886344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351202 (A130018 n).toNat + A076278 (n + 1)

end

end A345247.P3899799331502886344

/-! ## A345247.P2732557748483508342

`A278567(A230714(n))+A076278(n+1)`
-/

namespace A345247.P2732557748483508342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278567 (A230714 n).toNat + A076278 (n + 1)

end

end A345247.P2732557748483508342

/-!
# A345248: Number of labeled connected simple graphs on n vertices without cycles of length 4.

The programs for A345248, there is no canonical definition to state claims against.
-/

/-! ## A345248.P1670408586970099301

`A167389(C(∑[n], n))-1`
-/

namespace A345248.P1670408586970099301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167389 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n) - 1

end

end A345248.P1670408586970099301

/-!
# A345249: Number of labeled simple graphs on n vertices without cycles of length 4.

The programs for A345249, there is no canonical definition to state claims against.
-/

/-! ## A345249.P9768123652661167037

`∑[A026510(n^n)]`
-/

namespace A345249.P9768123652661167037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026510 (n ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345249.P9768123652661167037

/-!
# A345250: a(n) is the number of divisors of A344422(n).

The programs for A345250, there is no canonical definition to state claims against.
-/

/-! ## A345250.P1861505455567609485

`A000005(A344422(n+1))`
-/

namespace A345250.P1861505455567609485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A344422 (n + 1)).toNat

end

end A345250.P1861505455567609485

/-! ## A345250.P6902000929315120442

`record[A076888(n+1)]`
-/

namespace A345250.P6902000929315120442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345250.P6902000929315120442

/-! ## A345250.P14028993006591796768

`∑{d}[A344422(n+1), A014536((n+1)%#)]`
-/

namespace A345250.P14028993006591796768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A014536 ((n + 1) % d)

end

end A345250.P14028993006591796768

/-! ## A345250.P15595317102307354949

`∑{d}[A344422(n+1), gcd(#, A050664(n+1))]`
-/

namespace A345250.P15595317102307354949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344422 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.gcd (d : ℤ) (A050664 (n + 1))

end

end A345250.P15595317102307354949

/-! ## A345250.P3523829157168331642

`eq[A062831(n+1), A178646(n+1)]`
-/

namespace A345250.P3523829157168331642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178646 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345250.P3523829157168331642

/-!
# A345251: Numbers engraved on the 12 sides of an ancient dodecahedral rock crystal from the first century A.D.

The programs for A345251, there is no canonical definition to state claims against.
-/

/-! ## A345251.P7737404879378384395

`∪[A115889(n+1), A343550(n+1)]`
-/

namespace A345251.P7737404879378384395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345251.P7737404879378384395

/-! ## A345251.P11206540217903836737

`∪[A115889(n+1), A396948(n+1)]`
-/

namespace A345251.P11206540217903836737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345251.P11206540217903836737

/-!
# A345252: 2-1-Fibonacci cohort array, a rectangular array T(n,k) read by downward antidiagonals.

The programs for A345252, there is no canonical definition to state claims against.
-/

/-! ## A345252.P14750488470447224681

`A343647(A194030(n+1))`
-/

namespace A345252.P14750488470447224681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343647 (A194030 (n + 1)).toNat

end

end A345252.P14750488470447224681

/-! ## A345252.P1413632668449721161

`A345253(A054582(n))`
-/

namespace A345252.P1413632668449721161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345253 (A054582 n).toNat

end

end A345252.P1413632668449721161

/-! ## A345252.P1083725533619198148

`A345253(A075300(n)+1)`
-/

namespace A345252.P1083725533619198148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345253 (A075300 n + 1).toNat

end

end A345252.P1083725533619198148

/-! ## A345252.P8078141123068695573

`A345253(A288870(n)-1)`
-/

namespace A345252.P8078141123068695573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345253 (A288870 n - 1).toNat

end

end A345252.P8078141123068695573

/-! ## A345252.P8153090574148724268

`A345253(xor(A075300(n), A130330(n)))`
-/

namespace A345252.P8153090574148724268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345253 (Int.xor (A075300 n) (A130330 n)).toNat

end

end A345252.P8153090574148724268

/-!
# A345253: Maximal Fibonacci tree: Arrangement of the positive integers as labels of a complete binary tree.

The programs for A345253, there is no canonical definition to state claims against.
-/

/-! ## A345253.P15237446092137154990

`A232560(A059893(n+1))`
-/

namespace A345253.P15237446092137154990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232560 (A059893 (n + 1)).toNat

end

end A345253.P15237446092137154990

/-! ## A345253.P152036118063771888

`A232560(A145342(n+2)-1)`
-/

namespace A345253.P152036118063771888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232560 (A145342 (n + 2) - 1).toNat

end

end A345253.P152036118063771888

/-! ## A345253.P7266699918797557846

`ceil(A095903(A028310(n))+sin(n)²)`
-/

namespace A345253.P7266699918797557846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A095903 (A028310 n).toNat : ℝ) + Real.sin (n : ℝ) ^ 2⌉

end

end A345253.P7266699918797557846

/-! ## A345253.P1538489141241389242

`A232639(A059893(n+1)+1)-1`
-/

namespace A345253.P1538489141241389242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232639 (A059893 (n + 1) + 1).toNat - 1

end

end A345253.P1538489141241389242

/-! ## A345253.P2293412412985506673

`A232560((A145341(n+2)-1)/2)`
-/

namespace A345253.P2293412412985506673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232560 (SequenceMachineLib.roundAway ((A145341 (n + 2) - 1 : ℚ) / 2)).toNat

end

end A345253.P2293412412985506673

/-! ## A345253.P10114772340853638947

`A232560(floor(A057889(2*n+3)/2))`
-/

namespace A345253.P10114772340853638947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232560 ⌊(A057889 (2 * n + 3) : ℚ) / 2⌋.toNat

end

end A345253.P10114772340853638947

/-! ## A345253.P2565280425797993192

`A232560(∑[Δ[A057889(2*n+1)]/2])`
-/

namespace A345253.P2565280425797993192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (2 * n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232560 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A345253.P2565280425797993192

/-! ## A345253.P8119485498210522980

`A095903(A028310(n))+A057427(n)`
-/

namespace A345253.P8119485498210522980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095903 (A028310 n).toNat + A057427 n

end

end A345253.P8119485498210522980

/-! ## A345253.P5933017519043469934

`A178334(n)+A095903(A028310(n))`
-/

namespace A345253.P5933017519043469934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A095903 (A028310 n).toNat

end

end A345253.P5933017519043469934

/-! ## A345253.P17577811461981648111

`A095903(A028310(n))+A000040(n+1)%2`
-/

namespace A345253.P17577811461981648111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095903 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A345253.P17577811461981648111

/-!
# A345254: Dispersion of A004754, a rectangular array T(n,k) read by downward antidiagonals.

The programs for A345254, there is no canonical definition to state claims against.
-/

/-! ## A345254.P3698821036664367579

`A139706(A054582(n))`
-/

namespace A345254.P3698821036664367579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139706 (A054582 n).toNat

end

end A345254.P3698821036664367579

/-! ## A345254.P18412306912100072469

`A139706(A075300(n)+1)`
-/

namespace A345254.P18412306912100072469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139706 (A075300 n + 1).toNat

end

end A345254.P18412306912100072469

/-! ## A345254.P8897909382904148478

`A333777(A075300(n)+1)`
-/

namespace A345254.P8897909382904148478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333777 (A075300 n + 1).toNat

end

end A345254.P8897909382904148478

/-! ## A345254.P13677988267448741190

`A139706(A288870(n)-1)`
-/

namespace A345254.P13677988267448741190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139706 (A288870 n - 1).toNat

end

end A345254.P13677988267448741190

/-! ## A345254.P15310313636847359692

`A333777(A288870(n)-1)`
-/

namespace A345254.P15310313636847359692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333777 (A288870 n - 1).toNat

end

end A345254.P15310313636847359692

/-! ## A345254.P8286574706396280254

`A053644(A054582(n))+A002262(n)`
-/

namespace A345254.P8286574706396280254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A054582 n).toNat + A002262 n

end

end A345254.P8286574706396280254

/-! ## A345254.P8761647833312017583

`A153152(A390513(n+1))`
-/

namespace A345254.P8761647833312017583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A390513 (n + 1)).toNat

end

end A345254.P8761647833312017583

/-!
# A345255: Carter and Reyes sequence for the game of countably infinitely many hats.

The programs for A345255, there is no canonical definition to state claims against.
-/

/-! ## A345255.P8534074634531240331

`A321896(A019565(n+2))%A139326(2*n+5)`
-/

namespace A345255.P8534074634531240331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321896 (A019565 (n + 2)).toNat) (A139326 (2 * n + 5))

end

end A345255.P8534074634531240331

/-!
# A345258: Number of acyclic digraphs (or DAGs) on n unlabeled vertices with one source and one sink.

The programs for A345258, there is no canonical definition to state claims against.
-/

/-! ## A345258.P3385904418681740436

`A194986(∏[Δ[A006992(n+1)]])`
-/

namespace A345258.P3385904418681740436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006992 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194986 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A345258.P3385904418681740436

/-! ## A345258.P6606306417608669298

`A006503(A241492(xor(1, n*a(n-1))))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A345258.P6606306417608669298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A006503 (A241492 (Int.xor 1 ((n : ℤ) * a (n - 1))).toNat).toNat

end

end A345258.P6606306417608669298

/-!
# A345259: Denominator of 4/(1 + 1^2/(3 + 2^2/(5 + 3^2/(7 + ... + (n-1)^2/(2*n-1) )))).

The programs for A345259, there is no canonical definition to state claims against.
-/

/-! ## A345259.P16430989521598608445

`A007913(A012244(n)/A363919(n+1))`
-/

namespace A345259.P16430989521598608445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway ((A012244 n : ℚ) / (A363919 (n + 1) : ℚ))).toNat

end

end A345259.P16430989521598608445

/-! ## A345259.P12181570067230572275

`A007913(A012244(n))`
-/

namespace A345259.P12181570067230572275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A012244 n).toNat

end

end A345259.P12181570067230572275

/-! ## A345259.P9471975503819908073

`A007913(A141765(∑[2*n]))`
-/

namespace A345259.P9471975503819908073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A141765 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A345259.P9471975503819908073

/-!
# A345260: a(n) = A000203(A344422(n)).

The programs for A345260, there is no canonical definition to state claims against.
-/

/-! ## A345260.P6492194231737586248

`A000203(A344422(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345260.P6492194231737586248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A344422 (n + 1)).toNat

end

end A345260.P6492194231737586248

/-! ## A345260.P16767472607765367261

`A326065(2*A344422(n+1))`
-/

namespace A345260.P16767472607765367261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (2 * A344422 (n + 1)).toNat

end

end A345260.P16767472607765367261

/-! ## A345260.P7970098195474137747

`∑{d}[A083753(A345250(n+1)), #]`
-/

namespace A345260.P7970098195474137747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083753 (A345250 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A345260.P7970098195474137747

/-! ## A345260.P13233354766702192710

`∑{d}[A083753(record[A076888(n+1)]), #]`
-/

namespace A345260.P13233354766702192710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076888 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083753 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A345260.P13233354766702192710

/-!
# A345261: a(n) = Sum_{d|n} d * rad(d).

The programs for A345261, the canonical program `A345261.P8733278176874568448` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345261 has offset 1).

The definition of A345261 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345261.P2622701048770785595

`∑{d}[n+1, A064549(#)]`
-/

namespace A345261.P2622701048770785595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064549 d

end

end A345261.P2622701048770785595

namespace A345261

/-- `∑{d}[n+1, A064549(#)]` -/
def P2622701048770785595.Spec : Prop :=
  ∀ n, P2622701048770785595.a n = A345261 (n + 1)

end A345261

/-! ## A345261.P196946670787075215

`∑{d}[n+1, A078310(#)-1]`
-/

namespace A345261.P196946670787075215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A078310 d - 1)

end

end A345261.P196946670787075215

namespace A345261

/-- `∑{d}[n+1, A078310(#)-1]` -/
def P196946670787075215.Spec : Prop :=
  ∀ n, P196946670787075215.a n = A345261 (n + 1)

end A345261

/-! ## A345261.P4655083538896980886

`∑{d}[n+1, #*A007947(#)]`
-/

namespace A345261.P4655083538896980886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007947 d

end

end A345261.P4655083538896980886

namespace A345261

/-- `∑{d}[n+1, #*A007947(#)]` -/
def P4655083538896980886.Spec : Prop :=
  ∀ n, P4655083538896980886.a n = A345261 (n + 1)

end A345261

/-! ## A345261.P16936919928720492056

`∑{d}[n+1, abs(#*A062953(#))]`
-/

namespace A345261.P16936919928720492056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), |(d : ℤ) * A062953 d|

end

end A345261.P16936919928720492056

namespace A345261

/-- `∑{d}[n+1, abs(#*A062953(#))]` -/
def P16936919928720492056.Spec : Prop :=
  ∀ n, P16936919928720492056.a n = A345261 (n + 1)

end A345261

/-! ## A345261.P8733278176874568448

`∑{d}[n+1, #*A367865((n+1)/#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A345261

/-- `∑{d}[n+1, #*A367865((n+1)/#)]` -/
def P8733278176874568448.Spec : Prop :=
  ∀ n, P8733278176874568448.a n = A345261 (n + 1)

theorem P8733278176874568448.correct : P8733278176874568448.Spec := by
  intro n
  simp only [A345261, Nat.add_sub_cancel]

end A345261

/-! ## A345261.P1765085813664948437

`∑{d}[n+1, A000203(#)*A202535((n+1)/#)]`
-/

namespace A345261.P1765085813664948437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A202535 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345261.P1765085813664948437

namespace A345261

/-- `∑{d}[n+1, A000203(#)*A202535((n+1)/#)]` -/
def P1765085813664948437.Spec : Prop :=
  ∀ n, P1765085813664948437.a n = A345261 (n + 1)

end A345261

/-! ## A345261.P3015333428144225848

`A183097(A064549(n+1))`
-/

namespace A345261.P3015333428144225848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183097 (A064549 (n + 1)).toNat

end

end A345261.P3015333428144225848

namespace A345261

/-- `A183097(A064549(n+1))` -/
def P3015333428144225848.Spec : Prop :=
  ∀ n, P3015333428144225848.a n = A345261 (n + 1)

end A345261

/-! ## A345261.P14207930306157757103

`A183097((n+1)*A007947(n+1))`
-/

namespace A345261.P14207930306157757103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183097 ((n + 1 : ℤ) * A007947 (n + 1)).toNat

end

end A345261.P14207930306157757103

namespace A345261

/-- `A183097((n+1)*A007947(n+1))` -/
def P14207930306157757103.Spec : Prop :=
  ∀ n, P14207930306157757103.a n = A345261 (n + 1)

end A345261

/-!
# A345262: a(n) is the order of the image of the J-homomorphism in the stable homotopy groups of spheres.

The programs for A345262, there is no canonical definition to state claims against.
-/

/-! ## A345262.P7659586690440404818

`A345267(n)/A050412(A345245(n+1))`
-/

namespace A345262.P7659586690440404818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345267 n : ℚ) / (A050412 (A345245 (n + 1)).toNat : ℚ)

end

end A345262.P7659586690440404818

/-! ## A345262.P12710319855604571740

`A066459(A017980(2*n)^A325304(n))`
-/

namespace A345262.P12710319855604571740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066459 (SequenceMachineLib.roundAway ((A017980 (2 * n) : ℚ) ^ (A325304 n : ℤ))).toNat

end

end A345262.P12710319855604571740

/-! ## A345262.P13666470521836001434

`gcd(A000010(A278051(n+1)), A087116(n))`
-/

namespace A345262.P13666470521836001434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (A278051 (n + 1)).toNat) (A087116 n)

end

end A345262.P13666470521836001434

/-! ## A345262.P14427968213072759893

`A206497(A002057(n))-A025430(2*(n+1))`
-/

namespace A345262.P14427968213072759893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206497 (A002057 n).toNat - A025430 (2 * (n + 1))

end

end A345262.P14427968213072759893

/-!
# A345263: a(n) = Sum_{d|n} d^rad(d).

The programs for A345263, there is no canonical definition to state claims against.
-/

/-! ## A345263.P9743456765490571825

`∑{d}[n+1, A176031(#)]`
-/

namespace A345263.P9743456765490571825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A176031 d

end

end A345263.P9743456765490571825

/-! ## A345263.P15543102878976808032

`∑{d}[n+1, #^A007947(#)]`
-/

namespace A345263.P15543102878976808032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (A007947 d : ℤ)

end

end A345263.P15543102878976808032

/-! ## A345263.P15455969458667128989

`A062796(n+1)%A249001(A373518(n))`
-/

namespace A345263.P15455969458667128989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062796 (n + 1)) (A249001 (A373518 n).toNat)

end

end A345263.P15455969458667128989

/-!
# A345264: a(n) = Sum_{d|n} rad(d) * mu(n/d)^2.

The programs for A345264, the canonical program `A345264.P1755794482362369357` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345264 has offset 1).

The definition of A345264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345264.P1755794482362369357

`∏{p}[n+1, gcd(#, (n+1)/#)+#]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A345264

/-- `∏{p}[n+1, gcd(#, (n+1)/#)+#]` -/
def P1755794482362369357.Spec : Prop :=
  ∀ n, (P1755794482362369357.a n : ℤ) = A345264 (n + 1)

theorem P1755794482362369357.correct : P1755794482362369357.Spec := by
  intro n
  simp only [A345264, Nat.add_sub_cancel]

end A345264

/-! ## A345264.P6656838342815120224

`∑{d}[n+1, abs(A341635(#))]`
-/

namespace A345264.P6656838342815120224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), |A341635 d|

end

end A345264.P6656838342815120224

namespace A345264

/-- `∑{d}[n+1, abs(A341635(#))]` -/
def P6656838342815120224.Spec : Prop :=
  ∀ n, P6656838342815120224.a n = A345264 (n + 1)

end A345264

/-! ## A345264.P4613457171700636512

`∑{d}[∏{p}[n+1, #], A007947((n+1)/#)]`
-/

namespace A345264.P4613457171700636512
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007947 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345264.P4613457171700636512

namespace A345264

/-- `∑{d}[∏{p}[n+1, #], A007947((n+1)/#)]` -/
def P4613457171700636512.Spec : Prop :=
  ∀ n, P4613457171700636512.a n = A345264 (n + 1)

end A345264

/-! ## A345264.P13913158575368731899

`abs(A178450(A007948(n+1)))`
-/

namespace A345264.P13913158575368731899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A178450 (A007948 (n + 1)).toNat|

end

end A345264.P13913158575368731899

namespace A345264

/-- `abs(A178450(A007948(n+1)))` -/
def P13913158575368731899.Spec : Prop :=
  ∀ n, P13913158575368731899.a n = A345264 (n + 1)

end A345264

/-! ## A345264.P5027063466488859986

`∑{d}[A007947(n+1), A007947((n+1)/#)]`
-/

namespace A345264.P5027063466488859986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007947 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345264.P5027063466488859986

namespace A345264

/-- `∑{d}[A007947(n+1), A007947((n+1)/#)]` -/
def P5027063466488859986.Spec : Prop :=
  ∀ n, P5027063466488859986.a n = A345264 (n + 1)

end A345264

/-! ## A345264.P7865549688883961908

`∑{d}[n+1, A076109(#)*A078461((n+1)/#)]`
-/

namespace A345264.P7865549688883961908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076109 d * A078461 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345264.P7865549688883961908

namespace A345264

/-- `∑{d}[n+1, A076109(#)*A078461((n+1)/#)]` -/
def P7865549688883961908.Spec : Prop :=
  ∀ n, P7865549688883961908.a n = A345264 (n + 1)

end A345264

/-! ## A345264.P12695556264780086359

`∑{d}[n+1, A191750(#)*A271102((n+1)/#)]`
-/

namespace A345264.P12695556264780086359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A191750 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345264.P12695556264780086359

namespace A345264

/-- `∑{d}[n+1, A191750(#)*A271102((n+1)/#)]` -/
def P12695556264780086359.Spec : Prop :=
  ∀ n, P12695556264780086359.a n = A345264 (n + 1)

end A345264

/-! ## A345264.P11966153687293813507

`∑{d}[n+1, A328729(#)*A335032((n+1)/#)]`
-/

namespace A345264.P11966153687293813507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328729 d * A335032 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345264.P11966153687293813507

namespace A345264

/-- `∑{d}[n+1, A328729(#)*A335032((n+1)/#)]` -/
def P11966153687293813507.Spec : Prop :=
  ∀ n, P11966153687293813507.a n = A345264 (n + 1)

end A345264

/-! ## A345264.P12757029416972464115

`A001616(∏{p}[n+1, gcd(n+1, #²)]*∏{p}[n+1, #])`
-/

namespace A345264.P12757029416972464115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001616 ((∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd (n + 1) (p ^ 2)) * (∏ p ∈ Nat.primeFactors (f2 n), p))

end

end A345264.P12757029416972464115

namespace A345264

/-- `A001616(∏{p}[n+1, gcd(n+1, #²)]*∏{p}[n+1, #])` -/
def P12757029416972464115.Spec : Prop :=
  ∀ n, P12757029416972464115.a n = A345264 (n + 1)

end A345264

/-!
# A345265: a(n) = Sum_{d|n} n^rad(d).

The programs for A345265, there is no canonical definition to state claims against.
-/

/-! ## A345265.P7044787402102101983

`∑{d}[n+1, (n+1)^A007947(#)]`
-/

namespace A345265.P7044787402102101983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) ^ (A007947 d : ℤ)

end

end A345265.P7044787402102101983

/-! ## A345265.P11492865470872557998

`∑{d}[n+1, (n+1)^A015052(#)]`
-/

namespace A345265.P11492865470872557998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) ^ (A015052 d : ℤ)

end

end A345265.P11492865470872557998

/-! ## A345265.P13782891323970421930

`A066108(n+1)%A232431(A079934(n+1))`
-/

namespace A345265.P13782891323970421930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066108 (n + 1)) (A232431 (A079934 (n + 1)).toNat)

end

end A345265.P13782891323970421930

/-!
# A345266: a(n) = Sum_{p|n, p prime} gcd(p,n/p).

The programs for A345266, the canonical program `A345266.P10002656146987510819` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345266 has offset 1).

The definition of A345266 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, A063958, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A345266.P10002656146987510819

`A056169(n+1)+A063958(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A345266

/-- `A056169(n+1)+A063958(n+1)` -/
def P10002656146987510819.Spec : Prop :=
  ∀ n, P10002656146987510819.a n = A345266 (n + 1)

theorem P10002656146987510819.correct : P10002656146987510819.Spec := by
  intro n
  simp only [A345266, Nat.add_sub_cancel]

end A345266

/-! ## A345266.P9126721387590342607

`∑{p}[n+1, gcd(#, (n+1)/#)]`
-/

namespace A345266.P9126721387590342607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.gcd (p : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ)))

end

end A345266.P9126721387590342607

namespace A345266

/-- `∑{p}[n+1, gcd(#, (n+1)/#)]` -/
def P9126721387590342607.Spec : Prop :=
  ∀ n, (P9126721387590342607.a n : ℤ) = A345266 (n + 1)

end A345266

/-! ## A345266.P2497043523870519982

`∑{p}[n+1, (n+1)/lcm(#, (n+1)/#)]`
-/

namespace A345266.P2497043523870519982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (Int.lcm (p : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))) : ℚ)

end

end A345266.P2497043523870519982

namespace A345266

/-- `∑{p}[n+1, (n+1)/lcm(#, (n+1)/#)]` -/
def P2497043523870519982.Spec : Prop :=
  ∀ n, P2497043523870519982.a n = (A345266 (n + 1) : ℚ)

end A345266

/-! ## A345266.P9307404590922634925

`A171453(A007948(n+1))`
-/

namespace A345266.P9307404590922634925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171453 (A007948 (n + 1)).toNat

end

end A345266.P9307404590922634925

namespace A345266

/-- `A171453(A007948(n+1))` -/
def P9307404590922634925.Spec : Prop :=
  ∀ n, P9307404590922634925.a n = A345266 (n + 1)

end A345266

/-! ## A345266.P2364188075601817639

`A240086(n+1)+A056170(n+1)`
-/

namespace A345266.P2364188075601817639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240086 (n + 1) + A056170 (n + 1)

end

end A345266.P2364188075601817639

namespace A345266

/-- `A240086(n+1)+A056170(n+1)` -/
def P2364188075601817639.Spec : Prop :=
  ∀ n, P2364188075601817639.a n = A345266 (n + 1)

end A345266

/-! ## A345266.P8220399853168811140

`A394085(n+1)-A023890(n+1)`
-/

namespace A345266.P8220399853168811140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394085 (n + 1) - A023890 (n + 1)

end

end A345266.P8220399853168811140

namespace A345266

/-- `A394085(n+1)-A023890(n+1)` -/
def P8220399853168811140.Spec : Prop :=
  ∀ n, P8220399853168811140.a n = A345266 (n + 1)

end A345266

/-! ## A345266.P4739154934126421185

`A395301(n+1)-A033273(n+1)`
-/

namespace A345266.P4739154934126421185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395301 (n + 1) - A033273 (n + 1)

end

end A345266.P4739154934126421185

namespace A345266

/-- `A395301(n+1)-A033273(n+1)` -/
def P4739154934126421185.Spec : Prop :=
  ∀ n, P4739154934126421185.a n = A345266 (n + 1)

end A345266

/-! ## A345266.P2992307746062980787

`∑{d}[n+1, A117494(#)%A014963(#)]`
-/

namespace A345266.P2992307746062980787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A117494 d) (A014963 d)

end

end A345266.P2992307746062980787

namespace A345266

/-- `∑{d}[n+1, A117494(#)%A014963(#)]` -/
def P2992307746062980787.Spec : Prop :=
  ∀ n, P2992307746062980787.a n = A345266 (n + 1)

end A345266

/-! ## A345266.P10700862049210818057

`A056169(n+1)+A008472(A000188(n+1))`
-/

namespace A345266.P10700862049210818057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1) + A008472 (A000188 (n + 1)).toNat

end

end A345266.P10700862049210818057

namespace A345266

/-- `A056169(n+1)+A008472(A000188(n+1))` -/
def P10700862049210818057.Spec : Prop :=
  ∀ n, P10700862049210818057.a n = A345266 (n + 1)

end A345266

/-! ## A345266.P15072157191821929998

`A008472(n+1)+A056169(n+1)-A063956(n+1)`
-/

namespace A345266.P15072157191821929998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + (A056169 (n + 1) - A063956 (n + 1))

end

end A345266.P15072157191821929998

namespace A345266

/-- `A008472(n+1)+A056169(n+1)-A063956(n+1)` -/
def P15072157191821929998.Spec : Prop :=
  ∀ n, P15072157191821929998.a n = A345266 (n + 1)

end A345266

/-! ## A345266.P12305283306166507931

`A001221(n+1)+A395301(n+1)-A000005(n+1)`
-/

namespace A345266.P12305283306166507931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A395301 (n + 1) - A000005 (n + 1))

end

end A345266.P12305283306166507931

namespace A345266

/-- `A001221(n+1)+A395301(n+1)-A000005(n+1)` -/
def P12305283306166507931.Spec : Prop :=
  ∀ n, P12305283306166507931.a n = A345266 (n + 1)

end A345266

/-!
# A345267: Conjectural order of the torsion subgroup of the group K_n(Z) (the algebraic K-theory groups of the integers).

The programs for A345267, there is no canonical definition to state claims against.
-/

/-! ## A345267.P3380889945447910219

`∏{e}[xor(A016361(n), A100310(n)), #!]`
-/

namespace A345267.P3380889945447910219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A016361 n) (A100310 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p)

end

end A345267.P3380889945447910219

/-! ## A345267.P8689891355320525533

`A050412(A345245(n+1))*A345262(n)`
-/

namespace A345267.P8689891355320525533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A345245 (n + 1)).toNat * A345262 n

end

end A345267.P8689891355320525533

/-! ## A345267.P12052608171633544180

`A009194(A350664(3*n+2))*A345262(n)`
-/

namespace A345267.P12052608171633544180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (A350664 (3 * n + 2)).toNat * A345262 n

end

end A345267.P12052608171633544180

/-! ## A345267.P17791717843120826285

`A052614(A171751(n+1)%A341720(n+2))`
-/

namespace A345267.P17791717843120826285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052614 (Int.tmod (A171751 (n + 1)) (A341720 (n + 2))).toNat

end

end A345267.P17791717843120826285

/-!
# A345269: a(n) = Sum_{d|n} (n/d)^(phi(n/d) - 1).

The programs for A345269, there is no canonical definition to state claims against.
-/

/-! ## A345269.P5448180736372132481

`∑{d}[n+1, A175504(#)]`
-/

namespace A345269.P5448180736372132481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A175504 d

end

end A345269.P5448180736372132481

/-! ## A345269.P4642925820358807771

`∑{d}[n+1, A062981(#)/#]`
-/

namespace A345269.P4642925820358807771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A062981 d : ℚ) / (d : ℚ)

end

end A345269.P4642925820358807771

/-! ## A345269.P15820336676339951105

`∑{d}[n+1, #^A109606(#)]`
-/

namespace A345269.P15820336676339951105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (A109606 d : ℤ)

end

end A345269.P15820336676339951105

/-! ## A345269.P7015443929913808990

`∑{d}[n+1, #^(A000010(#)-1)]`
-/

namespace A345269.P7015443929913808990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (A000010 d - 1 : ℤ)

end

end A345269.P7015443929913808990

/-!
# A345270: a(n) = Sum_{d|n} d^tau(n/d).

The programs for A345270, the canonical program `A345270.P9432890020347198030` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345270 has offset 1).

The definition of A345270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345270.P9432890020347198030

`∑{d}[n+1, ((n+1)/#)^A000005(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A345270

/-- `∑{d}[n+1, ((n+1)/#)^A000005(#)]` -/
def P9432890020347198030.Spec : Prop :=
  ∀ n, P9432890020347198030.a n = (A345270 (n + 1) : ℚ)

end A345270

/-!
# A345271: a(n) = Sum_{d|n} n^tau(d).

The programs for A345271, the canonical program `A345271.P11961948070932994318` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345271 has offset 1).

The definition of A345271 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345271.P9011616503951983063

`∑{d}[n+1, (n+1)^A000005(#)]`
-/

namespace A345271.P9011616503951983063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) ^ (A000005 d : ℤ)

end

end A345271.P9011616503951983063

namespace A345271

/-- `∑{d}[n+1, (n+1)^A000005(#)]` -/
def P9011616503951983063.Spec : Prop :=
  ∀ n, P9011616503951983063.a n = (A345271 (n + 1) : ℚ)

end A345271

/-! ## A345271.P11961948070932994318

`∑{d}[n+1, (n+1)^(A032741(#)+1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A345271

/-- `∑{d}[n+1, (n+1)^(A032741(#)+1)]` -/
def P11961948070932994318.Spec : Prop :=
  ∀ n, P11961948070932994318.a n = (A345271 (n + 1) : ℚ)

end A345271

/-! ## A345271.P3558640124004757543

`∑{d}[n+1, (n+1)^A183063(#+#)]`
-/

namespace A345271.P3558640124004757543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) ^ (A183063 (d + d) : ℤ)

end

end A345271.P3558640124004757543

namespace A345271

/-- `∑{d}[n+1, (n+1)^A183063(#+#)]` -/
def P3558640124004757543.Spec : Prop :=
  ∀ n, P3558640124004757543.a n = (A345271 (n + 1) : ℚ)

end A345271

/-! ## A345271.P18329345399661182507

`∑{d}[n+1, (n+1)^(A038040(#)/#)]`
-/

namespace A345271.P18329345399661182507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℝ) ^ ((A038040 d : ℚ) / (d : ℚ) : ℝ)

end

end A345271.P18329345399661182507

namespace A345271

/-- `∑{d}[n+1, (n+1)^(A038040(#)/#)]` -/
def P18329345399661182507.Spec : Prop :=
  ∀ n, P18329345399661182507.a n = (A345271 (n + 1) : ℝ)

end A345271

/-! ## A345271.P7138600010810737400

`∑{d}[n+1, (n+1)^A046951(#²)]`
-/

namespace A345271.P7138600010810737400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) ^ (A046951 (d ^ 2) : ℤ)

end

end A345271.P7138600010810737400

namespace A345271

/-- `∑{d}[n+1, (n+1)^A046951(#²)]` -/
def P7138600010810737400.Spec : Prop :=
  ∀ n, P7138600010810737400.a n = (A345271 (n + 1) : ℚ)

end A345271

/-!
# A345272: Irregular triangle read by rows T(n,k) in which row n lists in nonincreasing order all divisors of the terms of the n-th row of triangle A110730, n >= 1, k >= 1.

The programs for A345272, there is no canonical definition to state claims against.
-/

/-! ## A345272.P15791226321286818463

`ceil(ratio[A000040(A140075(n+1))])`
-/

namespace A345272.P15791226321286818463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A140075 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A345272.P15791226321286818463

/-! ## A345272.P2712649499911555542

`A374515(A285967(2*n+5)+A124766(n))`
-/

namespace A345272.P2712649499911555542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374515 (A285967 (2 * n + 5) + A124766 n).toNat

end

end A345272.P2712649499911555542

/-! ## A345272.P487293353202698910

`A374515(A394092(n)+A014132(3*n+5))`
-/

namespace A345272.P487293353202698910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374515 (A394092 n + A014132 (3 * n + 5)).toNat

end

end A345272.P487293353202698910

/-! ## A345272.P4321387704073036439

`A374515(A285967(2*n+5)+A124765(3*(n+1)))`
-/

namespace A345272.P4321387704073036439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374515 (A285967 (2 * n + 5) + A124765 (3 * (n + 1))).toNat

end

end A345272.P4321387704073036439

/-!
# A345273: a(n) = Sum_{d|n} (n-d)^tau(d).

The programs for A345273, the canonical program `A345273.P4474214577626222600` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345273 has offset 1).

The definition of A345273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2519 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345273.P4474214577626222600

`∑{d}[n+1, (1-#+n)^A000005(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A345273

/-- `∑{d}[n+1, (1-#+n)^A000005(#)]` -/
def P4474214577626222600.Spec : Prop :=
  ∀ n, P4474214577626222600.a n = (A345273 (n + 1) : ℚ)

end A345273

/-! ## A345273.P1737904268646334838

`A259361((A001223(n+1)-2)^n)²+n`
-/

namespace A345273.P1737904268646334838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 ((A001223 (n + 1) - 2) ^ n).toNat ^ 2 + (n : ℤ)

end

end A345273.P1737904268646334838

namespace A345273

/-- `A259361((A001223(n+1)-2)^n)²+n` -/
def P1737904268646334838.Spec : Prop :=
  ∀ n, P1737904268646334838.a n = A345273 (n + 1)

end A345273

/-!
# A345274: a(n) = Sum_{d|n} (n-d)^tau(n/d).

The programs for A345274, the canonical program `A345274.P8715810920332508966` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345274 has offset 1).

The definition of A345274 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345274.P8715810920332508966

`∑{d}[n+1, (n+1-(n+1)/#)^A000005(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A345274

/-- `∑{d}[n+1, (n+1-(n+1)/#)^A000005(#)]` -/
def P8715810920332508966.Spec : Prop :=
  ∀ n, P8715810920332508966.a n = (A345274 (n + 1) : ℚ)

end A345274

/-!
# A345275: a(n) = Sum_{d|n} (n-d)^sigma(n/d).

The programs for A345275, there is no canonical definition to state claims against.
-/

/-! ## A345275.P2712619338927716914

`A325644(A325644(n^∑{d}[n+1, #]))`
-/

namespace A345275.P2712619338927716914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325644 (A325644 (n ^ (∑ d ∈ Nat.divisors (f1 n), d))).toNat

end

end A345275.P2712619338927716914

/-!
# A345276: a(n) = Sum_{d|n} (n-d)^abs(mu(n/d)).

The programs for A345276, the canonical program `A345276.P270329731164597666` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345276 has offset 1).

The definition of A345276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345276.P15137659473766859852

`A387633(n+1)-A001615(n+1)`
-/

namespace A345276.P15137659473766859852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387633 (n + 1) - A001615 (n + 1)

end

end A345276.P15137659473766859852

namespace A345276

/-- `A387633(n+1)-A001615(n+1)` -/
def P15137659473766859852.Spec : Prop :=
  ∀ n, P15137659473766859852.a n = A345276 (n + 1)

end A345276

/-! ## A345276.P270329731164597666

`A000005(n+1)-(A001615(n+1)-n*A034444(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A345276

/-- `A000005(n+1)-(A001615(n+1)-n*A034444(n+1))` -/
def P270329731164597666.Spec : Prop :=
  ∀ n, P270329731164597666.a n = A345276 (n + 1)

theorem P270329731164597666.correct : P270329731164597666.Spec := by
  intro n
  simp only [A345276, Nat.add_sub_cancel]

end A345276

/-!
# A345277: Sums of 3 consecutive even-indexed primes.

The programs for A345277, the canonical program `A345277.P7546065214592130930` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345277 has offset 1).

The definition of A345277 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345277.P7546065214592130930

`A345069(n+2)+A031215(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A345277

/-- `A345069(n+2)+A031215(n+1)` -/
def P7546065214592130930.Spec : Prop :=
  ∀ n, P7546065214592130930.a n = A345277 (n + 1)

theorem P7546065214592130930.correct : P7546065214592130930.Spec := by
  intro n
  simp only [A345277, Nat.add_sub_cancel]

end A345277

/-! ## A345277.P9601575515169030327

`A031215(n+1)+A345070(n+2)+A345070(n+2)`
-/

namespace A345277.P9601575515169030327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) + (A345070 (n + 2) + A345070 (n + 2))

end

end A345277.P9601575515169030327

namespace A345277

/-- `A031215(n+1)+A345070(n+2)+A345070(n+2)` -/
def P9601575515169030327.Spec : Prop :=
  ∀ n, P9601575515169030327.a n = A345277 (n + 1)

end A345277

/-! ## A345277.P3877712825071096239

`A345069(n+2)+A000040(2*(n+1))`
-/

namespace A345277.P3877712825071096239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345069 (n + 2) + A000040 (2 * (n + 1))

end

end A345277.P3877712825071096239

namespace A345277

/-- `A345069(n+2)+A000040(2*(n+1))` -/
def P3877712825071096239.Spec : Prop :=
  ∀ n, P3877712825071096239.a n = A345277 (n + 1)

end A345277

/-! ## A345277.P4126988922625076923

`A077126(n+3)-A355726(2*n+1)`
-/

namespace A345277.P4126988922625076923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077126 (n + 3) - A355726 (2 * n + 1)

end

end A345277.P4126988922625076923

namespace A345277

/-- `A077126(n+3)-A355726(2*n+1)` -/
def P4126988922625076923.Spec : Prop :=
  ∀ n, P4126988922625076923.a n = A345277 (n + 1)

end A345277

/-! ## A345277.P14906771523707898286

`A034961(2*(n+1))+A031165(2*n+3)`
-/

namespace A345277.P14906771523707898286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (2 * (n + 1)) + A031165 (2 * n + 3)

end

end A345277.P14906771523707898286

namespace A345277

/-- `A034961(2*(n+1))+A031165(2*n+3)` -/
def P14906771523707898286.Spec : Prop :=
  ∀ n, P14906771523707898286.a n = A345277 (n + 1)

end A345277

/-! ## A345277.P6966204880057109656

`A073738(2*(n+3))-A073738(2*n)`
-/

namespace A345277.P6966204880057109656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073738 (2 * (n + 3)) - A073738 (2 * n)

end

end A345277.P6966204880057109656

namespace A345277

/-- `A073738(2*(n+3))-A073738(2*n)` -/
def P6966204880057109656.Spec : Prop :=
  ∀ n, P6966204880057109656.a n = A345277 (n + 1)

end A345277

/-! ## A345277.P17830973745649856664

`A048448(2*n+5)+A000040(2*(n+1))`
-/

namespace A345277.P17830973745649856664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048448 (2 * n + 5) + A000040 (2 * (n + 1))

end

end A345277.P17830973745649856664

namespace A345277

/-- `A048448(2*n+5)+A000040(2*(n+1))` -/
def P17830973745649856664.Spec : Prop :=
  ∀ n, P17830973745649856664.a n = A345277 (n + 1)

end A345277

/-! ## A345277.P3893470493228669115

`record[(A073738(n+6)-A073738(n))/gcd(2, n+1)]`
-/

namespace A345277.P3893470493228669115
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073738 (n + 6) - A073738 n : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345277.P3893470493228669115

namespace A345277

/-- `record[(A073738(n+6)-A073738(n))/gcd(2, n+1)]` -/
def P3893470493228669115.Spec : Prop :=
  ∀ n, P3893470493228669115.a n = (A345277 (n + 1) : ℚ)

end A345277

/-! ## A345277.P8043554031187311280

`record[(A073738(n+6)-A073738(n))/A000034(n)]`
-/

namespace A345277.P8043554031187311280
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073738 (n + 6) - A073738 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345277.P8043554031187311280

namespace A345277

/-- `record[(A073738(n+6)-A073738(n))/A000034(n)]` -/
def P8043554031187311280.Spec : Prop :=
  ∀ n, P8043554031187311280.a n = (A345277 (n + 1) : ℚ)

end A345277

/-! ## A345277.P8004742259182742645

`∑{d}[A020484(n)², A000040(2*(A000005(#)+n))]`
-/

namespace A345277.P8004742259182742645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000040 (2 * (A000005 d + (n : ℤ))).toNat

end

end A345277.P8004742259182742645

namespace A345277

/-- `∑{d}[A020484(n)², A000040(2*(A000005(#)+n))]` -/
def P8004742259182742645.Spec : Prop :=
  ∀ n, P8004742259182742645.a n = A345277 (n + 1)

end A345277

/-!
# A345278: a(n) = Sum_{p|n} p^(pi(p) mod 2).

The programs for A345278, the canonical program `A345278.P16777163800638418964` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345278 has offset 1).

The definition of A345278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345278.P4498887033377613316

`∑{p}[n+1, A247503(#)]`
-/

namespace A345278.P4498887033377613316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A247503 p

end

end A345278.P4498887033377613316

namespace A345278

/-- `∑{p}[n+1, A247503(#)]` -/
def P4498887033377613316.Spec : Prop :=
  ∀ n, P4498887033377613316.a n = A345278 (n + 1)

end A345278

/-! ## A345278.P12173607599795077642

`∑{p}[n+1, A351517(#)]`
-/

namespace A345278.P12173607599795077642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A351517 p

end

end A345278.P12173607599795077642

namespace A345278

/-- `∑{p}[n+1, A351517(#)]` -/
def P12173607599795077642.Spec : Prop :=
  ∀ n, P12173607599795077642.a n = A345278 (n + 1)

end A345278

/-! ## A345278.P5946640445279918182

`∑{p}[n+1, #/A248101(#)]`
-/

namespace A345278.P5946640445279918182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (A248101 p : ℚ)

end

end A345278.P5946640445279918182

namespace A345278

/-- `∑{p}[n+1, #/A248101(#)]` -/
def P5946640445279918182.Spec : Prop :=
  ∀ n, P5946640445279918182.a n = (A345278 (n + 1) : ℚ)

end A345278

/-! ## A345278.P16777163800638418964

`A344908(n+1)+A324967(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A345278

/-- `A344908(n+1)+A324967(n+1)` -/
def P16777163800638418964.Spec : Prop :=
  ∀ n, P16777163800638418964.a n = A345278 (n + 1)

theorem P16777163800638418964.correct : P16777163800638418964.Spec := by
  intro n
  simp only [A345278, Nat.add_sub_cancel]

end A345278

/-! ## A345278.P1942324320301834405

`A344908(n+1)+A257992(∏{p}[2*(n+1), #])`
-/

namespace A345278.P1942324320301834405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344908 (n + 1) + A257992 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A345278.P1942324320301834405

namespace A345278

/-- `A344908(n+1)+A257992(∏{p}[2*(n+1), #])` -/
def P1942324320301834405.Spec : Prop :=
  ∀ n, P1942324320301834405.a n = A345278 (n + 1)

end A345278

/-! ## A345278.P17260295390971064709

`A055631(A247503(n+1))+A001221(n+1)`
-/

namespace A345278.P17260295390971064709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055631 (A247503 (n + 1)).toNat + A001221 (n + 1)

end

end A345278.P17260295390971064709

namespace A345278

/-- `A055631(A247503(n+1))+A001221(n+1)` -/
def P17260295390971064709.Spec : Prop :=
  ∀ n, P17260295390971064709.a n = A345278 (n + 1)

end A345278

/-! ## A345278.P17886475638620013614

`A324967(n+1)+A008472(A247503(n+1))`
-/

namespace A345278.P17886475638620013614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324967 (n + 1) + A008472 (A247503 (n + 1)).toNat

end

end A345278.P17886475638620013614

namespace A345278

/-- `A324967(n+1)+A008472(A247503(n+1))` -/
def P17886475638620013614.Spec : Prop :=
  ∀ n, P17886475638620013614.a n = A345278 (n + 1)

end A345278

/-! ## A345278.P13794607607852879674

`A344908(n+1)+A001222(A351518(n+1))`
-/

namespace A345278.P13794607607852879674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344908 (n + 1) + A001222 (A351518 (n + 1)).toNat

end

end A345278.P13794607607852879674

namespace A345278

/-- `A344908(n+1)+A001222(A351518(n+1))` -/
def P13794607607852879674.Spec : Prop :=
  ∀ n, P13794607607852879674.a n = A345278 (n + 1)

end A345278

/-! ## A345278.P7309396889865222255

`A344908(n+1)+A324966(A003961(n+1))`
-/

namespace A345278.P7309396889865222255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344908 (n + 1) + A324966 (A003961 (n + 1)).toNat

end

end A345278.P7309396889865222255

namespace A345278

/-- `A344908(n+1)+A324966(A003961(n+1))` -/
def P7309396889865222255.Spec : Prop :=
  ∀ n, P7309396889865222255.a n = A345278 (n + 1)

end A345278

/-!
# A345279: a(n) = Sum_{p|n} p^((pi(p)+1) mod 2).

The programs for A345279, the canonical program `A345279.P7115677743287407116` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345279 has offset 1).

The definition of A345279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345279.P3637242980015566280

`∑{p}[n+1, A248101(#)]`
-/

namespace A345279.P3637242980015566280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A248101 p

end

end A345279.P3637242980015566280

namespace A345279

/-- `∑{p}[n+1, A248101(#)]` -/
def P3637242980015566280.Spec : Prop :=
  ∀ n, P3637242980015566280.a n = A345279 (n + 1)

end A345279

/-! ## A345279.P4094920880514552911

`∑{p}[n+1, A351518(#)]`
-/

namespace A345279.P4094920880514552911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A351518 p

end

end A345279.P4094920880514552911

namespace A345279

/-- `∑{p}[n+1, A351518(#)]` -/
def P4094920880514552911.Spec : Prop :=
  ∀ n, P4094920880514552911.a n = A345279 (n + 1)

end A345279

/-! ## A345279.P10191431515643909059

`∑{p}[A131738(n), #/A247503(#)]`
-/

namespace A345279.P10191431515643909059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℚ) / (A247503 p : ℚ)

end

end A345279.P10191431515643909059

namespace A345279

/-- `∑{p}[A131738(n), #/A247503(#)]` -/
def P10191431515643909059.Spec : Prop :=
  ∀ n, P10191431515643909059.a n = (A345279 (n + 1) : ℚ)

end A345279

/-! ## A345279.P7115677743287407116

`A344931(n+1)+A324966(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A345279

/-- `A344931(n+1)+A324966(n+1)` -/
def P7115677743287407116.Spec : Prop :=
  ∀ n, P7115677743287407116.a n = A345279 (n + 1)

theorem P7115677743287407116.correct : P7115677743287407116.Spec := by
  intro n
  simp only [A345279, Nat.add_sub_cancel]

end A345279

/-! ## A345279.P10064713700501221339

`A344931(n+1)+A257991(∏{p}[n+1, #])`
-/

namespace A345279.P10064713700501221339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344931 (n + 1) + A257991 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A345279.P10064713700501221339

namespace A345279

/-- `A344931(n+1)+A257991(∏{p}[n+1, #])` -/
def P10064713700501221339.Spec : Prop :=
  ∀ n, P10064713700501221339.a n = A345279 (n + 1)

end A345279

/-! ## A345279.P8049149491211650544

`Δ[A024924(n)]-A055631(A247503(n+1))`
-/

namespace A345279.P8049149491211650544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A055631 (A247503 (n + 1)).toNat

end

end A345279.P8049149491211650544

namespace A345279

/-- `Δ[A024924(n)]-A055631(A247503(n+1))` -/
def P8049149491211650544.Spec : Prop :=
  ∀ n, P8049149491211650544.a n = A345279 (n + 1)

end A345279

/-! ## A345279.P4904629966191132306

`A344931(n+1)+A001221(A247503(n+1))`
-/

namespace A345279.P4904629966191132306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344931 (n + 1) + A001221 (A247503 (n + 1)).toNat

end

end A345279.P4904629966191132306

namespace A345279

/-- `A344931(n+1)+A001221(A247503(n+1))` -/
def P4904629966191132306.Spec : Prop :=
  ∀ n, P4904629966191132306.a n = A345279 (n + 1)

end A345279

/-! ## A345279.P16812491692025076713

`A344931(n+1)+A001222(A247503(∏{p}[n+1, #]))`
-/

namespace A345279.P16812491692025076713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344931 (n + 1) + A001222 (A247503 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A345279.P16812491692025076713

namespace A345279

/-- `A344931(n+1)+A001222(A247503(∏{p}[n+1, #]))` -/
def P16812491692025076713.Spec : Prop :=
  ∀ n, P16812491692025076713.a n = A345279 (n + 1)

end A345279

/-! ## A345279.P3370213310546114403

`A008472(n+1)+A324966(n+1)-A344908(n+1)`
-/

namespace A345279.P3370213310546114403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + (A324966 (n + 1) - A344908 (n + 1))

end

end A345279.P3370213310546114403

namespace A345279

/-- `A008472(n+1)+A324966(n+1)-A344908(n+1)` -/
def P3370213310546114403.Spec : Prop :=
  ∀ n, P3370213310546114403.a n = A345279 (n + 1)

end A345279

/-! ## A345279.P4001797444653697949

`A344931(n+1)+A324967(A003961(n+1))`
-/

namespace A345279.P4001797444653697949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344931 (n + 1) + A324967 (A003961 (n + 1)).toNat

end

end A345279.P4001797444653697949

namespace A345279

/-- `A344931(n+1)+A324967(A003961(n+1))` -/
def P4001797444653697949.Spec : Prop :=
  ∀ n, P4001797444653697949.a n = A345279 (n + 1)

end A345279

/-!
# A345280: a(n) = Sum_{p|n, p prime} nextprime(p), where nextprime(n) is the smallest prime > n.

The programs for A345280, the canonical program `A345280.P13179303495743495362` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345280 has offset 1).

The definition of A345280 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345280.P12348773752656171247

`∑{p}[n+1, A003961(#)]`
-/

namespace A345280.P12348773752656171247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A003961 p

end

end A345280.P12348773752656171247

namespace A345280

/-- `∑{p}[n+1, A003961(#)]` -/
def P12348773752656171247.Spec : Prop :=
  ∀ n, P12348773752656171247.a n = A345280 (n + 1)

end A345280

/-! ## A345280.P17828714792931567346

`∑{p}[n+1, A045965(#)]`
-/

namespace A345280.P17828714792931567346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A045965 p

end

end A345280.P17828714792931567346

namespace A345280

/-- `∑{p}[n+1, A045965(#)]` -/
def P17828714792931567346.Spec : Prop :=
  ∀ n, P17828714792931567346.a n = A345280 (n + 1)

end A345280

/-! ## A345280.P5407416308310930624

`∑{p}[n+1, A064802(#)]`
-/

namespace A345280.P5407416308310930624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A064802 p

end

end A345280.P5407416308310930624

namespace A345280

/-- `∑{p}[n+1, A064802(#)]` -/
def P5407416308310930624.Spec : Prop :=
  ∀ n, P5407416308310930624.a n = A345280 (n + 1)

end A345280

/-! ## A345280.P13179303495743495362

`∑{p}[n+1, A066169(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A345280

/-- `∑{p}[n+1, A066169(#)]` -/
def P13179303495743495362.Spec : Prop :=
  ∀ n, P13179303495743495362.a n = A345280 (n + 1)

theorem P13179303495743495362.correct : P13179303495743495362.Spec := by
  intro n
  simp only [A345280, Nat.add_sub_cancel]

end A345280

/-! ## A345280.P10413037194967880767

`∑{p}[n+1, A067792(#)]`
-/

namespace A345280.P10413037194967880767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A067792 p

end

end A345280.P10413037194967880767

namespace A345280

/-- `∑{p}[n+1, A067792(#)]` -/
def P10413037194967880767.Spec : Prop :=
  ∀ n, P10413037194967880767.a n = A345280 (n + 1)

end A345280

/-! ## A345280.P17607149488215023607

`∑{p}[n+1, A079427(#)]`
-/

namespace A345280.P17607149488215023607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A079427 p

end

end A345280.P17607149488215023607

namespace A345280

/-- `∑{p}[n+1, A079427(#)]` -/
def P17607149488215023607.Spec : Prop :=
  ∀ n, P17607149488215023607.a n = A345280 (n + 1)

end A345280

/-! ## A345280.P3180764037763116127

`∑{p}[n+1, A079428(#)]`
-/

namespace A345280.P3180764037763116127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A079428 p

end

end A345280.P3180764037763116127

namespace A345280

/-- `∑{p}[n+1, A079428(#)]` -/
def P3180764037763116127.Spec : Prop :=
  ∀ n, P3180764037763116127.a n = A345280 (n + 1)

end A345280

/-! ## A345280.P9800418165333900244

`∑{p}[n+1, A081761(#)]`
-/

namespace A345280.P9800418165333900244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A081761 p

end

end A345280.P9800418165333900244

namespace A345280

/-- `∑{p}[n+1, A081761(#)]` -/
def P9800418165333900244.Spec : Prop :=
  ∀ n, P9800418165333900244.a n = A345280 (n + 1)

end A345280

/-! ## A345280.P15384761357153025132

`∑{p}[n+1, A082048(#)]`
-/

namespace A345280.P15384761357153025132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A082048 p

end

end A345280.P15384761357153025132

namespace A345280

/-- `∑{p}[n+1, A082048(#)]` -/
def P15384761357153025132.Spec : Prop :=
  ∀ n, P15384761357153025132.a n = A345280 (n + 1)

end A345280

/-! ## A345280.P4268394813054901546

`∑{p}[n+1, A112276(#)]`
-/

namespace A345280.P4268394813054901546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A112276 p

end

end A345280.P4268394813054901546

namespace A345280

/-- `∑{p}[n+1, A112276(#)]` -/
def P4268394813054901546.Spec : Prop :=
  ∀ n, P4268394813054901546.a n = A345280 (n + 1)

end A345280

/-! ## A345280.P900155197285547841

`∑{p}[n+1, A117366(#)]`
-/

namespace A345280.P900155197285547841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A117366 p

end

end A345280.P900155197285547841

namespace A345280

/-- `∑{p}[n+1, A117366(#)]` -/
def P900155197285547841.Spec : Prop :=
  ∀ n, P900155197285547841.a n = A345280 (n + 1)

end A345280

/-! ## A345280.P8004240157997988520

`∑{p}[n+1, A117367(#)]`
-/

namespace A345280.P8004240157997988520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A117367 p

end

end A345280.P8004240157997988520

namespace A345280

/-- `∑{p}[n+1, A117367(#)]` -/
def P8004240157997988520.Spec : Prop :=
  ∀ n, P8004240157997988520.a n = A345280 (n + 1)

end A345280

/-! ## A345280.P9861184243711425210

`∑{p}[n+1, A151800(#)]`
-/

namespace A345280.P9861184243711425210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A151800 p

end

end A345280.P9861184243711425210

namespace A345280

/-- `∑{p}[n+1, A151800(#)]` -/
def P9861184243711425210.Spec : Prop :=
  ∀ n, P9861184243711425210.a n = A345280 (n + 1)

end A345280

/-! ## A345280.P5643687842331404377

`∑{p}[n+1, A163620(#)]`
-/

namespace A345280.P5643687842331404377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A163620 p

end

end A345280.P5643687842331404377

namespace A345280

/-- `∑{p}[n+1, A163620(#)]` -/
def P5643687842331404377.Spec : Prop :=
  ∀ n, P5643687842331404377.a n = A345280 (n + 1)

end A345280

/-! ## A345280.P7721100336198248405

`∑{p}[n+1, A253550(#)]`
-/

namespace A345280.P7721100336198248405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A253550 p

end

end A345280.P7721100336198248405

namespace A345280

/-- `∑{p}[n+1, A253550(#)]` -/
def P7721100336198248405.Spec : Prop :=
  ∀ n, P7721100336198248405.a n = A345280 (n + 1)

end A345280

/-! ## A345280.P12316279915282134065

`∑{p}[A328915(n+1), #]`
-/

namespace A345280.P12316279915282134065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328915 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A345280.P12316279915282134065

namespace A345280

/-- `∑{p}[A328915(n+1), #]` -/
def P12316279915282134065.Spec : Prop :=
  ∀ n, (P12316279915282134065.a n : ℤ) = A345280 (n + 1)

end A345280

/-! ## A345280.P14252552330420272401

`A001414(A328915(n+1))`
-/

namespace A345280.P14252552330420272401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A328915 (n + 1)).toNat

end

end A345280.P14252552330420272401

namespace A345280

/-- `A001414(A328915(n+1))` -/
def P14252552330420272401.Spec : Prop :=
  ∀ n, P14252552330420272401.a n = A345280 (n + 1)

end A345280

/-! ## A345280.P12312590614867751494

`A001414(A003961(A007947(n+1)))`
-/

namespace A345280.P12312590614867751494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A003961 (A007947 (n + 1)).toNat).toNat

end

end A345280.P12312590614867751494

namespace A345280

/-- `A001414(A003961(A007947(n+1)))` -/
def P12312590614867751494.Spec : Prop :=
  ∀ n, P12312590614867751494.a n = A345280 (n + 1)

end A345280

/-! ## A345280.P9312644513107302519

`A008472(A003961(n+1))`
-/

namespace A345280.P9312644513107302519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A003961 (n + 1)).toNat

end

end A345280.P9312644513107302519

namespace A345280

/-- `A008472(A003961(n+1))` -/
def P9312644513107302519.Spec : Prop :=
  ∀ n, P9312644513107302519.a n = A345280 (n + 1)

end A345280

/-! ## A345280.P14510541142158734909

`∑{p}[A297166(2*(n+1)), #]`
-/

namespace A345280.P14510541142158734909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297166 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A345280.P14510541142158734909

namespace A345280

/-- `∑{p}[A297166(2*(n+1)), #]` -/
def P14510541142158734909.Spec : Prop :=
  ∀ n, (P14510541142158734909.a n : ℤ) = A345280 (n + 1)

end A345280

/-!
# A345281: a(n) = Sum_{p|n} nextprime(n/p), where nextprime(m) is the smallest prime > m.

The programs for A345281, the canonical program `A345281.P10556684959762605774` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345281 has offset 1).

The definition of A345281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345281.P10556684959762605774

`∑{p}[n+1, A151800((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A345281

/-- `∑{p}[n+1, A151800((n+1)/#)]` -/
def P10556684959762605774.Spec : Prop :=
  ∀ n, P10556684959762605774.a n = A345281 (n + 1)

theorem P10556684959762605774.correct : P10556684959762605774.Spec := by
  intro n
  simp only [A345281, Nat.add_sub_cancel]

end A345281

/-! ## A345281.P6166135474622898683

`∑{p}[n+1, A007918((n+1)/#+1)]`
-/

namespace A345281.P6166135474622898683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A007918 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ) + 1)).toNat

end

end A345281.P6166135474622898683

namespace A345281

/-- `∑{p}[n+1, A007918((n+1)/#+1)]` -/
def P6166135474622898683.Spec : Prop :=
  ∀ n, P6166135474622898683.a n = A345281 (n + 1)

end A345281

/-! ## A345281.P9438073705664053956

`A004772(A056189(n+1))%A000203(n+1)`
-/

namespace A345281.P9438073705664053956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004772 (A056189 (n + 1)).toNat) (A000203 (n + 1))

end

end A345281.P9438073705664053956

namespace A345281

/-- `A004772(A056189(n+1))%A000203(n+1)` -/
def P9438073705664053956.Spec : Prop :=
  ∀ n, P9438073705664053956.a n = A345281 (n + 1)

end A345281

/-!
# A345282: a(n) = Sum_{p|n, p prime} p * nextprime(n/p).

The programs for A345282, the canonical program `A345282.P3924199475300037871` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345282 has offset 1).

The definition of A345282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345282.P3924199475300037871

`∑{d}[n+1, A061397(#)*A151800((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A345282

/-- `∑{d}[n+1, A061397(#)*A151800((n+1)/#)]` -/
def P3924199475300037871.Spec : Prop :=
  ∀ n, P3924199475300037871.a n = A345282 (n + 1)

theorem P3924199475300037871.correct : P3924199475300037871.Spec := by
  intro n
  simp only [A345282, Nat.add_sub_cancel]

end A345282

/-!
# A345284: a(n) = Sum_{p|n, p prime} (p #).

The programs for A345284, the canonical program `A345284.P18352795406097472761` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345284 has offset 1).

The definition of A345284 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345284.P18352795406097472761

`∑{p}[n+1, A034386(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A345284

/-- `∑{p}[n+1, A034386(#)]` -/
def P18352795406097472761.Spec : Prop :=
  ∀ n, P18352795406097472761.a n = A345284 (n + 1)

theorem P18352795406097472761.correct : P18352795406097472761.Spec := by
  intro n
  simp only [A345284, Nat.add_sub_cancel]

end A345284

/-! ## A345284.P11568976866122135099

`∑{p}[n+1, A073039(#)]`
-/

namespace A345284.P11568976866122135099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A073039 p

end

end A345284.P11568976866122135099

namespace A345284

/-- `∑{p}[n+1, A073039(#)]` -/
def P11568976866122135099.Spec : Prop :=
  ∀ n, P11568976866122135099.a n = A345284 (n + 1)

end A345284

/-! ## A345284.P16588793071574122811

`∑{p}[n+1, A108951(#)]`
-/

namespace A345284.P16588793071574122811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A108951 p

end

end A345284.P16588793071574122811

namespace A345284

/-- `∑{p}[n+1, A108951(#)]` -/
def P16588793071574122811.Spec : Prop :=
  ∀ n, P16588793071574122811.a n = A345284 (n + 1)

end A345284

/-! ## A345284.P11045830158339647831

`∑{p}[n+1, A226532(#)]`
-/

namespace A345284.P11045830158339647831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A226532 p

end

end A345284.P11045830158339647831

namespace A345284

/-- `∑{p}[n+1, A226532(#)]` -/
def P11045830158339647831.Spec : Prop :=
  ∀ n, P11045830158339647831.a n = A345284 (n + 1)

end A345284

/-! ## A345284.P16116718087671151475

`∑{p}[n+1, A283478(#)]`
-/

namespace A345284.P16116718087671151475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A283478 p

end

end A345284.P16116718087671151475

namespace A345284

/-- `∑{p}[n+1, A283478(#)]` -/
def P16116718087671151475.Spec : Prop :=
  ∀ n, P16116718087671151475.a n = A345284 (n + 1)

end A345284

/-! ## A345284.P16246791322184715449

`∑{p}[n+1, A328769(#)]`
-/

namespace A345284.P16246791322184715449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A328769 p

end

end A345284.P16246791322184715449

namespace A345284

/-- `∑{p}[n+1, A328769(#)]` -/
def P16246791322184715449.Spec : Prop :=
  ∀ n, P16246791322184715449.a n = A345284 (n + 1)

end A345284

/-! ## A345284.P5646653315419500426

`∑{p}[n+1, A346093(#)]`
-/

namespace A345284.P5646653315419500426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A346093 p

end

end A345284.P5646653315419500426

namespace A345284

/-- `∑{p}[n+1, A346093(#)]` -/
def P5646653315419500426.Spec : Prop :=
  ∀ n, P5646653315419500426.a n = A345284 (n + 1)

end A345284

/-! ## A345284.P17313965612960088955

`∑{p}[n+1, A373158(#)]`
-/

namespace A345284.P17313965612960088955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A373158 p

end

end A345284.P17313965612960088955

namespace A345284

/-- `∑{p}[n+1, A373158(#)]` -/
def P17313965612960088955.Spec : Prop :=
  ∀ n, P17313965612960088955.a n = A345284 (n + 1)

end A345284

/-! ## A345284.P4360844415754797432

`∑{p}[n+1, A373985(#)]`
-/

namespace A345284.P4360844415754797432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A373985 p

end

end A345284.P4360844415754797432

namespace A345284

/-- `∑{p}[n+1, A373985(#)]` -/
def P4360844415754797432.Spec : Prop :=
  ∀ n, P4360844415754797432.a n = A345284 (n + 1)

end A345284

/-! ## A345284.P3709051371160962874

`A373158(∏{p}[n+1, #])`
-/

namespace A345284.P3709051371160962874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373158 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A345284.P3709051371160962874

namespace A345284

/-- `A373158(∏{p}[n+1, #])` -/
def P3709051371160962874.Spec : Prop :=
  ∀ n, P3709051371160962874.a n = A345284 (n + 1)

end A345284

/-! ## A345284.P5206496532239362896

`A373158(A007947(n+1))`
-/

namespace A345284.P5206496532239362896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373158 (A007947 (n + 1)).toNat

end

end A345284.P5206496532239362896

namespace A345284

/-- `A373158(A007947(n+1))` -/
def P5206496532239362896.Spec : Prop :=
  ∀ n, P5206496532239362896.a n = A345284 (n + 1)

end A345284

/-! ## A345284.P10395573572958960065

`∑{p}[n+1, A158977(#)]`
-/

namespace A345284.P10395573572958960065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A158977 p

end

end A345284.P10395573572958960065

namespace A345284

/-- `∑{p}[n+1, A158977(#)]` -/
def P10395573572958960065.Spec : Prop :=
  ∀ n, P10395573572958960065.a n = A345284 (n + 1)

end A345284

/-! ## A345284.P1296822610560116378

`∑{p}[n+1, A346107(#)]`
-/

namespace A345284.P1296822610560116378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A346107 p

end

end A345284.P1296822610560116378

namespace A345284

/-- `∑{p}[n+1, A346107(#)]` -/
def P1296822610560116378.Spec : Prop :=
  ∀ n, P1296822610560116378.a n = A345284 (n + 1)

end A345284

/-! ## A345284.P12311214026704074831

`A276085(A328915(n+1))`
-/

namespace A345284.P12311214026704074831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A328915 (n + 1)).toNat

end

end A345284.P12311214026704074831

namespace A345284

/-- `A276085(A328915(n+1))` -/
def P12311214026704074831.Spec : Prop :=
  ∀ n, P12311214026704074831.a n = A345284 (n + 1)

end A345284

/-!
# A345285: Sides of primary squares of type 1 (A344331). A primary square of type 1 is the smallest square that can be tiled with squares of two different sides a < b, so that the numbers of small and large squares are equal.

The programs for A345285, there is no canonical definition to state claims against.
-/

/-! ## A345285.P10818007197430778151

`A393591(A000032(3*n+2))*A393616(n+1)`
-/

namespace A345285.P10818007197430778151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393591 (A000032 (3 * n + 2)).toNat * A393616 (n + 1)

end

end A345285.P10818007197430778151

/-! ## A345285.P6695314838138777540

`A306541(A393587(3*n+4))*A393616(n+1)`
-/

namespace A345285.P6695314838138777540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306541 (A393587 (3 * n + 4)).toNat * A393616 (n + 1)

end

end A345285.P6695314838138777540

/-!
# A345286: a(n) is the number of large or small squares that are used to tile primary squares of type 1 (see A344331) whose side length is A345285(n).

The programs for A345286, there is no canonical definition to state claims against.
-/

/-! ## A345286.P10393891451634583190

`A338485(n+1)-A338501(A216857(n))`
-/

namespace A345286.P10393891451634583190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338485 (n + 1) - A338501 (A216857 n).toNat

end

end A345286.P10393891451634583190

/-!
# A345290: a(n) is obtained by replacing 2^k in binary expansion of n with Fibonacci(-k-2).

The programs for A345290, the canonical program `A345290.P12313205594087297286` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345290 has offset 0).

The definition of A345290 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022290, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A345290.P12313205594087297286

`A022290(A063695(n))-A022290(A063694(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A345290

/-- `A022290(A063695(n))-A022290(A063694(n))` -/
def P12313205594087297286.Spec : Prop :=
  ∀ n, P12313205594087297286.a n = A345290 n

theorem P12313205594087297286.correct : P12313205594087297286.Spec := by
  intro n
  simp only [A345290]

end A345290

/-! ## A345290.P16919082641930554676

`∑[A061084(val(A008574(n), 2))]-1`
-/

namespace A345290.P16919082641930554676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (SequenceMachineLib.valuation (A008574 n).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A345290.P16919082641930554676

namespace A345290

/-- `∑[A061084(val(A008574(n), 2))]-1` -/
def P16919082641930554676.Spec : Prop :=
  ∀ n, P16919082641930554676.a n = A345290 n

end A345290

/-! ## A345290.P15542046804301181511

`2*A022290(A063695(n))-A022290(n)`
-/

namespace A345290.P15542046804301181511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022290 (A063695 n).toNat - A022290 n

end

end A345290.P15542046804301181511

namespace A345290

/-- `2*A022290(A063695(n))-A022290(n)` -/
def P15542046804301181511.Spec : Prop :=
  ∀ n, P15542046804301181511.a n = A345290 n

end A345290

/-! ## A345290.P4886779738784483005

`A022290(n)-2*A022290(A063694(n))`
-/

namespace A345290.P4886779738784483005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 n - 2 * A022290 (A063694 n).toNat

end

end A345290.P4886779738784483005

namespace A345290

/-- `A022290(n)-2*A022290(A063694(n))` -/
def P4886779738784483005.Spec : Prop :=
  ∀ n, P4886779738784483005.a n = A345290 n

end A345290

/-! ## A345290.P17326300359308269792

`A356327(2*n)`
-/

namespace A345290.P17326300359308269792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356327 (2 * n)

end

end A345290.P17326300359308269792

namespace A345290

/-- `A356327(2*n)` -/
def P17326300359308269792.Spec : Prop :=
  ∀ n, P17326300359308269792.a n = A345290 n

end A345290

/-! ## A345290.P7850952689988812737

`A356327(Δ[n²])-1`
-/

namespace A345290.P7850952689988812737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356327 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A345290.P7850952689988812737

namespace A345290

/-- `A356327(Δ[n²])-1` -/
def P7850952689988812737.Spec : Prop :=
  ∀ n, P7850952689988812737.a n = A345290 n

end A345290

/-! ## A345290.P15913879659235925539

`∑[A061084(val(A008574(n), 2))%A271261(n)]`
-/

namespace A345290.P15913879659235925539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061084 (SequenceMachineLib.valuation (A008574 n).toNat 2)) (A271261 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345290.P15913879659235925539

namespace A345290

/-- `∑[A061084(val(A008574(n), 2))%A271261(n)]` -/
def P15913879659235925539.Spec : Prop :=
  ∀ n, P15913879659235925539.a n = A345290 n

end A345290

/-!
# A345291: a(n) is the least k >= 0 such that A345290(k) = n.

The programs for A345291, there is no canonical definition to state claims against.
-/

/-! ## A345291.P5310855820114555247

`floor(A345292(round(ϕ*n))/2)`
-/

namespace A345291.P5310855820114555247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A345292 (SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))).toNat : ℚ) / 2⌋

end

end A345291.P5310855820114555247

/-! ## A345291.P1963162468025874290

`A004525(A345292(round(ϕ*n)))`
-/

namespace A345291.P1963162468025874290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A345292 (SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))).toNat).toNat

end

end A345291.P1963162468025874290

/-! ## A345291.P8862116269830417019

`A123108(A345292(round(ϕ*n)))%A318756(n+1)`
-/

namespace A345291.P8862116269830417019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123108 (A345292 (SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))).toNat).toNat) (A318756 (n + 1))

end

end A345291.P8862116269830417019

/-!
# A345292: a(n) is the least k >= 0 such that A345290(k) = -n.

The programs for A345292, there is no canonical definition to state claims against.
-/

/-! ## A345292.P17446724600839960381

`floor(A345291(round(ϕ*n))/2)`
-/

namespace A345292.P17446724600839960381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A345291 (SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))).toNat : ℚ) / 2⌋

end

end A345292.P17446724600839960381

/-! ## A345292.P13234046071382404095

`floor(1/2*A345291(A026351(n)-1))`
-/

namespace A345292.P13234046071382404095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 : ℚ) / 2 * (A345291 (A026351 n - 1).toNat : ℚ)⌋

end

end A345292.P13234046071382404095

/-! ## A345292.P10385286109839002438

`ceil(A345291(A026351(n)-1)/2-A057427(n))`
-/

namespace A345292.P10385286109839002438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A345291 (A026351 n - 1).toNat : ℚ) / 2 - (A057427 n : ℚ)⌉

end

end A345292.P10385286109839002438

/-! ## A345292.P7863843761687545565

`round(A057428(n)+A345291(A026351(n)-1)/2)`
-/

namespace A345292.P7863843761687545565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A057428 n : ℚ) + (A345291 (A026351 n - 1).toNat : ℚ) / 2)

end

end A345292.P7863843761687545565

/-! ## A345292.P13142284523904053984

`floor(A345291(A026351(n)-1)/2)%A000124(n+5)`
-/

namespace A345292.P13142284523904053984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A345291 (A026351 n - 1).toNat : ℚ) / 2⌋ (A000124 (n + 5))

end

end A345292.P13142284523904053984

/-! ## A345292.P10501991136632381783

`A004526(A345291(round(ϕ*n)))`
-/

namespace A345292.P10501991136632381783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A345291 (SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))).toNat).toNat

end

end A345292.P10501991136632381783

/-!
# A345297: a(n) is the least k >= 0 such that A331835(k) = n.

The programs for A345297, there is no canonical definition to state claims against.
-/

/-! ## A345297.P3673911838104178067

`eq[A007088(n), A205598(A331835(n))]`
-/

namespace A345297.P3673911838104178067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205598 (A331835 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345297.P3673911838104178067

/-! ## A345297.P13462144804567254674

`eq[A204094(n)/7, A205598(A331835(n))]`
-/

namespace A345297.P13462144804567254674
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204094 n : ℚ) / 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205598 (A331835 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A345297.P13462144804567254674

/-! ## A345297.P14929597287750032113

`eq[A204095(n)/8, A205598(A331835(n))]`
-/

namespace A345297.P14929597287750032113
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204095 n : ℚ) / 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205598 (A331835 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A345297.P14929597287750032113

/-! ## A345297.P18032178181235239960

`eq[A205598(A331835(n))+n, A269130(n)]`
-/

namespace A345297.P18032178181235239960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205598 (A331835 n).toNat + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269130 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345297.P18032178181235239960

/-! ## A345297.P14436702707949144619

`eq[A169967(n+1)/4, A205598(A331835(n))]`
-/

namespace A345297.P14436702707949144619
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169967 (n + 1) : ℚ) / 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205598 (A331835 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A345297.P14436702707949144619

/-!
# A345298: a(n) = Sum_{p|n, p prime} tau(p #).

The programs for A345298, the canonical program `A345298.P9232387955265906661` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345298 has offset 1).

The definition of A345298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1181 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345298.P9232387955265906661

`2*A087207(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A345298

/-- `2*A087207(n+1)` -/
def P9232387955265906661.Spec : Prop :=
  ∀ n, P9232387955265906661.a n = A345298 (n + 1)

theorem P9232387955265906661.correct : P9232387955265906661.Spec := by
  intro n
  simp only [A345298, Nat.add_sub_cancel]

end A345298

/-! ## A345298.P11278115102487850463

`∑{p}[n+1, A048656(#)]`
-/

namespace A345298.P11278115102487850463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A048656 p

end

end A345298.P11278115102487850463

namespace A345298

/-- `∑{p}[n+1, A048656(#)]` -/
def P11278115102487850463.Spec : Prop :=
  ∀ n, P11278115102487850463.a n = A345298 (n + 1)

end A345298

/-! ## A345298.P16451704609350166407

`∑{p}[n+1, A048767(#)]`
-/

namespace A345298.P16451704609350166407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A048767 p

end

end A345298.P16451704609350166407

namespace A345298

/-- `∑{p}[n+1, A048767(#)]` -/
def P16451704609350166407.Spec : Prop :=
  ∀ n, P16451704609350166407.a n = A345298 (n + 1)

end A345298

/-! ## A345298.P4077996451698309486

`∑{p}[n+1, A122111(#)]`
-/

namespace A345298.P4077996451698309486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A122111 p

end

end A345298.P4077996451698309486

namespace A345298

/-- `∑{p}[n+1, A122111(#)]` -/
def P4077996451698309486.Spec : Prop :=
  ∀ n, P4077996451698309486.a n = A345298 (n + 1)

end A345298

/-! ## A345298.P10209597003858374091

`∑{p}[n+1, A181821(#)]`
-/

namespace A345298.P10209597003858374091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A181821 p

end

end A345298.P10209597003858374091

namespace A345298

/-- `∑{p}[n+1, A181821(#)]` -/
def P10209597003858374091.Spec : Prop :=
  ∀ n, P10209597003858374091.a n = A345298 (n + 1)

end A345298

/-! ## A345298.P4505386085300348495

`∑{p}[n+1, A200947(#)]`
-/

namespace A345298.P4505386085300348495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A200947 p

end

end A345298.P4505386085300348495

namespace A345298

/-- `∑{p}[n+1, A200947(#)]` -/
def P4505386085300348495.Spec : Prop :=
  ∀ n, P4505386085300348495.a n = A345298 (n + 1)

end A345298

/-! ## A345298.P7800251203890226676

`∑{p}[n+1, A242706(#)]`
-/

namespace A345298.P7800251203890226676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A242706 p

end

end A345298.P7800251203890226676

namespace A345298

/-- `∑{p}[n+1, A242706(#)]` -/
def P7800251203890226676.Spec : Prop :=
  ∀ n, P7800251203890226676.a n = A345298 (n + 1)

end A345298

/-! ## A345298.P1035325426596322130

`∑{p}[n+1, A248692(#)]`
-/

namespace A345298.P1035325426596322130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A248692 p

end

end A345298.P1035325426596322130

namespace A345298

/-- `∑{p}[n+1, A248692(#)]` -/
def P1035325426596322130.Spec : Prop :=
  ∀ n, P1035325426596322130.a n = A345298 (n + 1)

end A345298

/-! ## A345298.P4405060393313736396

`∑{p}[n+1, A278221(#)]`
-/

namespace A345298.P4405060393313736396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A278221 p

end

end A345298.P4405060393313736396

namespace A345298

/-- `∑{p}[n+1, A278221(#)]` -/
def P4405060393313736396.Spec : Prop :=
  ∀ n, P4405060393313736396.a n = A345298 (n + 1)

end A345298

/-! ## A345298.P13101068693953210275

`∑{p}[n+1, A279351(#)]`
-/

namespace A345298.P13101068693953210275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A279351 p

end

end A345298.P13101068693953210275

namespace A345298

/-- `∑{p}[n+1, A279351(#)]` -/
def P13101068693953210275.Spec : Prop :=
  ∀ n, P13101068693953210275.a n = A345298 (n + 1)

end A345298

/-! ## A345298.P15793671073524835043

`2*A048675(A007947(n+1))`
-/

namespace A345298.P15793671073524835043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048675 (A007947 (n + 1)).toNat

end

end A345298.P15793671073524835043

namespace A345298

/-- `2*A048675(A007947(n+1))` -/
def P15793671073524835043.Spec : Prop :=
  ∀ n, P15793671073524835043.a n = A345298 (n + 1)

end A345298

/-! ## A345298.P16293016305285794756

`A087207(n+1)+A048675(A007947(n+1))`
-/

namespace A345298.P16293016305285794756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (n + 1) + A048675 (A007947 (n + 1)).toNat

end

end A345298.P16293016305285794756

namespace A345298

/-- `A087207(n+1)+A048675(A007947(n+1))` -/
def P16293016305285794756.Spec : Prop :=
  ∀ n, P16293016305285794756.a n = A345298 (n + 1)

end A345298

/-! ## A345298.P8405588296662645963

`A087207(n+1)+A087207(A304776(n+1))`
-/

namespace A345298.P8405588296662645963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (n + 1) + A087207 (A304776 (n + 1)).toNat

end

end A345298.P8405588296662645963

namespace A345298

/-- `A087207(n+1)+A087207(A304776(n+1))` -/
def P8405588296662645963.Spec : Prop :=
  ∀ n, P8405588296662645963.a n = A345298 (n + 1)

end A345298

/-! ## A345298.P17816783143456356278

`A324574(n+1)+A324573(A007947(n+1))`
-/

namespace A345298.P17816783143456356278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324574 (n + 1) + A324573 (A007947 (n + 1)).toNat

end

end A345298.P17816783143456356278

namespace A345298

/-- `A324574(n+1)+A324573(A007947(n+1))` -/
def P17816783143456356278.Spec : Prop :=
  ∀ n, P17816783143456356278.a n = A345298 (n + 1)

end A345298

/-! ## A345298.P3513639048244828519

`∑{p}[n+1, A153212(#)]`
-/

namespace A345298.P3513639048244828519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A153212 p

end

end A345298.P3513639048244828519

namespace A345298

/-- `∑{p}[n+1, A153212(#)]` -/
def P3513639048244828519.Spec : Prop :=
  ∀ n, P3513639048244828519.a n = A345298 (n + 1)

end A345298

/-! ## A345298.P15831459008821430615

`∑{p}[n+1, A241909(#)]`
-/

namespace A345298.P15831459008821430615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A241909 p

end

end A345298.P15831459008821430615

namespace A345298

/-- `∑{p}[n+1, A241909(#)]` -/
def P15831459008821430615.Spec : Prop :=
  ∀ n, P15831459008821430615.a n = A345298 (n + 1)

end A345298

/-! ## A345298.P11330945029622445239

`∑{p}[n+1, A243053(#)]`
-/

namespace A345298.P11330945029622445239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A243053 p

end

end A345298.P11330945029622445239

namespace A345298

/-- `∑{p}[n+1, A243053(#)]` -/
def P11330945029622445239.Spec : Prop :=
  ∀ n, P11330945029622445239.a n = A345298 (n + 1)

end A345298

/-! ## A345298.P2389375248865262143

`∑{p}[n+1, A245451(#)]`
-/

namespace A345298.P2389375248865262143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A245451 p

end

end A345298.P2389375248865262143

namespace A345298

/-- `∑{p}[n+1, A245451(#)]` -/
def P2389375248865262143.Spec : Prop :=
  ∀ n, P2389375248865262143.a n = A345298 (n + 1)

end A345298

/-! ## A345298.P13937563475413800115

`∑{p}[n+1, A279354(#)]`
-/

namespace A345298.P13937563475413800115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A279354 p

end

end A345298.P13937563475413800115

namespace A345298

/-- `∑{p}[n+1, A279354(#)]` -/
def P13937563475413800115.Spec : Prop :=
  ∀ n, P13937563475413800115.a n = A345298 (n + 1)

end A345298

/-! ## A345298.P12971101873940485119

`∑{p}[n+1, A279350(#)]`
-/

namespace A345298.P12971101873940485119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A279350 p

end

end A345298.P12971101873940485119

namespace A345298

/-- `∑{p}[n+1, A279350(#)]` -/
def P12971101873940485119.Spec : Prop :=
  ∀ n, P12971101873940485119.a n = A345298 (n + 1)

end A345298

/-!
# A345299: a(n) = Sum_{p|n, p prime} p^pi(p).

The programs for A345299, the canonical program `A345299.P5260125749584572629` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345299 has offset 1).

The definition of A345299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345299.P12707605165126278292

`∑{p}[n+1, #^A000720(#)]`
-/

namespace A345299.P12707605165126278292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℚ) ^ (A000720 p : ℤ)

end

end A345299.P12707605165126278292

namespace A345299

/-- `∑{p}[n+1, #^A000720(#)]` -/
def P12707605165126278292.Spec : Prop :=
  ∀ n, P12707605165126278292.a n = (A345299 (n + 1) : ℚ)

end A345299

/-! ## A345299.P4881756653908319018

`∑{p}[n+1, #^A056239(#)]`
-/

namespace A345299.P4881756653908319018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℚ) ^ (A056239 p : ℤ)

end

end A345299.P4881756653908319018

namespace A345299

/-- `∑{p}[n+1, #^A056239(#)]` -/
def P4881756653908319018.Spec : Prop :=
  ∀ n, P4881756653908319018.a n = (A345299 (n + 1) : ℚ)

end A345299

/-! ## A345299.P5260125749584572629

`∑{p}[n+1, #^A230980(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A345299

/-- `∑{p}[n+1, #^A230980(#)]` -/
def P5260125749584572629.Spec : Prop :=
  ∀ n, P5260125749584572629.a n = (A345299 (n + 1) : ℚ)

end A345299

/-! ## A345299.P7740969352840327784

`∑{p}[n+1, #^A302039(#)]`
-/

namespace A345299.P7740969352840327784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℚ) ^ (A302039 p : ℤ)

end

end A345299.P7740969352840327784

namespace A345299

/-- `∑{p}[n+1, #^A302039(#)]` -/
def P7740969352840327784.Spec : Prop :=
  ∀ n, P7740969352840327784.a n = (A345299 (n + 1) : ℚ)

end A345299

/-! ## A345299.P14815572100472113638

`∑{p}[A328619(n+1), A328619(#)]`
-/

namespace A345299.P14815572100472113638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A328619 p

end

end A345299.P14815572100472113638

namespace A345299

/-- `∑{p}[A328619(n+1), A328619(#)]` -/
def P14815572100472113638.Spec : Prop :=
  ∀ n, P14815572100472113638.a n = A345299 (n + 1)

end A345299

