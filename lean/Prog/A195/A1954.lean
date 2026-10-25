import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A195409: Decimal expansion of shortest length, (C), of segment from side CA through incenter to side CB in right triangle ABC with sidelengths (a,b,c)=(r-1,r,sqrt(3)), where r=(1+sqrt(5))/2 (the golden ratio).

The programs for A195409, there is no canonical definition to state claims against.
-/

/-! ## A195409.P3591710579174199432

`9-A195367(n+1)`
-/

namespace A195409.P3591710579174199432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A195367 (n + 1 + 1)

end

end A195409.P3591710579174199432

/-!
# A195415: E.g.f.: Sum_{n>=1} tanh(n*x)^n = Sum_{n>=1} a(n)*4^(n-1)*x^n/n!.

The programs for A195415, there is no canonical definition to state claims against.
-/

/-! ## A195415.P12292732220954441334

`A221077(n+1)/4^n`
-/

namespace A195415.P12292732220954441334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221077 (n + 1) : ℚ) / (4 ^ n : ℚ)

end

end A195415.P12292732220954441334

/-!
# A195416: Primes p such that there is only one semiprime number between prime(p) and prime(p+1).

The programs for A195416, there is no canonical definition to state claims against.
-/

/-! ## A195416.P3878032835065609557

`p?[(A111457(n+2)-A111457(n+1))*A222257(n)]`
-/

namespace A195416.P3878032835065609557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A111457 (n + 2) - A111457 (n + 1)) * A222257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A195416.P3878032835065609557

/-! ## A195416.P17543070626264516563

`p?[(n+1)*A103668(n+1)]`
-/

namespace A195416.P17543070626264516563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A103668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A195416.P17543070626264516563

/-! ## A195416.P14057598800890995545

`p?[A103668(n+1)*A222257(n)]`
-/

namespace A195416.P14057598800890995545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103668 (n + 1) * A222257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A195416.P14057598800890995545

/-! ## A195416.P15857826264975484979

`p?[lcm(A103668(n+1), A131738(n))]`
-/

namespace A195416.P15857826264975484979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A103668 (n + 1)) (A131738 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A195416.P15857826264975484979

/-! ## A195416.P7828239812868511550

`A000040(eq[1, A103668(A000040(n+1))]+1)`
-/

namespace A195416.P7828239812868511550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103668 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A195416.P7828239812868511550

/-!
# A195417: a(n) = sum of the absolute values of the coefficients in (1+x-x^3)^n.

The programs for A195417, there is no canonical definition to state claims against.
-/

/-! ## A195417.P16424504433938121134

`A169799(a(n-1))-1` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A195417.P16424504433938121134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  A169799 (a (n - 1)).toNat - 1

end

end A195417.P16424504433938121134

/-! ## A195417.P7007130328999634956

`A358378(A294423(n))`
-/

namespace A195417.P7007130328999634956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358378 (A294423 n).toNat

end

end A195417.P7007130328999634956

/-!
# A195418: a(n) = phi(C(n)) / gcd(C(n)-1, phi(C(n))), where C(n) is the n-th Cullen number.

The programs for A195418, there is no canonical definition to state claims against.
-/

/-! ## A195418.P5510604223287272667

`A000265(A056820(n)/A049559(n+1))`
-/

namespace A195418.P5510604223287272667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A056820 n : ℚ) / (A049559 (n + 1) : ℚ))).toNat

end

end A195418.P5510604223287272667

/-! ## A195418.P3674209691497213754

`A000265(A056820(n)/A057237(n+1))`
-/

namespace A195418.P3674209691497213754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A056820 n : ℚ) / (A057237 (n + 1) : ℚ))).toNat

end

end A195418.P3674209691497213754

/-! ## A195418.P5959941639365882621

`A000265(A056820(n)/A063994(n+1))`
-/

namespace A195418.P5959941639365882621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A056820 n : ℚ) / (A063994 (n + 1) : ℚ))).toNat

end

end A195418.P5959941639365882621

/-! ## A195418.P3684131040432475421

`A160595(n*2^n+1)`
-/

namespace A195418.P3684131040432475421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160595 (n * 2 ^ n + 1)

end

end A195418.P3684131040432475421

/-! ## A195418.P17935392172788903954

`or(1, A160595(or(1, n*2^n)))`
-/

namespace A195418.P17935392172788903954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A160595 (Nat.lor 1 (n * 2 ^ n)))

end

end A195418.P17935392172788903954

/-!
# A195419: Roman Friedman numbers.

The programs for A195419, there is no canonical definition to state claims against.
-/

/-! ## A195419.P18122944531175241779

`A246324(lt[0, A274094(n)])+4`
-/

namespace A195419.P18122944531175241779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 4

end

end A195419.P18122944531175241779

/-! ## A195419.P8930886061936627174

`A246324(record[A199855(n+1)])+4`
-/

namespace A195419.P8930886061936627174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246324 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 4

end

end A195419.P8930886061936627174

/-! ## A195419.P17285882834738484872

`A246324(eq[A035214(n), A201208(n+1)])+4`
-/

namespace A195419.P17285882834738484872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246324 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) + 4

end

end A195419.P17285882834738484872

/-! ## A195419.P1374381823792122885

`A246324(eq[A057212(n+1), A185916(n+1)])+4`
-/

namespace A195419.P1374381823792122885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246324 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) + 4

end

end A195419.P1374381823792122885

/-!
# A195420: Friedman numbers n such that n+1 is also a Friedman number.

The programs for A195420, there is no canonical definition to state claims against.
-/

/-! ## A195420.P4132569655530774312

`∩[A036057(n+1)-1, A036057(n+1)]`
-/

namespace A195420.P4132569655530774312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036057 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195420.P4132569655530774312

/-! ## A195420.P17143136635312278228

`∩[A036057(n+1), A023443(A036057(n+1))]`
-/

namespace A195420.P17143136635312278228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A036057 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195420.P17143136635312278228

/-!
# A195421: Smallest lower twin prime number which sums with its upper twin prime to a perfect n-th power.

The programs for A195421, there is no canonical definition to state claims against.
-/

/-! ## A195421.P15108042840430991652

`A195336(n+1)^(n+1)/2-1`
-/

namespace A195421.P15108042840430991652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195336 (n + 1) ^ (n + 1) : ℚ) / 2 - 1

end

end A195421.P15108042840430991652

/-!
# A195437: Triangle formed by: 1 even, 2 odd, 3 even, 4 odd... starting with 2.

The programs for A195437, the canonical program `A195437.P1577430008667448515` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195437 has offset 0).

The definition of A195437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195437.P11219723798401366960

`comp[∑[n]]+n`
-/

namespace A195437.P11219723798401366960
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n

end

end A195437.P11219723798401366960

namespace A195437

/-- `comp[∑[n]]+n` -/
def P11219723798401366960.Spec : Prop :=
  ∀ n, (P11219723798401366960.a n : ℤ) = A195437 n

end A195437

/-! ## A195437.P15964397731614009355

`∑[or(2, char[∑[n+1]])]`
-/

namespace A195437.P15964397731614009355
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195437.P15964397731614009355

namespace A195437

/-- `∑[or(2, char[∑[n+1]])]` -/
def P15964397731614009355.Spec : Prop :=
  ∀ n, (P15964397731614009355.a n : ℤ) = A195437 n

end A195437

/-! ## A195437.P1916234853262933638

`∑[xor(2, char[∑[n+1]])]`
-/

namespace A195437.P1916234853262933638
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195437.P1916234853262933638

namespace A195437

/-- `∑[xor(2, char[∑[n+1]])]` -/
def P1916234853262933638.Spec : Prop :=
  ∀ n, (P1916234853262933638.a n : ℤ) = A195437 n

end A195437

/-! ## A195437.P14345134477805929873

`comp[round(sqrt(n))+and(n, -2)]`
-/

namespace A195437.P14345134477805929873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) + Int.land (n : ℤ) (-2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A195437.P14345134477805929873

namespace A195437

/-- `comp[round(sqrt(n))+and(n, -2)]` -/
def P14345134477805929873.Spec : Prop :=
  ∀ n, (P14345134477805929873.a n : ℤ) = A195437 n

end A195437

/-! ## A195437.P18017195893404825109

`∑[char[C(n+2, 2)]+2]`
-/

namespace A195437.P18017195893404825109
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195437.P18017195893404825109

namespace A195437

/-- `∑[char[C(n+2, 2)]+2]` -/
def P18017195893404825109.Spec : Prop :=
  ∀ n, (P18017195893404825109.a n : ℤ) = A195437 n

end A195437

/-! ## A195437.P718394943903163404

`∑[dr(char[∑[n+1]]+2)]`
-/

namespace A195437.P718394943903163404
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (((if ∃ j, f2 j = n then 1 else 0) + 2 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195437.P718394943903163404

namespace A195437

/-- `∑[dr(char[∑[n+1]]+2)]` -/
def P718394943903163404.Spec : Prop :=
  ∀ n, (P718394943903163404.a n : ℤ) = A195437 n

end A195437

/-! ## A195437.P2704957495460640054

`∑[p?[char[∑[n+1]]+2]]`
-/

namespace A195437.P2704957495460640054
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195437.P2704957495460640054

namespace A195437

/-- `∑[p?[char[∑[n+1]]+2]]` -/
def P2704957495460640054.Spec : Prop :=
  ∀ n, (P2704957495460640054.a n : ℤ) = A195437 n

end A195437

/-! ## A195437.P3197200710779452235

`∑[and(1, char[∑[n+1]])+2]`
-/

namespace A195437.P3197200710779452235
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f2 j = n then 1 else 0) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195437.P3197200710779452235

namespace A195437

/-- `∑[and(1, char[∑[n+1]])+2]` -/
def P3197200710779452235.Spec : Prop :=
  ∀ n, (P3197200710779452235.a n : ℤ) = A195437 n

end A195437

/-! ## A195437.P13449857856189365196

`∑[char[a(n-1)+n+1]+2]` with `a(0)=1`
-/

namespace A195437.P13449857856189365196
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195437.P13449857856189365196

namespace A195437

/-- `∑[char[a(n-1)+n+1]+2]` -/
def P13449857856189365196.Spec : Prop :=
  ∀ n, (P13449857856189365196.a n : ℤ) = A195437 n

end A195437

/-! ## A195437.P758728065856532325

`comp[A133280(n)]`
-/

namespace A195437.P758728065856532325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133280 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A195437.P758728065856532325

namespace A195437

/-- `comp[A133280(n)]` -/
def P758728065856532325.Spec : Prop :=
  ∀ n, (P758728065856532325.a n : ℤ) = A195437 n

end A195437

/-! ## A195437.P9513662628516283326

`A001614(comp[∑[n]])`
-/

namespace A195437.P9513662628516283326
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001614 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A195437.P9513662628516283326

namespace A195437

/-- `A001614(comp[∑[n]])` -/
def P9513662628516283326.Spec : Prop :=
  ∀ n, P9513662628516283326.a n = A195437 n

end A195437

/-! ## A195437.P1577430008667448515

`∑[A073424(n)+2]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A195437

/-- `∑[A073424(n)+2]` -/
def P1577430008667448515.Spec : Prop :=
  ∀ n, P1577430008667448515.a n = A195437 n

theorem P1577430008667448515.correct : P1577430008667448515.Spec := by
  intro n
  simp only [A195437]

end A195437

/-! ## A195437.P4253328318980536225

`∑[3-A123110(n)]`
-/

namespace A195437.P4253328318980536225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A123110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195437.P4253328318980536225

namespace A195437

/-- `∑[3-A123110(n)]` -/
def P4253328318980536225.Spec : Prop :=
  ∀ n, P4253328318980536225.a n = A195437 n

end A195437

/-! ## A195437.P7904108268536525303

`comp[A083920(n)+n]`
-/

namespace A195437.P7904108268536525303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A195437.P7904108268536525303

namespace A195437

/-- `comp[A083920(n)+n]` -/
def P7904108268536525303.Spec : Prop :=
  ∀ n, (P7904108268536525303.a n : ℤ) = A195437 n

end A195437

/-! ## A195437.P4525872141629474568

`∑[char[A008805(n)]+2]`
-/

namespace A195437.P4525872141629474568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195437.P4525872141629474568

namespace A195437

/-- `∑[char[A008805(n)]+2]` -/
def P4525872141629474568.Spec : Prop :=
  ∀ n, (P4525872141629474568.a n : ℤ) = A195437 n

end A195437

/-! ## A195437.P12111000421540132508

`∑[A326822(n+1)+2]`
-/

namespace A195437.P12111000421540132508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326822 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195437.P12111000421540132508

namespace A195437

/-- `∑[A326822(n+1)+2]` -/
def P12111000421540132508.Spec : Prop :=
  ∀ n, P12111000421540132508.a n = A195437 n

end A195437

/-! ## A195437.P6939479235606115375

`comp[2*n-A003056(n)]`
-/

namespace A195437.P6939479235606115375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A003056 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A195437.P6939479235606115375

namespace A195437

/-- `comp[2*n-A003056(n)]` -/
def P6939479235606115375.Spec : Prop :=
  ∀ n, (P6939479235606115375.a n : ℤ) = A195437 n

end A195437

/-! ## A195437.P3122639757478072107

`Δ[∑[A123578(n)]+n²]`
-/

namespace A195437.P3122639757478072107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195437.P3122639757478072107

namespace A195437

/-- `Δ[∑[A123578(n)]+n²]` -/
def P3122639757478072107.Spec : Prop :=
  ∀ n, P3122639757478072107.a n = A195437 n

end A195437

/-!
# A195439: Numbers n such that 16^n + 1 is a semiprime.

The programs for A195439, there is no canonical definition to state claims against.
-/

/-! ## A195439.P5956384629673537224

`A366648(n+2)/2`
-/

namespace A195439.P5956384629673537224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366648 (n + 2) : ℚ) / 2

end

end A195439.P5956384629673537224

/-! ## A195439.P16364411212606655063

`eq[2, A366605(2*n)]`
-/

namespace A195439.P16364411212606655063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366605 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195439.P16364411212606655063

/-! ## A195439.P5584836125638164225

`eq[2, A046799(4*n)]`
-/

namespace A195439.P5584836125638164225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195439.P5584836125638164225

/-! ## A195439.P8121977602567038362

`eq[4, A366606(2*n)]`
-/

namespace A195439.P8121977602567038362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366606 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195439.P8121977602567038362

/-! ## A195439.P13707977619842092076

`eq[4, A046798(4*n)]`
-/

namespace A195439.P13707977619842092076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046798 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195439.P13707977619842092076

/-!
# A195440: G.f. satisfies: A(x - x*A(x) - x*A(x)^2) = x.

The programs for A195440, there is no canonical definition to state claims against.
-/

/-! ## A195440.P9678430055596932735

`A291267(or(3, A262001(n)))`
-/

namespace A195440.P9678430055596932735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291267 (Int.lor 3 (A262001 n)).toNat

end

end A195440.P9678430055596932735

/-! ## A195440.P11347335704313257801

`A067434(ceil(A036336(n+1)/17))`
-/

namespace A195440.P11347335704313257801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 ⌈(A036336 (n + 1) : ℚ) / 17⌉.toNat

end

end A195440.P11347335704313257801

/-!
# A195441: a(n) = denominator(Bernoulli_{n+1}(x) - Bernoulli_{n+1}).

The programs for A195441, there is no canonical definition to state claims against.
-/

/-! ## A195441.P603410376865226870

`A064538(n)/(n+1)`
-/

namespace A195441.P603410376865226870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064538 n : ℚ) / (n + 1 : ℚ)

end

end A195441.P603410376865226870

/-! ## A195441.P3646069937158583793

`A144845(n)/A324371(n+1)`
-/

namespace A195441.P3646069937158583793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 n : ℚ) / (A324371 (n + 1) : ℚ)

end

end A195441.P3646069937158583793

/-! ## A195441.P17947623963050604910

`A007947(A338025(n+1))`
-/

namespace A195441.P17947623963050604910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A338025 (n + 1)).toNat

end

end A195441.P17947623963050604910

/-! ## A195441.P7990559861431971684

`A324369(n+1)/A007947(n+1)*A144845(n)`
-/

namespace A195441.P7990559861431971684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324369 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ) * (A144845 n : ℚ)

end

end A195441.P7990559861431971684

/-! ## A195441.P16508093438568957119

`gcd(A338025(n+1)+A144845(n), A338025(n+1))`
-/

namespace A195441.P16508093438568957119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A338025 (n + 1) + A144845 n) (A338025 (n + 1))

end

end A195441.P16508093438568957119

/-! ## A195441.P1282416111504125783

`A144845(n)/A007947(A007947(n+1)/A324369(n+1))`
-/

namespace A195441.P1282416111504125783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 n : ℚ) / (A007947 (SequenceMachineLib.roundAway ((A007947 (n + 1) : ℚ) / (A324369 (n + 1) : ℚ))).toNat : ℚ)

end

end A195441.P1282416111504125783

/-! ## A195441.P832398930199650303

`gcd(A144845(n), A363596(n))`
-/

namespace A195441.P832398930199650303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144845 n) (A363596 n)

end

end A195441.P832398930199650303

/-! ## A195441.P12038247680547031643

`A318256(n)*A324369(n+1)`
-/

namespace A195441.P12038247680547031643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318256 n * A324369 (n + 1)

end

end A195441.P12038247680547031643

/-! ## A195441.P3900986478230523823

`gcd(A330030(n), A338025(n+1))`
-/

namespace A195441.P3900986478230523823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A330030 n) (A338025 (n + 1))

end

end A195441.P3900986478230523823

/-! ## A195441.P16276477559634350952

`A318256(n)/A341107(n)*A341109(n)`
-/

namespace A195441.P16276477559634350952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318256 n : ℚ) / (A341107 n : ℚ) * (A341109 n : ℚ)

end

end A195441.P16276477559634350952

/-! ## A195441.P411676243338251244

`A341108(n)/A341107(n)`
-/

namespace A195441.P411676243338251244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341108 n : ℚ) / (A341107 n : ℚ)

end

end A195441.P411676243338251244

/-! ## A195441.P471060254699653293

`A003557(n+1)*A163176(n+1)/A341107(n)`
-/

namespace A195441.P471060254699653293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) * A163176 (n + 1) : ℚ) / (A341107 n : ℚ)

end

end A195441.P471060254699653293

/-! ## A195441.P12415406930208485532

`A079618(∑[n+1])`
-/

namespace A195441.P12415406930208485532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079618 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195441.P12415406930208485532

/-!
# A195443: Self-convolution square equals A195442.

The programs for A195443, there is no canonical definition to state claims against.
-/

/-! ## A195443.P12680799107170615637

`A006579(A084080(∑[n+1])+1)`
-/

namespace A195443.P12680799107170615637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006579 (A084080 (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A195443.P12680799107170615637

/-!
# A195458: a(n) = floor(sqrt(n)) * a(n-1), starting with 1.

The programs for A195458, the canonical program `A195458.P3970272983198690654` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195458 has offset 1).

The definition of A195458 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(n+1))*a(n-1)` (program `A195458.P3970272983198690654`, by `A195458.P3970272983198690654.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195458.P3970272983198690654

`floor(sqrt(n+1))*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195458

/-- `floor(sqrt(n+1))*a(n-1)` -/
def P3970272983198690654.Spec : Prop :=
  ∀ n, (P3970272983198690654.a n : ℤ) = A195458 (n + 1)

theorem P3970272983198690654.correct : P3970272983198690654.Spec := by
  intro n
  simp only [A195458, Nat.add_sub_cancel]

end A195458

/-! ## A195458.P3485096784374758005

`∏[floor(sqrt(n+1))]`
-/

namespace A195458.P3485096784374758005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A195458.P3485096784374758005

namespace A195458

/-- `∏[floor(sqrt(n+1))]` -/
def P3485096784374758005.Spec : Prop :=
  ∀ n, (P3485096784374758005.a n : ℤ) = A195458 (n + 1)

end A195458

/-! ## A195458.P12480863061761947692

`a(n-1)*∑[char[n²-1]]` with `a(0)=1`
-/

namespace A195458.P12480863061761947692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195458.P12480863061761947692

namespace A195458

/-- `a(n-1)*∑[char[n²-1]]` -/
def P12480863061761947692.Spec : Prop :=
  ∀ n, (P12480863061761947692.a n : ℤ) = A195458 (n + 1)

end A195458

/-! ## A195458.P8361714293541696502

`abs(a(n-1))*floor(root(n+1, 2))` with `a(0)=1`
-/

namespace A195458.P8361714293541696502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1)| * ⌊(n + 1 : ℝ) ^ (1 / (2 : ℝ))⌋

end

end A195458.P8361714293541696502

namespace A195458

/-- `abs(a(n-1))*floor(root(n+1, 2))` -/
def P8361714293541696502.Spec : Prop :=
  ∀ n, P8361714293541696502.a n = A195458 (n + 1)

end A195458

/-! ## A195458.P13315833707012191503

`ceil(sqrt(n+2))*a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A195458.P13315833707012191503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.sqrt (n + 2 : ℝ)⌉ * a (n - 1) - a (n - 1)

end

end A195458.P13315833707012191503

namespace A195458

/-- `ceil(sqrt(n+2))*a(n-1)-a(n-1)` -/
def P13315833707012191503.Spec : Prop :=
  ∀ n, P13315833707012191503.a n = A195458 (n + 1)

end A195458

/-! ## A195458.P15062982319331741724

`sqrt(∏[A048760(n+1)])`
-/

namespace A195458.P15062982319331741724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)

end

end A195458.P15062982319331741724

namespace A195458

/-- `sqrt(∏[A048760(n+1)])` -/
def P15062982319331741724.Spec : Prop :=
  ∀ n, P15062982319331741724.a n = (A195458 (n + 1) : ℝ)

end A195458

/-!
# A195459: a(n) = phi(3*n)/2.

The programs for A195459, the canonical program `A195459.P676028519467690481` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195459 has offset 1).

The definition of A195459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195459.P2860711302660598050

`A000010(3*(n+1))/2`
-/

namespace A195459.P2860711302660598050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (3 * (n + 1)) : ℚ) / 2

end

end A195459.P2860711302660598050

namespace A195459

/-- `A000010(3*(n+1))/2` -/
def P2860711302660598050.Spec : Prop :=
  ∀ n, P2860711302660598050.a n = (A195459 (n + 1) : ℚ)

end A195459

/-! ## A195459.P2688992147866631122

`floor(A000010(n+3+n+n)/2)`
-/

namespace A195459.P2688992147866631122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (n + 3 + n + n) : ℚ) / 2⌋

end

end A195459.P2688992147866631122

namespace A195459

/-- `floor(A000010(n+3+n+n)/2)` -/
def P2688992147866631122.Spec : Prop :=
  ∀ n, P2688992147866631122.a n = A195459 (n + 1)

end A195459

/-! ## A195459.P676028519467690481

`∑{d}[n+1, #*A156277((n+1)/#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A195459

/-- `∑{d}[n+1, #*A156277((n+1)/#)]` -/
def P676028519467690481.Spec : Prop :=
  ∀ n, P676028519467690481.a n = A195459 (n + 1)

theorem P676028519467690481.correct : P676028519467690481.Spec := by
  intro n
  simp only [A195459, Nat.add_sub_cancel]

end A195459

/-! ## A195459.P2475878636191782026

`A372671(A026741(n+1))`
-/

namespace A195459.P2475878636191782026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372671 (A026741 (n + 1)).toNat

end

end A195459.P2475878636191782026

namespace A195459

/-- `A372671(A026741(n+1))` -/
def P2475878636191782026.Spec : Prop :=
  ∀ n, P2475878636191782026.a n = A195459 (n + 1)

end A195459

/-! ## A195459.P12377467579035058178

`A014682(A000010(3*(n+1)))`
-/

namespace A195459.P12377467579035058178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A000010 (3 * (n + 1))).toNat

end

end A195459.P12377467579035058178

namespace A195459

/-- `A014682(A000010(3*(n+1)))` -/
def P12377467579035058178.Spec : Prop :=
  ∀ n, P12377467579035058178.a n = A195459 (n + 1)

end A195459

/-! ## A195459.P7464201691254912106

`A372671(n+1)/A000034(n)`
-/

namespace A195459.P7464201691254912106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372671 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A195459.P7464201691254912106

namespace A195459

/-- `A372671(n+1)/A000034(n)` -/
def P7464201691254912106.Spec : Prop :=
  ∀ n, P7464201691254912106.a n = (A195459 (n + 1) : ℚ)

end A195459

/-! ## A195459.P5434023245801480070

`ceil(A000010(A016777(n)+2)/2)`
-/

namespace A195459.P5434023245801480070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000010 (A016777 n + 2).toNat : ℚ) / 2⌉

end

end A195459.P5434023245801480070

namespace A195459

/-- `ceil(A000010(A016777(n)+2)/2)` -/
def P5434023245801480070.Spec : Prop :=
  ∀ n, P5434023245801480070.a n = A195459 (n + 1)

end A195459

/-! ## A195459.P11476773245352758020

`ceil(A000010(A004767(n)-n)/2)`
-/

namespace A195459.P11476773245352758020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000010 (A004767 n - (n : ℤ)).toNat : ℚ) / 2⌉

end

end A195459.P11476773245352758020

namespace A195459

/-- `ceil(A000010(A004767(n)-n)/2)` -/
def P11476773245352758020.Spec : Prop :=
  ∀ n, P11476773245352758020.a n = A195459 (n + 1)

end A195459

/-! ## A195459.P17754643235592839669

`A038572(lcm(2, A000010(3*(n+1))))`
-/

namespace A195459.P17754643235592839669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (Int.lcm 2 (A000010 (3 * (n + 1))))

end

end A195459.P17754643235592839669

namespace A195459

/-- `A038572(lcm(2, A000010(3*(n+1))))` -/
def P17754643235592839669.Spec : Prop :=
  ∀ n, P17754643235592839669.a n = A195459 (n + 1)

end A195459

/-! ## A195459.P1132015905280566142

`A326139(A000010(2*n+3+n))`
-/

namespace A195459.P1132015905280566142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326139 (A000010 (2 * n + 3 + n)).toNat

end

end A195459.P1132015905280566142

namespace A195459

/-- `A326139(A000010(2*n+3+n))` -/
def P1132015905280566142.Spec : Prop :=
  ∀ n, P1132015905280566142.a n = A195459 (n + 1)

end A195459

/-! ## A195459.P9188482086368064255

`A372671(n+1)/(2-A059841(n))`
-/

namespace A195459.P9188482086368064255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372671 (n + 1) : ℚ) / (2 - A059841 n : ℚ)

end

end A195459.P9188482086368064255

namespace A195459

/-- `A372671(n+1)/(2-A059841(n))` -/
def P9188482086368064255.Spec : Prop :=
  ∀ n, P9188482086368064255.a n = (A195459 (n + 1) : ℚ)

end A195459

/-! ## A195459.P1478426132249025834

`ceil(A000010(ceil(A016945(n)/2)+1)/2)`
-/

namespace A195459.P1478426132249025834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000010 (⌈(A016945 n : ℚ) / 2⌉ + 1).toNat : ℚ) / 2⌉

end

end A195459.P1478426132249025834

namespace A195459

/-- `ceil(A000010(ceil(A016945(n)/2)+1)/2)` -/
def P1478426132249025834.Spec : Prop :=
  ∀ n, P1478426132249025834.a n = A195459 (n + 1)

end A195459

/-! ## A195459.P14433723287431566570

`round(A000010(round(A016945(n)/2)+1)/2)`
-/

namespace A195459.P14433723287431566570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000010 (SequenceMachineLib.roundAway ((A016945 n : ℚ) / 2) + 1).toNat : ℚ) / 2)

end

end A195459.P14433723287431566570

namespace A195459

/-- `round(A000010(round(A016945(n)/2)+1)/2)` -/
def P14433723287431566570.Spec : Prop :=
  ∀ n, P14433723287431566570.a n = A195459 (n + 1)

end A195459

/-! ## A195459.P16484834070946225413

`3^val(n+1, 3)*A000010(A038502(n+1))`
-/

namespace A195459.P16484834070946225413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℤ) * A000010 (A038502 (n + 1)).toNat

end

end A195459.P16484834070946225413

namespace A195459

/-- `3^val(n+1, 3)*A000010(A038502(n+1))` -/
def P16484834070946225413.Spec : Prop :=
  ∀ n, P16484834070946225413.a n = A195459 (n + 1)

end A195459

/-! ## A195459.P9024904472858363100

`∑{d}[n+1, A038502(#)*A117997((n+1)/#)]`
-/

namespace A195459.P9024904472858363100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038502 d * A117997 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A195459.P9024904472858363100

namespace A195459

/-- `∑{d}[n+1, A038502(#)*A117997((n+1)/#)]` -/
def P9024904472858363100.Spec : Prop :=
  ∀ n, P9024904472858363100.a n = A195459 (n + 1)

end A195459

/-! ## A195459.P6206678101224973285

`∑{d}[n+1, A007432(#)*A328484((n+1)/#)]`
-/

namespace A195459.P6206678101224973285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A328484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A195459.P6206678101224973285

namespace A195459

/-- `∑{d}[n+1, A007432(#)*A328484((n+1)/#)]` -/
def P6206678101224973285.Spec : Prop :=
  ∀ n, P6206678101224973285.a n = A195459 (n + 1)

end A195459

/-! ## A195459.P5047610216174339674

`∑{d}[n+1, A008683(#)*A327625((n+1)/#)]`
-/

namespace A195459.P5047610216174339674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A327625 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A195459.P5047610216174339674

namespace A195459

/-- `∑{d}[n+1, A008683(#)*A327625((n+1)/#)]` -/
def P5047610216174339674.Spec : Prop :=
  ∀ n, P5047610216174339674.a n = A195459 (n + 1)

end A195459

/-! ## A195459.P14638260321697154771

`∑{d}[n+1, A065333(#)*A326305((n+1)/#)]`
-/

namespace A195459.P14638260321697154771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065333 d * A326305 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A195459.P14638260321697154771

namespace A195459

/-- `∑{d}[n+1, A065333(#)*A326305((n+1)/#)]` -/
def P14638260321697154771.Spec : Prop :=
  ∀ n, P14638260321697154771.a n = A195459 (n + 1)

end A195459

/-! ## A195459.P12051784494223975824

`∑{d}[n+1, A092673(#)*A385137((n+1)/#)]`
-/

namespace A195459.P12051784494223975824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092673 d * A385137 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A195459.P12051784494223975824

namespace A195459

/-- `∑{d}[n+1, A092673(#)*A385137((n+1)/#)]` -/
def P12051784494223975824.Spec : Prop :=
  ∀ n, P12051784494223975824.a n = A195459 (n + 1)

end A195459

/-! ## A195459.P4310625992163658720

`A000010(A038502(n+1))*A038500(n+1)`
-/

namespace A195459.P4310625992163658720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A038502 (n + 1)).toNat * A038500 (n + 1)

end

end A195459.P4310625992163658720

namespace A195459

/-- `A000010(A038502(n+1))*A038500(n+1)` -/
def P4310625992163658720.Spec : Prop :=
  ∀ n, P4310625992163658720.a n = A195459 (n + 1)

end A195459

/-!
# A195460: a(n) = 2^(2*n+1) - 3*2^n - 1.

The programs for A195460, the canonical program `A195460.P8865239545503888614` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195460 has offset 1).

The definition of A195460 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(2*(n+1)+1)-3*2^(n+1)-1` (program `A195460.P8865239545503888614`, by `A195460.P8865239545503888614.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195460.P14351028099195543060

`2*4^(n+1)-3*2^(n+1)-1`
-/

namespace A195460.P14351028099195543060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 4 ^ (n + 1) : ℤ) - (3 * 2 ^ (n + 1) : ℤ) - 1

end

end A195460.P14351028099195543060

namespace A195460

/-- `2*4^(n+1)-3*2^(n+1)-1` -/
def P14351028099195543060.Spec : Prop :=
  ∀ n, P14351028099195543060.a n = A195460 (n + 1)

end A195460

/-! ## A195460.P8865239545503888614

`2^(2*(n+1)+1)-3*2^(n+1)-1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195460

/-- `2^(2*(n+1)+1)-3*2^(n+1)-1` -/
def P8865239545503888614.Spec : Prop :=
  ∀ n, P8865239545503888614.a n = A195460 (n + 1)

theorem P8865239545503888614.correct : P8865239545503888614.Spec := by
  intro n
  simp only [A195460, Nat.add_sub_cancel]

end A195460

/-! ## A195460.P15155321168483875224

`xor(A086224(n), A171472(n))`
-/

namespace A195460.P15155321168483875224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A086224 n) (A171472 n)

end

end A195460.P15155321168483875224

namespace A195460

/-- `xor(A086224(n), A171472(n))` -/
def P15155321168483875224.Spec : Prop :=
  ∀ n, P15155321168483875224.a n = A195460 (n + 1)

end A195460

/-! ## A195460.P9350526625541365732

`∑[A003945(n)*A134067(n)]`
-/

namespace A195460.P9350526625541365732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n * A134067 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195460.P9350526625541365732

namespace A195460

/-- `∑[A003945(n)*A134067(n)]` -/
def P9350526625541365732.Spec : Prop :=
  ∀ n, P9350526625541365732.a n = A195460 (n + 1)

end A195460

/-! ## A195460.P17982864048348618209

`xor(A007283(n), A188530(n+1))`
-/

namespace A195460.P17982864048348618209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007283 n) (A188530 (n + 1))

end

end A195460.P17982864048348618209

namespace A195460

/-- `xor(A007283(n), A188530(n+1))` -/
def P17982864048348618209.Spec : Prop :=
  ∀ n, P17982864048348618209.a n = A195460 (n + 1)

end A195460

/-!
# A195461: Primes in A195460.

The programs for A195461, there is no canonical definition to state claims against.
-/

/-! ## A195461.P7435329721286838669

`A195460(A264011(n+1))`
-/

namespace A195461.P7435329721286838669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195460 (A264011 (n + 1)).toNat

end

end A195461.P7435329721286838669

/-! ## A195461.P14104352214082808433

`∩[A082554(n+1), A195460(n+1)]`
-/

namespace A195461.P14104352214082808433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195461.P14104352214082808433

/-!
# A195462: 1!*2!*3!*...*n!*H(n); H(n) the n-th harmonic number.

The programs for A195462, the canonical program `A195462.P17303247732034193010` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195462 has offset 1).

The definition of A195462 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195462.P17303247732034193010

`A000178(n+1)*A001008(n+1)/A002805(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A195462

/-- `A000178(n+1)*A001008(n+1)/A002805(n+1)` -/
def P17303247732034193010.Spec : Prop :=
  ∀ n, P17303247732034193010.a n = (A195462 (n + 1) : ℚ)

end A195462

/-! ## A195462.P5725696250257036989

`∑[1/(n+1)]*∏[(n+1)!]`
-/

namespace A195462.P5725696250257036989
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A195462.P5725696250257036989

namespace A195462

/-- `∑[1/(n+1)]*∏[(n+1)!]` -/
def P5725696250257036989.Spec : Prop :=
  ∀ n, P5725696250257036989.a n = (A195462 (n + 1) : ℚ)

end A195462

/-! ## A195462.P5588213543561070832

`∑[1/(n+1)]*∏[∏[n+1]]`
-/

namespace A195462.P5588213543561070832
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A195462.P5588213543561070832

namespace A195462

/-- `∑[1/(n+1)]*∏[∏[n+1]]` -/
def P5588213543561070832.Spec : Prop :=
  ∀ n, P5588213543561070832.a n = (A195462 (n + 1) : ℚ)

end A195462

/-! ## A195462.P18015742134653952099

`A000178(n+1)+A000178(n)*A001705(n)`
-/

namespace A195462.P18015742134653952099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 (n + 1) + A000178 n * A001705 n

end

end A195462.P18015742134653952099

namespace A195462

/-- `A000178(n+1)+A000178(n)*A001705(n)` -/
def P18015742134653952099.Spec : Prop :=
  ∀ n, P18015742134653952099.a n = A195462 (n + 1)

end A195462

/-!
# A195463: a(n) = 4^(n+1) + 7.

The programs for A195463, the canonical program `A195463.P13623636874483988418` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195463 has offset 0).

The definition of A195463 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^(n+1)+7` (program `A195463.P13623636874483988418`, by `A195463.P13623636874483988418.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195463.P13623636874483988418

`4^(n+1)+7`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195463

/-- `4^(n+1)+7` -/
def P13623636874483988418.Spec : Prop :=
  ∀ n, (P13623636874483988418.a n : ℤ) = A195463 n

theorem P13623636874483988418.correct : P13623636874483988418.Spec := by
  intro n
  simp only [A195463]

end A195463

/-! ## A195463.P4125022711717401943

`∑[4*a(n-1)]` with `a(0)=11, a(1)=12`
-/

namespace A195463.P4125022711717401943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11, 12] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195463.P4125022711717401943

namespace A195463

/-- `∑[4*a(n-1)]` -/
def P4125022711717401943.Spec : Prop :=
  ∀ n, (P4125022711717401943.a n : ℤ) = A195463 n

end A195463

/-! ## A195463.P1456423844953712213

`∑[a(n-1)/(1/2)²]` with `a(0)=11, a(1)=12`
-/

namespace A195463.P1456423844953712213
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [11, 12] fun n f1 =>
  f1 (n - 1) / ((1 : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195463.P1456423844953712213

namespace A195463

/-- `∑[a(n-1)/(1/2)²]` -/
def P1456423844953712213.Spec : Prop :=
  ∀ n, P1456423844953712213.a n = (A195463 n : ℚ)

end A195463

/-! ## A195463.P12259408190770144954

`∑[floor(a(n-1))/(1-3/4)]` with `a(0)=11, a(1)=12`

`floor` is left out, it is the identity on integers.
-/

namespace A195463.P12259408190770144954
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [11, 12] fun n f1 =>
  (⌊f1 (n - 1)⌋ : ℚ) / (1 - (3 : ℚ) / 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195463.P12259408190770144954

namespace A195463

/-- `∑[floor(a(n-1))/(1-3/4)]` -/
def P12259408190770144954.Spec : Prop :=
  ∀ n, P12259408190770144954.a n = (A195463 n : ℚ)

end A195463

/-! ## A195463.P2865772843309917581

`record[A277866(n)+10]`
-/

namespace A195463.P2865772843309917581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277866 n + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195463.P2865772843309917581

namespace A195463

/-- `record[A277866(n)+10]` -/
def P2865772843309917581.Spec : Prop :=
  ∀ n, P2865772843309917581.a n = A195463 n

end A195463

/-! ## A195463.P7801891035632194863

`A168415(2*(n+1))`
-/

namespace A195463.P7801891035632194863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168415 (2 * (n + 1))

end

end A195463.P7801891035632194863

namespace A195463

/-- `A168415(2*(n+1))` -/
def P7801891035632194863.Spec : Prop :=
  ∀ n, P7801891035632194863.a n = A195463 n

end A195463

/-! ## A195463.P3787936044187152713

`A085688(6*n+8)`
-/

namespace A195463.P3787936044187152713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085688 (6 * n + 8)

end

end A195463.P3787936044187152713

namespace A195463

/-- `A085688(6*n+8)` -/
def P3787936044187152713.Spec : Prop :=
  ∀ n, P3787936044187152713.a n = A195463 n

end A195463

/-! ## A195463.P2428241546557466477

`xor(1, 2*A188161(n))`
-/

namespace A195463.P2428241546557466477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * A188161 n)

end

end A195463.P2428241546557466477

namespace A195463

/-- `xor(1, 2*A188161(n))` -/
def P2428241546557466477.Spec : Prop :=
  ∀ n, P2428241546557466477.a n = A195463 n

end A195463

/-! ## A195463.P9264911977493102038

`or(3, 4*A052539(n))`
-/

namespace A195463.P9264911977493102038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (4 * A052539 n)

end

end A195463.P9264911977493102038

namespace A195463

/-- `or(3, 4*A052539(n))` -/
def P9264911977493102038.Spec : Prop :=
  ∀ n, P9264911977493102038.a n = A195463 n

end A195463

/-! ## A195463.P14836530793311385454

`or(2, A253208(n+1)+2)`
-/

namespace A195463.P14836530793311385454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A253208 (n + 1) + 2)

end

end A195463.P14836530793311385454

namespace A195463

/-- `or(2, A253208(n+1)+2)` -/
def P14836530793311385454.Spec : Prop :=
  ∀ n, P14836530793311385454.a n = A195463 n

end A195463

/-! ## A195463.P14374393953143954930

`or(3, A140504(2*(n+1)))`
-/

namespace A195463.P14374393953143954930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A140504 (2 * (n + 1)))

end

end A195463.P14374393953143954930

namespace A195463

/-- `or(3, A140504(2*(n+1)))` -/
def P14374393953143954930.Spec : Prop :=
  ∀ n, P14374393953143954930.a n = A195463 n

end A195463

/-! ## A195463.P7370032077635339998

`record[A060547(n+1)²+7]`
-/

namespace A195463.P7370032077635339998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060547 (n + 1) ^ 2 + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195463.P7370032077635339998

namespace A195463

/-- `record[A060547(n+1)²+7]` -/
def P7370032077635339998.Spec : Prop :=
  ∀ n, P7370032077635339998.a n = A195463 n

end A195463

/-! ## A195463.P7027834157805556059

`A250737(2*(n+1))/2`
-/

namespace A195463.P7027834157805556059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250737 (2 * (n + 1)) : ℚ) / 2

end

end A195463.P7027834157805556059

namespace A195463

/-- `A250737(2*(n+1))/2` -/
def P7027834157805556059.Spec : Prop :=
  ∀ n, P7027834157805556059.a n = (A195463 n : ℚ)

end A195463

/-! ## A195463.P13191286370201818439

`Δ[∑[A000079(n)²]+7*n]`
-/

namespace A195463.P13191286370201818439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (7 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195463.P13191286370201818439

namespace A195463

/-- `Δ[∑[A000079(n)²]+7*n]` -/
def P13191286370201818439.Spec : Prop :=
  ∀ n, P13191286370201818439.a n = A195463 n

end A195463

/-! ## A195463.P10198021905062831918

`Δ[A086445(2*n+1)+6*n]`
-/

namespace A195463.P10198021905062831918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086445 (2 * n + 1) + (6 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195463.P10198021905062831918

namespace A195463

/-- `Δ[A086445(2*n+1)+6*n]` -/
def P10198021905062831918.Spec : Prop :=
  ∀ n, P10198021905062831918.a n = A195463 n

end A195463

/-! ## A195463.P8492589156980391839

`(A145071(2*(n+1))-2*(n-7))/2`
-/

namespace A195463.P8492589156980391839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145071 (2 * (n + 1)) - 2 * ((n : ℤ) - 7) : ℚ) / 2

end

end A195463.P8492589156980391839

namespace A195463

/-- `(A145071(2*(n+1))-2*(n-7))/2` -/
def P8492589156980391839.Spec : Prop :=
  ∀ n, P8492589156980391839.a n = (A195463 n : ℚ)

end A195463

/-! ## A195463.P16530787887326856808

`(A231643(2*n+1)-A185346(2*n+1))/2`
-/

namespace A195463.P16530787887326856808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231643 (2 * n + 1) - A185346 (2 * n + 1) : ℚ) / 2

end

end A195463.P16530787887326856808

namespace A195463

/-- `(A231643(2*n+1)-A185346(2*n+1))/2` -/
def P16530787887326856808.Spec : Prop :=
  ∀ n, P16530787887326856808.a n = (A195463 n : ℚ)

end A195463

/-! ## A195463.P11965155347365456520

`(A122041(2*n+1)-A173873(2*n+1))/2`
-/

namespace A195463.P11965155347365456520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122041 (2 * n + 1) - A173873 (2 * n + 1) : ℚ) / 2

end

end A195463.P11965155347365456520

namespace A195463

/-- `(A122041(2*n+1)-A173873(2*n+1))/2` -/
def P11965155347365456520.Spec : Prop :=
  ∀ n, P11965155347365456520.a n = (A195463 n : ℚ)

end A195463

/-! ## A195463.P15145219728239523086

`(A254365(2*n+1)-A168611(2*n+1))/2`
-/

namespace A195463.P15145219728239523086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254365 (2 * n + 1) - A168611 (2 * n + 1) : ℚ) / 2

end

end A195463.P15145219728239523086

namespace A195463

/-- `(A254365(2*n+1)-A168611(2*n+1))/2` -/
def P15145219728239523086.Spec : Prop :=
  ∀ n, P15145219728239523086.a n = (A195463 n : ℚ)

end A195463

/-!
# A195464: a(n) = 2^(4*n + 3) + 2*4^n + 3.

The programs for A195464, the canonical program `A195464.P16835135140776271904` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195464 has offset 0).

The definition of A195464 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(4*n+3)+2*4^n+3` (program `A195464.P16835135140776271904`, by `A195464.P16835135140776271904.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195464.P16835135140776271904

`2^(4*n+3)+2*4^n+3`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195464

/-- `2^(4*n+3)+2*4^n+3` -/
def P16835135140776271904.Spec : Prop :=
  ∀ n, (P16835135140776271904.a n : ℤ) = A195464 n

theorem P16835135140776271904.correct : P16835135140776271904.Spec := by
  intro n
  simp only [A195464]

end A195464

/-! ## A195464.P12401823193767368737

`or(2*A004171(n)², A188161(n))`
-/

namespace A195464.P12401823193767368737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A004171 n ^ 2) (A188161 n)

end

end A195464.P12401823193767368737

namespace A195464

/-- `or(2*A004171(n)², A188161(n))` -/
def P12401823193767368737.Spec : Prop :=
  ∀ n, P12401823193767368737.a n = A195464 n

end A195464

/-! ## A195464.P14114559501485205743

`or(A087289(2*n+1), A188161(n))`
-/

namespace A195464.P14114559501485205743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A087289 (2 * n + 1)) (A188161 n)

end

end A195464.P14114559501485205743

namespace A195464

/-- `or(A087289(2*n+1), A188161(n))` -/
def P14114559501485205743.Spec : Prop :=
  ∀ n, P14114559501485205743.a n = A195464 n

end A195464

/-! ## A195464.P14148732105413713332

`or(A087289(2*n+1), A283070(n))`
-/

namespace A195464.P14148732105413713332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A087289 (2 * n + 1)) (A283070 n)

end

end A195464.P14148732105413713332

namespace A195464

/-- `or(A087289(2*n+1), A283070(n))` -/
def P14148732105413713332.Spec : Prop :=
  ∀ n, P14148732105413713332.a n = A195464 n

end A195464

/-! ## A195464.P6365262672419586483

`or(A000079(A004767(n)), A188161(n))`
-/

namespace A195464.P6365262672419586483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 (A004767 n).toNat) (A188161 n)

end

end A195464.P6365262672419586483

namespace A195464

/-- `or(A000079(A004767(n)), A188161(n))` -/
def P6365262672419586483.Spec : Prop :=
  ∀ n, P6365262672419586483.a n = A195464 n

end A195464

/-! ## A195464.P16391481017886596585

`or(A004171(A005408(n)), A188161(n))`
-/

namespace A195464.P16391481017886596585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004171 (A005408 n).toNat) (A188161 n)

end

end A195464.P16391481017886596585

namespace A195464

/-- `or(A004171(A005408(n)), A188161(n))` -/
def P16391481017886596585.Spec : Prop :=
  ∀ n, P16391481017886596585.a n = A195464 n

end A195464

/-! ## A195464.P16162946603105887188

`or(A034583(A017113(n)), A188161(n))`
-/

namespace A195464.P16162946603105887188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034583 (A017113 n).toNat) (A188161 n)

end

end A195464.P16162946603105887188

namespace A195464

/-- `or(A034583(A017113(n)), A188161(n))` -/
def P16162946603105887188.Spec : Prop :=
  ∀ n, P16162946603105887188.a n = A195464 n

end A195464

/-! ## A195464.P4351396954736421440

`or(A048578(A016825(n)), A188161(n))`
-/

namespace A195464.P4351396954736421440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048578 (A016825 n).toNat) (A188161 n)

end

end A195464.P4351396954736421440

namespace A195464

/-- `or(A048578(A016825(n)), A188161(n))` -/
def P4351396954736421440.Spec : Prop :=
  ∀ n, P4351396954736421440.a n = A195464 n

end A195464

/-!
# A195466: Denominator of the coefficient of x^(2n) in expansion of 1/x^4 - 1/(3*x^2) - 1/(x^3*arctanh(x)).

The programs for A195466, there is no canonical definition to state claims against.
-/

/-! ## A195466.P933994037346069692

`A171080(A154701(n+2))`
-/

namespace A195466.P933994037346069692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171080 (A154701 (n + 2)).toNat

end

end A195466.P933994037346069692

/-! ## A195466.P721680394722721165

`A171080(A065666(n+1)+1)`
-/

namespace A195466.P721680394722721165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171080 (A065666 (n + 1) + 1).toNat

end

end A195466.P721680394722721165

/-! ## A195466.P10887745069014712239

`A171080(A303164(n+1)+2)`
-/

namespace A195466.P10887745069014712239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171080 (A303164 (n + 1) + 2).toNat

end

end A195466.P10887745069014712239

/-!
# A195470: Number of numbers k with 0 <= k < n such that 2^k + 1 is multiple of n.

The programs for A195470, there is no canonical definition to state claims against.
-/

/-! ## A195470.P1896776869728544869

`and(A318324(A135318(n)), A318622(n+1))`
-/

namespace A195470.P1896776869728544869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A318324 (A135318 n).toNat) (A318622 (n + 1))

end

end A195470.P1896776869728544869

/-! ## A195470.P14868106362842159646

`val(A338808(3*n+5)+n, 4)`
-/

namespace A195470.P14868106362842159646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A338808 (3 * n + 5) + (n : ℤ)).toNat 4

end

end A195470.P14868106362842159646

/-! ## A195470.P5532305584789242515

`val(A256082(2*n+1), A050721(A339399(n+1)))`
-/

namespace A195470.P5532305584789242515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A256082 (2 * n + 1)).toNat (A050721 (A339399 (n + 1)).toNat).toNat

end

end A195470.P5532305584789242515

/-! ## A195470.P9221124377012092720

`C(A036586(A383515(3*n+1)), ∑{e}[n+1, #])`
-/

namespace A195470.P9221124377012092720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A036586 (A383515 (3 * n + 1)).toNat).toNat (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A195470.P9221124377012092720

/-! ## A195470.P12527654014428440584

`A160804(A310718(n))`
-/

namespace A195470.P12527654014428440584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160804 (A310718 n).toNat

end

end A195470.P12527654014428440584

/-!
# A195499: Denominators a(n) of Pythagorean approximations b(n)/a(n) to sqrt(3).

The programs for A195499, the canonical program `A195499.P4836930861469563492` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195499 has offset 1).

The definition of A195499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195499.P2932507735591500366

`ogf((3-x)/(1-3x-3x^2+x^3))`
-/

namespace A195499.P2932507735591500366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1] [1, -3, -3, 1] n

end

end A195499.P2932507735591500366

namespace A195499

/-- `ogf((3-x)/(1-3x-3x^2+x^3))` -/
def P2932507735591500366.Spec : Prop :=
  ∀ n, P2932507735591500366.a n = A195499 (n + 1)

end A195499

/-! ## A195499.P4836930861469563492

`4*xor(1, a(n-1))-a(n-2)` with `a(0)=3, a(1)=8`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195499

/-- `4*xor(1, a(n-1))-a(n-2)` -/
def P4836930861469563492.Spec : Prop :=
  ∀ n, P4836930861469563492.a n = A195499 (n + 1)

theorem P4836930861469563492.correct : P4836930861469563492.Spec := by
  intro n
  simp only [A195499, Nat.add_sub_cancel]

end A195499

/-! ## A195499.P15150984622401974513

`3*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=3, a(1)=8, a(2)=33`
-/

namespace A195499.P15150984622401974513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 8, 33] fun n a =>
  3 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A195499.P15150984622401974513

namespace A195499

/-- `3*(a(n-1)+a(n-2))-a(n-3)` -/
def P15150984622401974513.Spec : Prop :=
  ∀ n, P15150984622401974513.a n = A195499 (n + 1)

end A195499

/-! ## A195499.P15163947473307199274

`A120892(n+2)`
-/

namespace A195499.P15163947473307199274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120892 (n + 2)

end

end A195499.P15163947473307199274

namespace A195499

/-- `A120892(n+2)` -/
def P15163947473307199274.Spec : Prop :=
  ∀ n, P15163947473307199274.a n = A195499 (n + 1)

end A195499

/-! ## A195499.P12099468363657537075

`xor(1, A006253(n+1))`
-/

namespace A195499.P12099468363657537075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A006253 (n + 1))

end

end A195499.P12099468363657537075

namespace A195499

/-- `xor(1, A006253(n+1))` -/
def P12099468363657537075.Spec : Prop :=
  ∀ n, P12099468363657537075.a n = A195499 (n + 1)

end A195499

/-! ## A195499.P1594447137622078823

`A217233(n)+A001075(n+1)`
-/

namespace A195499.P1594447137622078823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217233 n + A001075 (n + 1)

end

end A195499.P1594447137622078823

namespace A195499

/-- `A217233(n)+A001075(n+1)` -/
def P1594447137622078823.Spec : Prop :=
  ∀ n, P1594447137622078823.a n = A195499 (n + 1)

end A195499

/-! ## A195499.P1140548743228105583

`A001353(n+1)+2*A006253(n)`
-/

namespace A195499.P1140548743228105583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (n + 1) + 2 * A006253 n

end

end A195499.P1140548743228105583

namespace A195499

/-- `A001353(n+1)+2*A006253(n)` -/
def P1140548743228105583.Spec : Prop :=
  ∀ n, P1140548743228105583.a n = A195499 (n + 1)

end A195499

/-! ## A195499.P6150276979788263964

`(A083336(n)+A048788(n))*A048788(n+1)`
-/

namespace A195499.P6150276979788263964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A083336 n + A048788 n) * A048788 (n + 1)

end

end A195499.P6150276979788263964

namespace A195499

/-- `(A083336(n)+A048788(n))*A048788(n+1)` -/
def P6150276979788263964.Spec : Prop :=
  ∀ n, P6150276979788263964.a n = A195499 (n + 1)

end A195499

/-! ## A195499.P9056069527492030201

`A109437(n+1)+A109437(n+1)+A006253(n)`
-/

namespace A195499.P9056069527492030201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109437 (n + 1) + (A109437 (n + 1) + A006253 n)

end

end A195499.P9056069527492030201

namespace A195499

/-- `A109437(n+1)+A109437(n+1)+A006253(n)` -/
def P9056069527492030201.Spec : Prop :=
  ∀ n, P9056069527492030201.a n = A195499 (n + 1)

end A195499

/-! ## A195499.P3536467133502045679

`(A083336(n+1)-A002530(n))*A002530(n+1)`
-/

namespace A195499.P3536467133502045679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A083336 (n + 1) - A002530 n) * A002530 (n + 1)

end

end A195499.P3536467133502045679

namespace A195499

/-- `(A083336(n+1)-A002530(n))*A002530(n+1)` -/
def P3536467133502045679.Spec : Prop :=
  ∀ n, P3536467133502045679.a n = A195499 (n + 1)

end A195499

/-! ## A195499.P4762256527950578105

`A192377(n+2)+A192377(n+2)-A192376(n+1)`
-/

namespace A195499.P4762256527950578105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192377 (n + 2) + (A192377 (n + 2) - A192376 (n + 1))

end

end A195499.P4762256527950578105

namespace A195499

/-- `A192377(n+2)+A192377(n+2)-A192376(n+1)` -/
def P4762256527950578105.Spec : Prop :=
  ∀ n, P4762256527950578105.a n = A195499 (n + 1)

end A195499

/-! ## A195499.P13011042333655534600

`Δ[Δ[A006253(n)/2]]`
-/

namespace A195499.P13011042333655534600
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006253 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195499.P13011042333655534600

namespace A195499

/-- `Δ[Δ[A006253(n)/2]]` -/
def P13011042333655534600.Spec : Prop :=
  ∀ n, P13011042333655534600.a n = (A195499 (n + 1) : ℚ)

end A195499

/-! ## A195499.P3733372259379049853

`Δ[A217233(n+1)/2]`
-/

namespace A195499.P3733372259379049853
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217233 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195499.P3733372259379049853

namespace A195499

/-- `Δ[A217233(n+1)/2]` -/
def P3733372259379049853.Spec : Prop :=
  ∀ n, P3733372259379049853.a n = (A195499 (n + 1) : ℚ)

end A195499

/-! ## A195499.P15693331471965081335

`Δ[A105968(n)]-A001353(n)`
-/

namespace A195499.P15693331471965081335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001353 n

end

end A195499.P15693331471965081335

namespace A195499

/-- `Δ[A105968(n)]-A001353(n)` -/
def P15693331471965081335.Spec : Prop :=
  ∀ n, P15693331471965081335.a n = A195499 (n + 1)

end A195499

/-! ## A195499.P10178693640600481690

`A105968(n+1)-A120893(n+1)`
-/

namespace A195499.P10178693640600481690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105968 (n + 1) - A120893 (n + 1)

end

end A195499.P10178693640600481690

namespace A195499

/-- `A105968(n+1)-A120893(n+1)` -/
def P10178693640600481690.Spec : Prop :=
  ∀ n, P10178693640600481690.a n = A195499 (n + 1)

end A195499

/-! ## A195499.P1983100009081578944

`A001353(n+2)-A217233(n+1)`
-/

namespace A195499.P1983100009081578944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (n + 2) - A217233 (n + 1)

end

end A195499.P1983100009081578944

namespace A195499

/-- `A001353(n+2)-A217233(n+1)` -/
def P1983100009081578944.Spec : Prop :=
  ∀ n, P1983100009081578944.a n = A195499 (n + 1)

end A195499

/-! ## A195499.P5523699689902044896

`A105968(n+1)-(A105968(n)+A001353(n))`
-/

namespace A195499.P5523699689902044896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105968 (n + 1) - (A105968 n + A001353 n)

end

end A195499.P5523699689902044896

namespace A195499

/-- `A105968(n+1)-(A105968(n)+A001353(n))` -/
def P5523699689902044896.Spec : Prop :=
  ∀ n, P5523699689902044896.a n = A195499 (n + 1)

end A195499

/-! ## A195499.P2602890834156747688

`A105968(n+1)+A006253(n)-A001075(n+1)`
-/

namespace A195499.P2602890834156747688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105968 (n + 1) + (A006253 n - A001075 (n + 1))

end

end A195499.P2602890834156747688

namespace A195499

/-- `A105968(n+1)+A006253(n)-A001075(n+1)` -/
def P2602890834156747688.Spec : Prop :=
  ∀ n, P2602890834156747688.a n = A195499 (n + 1)

end A195499

/-! ## A195499.P17685535311256970090

`A195531(n+1)-(A120893(n+1)+A001353(n+1))`
-/

namespace A195499.P17685535311256970090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195531 (n + 1) - (A120893 (n + 1) + A001353 (n + 1))

end

end A195499.P17685535311256970090

namespace A195499

/-- `A195531(n+1)-(A120893(n+1)+A001353(n+1))` -/
def P17685535311256970090.Spec : Prop :=
  ∀ n, P17685535311256970090.a n = A195499 (n + 1)

end A195499

