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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
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
# A037200: Number of vowels in n (in German).

The programs for A037200, there is no canonical definition to state claims against.
-/

/-! ## A037200.P10575359389962012295

`A007208(n)-A037199(n)`
-/

namespace A037200.P10575359389962012295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007208 n - A037199 n

end

end A037200.P10575359389962012295

/-! ## A037200.P6351215334187683840

`A231813(A265562(A074400(n+1)))`
-/

namespace A037200.P6351215334187683840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 (A265562 (A074400 (n + 1)).toNat).toNat

end

end A037200.P6351215334187683840

/-!
# A037201: Differences between consecutive primes (A001223) but with repeats omitted.

The programs for A037201, the canonical program `A037201.P6658727426378706638` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037201 has offset 1).

The definition of A037201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037201.P12322486120248198525

`A001223(A333214(n+1))`
-/

namespace A037201.P12322486120248198525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A333214 (n + 1)).toNat

end

end A037201.P12322486120248198525

namespace A037201

/-- `A001223(A333214(n+1))` -/
def P12322486120248198525.Spec : Prop :=
  ∀ n, P12322486120248198525.a n = A037201 (n + 1)

end A037201

/-! ## A037201.P17771956789767846141

`A001223(∑[A333254(n+1)])`
-/

namespace A037201.P17771956789767846141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A037201.P17771956789767846141

namespace A037201

/-- `A001223(∑[A333254(n+1)])` -/
def P17771956789767846141.Spec : Prop :=
  ∀ n, P17771956789767846141.a n = A037201 (n + 1)

end A037201

/-! ## A037201.P971692742943165465

`A001223(comp[A064113(n+1)]+1)`
-/

namespace A037201.P971692742943165465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064113 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A037201.P971692742943165465

namespace A037201

/-- `A001223(comp[A064113(n+1)]+1)` -/
def P971692742943165465.Spec : Prop :=
  ∀ n, P971692742943165465.a n = A037201 (n + 1)

end A037201

/-! ## A037201.P6658727426378706638

`A001223(eq[1, A079054(n+2)²]+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A037201

/-- `A001223(eq[1, A079054(n+2)²]+1)` -/
def P6658727426378706638.Spec : Prop :=
  ∀ n, P6658727426378706638.a n = A037201 (n + 1)

theorem P6658727426378706638.correct : P6658727426378706638.Spec := by
  intro n
  simp only [A037201, Nat.add_sub_cancel]

end A037201

/-! ## A037201.P17311385526442644784

`A001223(record[n*A079054(n+2)²]+1)`
-/

namespace A037201.P17311385526442644784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A079054 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A037201.P17311385526442644784

namespace A037201

/-- `A001223(record[n*A079054(n+2)²]+1)` -/
def P17311385526442644784.Spec : Prop :=
  ∀ n, P17311385526442644784.a n = A037201 (n + 1)

end A037201

/-! ## A037201.P17140482414001478519

`A001223(eq[1, gcd(n+1, A079054(n+2))]+1)`
-/

namespace A037201.P17140482414001478519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A079054 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A037201.P17140482414001478519

namespace A037201

/-- `A001223(eq[1, gcd(n+1, A079054(n+2))]+1)` -/
def P17140482414001478519.Spec : Prop :=
  ∀ n, P17140482414001478519.a n = A037201 (n + 1)

end A037201

/-! ## A037201.P7654908372849747669

`A001223(eq[1, A079054(n+2)*A079054(n+2)]+1)`
-/

namespace A037201.P7654908372849747669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079054 (n + 2) * A079054 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A037201.P7654908372849747669

namespace A037201

/-- `A001223(eq[1, A079054(n+2)*A079054(n+2)]+1)` -/
def P7654908372849747669.Spec : Prop :=
  ∀ n, P7654908372849747669.a n = A037201 (n + 1)

theorem P7654908372849747669.correct : P7654908372849747669.Spec := by
  intro n
  simp only [A037201, Nat.add_sub_cancel, A037201.P7654908372849747669.f1, A037201.P7654908372849747669.f2, A037201.P7654908372849747669.a, A037201.P6658727426378706638.f1, A037201.P6658727426378706638.f2, A037201.P6658727426378706638.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A037201

/-! ## A037201.P13443866017591538407

`A001223(lt[0, A320146(n+2)]+1)`
-/

namespace A037201.P13443866017591538407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320146 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A037201.P13443866017591538407

namespace A037201

/-- `A001223(lt[0, A320146(n+2)]+1)` -/
def P13443866017591538407.Spec : Prop :=
  ∀ n, P13443866017591538407.a n = A037201 (n + 1)

end A037201

/-! ## A037201.P15619915342589526834

`1+A046933(comp[A064113(n+1)-1]+1)`
-/

namespace A037201.P15619915342589526834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064113 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A046933 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A037201.P15619915342589526834

namespace A037201

/-- `1+A046933(comp[A064113(n+1)-1]+1)` -/
def P15619915342589526834.Spec : Prop :=
  ∀ n, P15619915342589526834.a n = A037201 (n + 1)

end A037201

/-! ## A037201.P16031699442493891930

`A054541(∑[A333254(n+1)]+1)`
-/

namespace A037201.P16031699442493891930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A037201.P16031699442493891930

namespace A037201

/-- `A054541(∑[A333254(n+1)]+1)` -/
def P16031699442493891930.Spec : Prop :=
  ∀ n, P16031699442493891930.a n = A037201 (n + 1)

end A037201

/-! ## A037201.P4225331121174209541

`A054541(lt[0, A320146(n+2)]+2)`
-/

namespace A037201.P4225331121174209541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320146 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A037201.P4225331121174209541

namespace A037201

/-- `A054541(lt[0, A320146(n+2)]+2)` -/
def P4225331121174209541.Spec : Prop :=
  ∀ n, P4225331121174209541.a n = A037201 (n + 1)

end A037201

/-! ## A037201.P1157758830550869907

`A001223(lt[A117078(n+1), A182986(n+1)])`
-/

namespace A037201.P1157758830550869907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A037201.P1157758830550869907

namespace A037201

/-- `A001223(lt[A117078(n+1), A182986(n+1)])` -/
def P1157758830550869907.Spec : Prop :=
  ∀ n, P1157758830550869907.a n = A037201 (n + 1)

end A037201

/-! ## A037201.P12019778514728189677

`A096501(A178943(n+2))`
-/

namespace A037201.P12019778514728189677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (A178943 (n + 2)).toNat

end

end A037201.P12019778514728189677

namespace A037201

/-- `A096501(A178943(n+2))` -/
def P12019778514728189677.Spec : Prop :=
  ∀ n, P12019778514728189677.a n = A037201 (n + 1)

end A037201

/-! ## A037201.P12371090269129439413

`A013632(A178943(n+1))`
-/

namespace A037201.P12371090269129439413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A178943 (n + 1)).toNat

end

end A037201.P12371090269129439413

namespace A037201

/-- `A013632(A178943(n+1))` -/
def P12371090269129439413.Spec : Prop :=
  ∀ n, P12371090269129439413.a n = A037201 (n + 1)

end A037201

/-!
# A037202: Number of lines in Pratt certificate for n-th prime.

The programs for A037202, there is no canonical definition to state claims against.
-/

/-! ## A037202.P243896293513794728

`A034697(A000040(n+1))`
-/

namespace A037202.P243896293513794728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034697 (A000040 (n + 1)).toNat

end

end A037202.P243896293513794728

/-! ## A037202.P8460912563223720366

`A034697(A006005(n+1))`
-/

namespace A037202.P8460912563223720366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034697 (A006005 (n + 1)).toNat

end

end A037202.P8460912563223720366

/-! ## A037202.P15933641079180481341

`A034697(A008578(n+2))`
-/

namespace A037202.P15933641079180481341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034697 (A008578 (n + 2)).toNat

end

end A037202.P15933641079180481341

/-! ## A037202.P5320826798225875464

`A034697(A075643(n+2))`
-/

namespace A037202.P5320826798225875464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034697 (A075643 (n + 2)).toNat

end

end A037202.P5320826798225875464

/-! ## A037202.P12710628199373718267

`A034697(A182986(n+2))`
-/

namespace A037202.P12710628199373718267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034697 (A182986 (n + 2)).toNat

end

end A037202.P12710628199373718267

/-! ## A037202.P15887184911158898271

`A034697(record[A006530(n+2)])`
-/

namespace A037202.P15887184911158898271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034697 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037202.P15887184911158898271

/-! ## A037202.P13910289814288381438

`A034697(record[A014963(n+2)])`
-/

namespace A037202.P13910289814288381438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034697 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037202.P13910289814288381438

/-! ## A037202.P11965264623469464286

`A034697(record[A020639(n+2)])`
-/

namespace A037202.P11965264623469464286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034697 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037202.P11965264623469464286

/-! ## A037202.P7573841619517806848

`floor(2/acot(A130790(n+1)))`
-/

namespace A037202.P7573841619517806848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (A130790 (n + 1) : ℝ)⌋

end

end A037202.P7573841619517806848

/-! ## A037202.P17950477814077803581

`A000007(n)+2*A130790(n+1)`
-/

namespace A037202.P17950477814077803581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A130790 (n + 1)

end

end A037202.P17950477814077803581

/-! ## A037202.P17981848571548820856

`A020639(a(n-1))*A130790(n+1)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A037202.P17981848571548820856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  A020639 (a (n - 1)).toNat * A130790 (n + 1)

end

end A037202.P17981848571548820856

/-! ## A037202.P15299721174064849233

`A004277(A130790(n+1)*A178334(n))`
-/

namespace A037202.P15299721174064849233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A130790 (n + 1) * A178334 n).toNat

end

end A037202.P15299721174064849233

/-! ## A037202.P15750079632638748545

`A004277(lcm(A130790(n+1), A178334(n)))`
-/

namespace A037202.P15750079632638748545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (Int.lcm (A130790 (n + 1)) (A178334 n))

end

end A037202.P15750079632638748545

/-! ## A037202.P7347528918620975334

`A000035(A008458(n))+2*A130790(n+1)`
-/

namespace A037202.P7347528918620975334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A008458 n).toNat + 2 * A130790 (n + 1)

end

end A037202.P7347528918620975334

/-! ## A037202.P8729832383102862329

`A010054(A000124(n))+2*A130790(n+1)`
-/

namespace A037202.P8729832383102862329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A000124 n).toNat + 2 * A130790 (n + 1)

end

end A037202.P8729832383102862329

/-! ## A037202.P15514894429781263947

`A004277(A130790(n+1)/(2-A178334(n)))`
-/

namespace A037202.P15514894429781263947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.roundAway ((A130790 (n + 1) : ℚ) / (2 - A178334 n : ℚ))).toNat

end

end A037202.P15514894429781263947

/-! ## A037202.P3876051322197927605

`A000035(A000010(n+2))+2*A130790(n+1)`
-/

namespace A037202.P3876051322197927605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000010 (n + 2)).toNat + 2 * A130790 (n + 1)

end

end A037202.P3876051322197927605

/-! ## A037202.P12722264485890552641

`A130790(n+1)+gcd(A130779(n), A130790(n+1))`
-/

namespace A037202.P12722264485890552641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130790 (n + 1) + (Int.gcd (A130779 n) (A130790 (n + 1)) : ℤ)

end

end A037202.P12722264485890552641

/-! ## A037202.P9363524806994956687

`A004277(A004277(n)*A130790(n+1))/A004277(n)`
-/

namespace A037202.P9363524806994956687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (A004277 n * A130790 (n + 1)).toNat : ℚ) / (A004277 n : ℚ)

end

end A037202.P9363524806994956687

/-!
# A037203: Number of terms by which A001223 lags behind A037201.

The programs for A037203, the canonical program `A037203.P613243773187998549` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037203 has offset 0).

The definition of A037203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037203.P1256236180076905418

`∑[char[A064113(n+1)]]`
-/

namespace A037203.P1256236180076905418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064113 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037203.P1256236180076905418

namespace A037203

/-- `∑[char[A064113(n+1)]]` -/
def P1256236180076905418.Spec : Prop :=
  ∀ n, (P1256236180076905418.a n : ℤ) = A037203 n

end A037203

/-! ## A037203.P17970271032176596831

`∑[char[A066875(n+1)-1]]`
-/

namespace A037203.P17970271032176596831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066875 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037203.P17970271032176596831

namespace A037203

/-- `∑[char[A066875(n+1)-1]]` -/
def P17970271032176596831.Spec : Prop :=
  ∀ n, (P17970271032176596831.a n : ℤ) = A037203 n

end A037203

/-! ## A037203.P9026015299525976084

`∑[char[A066491(2*n+1)]]`
-/

namespace A037203.P9026015299525976084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066491 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037203.P9026015299525976084

namespace A037203

/-- `∑[char[A066491(2*n+1)]]` -/
def P9026015299525976084.Spec : Prop :=
  ∀ n, (P9026015299525976084.a n : ℤ) = A037203 n

end A037203

/-! ## A037203.P17072009901881295239

`a(n-1)+1-A131695(n)` with `a(0)=0`
-/

namespace A037203.P17072009901881295239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (1 - A131695 n)

end

end A037203.P17072009901881295239

namespace A037203

/-- `a(n-1)+1-A131695(n)` -/
def P17072009901881295239.Spec : Prop :=
  ∀ n, P17072009901881295239.a n = A037203 n

end A037203

/-! ## A037203.P613243773187998549

`∑[val(A036689(n+1), A048448(n+1))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A037203

/-- `∑[val(A036689(n+1), A048448(n+1))]` -/
def P613243773187998549.Spec : Prop :=
  ∀ n, (P613243773187998549.a n : ℤ) = A037203 n

theorem P613243773187998549.correct : P613243773187998549.Spec := by
  intro n
  simp only [A037203]

end A037203

/-! ## A037203.P11724883703263785986

`∑[C(A117078(n+1), A008578(n+1))]`
-/

namespace A037203.P11724883703263785986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A117078 (n + 1)).toNat (A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037203.P11724883703263785986

namespace A037203

/-- `∑[C(A117078(n+1), A008578(n+1))]` -/
def P11724883703263785986.Spec : Prop :=
  ∀ n, (P11724883703263785986.a n : ℤ) = A037203 n

end A037203

/-! ## A037203.P4864841505380836360

`∑[val(A048448(n+1), A008864(n+1)-1)]`
-/

namespace A037203.P4864841505380836360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A048448 (n + 1)).toNat (A008864 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037203.P4864841505380836360

namespace A037203

/-- `∑[val(A048448(n+1), A008864(n+1)-1)]` -/
def P4864841505380836360.Spec : Prop :=
  ∀ n, (P4864841505380836360.a n : ℤ) = A037203 n

end A037203

/-! ## A037203.P5749303699003776386

`∑[char[A023443(A066875(n+1))]]`
-/

namespace A037203.P5749303699003776386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A066875 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037203.P5749303699003776386

namespace A037203

/-- `∑[char[A023443(A066875(n+1))]]` -/
def P5749303699003776386.Spec : Prop :=
  ∀ n, (P5749303699003776386.a n : ℤ) = A037203 n

end A037203

/-! ## A037203.P1886315736853050821

`∑[A218173(Δ[A054541(n+1)]²)]`
-/

namespace A037203.P1886315736853050821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218173 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037203.P1886315736853050821

namespace A037203

/-- `∑[A218173(Δ[A054541(n+1)]²)]` -/
def P1886315736853050821.Spec : Prop :=
  ∀ n, P1886315736853050821.a n = A037203 n

end A037203

/-! ## A037203.P14663606696901607116

`∑[A335435(A034856(n+1))%2]`
-/

namespace A037203.P14663606696901607116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335435 (A034856 (n + 1)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037203.P14663606696901607116

namespace A037203

/-- `∑[A335435(A034856(n+1))%2]` -/
def P14663606696901607116.Spec : Prop :=
  ∀ n, P14663606696901607116.a n = A037203 n

end A037203

/-!
# A037204: Numbers that occur in runs of length 1 in A037203.

The programs for A037204, there is no canonical definition to state claims against.
-/

/-! ## A037204.P1021498717816577722

`eq[1, A333216(n+1)]`
-/

namespace A037204.P1021498717816577722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333216 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037204.P1021498717816577722

/-! ## A037204.P7110170215813825230

`eq[1, A145024(n+1)]`
-/

namespace A037204.P7110170215813825230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145024 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037204.P7110170215813825230

/-! ## A037204.P3459628468412774997

`eq[0, A079054(A064113(n+1))]`
-/

namespace A037204.P3459628468412774997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079054 (A064113 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037204.P3459628468412774997

/-! ## A037204.P17104823942387915517

`eq[4, A031217(A064113(n+1)-1)]`
-/

namespace A037204.P17104823942387915517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031217 (A064113 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037204.P17104823942387915517

/-! ## A037204.P10073822282263705634

`eq[A054541(A064113(n+1)), A117217(n+1)]`
-/

namespace A037204.P10073822282263705634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A064113 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117217 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037204.P10073822282263705634

/-!
# A037205: a(n) = (n+1)^n - 1.

The programs for A037205, the canonical program `A037205.P5515129768780928026` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037205 has offset 0).

The definition of A037205 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^n-1` (program `A037205.P5515129768780928026`, by `A037205.P5515129768780928026.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037205.P5515129768780928026

`(n+1)^n-1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037205

/-- `(n+1)^n-1` -/
def P5515129768780928026.Spec : Prop :=
  ∀ n, P5515129768780928026.a n = A037205 n

theorem P5515129768780928026.correct : P5515129768780928026.Spec := by
  intro n
  simp only [A037205]

end A037205

/-! ## A037205.P11765285400633410988

`A060072(n+1)*n`
-/

namespace A037205.P11765285400633410988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060072 (n + 1) * (n : ℤ)

end

end A037205.P11765285400633410988

namespace A037205

/-- `A060072(n+1)*n` -/
def P11765285400633410988.Spec : Prop :=
  ∀ n, P11765285400633410988.a n = A037205 n

end A037205

/-! ## A037205.P11418631357624205912

`abs(xor(1, (-(n+1))^n))`
-/

namespace A037205.P11418631357624205912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 ((-(n + 1 : ℤ)) ^ n)|

end

end A037205.P11418631357624205912

namespace A037205

/-- `abs(xor(1, (-(n+1))^n))` -/
def P11418631357624205912.Spec : Prop :=
  ∀ n, P11418631357624205912.a n = A037205 n

end A037205

/-! ## A037205.P18433384478958295966

`xor(-1, -(n+1)^n)`
-/

namespace A037205.P18433384478958295966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-((n + 1) ^ n : ℤ))

end

end A037205.P18433384478958295966

namespace A037205

/-- `xor(-1, -(n+1)^n)` -/
def P18433384478958295966.Spec : Prop :=
  ∀ n, P18433384478958295966.a n = A037205 n

end A037205

/-! ## A037205.P4571637311633047177

`abs(1-(-xor(n, -1))^n)`
-/

namespace A037205.P4571637311633047177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (-Int.xor (n : ℤ) (-1)) ^ n|

end

end A037205.P4571637311633047177

namespace A037205

/-- `abs(1-(-xor(n, -1))^n)` -/
def P4571637311633047177.Spec : Prop :=
  ∀ n, P4571637311633047177.a n = A037205 n

end A037205

/-! ## A037205.P11967238827579480599

`record[(n-1)^abs(2-n)-1]`
-/

namespace A037205.P11967238827579480599
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) ^ (|2 - (n : ℤ)| : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037205.P11967238827579480599

namespace A037205

/-- `record[(n-1)^abs(2-n)-1]` -/
def P11967238827579480599.Spec : Prop :=
  ∀ n, P11967238827579480599.a n = (A037205 n : ℚ)

end A037205

/-! ## A037205.P932404675984508519

`lcm(n, (-xor(n, -1))^n-1)`
-/

namespace A037205.P932404675984508519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((-Int.xor (n : ℤ) (-1)) ^ n - 1)

end

end A037205.P932404675984508519

namespace A037205

/-- `lcm(n, (-xor(n, -1))^n-1)` -/
def P932404675984508519.Spec : Prop :=
  ∀ n, (P932404675984508519.a n : ℤ) = A037205 n

end A037205

/-! ## A037205.P4574110295827691962

`abs(1-A000169(n+1))`
-/

namespace A037205.P4574110295827691962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A000169 (n + 1)|

end

end A037205.P4574110295827691962

namespace A037205

/-- `abs(1-A000169(n+1))` -/
def P4574110295827691962.Spec : Prop :=
  ∀ n, P4574110295827691962.a n = A037205 n

end A037205

/-! ## A037205.P3792129487222385509

`abs(2-A124923(n+1))`
-/

namespace A037205.P3792129487222385509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A124923 (n + 1)|

end

end A037205.P3792129487222385509

namespace A037205

/-- `abs(2-A124923(n+1))` -/
def P3792129487222385509.Spec : Prop :=
  ∀ n, P3792129487222385509.a n = A037205 n

end A037205

/-! ## A037205.P12053646601370769327

`(A093460(n+1)-1)/2`
-/

namespace A037205.P12053646601370769327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093460 (n + 1) - 1 : ℚ) / 2

end

end A037205.P12053646601370769327

namespace A037205

/-- `(A093460(n+1)-1)/2` -/
def P12053646601370769327.Spec : Prop :=
  ∀ n, P12053646601370769327.a n = (A037205 n : ℚ)

theorem P12053646601370769327.correct : P12053646601370769327.Spec := by
  intro n
  simp only [A037205, Nat.add_sub_cancel, A037205.P12053646601370769327.a, A037205.P5515129768780928026.a, A093460, A093460.P8985438407633140045.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037205

/-!
# A037207: Smallest natural number k such that periodic part of 1/k is n, or 0 if no such k exists.

The programs for A037207, there is no canonical definition to state claims against.
-/

/-! ## A037207.P2920599612643693946

`sqrt(A037211(n))`
-/

namespace A037207.P2920599612643693946
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A037211 n : ℝ)

end

end A037207.P2920599612643693946

/-! ## A037207.P15563010755018959883

`root(A037211(n), A028326(∑[n]))`
-/

namespace A037207.P15563010755018959883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A037211 n : ℝ) ^ (1 / (A028326 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ))

end

end A037207.P15563010755018959883

/-! ## A037207.P7232478489852954651

`root(A037211(n), p?[A043559(n)])`
-/

namespace A037207.P7232478489852954651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043559 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A037211 n : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A037207.P7232478489852954651

/-! ## A037207.P2203188145808325551

`root(A037211(n), gcd(2, A008574(n)))`
-/

namespace A037207.P2203188145808325551
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A037211 n : ℝ) ^ (1 / (Int.gcd 2 (A008574 n) : ℝ))

end

end A037207.P2203188145808325551

/-!
# A037208: Numbers k such that q^2 < p, where p=nextprime(k), q=nextprime(square root of k).

The programs for A037208, the canonical program `A037208.P757796877470365880` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037208 has offset 1).

The definition of A037208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037208.P16511046807275343380

`eq[2, A062362(A000015(n+1))]`
-/

namespace A037208.P16511046807275343380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062362 (A000015 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037208.P16511046807275343380

namespace A037208

/-- `eq[2, A062362(A000015(n+1))]` -/
def P16511046807275343380.Spec : Prop :=
  ∀ n, (P16511046807275343380.a n : ℤ) = A037208 (n + 1)

end A037208

/-! ## A037208.P757796877470365880

`lt[A137735(n), A056813(A151800(n))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A037208

/-- `lt[A137735(n), A056813(A151800(n))]` -/
def P757796877470365880.Spec : Prop :=
  ∀ n, (P757796877470365880.a n : ℤ) = A037208 (n + 1)

theorem P757796877470365880.correct : P757796877470365880.Spec := by
  intro n
  simp only [A037208, Nat.add_sub_cancel]

end A037208

/-! ## A037208.P11739976146303133868

`eq[A000196(n), A300717(A000015(n+1))]`
-/

namespace A037208.P11739976146303133868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300717 (A000015 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037208.P11739976146303133868

namespace A037208

/-- `eq[A000196(n), A300717(A000015(n+1))]` -/
def P11739976146303133868.Spec : Prop :=
  ∀ n, (P11739976146303133868.a n : ℤ) = A037208 (n + 1)

end A037208

/-! ## A037208.P8393406156931535074

`lt[A230775(n+1)²-A159477(n+1), 1]`
-/

namespace A037208.P8393406156931535074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (n + 1) ^ 2 - A159477 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037208.P8393406156931535074

namespace A037208

/-- `lt[A230775(n+1)²-A159477(n+1), 1]` -/
def P8393406156931535074.Spec : Prop :=
  ∀ n, (P8393406156931535074.a n : ℤ) = A037208 (n + 1)

end A037208

/-!
# A037211: Smallest natural number k such that periodic part of 1/sqrt(k) is n (or 0 if no such number exists).

The programs for A037211, there is no canonical definition to state claims against.
-/

/-! ## A037211.P5304624376392438815

`A037207(n)²`
-/

namespace A037211.P5304624376392438815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037207 n ^ 2

end

end A037211.P5304624376392438815

/-! ## A037211.P17917166122057778523

`A037207(n)*A037207(A333659(n))`
-/

namespace A037211.P17917166122057778523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037207 n * A037207 (A333659 n).toNat

end

end A037211.P17917166122057778523

/-! ## A037211.P15910526555043893142

`A037207(n)^A020639(A008574(n))`
-/

namespace A037211.P15910526555043893142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037207 n : ℚ) ^ (A020639 (A008574 n).toNat : ℤ)

end

end A037211.P15910526555043893142

/-! ## A037211.P5265950297517362289

`A037207(n)^A020639(A028326(n))`
-/

namespace A037211.P5265950297517362289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037207 n : ℚ) ^ (A020639 (A028326 n).toNat : ℤ)

end

end A037211.P5265950297517362289

/-! ## A037211.P11011075016585569032

`A037207(n)^A020639(A037225(n))`
-/

namespace A037211.P11011075016585569032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037207 n : ℚ) ^ (A020639 (A037225 n).toNat : ℤ)

end

end A037211.P11011075016585569032

/-!
# A037213: Expansion of Sum_{n>=0} n*q^(n^2).

The programs for A037213, the canonical program `A037213.P7544062464691828526` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037213 has offset 0).

The definition of A037213 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A037213.P7544062464691828526

`A000196(n)*A010052(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037213

/-- `A000196(n)*A010052(n)` -/
def P7544062464691828526.Spec : Prop :=
  ∀ n, P7544062464691828526.a n = A037213 n

theorem P7544062464691828526.correct : P7544062464691828526.Spec := by
  intro n
  simp only [A037213]

end A037213

/-! ## A037213.P15229786373883603346

`Δ[C(ceil(sqrt(n)), 2)]`
-/

namespace A037213.P15229786373883603346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈Real.sqrt (n : ℝ)⌉.toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A037213.P15229786373883603346

namespace A037213

/-- `Δ[C(ceil(sqrt(n)), 2)]` -/
def P15229786373883603346.Spec : Prop :=
  ∀ n, P15229786373883603346.a n = A037213 n

end A037213

/-! ## A037213.P8019271675604386226

`sqrt(n*char[n²])`
-/

namespace A037213.P8019271675604386226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℝ)

end

end A037213.P8019271675604386226

namespace A037213

/-- `sqrt(n*char[n²])` -/
def P8019271675604386226.Spec : Prop :=
  ∀ n, P8019271675604386226.a n = (A037213 n : ℝ)

end A037213

/-! ## A037213.P12245825956107535093

`and(-char[n²], floor(sqrt(n)))`
-/

namespace A037213.P12245825956107535093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) (Nat.sqrt n : ℤ)

end

end A037213.P12245825956107535093

namespace A037213

/-- `and(-char[n²], floor(sqrt(n)))` -/
def P12245825956107535093.Spec : Prop :=
  ∀ n, P12245825956107535093.a n = A037213 n

end A037213

/-! ## A037213.P12230737122285728169

`ceil(sqrt(n))%∑[char[n²]]`
-/

namespace A037213.P12230737122285728169
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (n : ℝ)⌉ ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A037213.P12230737122285728169

namespace A037213

/-- `ceil(sqrt(n))%∑[char[n²]]` -/
def P12230737122285728169.Spec : Prop :=
  ∀ n, P12230737122285728169.a n = A037213 n

end A037213

/-! ## A037213.P8317914414622490038

`(∑[and(1, char[n²])]-1)*char[n²]`
-/

namespace A037213.P8317914414622490038
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f2 j = n then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A037213.P8317914414622490038

namespace A037213

/-- `(∑[and(1, char[n²])]-1)*char[n²]` -/
def P8317914414622490038.Spec : Prop :=
  ∀ n, P8317914414622490038.a n = A037213 n

end A037213

/-! ## A037213.P15497324678339962286

`A000194(n*char[n²])`
-/

namespace A037213.P15497324678339962286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (n * (if ∃ j, f1 j = n then 1 else 0))

end

end A037213.P15497324678339962286

namespace A037213

/-- `A000194(n*char[n²])` -/
def P15497324678339962286.Spec : Prop :=
  ∀ n, P15497324678339962286.a n = A037213 n

end A037213

/-! ## A037213.P15739912776778945947

`A000196(n*char[n²])`
-/

namespace A037213.P15739912776778945947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n * (if ∃ j, f1 j = n then 1 else 0))

end

end A037213.P15739912776778945947

namespace A037213

/-- `A000196(n*char[n²])` -/
def P15739912776778945947.Spec : Prop :=
  ∀ n, P15739912776778945947.a n = A037213 n

end A037213

/-! ## A037213.P1333032200077407150

`A018851(n*char[n²])`
-/

namespace A037213.P1333032200077407150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (n * (if ∃ j, f1 j = n then 1 else 0))

end

end A037213.P1333032200077407150

namespace A037213

/-- `A018851(n*char[n²])` -/
def P1333032200077407150.Spec : Prop :=
  ∀ n, P1333032200077407150.a n = A037213 n

end A037213

/-! ## A037213.P14872195070346087789

`A038690(n*char[n²])`
-/

namespace A037213.P14872195070346087789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038690 (n * (if ∃ j, f1 j = n then 1 else 0))

end

end A037213.P14872195070346087789

namespace A037213

/-- `A038690(n*char[n²])` -/
def P14872195070346087789.Spec : Prop :=
  ∀ n, P14872195070346087789.a n = A037213 n

end A037213

/-! ## A037213.P475148225209837815

`A053615(n*char[n²])`
-/

namespace A037213.P475148225209837815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (n * (if ∃ j, f1 j = n then 1 else 0))

end

end A037213.P475148225209837815

namespace A037213

/-- `A053615(n*char[n²])` -/
def P475148225209837815.Spec : Prop :=
  ∀ n, P475148225209837815.a n = A037213 n

end A037213

/-! ## A037213.P15307595946273624179

`A056926(n*char[n²])`
-/

namespace A037213.P15307595946273624179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (n * (if ∃ j, f1 j = n then 1 else 0))

end

end A037213.P15307595946273624179

namespace A037213

/-- `A056926(n*char[n²])` -/
def P15307595946273624179.Spec : Prop :=
  ∀ n, P15307595946273624179.a n = A037213 n

end A037213

/-! ## A037213.P7290889456940116545

`A064876(n*char[n²])`
-/

namespace A037213.P7290889456940116545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064876 (n * (if ∃ j, f1 j = n then 1 else 0))

end

end A037213.P7290889456940116545

namespace A037213

/-- `A064876(n*char[n²])` -/
def P7290889456940116545.Spec : Prop :=
  ∀ n, P7290889456940116545.a n = A037213 n

end A037213

/-! ## A037213.P7146085588908011972

`A178786(n*char[n²])`
-/

namespace A037213.P7146085588908011972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 (n * (if ∃ j, f1 j = n then 1 else 0))

end

end A037213.P7146085588908011972

namespace A037213

/-- `A178786(n*char[n²])` -/
def P7146085588908011972.Spec : Prop :=
  ∀ n, P7146085588908011972.a n = A037213 n

end A037213

/-! ## A037213.P17699332199634758511

`A262689(n*char[n²])`
-/

namespace A037213.P17699332199634758511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (n * (if ∃ j, f1 j = n then 1 else 0))

end

end A037213.P17699332199634758511

namespace A037213

/-- `A262689(n*char[n²])` -/
def P17699332199634758511.Spec : Prop :=
  ∀ n, P17699332199634758511.a n = A037213 n

end A037213

/-! ## A037213.P5775947305344707631

`A322832(n*char[n²])`
-/

namespace A037213.P5775947305344707631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322832 (n * (if ∃ j, f1 j = n then 1 else 0))

end

end A037213.P5775947305344707631

namespace A037213

/-- `A322832(n*char[n²])` -/
def P5775947305344707631.Spec : Prop :=
  ∀ n, P5775947305344707631.a n = A037213 n

end A037213

/-! ## A037213.P17114017552359706521

`A331958(n*char[n²])`
-/

namespace A037213.P17114017552359706521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331958 (n * (if ∃ j, f1 j = n then 1 else 0))

end

end A037213.P17114017552359706521

namespace A037213

/-- `A331958(n*char[n²])` -/
def P17114017552359706521.Spec : Prop :=
  ∀ n, P17114017552359706521.a n = A037213 n

end A037213

/-! ## A037213.P10421088313365783775

`(2-A169695(n))*sqrt(n)`
-/

namespace A037213.P10421088313365783775
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 - A169695 n : ℝ) * Real.sqrt (n : ℝ)

end

end A037213.P10421088313365783775

namespace A037213

/-- `(2-A169695(n))*sqrt(n)` -/
def P10421088313365783775.Spec : Prop :=
  ∀ n, P10421088313365783775.a n = (A037213 n : ℝ)

end A037213

/-! ## A037213.P16322295877416925794

`round(ratio[A091453(n)+2])-1`
-/

namespace A037213.P16322295877416925794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ)) - 1

end

end A037213.P16322295877416925794

namespace A037213

/-- `round(ratio[A091453(n)+2])-1` -/
def P16322295877416925794.Spec : Prop :=
  ∀ n, P16322295877416925794.a n = A037213 n

end A037213

/-! ## A037213.P8978883767042315307

`round(sqrt(n/2*A000122(n)))`
-/

namespace A037213.P8978883767042315307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((n : ℚ) / 2 * (A000122 n : ℚ) : ℝ))

end

end A037213.P8978883767042315307

namespace A037213

/-- `round(sqrt(n/2*A000122(n)))` -/
def P8978883767042315307.Spec : Prop :=
  ∀ n, P8978883767042315307.a n = A037213 n

end A037213

/-!
# A037214: Expansion of ( Sum_{k>=0} k*q^(k^2) )^2.

The programs for A037214, there is no canonical definition to state claims against.
-/

/-! ## A037214.P2039776242606101170

`sqrt((A063725(n)*A347801(n))^A014963(37*n+23))`
-/

namespace A037214.P2039776242606101170
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A063725 n * A347801 n : ℚ) ^ (A014963 (37 * n + 23) : ℤ) : ℝ)

end

end A037214.P2039776242606101170

/-! ## A037214.P3788363779949320921

`A090750(2*n+1)+sqrt(A063725(n)*A347801(n))`
-/

namespace A037214.P3788363779949320921
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A090750 (2 * n + 1) : ℝ) + Real.sqrt (A063725 n * A347801 n : ℝ)

end

end A037214.P3788363779949320921

/-! ## A037214.P3245421868526799183

`A272679(A347801(n))%A018252(A000041(n))`
-/

namespace A037214.P3245421868526799183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272679 (A347801 n).toNat) (A018252 (A000041 n).toNat)

end

end A037214.P3245421868526799183

/-! ## A037214.P6578543263595574763

`sqrt(A063725((n+1)*(n²+n))*A347801(n))`
-/

namespace A037214.P6578543263595574763
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A063725 ((n + 1) * (n ^ 2 + n)) * A347801 n : ℝ)

end

end A037214.P6578543263595574763

/-! ## A037214.P10512045296798029376

`A381423(A347801(n))`
-/

namespace A037214.P10512045296798029376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381423 (A347801 n).toNat

end

end A037214.P10512045296798029376

/-!
# A037215: Expansion of ( Sum_{k>=0} k*q^(k^2) )^3.

The programs for A037215, there is no canonical definition to state claims against.
-/

/-! ## A037215.P3546244128914288857

`A063691(n)*A307510(A187829(n+1))`
-/

namespace A037215.P3546244128914288857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 n * A307510 (A187829 (n + 1)).toNat

end

end A037215.P3546244128914288857

/-! ## A037215.P7907663924443602713

`A048675(A008619(n)^A063691(n))`
-/

namespace A037215.P7907663924443602713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (SequenceMachineLib.roundAway ((A008619 n : ℚ) ^ (A063691 n : ℤ))).toNat

end

end A037215.P7907663924443602713

/-!
# A037216: Expansion of ( Sum_{k>=0} k*q^(k^2) )^4.

The programs for A037216, there is no canonical definition to state claims against.
-/

/-! ## A037216.P3186416195406222885

`(A063730(n)*A307510(n))%p?[A059590(n)]`
-/

namespace A037216.P3186416195406222885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063730 n * A307510 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A037216.P3186416195406222885

/-! ## A037216.P11779752384681524813

`A063730(n)*A307510(n)*A100755(n+1)%2`
-/

namespace A037216.P11779752384681524813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063730 n * A307510 n * Int.tmod (A100755 (n + 1)) 2

end

end A037216.P11779752384681524813

/-! ## A037216.P18123466424600185717

`A001222(A238678(n+1))*A063730(n)*A307510(n)`
-/

namespace A037216.P18123466424600185717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A238678 (n + 1)).toNat * A063730 n * A307510 n

end

end A037216.P18123466424600185717

/-! ## A037216.P12853549864587083

`A001222(A238679(n+1))*A063730(n)*A307510(n)`
-/

namespace A037216.P12853549864587083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A238679 (n + 1)).toNat * A063730 n * A307510 n

end

end A037216.P12853549864587083

/-!
# A037217: Expansion of ( Sum_{k>=0} k*q^(k^2) )^8.

The programs for A037217, there is no canonical definition to state claims against.
-/

/-! ## A037217.P7722425620354522943

`A212804(n)%A009194(A016993(n)²)`
-/

namespace A037217.P7722425620354522943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212804 n) (A009194 (A016993 n ^ 2).toNat)

end

end A037217.P7722425620354522943

/-! ## A037217.P16992743204008298449

`and(A171310(n+1), A171368(A323505(n)))`
-/

namespace A037217.P16992743204008298449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A171310 (n + 1)) (A171368 (A323505 n).toNat)

end

end A037217.P16992743204008298449

/-! ## A037217.P5907938250917513108

`Δ[A000045(n)]%A009194(A016993(n)²)`
-/

namespace A037217.P5907938250917513108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A009194 (A016993 n ^ 2).toNat)

end

end A037217.P5907938250917513108

/-!
# A037218: Smallest natural number k such that periodic part of 1/k is the prime p(n), or 0 if no such k exists.

The programs for A037218, there is no canonical definition to state claims against.
-/

/-! ## A037218.P17148589498270511467

`A037207(A260904(n+1))`
-/

namespace A037218.P17148589498270511467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037207 (A260904 (n + 1)).toNat

end

end A037218.P17148589498270511467

/-! ## A037218.P7921884453665417744

`A037207(p?[record[A077168(n)]])`
-/

namespace A037218.P7921884453665417744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037207 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A037218.P7921884453665417744

/-!
# A037220: Summarize the previous term!.

The programs for A037220, there is no canonical definition to state claims against.
-/

/-! ## A037220.P15843208819803484896

`A047842(a(n-1))` with `a(0)=0`
-/

namespace A037220.P15843208819803484896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A047842 (a (n - 1)).toNat

end

end A037220.P15843208819803484896

/-!
# A037223: Number of solutions to non-attacking rooks problem on n X n board that are invariant under 180-degree rotation.

The programs for A037223, the canonical program `A037223.P1304760960877444944` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037223 has offset 0).

The definition of A037223 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037223.P1304760960877444944

`∏[gcd(n, (n%2)^n)]`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037223

/-- `∏[gcd(n, (n%2)^n)]` -/
def P1304760960877444944.Spec : Prop :=
  ∀ n, (P1304760960877444944.a n : ℤ) = A037223 n

theorem P1304760960877444944.correct : P1304760960877444944.Spec := by
  intro n
  simp only [A037223]

end A037223

/-! ## A037223.P15491415898025222804

`∏[floor(n/a(n-1))]` with `a(0)=1`
-/

namespace A037223.P15491415898025222804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊(n : ℚ) / (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A037223.P15491415898025222804

namespace A037223

/-- `∏[floor(n/a(n-1))]` -/
def P15491415898025222804.Spec : Prop :=
  ∀ n, P15491415898025222804.a n = A037223 n

end A037223

/-! ## A037223.P12559023074400421744

`∏[floor(root(n, a(n-1)))]` with `a(0)=1`
-/

namespace A037223.P12559023074400421744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊(n : ℝ) ^ (1 / (f1 (n - 1) : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A037223.P12559023074400421744

namespace A037223

/-- `∏[floor(root(n, a(n-1)))]` -/
def P12559023074400421744.Spec : Prop :=
  ∀ n, P12559023074400421744.a n = A037223 n

end A037223

/-! ## A037223.P1649294381765518450

`∏[n^(a(n-1)%2)]` with `a(0)=1`
-/

namespace A037223.P1649294381765518450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  n ^ (f1 (n - 1) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A037223.P1649294381765518450

namespace A037223

/-- `∏[n^(a(n-1)%2)]` -/
def P1649294381765518450.Spec : Prop :=
  ∀ n, (P1649294381765518450.a n : ℤ) = A037223 n

end A037223

/-! ## A037223.P8446464003694928932

`and(n, -2)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A037223.P8446464003694928932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.land (n : ℤ) (-2) * a (n - 2)

end

end A037223.P8446464003694928932

namespace A037223

/-- `and(n, -2)*a(n-2)` -/
def P8446464003694928932.Spec : Prop :=
  ∀ n, P8446464003694928932.a n = A037223 n

end A037223

/-! ## A037223.P7497957113341930732

`(n-and(1, n))*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A037223.P7497957113341930732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((n : ℤ) - (Nat.land 1 n : ℤ)) * a (n - 2)

end

end A037223.P7497957113341930732

namespace A037223

/-- `(n-and(1, n))*a(n-2)` -/
def P7497957113341930732.Spec : Prop :=
  ∀ n, P7497957113341930732.a n = A037223 n

end A037223

/-! ## A037223.P11657383146528485697

`2^floor(n/2)*floor(n/2)!`
-/

namespace A037223.P11657383146528485697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat : ℚ)

end

end A037223.P11657383146528485697

namespace A037223

/-- `2^floor(n/2)*floor(n/2)!` -/
def P11657383146528485697.Spec : Prop :=
  ∀ n, P11657383146528485697.a n = (A037223 n : ℚ)

end A037223

/-! ## A037223.P6993549222409678593

`n^∑[(-1)^n]*a(n-1)` with `a(0)=1`
-/

namespace A037223.P6993549222409678593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ) * a (n - 1)

end

end A037223.P6993549222409678593

namespace A037223

/-- `n^∑[(-1)^n]*a(n-1)` -/
def P6993549222409678593.Spec : Prop :=
  ∀ n, P6993549222409678593.a n = (A037223 n : ℚ)

end A037223

/-! ## A037223.P12051725793317922406

`2*a(n-2)*floor(n/2)` with `a(0)=1, a(1)=1`
-/

namespace A037223.P12051725793317922406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * a (n - 2) * ⌊(n : ℚ) / 2⌋

end

end A037223.P12051725793317922406

namespace A037223

/-- `2*a(n-2)*floor(n/2)` -/
def P12051725793317922406.Spec : Prop :=
  ∀ n, P12051725793317922406.a n = A037223 n

end A037223

/-! ## A037223.P12488826477086140888

`a(n-1)*n^((n+1)%2)` with `a(0)=1`
-/

namespace A037223.P12488826477086140888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * n ^ ((n + 1) % 2)

end

end A037223.P12488826477086140888

namespace A037223

/-- `a(n-1)*n^((n+1)%2)` -/
def P12488826477086140888.Spec : Prop :=
  ∀ n, (P12488826477086140888.a n : ℤ) = A037223 n

end A037223

/-! ## A037223.P10392280062127823910

`a(n-1)/n^((1-n)%2)` with `a(0)=1`
-/

namespace A037223.P10392280062127823910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (n : ℚ) ^ (Int.tmod (1 - (n : ℤ)) 2 : ℤ)

end

end A037223.P10392280062127823910

namespace A037223

/-- `a(n-1)/n^((1-n)%2)` -/
def P10392280062127823910.Spec : Prop :=
  ∀ n, P10392280062127823910.a n = (A037223 n : ℚ)

end A037223

/-! ## A037223.P4089700791883566998

`a(n-1)/n^∑[(-1)^(n+1)]` with `a(0)=1`
-/

namespace A037223.P4089700791883566998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A037223.P4089700791883566998

namespace A037223

/-- `a(n-1)/n^∑[(-1)^(n+1)]` -/
def P4089700791883566998.Spec : Prop :=
  ∀ n, P4089700791883566998.a n = (A037223 n : ℚ)

end A037223

/-! ## A037223.P12298106232015718474

`n*a(n-2)-a(n-2)%a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A037223.P12298106232015718474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) * a (n - 2) - Int.tmod (a (n - 2)) (a (n - 1))

end

end A037223.P12298106232015718474

namespace A037223

/-- `n*a(n-2)-a(n-2)%a(n-1)` -/
def P12298106232015718474.Spec : Prop :=
  ∀ n, P12298106232015718474.a n = A037223 n

end A037223

/-! ## A037223.P12040840384260271303

`A000165(floor(n/2))`
-/

namespace A037223.P12040840384260271303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 ⌊(n : ℚ) / 2⌋.toNat

end

end A037223.P12040840384260271303

namespace A037223

/-- `A000165(floor(n/2))` -/
def P12040840384260271303.Spec : Prop :=
  ∀ n, P12040840384260271303.a n = A037223 n

end A037223

/-! ## A037223.P6763595051060547112

`∏[gcd(n, A131575(n))]`
-/

namespace A037223.P6763595051060547112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A131575 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A037223.P6763595051060547112

namespace A037223

/-- `∏[gcd(n, A131575(n))]` -/
def P6763595051060547112.Spec : Prop :=
  ∀ n, (P6763595051060547112.a n : ℤ) = A037223 n

end A037223

/-! ## A037223.P14714147328503292455

`A006882(or(1, n)-1)`
-/

namespace A037223.P14714147328503292455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (Nat.lor 1 n - 1)

end

end A037223.P14714147328503292455

namespace A037223

/-- `A006882(or(1, n)-1)` -/
def P14714147328503292455.Spec : Prop :=
  ∀ n, P14714147328503292455.a n = A037223 n

end A037223

/-! ## A037223.P13302903535504255519

`A006882(n-and(1, n))`
-/

namespace A037223.P13302903535504255519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (n - Nat.land 1 n)

end

end A037223.P13302903535504255519

namespace A037223

/-- `A006882(n-and(1, n))` -/
def P13302903535504255519.Spec : Prop :=
  ∀ n, P13302903535504255519.a n = A037223 n

end A037223

/-! ## A037223.P16876113800317897831

`∏[A007318(∑[xor(1, n)])]`
-/

namespace A037223.P16876113800317897831
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A037223.P16876113800317897831

namespace A037223

/-- `∏[A007318(∑[xor(1, n)])]` -/
def P16876113800317897831.Spec : Prop :=
  ∀ n, P16876113800317897831.a n = A037223 n

end A037223

/-! ## A037223.P1419223899362522214

`∏[A007318(xor(1, n)+C(n, 2))]`
-/

namespace A037223.P1419223899362522214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.xor 1 n + Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A037223.P1419223899362522214

namespace A037223

/-- `∏[A007318(xor(1, n)+C(n, 2))]` -/
def P1419223899362522214.Spec : Prop :=
  ∀ n, P1419223899362522214.a n = A037223 n

end A037223

/-!
# A037224: Number of permutations p of {1,2,3...,n} that are fixed points under the operation of first reversing p, then taking the inverse.

The programs for A037224, the canonical program `A037224.P8006129196634237121` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037224 has offset 1).

The definition of A037224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037224.P8006129196634237121

`A122670(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037224

/-- `A122670(n+1)` -/
def P8006129196634237121.Spec : Prop :=
  ∀ n, P8006129196634237121.a n = A037224 (n + 1)

theorem P8006129196634237121.correct : P8006129196634237121.Spec := by
  intro n
  simp only [A037224, Nat.add_sub_cancel]

end A037224

/-! ## A037224.P3880803132170447270

`abs(A067994(∑[n%2]))`
-/

namespace A037224.P3880803132170447270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A067994 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A037224.P3880803132170447270

namespace A037224

/-- `abs(A067994(∑[n%2]))` -/
def P3880803132170447270.Spec : Prop :=
  ∀ n, P3880803132170447270.a n = A037224 (n + 1)

end A037224

/-! ## A037224.P10168319486479021725

`abs(A067994(A110654(n)))`
-/

namespace A037224.P10168319486479021725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A067994 (A110654 n).toNat|

end

end A037224.P10168319486479021725

namespace A037224

/-- `abs(A067994(A110654(n)))` -/
def P10168319486479021725.Spec : Prop :=
  ∀ n, P10168319486479021725.a n = A037224 (n + 1)

end A037224

/-! ## A037224.P4702220369388492311

`abs(A067994(abs(A001057(n))))`
-/

namespace A037224.P4702220369388492311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A067994 |A001057 n|.toNat)|

end

end A037224.P4702220369388492311

namespace A037224

/-- `abs(A067994(abs(A001057(n))))` -/
def P4702220369388492311.Spec : Prop :=
  ∀ n, P4702220369388492311.a n = A037224 (n + 1)

end A037224

/-! ## A037224.P303174362383067384

`abs(A067994(∑[A000035(n)]))`
-/

namespace A037224.P303174362383067384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A067994 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A037224.P303174362383067384

namespace A037224

/-- `abs(A067994(∑[A000035(n)]))` -/
def P303174362383067384.Spec : Prop :=
  ∀ n, P303174362383067384.a n = A037224 (n + 1)

end A037224

/-! ## A037224.P17352941952383764760

`abs(Δ[A067994(A004525(n))])`
-/

namespace A037224.P17352941952383764760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067994 (A004525 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A037224.P17352941952383764760

namespace A037224

/-- `abs(Δ[A067994(A004525(n))])` -/
def P17352941952383764760.Spec : Prop :=
  ∀ n, P17352941952383764760.a n = A037224 (n + 1)

end A037224

/-! ## A037224.P10733149102581371957

`abs(A067994(A004526(n+1)))`
-/

namespace A037224.P10733149102581371957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A067994 (A004526 (n + 1)).toNat|

end

end A037224.P10733149102581371957

namespace A037224

/-- `abs(A067994(A004526(n+1)))` -/
def P10733149102581371957.Spec : Prop :=
  ∀ n, P10733149102581371957.a n = A037224 (n + 1)

end A037224

/-! ## A037224.P2705201294035786562

`abs(A067994(n-A004526(n)))`
-/

namespace A037224.P2705201294035786562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A067994 ((n : ℤ) - A004526 n).toNat|

end

end A037224.P2705201294035786562

namespace A037224

/-- `abs(A067994(n-A004526(n)))` -/
def P2705201294035786562.Spec : Prop :=
  ∀ n, P2705201294035786562.a n = A037224 (n + 1)

end A037224

/-! ## A037224.P9015506561513355728

`lcm(A001222(n+2), A067994(A110654(n)))`
-/

namespace A037224.P9015506561513355728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001222 (n + 2)) (A067994 (A110654 n).toNat)

end

end A037224.P9015506561513355728

namespace A037224

/-- `lcm(A001222(n+2), A067994(A110654(n)))` -/
def P9015506561513355728.Spec : Prop :=
  ∀ n, (P9015506561513355728.a n : ℤ) = A037224 (n + 1)

end A037224

/-! ## A037224.P5991983801335665045

`A067147(∑[∑[A001057(n)]])`
-/

namespace A037224.P5991983801335665045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067147 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A037224.P5991983801335665045

namespace A037224

/-- `A067147(∑[∑[A001057(n)]])` -/
def P5991983801335665045.Spec : Prop :=
  ∀ n, P5991983801335665045.a n = A037224 (n + 1)

end A037224

/-! ## A037224.P627251128008051094

`A067147(∑[A142150(n+1)])`
-/

namespace A037224.P627251128008051094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067147 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A037224.P627251128008051094

namespace A037224

/-- `A067147(∑[A142150(n+1)])` -/
def P627251128008051094.Spec : Prop :=
  ∀ n, P627251128008051094.a n = A037224 (n + 1)

end A037224

/-! ## A037224.P10360055388893055593

`A067147(A000217(∑[and(1, n)]))`
-/

namespace A037224.P10360055388893055593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067147 (A000217 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A037224.P10360055388893055593

namespace A037224

/-- `A067147(A000217(∑[and(1, n)]))` -/
def P10360055388893055593.Spec : Prop :=
  ∀ n, P10360055388893055593.a n = A037224 (n + 1)

end A037224

/-! ## A037224.P5804570317902945132

`A067147(A110660(n+1)/2)`
-/

namespace A037224.P5804570317902945132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067147 (SequenceMachineLib.roundAway ((A110660 (n + 1) : ℚ) / 2)).toNat

end

end A037224.P5804570317902945132

namespace A037224

/-- `A067147(A110660(n+1)/2)` -/
def P5804570317902945132.Spec : Prop :=
  ∀ n, P5804570317902945132.a n = A037224 (n + 1)

end A037224

/-! ## A037224.P4064801501936334229

`A067147(A000217(n+1)-A001318(n+1))`
-/

namespace A037224.P4064801501936334229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067147 (A000217 (n + 1) - A001318 (n + 1)).toNat

end

end A037224.P4064801501936334229

namespace A037224

/-- `A067147(A000217(n+1)-A001318(n+1))` -/
def P4064801501936334229.Spec : Prop :=
  ∀ n, P4064801501936334229.a n = A037224 (n + 1)

end A037224

/-! ## A037224.P1664954227225143072

`A067147(A008805(n+1)-A008619(n+1))`
-/

namespace A037224.P1664954227225143072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067147 (A008805 (n + 1) - A008619 (n + 1)).toNat

end

end A037224.P1664954227225143072

namespace A037224

/-- `A067147(A008805(n+1)-A008619(n+1))` -/
def P1664954227225143072.Spec : Prop :=
  ∀ n, P1664954227225143072.a n = A037224 (n + 1)

end A037224

/-!
# A037225: a(n) = phi(2n+1).

The programs for A037225, the canonical program `A037225.P9328900896830613636` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037225 has offset 0).

The definition of A037225 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A037225.P9328900896830613636

`A000010(2*n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A037225

/-- `A000010(2*n+1)` -/
def P9328900896830613636.Spec : Prop :=
  ∀ n, P9328900896830613636.a n = A037225 n

theorem P9328900896830613636.correct : P9328900896830613636.Spec := by
  intro n
  simp only [A037225]

end A037225

/-! ## A037225.P7169394179396555884

`A062570(Δ[n²])`
-/

namespace A037225.P7169394179396555884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A037225.P7169394179396555884

namespace A037225

/-- `A062570(Δ[n²])` -/
def P7169394179396555884.Spec : Prop :=
  ∀ n, P7169394179396555884.a n = A037225 n

end A037225

/-! ## A037225.P6797811506035638529

`A319997(Δ[n²])`
-/

namespace A037225.P6797811506035638529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319997 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A037225.P6797811506035638529

namespace A037225

/-- `A319997(Δ[n²])` -/
def P6797811506035638529.Spec : Prop :=
  ∀ n, P6797811506035638529.a n = A037225 n

end A037225

/-! ## A037225.P14511137805434045750

`abs(A319997(2*n+1))`
-/

namespace A037225.P14511137805434045750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A319997 (2 * n + 1)|

end

end A037225.P14511137805434045750

namespace A037225

/-- `abs(A319997(2*n+1))` -/
def P14511137805434045750.Spec : Prop :=
  ∀ n, P14511137805434045750.a n = A037225 n

end A037225

/-! ## A037225.P6386916326627072001

`root(A000010(n+1+n)^3, 3)`
-/

namespace A037225.P6386916326627072001
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1 + n) ^ 3 : ℝ) ^ (1 / (3 : ℝ))

end

end A037225.P6386916326627072001

namespace A037225

/-- `root(A000010(n+1+n)^3, 3)` -/
def P6386916326627072001.Spec : Prop :=
  ∀ n, P6386916326627072001.a n = (A037225 n : ℝ)

end A037225

/-! ## A037225.P2145932726229104331

`A002326(n)*A037226(n)`
-/

namespace A037225.P2145932726229104331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 n * A037226 n

end

end A037225.P2145932726229104331

namespace A037225

/-- `A002326(n)*A037226(n)` -/
def P2145932726229104331.Spec : Prop :=
  ∀ n, P2145932726229104331.a n = A037225 n

end A037225

/-! ## A037225.P7239745418450903104

`A053447(n)*A339049(n)`
-/

namespace A037225.P7239745418450903104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053447 n * A339049 n

end

end A037225.P7239745418450903104

namespace A037225

/-- `A053447(n)*A339049(n)` -/
def P7239745418450903104.Spec : Prop :=
  ∀ n, P7239745418450903104.a n = A037225 n

end A037225

/-! ## A037225.P6774763588395095366

`A072455(n+1)+A072454(n+1)`
-/

namespace A037225.P6774763588395095366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072455 (n + 1) + A072454 (n + 1)

end

end A037225.P6774763588395095366

namespace A037225

/-- `A072455(n+1)+A072454(n+1)` -/
def P6774763588395095366.Spec : Prop :=
  ∀ n, P6774763588395095366.a n = A037225 n

end A037225

/-! ## A037225.P8815265586600777617

`A099958(n+1)-A190815(n+1)`
-/

namespace A037225.P8815265586600777617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099958 (n + 1) - A190815 (n + 1)

end

end A037225.P8815265586600777617

namespace A037225

/-- `A099958(n+1)-A190815(n+1)` -/
def P8815265586600777617.Spec : Prop :=
  ∀ n, P8815265586600777617.a n = A037225 n

end A037225

/-! ## A037225.P2367082857848421511

`A162728(2*n+1)`
-/

namespace A037225.P2367082857848421511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162728 (2 * n + 1)

end

end A037225.P2367082857848421511

namespace A037225

/-- `A162728(2*n+1)` -/
def P2367082857848421511.Spec : Prop :=
  ∀ n, P2367082857848421511.a n = A037225 n

end A037225

/-! ## A037225.P98934382920331145

`A093819(2*n+1)`
-/

namespace A037225.P98934382920331145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093819 (2 * n + 1)

end

end A037225.P98934382920331145

namespace A037225

/-- `A093819(2*n+1)` -/
def P98934382920331145.Spec : Prop :=
  ∀ n, P98934382920331145.a n = A037225 n

end A037225

/-!
# A037226: a(n) = phi(2n+1) / multiplicative order of 2 mod 2n+1.

The programs for A037226, there is no canonical definition to state claims against.
-/

/-! ## A037226.P14069033088783702394

`A037225(n)/A002326(n)`
-/

namespace A037226.P14069033088783702394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037225 n : ℚ) / (A002326 n : ℚ)

end

end A037226.P14069033088783702394

/-! ## A037226.P1329043588706845359

`A000010(Δ[n²])/A002326(n)`
-/

namespace A037226.P1329043588706845359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A002326 n : ℚ)

end

end A037226.P1329043588706845359

/-! ## A037226.P3715402762755150047

`A062570(2*n+1)/A002326(n)`
-/

namespace A037226.P3715402762755150047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062570 (2 * n + 1) : ℚ) / (A002326 n : ℚ)

end

end A037226.P3715402762755150047

/-! ## A037226.P2896120906928990598

`floor(A000010(2*n+1)/A002326(n))`
-/

namespace A037226.P2896120906928990598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (2 * n + 1) : ℚ) / (A002326 n : ℚ)⌋

end

end A037226.P2896120906928990598

/-! ## A037226.P16025350984734860610

`A318622(Δ[n²])`
-/

namespace A037226.P16025350984734860610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318622 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A037226.P16025350984734860610

/-! ## A037226.P17075448984554046979

`A037225(n)/A007733(2*n+1)`
-/

namespace A037226.P17075448984554046979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037225 n : ℚ) / (A007733 (2 * n + 1) : ℚ)

end

end A037226.P17075448984554046979

/-! ## A037226.P5139355370881443590

`A000010(2*n+1)/A007733(2*n+1)`
-/

namespace A037226.P5139355370881443590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 * n + 1) : ℚ) / (A007733 (2 * n + 1) : ℚ)

end

end A037226.P5139355370881443590

/-! ## A037226.P8831280285620182186

`A000010(2*n+1)/A024222(2*(n+1))`
-/

namespace A037226.P8831280285620182186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 * n + 1) : ℚ) / (A024222 (2 * (n + 1)) : ℚ)

end

end A037226.P8831280285620182186

/-! ## A037226.P1779473438593784342

`A000010(2*n+1)/A054703(2*n+1)`
-/

namespace A037226.P1779473438593784342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 * n + 1) : ℚ) / (A054703 (2 * n + 1) : ℚ)

end

end A037226.P1779473438593784342

/-! ## A037226.P10525483336881947715

`A055035(2*n+1)/A007733(2*n+1)`
-/

namespace A037226.P10525483336881947715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055035 (2 * n + 1) : ℚ) / (A007733 (2 * n + 1) : ℚ)

end

end A037226.P10525483336881947715

/-! ## A037226.P4159496211840980832

`A062570(2*n+1)/A007733(2*n+1)`
-/

namespace A037226.P4159496211840980832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062570 (2 * n + 1) : ℚ) / (A007733 (2 * n + 1) : ℚ)

end

end A037226.P4159496211840980832

/-! ## A037226.P3389423668325449699

`gcd(A327813(2*n+1), A327816(2*n+1))`
-/

namespace A037226.P3389423668325449699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A327813 (2 * n + 1)) (A327816 (2 * n + 1))

end

end A037226.P3389423668325449699

/-! ## A037226.P5597825139909417786

`(A002088(2*n+1)-A002088(2*n))/A007733(2*n+1)`
-/

namespace A037226.P5597825139909417786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002088 (2 * n + 1) - A002088 (2 * n) : ℚ) / (A007733 (2 * n + 1) : ℚ)

end

end A037226.P5597825139909417786

/-! ## A037226.P12569399692220213403

`(A005728(2*n+1)-A005728(2*n))/A007733(2*n+1)`
-/

namespace A037226.P12569399692220213403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005728 (2 * n + 1) - A005728 (2 * n) : ℚ) / (A007733 (2 * n + 1) : ℚ)

end

end A037226.P12569399692220213403

/-! ## A037226.P11474413203190271026

`A000010(2*n+1)/(A204987(2*n+1)-1)`
-/

namespace A037226.P11474413203190271026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 * n + 1) : ℚ) / (A204987 (2 * n + 1) - 1 : ℚ)

end

end A037226.P11474413203190271026

/-! ## A037226.P5388518663417699926

`A000010(2*n+1)/(A204979(2*n+1)-1)`
-/

namespace A037226.P5388518663417699926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 * n + 1) : ℚ) / (A204979 (2 * n + 1) - 1 : ℚ)

end

end A037226.P5388518663417699926

/-! ## A037226.P2685877265673270276

`A093819(2*n+1)/A007733(2*n+1)`
-/

namespace A037226.P2685877265673270276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093819 (2 * n + 1) : ℚ) / (A007733 (2 * n + 1) : ℚ)

end

end A037226.P2685877265673270276

/-!
# A037227: If n = 2^m*k, k odd, then a(n) = 2*m+1.

The programs for A037227, the canonical program `A037227.P1481052513991100259` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037227 has offset 1).

The definition of A037227 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037227.P8050979717686571823

`2*val(n+1, 2)+1`
-/

namespace A037227.P8050979717686571823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.valuation (n + 1) 2 + 1

end

end A037227.P8050979717686571823

namespace A037227

/-- `2*val(n+1, 2)+1` -/
def P8050979717686571823.Spec : Prop :=
  ∀ n, (P8050979717686571823.a n : ℤ) = A037227 (n + 1)

end A037227

/-! ## A037227.P6794924890796601188

`a(n-1)+(-1)^(n+1)*(a(floor((n+1)/2)-1)+1)` with `a(0)=1`
-/

namespace A037227.P6794924890796601188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (-1) ^ (n + 1) * (a (⌊(n + 1 : ℚ) / 2⌋ - 1).toNat + 1)

end

end A037227.P6794924890796601188

namespace A037227

/-- `a(n-1)+(-1)^(n+1)*(a(floor((n+1)/2)-1)+1)` -/
def P6794924890796601188.Spec : Prop :=
  ∀ n, P6794924890796601188.a n = A037227 (n + 1)

end A037227

/-! ## A037227.P1481052513991100259

`2*A007814(n+1)+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A037227

/-- `2*A007814(n+1)+1` -/
def P1481052513991100259.Spec : Prop :=
  ∀ n, P1481052513991100259.a n = A037227 (n + 1)

theorem P1481052513991100259.correct : P1481052513991100259.Spec := by
  intro n
  simp only [A037227, Nat.add_sub_cancel]

end A037227

/-! ## A037227.P17635035612971288835

`2*floor(A002487(n)/A002487(n+1))+1`
-/

namespace A037227.P17635035612971288835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(A002487 n : ℚ) / (A002487 (n + 1) : ℚ)⌋ + 1

end

end A037227.P17635035612971288835

namespace A037227

/-- `2*floor(A002487(n)/A002487(n+1))+1` -/
def P17635035612971288835.Spec : Prop :=
  ∀ n, P17635035612971288835.a n = A037227 (n + 1)

end A037227

/-! ## A037227.P1083910739689342580

`(A002487(n)+A002487(n+2))/A002487(n+1)`
-/

namespace A037227.P1083910739689342580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002487 n + A002487 (n + 2) : ℚ) / (A002487 (n + 1) : ℚ)

end

end A037227.P1083910739689342580

namespace A037227

/-- `(A002487(n)+A002487(n+2))/A002487(n+1)` -/
def P1083910739689342580.Spec : Prop :=
  ∀ n, P1083910739689342580.a n = (A037227 (n + 1) : ℚ)

end A037227

/-! ## A037227.P15825021349327638189

`val((n+1)², 2)+1`
-/

namespace A037227.P15825021349327638189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1) ^ 2) 2 + 1

end

end A037227.P15825021349327638189

namespace A037227

/-- `val((n+1)², 2)+1` -/
def P15825021349327638189.Spec : Prop :=
  ∀ n, (P15825021349327638189.a n : ℤ) = A037227 (n + 1)

end A037227

/-! ## A037227.P7600243560151810861

`val(∑[4*n+2], 2)`
-/

namespace A037227.P7600243560151810861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A037227.P7600243560151810861

namespace A037227

/-- `val(∑[4*n+2], 2)` -/
def P7600243560151810861.Spec : Prop :=
  ∀ n, (P7600243560151810861.a n : ℤ) = A037227 (n + 1)

end A037227

/-! ## A037227.P11476892822157391882

`or(1, val((n+1)^4, 4))`
-/

namespace A037227.P11476892822157391882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.valuation ((n + 1) ^ 4) 4)

end

end A037227.P11476892822157391882

namespace A037227

/-- `or(1, val((n+1)^4, 4))` -/
def P11476892822157391882.Spec : Prop :=
  ∀ n, (P11476892822157391882.a n : ℤ) = A037227 (n + 1)

end A037227

/-! ## A037227.P18055109209934463168

`xor(1, val((n+1)^4, 4))`
-/

namespace A037227.P18055109209934463168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (SequenceMachineLib.valuation ((n + 1) ^ 4) 4)

end

end A037227.P18055109209934463168

namespace A037227

/-- `xor(1, val((n+1)^4, 4))` -/
def P18055109209934463168.Spec : Prop :=
  ∀ n, (P18055109209934463168.a n : ℤ) = A037227 (n + 1)

end A037227

/-! ## A037227.P17197048532468221900

`log2(xor(n+1, -(n+1))²)-1`
-/

namespace A037227.P17197048532468221900
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.xor (n + 1 : ℤ) (-(n + 1 : ℤ)) ^ 2 : ℝ) - 1

end

end A037227.P17197048532468221900

namespace A037227

/-- `log2(xor(n+1, -(n+1))²)-1` -/
def P17197048532468221900.Spec : Prop :=
  ∀ n, P17197048532468221900.a n = (A037227 (n + 1) : ℝ)

end A037227

/-! ## A037227.P478140712525325889

`(a(floor((n-1)/2))+2)/a(n-1)` with `a(0)=1`
-/

namespace A037227.P478140712525325889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + 2) / a (n - 1)

end

end A037227.P478140712525325889

namespace A037227

/-- `(a(floor((n-1)/2))+2)/a(n-1)` -/
def P478140712525325889.Spec : Prop :=
  ∀ n, P478140712525325889.a n = (A037227 (n + 1) : ℚ)

end A037227

/-! ## A037227.P10935220976855569656

`A336126(Δ[n²])`
-/

namespace A037227.P10935220976855569656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336126 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A037227.P10935220976855569656

namespace A037227

/-- `A336126(Δ[n²])` -/
def P10935220976855569656.Spec : Prop :=
  ∀ n, P10935220976855569656.a n = A037227 (n + 1)

end A037227

/-! ## A037227.P1307382498680073896

`log2(A059152(n))-1`
-/

namespace A037227.P1307382498680073896
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059152 n : ℝ) - 1

end

end A037227.P1307382498680073896

namespace A037227

/-- `log2(A059152(n))-1` -/
def P1307382498680073896.Spec : Prop :=
  ∀ n, P1307382498680073896.a n = (A037227 (n + 1) : ℝ)

end A037227

/-! ## A037227.P8709328159328369496

`Δ[A178207(n)]-1`
-/

namespace A037227.P8709328159328369496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A037227.P8709328159328369496

namespace A037227

/-- `Δ[A178207(n)]-1` -/
def P8709328159328369496.Spec : Prop :=
  ∀ n, P8709328159328369496.a n = A037227 (n + 1)

end A037227

/-! ## A037227.P7204906734789168713

`A366839(n+1)-1`
-/

namespace A037227.P7204906734789168713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366839 (n + 1) - 1

end

end A037227.P7204906734789168713

namespace A037227

/-- `A366839(n+1)-1` -/
def P7204906734789168713.Spec : Prop :=
  ∀ n, P7204906734789168713.a n = A037227 (n + 1)

theorem P7204906734789168713.correct : P7204906734789168713.Spec := by
  intro n
  simp only [A037227, Nat.add_sub_cancel, A037227.P7204906734789168713.a, A037227.P1481052513991100259.a, A007814, A007814.P13537437864234730737.a, A366839, A366839.P8593895561095689137.a, A001511, A001511.P17146462531039486101.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037227

/-! ## A037227.P10971837518949857853

`(A059132(n)-1)/3`
-/

namespace A037227.P10971837518949857853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059132 n - 1 : ℚ) / 3

end

end A037227.P10971837518949857853

namespace A037227

/-- `(A059132(n)-1)/3` -/
def P10971837518949857853.Spec : Prop :=
  ∀ n, P10971837518949857853.a n = (A037227 (n + 1) : ℚ)

theorem P10971837518949857853.correct : P10971837518949857853.Spec := by
  intro n
  simp only [A037227, Nat.add_sub_cancel, A037227.P10971837518949857853.a, A037227.P1481052513991100259.a, A007814, A007814.P13537437864234730737.a, A059132, A059132.P10830951508121782954.a, A001511, A001511.P17146462531039486101.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037227

/-! ## A037227.P14545691080473020433

`2*A085058(n)-3`
-/

namespace A037227.P14545691080473020433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085058 n - 3

end

end A037227.P14545691080473020433

namespace A037227

/-- `2*A085058(n)-3` -/
def P14545691080473020433.Spec : Prop :=
  ∀ n, P14545691080473020433.a n = A037227 (n + 1)

theorem P14545691080473020433.correct : P14545691080473020433.Spec := by
  intro n
  simp only [A037227, Nat.add_sub_cancel, A037227.P14545691080473020433.a, A037227.P1481052513991100259.a, A007814, A007814.P13537437864234730737.a, A085058, A085058.P14130226451424256143.a, A001511, A001511.P17146462531039486101.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037227

/-! ## A037227.P11386813008381025175

`A005408(val(n+1, 2))`
-/

namespace A037227.P11386813008381025175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.valuation (n + 1) 2)

end

end A037227.P11386813008381025175

namespace A037227

/-- `A005408(val(n+1, 2))` -/
def P11386813008381025175.Spec : Prop :=
  ∀ n, P11386813008381025175.a n = A037227 (n + 1)

end A037227

/-! ## A037227.P15822696951622181282

`∑{d}[n+1, A069517(#)]`
-/

namespace A037227.P15822696951622181282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069517 d

end

end A037227.P15822696951622181282

namespace A037227

/-- `∑{d}[n+1, A069517(#)]` -/
def P15822696951622181282.Spec : Prop :=
  ∀ n, P15822696951622181282.a n = A037227 (n + 1)

end A037227

/-! ## A037227.P7657268144960940995

`log2(A004171(val(n+1, 2)))`
-/

namespace A037227.P7657268144960940995
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A004171 (SequenceMachineLib.valuation (n + 1) 2) : ℝ)

end

end A037227.P7657268144960940995

namespace A037227

/-- `log2(A004171(val(n+1, 2)))` -/
def P7657268144960940995.Spec : Prop :=
  ∀ n, P7657268144960940995.a n = (A037227 (n + 1) : ℝ)

end A037227

/-!
# A037228: a(n) = phi(n) - pi(n).

The programs for A037228, the canonical program `A037228.P4220557198165153324` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037228 has offset 1).

The definition of A037228 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A037228.P4220557198165153324

`A000010(n+1)-A000720(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A037228

/-- `A000010(n+1)-A000720(n+1)` -/
def P4220557198165153324.Spec : Prop :=
  ∀ n, P4220557198165153324.a n = A037228 (n + 1)

theorem P4220557198165153324.correct : P4220557198165153324.Spec := by
  intro n
  simp only [A037228, Nat.add_sub_cancel]

end A037228

/-! ## A037228.P3119306260853577843

`Δ[A002088(n)]-A000720(n+1)`
-/

namespace A037228.P3119306260853577843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000720 (n + 1)

end

end A037228.P3119306260853577843

namespace A037228

/-- `Δ[A002088(n)]-A000720(n+1)` -/
def P3119306260853577843.Spec : Prop :=
  ∀ n, P3119306260853577843.a n = A037228 (n + 1)

end A037228

/-! ## A037228.P17287753093387552741

`Δ[A005728(n)]-A000720(n+1)`
-/

namespace A037228.P17287753093387552741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000720 (n + 1)

end

end A037228.P17287753093387552741

namespace A037228

/-- `Δ[A005728(n)]-A000720(n+1)` -/
def P17287753093387552741.Spec : Prop :=
  ∀ n, P17287753093387552741.a n = A037228 (n + 1)

end A037228

/-! ## A037228.P15780900961467894869

`A048864(n+1)-A001221(n+1)`
-/

namespace A037228.P15780900961467894869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (n + 1) - A001221 (n + 1)

end

end A037228.P15780900961467894869

namespace A037228

/-- `A048864(n+1)-A001221(n+1)` -/
def P15780900961467894869.Spec : Prop :=
  ∀ n, P15780900961467894869.a n = A037228 (n + 1)

end A037228

/-! ## A037228.P8293810685800652162

`A039649(n+1)-A036234(n+1)`
-/

namespace A037228.P8293810685800652162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - A036234 (n + 1)

end

end A037228.P8293810685800652162

namespace A037228

/-- `A039649(n+1)-A036234(n+1)` -/
def P8293810685800652162.Spec : Prop :=
  ∀ n, P8293810685800652162.a n = A037228 (n + 1)

end A037228

/-! ## A037228.P3204421496186957630

`A062298(n+1)-A051953(n+1)`
-/

namespace A037228.P3204421496186957630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) - A051953 (n + 1)

end

end A037228.P3204421496186957630

namespace A037228

/-- `A062298(n+1)-A051953(n+1)` -/
def P3204421496186957630.Spec : Prop :=
  ∀ n, P3204421496186957630.a n = A037228 (n + 1)

end A037228

/-! ## A037228.P7818083652870868852

`A077150(n+1)-A060208(n+1)`
-/

namespace A037228.P7818083652870868852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077150 (n + 1) - A060208 (n + 1)

end

end A037228.P7818083652870868852

namespace A037228

/-- `A077150(n+1)-A060208(n+1)` -/
def P7818083652870868852.Spec : Prop :=
  ∀ n, P7818083652870868852.a n = A037228 (n + 1)

end A037228

/-! ## A037228.P18222288263640321862

`A061468(n+1)-A082514(n+1)`
-/

namespace A037228.P18222288263640321862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061468 (n + 1) - A082514 (n + 1)

end

end A037228.P18222288263640321862

namespace A037228

/-- `A061468(n+1)-A082514(n+1)` -/
def P18222288263640321862.Spec : Prop :=
  ∀ n, P18222288263640321862.a n = A037228 (n + 1)

end A037228

/-! ## A037228.P11670988754890829209

`A063070(n+1)-A082513(n+1)`
-/

namespace A037228.P11670988754890829209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063070 (n + 1) - A082513 (n + 1)

end

end A037228.P11670988754890829209

namespace A037228

/-- `A063070(n+1)-A082513(n+1)` -/
def P11670988754890829209.Spec : Prop :=
  ∀ n, P11670988754890829209.a n = A037228 (n + 1)

end A037228

/-! ## A037228.P8123356914219364626

`A152993(n+1)-A045763(n+1)`
-/

namespace A037228.P8123356914219364626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152993 (n + 1) - A045763 (n + 1)

end

end A037228.P8123356914219364626

namespace A037228

/-- `A152993(n+1)-A045763(n+1)` -/
def P8123356914219364626.Spec : Prop :=
  ∀ n, P8123356914219364626.a n = A037228 (n + 1)

end A037228

/-! ## A037228.P17562948698367349089

`A152992(n+1)-A046520(n+1)`
-/

namespace A037228.P17562948698367349089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152992 (n + 1) - A046520 (n + 1)

end

end A037228.P17562948698367349089

namespace A037228

/-- `A152992(n+1)-A046520(n+1)` -/
def P17562948698367349089.Spec : Prop :=
  ∀ n, P17562948698367349089.a n = A037228 (n + 1)

end A037228

/-! ## A037228.P18159110297926547913

`A152991(n+1)-A051612(n+1)`
-/

namespace A037228.P18159110297926547913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152991 (n + 1) - A051612 (n + 1)

end

end A037228.P18159110297926547913

namespace A037228

/-- `A152991(n+1)-A051612(n+1)` -/
def P18159110297926547913.Spec : Prop :=
  ∀ n, P18159110297926547913.a n = A037228 (n + 1)

end A037228

/-! ## A037228.P1024767671351332277

`A111181(n+1)-A104192(n+1)`
-/

namespace A037228.P1024767671351332277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111181 (n + 1) - A104192 (n + 1)

end

end A037228.P1024767671351332277

namespace A037228

/-- `A111181(n+1)-A104192(n+1)` -/
def P1024767671351332277.Spec : Prop :=
  ∀ n, P1024767671351332277.a n = A037228 (n + 1)

end A037228

/-! ## A037228.P4426349998664971992

`A179179(n+1)-A048865(n+1)`
-/

namespace A037228.P4426349998664971992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179179 (n + 1) - A048865 (n + 1)

end

end A037228.P4426349998664971992

namespace A037228

/-- `A179179(n+1)-A048865(n+1)` -/
def P4426349998664971992.Spec : Prop :=
  ∀ n, P4426349998664971992.a n = A037228 (n + 1)

end A037228

/-! ## A037228.P142849899754988240

`A065855(n+1)-A219428(n+1)`
-/

namespace A037228.P142849899754988240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (n + 1) - A219428 (n + 1)

end

end A037228.P142849899754988240

namespace A037228

/-- `A065855(n+1)-A219428(n+1)` -/
def P142849899754988240.Spec : Prop :=
  ∀ n, P142849899754988240.a n = A037228 (n + 1)

end A037228

/-! ## A037228.P10893275116410665328

`sqrt(A127473(n+1))-A000720(n+1)`
-/

namespace A037228.P10893275116410665328
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ) - (A000720 (n + 1) : ℝ)

end

end A037228.P10893275116410665328

namespace A037228

/-- `sqrt(A127473(n+1))-A000720(n+1)` -/
def P10893275116410665328.Spec : Prop :=
  ∀ n, P10893275116410665328.a n = (A037228 (n + 1) : ℝ)

end A037228

/-! ## A037228.P3993877583041148173

`A000010(n+1)-∑[A010051(n+1)]`
-/

namespace A037228.P3993877583041148173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037228.P3993877583041148173

namespace A037228

/-- `A000010(n+1)-∑[A010051(n+1)]` -/
def P3993877583041148173.Spec : Prop :=
  ∀ n, P3993877583041148173.a n = A037228 (n + 1)

end A037228

/-! ## A037228.P4104702179182124544

`A000010(n+1)+1-A036234(n+1)`
-/

namespace A037228.P4104702179182124544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (1 - A036234 (n + 1))

end

end A037228.P4104702179182124544

namespace A037228

/-- `A000010(n+1)+1-A036234(n+1)` -/
def P4104702179182124544.Spec : Prop :=
  ∀ n, P4104702179182124544.a n = A037228 (n + 1)

end A037228

/-! ## A037228.P17251166689138195088

`A039649(n+1)-(A000720(n+1)+1)`
-/

namespace A037228.P17251166689138195088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - (A000720 (n + 1) + 1)

end

end A037228.P17251166689138195088

namespace A037228

/-- `A039649(n+1)-(A000720(n+1)+1)` -/
def P17251166689138195088.Spec : Prop :=
  ∀ n, P17251166689138195088.a n = A037228 (n + 1)

end A037228

/-! ## A037228.P17030988872887781988

`A109606(n+1)+1-A000720(n+1)`
-/

namespace A037228.P17030988872887781988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + (1 - A000720 (n + 1))

end

end A037228.P17030988872887781988

namespace A037228

/-- `A109606(n+1)+1-A000720(n+1)` -/
def P17030988872887781988.Spec : Prop :=
  ∀ n, P17030988872887781988.a n = A037228 (n + 1)

end A037228

/-!
# A037229: Numbers k such that pi(k) >= phi(k).

The programs for A037229, there is no canonical definition to state claims against.
-/

/-! ## A037229.P9128348546541357657

`lt[A037228(n+1), 1]+1`
-/

namespace A037229.P9128348546541357657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037228 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A037229.P9128348546541357657

/-! ## A037229.P4045272221301229400

`A078769(∑[round(n^(1/6))])`
-/

namespace A037229.P4045272221301229400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) ^ ((1 : ℚ) / 6 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078769 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A037229.P4045272221301229400

/-! ## A037229.P3140633915990312902

`lt[A006093((n+1)*∏{p}[n+1, #-1/#]/∏{p}[n+1, #+1]), n+1]+1`
-/

namespace A037229.P3140633915990312902
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℚ) - 1 / (p : ℚ))) / ((∏ p ∈ Nat.primeFactors (f3 n), (p + 1) : ℕ) : ℚ))).toNat

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n + 1

end

end A037229.P3140633915990312902

/-! ## A037229.P15884525210556233558

`lt[A037228(A028310(n)), 1]`
-/

namespace A037229.P15884525210556233558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037228 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037229.P15884525210556233558

/-! ## A037229.P6256894893017877230

`lt[A006093(A225530(n)), n]`
-/

namespace A037229.P6256894893017877230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A225530 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037229.P6256894893017877230

/-!
# A037231: Primes which set a new record for length of Pratt certificate.

The programs for A037231, there is no canonical definition to state claims against.
-/

/-! ## A037231.P216050828639463690

`A000040(A244624(n))`
-/

namespace A037231.P216050828639463690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A244624 n).toNat

end

end A037231.P216050828639463690

/-! ## A037231.P8243730262587073162

`A008578(A244624(n)+1)`
-/

namespace A037231.P8243730262587073162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A244624 n + 1).toNat

end

end A037231.P8243730262587073162

/-! ## A037231.P13522610142536680380

`A182986(A244624(n)+1)`
-/

namespace A037231.P13522610142536680380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A244624 n + 1).toNat

end

end A037231.P13522610142536680380

/-! ## A037231.P11638626438194100818

`A158611(A244624(n)+2)`
-/

namespace A037231.P11638626438194100818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A244624 n + 2).toNat

end

end A037231.P11638626438194100818

/-! ## A037231.P1559039323324377696

`A006005(A244624(n))+A000007(n)`
-/

namespace A037231.P1559039323324377696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A244624 n).toNat + A000007 n

end

end A037231.P1559039323324377696

/-!
# A037234: a(n) = number of rings with n elements.

The programs for A037234, there is no canonical definition to state claims against.
-/

/-! ## A037234.P16933530470602499278

`A027623(n)%(2^n)`
-/

namespace A037234.P16933530470602499278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027623 n) (2 ^ n : ℤ)

end

end A037234.P16933530470602499278

/-! ## A037234.P9257336193548405565

`A027623(n)-A000007(n)`
-/

namespace A037234.P9257336193548405565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027623 n - A000007 n

end

end A037234.P9257336193548405565

/-! ## A037234.P4111702257034296429

`A027623(n)-A088157(n)`
-/

namespace A037234.P4111702257034296429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027623 n - A088157 n

end

end A037234.P4111702257034296429

/-! ## A037234.P14233186659699538072

`A027623(n)-A112315(n)`
-/

namespace A037234.P14233186659699538072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027623 n - A112315 n

end

end A037234.P14233186659699538072

/-! ## A037234.P6742005470097212828

`A027623(n)-A112316(n)`
-/

namespace A037234.P6742005470097212828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027623 n - A112316 n

end

end A037234.P6742005470097212828

/-!
# A037235: a(n) = n*(2*n^2 - 3*n + 4)/3.

The programs for A037235, the canonical program `A037235.P13056897289140002525` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037235 has offset 0).

The definition of A037235 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2*n²-3*n+4)/3` (program `A037235.P14138912741031423922`, by `A037235.P14138912741031423922.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037235.P14138912741031423922

`n*(2*n²-3*n+4)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A037235.P14138912741031423922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((2 * n ^ 2 : ℤ) - (3 * n : ℤ) + 4) : ℚ) / 3

end

end A037235.P14138912741031423922

namespace A037235

/-- `n*(2*n²-3*n+4)/3` -/
def P14138912741031423922.Spec : Prop :=
  ∀ n, P14138912741031423922.a n = (A037235 n : ℚ)

theorem P14138912741031423922.correct : P14138912741031423922.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A037235, Nat.add_sub_cancel, A037235.P14138912741031423922.a, A037235.P13056897289140002525.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A037235, Nat.add_sub_cancel, A037235.P14138912741031423922.a, A037235.P13056897289140002525.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A037235

/-! ## A037235.P13056897289140002525

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=13`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037235

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P13056897289140002525.Spec : Prop :=
  ∀ n, P13056897289140002525.a n = A037235 n

theorem P13056897289140002525.correct : P13056897289140002525.Spec := by
  intro n
  simp only [A037235]

end A037235

/-! ## A037235.P5660325374903690705

`n²+4*C(n, 3)`
-/

namespace A037235.P5660325374903690705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 4 * Nat.choose n 3

end

end A037235.P5660325374903690705

namespace A037235

/-- `n²+4*C(n, 3)` -/
def P5660325374903690705.Spec : Prop :=
  ∀ n, (P5660325374903690705.a n : ℤ) = A037235 n

end A037235

/-! ## A037235.P14619480204429932997

`C(2*n, 3)/2+n`
-/

namespace A037235.P14619480204429932997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) 3 : ℚ) / 2 + (n : ℚ)

end

end A037235.P14619480204429932997

namespace A037235

/-- `C(2*n, 3)/2+n` -/
def P14619480204429932997.Spec : Prop :=
  ∀ n, P14619480204429932997.a n = (A037235 n : ℚ)

end A037235

/-! ## A037235.P790381625970618493

`Δ[(n-1)*C(n, 3)]+n`
-/

namespace A037235.P790381625970618493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.choose n 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A037235.P790381625970618493

namespace A037235

/-- `Δ[(n-1)*C(n, 3)]+n` -/
def P790381625970618493.Spec : Prop :=
  ∀ n, P790381625970618493.a n = A037235 n

end A037235

/-! ## A037235.P13254145717265124781

`∑[∑[a(n-1)+4]]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A037235.P13254145717265124781
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037235.P13254145717265124781

namespace A037235

/-- `∑[∑[a(n-1)+4]]` -/
def P13254145717265124781.Spec : Prop :=
  ∀ n, (P13254145717265124781.a n : ℤ) = A037235 n

end A037235

/-! ## A037235.P12529728448540317409

`∑[2*n²]-C(2*n, 2)`
-/

namespace A037235.P12529728448540317409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose (2 * n) 2 : ℤ)

end

end A037235.P12529728448540317409

namespace A037235

/-- `∑[2*n²]-C(2*n, 2)` -/
def P12529728448540317409.Spec : Prop :=
  ∀ n, P12529728448540317409.a n = A037235 n

end A037235

/-! ## A037235.P11627531097221564663

`∑[∑[ogf((x+3x^3)/(1-2x+x^2))]]`
-/

namespace A037235.P11627531097221564663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 3] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037235.P11627531097221564663

namespace A037235

/-- `∑[∑[ogf((x+3x^3)/(1-2x+x^2))]]` -/
def P11627531097221564663.Spec : Prop :=
  ∀ n, P11627531097221564663.a n = A037235 n

end A037235

/-! ## A037235.P900574229224385411

`floor(A161712(n)/2)`
-/

namespace A037235.P900574229224385411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161712 n : ℚ) / 2⌋

end

end A037235.P900574229224385411

namespace A037235

/-- `floor(A161712(n)/2)` -/
def P900574229224385411.Spec : Prop :=
  ∀ n, P900574229224385411.a n = A037235 n

end A037235

/-! ## A037235.P7391219638325079829

`A146298(n)+2*n`
-/

namespace A037235.P7391219638325079829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146298 n + (2 * n : ℤ)

end

end A037235.P7391219638325079829

namespace A037235

/-- `A146298(n)+2*n` -/
def P7391219638325079829.Spec : Prop :=
  ∀ n, P7391219638325079829.a n = A037235 n

end A037235

/-! ## A037235.P17689286229757288808

`Δ[A103290(n)]-n²`
-/

namespace A037235.P17689286229757288808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n ^ 2 : ℤ)

end

end A037235.P17689286229757288808

namespace A037235

/-- `Δ[A103290(n)]-n²` -/
def P17689286229757288808.Spec : Prop :=
  ∀ n, P17689286229757288808.a n = A037235 n

end A037235

/-! ## A037235.P6765323107066872455

`∑[C(A004275(n), 2)+n]`
-/

namespace A037235.P6765323107066872455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004275 n).toNat 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037235.P6765323107066872455

namespace A037235

/-- `∑[C(A004275(n), 2)+n]` -/
def P6765323107066872455.Spec : Prop :=
  ∀ n, (P6765323107066872455.a n : ℤ) = A037235 n

end A037235

/-! ## A037235.P11157713225333299605

`n/3*A236257(n+1)`
-/

namespace A037235.P11157713225333299605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A236257 (n + 1) : ℚ)

end

end A037235.P11157713225333299605

namespace A037235

/-- `n/3*A236257(n+1)` -/
def P11157713225333299605.Spec : Prop :=
  ∀ n, P11157713225333299605.a n = (A037235 n : ℚ)

theorem P11157713225333299605.correct : P11157713225333299605.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A037235, Nat.add_sub_cancel, A037235.P11157713225333299605.a, A037235.P13056897289140002525.a, A236257, A236257.P10668576513151047033.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A037235, Nat.add_sub_cancel, A037235.P11157713225333299605.a, A037235.P13056897289140002525.a, A236257, A236257.P10668576513151047033.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A037235

/-! ## A037235.P3779787196632671104

`A007290(n)+A006527(n)`
-/

namespace A037235.P3779787196632671104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007290 n + A006527 n

end

end A037235.P3779787196632671104

namespace A037235

/-- `A007290(n)+A006527(n)` -/
def P3779787196632671104.Spec : Prop :=
  ∀ n, P3779787196632671104.a n = A037235 n

end A037235

/-! ## A037235.P9571302234776834249

`A060354(n)+A005581(n)`
-/

namespace A037235.P9571302234776834249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060354 n + A005581 n

end

end A037235.P9571302234776834249

namespace A037235

/-- `A060354(n)+A005581(n)` -/
def P9571302234776834249.Spec : Prop :=
  ∀ n, P9571302234776834249.a n = A037235 n

end A037235

/-! ## A037235.P11321435401825585822

`A135503(n)+A050407(n)`
-/

namespace A037235.P11321435401825585822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + A050407 n

end

end A037235.P11321435401825585822

namespace A037235

/-- `A135503(n)+A050407(n)` -/
def P11321435401825585822.Spec : Prop :=
  ∀ n, P11321435401825585822.a n = A037235 n

end A037235

/-! ## A037235.P14992593591401341747

`A006331(n)-A000384(n)`
-/

namespace A037235.P14992593591401341747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 n - A000384 n

end

end A037235.P14992593591401341747

namespace A037235

/-- `A006331(n)-A000384(n)` -/
def P14992593591401341747.Spec : Prop :=
  ∀ n, P14992593591401341747.a n = A037235 n

end A037235

/-! ## A037235.P13336111171134589533

`A016061(n)-A005476(n)`
-/

namespace A037235.P13336111171134589533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016061 n - A005476 n

end

end A037235.P13336111171134589533

namespace A037235

/-- `A016061(n)-A005476(n)` -/
def P13336111171134589533.Spec : Prop :=
  ∀ n, P13336111171134589533.a n = A037235 n

end A037235

/-! ## A037235.P18022776660596260878

`A059834(n)-A014106(n)`
-/

namespace A037235.P18022776660596260878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059834 n - A014106 n

end

end A037235.P18022776660596260878

namespace A037235

/-- `A059834(n)-A014106(n)` -/
def P18022776660596260878.Spec : Prop :=
  ∀ n, P18022776660596260878.a n = A037235 n

end A037235

/-! ## A037235.P4590548435466903057

`A005894(n)-A084849(n)`
-/

namespace A037235.P4590548435466903057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005894 n - A084849 n

end

end A037235.P4590548435466903057

namespace A037235

/-- `A005894(n)-A084849(n)` -/
def P4590548435466903057.Spec : Prop :=
  ∀ n, P4590548435466903057.a n = A037235 n

end A037235

/-!
# A037236: Expansion of (3+2*x^2)/(1-x)^4.

The programs for A037236, the canonical program `A037236.P7771006786247151192` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037236 has offset 0).

The definition of A037236 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3+2x^2)/(1-4x+6x^2-4x^3+x^4))` (program `A037236.P7771006786247151192`, by `A037236.P7771006786247151192.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037236.P7771006786247151192

`ogf((3+2x^2)/(1-4x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037236

/-- `ogf((3+2x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P7771006786247151192.Spec : Prop :=
  ∀ n, P7771006786247151192.a n = A037236 n

theorem P7771006786247151192.correct : P7771006786247151192.Spec := by
  intro n
  simp only [A037236]

end A037236

/-! ## A037236.P1191339417620234501

`(n+1)*(5*n²+13*n+18)/6`
-/

namespace A037236.P1191339417620234501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (5 * n ^ 2 + 13 * n + 18) : ℚ) / 6

end

end A037236.P1191339417620234501

namespace A037236

/-- `(n+1)*(5*n²+13*n+18)/6` -/
def P1191339417620234501.Spec : Prop :=
  ∀ n, P1191339417620234501.a n = (A037236 n : ℚ)

end A037236

/-! ## A037236.P1227965196782982956

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=3, a(1)=12, a(2)=32, a(3)=68`
-/

namespace A037236.P1227965196782982956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 12, 32, 68] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A037236.P1227965196782982956

namespace A037236

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P1227965196782982956.Spec : Prop :=
  ∀ n, P1227965196782982956.a n = A037236 n

end A037236

/-! ## A037236.P11073671130950964673

`∑[∑[a(n-1)+5]+2]` with `a(0)=1`
-/

namespace A037236.P11073671130950964673
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037236.P11073671130950964673

namespace A037236

/-- `∑[∑[a(n-1)+5]+2]` -/
def P11073671130950964673.Spec : Prop :=
  ∀ n, (P11073671130950964673.a n : ℤ) = A037236 n

end A037236

/-! ## A037236.P1779263089910489264

`(n+1)^3-∑[C(n, 2)-2]`
-/

namespace A037236.P1779263089910489264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037236.P1779263089910489264

namespace A037236

/-- `(n+1)^3-∑[C(n, 2)-2]` -/
def P1779263089910489264.Spec : Prop :=
  ∀ n, P1779263089910489264.a n = A037236 n

end A037236

/-! ## A037236.P10250734237942176702

`lcm(n, (n+1)²)-∑[∑[n-3]]`
-/

namespace A037236.P10250734237942176702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n ((n + 1) ^ 2) : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037236.P10250734237942176702

namespace A037236

/-- `lcm(n, (n+1)²)-∑[∑[n-3]]` -/
def P10250734237942176702.Spec : Prop :=
  ∀ n, P10250734237942176702.a n = A037236 n

end A037236

/-! ## A037236.P631954329121984390

`A164845(n)+∑[n²]`
-/

namespace A037236.P631954329121984390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164845 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A037236.P631954329121984390

namespace A037236

/-- `A164845(n)+∑[n²]` -/
def P631954329121984390.Spec : Prop :=
  ∀ n, P631954329121984390.a n = A037236 n

end A037236

/-! ## A037236.P3896804805011476779

`∑[A192136(n+1)+1]`
-/

namespace A037236.P3896804805011476779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192136 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037236.P3896804805011476779

namespace A037236

/-- `∑[A192136(n+1)+1]` -/
def P3896804805011476779.Spec : Prop :=
  ∀ n, P3896804805011476779.a n = A037236 n

end A037236

/-! ## A037236.P16192547619885042093

`∑[A000566(n+1)+2]`
-/

namespace A037236.P16192547619885042093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037236.P16192547619885042093

namespace A037236

/-- `∑[A000566(n+1)+2]` -/
def P16192547619885042093.Spec : Prop :=
  ∀ n, P16192547619885042093.a n = A037236 n

end A037236

/-! ## A037236.P9384369727248758592

`A203551(n+1)+1+n`
-/

namespace A037236.P9384369727248758592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203551 (n + 1) + 1 + (n : ℤ)

end

end A037236.P9384369727248758592

namespace A037236

/-- `A203551(n+1)+1+n` -/
def P9384369727248758592.Spec : Prop :=
  ∀ n, P9384369727248758592.a n = A037236 n

end A037236

/-! ## A037236.P8326989594102725271

`A033994(n+1)+∑[1-n]`
-/

namespace A037236.P8326989594102725271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033994 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037236.P8326989594102725271

namespace A037236

/-- `A033994(n+1)+∑[1-n]` -/
def P8326989594102725271.Spec : Prop :=
  ∀ n, P8326989594102725271.a n = A037236 n

end A037236

/-! ## A037236.P12123010892841862224

`A162148(n)+(n+1)*(n+3)`
-/

namespace A037236.P12123010892841862224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162148 n + ((n + 1) * (n + 3) : ℤ)

end

end A037236.P12123010892841862224

namespace A037236

/-- `A162148(n)+(n+1)*(n+3)` -/
def P12123010892841862224.Spec : Prop :=
  ∀ n, P12123010892841862224.a n = A037236 n

end A037236

/-! ## A037236.P5344994522198295167

`∑[∑[A016861(n)]+1]+n+1`
-/

namespace A037236.P5344994522198295167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A037236.P5344994522198295167

namespace A037236

/-- `∑[∑[A016861(n)]+1]+n+1` -/
def P5344994522198295167.Spec : Prop :=
  ∀ n, P5344994522198295167.a n = A037236 n

end A037236

/-! ## A037236.P16175464201931209331

`∑[∑[A016873(n)]-n]+n+1`
-/

namespace A037236.P16175464201931209331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A037236.P16175464201931209331

namespace A037236

/-- `∑[∑[A016873(n)]-n]+n+1` -/
def P16175464201931209331.Spec : Prop :=
  ∀ n, P16175464201931209331.a n = A037236 n

end A037236

/-! ## A037236.P8609813457203047860

`abs(n²-∑[∑[A016885(n)]])-n`
-/

namespace A037236.P8609813457203047860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j| - (n : ℤ)

end

end A037236.P8609813457203047860

namespace A037236

/-- `abs(n²-∑[∑[A016885(n)]])-n` -/
def P8609813457203047860.Spec : Prop :=
  ∀ n, P8609813457203047860.a n = A037236 n

end A037236

/-! ## A037236.P13050669839426815988

`A062748(n)+A016061(n)`
-/

namespace A037236.P13050669839426815988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062748 n + A016061 n

end

end A037236.P13050669839426815988

namespace A037236

/-- `A062748(n)+A016061(n)` -/
def P13050669839426815988.Spec : Prop :=
  ∀ n, P13050669839426815988.a n = A037236 n

end A037236

/-! ## A037236.P6212213947593596187

`A322595(n)+A006003(n)`
-/

namespace A037236.P6212213947593596187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322595 n + A006003 n

end

end A037236.P6212213947593596187

namespace A037236

/-- `A322595(n)+A006003(n)` -/
def P6212213947593596187.Spec : Prop :=
  ∀ n, P6212213947593596187.a n = A037236 n

end A037236

/-! ## A037236.P13426425509628713107

`A268484(n)-A267370(n)`
-/

namespace A037236.P13426425509628713107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268484 n - A267370 n

end

end A037236.P13426425509628713107

namespace A037236

/-- `A268484(n)-A267370(n)` -/
def P13426425509628713107.Spec : Prop :=
  ∀ n, P13426425509628713107.a n = A037236 n

end A037236

/-! ## A037236.P17618369745904648977

`A006331(n+1)+A000125(n)`
-/

namespace A037236.P17618369745904648977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 (n + 1) + A000125 n

end

end A037236.P17618369745904648977

namespace A037236

/-- `A006331(n+1)+A000125(n)` -/
def P17618369745904648977.Spec : Prop :=
  ∀ n, P17618369745904648977.a n = A037236 n

end A037236

/-! ## A037236.P2724206732475509392

`A080956(n)+A033994(n+1)`
-/

namespace A037236.P2724206732475509392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080956 n + A033994 (n + 1)

end

end A037236.P2724206732475509392

namespace A037236

/-- `A080956(n)+A033994(n+1)` -/
def P2724206732475509392.Spec : Prop :=
  ∀ n, P2724206732475509392.a n = A037236 n

end A037236

/-!
# A037237: Expansion of (3 + x^2) / (1 - x)^4.

The programs for A037237, the canonical program `A037237.P1349574544955953072` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037237 has offset 0).

The definition of A037237 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3+x^2)/(1-4x+6x^2-4x^3+x^4))` (program `A037237.P1349574544955953072`, by `A037237.P1349574544955953072.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037237.P1349574544955953072

`ogf((3+x^2)/(1-4x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037237

/-- `ogf((3+x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P1349574544955953072.Spec : Prop :=
  ∀ n, P1349574544955953072.a n = A037237 n

theorem P1349574544955953072.correct : P1349574544955953072.Spec := by
  intro n
  simp only [A037237]

end A037237

/-! ## A037237.P15262856037652352674

`(n+1)*(2*n²+7*n+9)/3`
-/

namespace A037237.P15262856037652352674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (2 * n ^ 2 + 7 * n + 9) : ℚ) / 3

end

end A037237.P15262856037652352674

namespace A037237

/-- `(n+1)*(2*n²+7*n+9)/3` -/
def P15262856037652352674.Spec : Prop :=
  ∀ n, P15262856037652352674.a n = (A037237 n : ℚ)

end A037237

/-! ## A037237.P7909188683932824269

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=3, a(1)=12, a(2)=31, a(3)=64`
-/

namespace A037237.P7909188683932824269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 12, 31, 64] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A037237.P7909188683932824269

namespace A037237

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P7909188683932824269.Spec : Prop :=
  ∀ n, P7909188683932824269.a n = A037237 n

end A037237

/-! ## A037237.P2174302449556380211

`∑[∑[record[xor(3, n)]]-n]`
-/

namespace A037237.P2174302449556380211
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037237.P2174302449556380211

namespace A037237

/-- `∑[∑[record[xor(3, n)]]-n]` -/
def P2174302449556380211.Spec : Prop :=
  ∀ n, P2174302449556380211.a n = A037237 n

end A037237

/-! ## A037237.P9858924344411741187

`∑[∑[a(n-1)+4]]` with `a(0)=3, a(1)=6`
-/

namespace A037237.P9858924344411741187
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 6] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037237.P9858924344411741187

namespace A037237

/-- `∑[∑[a(n-1)+4]]` -/
def P9858924344411741187.Spec : Prop :=
  ∀ n, (P9858924344411741187.a n : ℤ) = A037237 n

end A037237

/-! ## A037237.P5183910293032109010

`∑[C(2*n+3, 2)]-∑[n]`
-/

namespace A037237.P5183910293032109010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 3) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A037237.P5183910293032109010

namespace A037237

/-- `∑[C(2*n+3, 2)]-∑[n]` -/
def P5183910293032109010.Spec : Prop :=
  ∀ n, P5183910293032109010.a n = A037237 n

end A037237

/-! ## A037237.P1204970272608077698

`∑[round(2/acot((n+1)²))]+n`
-/

namespace A037237.P1204970272608077698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot ((n + 1) ^ 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A037237.P1204970272608077698

namespace A037237

/-- `∑[round(2/acot((n+1)²))]+n` -/
def P1204970272608077698.Spec : Prop :=
  ∀ n, P1204970272608077698.a n = A037237 n

end A037237

/-! ## A037237.P4951222925350714270

`∑[1-∑[a(n-1)-4]]` with `a(0)=-2`
-/

namespace A037237.P4951222925350714270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n f2 =>
  f2 (n - 1) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037237.P4951222925350714270

namespace A037237

/-- `∑[1-∑[a(n-1)-4]]` -/
def P4951222925350714270.Spec : Prop :=
  ∀ n, P4951222925350714270.a n = A037237 n

end A037237

/-! ## A037237.P1369953454401994741

`4*C(n+3, 3)-(n+1)²`
-/

namespace A037237.P1369953454401994741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * Nat.choose (n + 3) 3 : ℤ) - ((n + 1) ^ 2 : ℤ)

end

end A037237.P1369953454401994741

namespace A037237

/-- `4*C(n+3, 3)-(n+1)²` -/
def P1369953454401994741.Spec : Prop :=
  ∀ n, P1369953454401994741.a n = A037237 n

end A037237

/-! ## A037237.P4764972205309319816

`∑[∑[record[lcm(2, n+1)]]]+n+1`
-/

namespace A037237.P4764972205309319816
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A037237.P4764972205309319816

namespace A037237

/-- `∑[∑[record[lcm(2, n+1)]]]+n+1` -/
def P4764972205309319816.Spec : Prop :=
  ∀ n, (P4764972205309319816.a n : ℤ) = A037237 n

end A037237

/-! ## A037237.P5358080779394319371

`∑[n+2]+∑[C(2*(n+1), 2)]`
-/

namespace A037237.P5358080779394319371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A037237.P5358080779394319371

namespace A037237

/-- `∑[n+2]+∑[C(2*(n+1), 2)]` -/
def P5358080779394319371.Spec : Prop :=
  ∀ n, (P5358080779394319371.a n : ℤ) = A037237 n

end A037237

/-! ## A037237.P9876533948581730562

`2*(n+1)²+a(n-1)+1` with `a(0)=3`
-/

namespace A037237.P9876533948581730562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  2 * (n + 1) ^ 2 + (a (n - 1) + 1)

end

end A037237.P9876533948581730562

namespace A037237

/-- `2*(n+1)²+a(n-1)+1` -/
def P9876533948581730562.Spec : Prop :=
  ∀ n, (P9876533948581730562.a n : ℤ) = A037237 n

end A037237

/-! ## A037237.P10135900770394766396

`Δ[(n+1)*C(n+2, 3)]+n+1`
-/

namespace A037237.P10135900770394766396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (n + 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 1 : ℤ)

end

end A037237.P10135900770394766396

namespace A037237

/-- `Δ[(n+1)*C(n+2, 3)]+n+1` -/
def P10135900770394766396.Spec : Prop :=
  ∀ n, P10135900770394766396.a n = A037237 n

end A037237

/-! ## A037237.P2453348543983651002

`a(n-1)+2*n*(n+2)+3` with `a(0)=3`
-/

namespace A037237.P2453348543983651002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (2 * (n * (n + 2)) + 3)

end

end A037237.P2453348543983651002

namespace A037237

/-- `a(n-1)+2*n*(n+2)+3` -/
def P2453348543983651002.Spec : Prop :=
  ∀ n, (P2453348543983651002.a n : ℤ) = A037237 n

end A037237

/-! ## A037237.P5464196938781557899

`C(2*(n+2), 2*n+1)/2+n+1`
-/

namespace A037237.P5464196938781557899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 2)) (2 * n + 1) : ℚ) / 2 + (n + 1 : ℚ)

end

end A037237.P5464196938781557899

namespace A037237

/-- `C(2*(n+2), 2*n+1)/2+n+1` -/
def P5464196938781557899.Spec : Prop :=
  ∀ n, P5464196938781557899.a n = (A037237 n : ℚ)

end A037237

/-! ## A037237.P14422144067323442484

`(n+1)²+(n+1)²+a(n-1)+1` with `a(0)=3`
-/

namespace A037237.P14422144067323442484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  (n + 1) ^ 2 + ((n + 1) ^ 2 + (a (n - 1) + 1))

end

end A037237.P14422144067323442484

namespace A037237

/-- `(n+1)²+(n+1)²+a(n-1)+1` -/
def P14422144067323442484.Spec : Prop :=
  ∀ n, (P14422144067323442484.a n : ℤ) = A037237 n

end A037237

/-! ## A037237.P14036373232643754152

`∑[gcd(2, 2*n)*∑[2*n+1]]+n+1`
-/

namespace A037237.P14036373232643754152
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (2 * n) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A037237.P14036373232643754152

namespace A037237

/-- `∑[gcd(2, 2*n)*∑[2*n+1]]+n+1` -/
def P14036373232643754152.Spec : Prop :=
  ∀ n, (P14036373232643754152.a n : ℤ) = A037237 n

end A037237

/-! ## A037237.P13666539138000872830

`∑[A033816(n)+n]`
-/

namespace A037237.P13666539138000872830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033816 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037237.P13666539138000872830

namespace A037237

/-- `∑[A033816(n)+n]` -/
def P13666539138000872830.Spec : Prop :=
  ∀ n, P13666539138000872830.a n = A037237 n

end A037237

/-! ## A037237.P8110844335827768412

`A188475(n+1)+n`
-/

namespace A037237.P8110844335827768412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188475 (n + 1) + (n : ℤ)

end

end A037237.P8110844335827768412

namespace A037237

/-- `A188475(n+1)+n` -/
def P8110844335827768412.Spec : Prop :=
  ∀ n, P8110844335827768412.a n = A037237 n

end A037237

/-! ## A037237.P5845776701802239527

`∑[A005893(n+1)-1]`
-/

namespace A037237.P5845776701802239527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037237.P5845776701802239527

namespace A037237

/-- `∑[A005893(n+1)-1]` -/
def P5845776701802239527.Spec : Prop :=
  ∀ n, P5845776701802239527.a n = A037237 n

end A037237

/-!
# A037239: Numerator of Pi^(2n)/(Gamma(2n)*(1-2^(-2n))*Zeta(2n)); = 8*(highest power of 2 dividing n).

The programs for A037239, the canonical program `A037239.P14852882912207195695` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037239 has offset 1).

The definition of A037239 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037239.P14852882912207195695

`2^(3+val(n+1, 2))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037239

/-- `2^(3+val(n+1, 2))` -/
def P14852882912207195695.Spec : Prop :=
  ∀ n, (P14852882912207195695.a n : ℤ) = A037239 (n + 1)

theorem P14852882912207195695.correct : P14852882912207195695.Spec := by
  intro n
  simp only [A037239, Nat.add_sub_cancel]

end A037239

/-! ## A037239.P10926822284118947567

`4*(xor(n, n+1)+1)`
-/

namespace A037239.P10926822284118947567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (Nat.xor n (n + 1) + 1)

end

end A037239.P10926822284118947567

namespace A037239

/-- `4*(xor(n, n+1)+1)` -/
def P10926822284118947567.Spec : Prop :=
  ∀ n, (P10926822284118947567.a n : ℤ) = A037239 (n + 1)

end A037239

/-! ## A037239.P6617585672112641365

`lcm(4, xor(n, n+1))+4`
-/

namespace A037239.P6617585672112641365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (Nat.xor n (n + 1)) + 4

end

end A037239.P6617585672112641365

namespace A037239

/-- `lcm(4, xor(n, n+1))+4` -/
def P6617585672112641365.Spec : Prop :=
  ∀ n, (P6617585672112641365.a n : ℤ) = A037239 (n + 1)

end A037239

/-! ## A037239.P8625362876069989063

`8*(or(n, n+1)-n)`
-/

namespace A037239.P8625362876069989063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * ((Nat.lor n (n + 1) : ℤ) - (n : ℤ))

end

end A037239.P8625362876069989063

namespace A037239

/-- `8*(or(n, n+1)-n)` -/
def P8625362876069989063.Spec : Prop :=
  ∀ n, P8625362876069989063.a n = A037239 (n + 1)

end A037239

/-! ## A037239.P16991555684858775924

`8*and(n+1, -(n+1))`
-/

namespace A037239.P16991555684858775924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

end

end A037239.P16991555684858775924

namespace A037239

/-- `8*and(n+1, -(n+1))` -/
def P16991555684858775924.Spec : Prop :=
  ∀ n, P16991555684858775924.a n = A037239 (n + 1)

end A037239

/-! ## A037239.P915875278401284864

`8*gcd(n+1, (3-n)^10)`
-/

namespace A037239.P915875278401284864
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Int.gcd (n + 1 : ℤ) ((3 - (n : ℤ)) ^ 10)

end

end A037239.P915875278401284864

namespace A037239

/-- `8*gcd(n+1, (3-n)^10)` -/
def P915875278401284864.Spec : Prop :=
  ∀ n, (P915875278401284864.a n : ℤ) = A037239 (n + 1)

end A037239

/-! ## A037239.P3019789901890613619

`8*(n+1-and(n, n+1))`
-/

namespace A037239.P3019789901890613619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ))

end

end A037239.P3019789901890613619

namespace A037239

/-- `8*(n+1-and(n, n+1))` -/
def P3019789901890613619.Spec : Prop :=
  ∀ n, P3019789901890613619.a n = A037239 (n + 1)

end A037239

/-! ## A037239.P4092073570122526536

`abs(8*or(n+1, -(n+1)))`
-/

namespace A037239.P4092073570122526536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |8 * Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))|

end

end A037239.P4092073570122526536

namespace A037239

/-- `abs(8*or(n+1, -(n+1)))` -/
def P4092073570122526536.Spec : Prop :=
  ∀ n, P4092073570122526536.a n = A037239 (n + 1)

end A037239

/-! ## A037239.P10483920711504918633

`-(8*or(n+1, -(n+1)))`
-/

namespace A037239.P10483920711504918633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(8 * Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)))

end

end A037239.P10483920711504918633

namespace A037239

/-- `-(8*or(n+1, -(n+1)))` -/
def P10483920711504918633.Spec : Prop :=
  ∀ n, P10483920711504918633.a n = A037239 (n + 1)

end A037239

/-! ## A037239.P623739527677808143

`abs(4*xor(n, n-2-2*n))`
-/

namespace A037239.P623739527677808143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 * Int.xor (n : ℤ) ((n : ℤ) - 2 - (2 * n : ℤ))|

end

end A037239.P623739527677808143

namespace A037239

/-- `abs(4*xor(n, n-2-2*n))` -/
def P623739527677808143.Spec : Prop :=
  ∀ n, P623739527677808143.a n = A037239 (n + 1)

end A037239

/-! ## A037239.P6267699302812856150

`-(4*xor(n, n-2-2*n))`
-/

namespace A037239.P6267699302812856150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(4 * Int.xor (n : ℤ) ((n : ℤ) - 2 - (2 * n : ℤ)))

end

end A037239.P6267699302812856150

namespace A037239

/-- `-(4*xor(n, n-2-2*n))` -/
def P6267699302812856150.Spec : Prop :=
  ∀ n, P6267699302812856150.a n = A037239 (n + 1)

end A037239

/-! ## A037239.P5860175937303446992

`A059164(n)/2`
-/

namespace A037239.P5860175937303446992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059164 n : ℚ) / 2

end

end A037239.P5860175937303446992

namespace A037239

/-- `A059164(n)/2` -/
def P5860175937303446992.Spec : Prop :=
  ∀ n, P5860175937303446992.a n = (A037239 (n + 1) : ℚ)

end A037239

/-! ## A037239.P17196574471174143004

`4*sqrt(A059152(n))`
-/

namespace A037239.P17196574471174143004
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 * Real.sqrt (A059152 n : ℝ)

end

end A037239.P17196574471174143004

namespace A037239

/-- `4*sqrt(A059152(n))` -/
def P17196574471174143004.Spec : Prop :=
  ∀ n, P17196574471174143004.a n = (A037239 (n + 1) : ℝ)

end A037239

/-! ## A037239.P18408910895360005558

`2^Δ[A120738(n)]`
-/

namespace A037239.P18408910895360005558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120738 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A037239.P18408910895360005558

namespace A037239

/-- `2^Δ[A120738(n)]` -/
def P18408910895360005558.Spec : Prop :=
  ∀ n, P18408910895360005558.a n = (A037239 (n + 1) : ℚ)

end A037239

/-! ## A037239.P6350273680756871852

`2*A059159(n+1)`
-/

namespace A037239.P6350273680756871852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059159 (n + 1)

end

end A037239.P6350273680756871852

namespace A037239

/-- `2*A059159(n+1)` -/
def P6350273680756871852.Spec : Prop :=
  ∀ n, P6350273680756871852.a n = A037239 (n + 1)

end A037239

/-! ## A037239.P2752237690120612535

`4*A171977(n+1)`
-/

namespace A037239.P2752237690120612535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A171977 (n + 1)

end

end A037239.P2752237690120612535

namespace A037239

/-- `4*A171977(n+1)` -/
def P2752237690120612535.Spec : Prop :=
  ∀ n, P2752237690120612535.a n = A037239 (n + 1)

end A037239

/-! ## A037239.P2289405372371171192

`2/3*A059161(n)`
-/

namespace A037239.P2289405372371171192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A059161 n : ℚ)

end

end A037239.P2289405372371171192

namespace A037239

/-- `2/3*A059161(n)` -/
def P2289405372371171192.Spec : Prop :=
  ∀ n, P2289405372371171192.a n = (A037239 (n + 1) : ℚ)

end A037239

/-! ## A037239.P11487947372432908016

`8*A006519(n+1)`
-/

namespace A037239.P11487947372432908016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A006519 (n + 1)

end

end A037239.P11487947372432908016

namespace A037239

/-- `8*A006519(n+1)` -/
def P11487947372432908016.Spec : Prop :=
  ∀ n, P11487947372432908016.a n = A037239 (n + 1)

end A037239

/-! ## A037239.P14318038873739798831

`2^(A085058(n)+1)`
-/

namespace A037239.P14318038873739798831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A085058 n + 1 : ℤ)

end

end A037239.P14318038873739798831

namespace A037239

/-- `2^(A085058(n)+1)` -/
def P14318038873739798831.Spec : Prop :=
  ∀ n, P14318038873739798831.a n = (A037239 (n + 1) : ℚ)

end A037239

/-! ## A037239.P2980888067048902899

`2^A090739(n+1)`
-/

namespace A037239.P2980888067048902899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A090739 (n + 1) : ℤ)

end

end A037239.P2980888067048902899

namespace A037239

/-- `2^A090739(n+1)` -/
def P2980888067048902899.Spec : Prop :=
  ∀ n, P2980888067048902899.a n = (A037239 (n + 1) : ℚ)

end A037239

/-!
# A037240: Molien series for 3-D group X1.

The programs for A037240, the canonical program `A037240.P11525866944506951334` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037240 has offset 0).

The definition of A037240 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037240.P11525866944506951334

`A165188(n+1)+A083708(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A037240

/-- `A165188(n+1)+A083708(n)` -/
def P11525866944506951334.Spec : Prop :=
  ∀ n, P11525866944506951334.a n = A037240 n

theorem P11525866944506951334.correct : P11525866944506951334.Spec := by
  intro n
  simp only [A037240]

end A037240

/-! ## A037240.P14305225137489978802

`2*A005513(n+6)-A294085(n)`
-/

namespace A037240.P14305225137489978802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005513 (n + 6) - A294085 n

end

end A037240.P14305225137489978802

namespace A037240

/-- `2*A005513(n+6)-A294085(n)` -/
def P14305225137489978802.Spec : Prop :=
  ∀ n, P14305225137489978802.a n = A037240 n

end A037240

/-! ## A037240.P15894291249789658552

`A050531(n)-A000292(A110654(n))`
-/

namespace A037240.P15894291249789658552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050531 n - A000292 (A110654 n).toNat

end

end A037240.P15894291249789658552

namespace A037240

/-- `A050531(n)-A000292(A110654(n))` -/
def P15894291249789658552.Spec : Prop :=
  ∀ n, P15894291249789658552.a n = A037240 n

theorem P15894291249789658552.correct : P15894291249789658552.Spec := by
  intro n
  simp only [A037240, Nat.add_sub_cancel, A037240.P15894291249789658552.a, A037240.P11525866944506951334.a, A000292, A000292.P18322089543142633594.a, A050531, A050531.P14066139163259779683.a, A083708, A083708.P12213489656389351217.a, A110654, A110654.P360289776162656549.a, A165188, A165188.P17491138411917498515.a, A008731, A008731.P7025943894574725275.a, A083707, A083707.P10638826215811034503.a, A213389, A213389.P8644831371672901747.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A037240

/-! ## A037240.P6596985534934238566

`A050531(n)-A000292(∑[A000035(n)])`
-/

namespace A037240.P6596985534934238566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050531 n - A000292 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A037240.P6596985534934238566

namespace A037240

/-- `A050531(n)-A000292(∑[A000035(n)])` -/
def P6596985534934238566.Spec : Prop :=
  ∀ n, P6596985534934238566.a n = A037240 n

end A037240

/-! ## A037240.P12487998306922260093

`A050531(n)-A000292(Δ[A002620(n)])`
-/

namespace A037240.P12487998306922260093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050531 n - A000292 (f1 (n + 1) - f1 n).toNat

end

end A037240.P12487998306922260093

namespace A037240

/-- `A050531(n)-A000292(Δ[A002620(n)])` -/
def P12487998306922260093.Spec : Prop :=
  ∀ n, P12487998306922260093.a n = A037240 n

end A037240

/-! ## A037240.P8513300340477301681

`A083708(n)+A254708(n)-A254594(n)`
-/

namespace A037240.P8513300340477301681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083708 n + (A254708 n - A254594 n)

end

end A037240.P8513300340477301681

namespace A037240

/-- `A083708(n)+A254708(n)-A254594(n)` -/
def P8513300340477301681.Spec : Prop :=
  ∀ n, P8513300340477301681.a n = A037240 n

end A037240

/-! ## A037240.P15830342577519639132

`A083708(n)+A029253(A047270(n+1))`
-/

namespace A037240.P15830342577519639132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083708 n + A029253 (A047270 (n + 1)).toNat

end

end A037240.P15830342577519639132

namespace A037240

/-- `A083708(n)+A029253(A047270(n+1))` -/
def P15830342577519639132.Spec : Prop :=
  ∀ n, P15830342577519639132.a n = A037240 n

end A037240

/-! ## A037240.P3763032614894584148

`A089353(A167614(n+1))-A000292(A110654(n))`
-/

namespace A037240.P3763032614894584148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089353 (A167614 (n + 1)).toNat - A000292 (A110654 n).toNat

end

end A037240.P3763032614894584148

namespace A037240

/-- `A089353(A167614(n+1))-A000292(A110654(n))` -/
def P3763032614894584148.Spec : Prop :=
  ∀ n, P3763032614894584148.a n = A037240 n

end A037240

/-!
# A037241: Expansion of (1+3*x^2+7*x^3+15*x^4+13*x^5+15*x^6+8*x^7+4*x^8)/((1-x)*(1-x^2)^3*(1-x^3)^2).

The programs for A037241, the canonical program `A037241.P6777902179529882618` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037241 has offset 0).

The definition of A037241 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x^2+7x^3+15x^4+13x^5+15x^6+8x^7+4x^8)/(1-x-3x^2+x^3+5x^4+3x^5-6x^6-6x^7+3x^8+5x^9+x^10-3x^11-x^12+x^13))` (program `A037241.P6777902179529882618`, by `A037241.P6777902179529882618.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037241.P6777902179529882618

`ogf((1+3x^2+7x^3+15x^4+13x^5+15x^6+8x^7+4x^8)/(1-x-3x^2+x^3+5x^4+3x^5-6x^6-6x^7+3x^8+5x^9+x^10-3x^11-x^12+x^13))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037241

/-- `ogf((1+3x^2+7x^3+15x^4+13x^5+15x^6+8x^7+4x^8)/(1-x-3x^2+x^3+5x^4+3x^5-6x^6-6x^7+3x^8+5x^9+x^10-3x^11-x^12+x^13))` -/
def P6777902179529882618.Spec : Prop :=
  ∀ n, P6777902179529882618.a n = A037241 n

theorem P6777902179529882618.correct : P6777902179529882618.Spec := by
  intro n
  simp only [A037241]

end A037241

/-!
# A037242: Molien series for 3-D group R2+R3.

The programs for A037242, the canonical program `A037242.P8254883051873546182` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037242 has offset 0).

The definition of A037242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037242.P8254883051873546182

`∑[ceil(xor(1, n)/6)+n*A051274(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037242

/-- `∑[ceil(xor(1, n)/6)+n*A051274(n)]` -/
def P8254883051873546182.Spec : Prop :=
  ∀ n, P8254883051873546182.a n = A037242 n

theorem P8254883051873546182.correct : P8254883051873546182.Spec := by
  intro n
  simp only [A037242]

end A037242

/-! ## A037242.P2243423061176484596

`∑[A110654(Δ[n²]*A051274(n))]`
-/

namespace A037242.P2243423061176484596
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * A051274 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037242.P2243423061176484596

namespace A037242

/-- `∑[A110654(Δ[n²]*A051274(n))]` -/
def P2243423061176484596.Spec : Prop :=
  ∀ n, P2243423061176484596.a n = A037242 n

end A037242

/-! ## A037242.P3934904398661944023

`A110654((2*n+1)*A051274(n))+a(n-1)` with `a(0)=1`
-/

namespace A037242.P3934904398661944023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A110654 ((2 * n + 1 : ℤ) * A051274 n).toNat + a (n - 1)

end

end A037242.P3934904398661944023

namespace A037242

/-- `A110654((2*n+1)*A051274(n))+a(n-1)` -/
def P3934904398661944023.Spec : Prop :=
  ∀ n, P3934904398661944023.a n = A037242 n

end A037242

/-!
# A037243: Molien series for 3-D group R4.

The programs for A037243, there is no canonical definition to state claims against.
-/

/-! ## A037243.P18260881607552923349

`A248017(A000124(n+2))+A037240(n)`
-/

namespace A037243.P18260881607552923349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248017 (A000124 (n + 2)).toNat + A037240 n

end

end A037243.P18260881607552923349

/-! ## A037243.P16297275615929465272

`A248017(A000217(n+3))+A037240(n)`
-/

namespace A037243.P16297275615929465272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248017 (A000217 (n + 3)).toNat + A037240 n

end

end A037243.P16297275615929465272

/-! ## A037243.P4613064288393089759

`A078705(A078705(2*(n+1))*A267614(n))`
-/

namespace A037243.P4613064288393089759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078705 (A078705 (2 * (n + 1)) * A267614 n).toNat

end

end A037243.P4613064288393089759

/-!
# A037244: Base 100 expansion of Pi.

The programs for A037244, there is no canonical definition to state claims against.
-/

/-! ## A037244.P9717145750480766493

`A107114(A004277(n))%(∑[4*n]+2)²`
-/

namespace A037244.P9717145750480766493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107114 (A004277 n).toNat) (((∑ j ∈ Finset.range (n + 1), f1 j + 2) ^ 2 : ℕ) : ℤ)

end

end A037244.P9717145750480766493

/-! ## A037244.P6274412105685584267

`A107114(A028310(2*n))%A199027(n)`
-/

namespace A037244.P6274412105685584267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107114 (A028310 (2 * n)).toNat) (A199027 n)

end

end A037244.P6274412105685584267

/-! ## A037244.P7742282471859441522

`abs(A107114(A004277(n))%A210066(n+1))`
-/

namespace A037244.P7742282471859441522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A107114 (A004277 n).toNat) (A210066 (n + 1))|

end

end A037244.P7742282471859441522

/-! ## A037244.P970377094086232686

`A107114(A004275(n+1))%A107109(n+1)`
-/

namespace A037244.P970377094086232686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107114 (A004275 (n + 1)).toNat) (A107109 (n + 1))

end

end A037244.P970377094086232686

/-! ## A037244.P12493061098894739625

`and(A107114(A028310(2*n)), A127582(2*(n+1)))`
-/

namespace A037244.P12493061098894739625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107114 (A028310 (2 * n)).toNat) (A127582 (2 * (n + 1)))

end

end A037244.P12493061098894739625

/-!
# A037245: Number of unrooted self-avoiding walks of n steps on square lattice.

The programs for A037245, there is no canonical definition to state claims against.
-/

/-! ## A037245.P17367156754886109628

`(A001411(n+1)+A323188(n+1)+A323189(n+1)+4)/16`
-/

namespace A037245.P17367156754886109628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001411 (n + 1) + A323188 (n + 1) + A323189 (n + 1) + 4 : ℚ) / 16

end

end A037245.P17367156754886109628

/-! ## A037245.P7237568694133840710

`A054846(A150538(n))`
-/

namespace A037245.P7237568694133840710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A150538 n).toNat

end

end A037245.P7237568694133840710

/-! ## A037245.P523783201748088985

`A100196(A150538(n)+1)`
-/

namespace A037245.P523783201748088985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A150538 n + 1).toNat

end

end A037245.P523783201748088985

/-! ## A037245.P13804670327492464986

`A008679(A121331(n+7))`
-/

namespace A037245.P13804670327492464986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A121331 (n + 7)).toNat

end

end A037245.P13804670327492464986

/-!
# A037246: Total number of fixed points in free homeomorphically irreducible trees with n nodes.

The programs for A037246, there is no canonical definition to state claims against.
-/

/-! ## A037246.P3667107953441006045

`A273190(xor(A221990(n+1), A262956(n+1)))`
-/

namespace A037246.P3667107953441006045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (Int.xor (A221990 (n + 1)) (A262956 (n + 1))).toNat

end

end A037246.P3667107953441006045

/-! ## A037246.P7272929348644987970

`A273190(xor(A221990(n+1), A316925(n+1)))`
-/

namespace A037246.P7272929348644987970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (Int.xor (A221990 (n + 1)) (A316925 (n + 1))).toNat

end

end A037246.P7272929348644987970

/-!
# A037248: a(n) = n^6*(n^2 - 1)*(n^6 - 1).

The programs for A037248, the canonical program `A037248.P3192070609097546724` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037248 has offset 0).

The definition of A037248 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6*(n²-1)*(n^6-1)` (program `A037248.P3192070609097546724`, by `A037248.P3192070609097546724.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037248.P3192070609097546724

`n^6*(n²-1)*(n^6-1)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037248

/-- `n^6*(n²-1)*(n^6-1)` -/
def P3192070609097546724.Spec : Prop :=
  ∀ n, P3192070609097546724.a n = A037248 n

theorem P3192070609097546724.correct : P3192070609097546724.Spec := by
  intro n
  simp only [A037248]

end A037248

/-! ## A037248.P13142764011462390150

`abs((n^9-n^3)*A133754(n))`
-/

namespace A037248.P13142764011462390150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n ^ 9 : ℤ) - (n ^ 3 : ℤ)) * A133754 n|

end

end A037248.P13142764011462390150

namespace A037248

/-- `abs((n^9-n^3)*A133754(n))` -/
def P13142764011462390150.Spec : Prop :=
  ∀ n, P13142764011462390150.a n = A037248 n

end A037248

/-! ## A037248.P13347385293191508160

`A218132(n)²/A059826(n)`
-/

namespace A037248.P13347385293191508160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218132 n ^ 2 : ℚ) / (A059826 n : ℚ)

end

end A037248.P13347385293191508160

namespace A037248

/-- `A218132(n)²/A059826(n)` -/
def P13347385293191508160.Spec : Prop :=
  ∀ n, P13347385293191508160.a n = (A037248 n : ℚ)

end A037248

/-! ## A037248.P18284767927961082739

`lcm(A001014(n), A138849(A002522(n)))`
-/

namespace A037248.P18284767927961082739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001014 n) (A138849 (A002522 n).toNat)

end

end A037248.P18284767927961082739

namespace A037248

/-- `lcm(A001014(n), A138849(A002522(n)))` -/
def P18284767927961082739.Spec : Prop :=
  ∀ n, (P18284767927961082739.a n : ℤ) = A037248 n

end A037248

/-! ## A037248.P6208994234308773896

`A218132(n)²/A002061(A002522(n))`
-/

namespace A037248.P6208994234308773896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218132 n ^ 2 : ℚ) / (A002061 (A002522 n).toNat : ℚ)

end

end A037248.P6208994234308773896

namespace A037248

/-- `A218132(n)²/A002061(A002522(n))` -/
def P6208994234308773896.Spec : Prop :=
  ∀ n, P6208994234308773896.a n = (A037248 n : ℚ)

end A037248

/-!
# A037249: 

The programs for A037249, there is no canonical definition to state claims against.
-/

/-! ## A037249.P8513407742409425140

`n^24*(n²-1)*(n^6-1)*(n^8-1)*(n^12-1)`
-/

namespace A037249.P8513407742409425140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 24 : ℤ) * (((n ^ 2 : ℤ) - 1) * (((n ^ 6 : ℤ) - 1) * (((n ^ 8 : ℤ) - 1) * ((n ^ 12 : ℤ) - 1))))

end

end A037249.P8513407742409425140

/-!
# A037250: a(n) = n^2*(n^2 + 1)*(n-1).

The programs for A037250, the canonical program `A037250.P16915158763133105816` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037250 has offset 0).

The definition of A037250 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(n²+1)*(n-1)` (program `A037250.P16915158763133105816`, by `A037250.P16915158763133105816.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037250.P16915158763133105816

`n²*(n²+1)*(n-1)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037250

/-- `n²*(n²+1)*(n-1)` -/
def P16915158763133105816.Spec : Prop :=
  ∀ n, P16915158763133105816.a n = A037250 n

theorem P16915158763133105816.correct : P16915158763133105816.Spec := by
  intro n
  simp only [A037250]

end A037250

/-! ## A037250.P12290089104729911439

`A191012(n)-n`
-/

namespace A037250.P12290089104729911439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191012 n - (n : ℤ)

end

end A037250.P12290089104729911439

namespace A037250

/-- `A191012(n)-n` -/
def P12290089104729911439.Spec : Prop :=
  ∀ n, P12290089104729911439.a n = A037250 n

theorem P12290089104729911439.correct : P12290089104729911439.Spec := by
  intro n
  simp only [A037250, Nat.add_sub_cancel, A037250.P12290089104729911439.a, A037250.P16915158763133105816.a, A191012, A191012.P3049009521135598509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037250

/-! ## A037250.P10176781756566247759

`A382612(n)-n²`
-/

namespace A037250.P10176781756566247759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382612 n - (n ^ 2 : ℤ)

end

end A037250.P10176781756566247759

namespace A037250

/-- `A382612(n)-n²` -/
def P10176781756566247759.Spec : Prop :=
  ∀ n, P10176781756566247759.a n = A037250 n

theorem P10176781756566247759.correct : P10176781756566247759.Spec := by
  intro n
  simp only [A037250, Nat.add_sub_cancel, A037250.P10176781756566247759.a, A037250.P16915158763133105816.a, A382612, A382612.P15305136820978696030.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037250

/-! ## A037250.P6890940336767183817

`A062159(n)+1-n`
-/

namespace A037250.P6890940336767183817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062159 n + (1 - (n : ℤ))

end

end A037250.P6890940336767183817

namespace A037250

/-- `A062159(n)+1-n` -/
def P6890940336767183817.Spec : Prop :=
  ∀ n, P6890940336767183817.a n = A037250 n

theorem P6890940336767183817.correct : P6890940336767183817.Spec := by
  intro n
  simp only [A037250, Nat.add_sub_cancel, A037250.P6890940336767183817.a, A037250.P16915158763133105816.a, A062159, A062159.P693128724581151823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037250

/-! ## A037250.P10836895840793268550

`A136008(n)/(n+1)`
-/

namespace A037250.P10836895840793268550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136008 n : ℚ) / (n + 1 : ℚ)

end

end A037250.P10836895840793268550

namespace A037250

/-- `A136008(n)/(n+1)` -/
def P10836895840793268550.Spec : Prop :=
  ∀ n, P10836895840793268550.a n = (A037250 n : ℚ)

theorem P10836895840793268550.correct : P10836895840793268550.Spec := by
  intro n
  simp only [A037250, Nat.add_sub_cancel, A037250.P10836895840793268550.a, A037250.P16915158763133105816.a, A136008, A136008.P6256269428496424843.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037250

/-! ## A037250.P1710578550005610160

`A133072(n)-n²²`
-/

namespace A037250.P1710578550005610160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133072 n - ((n ^ 2) ^ 2 : ℤ)

end

end A037250.P1710578550005610160

namespace A037250

/-- `A133072(n)-n²²` -/
def P1710578550005610160.Spec : Prop :=
  ∀ n, P1710578550005610160.a n = A037250 n

theorem P1710578550005610160.correct : P1710578550005610160.Spec := by
  intro n
  simp only [A037250, Nat.add_sub_cancel, A037250.P1710578550005610160.a, A037250.P16915158763133105816.a, A133072, A133072.P17384567826697917406.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037250

/-! ## A037250.P263536051620232605

`A131472(n)/(n+1)-n`
-/

namespace A037250.P263536051620232605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131472 n : ℚ) / (n + 1 : ℚ) - (n : ℚ)

end

end A037250.P263536051620232605

namespace A037250

/-- `A131472(n)/(n+1)-n` -/
def P263536051620232605.Spec : Prop :=
  ∀ n, P263536051620232605.a n = (A037250 n : ℚ)

theorem P263536051620232605.correct : P263536051620232605.Spec := by
  intro n
  simp only [A037250, Nat.add_sub_cancel, A037250.P263536051620232605.a, A037250.P16915158763133105816.a, A131472, A131472.P7274504250054804871.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037250

/-! ## A037250.P16666780187795354785

`n*A061167(n)/(n+1)`
-/

namespace A037250.P16666780187795354785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A061167 n : ℚ) / (n + 1 : ℚ)

end

end A037250.P16666780187795354785

namespace A037250

/-- `n*A061167(n)/(n+1)` -/
def P16666780187795354785.Spec : Prop :=
  ∀ n, P16666780187795354785.a n = (A037250 n : ℚ)

theorem P16666780187795354785.correct : P16666780187795354785.Spec := by
  intro n
  simp only [A037250, Nat.add_sub_cancel, A037250.P16666780187795354785.a, A037250.P16915158763133105816.a, A061167, A061167.P10314290942309870978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037250

/-! ## A037250.P13043858536795905458

`abs((n^4+n²)*A023443(n))`
-/

namespace A037250.P13043858536795905458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 4 + n ^ 2 : ℤ) * A023443 n|

end

end A037250.P13043858536795905458

namespace A037250

/-- `abs((n^4+n²)*A023443(n))` -/
def P13043858536795905458.Spec : Prop :=
  ∀ n, P13043858536795905458.a n = A037250 n

end A037250

/-! ## A037250.P7219577918497318033

`A085538(n)+A045991(n)`
-/

namespace A037250.P7219577918497318033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085538 n + A045991 n

end

end A037250.P7219577918497318033

namespace A037250

/-- `A085538(n)+A045991(n)` -/
def P7219577918497318033.Spec : Prop :=
  ∀ n, P7219577918497318033.a n = A037250 n

theorem P7219577918497318033.correct : P7219577918497318033.Spec := by
  intro n
  simp only [A037250, Nat.add_sub_cancel, A037250.P7219577918497318033.a, A037250.P16915158763133105816.a, A045991, A045991.P16915764248010155243.a, A085538, A085538.P4728706090558992157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037250

/-! ## A037250.P17663021857986545005

`A152017(n)+A061317(n)`
-/

namespace A037250.P17663021857986545005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152017 n + A061317 n

end

end A037250.P17663021857986545005

namespace A037250

/-- `A152017(n)+A061317(n)` -/
def P17663021857986545005.Spec : Prop :=
  ∀ n, P17663021857986545005.a n = A037250 n

theorem P17663021857986545005.correct : P17663021857986545005.Spec := by
  intro n
  simp only [A037250, Nat.add_sub_cancel, A037250.P17663021857986545005.a, A037250.P16915158763133105816.a, A061317, A061317.P8488168899613189018.a, A152017, A152017.P13729736122009059544.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037250

/-! ## A037250.P11651796994561426502

`A135497(n)-A085537(n)`
-/

namespace A037250.P11651796994561426502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135497 n - A085537 n

end

end A037250.P11651796994561426502

namespace A037250

/-- `A135497(n)-A085537(n)` -/
def P11651796994561426502.Spec : Prop :=
  ∀ n, P11651796994561426502.a n = A037250 n

theorem P11651796994561426502.correct : P11651796994561426502.Spec := by
  intro n
  simp only [A037250, Nat.add_sub_cancel, A037250.P11651796994561426502.a, A037250.P16915158763133105816.a, A085537, A085537.P16655703013365461026.a, A135497, A135497.P15522374803762714202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037250

/-! ## A037250.P7664090514794410530

`A155977(n)-A071253(n)`
-/

namespace A037250.P7664090514794410530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155977 n - A071253 n

end

end A037250.P7664090514794410530

namespace A037250

/-- `A155977(n)-A071253(n)` -/
def P7664090514794410530.Spec : Prop :=
  ∀ n, P7664090514794410530.a n = A037250 n

theorem P7664090514794410530.correct : P7664090514794410530.Spec := by
  intro n
  simp only [A037250, Nat.add_sub_cancel, A037250.P7664090514794410530.a, A037250.P16915158763133105816.a, A071253, A071253.P8759095852449772691.a, A155977, A155977.P18222476826860172301.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037250

/-! ## A037250.P8477184901407720569

`A000584(n)-A309372(n)`
-/

namespace A037250.P8477184901407720569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n - A309372 n

end

end A037250.P8477184901407720569

namespace A037250

/-- `A000584(n)-A309372(n)` -/
def P8477184901407720569.Spec : Prop :=
  ∀ n, P8477184901407720569.a n = A037250 n

theorem P8477184901407720569.correct : P8477184901407720569.Spec := by
  intro n
  simp only [A037250, Nat.add_sub_cancel, A037250.P8477184901407720569.a, A037250.P16915158763133105816.a, A000584, A000584.P5477385692209315495.a, A309372, A309372.P14598993035271615198.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037250

/-! ## A037250.P6744533489381429586

`A272162(n)-A060884(n)`
-/

namespace A037250.P6744533489381429586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272162 n - A060884 n

end

end A037250.P6744533489381429586

namespace A037250

/-- `A272162(n)-A060884(n)` -/
def P6744533489381429586.Spec : Prop :=
  ∀ n, P6744533489381429586.a n = A037250 n

theorem P6744533489381429586.correct : P6744533489381429586.Spec := by
  intro n
  simp only [A037250, Nat.add_sub_cancel, A037250.P6744533489381429586.a, A037250.P16915158763133105816.a, A060884, A060884.P17835107360669808419.a, A272162, A272162.P3521161050144454669.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037250

/-! ## A037250.P10417111784833589876

`lcm(A000290(n), A062158(n))`
-/

namespace A037250.P10417111784833589876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000290 n) (A062158 n)

end

end A037250.P10417111784833589876

namespace A037250

/-- `lcm(A000290(n), A062158(n))` -/
def P10417111784833589876.Spec : Prop :=
  ∀ n, (P10417111784833589876.a n : ℤ) = A037250 n

end A037250

/-! ## A037250.P5709169499675682882

`lcm(A071253(n), A239229(n))`
-/

namespace A037250.P5709169499675682882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A071253 n) (A239229 n)

end

end A037250.P5709169499675682882

namespace A037250

/-- `lcm(A071253(n), A239229(n))` -/
def P5709169499675682882.Spec : Prop :=
  ∀ n, (P5709169499675682882.a n : ℤ) = A037250 n

end A037250

/-! ## A037250.P5324887531075241478

`A002604(n)-(A060888(n)+n)`
-/

namespace A037250.P5324887531075241478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002604 n - (A060888 n + (n : ℤ))

end

end A037250.P5324887531075241478

namespace A037250

/-- `A002604(n)-(A060888(n)+n)` -/
def P5324887531075241478.Spec : Prop :=
  ∀ n, P5324887531075241478.a n = A037250 n

theorem P5324887531075241478.correct : P5324887531075241478.Spec := by
  intro n
  simp only [A037250, Nat.add_sub_cancel, A037250.P5324887531075241478.a, A037250.P16915158763133105816.a, A002604, A002604.P7413616626921950618.a, A060888, A060888.P13267519967057820847.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037250

/-! ## A037250.P11506696578574457478

`A100242(n)-(A212135(n)+n)`
-/

namespace A037250.P11506696578574457478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100242 n - (A212135 n + (n : ℤ))

end

end A037250.P11506696578574457478

namespace A037250

/-- `A100242(n)-(A212135(n)+n)` -/
def P11506696578574457478.Spec : Prop :=
  ∀ n, P11506696578574457478.a n = A037250 n

end A037250

/-! ## A037250.P6473911164379203026

`A131471(n)-(A309372(n)+n)`
-/

namespace A037250.P6473911164379203026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131471 n - (A309372 n + (n : ℤ))

end

end A037250.P6473911164379203026

namespace A037250

/-- `A131471(n)-(A309372(n)+n)` -/
def P6473911164379203026.Spec : Prop :=
  ∀ n, P6473911164379203026.a n = A037250 n

theorem P6473911164379203026.correct : P6473911164379203026.Spec := by
  intro n
  simp only [A037250, Nat.add_sub_cancel, A037250.P6473911164379203026.a, A037250.P16915158763133105816.a, A131471, A131471.P12482115226042697987.a, A309372, A309372.P14598993035271615198.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037250

/-!
# A037251: a(n) = n^3*(n^3 + 1)*(n-1).

The programs for A037251, the canonical program `A037251.P2363510451119139966` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037251 has offset 0).

The definition of A037251 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3*(n^3+1)*(n-1)` (program `A037251.P2363510451119139966`, by `A037251.P2363510451119139966.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037251.P2363510451119139966

`n^3*(n^3+1)*(n-1)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037251

/-- `n^3*(n^3+1)*(n-1)` -/
def P2363510451119139966.Spec : Prop :=
  ∀ n, P2363510451119139966.a n = A037251 n

theorem P2363510451119139966.correct : P2363510451119139966.Spec := by
  intro n
  simp only [A037251]

end A037251

/-! ## A037251.P1866342778986922693

`A240930(n)+A085537(n)`
-/

namespace A037251.P1866342778986922693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240930 n + A085537 n

end

end A037251.P1866342778986922693

namespace A037251

/-- `A240930(n)+A085537(n)` -/
def P1866342778986922693.Spec : Prop :=
  ∀ n, P1866342778986922693.a n = A037251 n

theorem P1866342778986922693.correct : P1866342778986922693.Spec := by
  intro n
  simp only [A037251, Nat.add_sub_cancel, A037251.P1866342778986922693.a, A037251.P2363510451119139966.a, A085537, A085537.P16655703013365461026.a, A240930, A240930.P4459008851257504207.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037251

/-! ## A037251.P13220039632506501373

`lcm(A027441(n), A133754(n))`
-/

namespace A037251.P13220039632506501373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027441 n) (A133754 n)

end

end A037251.P13220039632506501373

namespace A037251

/-- `lcm(A027441(n), A133754(n))` -/
def P13220039632506501373.Spec : Prop :=
  ∀ n, (P13220039632506501373.a n : ℤ) = A037251 n

end A037251

/-! ## A037251.P3246980644383125466

`A218132(n)/A002061(n+1)`
-/

namespace A037251.P3246980644383125466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218132 n : ℚ) / (A002061 (n + 1) : ℚ)

end

end A037251.P3246980644383125466

namespace A037251

/-- `A218132(n)/A002061(n+1)` -/
def P3246980644383125466.Spec : Prop :=
  ∀ n, P3246980644383125466.a n = (A037251 n : ℚ)

end A037251

/-! ## A037251.P9868712868955739066

`A240930(n)+n*A045991(n)`
-/

namespace A037251.P9868712868955739066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240930 n + (n : ℤ) * A045991 n

end

end A037251.P9868712868955739066

namespace A037251

/-- `A240930(n)+n*A045991(n)` -/
def P9868712868955739066.Spec : Prop :=
  ∀ n, P9868712868955739066.a n = A037251 n

theorem P9868712868955739066.correct : P9868712868955739066.Spec := by
  intro n
  simp only [A037251, Nat.add_sub_cancel, A037251.P9868712868955739066.a, A037251.P2363510451119139966.a, A045991, A045991.P16915764248010155243.a, A240930, A240930.P4459008851257504207.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037251

/-! ## A037251.P3969285645655596326

`A218132(n)/(A002522(n)+n)`
-/

namespace A037251.P3969285645655596326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218132 n : ℚ) / (A002522 n + (n : ℤ) : ℚ)

end

end A037251.P3969285645655596326

namespace A037251

/-- `A218132(n)/(A002522(n)+n)` -/
def P3969285645655596326.Spec : Prop :=
  ∀ n, P3969285645655596326.a n = (A037251 n : ℚ)

theorem P3969285645655596326.correct : P3969285645655596326.Spec := by
  intro n
  simp only [A037251, Nat.add_sub_cancel, A037251.P3969285645655596326.a, A037251.P2363510451119139966.a, A002522, A002522.P3778392011853271743.a, A218132, A218132.P14114599560491314620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037251

/-! ## A037251.P4273628138933426947

`A085537(n)+n²*A085538(n)`
-/

namespace A037251.P4273628138933426947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085537 n + (n ^ 2 : ℤ) * A085538 n

end

end A037251.P4273628138933426947

namespace A037251

/-- `A085537(n)+n²*A085538(n)` -/
def P4273628138933426947.Spec : Prop :=
  ∀ n, P4273628138933426947.a n = A037251 n

theorem P4273628138933426947.correct : P4273628138933426947.Spec := by
  intro n
  simp only [A037251, Nat.add_sub_cancel, A037251.P4273628138933426947.a, A037251.P2363510451119139966.a, A085537, A085537.P16655703013365461026.a, A085538, A085538.P4728706090558992157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037251

/-! ## A037251.P9481241026374482108

`A001015(n)+A085537(n)-A001014(n)`
-/

namespace A037251.P9481241026374482108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 n + (A085537 n - A001014 n)

end

end A037251.P9481241026374482108

namespace A037251

/-- `A001015(n)+A085537(n)-A001014(n)` -/
def P9481241026374482108.Spec : Prop :=
  ∀ n, P9481241026374482108.a n = A037251 n

theorem P9481241026374482108.correct : P9481241026374482108.Spec := by
  intro n
  simp only [A037251, Nat.add_sub_cancel, A037251.P9481241026374482108.a, A037251.P2363510451119139966.a, A001014, A001014.P10270364271630987481.a, A001015, A001015.P16876498052081657174.a, A085537, A085537.P16655703013365461026.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037251

/-! ## A037251.P13585788054298017395

`A085537(n)+A000578(n)*A085537(n)`
-/

namespace A037251.P13585788054298017395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085537 n + A000578 n * A085537 n

end

end A037251.P13585788054298017395

namespace A037251

/-- `A085537(n)+A000578(n)*A085537(n)` -/
def P13585788054298017395.Spec : Prop :=
  ∀ n, P13585788054298017395.a n = A037251 n

theorem P13585788054298017395.correct : P13585788054298017395.Spec := by
  intro n
  simp only [A037251, Nat.add_sub_cancel, A037251.P13585788054298017395.a, A037251.P2363510451119139966.a, A000578, A000578.P12162961755414704816.a, A085537, A085537.P16655703013365461026.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037251

/-! ## A037251.P12987304949207469873

`A085537(n)+A240931(n)-A085537(n)²`
-/

namespace A037251.P12987304949207469873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085537 n + (A240931 n - A085537 n ^ 2)

end

end A037251.P12987304949207469873

namespace A037251

/-- `A085537(n)+A240931(n)-A085537(n)²` -/
def P12987304949207469873.Spec : Prop :=
  ∀ n, P12987304949207469873.a n = A037251 n

theorem P12987304949207469873.correct : P12987304949207469873.Spec := by
  intro n
  simp only [A037251, Nat.add_sub_cancel, A037251.P12987304949207469873.a, A037251.P2363510451119139966.a, A085537, A085537.P16655703013365461026.a, A240931, A240931.P12790518617216736864.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037251

/-! ## A037251.P10932605805046559471

`lcm(A000578(n)+A000578(n)², A258837(n))`
-/

namespace A037251.P10932605805046559471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000578 n + A000578 n ^ 2) (A258837 n)

end

end A037251.P10932605805046559471

namespace A037251

/-- `lcm(A000578(n)+A000578(n)², A258837(n))` -/
def P10932605805046559471.Spec : Prop :=
  ∀ n, (P10932605805046559471.a n : ℤ) = A037251 n

end A037251

/-! ## A037251.P5884254145714865336

`A002061(n)*A218132(n)/A002061(A002522(n))`
-/

namespace A037251.P5884254145714865336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002061 n * A218132 n : ℚ) / (A002061 (A002522 n).toNat : ℚ)

end

end A037251.P5884254145714865336

namespace A037251

/-- `A002061(n)*A218132(n)/A002061(A002522(n))` -/
def P5884254145714865336.Spec : Prop :=
  ∀ n, P5884254145714865336.a n = (A037251 n : ℚ)

end A037251

/-!
# A037252: a(n) = n^12*(n^6 + 1)*(n^4 - 1)*(n^3 + 1)*(n-1).

The programs for A037252, the canonical program `A037252.P14184466525229113819` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037252 has offset 0).

The definition of A037252 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^12*(n^6+1)*(n^4-1)*(n^3+1)*(n-1)` (program `A037252.P14184466525229113819`, by `A037252.P14184466525229113819.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037252.P14184466525229113819

`n^12*(n^6+1)*(n^4-1)*(n^3+1)*(n-1)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037252

/-- `n^12*(n^6+1)*(n^4-1)*(n^3+1)*(n-1)` -/
def P14184466525229113819.Spec : Prop :=
  ∀ n, P14184466525229113819.a n = A037252 n

theorem P14184466525229113819.correct : P14184466525229113819.Spec := by
  intro n
  simp only [A037252]

end A037252

/-!
# A037253: 

The programs for A037253, there is no canonical definition to state claims against.
-/

/-! ## A037253.P5060817332047630722

`n^12*(n^8+n^4+1)*(n^6-1)*(n²-1)`
-/

namespace A037253.P5060817332047630722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 12 : ℤ) * ((n ^ 8 + n ^ 4 + 1 : ℤ) * (((n ^ 6 : ℤ) - 1) * ((n ^ 2 : ℤ) - 1)))

end

end A037253.P5060817332047630722

/-! ## A037253.P13573769134706590932

`A064587(n²)`
-/

namespace A037253.P13573769134706590932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064587 (n ^ 2)

end

end A037253.P13573769134706590932

/-!
# A037254: Triangle read by rows: T(n,k) (n >= 1, 1 <= k< = n) gives number of non-distorting tie-avoiding integer vote weights.

The programs for A037254, there is no canonical definition to state claims against.
-/

/-! ## A037254.P10628176797252153223

`A096858(n+1)+A035187(A000040(3*n+4)*A096858(n+1))`
-/

namespace A037254.P10628176797252153223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096858 (n + 1) + A035187 (A000040 (3 * n + 4) * A096858 (n + 1)).toNat

end

end A037254.P10628176797252153223

/-!
# A037255: For n weights, number of combinations when limited to two weights per pan.

The programs for A037255, the canonical program `A037255.P10452294254245880788` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037255 has offset 0).

The definition of A037255 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037255.P10452294254245880788

`(n^4-2*n^3+7*n²+2*n)/8`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037255

/-- `(n^4-2*n^3+7*n²+2*n)/8` -/
def P10452294254245880788.Spec : Prop :=
  ∀ n, P10452294254245880788.a n = (A037255 n : ℚ)

end A037255

/-! ## A037255.P8329373863309749644

`C(C(n, 2), 2)+n²`
-/

namespace A037255.P8329373863309749644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose n 2) 2 + n ^ 2

end

end A037255.P8329373863309749644

namespace A037255

/-- `C(C(n, 2), 2)+n²` -/
def P8329373863309749644.Spec : Prop :=
  ∀ n, (P8329373863309749644.a n : ℤ) = A037255 n

end A037255

/-! ## A037255.P13583085166574506182

`∑[n]+C(∑[abs(1-n)], 2)`
-/

namespace A037255.P13583085166574506182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j).toNat 2

end

end A037255.P13583085166574506182

namespace A037255

/-- `∑[n]+C(∑[abs(1-n)], 2)` -/
def P13583085166574506182.Spec : Prop :=
  ∀ n, (P13583085166574506182.a n : ℤ) = A037255 n

end A037255

/-! ## A037255.P8279253513486496741

`C(C(n, 2)+2, 2)+n-1`
-/

namespace A037255.P8279253513486496741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.choose n 2 + 2) 2 : ℤ) + ((n : ℤ) - 1)

end

end A037255.P8279253513486496741

namespace A037255

/-- `C(C(n, 2)+2, 2)+n-1` -/
def P8279253513486496741.Spec : Prop :=
  ∀ n, P8279253513486496741.a n = A037255 n

end A037255

/-! ## A037255.P8107812469007225868

`∑[∑[∑[a(n-1)+3]]]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A037255.P8107812469007225868
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 3] fun n f3 =>
  f3 (n - 1) + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037255.P8107812469007225868

namespace A037255

/-- `∑[∑[∑[a(n-1)+3]]]` -/
def P8107812469007225868.Spec : Prop :=
  ∀ n, (P8107812469007225868.a n : ℤ) = A037255 n

end A037255

/-! ## A037255.P3751977310857463913

`A050534(n)+n²`
-/

namespace A037255.P3751977310857463913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 n + (n ^ 2 : ℤ)

end

end A037255.P3751977310857463913

namespace A037255

/-- `A050534(n)+n²` -/
def P3751977310857463913.Spec : Prop :=
  ∀ n, P3751977310857463913.a n = A037255 n

end A037255

/-! ## A037255.P11604503240576869400

`A006528(n)-A086602(n)`
-/

namespace A037255.P11604503240576869400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006528 n - A086602 n

end

end A037255.P11604503240576869400

namespace A037255

/-- `A006528(n)-A086602(n)` -/
def P11604503240576869400.Spec : Prop :=
  ∀ n, P11604503240576869400.a n = A037255 n

end A037255

/-! ## A037255.P6681237268223042744

`A290312(n)-A001845(n)`
-/

namespace A037255.P6681237268223042744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290312 n - A001845 n

end

end A037255.P6681237268223042744

namespace A037255

/-- `A290312(n)-A001845(n)` -/
def P6681237268223042744.Spec : Prop :=
  ∀ n, P6681237268223042744.a n = A037255 n

end A037255

/-! ## A037255.P10164062429064345238

`A215862(n)-A101165(n)`
-/

namespace A037255.P10164062429064345238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215862 n - A101165 n

end

end A037255.P10164062429064345238

namespace A037255

/-- `A215862(n)-A101165(n)` -/
def P10164062429064345238.Spec : Prop :=
  ∀ n, P10164062429064345238.a n = A037255 n

end A037255

/-! ## A037255.P263994234103925472

`A361099(n)-A000332(n)`
-/

namespace A037255.P263994234103925472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361099 n - A000332 n

end

end A037255.P263994234103925472

namespace A037255

/-- `A361099(n)-A000332(n)` -/
def P263994234103925472.Spec : Prop :=
  ∀ n, P263994234103925472.a n = A037255 n

end A037255

/-! ## A037255.P8606457965555322311

`A004255(n+1)-A218152(n)`
-/

namespace A037255.P8606457965555322311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004255 (n + 1) - A218152 n

end

end A037255.P8606457965555322311

namespace A037255

/-- `A004255(n+1)-A218152(n)` -/
def P8606457965555322311.Spec : Prop :=
  ∀ n, P8606457965555322311.a n = A037255 n

end A037255

/-! ## A037255.P9229819922651690835

`A100855(n)-A228317(n+1)`
-/

namespace A037255.P9229819922651690835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100855 n - A228317 (n + 1)

end

end A037255.P9229819922651690835

namespace A037255

/-- `A100855(n)-A228317(n+1)` -/
def P9229819922651690835.Spec : Prop :=
  ∀ n, P9229819922651690835.a n = A037255 n

end A037255

/-! ## A037255.P16956152325794892931

`A066375(n+1)-A267707(n)`
-/

namespace A037255.P16956152325794892931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066375 (n + 1) - A267707 n

end

end A037255.P16956152325794892931

namespace A037255

/-- `A066375(n+1)-A267707(n)` -/
def P16956152325794892931.Spec : Prop :=
  ∀ n, P16956152325794892931.a n = A037255 n

end A037255

/-! ## A037255.P3873848449176061781

`∑[A028310(n)-(1-A060354(n))]`
-/

namespace A037255.P3873848449176061781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (1 - A060354 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037255.P3873848449176061781

namespace A037255

/-- `∑[A028310(n)-(1-A060354(n))]` -/
def P3873848449176061781.Spec : Prop :=
  ∀ n, P3873848449176061781.a n = A037255 n

end A037255

/-! ## A037255.P4860047238379102721

`A352405(n+1)-A176145(n+3)`
-/

namespace A037255.P4860047238379102721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352405 (n + 1) - A176145 (n + 3)

end

end A037255.P4860047238379102721

namespace A037255

/-- `A352405(n+1)-A176145(n+3)` -/
def P4860047238379102721.Spec : Prop :=
  ∀ n, P4860047238379102721.a n = A037255 n

end A037255

/-! ## A037255.P6114224162385236272

`∑[∑[A139482(n+1)]-A139482(n+1)]`
-/

namespace A037255.P6114224162385236272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139482 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A139482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037255.P6114224162385236272

namespace A037255

/-- `∑[∑[A139482(n+1)]-A139482(n+1)]` -/
def P6114224162385236272.Spec : Prop :=
  ∀ n, P6114224162385236272.a n = A037255 n

end A037255

/-! ## A037255.P17201991133545980691

`A001296(n)-(A051925(n)+A007290(n))`
-/

namespace A037255.P17201991133545980691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 n - (A051925 n + A007290 n)

end

end A037255.P17201991133545980691

namespace A037255

/-- `A001296(n)-(A051925(n)+A007290(n))` -/
def P17201991133545980691.Spec : Prop :=
  ∀ n, P17201991133545980691.a n = A037255 n

end A037255

/-! ## A037255.P17722969886233009444

`A161680(n+1)+A161680(n)+A050534(n)`
-/

namespace A037255.P17722969886233009444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 1) + (A161680 n + A050534 n)

end

end A037255.P17722969886233009444

namespace A037255

/-- `A161680(n+1)+A161680(n)+A050534(n)` -/
def P17722969886233009444.Spec : Prop :=
  ∀ n, P17722969886233009444.a n = A037255 n

end A037255

/-!
# A037256: a(n) = n!*Sum_{i=0..n-1} (n-i)*(-2)^i/(i+1)!.

The programs for A037256, there is no canonical definition to state claims against.
-/

/-! ## A037256.P13639646007234038089

`A063083(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A037256.P13639646007234038089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A063083 n + (n : ℤ) * a (n - 1)

end

end A037256.P13639646007234038089

/-! ## A037256.P14102083683786217863

`A088127(n)-A087981(n)`
-/

namespace A037256.P14102083683786217863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088127 n - A087981 n

end

end A037256.P14102083683786217863

/-! ## A037256.P12610530619592894308

`A063083(n+1)-A000023(n)`
-/

namespace A037256.P12610530619592894308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063083 (n + 1) - A000023 n

end

end A037256.P12610530619592894308

/-! ## A037256.P3299663682030878858

`A063083(n+1)+A063083(n)-A062282(n)`
-/

namespace A037256.P3299663682030878858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063083 (n + 1) + (A063083 n - A062282 n)

end

end A037256.P3299663682030878858

/-! ## A037256.P13498575904540999595

`2*(n-1)*a(n-1)-(n-4)*(n-1)*a(n-2)-2*(n-2)*(n-1)*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A037256.P13498575904540999595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  2 * (((n : ℤ) - 1) * a (n - 1)) - ((n : ℤ) - 4) * (((n : ℤ) - 1) * a (n - 2)) - 2 * (((n : ℤ) - 2) * (((n : ℤ) - 1) * a (n - 3)))

end

end A037256.P13498575904540999595

/-! ## A037256.P9532214230015948833

`A000142(n+1)-A088127(n)`
-/

namespace A037256.P9532214230015948833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - A088127 n

end

end A037256.P9532214230015948833

/-!
# A037257: a() = 1,3,... [ A037257 ], differences = 2,... [ A037258 ] and 2nd differences [ A037259 ] are disjoint and monotonic; adjoin next free number to 2nd differences unless it would produce a duplicate in which case ignore.

The programs for A037257, there is no canonical definition to state claims against.
-/

/-! ## A037257.P8997760993591283805

`A037258(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A037257.P8997760993591283805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A037258 (n - 1) + a (n - 1)

end

end A037257.P8997760993591283805

/-! ## A037257.P6301191463627054683

`∑[A037258(A028310(n)-1)]-1`
-/

namespace A037257.P6301191463627054683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037258 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A037257.P6301191463627054683

/-! ## A037257.P2729779526890576869

`∑[A037258(n)]+1-A037258(n)`
-/

namespace A037257.P2729779526890576869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037258 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A037258 n)

end

end A037257.P2729779526890576869

/-! ## A037257.P5521499345290064067

`∑[A037258(n-a(A000038(n)))]` with `a(0)=1`
-/

namespace A037257.P5521499345290064067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A037258 ((n : ℤ) - f1 (A000038 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037257.P5521499345290064067

/-! ## A037257.P9716707639488062429

`∑[A037258(A065033(2*n)-1)]-1`
-/

namespace A037257.P9716707639488062429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037258 (A065033 (2 * n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A037257.P9716707639488062429

/-!
# A037258: First differences of A037257.

The programs for A037258, there is no canonical definition to state claims against.
-/

/-! ## A037258.P16816450482084736558

`A037257(n+1)-A037257(n)`
-/

namespace A037258.P16816450482084736558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037257 (n + 1) - A037257 n

end

end A037258.P16816450482084736558

/-! ## A037258.P13857944401519151383

`A037259(n-1)+a(n-1)` with `a(0)=2`
-/

namespace A037258.P13857944401519151383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A037259 (n - 1) + a (n - 1)

end

end A037258.P13857944401519151383

/-! ## A037258.P6447144568601490619

`∑[A037259(n)]+2-A037259(n)`
-/

namespace A037258.P6447144568601490619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A037259 n)

end

end A037258.P6447144568601490619

/-! ## A037258.P9742807277818285250

`Δ[A037257(n)]`
-/

namespace A037258.P9742807277818285250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037258.P9742807277818285250

/-! ## A037258.P4105702736925118180

`A037259(n-1)-A001489(a(n-1))` with `a(0)=2`
-/

namespace A037258.P4105702736925118180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A037259 (n - 1) - A001489 (a (n - 1)).toNat

end

end A037258.P4105702736925118180

/-!
# A037259: Second differences of A037257.

The programs for A037259, there is no canonical definition to state claims against.
-/

/-! ## A037259.P616097687321325792

`A037257(n+2)-2*A037257(n+1)+A037257(n)`
-/

namespace A037259.P616097687321325792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037257 (n + 2) - 2 * A037257 (n + 1) + A037257 n

end

end A037259.P616097687321325792

/-! ## A037259.P2955715107283541959

`Δ[A037258(n)]`
-/

namespace A037259.P2955715107283541959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037258 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037259.P2955715107283541959

/-! ## A037259.P12037740318239272758

`A037258(n+1)-A037258(n)`
-/

namespace A037259.P12037740318239272758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037258 (n + 1) - A037258 n

end

end A037259.P12037740318239272758

/-! ## A037259.P7835213075041441904

`Δ[Δ[A037257(n)]]`
-/

namespace A037259.P7835213075041441904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037257 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037259.P7835213075041441904

/-! ## A037259.P12522862286090897114

`A225387(comp[2*A045943(n)²])`
-/

namespace A037259.P12522862286090897114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045943 n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225387 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A037259.P12522862286090897114

/-! ## A037259.P5634404373122429007

`A225387(comp[A045943(∑[3*n])])`
-/

namespace A037259.P5634404373122429007
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225387 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A037259.P5634404373122429007

/-! ## A037259.P16068515677893902748

`A225387(comp[A212250(2*n+1)])`
-/

namespace A037259.P16068515677893902748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212250 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225387 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A037259.P16068515677893902748

/-!
# A037260: a()=A037260 and its first [ A037261 ], 2nd [ A037262 ] and 3rd [ A037263 ] differences together include every number at most once and are monotonic and minimal.

The programs for A037260, there is no canonical definition to state claims against.
-/

/-! ## A037260.P3496468895292920283

`A037261(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A037260.P3496468895292920283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A037261 (n - 1) + a (n - 1)

end

end A037260.P3496468895292920283

/-! ## A037260.P8904052771138864750

`∑[A037261(A028310(n)-1)]-1`
-/

namespace A037260.P8904052771138864750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037261 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A037260.P8904052771138864750

/-! ## A037260.P16121096514805353166

`∑[A037261(n)]+1-A037261(n)`
-/

namespace A037260.P16121096514805353166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A037261 n)

end

end A037260.P16121096514805353166

/-! ## A037260.P3031025534310824184

`∑[A037261(A259361(n²))]-1`
-/

namespace A037260.P3031025534310824184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037261 (A259361 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A037260.P3031025534310824184

/-! ## A037260.P18162990765497070489

`A020725(∑[A037261(n)])-A037261(n)`
-/

namespace A037260.P18162990765497070489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A037261 n

end

end A037260.P18162990765497070489

/-!
# A037261: First differences of A037260.

The programs for A037261, there is no canonical definition to state claims against.
-/

/-! ## A037261.P5454789084398775662

`A037262(n-1)+a(n-1)` with `a(0)=2`
-/

namespace A037261.P5454789084398775662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A037262 (n - 1) + a (n - 1)

end

end A037261.P5454789084398775662

/-! ## A037261.P5652692341680478769

`∑[A037262(n)]+2-A037262(n)`
-/

namespace A037261.P5652692341680478769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A037262 n)

end

end A037261.P5652692341680478769

/-! ## A037261.P4956895873906388575

`Δ[A037260(n)]`
-/

namespace A037261.P4956895873906388575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037260 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037261.P4956895873906388575

/-! ## A037261.P11479398352626850354

`A037260(n+1)-A037260(n)`
-/

namespace A037261.P11479398352626850354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037260 (n + 1) - A037260 n

end

end A037261.P11479398352626850354

/-! ## A037261.P4852664465023499875

`A037260(n+2)%(A037262(n)+A037260(n+1))`
-/

namespace A037261.P4852664465023499875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037260 (n + 2)) (A037262 n + A037260 (n + 1))

end

end A037261.P4852664465023499875

/-!
# A037262: Second differences of A037260.

The programs for A037262, there is no canonical definition to state claims against.
-/

/-! ## A037262.P6514215082957198163

`A037263(n-1)+a(n-1)` with `a(0)=4`
-/

namespace A037262.P6514215082957198163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A037263 (n - 1) + a (n - 1)

end

end A037262.P6514215082957198163

/-! ## A037262.P16507569652754508641

`∑[A037263(n)]+4-A037263(n)`
-/

namespace A037262.P16507569652754508641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (4 - A037263 n)

end

end A037262.P16507569652754508641

/-! ## A037262.P4700711026641638420

`Δ[A037261(n)]`
-/

namespace A037262.P4700711026641638420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037262.P4700711026641638420

/-! ## A037262.P8383560817541471800

`A037261(n+1)-A037261(n)`
-/

namespace A037262.P8383560817541471800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037261 (n + 1) - A037261 n

end

end A037262.P8383560817541471800

/-! ## A037262.P6109236211327505115

`Δ[Δ[A037260(n)]]`
-/

namespace A037262.P6109236211327505115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037260 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037262.P6109236211327505115

/-! ## A037262.P6633044708691569246

`record[A037261(A126759(n))]-A037261(n)`
-/

namespace A037262.P6633044708691569246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037261 (A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A037261 n

end

end A037262.P6633044708691569246

/-!
# A037263: Third differences of A037260.

The programs for A037263, there is no canonical definition to state claims against.
-/

/-! ## A037263.P6780321456519410410

`Δ[A037262(n)]`
-/

namespace A037263.P6780321456519410410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037263.P6780321456519410410

/-! ## A037263.P9590595709663823510

`A037262(n+1)-A037262(n)`
-/

namespace A037263.P9590595709663823510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037262 (n + 1) - A037262 n

end

end A037263.P9590595709663823510

/-! ## A037263.P13367909210520888309

`Δ[Δ[A037261(n)]]`
-/

namespace A037263.P13367909210520888309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037261 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037263.P13367909210520888309

/-! ## A037263.P15482935418763228928

`A037261(n+2)%(A037262(n)+A037261(n+1))`
-/

namespace A037263.P15482935418763228928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037261 (n + 2)) (A037262 n + A037261 (n + 1))

end

end A037263.P15482935418763228928

/-! ## A037263.P12989645232777143486

`Δ[Δ[Δ[A037260(n)]]]`
-/

namespace A037263.P12989645232777143486
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037260 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037263.P12989645232777143486

/-! ## A037263.P10623633103631313284

`record[A037262(A193592(n))]-A037262(n)`
-/

namespace A037263.P10623633103631313284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037262 (A193592 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A037262 n

end

end A037263.P10623633103631313284

/-!
# A037264: Numbers whose sum of reciprocals of digits is the reciprocal of an integer.

The programs for A037264, there is no canonical definition to state claims against.
-/

/-! ## A037264.P12823835333325781417

`∩[A062179(n+1), A214958(n+1)]`
-/

namespace A037264.P12823835333325781417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037264.P12823835333325781417

/-! ## A037264.P14227702509949166754

`record[A004719(A214958(n+1))]`
-/

namespace A037264.P14227702509949166754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A214958 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037264.P14227702509949166754

/-! ## A037264.P6885842258920384682

`record[A004719(eq[1, A214949(n)])]`
-/

namespace A037264.P6885842258920384682
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214949 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037264.P6885842258920384682

/-! ## A037264.P1070661154801117407

`filter[A214958(n+1), A168046(#)]`
-/

namespace A037264.P1070661154801117407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A037264.P1070661154801117407

/-! ## A037264.P4907859451072373345

`eq[1, A214949(n*A168046(n))]`
-/

namespace A037264.P4907859451072373345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214949 ((n : ℤ) * A168046 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037264.P4907859451072373345

/-! ## A037264.P4874206672930009691

`eq[2, A168046(n)+A214949(n)²]`
-/

namespace A037264.P4874206672930009691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n + A214949 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037264.P4874206672930009691

/-! ## A037264.P16737062541683641085

`∩[A052382(n+1), A214958(n+1)]`
-/

namespace A037264.P16737062541683641085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037264.P16737062541683641085

/-! ## A037264.P9927195275948113443

`∩[A062998(n+1), A214958(n+1)]`
-/

namespace A037264.P9927195275948113443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037264.P9927195275948113443

/-! ## A037264.P6307431365355595392

`eq[A168046(n+1), A214949(n+1)]+1`
-/

namespace A037264.P6307431365355595392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214949 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037264.P6307431365355595392

/-! ## A037264.P1912771055337147056

`record[A004719(n+1)/A214949(n+1)²]`
-/

namespace A037264.P1912771055337147056
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004719 (n + 1) : ℚ) / (A214949 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037264.P1912771055337147056

/-!
# A037265: Integers arising from A037264.

The programs for A037265, there is no canonical definition to state claims against.
-/

/-! ## A037265.P17135015044215472154

`A214950(∪[A214959(3*n+4)², A037264(n+1)])`
-/

namespace A037265.P17135015044215472154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214959 (3 * n + 4) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037264 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214950 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A037265.P17135015044215472154

/-!
# A037267: Number of Boolean functions on n inputs with representing polynomial of max degree n.

The programs for A037267, the canonical program `A037267.P18310968918639958944` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037267 has offset 0).

The definition of A037267 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037267.P18310968918639958944

`A045621(2^n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037267

/-- `A045621(2^n)` -/
def P18310968918639958944.Spec : Prop :=
  ∀ n, P18310968918639958944.a n = A037267 n

theorem P18310968918639958944.correct : P18310968918639958944.Spec := by
  intro n
  simp only [A037267]

end A037267

/-! ## A037267.P11614662959067061715

`A307768(A011782(n+1)+1)/2`
-/

namespace A037267.P11614662959067061715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307768 (A011782 (n + 1) + 1).toNat : ℚ) / 2

end

end A037267.P11614662959067061715

namespace A037267

/-- `A307768(A011782(n+1)+1)/2` -/
def P11614662959067061715.Spec : Prop :=
  ∀ n, P11614662959067061715.a n = (A037267 n : ℚ)

end A037267

/-! ## A037267.P17096731933121341916

`A307768(A131577(n+1)+1)/2`
-/

namespace A037267.P17096731933121341916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307768 (A131577 (n + 1) + 1).toNat : ℚ) / 2

end

end A037267.P17096731933121341916

namespace A037267

/-- `A307768(A131577(n+1)+1)/2` -/
def P17096731933121341916.Spec : Prop :=
  ∀ n, P17096731933121341916.a n = (A037267 n : ℚ)

end A037267

/-! ## A037267.P400419718311560527

`A000079(A000079(n))-A037293(n)`
-/

namespace A037267.P400419718311560527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000079 n).toNat - A037293 n

end

end A037267.P400419718311560527

namespace A037267

/-- `A000079(A000079(n))-A037293(n)` -/
def P400419718311560527.Spec : Prop :=
  ∀ n, P400419718311560527.a n = A037267 n

end A037267

/-! ## A037267.P12444893164863277183

`A020639(A008574(n))*A058622(2^n)`
-/

namespace A037267.P12444893164863277183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008574 n).toNat * A058622 (2 ^ n)

end

end A037267.P12444893164863277183

namespace A037267

/-- `A020639(A008574(n))*A058622(2^n)` -/
def P12444893164863277183.Spec : Prop :=
  ∀ n, P12444893164863277183.a n = A037267 n

end A037267

/-!
# A037268: Sum of reciprocals of digits = 1.

The programs for A037268, there is no canonical definition to state claims against.
-/

/-! ## A037268.P10351994786994505607

`record[A037264(n+1)/A037265(n+1)²]`
-/

namespace A037268.P10351994786994505607
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037264 (n + 1) : ℚ) / (A037265 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037268.P10351994786994505607

/-! ## A037268.P2718842775950481133

`∩[A037264(n+1), A214959(n+1)]`
-/

namespace A037268.P2718842775950481133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037268.P2718842775950481133

/-! ## A037268.P244374475424286947

`∩[A034708(n+1), A037264(n+1)]`
-/

namespace A037268.P244374475424286947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037268.P244374475424286947

/-! ## A037268.P13470556737666817166

`∩[A034708(n+1), A214958(n+1)]`
-/

namespace A037268.P13470556737666817166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037268.P13470556737666817166

/-! ## A037268.P7289764462132621653

`∩[A034708(n+1), A214959(n+1)]`
-/

namespace A037268.P7289764462132621653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037268.P7289764462132621653

/-! ## A037268.P7197117884047819108

`∩[A037264(n+1), A214957(n+1)]`
-/

namespace A037268.P7197117884047819108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037268.P7197117884047819108

/-! ## A037268.P8394678788584067696

`∩[A062179(n+1), A214959(n+1)]`
-/

namespace A037268.P8394678788584067696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037268.P8394678788584067696

/-!
# A037269: Expansion of (1+x^30)/((1-x^4)(1-x^5)(1-x^6)(1-x^12)).

The programs for A037269, there is no canonical definition to state claims against.
-/

/-! ## A037269.P5420264620863829412

`A091446(A034549(n+1))+A029331(n)`
-/

namespace A037269.P5420264620863829412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091446 (A034549 (n + 1)).toNat + A029331 n

end

end A037269.P5420264620863829412

/-! ## A037269.P17839889701065610787

`A029331(n)+A025456(A185255(n))`
-/

namespace A037269.P17839889701065610787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029331 n + A025456 (A185255 n).toNat

end

end A037269.P17839889701065610787

/-! ## A037269.P11922616879262122233

`A029331(A351078(A185255(n))+n)`
-/

namespace A037269.P11922616879262122233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029331 (A351078 (A185255 n).toNat + (n : ℤ)).toNat

end

end A037269.P11922616879262122233

/-!
# A037270: a(n) = n^2*(n^2 + 1)/2.

The programs for A037270, the canonical program `A037270.P2151832567254615611` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037270 has offset 0).

The definition of A037270 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(n²+1)/2` (program `A037270.P12224807082477183145`, by `A037270.P12224807082477183145.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037270.P12739326728085085049

`C(n²+1, 2)`
-/

namespace A037270.P12739326728085085049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2 + 1) 2

end

end A037270.P12739326728085085049

namespace A037270

/-- `C(n²+1, 2)` -/
def P12739326728085085049.Spec : Prop :=
  ∀ n, (P12739326728085085049.a n : ℤ) = A037270 n

end A037270

/-! ## A037270.P18374666177325929419

`(n^4+n²)/2`
-/

namespace A037270.P18374666177325929419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 4 + n ^ 2 : ℚ) / 2

end

end A037270.P18374666177325929419

namespace A037270

/-- `(n^4+n²)/2` -/
def P18374666177325929419.Spec : Prop :=
  ∀ n, P18374666177325929419.a n = (A037270 n : ℚ)

theorem P18374666177325929419.correct : P18374666177325929419.Spec := by
  intro n
  induction n with
  | zero => simp [A037270, A037270.P18374666177325929419.a, A037270.P2151832567254615611.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A037270, Nat.add_sub_cancel, A037270.P18374666177325929419.a, A037270.P2151832567254615611.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A037270

/-! ## A037270.P12224807082477183145

`n²*(n²+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A037270.P12224807082477183145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 * (n ^ 2 + 1) : ℚ) / 2

end

end A037270.P12224807082477183145

namespace A037270

/-- `n²*(n²+1)/2` -/
def P12224807082477183145.Spec : Prop :=
  ∀ n, P12224807082477183145.a n = (A037270 n : ℚ)

theorem P12224807082477183145.correct : P12224807082477183145.Spec := by
  intro n
  induction n with
  | zero => simp [A037270, A037270.P12224807082477183145.a, A037270.P2151832567254615611.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A037270, Nat.add_sub_cancel, A037270.P12224807082477183145.a, A037270.P2151832567254615611.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A037270

/-! ## A037270.P2151832567254615611

`a(n-1)+n^3+(n-1)^3` with `a(0)=0`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037270

/-- `a(n-1)+n^3+(n-1)^3` -/
def P2151832567254615611.Spec : Prop :=
  ∀ n, P2151832567254615611.a n = A037270 n

theorem P2151832567254615611.correct : P2151832567254615611.Spec := by
  intro n
  simp only [A037270]

end A037270

/-! ## A037270.P13008776209522357173

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=10, a(3)=45, a(4)=136`
-/

namespace A037270.P13008776209522357173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 10, 45, 136] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A037270.P13008776209522357173

namespace A037270

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P13008776209522357173.Spec : Prop :=
  ∀ n, P13008776209522357173.a n = A037270 n

end A037270

/-! ## A037270.P16273467520815630497

`n*A006003(n)`
-/

namespace A037270.P16273467520815630497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A006003 n

end

end A037270.P16273467520815630497

namespace A037270

/-- `n*A006003(n)` -/
def P16273467520815630497.Spec : Prop :=
  ∀ n, P16273467520815630497.a n = A037270 n

end A037270

/-! ## A037270.P14625927372167340682

`a(n-1)+A005898(n-1)` with `a(0)=0`
-/

namespace A037270.P14625927372167340682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A005898 (n - 1)

end

end A037270.P14625927372167340682

namespace A037270

/-- `a(n-1)+A005898(n-1)` -/
def P14625927372167340682.Spec : Prop :=
  ∀ n, P14625927372167340682.a n = A037270 n

end A037270

/-! ## A037270.P15508313849739543305

`A000217(n²)`
-/

namespace A037270.P15508313849739543305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n ^ 2)

end

end A037270.P15508313849739543305

namespace A037270

/-- `A000217(n²)` -/
def P15508313849739543305.Spec : Prop :=
  ∀ n, P15508313849739543305.a n = A037270 n

end A037270

/-! ## A037270.P537053800551682724

`n^4-C(n², 2)`
-/

namespace A037270.P537053800551682724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - (Nat.choose (n ^ 2) 2 : ℤ)

end

end A037270.P537053800551682724

namespace A037270

/-- `n^4-C(n², 2)` -/
def P537053800551682724.Spec : Prop :=
  ∀ n, P537053800551682724.a n = A037270 n

end A037270

/-! ## A037270.P3786566474612092192

`n*((n+1)*C(n, 2)+n)`
-/

namespace A037270.P3786566474612092192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((n + 1) * Nat.choose n 2 + n)

end

end A037270.P3786566474612092192

namespace A037270

/-- `n*((n+1)*C(n, 2)+n)` -/
def P3786566474612092192.Spec : Prop :=
  ∀ n, (P3786566474612092192.a n : ℤ) = A037270 n

end A037270

/-! ## A037270.P13666694251776954655

`∑[2*n]-(n-C(n², 2))`
-/

namespace A037270.P13666694251776954655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - (Nat.choose (n ^ 2) 2 : ℤ))

end

end A037270.P13666694251776954655

namespace A037270

/-- `∑[2*n]-(n-C(n², 2))` -/
def P13666694251776954655.Spec : Prop :=
  ∀ n, P13666694251776954655.a n = A037270 n

end A037270

/-! ## A037270.P15330480297357048809

`n²+lcm(n, n-1)*∑[n]`
-/

namespace A037270.P15330480297357048809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + Int.lcm (n : ℤ) ((n : ℤ) - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A037270.P15330480297357048809

namespace A037270

/-- `n²+lcm(n, n-1)*∑[n]` -/
def P15330480297357048809.Spec : Prop :=
  ∀ n, (P15330480297357048809.a n : ℤ) = A037270 n

end A037270

/-! ## A037270.P2070138126152876334

`n*∑[∑[a(n-1)+3]]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A037270.P2070138126152876334
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A037270.P2070138126152876334

namespace A037270

/-- `n*∑[∑[a(n-1)+3]]` -/
def P2070138126152876334.Spec : Prop :=
  ∀ n, (P2070138126152876334.a n : ℤ) = A037270 n

end A037270

/-! ## A037270.P9232171099126805461

`floor(A059826(n)/2)`
-/

namespace A037270.P9232171099126805461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A059826 n : ℚ) / 2⌋

end

end A037270.P9232171099126805461

namespace A037270

/-- `floor(A059826(n)/2)` -/
def P9232171099126805461.Spec : Prop :=
  ∀ n, P9232171099126805461.a n = A037270 n

end A037270

/-! ## A037270.P13996741585621130038

`2*A006528(n)-n`
-/

namespace A037270.P13996741585621130038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006528 n - (n : ℤ)

end

end A037270.P13996741585621130038

namespace A037270

/-- `2*A006528(n)-n` -/
def P13996741585621130038.Spec : Prop :=
  ∀ n, P13996741585621130038.a n = A037270 n

end A037270

/-! ## A037270.P548375337323286149

`A054603(n)/2-n`
-/

namespace A037270.P548375337323286149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054603 n : ℚ) / 2 - (n : ℚ)

end

end A037270.P548375337323286149

namespace A037270

/-- `A054603(n)/2-n` -/
def P548375337323286149.Spec : Prop :=
  ∀ n, P548375337323286149.a n = (A037270 n : ℚ)

theorem P548375337323286149.correct : P548375337323286149.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A037270, Nat.add_sub_cancel, A037270.P548375337323286149.a, A037270.P2151832567254615611.a, A054603, A054603.P10637400569586555311.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A037270, Nat.add_sub_cancel, A037270.P548375337323286149.a, A037270.P2151832567254615611.a, A054603, A054603.P10637400569586555311.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A037270

/-! ## A037270.P7628937633839787413

`A071252(n)+A006003(n)`
-/

namespace A037270.P7628937633839787413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071252 n + A006003 n

end

end A037270.P7628937633839787413

namespace A037270

/-- `A071252(n)+A006003(n)` -/
def P7628937633839787413.Spec : Prop :=
  ∀ n, P7628937633839787413.a n = A037270 n

end A037270

/-! ## A037270.P8274775541326140291

`A071238(n)+A006325(n)`
-/

namespace A037270.P8274775541326140291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071238 n + A006325 n

end

end A037270.P8274775541326140291

namespace A037270

/-- `A071238(n)+A006325(n)` -/
def P8274775541326140291.Spec : Prop :=
  ∀ n, P8274775541326140291.a n = A037270 n

end A037270

/-! ## A037270.P14506617600616499148

`A062158(n)+A058919(n)`
-/

namespace A037270.P14506617600616499148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062158 n + A058919 n

end

end A037270.P14506617600616499148

namespace A037270

/-- `A062158(n)+A058919(n)` -/
def P14506617600616499148.Spec : Prop :=
  ∀ n, P14506617600616499148.a n = A037270 n

end A037270

/-! ## A037270.P16600790200532074489

`A139594(n)+A002415(n)`
-/

namespace A037270.P16600790200532074489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139594 n + A002415 n

end

end A037270.P16600790200532074489

namespace A037270

/-- `A139594(n)+A002415(n)` -/
def P16600790200532074489.Spec : Prop :=
  ∀ n, P16600790200532074489.a n = A037270 n

end A037270

/-!
# A037271: Number of steps to reach a prime under "replace n with concatenation of its prime factors" when applied to n-th composite number, or -1 if no such number exists.

The programs for A037271, there is no canonical definition to state claims against.
-/

/-! ## A037271.P13737566231540607199

`A037273(lt[2, ∏{e}[n², #]])`
-/

namespace A037271.P13737566231540607199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037273 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A037271.P13737566231540607199

/-! ## A037271.P14882510892713862250

`A037273(comp[n*and(1, ∑{e}[n+1, #]!)]+1)`
-/

namespace A037271.P14882510892713862250
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 1 (Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037273 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A037271.P14882510892713862250

/-! ## A037271.P15844200657368316606

`A037273(Δ[A053767(n)])`
-/

namespace A037271.P15844200657368316606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037273 (f1 (n + 1) - f1 n).toNat

end

end A037271.P15844200657368316606

/-! ## A037271.P11835542988871106077

`A037273(A002808(n+1))`
-/

namespace A037271.P11835542988871106077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037273 (A002808 (n + 1)).toNat

end

end A037271.P11835542988871106077

/-! ## A037271.P9138250779202566007

`A037273(A018252(n+2))`
-/

namespace A037271.P9138250779202566007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037273 (A018252 (n + 2)).toNat

end

end A037271.P9138250779202566007

/-!
# A037272: 

The programs for A037272, there is no canonical definition to state claims against.
-/

/-! ## A037272.P12738131266169909052

`A037274(A002808(n+1))`
-/

namespace A037272.P12738131266169909052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037274 (A002808 (n + 1)).toNat

end

end A037272.P12738131266169909052

/-! ## A037272.P16463554552654258595

`A037274(A018252(n+2))`
-/

namespace A037272.P16463554552654258595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037274 (A018252 (n + 2)).toNat

end

end A037272.P16463554552654258595

/-!
# A037275: 

The programs for A037275, there is no canonical definition to state claims against.
-/

/-! ## A037275.P4036643148213995233

`record[A037274(n+1)]`
-/

namespace A037275.P4036643148213995233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037275.P4036643148213995233

/-!
# A037276: Start with 1; for n>1, replace n with the concatenation of its prime factors in increasing order.

The programs for A037276, there is no canonical definition to state claims against.
-/

/-! ## A037276.P17268859340645368688

`A289660(n+1)+1+n`
-/

namespace A037276.P17268859340645368688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289660 (n + 1) + 1 + (n : ℤ)

end

end A037276.P17268859340645368688

/-! ## A037276.P12662789396726130894

`A087712(A064988(n+1))`
-/

namespace A037276.P12662789396726130894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (A064988 (n + 1)).toNat

end

end A037276.P12662789396726130894

/-! ## A037276.P1324233669360086124

`A087712(∑{d}[A290641(n+1), A003972(#)])`
-/

namespace A037276.P1324233669360086124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (∑ d ∈ Nat.divisors (f1 n).natAbs, A003972 d).toNat

end

end A037276.P1324233669360086124

/-! ## A037276.P12397434340873835932

`A073646(∑[∑[A076710(n)]])`
-/

namespace A037276.P12397434340873835932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076710 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073646 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A037276.P12397434340873835932

/-!
# A037277: Replace n with concatenation of its divisors >1.

The programs for A037277, there is no canonical definition to state claims against.
-/

/-! ## A037277.P15210328358721668556

`A048794(A034729(n+1)-1)`
-/

namespace A037277.P15210328358721668556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (A034729 (n + 1) - 1).toNat

end

end A037277.P15210328358721668556

/-! ## A037277.P10729953889682371026

`A048794(xor(1, A034729(n+1)))`
-/

namespace A037277.P10729953889682371026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (Int.xor 1 (A034729 (n + 1))).toNat

end

end A037277.P10729953889682371026

/-! ## A037277.P18266425542260144047

`A048794(xor(1, A055895(n+1)/2))`
-/

namespace A037277.P18266425542260144047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (Int.xor 1 (SequenceMachineLib.roundAway ((A055895 (n + 1) : ℚ) / 2))).toNat

end

end A037277.P18266425542260144047

/-! ## A037277.P17304722218184986487

`A048794(A057428(2*n+1)+A034729(n+1))`
-/

namespace A037277.P17304722218184986487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (A057428 (2 * n + 1) + A034729 (n + 1)).toNat

end

end A037277.P17304722218184986487

/-! ## A037277.P14654435951326958475

`A048794(A057428(n+1)+A055895(n+1)/2)`
-/

namespace A037277.P14654435951326958475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (SequenceMachineLib.roundAway ((A057428 (n + 1) : ℚ) + (A055895 (n + 1) : ℚ) / 2)).toNat

end

end A037277.P14654435951326958475

/-!
# A037278: Replace n with concatenation of its divisors.

The programs for A037278, there is no canonical definition to state claims against.
-/

/-! ## A037278.P3652506323966442508

`A048794(∑{d}[n+1, 2^(#-1)])`
-/

namespace A037278.P3652506323966442508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ ((d : ℤ) - 1 : ℤ))).toNat

end

end A037278.P3652506323966442508

/-! ## A037278.P3398764496536937288

`A048794(A034729(n+1))`
-/

namespace A037278.P3398764496536937288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (A034729 (n + 1)).toNat

end

end A037278.P3398764496536937288

/-! ## A037278.P1510939911807992730

`A048794(A055895(n+1)/2)`
-/

namespace A037278.P1510939911807992730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (SequenceMachineLib.roundAway ((A055895 (n + 1) : ℚ) / 2)).toNat

end

end A037278.P1510939911807992730

/-! ## A037278.P3925947741715509919

`A087712(A275700(n+1))`
-/

namespace A037278.P3925947741715509919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (A275700 (n + 1)).toNat

end

end A037278.P3925947741715509919

/-! ## A037278.P6319621504914488229

`A087712(∏{d}[n+1, A000040(#)])`
-/

namespace A037278.P6319621504914488229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (∏ d ∈ Nat.divisors (f1 n), A000040 d).toNat

end

end A037278.P6319621504914488229

/-!
# A037279: If n is composite, replace n with the concatenation of its nontrivial divisors, otherwise a(n) = n.

The programs for A037279, there is no canonical definition to state claims against.
-/

/-! ## A037279.P13172421567217807058

`A106708(n+1)+C(A006530(n+1), n)`
-/

namespace A037279.P13172421567217807058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106708 (n + 1) + (Nat.choose (A006530 (n + 1)).toNat n : ℤ)

end

end A037279.P13172421567217807058

/-! ## A037279.P5809632480833577072

`A106708(n+1)+C(A014963(n+1), n)`
-/

namespace A037279.P5809632480833577072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106708 (n + 1) + (Nat.choose (A014963 (n + 1)).toNat n : ℤ)

end

end A037279.P5809632480833577072

/-! ## A037279.P4712777590231487346

`A106708(n+1)+C(A020639(n+1), n)`
-/

namespace A037279.P4712777590231487346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106708 (n + 1) + (Nat.choose (A020639 (n + 1)).toNat n : ℤ)

end

end A037279.P4712777590231487346

/-! ## A037279.P18040795588028343780

`A014963(n+1)+A106708(n+1)-A182936(n+1)`
-/

namespace A037279.P18040795588028343780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) + (A106708 (n + 1) - A182936 (n + 1))

end

end A037279.P18040795588028343780

/-! ## A037279.P10843036691319959721

`A004151(A361320(n+1))`
-/

namespace A037279.P10843036691319959721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A361320 (n + 1)).toNat

end

end A037279.P10843036691319959721

/-!
# A037280: If n is composite replace n with the concatenation of its nontrivial divisors [ A037279 ] then divide out any factors of 2.

The programs for A037280, there is no canonical definition to state claims against.
-/

/-! ## A037280.P12728545598173782189

`A037279(n+1)/gcd(A000079(n), A037279(n+1))`
-/

namespace A037280.P12728545598173782189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037279 (n + 1) : ℚ) / (Int.gcd (A000079 n) (A037279 (n + 1)) : ℚ)

end

end A037280.P12728545598173782189

/-! ## A037280.P845968013132069510

`lcm(A000079(n), A037279(n+1))/A000079(n)`
-/

namespace A037280.P845968013132069510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000079 n) (A037279 (n + 1)) : ℚ) / (A000079 n : ℚ)

end

end A037280.P845968013132069510

/-! ## A037280.P18054932063260388196

`A000265(A037279(n+1))`
-/

namespace A037280.P18054932063260388196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A037279 (n + 1)).toNat

end

end A037280.P18054932063260388196

/-! ## A037280.P7639700861395715696

`A171435(2*A037279(n+1))`
-/

namespace A037280.P7639700861395715696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * A037279 (n + 1)).toNat

end

end A037280.P7639700861395715696

/-! ## A037280.P11743309044388428173

`A302044(2*A037279(n+1))`
-/

namespace A037280.P11743309044388428173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302044 (2 * A037279 (n + 1)).toNat

end

end A037280.P11743309044388428173

/-!
# A037282: Scan n from left to right once, erasing any primes.

The programs for A037282, there is no canonical definition to state claims against.
-/

/-! ## A037282.P15542647650522657951

`(n+1)%A099375(A324158(n+1))`
-/

namespace A037282.P15542647650522657951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A099375 (A324158 (n + 1)).toNat)

end

end A037282.P15542647650522657951

/-! ## A037282.P6853519765027300625

`A191558(n+1)^A038769(A000016(n))`
-/

namespace A037282.P6853519765027300625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191558 (n + 1) : ℚ) ^ (A038769 (A000016 n).toNat : ℤ)

end

end A037282.P6853519765027300625

/-! ## A037282.P8828448692645798262

`gcd(A016389(A347798(n)), A191558(n+1))`
-/

namespace A037282.P8828448692645798262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016389 (A347798 n).toNat) (A191558 (n + 1))

end

end A037282.P8828448692645798262

/-! ## A037282.P8058340039950440557

`A191558(n+1)%A029912(A127542(or(2, n)))`
-/

namespace A037282.P8058340039950440557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191558 (n + 1)) (A029912 (A127542 (Nat.lor 2 n)).toNat)

end

end A037282.P8058340039950440557

/-! ## A037282.P9966728800034952517

`A135684(n+1)%A135684(A106280(3*n+2))`
-/

namespace A037282.P9966728800034952517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135684 (n + 1)) (A135684 (A106280 (3 * n + 2)).toNat)

end

end A037282.P9966728800034952517

/-!
# A037283: Replace n with concatenation of its odd divisors.

The programs for A037283, there is no canonical definition to state claims against.
-/

/-! ## A037283.P11662686995074308608

`A037286(A025480(n))`
-/

namespace A037283.P11662686995074308608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037286 (A025480 n).toNat

end

end A037283.P11662686995074308608

/-! ## A037283.P377719639270641592

`A037278((n+1)/and(n+1, -(n+1)))`
-/

namespace A037283.P377719639270641592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A037283.P377719639270641592

/-! ## A037283.P9806401424462776932

`A037278((n+1)/(n+1-and(n, n+1)))`
-/

namespace A037283.P9806401424462776932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ) : ℚ))).toNat

end

end A037283.P9806401424462776932

/-! ## A037283.P16722869801301905593

`A037278(A000265(n+1))`
-/

namespace A037283.P16722869801301905593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (A000265 (n + 1)).toNat

end

end A037283.P16722869801301905593

/-! ## A037283.P405886675197707028

`A037278(A153733(n)+1)`
-/

namespace A037283.P405886675197707028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (A153733 n + 1).toNat

end

end A037283.P405886675197707028

/-! ## A037283.P12495032007712947819

`A037278(or(1, A153733(n)))`
-/

namespace A037283.P12495032007712947819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (Int.lor 1 (A153733 n)).toNat

end

end A037283.P12495032007712947819

/-!
# A037284: Replace n with concatenation of its odd divisors >1.

The programs for A037284, there is no canonical definition to state claims against.
-/

/-! ## A037284.P7880448702436881368

`A037287(A025480(n))`
-/

namespace A037284.P7880448702436881368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037287 (A025480 n).toNat

end

end A037284.P7880448702436881368

/-! ## A037284.P1318896821668724386

`A037285(2*(n+1))`
-/

namespace A037284.P1318896821668724386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037285 (2 * (n + 1))

end

end A037284.P1318896821668724386

/-! ## A037284.P5234663729876204721

`xor(1, xor(1, A037285(lcm(2, n+1))))`
-/

namespace A037284.P5234663729876204721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A037285 (Nat.lcm 2 (n + 1))))

end

end A037284.P5234663729876204721

/-! ## A037284.P4512556950752165815

`A037277(A000265(n+1))`
-/

namespace A037284.P4512556950752165815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037277 (A000265 (n + 1)).toNat

end

end A037284.P4512556950752165815

/-!
# A037285: Replace n with concatenation of its nontrivial odd divisors.

The programs for A037285, there is no canonical definition to state claims against.
-/

/-! ## A037285.P8328064087506302483

`A084317(A171435(n+1)^A227578(n))`
-/

namespace A037285.P8328064087506302483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084317 (SequenceMachineLib.roundAway ((A171435 (n + 1) : ℚ) ^ (A227578 n : ℤ))).toNat

end

end A037285.P8328064087506302483

/-! ## A037285.P8955180013087405520

`A084317(A000265(n+1)^A074397(n+1))`
-/

namespace A037285.P8955180013087405520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084317 (SequenceMachineLib.roundAway ((A000265 (n + 1) : ℚ) ^ (A074397 (n + 1) : ℤ))).toNat

end

end A037285.P8955180013087405520

/-! ## A037285.P4746986539599182417

`A084317(A171435(n+1)^A074397(n+1))`
-/

namespace A037285.P4746986539599182417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084317 (SequenceMachineLib.roundAway ((A171435 (n + 1) : ℚ) ^ (A074397 (n + 1) : ℤ))).toNat

end

end A037285.P4746986539599182417

/-! ## A037285.P16689961402870384891

`A084317(A000265(n+1)^A348970(n+1))`
-/

namespace A037285.P16689961402870384891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084317 (SequenceMachineLib.roundAway ((A000265 (n + 1) : ℚ) ^ (A348970 (n + 1) : ℤ))).toNat

end

end A037285.P16689961402870384891

/-!
# A037286: Replace 2n+1 with concatenation of its divisors.

The programs for A037286, there is no canonical definition to state claims against.
-/

/-! ## A037286.P5568095054894914526

`A037283(Δ[n²])`
-/

namespace A037286.P5568095054894914526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037283 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A037286.P5568095054894914526

/-! ## A037286.P3177623694316107032

`or(1, A037283(2*n+1))`
-/

namespace A037286.P3177623694316107032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A037283 (2 * n + 1))

end

end A037286.P3177623694316107032

/-! ## A037286.P5152245625018853558

`A037283(2*n+1)+A010051(2*(n+2))`
-/

namespace A037286.P5152245625018853558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037283 (2 * n + 1) + A010051 (2 * (n + 2))

end

end A037286.P5152245625018853558

/-! ## A037286.P16981847389184994770

`A037283(A000265(2*n+1))²/A037283(2*n+1)`
-/

namespace A037286.P16981847389184994770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037283 (A000265 (2 * n + 1)).toNat ^ 2 : ℚ) / (A037283 (2 * n + 1) : ℚ)

end

end A037286.P16981847389184994770

/-! ## A037286.P13181992998044597199

`A037278(Δ[n²])`
-/

namespace A037286.P13181992998044597199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A037286.P13181992998044597199

/-! ## A037286.P9180101055730444933

`lcm(2, A037278(2*n+1))/2`
-/

namespace A037286.P9180101055730444933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A037278 (2 * n + 1)) : ℚ) / 2

end

end A037286.P9180101055730444933

/-! ## A037286.P10382639750457777050

`or(1, A037278(sqrt(A016754(n))))`
-/

namespace A037286.P10382639750457777050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A037278 (SequenceMachineLib.roundAway (Real.sqrt (A016754 n : ℝ))).toNat)

end

end A037286.P10382639750457777050

/-! ## A037286.P4482885154970034399

`or(1, A037278(Δ[A000290(n)]))`
-/

namespace A037286.P4482885154970034399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A037278 (f1 (n + 1) - f1 n).toNat)

end

end A037286.P4482885154970034399

/-! ## A037286.P935394522443825634

`A037278(2*n+1)+A000007(n+1)`
-/

namespace A037286.P935394522443825634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (2 * n + 1) + A000007 (n + 1)

end

end A037286.P935394522443825634

/-! ## A037286.P13529018191569855694

`A010690(2*n)*A037278(2*n+1)`
-/

namespace A037286.P13529018191569855694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010690 (2 * n) * A037278 (2 * n + 1)

end

end A037286.P13529018191569855694

/-! ## A037286.P18270530775255281381

`A010691(2*n)*A037278(2*n+1)`
-/

namespace A037286.P18270530775255281381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010691 (2 * n) * A037278 (2 * n + 1)

end

end A037286.P18270530775255281381

/-! ## A037286.P14481167176152242074

`A042970(2*n+1)+A037278(2*n+1)`
-/

namespace A037286.P14481167176152242074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042970 (2 * n + 1) + A037278 (2 * n + 1)

end

end A037286.P14481167176152242074

/-! ## A037286.P16270558793243961771

`A209229(2*n+3)+A037278(2*n+1)`
-/

namespace A037286.P16270558793243961771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (2 * n + 3) + A037278 (2 * n + 1)

end

end A037286.P16270558793243961771

/-! ## A037286.P9675932925154328691

`(A028310(n+1)-n)*A037278(2*n+1)`
-/

namespace A037286.P9675932925154328691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028310 (n + 1) - (n : ℤ)) * A037278 (2 * n + 1)

end

end A037286.P9675932925154328691

/-! ## A037286.P8839223959963864290

`A037278(2*n+1)+2-A020639(2*(n+1))`
-/

namespace A037286.P8839223959963864290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (2 * n + 1) + (2 - A020639 (2 * (n + 1)))

end

end A037286.P8839223959963864290

/-! ## A037286.P1482566757433375025

`A037278(2*n+1)+n*A010051(2*(n+1))`
-/

namespace A037286.P1482566757433375025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (2 * n + 1) + (n : ℤ) * A010051 (2 * (n + 1))

end

end A037286.P1482566757433375025

/-! ## A037286.P11357758060726305536

`gcd(A000038(n), A037278(A005408(n)))`
-/

namespace A037286.P11357758060726305536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A037278 (A005408 n).toNat)

end

end A037286.P11357758060726305536

/-! ## A037286.P5737673473803245608

`A037278(A005408(n))+A000038(n+1)`
-/

namespace A037286.P5737673473803245608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (A005408 n).toNat + A000038 (n + 1)

end

end A037286.P5737673473803245608

/-! ## A037286.P8707727839958016570

`A037278(2*n+1)-A042970(A187715(n+2))`
-/

namespace A037286.P8707727839958016570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (2 * n + 1) - A042970 (A187715 (n + 2)).toNat

end

end A037286.P8707727839958016570

/-! ## A037286.P16642797620684914348

`A037278(2*n+1)+A010051(A310838(2*n+1))`
-/

namespace A037286.P16642797620684914348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (2 * n + 1) + A010051 (A310838 (2 * n + 1)).toNat

end

end A037286.P16642797620684914348

/-!
# A037287: Replace 2n+1 with concatenation of its divisors >1.

The programs for A037287, there is no canonical definition to state claims against.
-/

/-! ## A037287.P6437887322614205653

`A037284(Δ[n²])`
-/

namespace A037287.P6437887322614205653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037284 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A037287.P6437887322614205653

/-! ## A037287.P12985266305216666794

`or(C(n, 2)%3, A037284(A005408(n)))`
-/

namespace A037287.P12985266305216666794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((Nat.choose n 2 % 3 : ℕ) : ℤ) (A037284 (A005408 n).toNat)

end

end A037287.P12985266305216666794

/-! ## A037287.P154184692120130890

`A037284(2*n+1)+A010051(2*(n+2))`
-/

namespace A037287.P154184692120130890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037284 (2 * n + 1) + A010051 (2 * (n + 2))

end

end A037287.P154184692120130890

/-! ## A037287.P4060420806323951634

`or(A000035(n), A037284(A005408(n)))`
-/

namespace A037287.P4060420806323951634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A037284 (A005408 n).toNat)

end

end A037287.P4060420806323951634

/-! ## A037287.P14087700353194478458

`A037284(A005408(n))-A000035(2*n)`
-/

namespace A037287.P14087700353194478458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037284 (A005408 n).toNat - A000035 (2 * n)

end

end A037287.P14087700353194478458

/-! ## A037287.P13778032205700504479

`or(A037284(A005408(n)), A257531(n+1))`
-/

namespace A037287.P13778032205700504479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037284 (A005408 n).toNat) (A257531 (n + 1))

end

end A037287.P13778032205700504479

/-! ## A037287.P15449591229704207949

`A037285(4*n+2)`
-/

namespace A037287.P15449591229704207949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037285 (4 * n + 2)

end

end A037287.P15449591229704207949

/-! ## A037287.P14210718343837297701

`A037277(Δ[n²])`
-/

namespace A037287.P14210718343837297701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037277 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A037287.P14210718343837297701

/-! ## A037287.P3612659268569090672

`A209229(2*n+3)+A037277(2*n+1)`
-/

namespace A037287.P3612659268569090672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (2 * n + 3) + A037277 (2 * n + 1)

end

end A037287.P3612659268569090672

/-! ## A037287.P1304600594128868567

`A257531(A005408(n)²)+A037284(A005408(n))`
-/

namespace A037287.P1304600594128868567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257531 (A005408 n ^ 2).toNat + A037284 (A005408 n).toNat

end

end A037287.P1304600594128868567

/-!
# A037288: Replace 2n+1 with concatenation of its nontrivial divisors.

The programs for A037288, there is no canonical definition to state claims against.
-/

/-! ## A037288.P9395152173803800354

`A037285(Δ[n²])`
-/

namespace A037288.P9395152173803800354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037285 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A037288.P9395152173803800354

/-! ## A037288.P1068362648315506816

`or(char[4], A037285(A005408(n)))`
-/

namespace A037288.P1068362648315506816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A037285 (A005408 n).toNat)

end

end A037288.P1068362648315506816

/-! ## A037288.P11374260888817422074

`A037285(2*n+1)+A010051(2*(n+2))`
-/

namespace A037288.P11374260888817422074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037285 (2 * n + 1) + A010051 (2 * (n + 2))

end

end A037288.P11374260888817422074

/-! ## A037288.P2511512707848269133

`A037285(2*n+1)*A369033(2*n+1)`
-/

namespace A037288.P2511512707848269133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037285 (2 * n + 1) * A369033 (2 * n + 1)

end

end A037288.P2511512707848269133

/-! ## A037288.P2466793662009834825

`A000041(C(2, n))*A037285(A005408(n))`
-/

namespace A037288.P2466793662009834825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 n) * A037285 (A005408 n).toNat

end

end A037288.P2466793662009834825

/-! ## A037288.P14034070458347773828

`A106708(2*n+1-A096501(2*n+1))`
-/

namespace A037288.P14034070458347773828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106708 ((2 * n + 1 : ℤ) - A096501 (2 * n + 1)).toNat

end

end A037288.P14034070458347773828

/-! ## A037288.P5672481716189589644

`A106708(Δ[n²])`
-/

namespace A037288.P5672481716189589644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106708 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A037288.P5672481716189589644

/-! ## A037288.P14612590667848381111

`A106708(2*n+1)+A010051(2*(n+2))`
-/

namespace A037288.P14612590667848381111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106708 (2 * n + 1) + A010051 (2 * (n + 2))

end

end A037288.P14612590667848381111

/-! ## A037288.P9082329560922091926

`A037279(2*n+1)*A066247(2*n+1)`
-/

namespace A037288.P9082329560922091926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037279 (2 * n + 1) * A066247 (2 * n + 1)

end

end A037288.P9082329560922091926

/-! ## A037288.P5307082484115728073

`A005171(2*n+1)*A106708(2*n+1)`
-/

namespace A037288.P5307082484115728073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (2 * n + 1) * A106708 (2 * n + 1)

end

end A037288.P5307082484115728073

/-! ## A037288.P13447157997996086166

`A106708(2*n+1)*A328458(2*n+1)`
-/

namespace A037288.P13447157997996086166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106708 (2 * n + 1) * A328458 (2 * n + 1)

end

end A037288.P13447157997996086166

/-! ## A037288.P11490463398769765404

`A106708(2*n+1)*A369033(2*n+1)`
-/

namespace A037288.P11490463398769765404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106708 (2 * n + 1) * A369033 (2 * n + 1)

end

end A037288.P11490463398769765404

/-! ## A037288.P1693294693064856558

`lcm(A037279(2*n+1), A182936(2*n+1))`
-/

namespace A037288.P1693294693064856558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A037279 (2 * n + 1)) (A182936 (2 * n + 1))

end

end A037288.P1693294693064856558

/-! ## A037288.P1409626660668401025

`floor(atan(A325765(2*n)))*A037279(2*n+1)`
-/

namespace A037288.P1409626660668401025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A325765 (2 * n) : ℝ)⌋ * A037279 (2 * n + 1)

end

end A037288.P1409626660668401025

/-! ## A037288.P8211002353507258833

`A001222(A085392(2*n+1))*A037279(2*n+1)`
-/

namespace A037288.P8211002353507258833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A085392 (2 * n + 1)).toNat * A037279 (2 * n + 1)

end

end A037288.P8211002353507258833

/-! ## A037288.P3958743081124911551

`A037279(2*n+1)*A284939(A281118(2*n+1))`
-/

namespace A037288.P3958743081124911551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037279 (2 * n + 1) * A284939 (A281118 (2 * n + 1)).toNat

end

end A037288.P3958743081124911551

/-! ## A037288.P1950653956926794518

`gcd(A106708(2*n+1)*A106708(2*(n+1)), A106708(2*n+1))`
-/

namespace A037288.P1950653956926794518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106708 (2 * n + 1) * A106708 (2 * (n + 1))) (A106708 (2 * n + 1))

end

end A037288.P1950653956926794518

/-! ## A037288.P1664821540974385722

`A037285(A002476(n+1))+A037285(A005408(n))`
-/

namespace A037288.P1664821540974385722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037285 (A002476 (n + 1)).toNat + A037285 (A005408 n).toNat

end

end A037288.P1664821540974385722

/-! ## A037288.P9915816789459966126

`A037285(2*n+1)+A037285(A002476(n+2))`
-/

namespace A037288.P9915816789459966126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037285 (2 * n + 1) + A037285 (A002476 (n + 2)).toNat

end

end A037288.P9915816789459966126

/-! ## A037288.P953008655613736379

`A106708(2*n+1)+A106708(record[A014963(n+2)])`
-/

namespace A037288.P953008655613736379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106708 (2 * n + 1) + A106708 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037288.P953008655613736379

/-!
# A037289: Number of commutative rings with n elements.

The programs for A037289, there is no canonical definition to state claims against.
-/

/-! ## A037289.P7418035550647874396

`A342375(n+1)+A127707(n+1)`
-/

namespace A037289.P7418035550647874396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342375 (n + 1) + A127707 (n + 1)

end

end A037289.P7418035550647874396

/-! ## A037289.P13504293841335528039

`A027623(n+1)-A209401(n+1)`
-/

namespace A037289.P13504293841335528039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027623 (n + 1) - A209401 (n + 1)

end

end A037289.P13504293841335528039

/-! ## A037289.P8418377045814922571

`A037234(n+1)-A209401(n+1)`
-/

namespace A037289.P8418377045814922571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037234 (n + 1) - A209401 (n + 1)

end

end A037289.P8418377045814922571

/-! ## A037289.P5535020475163873122

`A342375(n+1)+A061069(A037291(n+1))`
-/

namespace A037289.P5535020475163873122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342375 (n + 1) + A061069 (A037291 (n + 1)).toNat

end

end A037289.P5535020475163873122

/-! ## A037289.P4516088792447451154

`A037291(n+1)+A342375(n+1)-A127708(n+1)`
-/

namespace A037289.P4516088792447451154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037291 (n + 1) + (A342375 (n + 1) - A127708 (n + 1))

end

end A037289.P4516088792447451154

/-!
# A037290: Number of self-converse rings (isomorphic to inverse) with n elements.

The programs for A037290, there is no canonical definition to state claims against.
-/

/-! ## A037290.P6170260321063158721

`2*A038036(n+1)-A027623(n+1)`
-/

namespace A037290.P6170260321063158721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038036 (n + 1) - A027623 (n + 1)

end

end A037290.P6170260321063158721

/-! ## A037290.P4469304283128089079

`2*A038036(n+1)-A037234(n+1)`
-/

namespace A037290.P4469304283128089079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038036 (n + 1) - A037234 (n + 1)

end

end A037290.P4469304283128089079

/-! ## A037290.P14014217575377835277

`A005843(A038036(n+1))-A037234(n+1)`
-/

namespace A037290.P14014217575377835277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A038036 (n + 1)).toNat - A037234 (n + 1)

end

end A037290.P14014217575377835277

/-! ## A037290.P6907476734840166245

`A104464(A038036(n+1))`
-/

namespace A037290.P6907476734840166245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104464 (A038036 (n + 1)).toNat

end

end A037290.P6907476734840166245

/-! ## A037290.P12130450221903032714

`A117923(A037289(n+1))`
-/

namespace A037290.P12130450221903032714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117923 (A037289 (n + 1)).toNat

end

end A037290.P12130450221903032714

/-!
# A037291: Number of rings with 1 containing n elements.

The programs for A037291, there is no canonical definition to state claims against.
-/

/-! ## A037291.P4207270229809452446

`A127708(n+1)+A127707(n+1)`
-/

namespace A037291.P4207270229809452446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127708 (n + 1) + A127707 (n + 1)

end

end A037291.P4207270229809452446

/-! ## A037291.P11259999684797315494

`A207333(A127707(n+1))`
-/

namespace A037291.P11259999684797315494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207333 (A127707 (n + 1)).toNat

end

end A037291.P11259999684797315494

/-! ## A037291.P15475966474028482492

`A101771(A127707(n+1)-1)`
-/

namespace A037291.P15475966474028482492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101771 (A127707 (n + 1) - 1).toNat

end

end A037291.P15475966474028482492

/-! ## A037291.P6506283657251727988

`A027623(n+1)-A342377(n+1)`
-/

namespace A037291.P6506283657251727988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027623 (n + 1) - A342377 (n + 1)

end

end A037291.P6506283657251727988

/-! ## A037291.P2325500955287610485

`A037234(n+1)-A342377(n+1)`
-/

namespace A037291.P2325500955287610485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037234 (n + 1) - A342377 (n + 1)

end

end A037291.P2325500955287610485

/-!
# A037292: Number of nonassociative rings with n elements.

The programs for A037292, there is no canonical definition to state claims against.
-/

/-! ## A037292.P5991936859584365904

`A000007(n)+Δ[A118477(A028310(n))]`
-/

namespace A037292.P5991936859584365904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118477 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A037292.P5991936859584365904

/-! ## A037292.P11032980265869098998

`Δ[A118477(A028310(n))]^(A000040(n+1)%2)`
-/

namespace A037292.P11032980265869098998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118477 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A037292.P11032980265869098998

/-! ## A037292.P13773279973683568552

`A118477(n+1)+A000007(n)-A118477(A028310(n))`
-/

namespace A037292.P13773279973683568552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118477 (n + 1) + (A000007 n - A118477 (A028310 n).toNat)

end

end A037292.P13773279973683568552

/-!
# A037293: a(n) = Sum_{i=0..2^(n-1)} binomial(2^(n-1), i)^2.

The programs for A037293, the canonical program `A037293.P6104022534626570522` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037293 has offset 0).

The definition of A037293 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037293.P6104022534626570522

`A001405(2^n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037293

/-- `A001405(2^n)` -/
def P6104022534626570522.Spec : Prop :=
  ∀ n, P6104022534626570522.a n = A037293 n

theorem P6104022534626570522.correct : P6104022534626570522.Spec := by
  intro n
  simp only [A037293]

end A037293

/-! ## A037293.P200687491534014051

`record[C(2*n, and(n, -n))]`
-/

namespace A037293.P200687491534014051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) (Int.land (n : ℤ) (-(n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037293.P200687491534014051

namespace A037293

/-- `record[C(2*n, and(n, -n))]` -/
def P200687491534014051.Spec : Prop :=
  ∀ n, (P200687491534014051.a n : ℤ) = A037293 n

end A037293

/-! ## A037293.P7661706742916173998

`C(2^n, floor(2^(n-1)))`
-/

namespace A037293.P7661706742916173998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ n) ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

end

end A037293.P7661706742916173998

namespace A037293

/-- `C(2^n, floor(2^(n-1)))` -/
def P7661706742916173998.Spec : Prop :=
  ∀ n, (P7661706742916173998.a n : ℤ) = A037293 n

end A037293

/-! ## A037293.P10860915957566425709

`record[C(2^ceil(log2(n+1)), n)]`
-/

namespace A037293.P10860915957566425709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037293.P10860915957566425709

namespace A037293

/-- `record[C(2^ceil(log2(n+1)), n)]` -/
def P10860915957566425709.Spec : Prop :=
  ∀ n, (P10860915957566425709.a n : ℤ) = A037293 n

end A037293

/-! ## A037293.P17947757098281042680

`A128014(2^n)`
-/

namespace A037293.P17947757098281042680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128014 (2 ^ n)

end

end A037293.P17947757098281042680

namespace A037293

/-- `A128014(2^n)` -/
def P17947757098281042680.Spec : Prop :=
  ∀ n, P17947757098281042680.a n = A037293 n

end A037293

/-!
# A037294: Number of (s,2) gates.

The programs for A037294, there is no canonical definition to state claims against.
-/

/-! ## A037294.P8667394196792001425

`A360489(n+2)-1`
-/

namespace A037294.P8667394196792001425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360489 (n + 2) - 1

end

end A037294.P8667394196792001425

/-! ## A037294.P17991726044100245605

`∑[A091360(n+1)]`
-/

namespace A037294.P17991726044100245605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037294.P17991726044100245605

/-! ## A037294.P5826896993841407980

`∑[∑[A000219(n+1)]+1]`
-/

namespace A037294.P5826896993841407980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037294.P5826896993841407980

/-! ## A037294.P2915759173952331711

`A391486(n+1)+∑[n+1]`
-/

namespace A037294.P2915759173952331711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391486 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A037294.P2915759173952331711

/-! ## A037294.P11050006833339869673

`∑[A091355(2*(n+1)²)]`
-/

namespace A037294.P11050006833339869673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091355 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037294.P11050006833339869673

/-!
# A037295: Number of (s,3) gates.

The programs for A037295, there is no canonical definition to state claims against.
-/

/-! ## A037295.P18377942780783280054

`A391484(A167614(n+1))`
-/

namespace A037295.P18377942780783280054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391484 (A167614 (n + 1)).toNat

end

end A037295.P18377942780783280054

/-! ## A037295.P7742077725364895776

`A391484(A373663(n+1))`
-/

namespace A037295.P7742077725364895776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391484 (A373663 (n + 1)).toNat

end

end A037295.P7742077725364895776

/-! ## A037295.P6965979177724180323

`A391484(A000124(n+2)+2)`
-/

namespace A037295.P6965979177724180323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391484 (A000124 (n + 2) + 2).toNat

end

end A037295.P6965979177724180323

/-! ## A037295.P8058297893378580104

`A391484(A034856(n+2))`
-/

namespace A037295.P8058297893378580104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391484 (A034856 (n + 2)).toNat

end

end A037295.P8058297893378580104

/-! ## A037295.P3432365400649199125

`A391484(A000217(n+2)+n+1)`
-/

namespace A037295.P3432365400649199125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391484 (A000217 (n + 2) + (n + 1 : ℤ)).toNat

end

end A037295.P3432365400649199125

/-!
# A037296: Number of (s,4) gates.

The programs for A037296, there is no canonical definition to state claims against.
-/

/-! ## A037296.P12376104460912607112

`A391484(A374004(n+1))`
-/

namespace A037296.P12376104460912607112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391484 (A374004 (n + 1)).toNat

end

end A037296.P12376104460912607112

/-! ## A037296.P4777192207308037501

`A391484(lt[A191731(n+3), A080605(n+1)])`
-/

namespace A037296.P4777192207308037501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191731 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391484 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A037296.P4777192207308037501

/-!
# A037297: Number of (s,5) gates.

The programs for A037297, there is no canonical definition to state claims against.
-/

/-! ## A037297.P1879078894789197419

`A391484(A374005(n+1))`
-/

namespace A037297.P1879078894789197419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391484 (A374005 (n + 1)).toNat

end

end A037297.P1879078894789197419

/-!
# A037298: Number of (s,6) gates.

The programs for A037298, there is no canonical definition to state claims against.
-/

/-! ## A037298.P4526479549101864558

`A391484(A374007(n+1))`
-/

namespace A037298.P4526479549101864558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391484 (A374007 (n + 1)).toNat

end

end A037298.P4526479549101864558

/-! ## A037298.P1308852490920770972

`A391484(A167614(n+4)+3)`
-/

namespace A037298.P1308852490920770972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391484 (A167614 (n + 4) + 3).toNat

end

end A037298.P1308852490920770972

