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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
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
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
# A178901: a(1)=2; for n > 1, a(n) is the largest number <= 2*a(n-1) divisible by n.

The programs for A178901, there is no canonical definition to state claims against.
-/

/-! ## A178901.P1254590414168034987

`(n+1)*floor(n*a(n-1)/∑[n])` with `a(0)=2`
-/

namespace A178901.P1254590414168034987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (n + 1 : ℤ) * ⌊(n : ℚ) * ((a (n - 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ))⌋

end

end A178901.P1254590414168034987

/-! ## A178901.P4003354339083549323

`(n+1)*floor(2/(n+1)*a(n-1))` with `a(0)=2`
-/

namespace A178901.P4003354339083549323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (n + 1 : ℤ) * ⌊2 / (n + 1 : ℚ) * (a (n - 1) : ℚ)⌋

end

end A178901.P4003354339083549323

/-! ## A178901.P14752799932490155035

`2*a(n-1)-(2*a(n-1))%(n+1)` with `a(0)=2`
-/

namespace A178901.P14752799932490155035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) - Int.tmod (2 * a (n - 1)) (n + 1 : ℤ)

end

end A178901.P14752799932490155035

/-! ## A178901.P3132544700001556003

`a(n-1)*ratio[2*(a(n-1)-a(n-1)%n)]` with `a(0)=2`
-/

namespace A178901.P3132544700001556003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * (f1 (n - 1) - Int.tmod (f1 (n - 1)) (n : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A178901.P3132544700001556003

/-! ## A178901.P17633835356721872415

`a(n-1)+a(n-1)-(a(n-1)+a(n-1))%(n+1)` with `a(0)=2`
-/

namespace A178901.P17633835356721872415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (a (n - 1) - Int.tmod (a (n - 1) + a (n - 1)) (n + 1 : ℤ))

end

end A178901.P17633835356721872415

/-!
# A178902: Expansion of q^(-1/24) * eta(q^2)^13 / (eta(q)^5 * eta(q^4)^5) in powers of q.

The programs for A178902, the canonical program `A178902.P11492977343960863518` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178902 has offset 0).

The definition of A178902 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080332, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A178902.P11492977343960863518

`(-1)^n*A080332(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A178902

/-- `(-1)^n*A080332(n)` -/
def P11492977343960863518.Spec : Prop :=
  ∀ n, P11492977343960863518.a n = A178902 n

theorem P11492977343960863518.correct : P11492977343960863518.Spec := by
  intro n
  simp only [A178902]

end A178902

/-! ## A178902.P1702346301595514821

`A010815(n)*A133079(n)`
-/

namespace A178902.P1702346301595514821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A133079 n

end

end A178902.P1702346301595514821

namespace A178902

/-- `A010815(n)*A133079(n)` -/
def P1702346301595514821.Spec : Prop :=
  ∀ n, P1702346301595514821.a n = A178902 n

end A178902

/-! ## A178902.P12654460298622784594

`A080332(n)*A133985(n)`
-/

namespace A178902.P12654460298622784594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080332 n * A133985 n

end

end A178902.P12654460298622784594

namespace A178902

/-- `A080332(n)*A133985(n)` -/
def P12654460298622784594.Spec : Prop :=
  ∀ n, P12654460298622784594.a n = A178902 n

end A178902

/-! ## A178902.P15685867604713593562

`A116916(n)*A121373(n)`
-/

namespace A178902.P15685867604713593562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116916 n * A121373 n

end

end A178902.P15685867604713593562

namespace A178902

/-- `A116916(n)*A121373(n)` -/
def P15685867604713593562.Spec : Prop :=
  ∀ n, P15685867604713593562.a n = A178902 n

end A178902

/-! ## A178902.P6844771904815080841

`A080332(n)/A033999(n)`
-/

namespace A178902.P6844771904815080841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080332 n : ℚ) / (A033999 n : ℚ)

end

end A178902.P6844771904815080841

namespace A178902

/-- `A080332(n)/A033999(n)` -/
def P6844771904815080841.Spec : Prop :=
  ∀ n, P6844771904815080841.a n = (A178902 n : ℚ)

end A178902

/-! ## A178902.P15970971034255385221

`A010815(n)*A080332(n)*A121373(n)`
-/

namespace A178902.P15970971034255385221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A080332 n * A121373 n

end

end A178902.P15970971034255385221

namespace A178902

/-- `A010815(n)*A080332(n)*A121373(n)` -/
def P15970971034255385221.Spec : Prop :=
  ∀ n, P15970971034255385221.a n = A178902 n

end A178902

/-! ## A178902.P6468323674365698478

`A080332(n)*A309873(and(n, A309873(n+1))+1)`
-/

namespace A178902.P6468323674365698478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080332 n * A309873 (Int.land (n : ℤ) (A309873 (n + 1)) + 1).toNat

end

end A178902.P6468323674365698478

namespace A178902

/-- `A080332(n)*A309873(and(n, A309873(n+1))+1)` -/
def P6468323674365698478.Spec : Prop :=
  ∀ n, P6468323674365698478.a n = A178902 n

end A178902

/-! ## A178902.P17562348613060762638

`A080332(n)/A010815(A000326(n))`
-/

namespace A178902.P17562348613060762638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080332 n : ℚ) / (A010815 (A000326 n).toNat : ℚ)

end

end A178902.P17562348613060762638

namespace A178902

/-- `A080332(n)/A010815(A000326(n))` -/
def P17562348613060762638.Spec : Prop :=
  ∀ n, P17562348613060762638.a n = (A178902 n : ℚ)

end A178902

/-!
# A178903: n-th decimal digit of the fractional part of the square root of the n-th semiprime.

The programs for A178903, there is no canonical definition to state claims against.
-/

/-! ## A178903.P6001403406227534533

`floor(sqrt(A001358(n+1))*10^(n+1))%10`
-/

namespace A178903.P6001403406227534533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.sqrt (A001358 (n + 1) : ℝ) * (10 ^ (n + 1) : ℝ)⌋ 10

end

end A178903.P6001403406227534533

/-!
# A178904: This should be related to the Coxeter transformations of the posets of partitions in rectangular boxes of size m times n.

The programs for A178904, there is no canonical definition to state claims against.
-/

/-! ## A178904.P11532922654580965211

`A008683(or(1, A257611(n)))`
-/

namespace A178904.P11532922654580965211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.lor 1 (A257611 n)).toNat

end

end A178904.P11532922654580965211

/-! ## A178904.P4995145110800344857

`A067856(or(1, A257611(n)))`
-/

namespace A178904.P4995145110800344857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (Int.lor 1 (A257611 n)).toNat

end

end A178904.P4995145110800344857

/-! ## A178904.P9695517869763815772

`A085384(or(1, A257611(n)))`
-/

namespace A178904.P9695517869763815772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085384 (Int.lor 1 (A257611 n)).toNat

end

end A178904.P9695517869763815772

/-! ## A178904.P5793889521013318723

`A304653(A115216(n))`
-/

namespace A178904.P5793889521013318723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304653 (A115216 n).toNat

end

end A178904.P5793889521013318723

/-! ## A178904.P3323846313820924230

`A242647(A153738(n+1))`
-/

namespace A178904.P3323846313820924230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242647 (A153738 (n + 1)).toNat

end

end A178904.P3323846313820924230

/-!
# A178905: Numbers without 3 consecutive equal digits in any base b >= 2.

The programs for A178905, there is no canonical definition to state claims against.
-/

/-! ## A178905.P9803327394882712920

`A349955(n+1)%∑[A349862(n)]`
-/

namespace A178905.P9803327394882712920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349955 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178905.P9803327394882712920

/-! ## A178905.P10451724153818681270

`lcm(A103754(n+1), A349955(n+1))`
-/

namespace A178905.P10451724153818681270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A103754 (n + 1)) (A349955 (n + 1))

end

end A178905.P10451724153818681270

/-! ## A178905.P3469621807920147606

`A349955(n+1)+A000038(A112355(n+1))`
-/

namespace A178905.P3469621807920147606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349955 (n + 1) + A000038 (A112355 (n + 1)).toNat

end

end A178905.P3469621807920147606

/-! ## A178905.P8364405702125283484

`A349955(n+1)+A325268(A000217(n+2))`
-/

namespace A178905.P8364405702125283484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349955 (n + 1) + A325268 (A000217 (n + 2)).toNat

end

end A178905.P8364405702125283484

/-! ## A178905.P14431937609005440932

`A349955(n+1)*A349976(A000217(n))`
-/

namespace A178905.P14431937609005440932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349955 (n + 1) * A349976 (A000217 n).toNat

end

end A178905.P14431937609005440932

/-!
# A178907: n-th prime + n-th problime (third definition).

The programs for A178907, there is no canonical definition to state claims against.
-/

/-! ## A178907.P10345017993958441156

`A000040(n+1)+A003068(n+1)`
-/

namespace A178907.P10345017993958441156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A003068 (n + 1)

end

end A178907.P10345017993958441156

/-! ## A178907.P14529340308658473520

`A003068(n+1)+Δ[A007504(n)]`
-/

namespace A178907.P14529340308658473520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003068 (n + 1) + (f1 (n + 1) - f1 n)

end

end A178907.P14529340308658473520

/-! ## A178907.P5353815021056858076

`A008578(n+2)+A003068(n+1)`
-/

namespace A178907.P5353815021056858076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + A003068 (n + 1)

end

end A178907.P5353815021056858076

/-! ## A178907.P17371556208046863713

`A003068(n+1)+sqrt(A001248(n+1))`
-/

namespace A178907.P17371556208046863713
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A003068 (n + 1) : ℝ) + Real.sqrt (A001248 (n + 1) : ℝ)

end

end A178907.P17371556208046863713

/-! ## A178907.P10031129969752618954

`A003068(n+1)+p?[A000961(n+1)]`
-/

namespace A178907.P10031129969752618954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003068 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178907.P10031129969752618954

/-! ## A178907.P8803370506301771441

`A003068(n+1)+record[A006530(n+2)]`
-/

namespace A178907.P8803370506301771441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003068 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178907.P8803370506301771441

/-! ## A178907.P4773211867799444334

`A003068(n+1)+record[A020639(n+2)]`
-/

namespace A178907.P4773211867799444334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003068 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178907.P4773211867799444334

/-! ## A178907.P17076428902237146500

`A003068(n+1)+A100484(n+1)/2`
-/

namespace A178907.P17076428902237146500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003068 (n + 1) : ℚ) + (A100484 (n + 1) : ℚ) / 2

end

end A178907.P17076428902237146500

/-! ## A178907.P9357111190186103932

`record[A000010(n+1)]+A003068(n+1)+1`
-/

namespace A178907.P9357111190186103932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A003068 (n + 1) + 1)

end

end A178907.P9357111190186103932

/-! ## A178907.P7542371048995143703

`A003068(n+1)+p?[C(A006530(n+1), n)]`
-/

namespace A178907.P7542371048995143703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003068 (n + 1) + (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A178907.P7542371048995143703

/-! ## A178907.P17535479330000897018

`A003068(n+1)+A007504(n+1)-A007504(n)`
-/

namespace A178907.P17535479330000897018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003068 (n + 1) + (A007504 (n + 1) - A007504 n)

end

end A178907.P17535479330000897018

/-! ## A178907.P9495544489303253144

`A003068(n+1)+p?[A004280(n+1)]`
-/

namespace A178907.P9495544489303253144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003068 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178907.P9495544489303253144

/-! ## A178907.P12439607556019647565

`A003068(n+1)+p?[A007989(n)]`
-/

namespace A178907.P12439607556019647565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003068 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178907.P12439607556019647565

/-! ## A178907.P649335467900771300

`A003068(n+1)+p?[A000037(n+1)]`
-/

namespace A178907.P649335467900771300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003068 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178907.P649335467900771300

/-! ## A178907.P8883620804800311541

`A003068(n+1)+record[A051698(n)]`
-/

namespace A178907.P8883620804800311541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003068 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178907.P8883620804800311541

/-! ## A178907.P4777127597327530902

`A003068(n+1)+p?[A014681(n)]`
-/

namespace A178907.P4777127597327530902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003068 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178907.P4777127597327530902

/-! ## A178907.P4180994520205250422

`A003068(n+1)+record[A014963(n+2)]`
-/

namespace A178907.P4180994520205250422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003068 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178907.P4180994520205250422

/-! ## A178907.P101228104246881863

`A003068(n+1)+p?[A056847(n)]`
-/

namespace A178907.P101228104246881863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003068 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178907.P101228104246881863

/-! ## A178907.P8471486635333224529

`A003068(n+1)+p?[A001057(n)]`
-/

namespace A178907.P8471486635333224529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003068 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178907.P8471486635333224529

/-! ## A178907.P2156885743933291466

`A003068(n+1)+p?[A006370(n)]`
-/

namespace A178907.P2156885743933291466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003068 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178907.P2156885743933291466

/-!
# A178909: Indices of perfect polynomials over GF(2).

The programs for A178909, there is no canonical definition to state claims against.
-/

/-! ## A178909.P10789186698812071173

`∏{e}[(5*n)²/2*6^n, #+1]`
-/

namespace A178909.P10789186698812071173
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * n) ^ 2 : ℚ) / 2 * (6 ^ n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p + 1)

end

end A178909.P10789186698812071173

/-!
# A178910: Binary XOR of divisors of n.

The programs for A178910, there is no canonical definition to state claims against.
-/

/-! ## A178910.P7418309121413971318

`xor(n+1, A227320(n+1))`
-/

namespace A178910.P7418309121413971318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A227320 (n + 1))

end

end A178910.P7418309121413971318

/-! ## A178910.P3477608126077294

`A028310(xor(A106409(n+1), A318504(n+1)))`
-/

namespace A178910.P3477608126077294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.xor (A106409 (n + 1)) (A318504 (n + 1))).toNat

end

end A178910.P3477608126077294

/-! ## A178910.P4819506954475044685

`xor(A248663(A300830(n+1)), A256739(n+1))`
-/

namespace A178910.P4819506954475044685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A248663 (A300830 (n + 1)).toNat) (A256739 (n + 1))

end

end A178910.P4819506954475044685

/-! ## A178910.P901312943284499063

`A261283(A034729(n+1))`
-/

namespace A178910.P901312943284499063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261283 (A034729 (n + 1)).toNat

end

end A178910.P901312943284499063

/-! ## A178910.P15015107362809883489

`A344875(n+1)+A185053(A244454(n+4))`
-/

namespace A178910.P15015107362809883489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344875 (n + 1) + A185053 (A244454 (n + 4)).toNat

end

end A178910.P15015107362809883489

/-!
# A178914: 10's complement of nonnegative numbers.

The programs for A178914, the canonical program `A178914.P15550462812133884735` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178914 has offset 0).

The definition of A178914 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178914.P15550462812133884735

`A061601(n)+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A178914

/-- `A061601(n)+1` -/
def P15550462812133884735.Spec : Prop :=
  ∀ n, P15550462812133884735.a n = A178914 n

theorem P15550462812133884735.correct : P15550462812133884735.Spec := by
  intro n
  simp only [A178914]

end A178914

/-!
# A178915: Rearrangement of natural numbers so that every partial sum is composite.

The programs for A178915, the canonical program `A178915.P3485576932328494795` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178915 has offset 1).

The definition of A178915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178915.P3485576932328494795

`a(3%n)+n` with `a(0)=4, a(1)=2, a(2)=3, a(3)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178915

/-- `a(3%n)+n` -/
def P3485576932328494795.Spec : Prop :=
  ∀ n, (P3485576932328494795.a n : ℤ) = A178915 (n + 1)

theorem P3485576932328494795.correct : P3485576932328494795.Spec := by
  intro n
  simp only [A178915, Nat.add_sub_cancel]

end A178915

/-!
# A178916: Triangular array a(n,k) read by rows: nextprime(k*n!)-k*n!. For 1<=k<=n.

The programs for A178916, there is no canonical definition to state claims against.
-/

/-! ## A178916.P5891141491543212777

`A151800(A051683(n+1))-A051683(n+1)`
-/

namespace A178916.P5891141491543212777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A051683 (n + 1)).toNat - A051683 (n + 1)

end

end A178916.P5891141491543212777

/-! ## A178916.P1490433936377039961

`A060266(ceil(A051683(n+1)/2))`
-/

namespace A178916.P1490433936377039961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 ⌈(A051683 (n + 1) : ℚ) / 2⌉.toNat

end

end A178916.P1490433936377039961

/-! ## A178916.P15922347811149138557

`A060266(round(A051683(n+1)/2))`
-/

namespace A178916.P15922347811149138557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (SequenceMachineLib.roundAway ((A051683 (n + 1) : ℚ) / 2)).toNat

end

end A178916.P15922347811149138557

/-! ## A178916.P6623332358900681855

`A013632(∑[round(sqrt(2*n))!])`
-/

namespace A178916.P6623332358900681855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178916.P6623332358900681855

/-! ## A178916.P7417113772901933298

`A013632(A051683(n+1))`
-/

namespace A178916.P7417113772901933298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A051683 (n + 1)).toNat

end

end A178916.P7417113772901933298

/-!
# A178917: Pairs prime(k), prime(k+1) such that last digit of prime(k) is 9 and last digit of prime(k+1) is 7.

The programs for A178917, there is no canonical definition to state claims against.
-/

/-! ## A178917.P15724565684646837463

`∩[A106123(n+1), A355272(n+1)]`
-/

namespace A178917.P15724565684646837463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178917.P15724565684646837463

/-! ## A178917.P9051897902387081735

`A355272(C(A064953(n+1), A095025(n+3)))`
-/

namespace A178917.P9051897902387081735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355272 (Nat.choose (A064953 (n + 1)).toNat (A095025 (n + 3)).toNat)

end

end A178917.P9051897902387081735

/-!
# A178918: Smallest of two consecutive integers divisible respectively by two consecutive squares greater than 1.

The programs for A178918, there is no canonical definition to state claims against.
-/

/-! ## A178918.P9274239201421726083

`A044493(n+1)-A020639(A120402(n+1))`
-/

namespace A178918.P9274239201421726083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044493 (n + 1) - A020639 (A120402 (n + 1)).toNat

end

end A178918.P9274239201421726083

/-! ## A178918.P310086704543583213

`A044493(n+1)-A236213(A237868(n+1))`
-/

namespace A178918.P310086704543583213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044493 (n + 1) - A236213 (A237868 (n + 1)).toNat

end

end A178918.P310086704543583213

/-!
# A178920: E.g.f. A(x) satisfies A(x) = x * (1 + A(x)) * exp( A(x) * (1 + A(x)) ).

The programs for A178920, there is no canonical definition to state claims against.
-/

/-! ## A178920.P18384852960538145471

`A188035(A145169(n))-A306098(n)`
-/

namespace A178920.P18384852960538145471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188035 (A145169 n).toNat - A306098 n

end

end A178920.P18384852960538145471

/-!
# A178921: Product of distances between successive distinct prime divisors of n; zero if n has only 1 distinct prime factor.

The programs for A178921, there is no canonical definition to state claims against.
-/

/-! ## A178921.P1636458206758269748

`A286470(A064988(n+1))%A325097(n+1)`
-/

namespace A178921.P1636458206758269748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286470 (A064988 (n + 1)).toNat) (A325097 (n + 1))

end

end A178921.P1636458206758269748

/-! ## A178921.P13312209766500399692

`A006530(A183092(∏{p}[n+1, #]))-A076820(n+1)`
-/

namespace A178921.P13312209766500399692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A183092 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat - A076820 (n + 1)

end

end A178921.P13312209766500399692

/-! ## A178921.P9464545982082531482

`A049087(n+1)+A049087(A213224(n+1))`
-/

namespace A178921.P9464545982082531482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049087 (n + 1) + A049087 (A213224 (n + 1)).toNat

end

end A178921.P9464545982082531482

/-! ## A178921.P4599143174383970035

`A006530(A183092(n+1))-A076820(n+1)`
-/

namespace A178921.P4599143174383970035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A183092 (n + 1)).toNat - A076820 (n + 1)

end

end A178921.P4599143174383970035

/-! ## A178921.P714179345182131683

`A241919(A328878(n+1)^A322452(n+1))`
-/

namespace A178921.P714179345182131683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241919 (SequenceMachineLib.roundAway ((A328878 (n + 1) : ℚ) ^ (A322452 (n + 1) : ℤ))).toNat

end

end A178921.P714179345182131683

/-! ## A178921.P13720206064815709310

`A241919(A064988(n+1))%A006530(A062509(n+1))`
-/

namespace A178921.P13720206064815709310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241919 (A064988 (n + 1)).toNat) (A006530 (A062509 (n + 1)).toNat)

end

end A178921.P13720206064815709310

/-!
# A178922: a(n) = (n+1)^n - n^(n-1) for n > 0, a(0) = 1.

The programs for A178922, there is no canonical definition to state claims against.
-/

/-! ## A178922.P16380407474543017900

`A152917(n+1)-A152917(n)`
-/

namespace A178922.P16380407474543017900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152917 (n + 1) - A152917 n

end

end A178922.P16380407474543017900

/-! ## A178922.P3558424824157924952

`Δ[n^abs(1-n)]`
-/

namespace A178922.P3558424824157924952
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (|1 - (n : ℤ)| : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178922.P3558424824157924952

/-! ## A178922.P11551666814007256475

`ceil(Δ[round(acot(n)+n)^(n-1)])`
-/

namespace A178922.P11551666814007256475
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A178922.P11551666814007256475

/-! ## A178922.P12853464783697847674

`round(Δ[round(acot(n)+n)^(n-1)])`
-/

namespace A178922.P12853464783697847674
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A178922.P12853464783697847674

/-! ## A178922.P18128565277019645348

`abs(Δ[n^((2*n+1)%(n+2))])`
-/

namespace A178922.P18128565277019645348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ ((2 * n + 1) % (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A178922.P18128565277019645348

/-! ## A178922.P508409240883622387

`abs(Δ[n*A000272(n)])`
-/

namespace A178922.P508409240883622387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A178922.P508409240883622387

/-! ## A178922.P18222050835915681686

`abs(record[Δ[-A095890(n+1)]])`
-/

namespace A178922.P18222050835915681686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A095890 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A178922.P18222050835915681686

/-! ## A178922.P12852871318562510105

`A000169(n+1)-n^abs(1-n)`
-/

namespace A178922.P12852871318562510105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000169 (n + 1) : ℚ) - (n : ℚ) ^ (|1 - (n : ℤ)| : ℤ)

end

end A178922.P12852871318562510105

/-! ## A178922.P6334432470623464956

`Δ[n*A000272(n)]*A134431(A127321(n))`
-/

namespace A178922.P6334432470623464956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A134431 (A127321 n).toNat

end

end A178922.P6334432470623464956

/-! ## A178922.P8680717650530946977

`A283666(A131818(n+1))+Δ[n*A000272(n)]`
-/

namespace A178922.P8680717650530946977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283666 (A131818 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A178922.P8680717650530946977

/-!
# A178923: Rectangular array T(m,k)= StirlingS2(k-1,m-1)*m! (The Coupon Collectors Problem).

The programs for A178923, there is no canonical definition to state claims against.
-/

/-! ## A178923.P8032161426140352245

`A263736(n+1)*A320655(A027929(n+3))`
-/

namespace A178923.P8032161426140352245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263736 (n + 1) * A320655 (A027929 (n + 3)).toNat

end

end A178923.P8032161426140352245

/-! ## A178923.P13447200196605118308

`and(A181039(n+1), A305979(A158769(2*n)))`
-/

namespace A178923.P13447200196605118308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A181039 (n + 1)) (A305979 (A158769 (2 * n)).toNat)

end

end A178923.P13447200196605118308

/-! ## A178923.P9661923416138778904

`and(record[A110098(n)], A265005(n+1))`
-/

namespace A178923.P9661923416138778904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A265005 (n + 1))

end

end A178923.P9661923416138778904

/-! ## A178923.P14514012566578703861

`A006530(A000079(n))*A358623(n)`
-/

namespace A178923.P14514012566578703861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000079 n).toNat * A358623 n

end

end A178923.P14514012566578703861

/-! ## A178923.P4864283138379325643

`ratio[A178522(n)]*A316893(A118390(n))`
-/

namespace A178923.P4864283138379325643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178522 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A316893 (A118390 n).toNat : ℚ)

end

end A178923.P4864283138379325643

/-!
# A178925: Number of n-node simple graphs that are determined by spectrum.

The programs for A178925, there is no canonical definition to state claims against.
-/

/-! ## A178925.P8479591115732923077

`A000088(n+1)-A006608(n+1)`
-/

namespace A178925.P8479591115732923077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A006608 (n + 1)

end

end A178925.P8479591115732923077

/-! ## A178925.P2264907905798262721

`A178944(n+1)-A052928(A006608(n+1))`
-/

namespace A178925.P2264907905798262721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178944 (n + 1) - A052928 (A006608 (n + 1)).toNat

end

end A178925.P2264907905798262721

/-! ## A178925.P11602597644772464692

`A178944(n+1)-Δ[or(1, A241458(n+3))]`
-/

namespace A178925.P11602597644772464692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A241458 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178944 (n + 1) - (f1 (n + 1) - f1 n)

end

end A178925.P11602597644772464692

/-!
# A178926: T(n,k)=Log base 2 of the number of nXk binary arrays with no element equal to the modulo 2 sum of its diagonal and antidiagonal neighbors.

The programs for A178926, there is no canonical definition to state claims against.
-/

/-! ## A178926.P10235272053156464544

`∑{d}[7*A132747(A220614(n+1))/2, #²%3]`
-/

namespace A178926.P10235272053156464544
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * ((A132747 (A220614 (n + 1)).toNat : ℚ) / 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d ^ 2 % 3

end

end A178926.P10235272053156464544

/-! ## A178926.P18196932575789896479

`A132747(A220614(n+1)+A179011(n+1))`
-/

namespace A178926.P18196932575789896479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (A220614 (n + 1) + A179011 (n + 1)).toNat

end

end A178926.P18196932575789896479

/-! ## A178926.P7897449352283679318

`and(-A132747(A220614(n+1)), A179008(n+1))`
-/

namespace A178926.P7897449352283679318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A132747 (A220614 (n + 1)).toNat) (A179008 (n + 1))

end

end A178926.P7897449352283679318

/-! ## A178926.P12888104212460984391

`and(-A132747(A220614(n+1)), A348041(n+1))`
-/

namespace A178926.P12888104212460984391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A132747 (A220614 (n + 1)).toNat) (A348041 (n + 1))

end

end A178926.P12888104212460984391

/-! ## A178926.P16372273561846225478

`A132747(A220614(n+1)+2*A132747(n+1))`
-/

namespace A178926.P16372273561846225478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (A220614 (n + 1) + 2 * A132747 (n + 1)).toNat

end

end A178926.P16372273561846225478

/-! ## A178926.P7171715904090711615

`A132747(A220614(n+1))%A000005(A008486(n))`
-/

namespace A178926.P7171715904090711615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132747 (A220614 (n + 1)).toNat) (A000005 (A008486 n).toNat)

end

end A178926.P7171715904090711615

/-! ## A178926.P12219315417907812981

`A132747(A132747(n+1)+A220614(n+1)+A132747(n+1))`
-/

namespace A178926.P12219315417907812981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (A132747 (n + 1) + (A220614 (n + 1) + A132747 (n + 1))).toNat

end

end A178926.P12219315417907812981

/-! ## A178926.P15590340227172503791

`A132747(A220614(n+1))^A014963(A167499(n))`
-/

namespace A178926.P15590340227172503791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132747 (A220614 (n + 1)).toNat : ℚ) ^ (A014963 (A167499 n).toNat : ℤ)

end

end A178926.P15590340227172503791

/-! ## A178926.P16346039493127287170

`A085589(n+3)%A179008(n+1)`
-/

namespace A178926.P16346039493127287170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085589 (n + 3)) (A179008 (n + 1))

end

end A178926.P16346039493127287170

/-! ## A178926.P9185426564030608878

`A132747(A220614(n+1)%A085589(n+3))`
-/

namespace A178926.P9185426564030608878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (Int.tmod (A220614 (n + 1)) (A085589 (n + 3))).toNat

end

end A178926.P9185426564030608878

/-!
# A178927: Number of partitions into a triangular number of parts.

The programs for A178927, there is no canonical definition to state claims against.
-/

/-! ## A178927.P14688095207985115588

`A218074(n)+A188433(A338601(n+1))`
-/

namespace A178927.P14688095207985115588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218074 n + A188433 (A338601 (n + 1)).toNat

end

end A178927.P14688095207985115588

/-! ## A178927.P10850387322087637731

`A238450(A296548(n+2))+A218074(n)`
-/

namespace A178927.P10850387322087637731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238450 (A296548 (n + 2)).toNat + A218074 n

end

end A178927.P10850387322087637731

/-! ## A178927.P13553961306587610960

`A026812(n)+A000009(A109151(n)+n)`
-/

namespace A178927.P13553961306587610960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 n + A000009 (A109151 n + (n : ℤ)).toNat

end

end A178927.P13553961306587610960

/-! ## A178927.P15059983700026747320

`A123108(A321729(n)+A097793(n))`
-/

namespace A178927.P15059983700026747320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A321729 n + A097793 n).toNat

end

end A178927.P15059983700026747320

/-! ## A178927.P4496189321219970776

`A111660(A319794(n)+A071625(2*(n+1)))`
-/

namespace A178927.P4496189321219970776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A319794 n + A071625 (2 * (n + 1))).toNat

end

end A178927.P4496189321219970776

/-!
# A178930: Number of semisimple Lie algebras of dimension n.

The programs for A178930, there is no canonical definition to state claims against.
-/

/-! ## A178930.P2688528279167625269

`A000720(2*(n+1))-A038605(∑[A000125(n+1)])`
-/

namespace A178930.P2688528279167625269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * (n + 1)) - A038605 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A178930.P2688528279167625269

/-! ## A178930.P17576904796169667348

`A230980(2*n+1)%A038605(∑[A000125(n+1)])`
-/

namespace A178930.P17576904796169667348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230980 (2 * n + 1)) (A038605 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A178930.P17576904796169667348

/-!
# A178931: This sequence S is generated by the following rules: 2 is in S, and if n is in S, then floor[(3n-1)/2] and 3n are in S.

The programs for A178931, the canonical program `A178931.P14801876109230170094` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178931 has offset 1).

The definition of A178931 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3083 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178931.P14801876109230170094

`filter[n+1, A117943(#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A178931

/-- `filter[n+1, A117943(#)]` -/
def P14801876109230170094.Spec : Prop :=
  ∀ n, (P14801876109230170094.a n : ℤ) = A178931 (n + 1)

theorem P14801876109230170094.correct : P14801876109230170094.Spec := by
  intro n
  simp only [A178931, Nat.add_sub_cancel]

end A178931

/-! ## A178931.P2043277826171487165

`eq[1, A117943(n+1)]+1`
-/

namespace A178931.P2043277826171487165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117943 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A178931.P2043277826171487165

namespace A178931

/-- `eq[1, A117943(n+1)]+1` -/
def P2043277826171487165.Spec : Prop :=
  ∀ n, (P2043277826171487165.a n : ℤ) = A178931 (n + 1)

end A178931

/-! ## A178931.P5545403515374247268

`record[(n+2)*A117943(n+2)]`
-/

namespace A178931.P5545403515374247268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A117943 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178931.P5545403515374247268

namespace A178931

/-- `record[(n+2)*A117943(n+2)]` -/
def P5545403515374247268.Spec : Prop :=
  ∀ n, P5545403515374247268.a n = A178931 (n + 1)

end A178931

/-! ## A178931.P2029428355737492634

`eq[1, A117943(A028310(n))]`
-/

namespace A178931.P2029428355737492634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117943 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178931.P2029428355737492634

namespace A178931

/-- `eq[1, A117943(A028310(n))]` -/
def P2029428355737492634.Spec : Prop :=
  ∀ n, (P2029428355737492634.a n : ℤ) = A178931 (n + 1)

end A178931

/-! ## A178931.P8677962827918821921

`eq[1, A117943(A000007(n)+n)]`
-/

namespace A178931.P8677962827918821921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117943 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178931.P8677962827918821921

namespace A178931

/-- `eq[1, A117943(A000007(n)+n)]` -/
def P8677962827918821921.Spec : Prop :=
  ∀ n, (P8677962827918821921.a n : ℤ) = A178931 (n + 1)

end A178931

/-! ## A178931.P3184744843621163254

`lt[A000007(n), A117943(n+1)]+1`
-/

namespace A178931.P3184744843621163254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117943 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A178931.P3184744843621163254

namespace A178931

/-- `lt[A000007(n), A117943(n+1)]+1` -/
def P3184744843621163254.Spec : Prop :=
  ∀ n, (P3184744843621163254.a n : ℤ) = A178931 (n + 1)

end A178931

/-! ## A178931.P1558350024983126823

`eq[1, A117943(A065033(2*n))]`
-/

namespace A178931.P1558350024983126823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117943 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178931.P1558350024983126823

namespace A178931

/-- `eq[1, A117943(A065033(2*n))]` -/
def P1558350024983126823.Spec : Prop :=
  ∀ n, (P1558350024983126823.a n : ℤ) = A178931 (n + 1)

end A178931

/-! ## A178931.P14080736358677787762

`eq[1, A117943(A123108(2*n))]`
-/

namespace A178931.P14080736358677787762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117943 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178931.P14080736358677787762

namespace A178931

/-- `eq[1, A117943(A123108(2*n))]` -/
def P14080736358677787762.Spec : Prop :=
  ∀ n, (P14080736358677787762.a n : ℤ) = A178931 (n + 1)

end A178931

/-! ## A178931.P11272175608596966631

`record[A117943(A340767(n))*A340767(n)]`
-/

namespace A178931.P11272175608596966631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117943 (A340767 n).toNat * A340767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178931.P11272175608596966631

namespace A178931

/-- `record[A117943(A340767(n))*A340767(n)]` -/
def P11272175608596966631.Spec : Prop :=
  ∀ n, P11272175608596966631.a n = A178931 (n + 1)

end A178931

/-!
# A178932: Partitions into distinct parts where no subset of the summands is an arithmetic progression (of length 3 or more).

The programs for A178932, there is no canonical definition to state claims against.
-/

/-! ## A178932.P7165666993036786340

`A325852(n)-A107279(A213003(n))`
-/

namespace A178932.P7165666993036786340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325852 n - A107279 (A213003 n).toNat

end

end A178932.P7165666993036786340

/-! ## A178932.P12597104959124341100

`A235127(A002991(n))+A325852(n)-A157242(n+1)`
-/

namespace A178932.P12597104959124341100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (A002991 n).toNat + (A325852 n - A157242 (n + 1))

end

end A178932.P12597104959124341100

/-! ## A178932.P5101042233280054738

`A325852(n)+A010815(A121295(n))`
-/

namespace A178932.P5101042233280054738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325852 n + A010815 (A121295 (n + 10)).toNat

end

end A178932.P5101042233280054738

/-! ## A178932.P8091198582893292274

`A325852(n)-A326291(A016885(n))`
-/

namespace A178932.P8091198582893292274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325852 n - A326291 (A016885 n).toNat

end

end A178932.P8091198582893292274

/-! ## A178932.P9281251417632257425

`A325852(n)+A121373(A264272(n+1))`
-/

namespace A178932.P9281251417632257425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325852 n + A121373 (A264272 (n + 1)).toNat

end

end A178932.P9281251417632257425

/-!
# A178934: a(n) = floor((3*4^n + 2*3^n)/5).

The programs for A178934, the canonical program `A178934.P6256349692293555477` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178934 has offset 0).

The definition of A178934 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((3*4^n+2*3^n)/5)` (program `A178934.P6256349692293555477`, by `A178934.P6256349692293555477.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A178934.P1359004312647741646

`7*a(n-1)-12*a(n-2)+a(n-4)-7*a(n-5)+12*a(n-6)` with `a(0)=1, a(1)=3, a(2)=13, a(3)=49, a(4)=186, a(5)=711`
-/

namespace A178934.P1359004312647741646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 13, 49, 186, 711] fun n a =>
  7 * a (n - 1) - 12 * a (n - 2) + a (n - 4) - 7 * a (n - 5) + 12 * a (n - 6)

end

end A178934.P1359004312647741646

namespace A178934

/-- `7*a(n-1)-12*a(n-2)+a(n-4)-7*a(n-5)+12*a(n-6)` -/
def P1359004312647741646.Spec : Prop :=
  ∀ n, P1359004312647741646.a n = A178934 n

end A178934

/-! ## A178934.P6256349692293555477

`floor((3*4^n+2*3^n)/5)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178934

/-- `floor((3*4^n+2*3^n)/5)` -/
def P6256349692293555477.Spec : Prop :=
  ∀ n, P6256349692293555477.a n = A178934 n

theorem P6256349692293555477.correct : P6256349692293555477.Spec := by
  intro n
  simp only [A178934]

end A178934

/-! ## A178934.P1727999706688913467

`A178935(n+2)-Δ[A255463(n)]`
-/

namespace A178934.P1727999706688913467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178935 (n + 2) - (f1 (n + 1) - f1 n)

end

end A178934.P1727999706688913467

namespace A178934

/-- `A178935(n+2)-Δ[A255463(n)]` -/
def P1727999706688913467.Spec : Prop :=
  ∀ n, P1727999706688913467.a n = A178934 n

end A178934

/-! ## A178934.P17763363951310772423

`A178935(4/2+n)%Δ[A255463(n)]`
-/

namespace A178934.P17763363951310772423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178935 (SequenceMachineLib.roundAway ((4 : ℚ) / 2 + (n : ℚ))).toNat) (f1 (n + 1) - f1 n)

end

end A178934.P17763363951310772423

namespace A178934

/-- `A178935(4/2+n)%Δ[A255463(n)]` -/
def P17763363951310772423.Spec : Prop :=
  ∀ n, P17763363951310772423.a n = A178934 n

end A178934

/-! ## A178934.P9535911469210614960

`A122117(n)+A117451(A000244(n))`
-/

namespace A178934.P9535911469210614960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122117 n + A117451 (A000244 n).toNat

end

end A178934.P9535911469210614960

namespace A178934

/-- `A122117(n)+A117451(A000244(n))` -/
def P9535911469210614960.Spec : Prop :=
  ∀ n, P9535911469210614960.a n = A178934 n

end A178934

/-!
# A178935: a(n) = floor((3*4^n - 2*3^n)/5).

The programs for A178935, the canonical program `A178935.P13557863020344052847` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178935 has offset 0).

The definition of A178935 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((3*4^n-2*3^n)/5)` (program `A178935.P13557863020344052847`, by `A178935.P13557863020344052847.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A178935.P13557863020344052847

`floor((3*4^n-2*3^n)/5)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178935

/-- `floor((3*4^n-2*3^n)/5)` -/
def P13557863020344052847.Spec : Prop :=
  ∀ n, P13557863020344052847.a n = A178935 n

theorem P13557863020344052847.correct : P13557863020344052847.Spec := by
  intro n
  simp only [A178935]

end A178935

/-! ## A178935.P15896308524627163465

`ceil(-(3-A255463(n))/5)`
-/

namespace A178935.P15896308524627163465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈-((3 - A255463 n : ℚ) / 5)⌉

end

end A178935.P15896308524627163465

namespace A178935

/-- `ceil(-(3-A255463(n))/5)` -/
def P15896308524627163465.Spec : Prop :=
  ∀ n, P15896308524627163465.a n = A178935 n

end A178935

/-! ## A178935.P279331869329335928

`round((Δ[A005061(n)]-1)/5)`
-/

namespace A178935.P279331869329335928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n - 1 : ℚ) / 5)

end

end A178935.P279331869329335928

namespace A178935

/-- `round((Δ[A005061(n)]-1)/5)` -/
def P279331869329335928.Spec : Prop :=
  ∀ n, P279331869329335928.a n = A178935 n

end A178935

/-! ## A178935.P16710667261240026658

`round((A165665(n)-A002783(n))/5)`
-/

namespace A178935.P16710667261240026658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A165665 n - A002783 n : ℚ) / 5)

end

end A178935.P16710667261240026658

namespace A178935

/-- `round((A165665(n)-A002783(n))/5)` -/
def P16710667261240026658.Spec : Prop :=
  ∀ n, P16710667261240026658.a n = A178935 n

end A178935

/-! ## A178935.P12732965636678226154

`round((A000225(n)+Δ[A137786(n)])/5)`
-/

namespace A178935.P12732965636678226154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137786 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000225 n + (f1 (n + 1) - f1 n) : ℚ) / 5)

end

end A178935.P12732965636678226154

namespace A178935

/-- `round((A000225(n)+Δ[A137786(n)])/5)` -/
def P12732965636678226154.Spec : Prop :=
  ∀ n, P12732965636678226154.a n = A178935 n

end A178935

/-!
# A178936: a(n) = floor((2*3^n+3*2^n)/5).

The programs for A178936, the canonical program `A178936.P8254085484855879568` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178936 has offset 0).

The definition of A178936 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((2*3^n+3*2^n)/5)` (program `A178936.P8254085484855879568`, by `A178936.P8254085484855879568.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A178936.P8254085484855879568

`floor((2*3^n+3*2^n)/5)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178936

/-- `floor((2*3^n+3*2^n)/5)` -/
def P8254085484855879568.Spec : Prop :=
  ∀ n, P8254085484855879568.a n = A178936 n

theorem P8254085484855879568.correct : P8254085484855879568.Spec := by
  intro n
  simp only [A178936]

end A178936

/-! ## A178936.P1075478342606776727

`round((Δ[A254362(n)]-1)/5)`
-/

namespace A178936.P1075478342606776727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254362 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n - 1 : ℚ) / 5)

end

end A178936.P1075478342606776727

namespace A178936

/-- `round((Δ[A254362(n)]-1)/5)` -/
def P1075478342606776727.Spec : Prop :=
  ∀ n, P1075478342606776727.a n = A178936 n

end A178936

/-! ## A178936.P5380789106066089081

`round(A211570(2*n+1)/20)`
-/

namespace A178936.P5380789106066089081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A211570 (2 * n + 1) : ℚ) / 20)

end

end A178936.P5380789106066089081

namespace A178936

/-- `round(A211570(2*n+1)/20)` -/
def P5380789106066089081.Spec : Prop :=
  ∀ n, P5380789106066089081.a n = A178936 n

end A178936

/-! ## A178936.P568143506237128211

`A047263(ceil(2^(n-1)+3^(n-1)))+1`
-/

namespace A178936.P568143506237128211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + 1

end

end A178936.P568143506237128211

namespace A178936

/-- `A047263(ceil(2^(n-1)+3^(n-1)))+1` -/
def P568143506237128211.Spec : Prop :=
  ∀ n, P568143506237128211.a n = A178936 n

end A178936

/-!
# A178937: Partial sums of number of different shapes formed by bending a piece of wire of length n in the plane A066372.

The programs for A178937, there is no canonical definition to state claims against.
-/

/-! ## A178937.P109357682073563490

`∑[A066372(n+1)]`
-/

namespace A178937.P109357682073563490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178937.P109357682073563490

/-! ## A178937.P2180212945311504594

`a(n-1)+A066372(n+1)+A000007(n)` with `a(0)=1`
-/

namespace A178937.P2180212945311504594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A066372 (n + 1) + A000007 n)

end

end A178937.P2180212945311504594

/-! ## A178937.P11494356534097353631

`a(n-1)+A185246(n)+A066372(n+1)` with `a(0)=1`
-/

namespace A178937.P11494356534097353631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A185246 n + A066372 (n + 1))

end

end A178937.P11494356534097353631

/-! ## A178937.P16084120125728869062

`a(n-1)-A066372(n+1)/A057428(n)` with `a(0)=1`
-/

namespace A178937.P16084120125728869062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A066372 (n + 1) : ℚ) / (A057428 n : ℚ)

end

end A178937.P16084120125728869062

/-! ## A178937.P14208185264208161764

`a(n-1)+A066372(n+1)%A001444(n)` with `a(0)=1`
-/

namespace A178937.P14208185264208161764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A066372 (n + 1)) (A001444 n)

end

end A178937.P14208185264208161764

/-!
# A178940: Number of flat special rim-hook tableaux.

The programs for A178940, there is no canonical definition to state claims against.
-/

/-! ## A178940.P1102750430843576843

`A368409(A184983(n+1))+A206100(n)`
-/

namespace A178940.P1102750430843576843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368409 (A184983 (n + 1)).toNat + A206100 n

end

end A178940.P1102750430843576843

/-!
# A178941: Number of special rim-hook tableaux.

The programs for A178941, there is no canonical definition to state claims against.
-/

/-! ## A178941.P16000710353633315858

`or(1, A247908(A000294(n)))`
-/

namespace A178941.P16000710353633315858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A247908 (A000294 n).toNat)

end

end A178941.P16000710353633315858

/-! ## A178941.P13638487060106193169

`A130821(A149803(n))`
-/

namespace A178941.P13638487060106193169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130821 (A149803 n).toNat

end

end A178941.P13638487060106193169

/-! ## A178941.P11608565039568896588

`A130821(A149804(n))`
-/

namespace A178941.P11608565039568896588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130821 (A149804 n).toNat

end

end A178941.P11608565039568896588

/-! ## A178941.P2275086783492159203

`A204854(A149805(n))`
-/

namespace A178941.P2275086783492159203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204854 (A149805 n).toNat

end

end A178941.P2275086783492159203

/-!
# A178942: a(1) = 3; for n >= 2, a(n) is the smallest prime q > a(n-1) such that, for the previous prime p and the following prime r, the fraction (q-p)/(r-q) has denominator equal to A001223(n)/2 (or 0, if no such prime exists).

The programs for A178942, there is no canonical definition to state claims against.
-/

/-! ## A178942.P5664738610717404927

`∩[A219636(A212450(n+1)), A181325(n)]`
-/

namespace A178942.P5664738610717404927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219636 (A212450 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181325 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178942.P5664738610717404927

/-! ## A178942.P7375152531695790631

`∩[A219636(n+1), A181325(n)]`
-/

namespace A178942.P7375152531695790631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181325 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178942.P7375152531695790631

/-! ## A178942.P17001229848921056864

`p?[A274701(∑[A161451(n+1)])]`
-/

namespace A178942.P17001229848921056864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161451 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274701 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178942.P17001229848921056864

/-! ## A178942.P4862301994941375455

`A000040(eq[A060951(5*n+2), A259191(4*n+2)])`
-/

namespace A178942.P4862301994941375455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060951 (5 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259191 (4 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A178942.P4862301994941375455

/-! ## A178942.P14109936053268529644

`A163466(∪[A291284(2*(n+1)), A023218(n+1)])`
-/

namespace A178942.P14109936053268529644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291284 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023218 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163466 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A178942.P14109936053268529644

/-!
# A178943: Primes that are not balanced primes (see A006562).

The programs for A178943, there is no canonical definition to state claims against.
-/

/-! ## A178943.P2493292594805751260

`∪[A051634(n+1), A068828(n+1)]`
-/

namespace A178943.P2493292594805751260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A178943.P2493292594805751260

/-! ## A178943.P4516841279284937322

`A000040(comp[A064113(n+1)]+1)`
-/

namespace A178943.P4516841279284937322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064113 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A178943.P4516841279284937322

/-! ## A178943.P8554113866624120174

`A040976(comp[A064113(n+1)]+1)+2`
-/

namespace A178943.P8554113866624120174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064113 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) + 2

end

end A178943.P8554113866624120174

/-! ## A178943.P466230906209631201

`A000040(eq[0, char[A064113(n+1)]]+1)`
-/

namespace A178943.P466230906209631201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064113 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A178943.P466230906209631201

/-! ## A178943.P11860794169792983460

`A000040(∑[A333254(n+1)]-A333254(n+1)+1)`
-/

namespace A178943.P11860794169792983460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j - A333254 (n + 1) + 1).toNat

end

end A178943.P11860794169792983460

/-! ## A178943.P9339438364959859011

`p?[A008578(n+1)+char[A066875(n+1)]]`
-/

namespace A178943.P9339438364959859011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066875 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178943.P9339438364959859011

/-! ## A178943.P17090532913383240771

`eq[1, A346399(n+1)]+1`
-/

namespace A178943.P17090532913383240771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346399 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A178943.P17090532913383240771

/-! ## A178943.P2851680732795372730

`p?[A225496(n+1)]`
-/

namespace A178943.P2851680732795372730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178943.P2851680732795372730

/-! ## A178943.P88530481689170484

`p?[record[A225496(A133310(n))]]`
-/

namespace A178943.P88530481689170484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225496 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178943.P88530481689170484

/-! ## A178943.P4461188410940159854

`record[A006530(A225496(n+2))]`
-/

namespace A178943.P4461188410940159854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A225496 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178943.P4461188410940159854

/-! ## A178943.P10397766894107435951

`filter[A225496(n+1), A010051(#)]`
-/

namespace A178943.P10397766894107435951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A178943.P10397766894107435951

/-! ## A178943.P8351194319139130426

`filter[A225496(n+2), A080339(#)]`
-/

namespace A178943.P8351194319139130426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225496 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A178943.P8351194319139130426

/-! ## A178943.P15074593280426002213

`∩[A000040(n+1), A225496(n+1)]`
-/

namespace A178943.P15074593280426002213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178943.P15074593280426002213

/-! ## A178943.P3050493377762728052

`∩[A045319(n+1), A225496(n+1)]`
-/

namespace A178943.P3050493377762728052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178943.P3050493377762728052

/-! ## A178943.P18394784791979923904

`∩[A182986(n+1), A225496(n+1)]`
-/

namespace A178943.P18394784791979923904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178943.P18394784791979923904

/-! ## A178943.P8968690977377567433

`∩[A225496(n+1), A240960(n+1)]`
-/

namespace A178943.P8968690977377567433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178943.P8968690977377567433

/-!
# A178944: Number of n-node simple graphs that are determined by their resistance distance multisets.

The programs for A178944, there is no canonical definition to state claims against.
-/

/-! ## A178944.P4069631727443191255

`record[A327805(n)]-A178999(n+1)`
-/

namespace A178944.P4069631727443191255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A178999 (n + 1)

end

end A178944.P4069631727443191255

/-! ## A178944.P10771125044148234313

`A000088(n+1)-A178999(n+1)`
-/

namespace A178944.P10771125044148234313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A178999 (n + 1)

end

end A178944.P10771125044148234313

/-! ## A178944.P12280998694589371988

`A000088(n+1)-and(118, A322070(n+1))`
-/

namespace A178944.P12280998694589371988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - Int.land 118 (A322070 (n + 1))

end

end A178944.P12280998694589371988

/-! ## A178944.P3684069388449479569

`A000088(n+1)-(∏[4-2/(n+1)]/2)%A035693(3*n+2)!`
-/

namespace A178944.P3684069388449479569
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - Int.tmod (SequenceMachineLib.roundAway ((∏ j ∈ Finset.range (n + 1), f1 j) / 2)) (Nat.factorial (A035693 (3 * n + 2)).toNat : ℤ)

end

end A178944.P3684069388449479569

/-! ## A178944.P13722426634691710248

`A000088(n+1)-(A276041(A340940(n))-6)`
-/

namespace A178944.P13722426634691710248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - (A276041 (A340940 n).toNat - 6)

end

end A178944.P13722426634691710248

/-!
# A178945: Expansion of x*(1-x)^2/( (1-2*x^2)*(1-2*x)^2).

The programs for A178945, the canonical program `A178945.P11536886421111809047` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178945 has offset 1).

The definition of A178945 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178945.P11536886421111809047

`4*a(n-1)-2*a(n-2)-8*a(n-3)+8*a(n-4)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=16`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178945

/-- `4*a(n-1)-2*a(n-2)-8*a(n-3)+8*a(n-4)` -/
def P11536886421111809047.Spec : Prop :=
  ∀ n, P11536886421111809047.a n = A178945 (n + 1)

theorem P11536886421111809047.correct : P11536886421111809047.Spec := by
  intro n
  simp only [A178945, Nat.add_sub_cancel]

end A178945

/-! ## A178945.P2033166649867463088

`A001792(n)-A007179(n)`
-/

namespace A178945.P2033166649867463088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - A007179 n

end

end A178945.P2033166649867463088

namespace A178945

/-- `A001792(n)-A007179(n)` -/
def P2033166649867463088.Spec : Prop :=
  ∀ n, P2033166649867463088.a n = A178945 (n + 1)

end A178945

/-! ## A178945.P8871992568969350292

`A001787(n)+Δ[A005418(n+1)]`
-/

namespace A178945.P8871992568969350292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n + (f1 (n + 1) - f1 n)

end

end A178945.P8871992568969350292

namespace A178945

/-- `A001787(n)+Δ[A005418(n+1)]` -/
def P8871992568969350292.Spec : Prop :=
  ∀ n, P8871992568969350292.a n = A178945 (n + 1)

end A178945

/-! ## A178945.P2125804464539306608

`A001787(n)+Δ[A056326(n+1)]`
-/

namespace A178945.P2125804464539306608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n + (f1 (n + 1) - f1 n)

end

end A178945.P2125804464539306608

namespace A178945

/-- `A001787(n)+Δ[A056326(n+1)]` -/
def P2125804464539306608.Spec : Prop :=
  ∀ n, P2125804464539306608.a n = A178945 (n + 1)

end A178945

/-! ## A178945.P8880821985457494363

`A323936(n+3)-A011782(n+2)`
-/

namespace A178945.P8880821985457494363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323936 (n + 3) - A011782 (n + 2)

end

end A178945.P8880821985457494363

namespace A178945

/-- `A323936(n+3)-A011782(n+2)` -/
def P8880821985457494363.Spec : Prop :=
  ∀ n, P8880821985457494363.a n = A178945 (n + 1)

end A178945

/-! ## A178945.P16657631383016409209

`Δ[A005418(n+1)]+n*A011782(n)`
-/

namespace A178945.P16657631383016409209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ) * A011782 n

end

end A178945.P16657631383016409209

namespace A178945

/-- `Δ[A005418(n+1)]+n*A011782(n)` -/
def P16657631383016409209.Spec : Prop :=
  ∀ n, P16657631383016409209.a n = A178945 (n + 1)

end A178945

/-! ## A178945.P12821780323470275227

`A001792(n)+A016116(n)-A005418(n+1)`
-/

namespace A178945.P12821780323470275227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n + (A016116 n - A005418 (n + 1))

end

end A178945.P12821780323470275227

namespace A178945

/-- `A001792(n)+A016116(n)-A005418(n+1)` -/
def P12821780323470275227.Spec : Prop :=
  ∀ n, P12821780323470275227.a n = A178945 (n + 1)

end A178945

/-! ## A178945.P13741970711069096831

`Δ[A001792(n)-A135098(n)]`
-/

namespace A178945.P13741970711069096831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - A135098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178945.P13741970711069096831

namespace A178945

/-- `Δ[A001792(n)-A135098(n)]` -/
def P13741970711069096831.Spec : Prop :=
  ∀ n, P13741970711069096831.a n = A178945 (n + 1)

end A178945

/-! ## A178945.P2715186588644065033

`A290222(∑[n+2]+3)`
-/

namespace A178945.P2715186588644065033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290222 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A178945.P2715186588644065033

namespace A178945

/-- `A290222(∑[n+2]+3)` -/
def P2715186588644065033.Spec : Prop :=
  ∀ n, P2715186588644065033.a n = A178945 (n + 1)

end A178945

/-! ## A178945.P8612256542716850615

`record[A290222(A000124(n)+1)]`
-/

namespace A178945.P8612256542716850615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290222 (A000124 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178945.P8612256542716850615

namespace A178945

/-- `record[A290222(A000124(n)+1)]` -/
def P8612256542716850615.Spec : Prop :=
  ∀ n, P8612256542716850615.a n = A178945 (n + 1)

end A178945

/-! ## A178945.P10815487604925240871

`record[A290222(A000217(n)+2)]`
-/

namespace A178945.P10815487604925240871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290222 (A000217 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178945.P10815487604925240871

namespace A178945

/-- `record[A290222(A000217(n)+2)]` -/
def P10815487604925240871.Spec : Prop :=
  ∀ n, P10815487604925240871.a n = A178945 (n + 1)

end A178945

/-!
# A178946: a(n) = n*(n+1)*(2*n+1)/6 - n*floor(n/2).

The programs for A178946, the canonical program `A178946.P9379757882024740634` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178946 has offset 1).

The definition of A178946 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178946.P9379757882024740634

`(n+1)*(n+2)*(2*(n+1)+1)/6-(n+1)*floor((n+1)/2)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178946

/-- `(n+1)*(n+2)*(2*(n+1)+1)/6-(n+1)*floor((n+1)/2)` -/
def P9379757882024740634.Spec : Prop :=
  ∀ n, P9379757882024740634.a n = (A178946 (n + 1) : ℚ)

end A178946

/-! ## A178946.P12012360159491106854

`∑[record[(or(2, n)²-n)/4]]`
-/

namespace A178946.P12012360159491106854
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 2 n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 4

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178946.P12012360159491106854

namespace A178946

/-- `∑[record[(or(2, n)²-n)/4]]` -/
def P12012360159491106854.Spec : Prop :=
  ∀ n, P12012360159491106854.a n = (A178946 (n + 1) : ℚ)

end A178946

/-! ## A178946.P17210806630338326792

`∑[(record[C(or(2, n), 2)]+1)/2]`
-/

namespace A178946.P17210806630338326792
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 2 n) 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178946.P17210806630338326792

namespace A178946

/-- `∑[(record[C(or(2, n), 2)]+1)/2]` -/
def P17210806630338326792.Spec : Prop :=
  ∀ n, P17210806630338326792.a n = (A178946 (n + 1) : ℚ)

end A178946

/-! ## A178946.P14195490285339694339

`∑[∑[n*gcd(3, n%2)]+1]`
-/

namespace A178946.P14195490285339694339
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 3 (n % 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178946.P14195490285339694339

namespace A178946

/-- `∑[∑[n*gcd(3, n%2)]+1]` -/
def P14195490285339694339.Spec : Prop :=
  ∀ n, (P14195490285339694339.a n : ℤ) = A178946 (n + 1)

end A178946

/-! ## A178946.P17762670083564831526

`∑[∑[n*or(1, gcd(2, n))]+1]`
-/

namespace A178946.P17762670083564831526
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lor 1 (Nat.gcd 2 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178946.P17762670083564831526

namespace A178946

/-- `∑[∑[n*or(1, gcd(2, n))]+1]` -/
def P17762670083564831526.Spec : Prop :=
  ∀ n, (P17762670083564831526.a n : ℤ) = A178946 (n + 1)

end A178946

/-! ## A178946.P13574131454667157117

`∑[(2*n+1)*or(1, n)+1]/2`
-/

namespace A178946.P13574131454667157117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.lor 1 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A178946.P13574131454667157117

namespace A178946

/-- `∑[(2*n+1)*or(1, n)+1]/2` -/
def P13574131454667157117.Spec : Prop :=
  ∀ n, P13574131454667157117.a n = (A178946 (n + 1) : ℚ)

end A178946

/-! ## A178946.P3230330988097487432

`(A352116(n+1)+n+1)/2`
-/

namespace A178946.P3230330988097487432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352116 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A178946.P3230330988097487432

namespace A178946

/-- `(A352116(n+1)+n+1)/2` -/
def P3230330988097487432.Spec : Prop :=
  ∀ n, P3230330988097487432.a n = (A178946 (n + 1) : ℚ)

end A178946

/-! ## A178946.P14813023162107736192

`ceil((∑[A000217(or(1, n)+n)+1]-1)/2)`
-/

namespace A178946.P14813023162107736192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Nat.lor 1 n + n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2⌉

end

end A178946.P14813023162107736192

namespace A178946

/-- `ceil((∑[A000217(or(1, n)+n)+1]-1)/2)` -/
def P14813023162107736192.Spec : Prop :=
  ∀ n, P14813023162107736192.a n = A178946 (n + 1)

end A178946

/-!
# A178947: Expansion of x*(1+2*x+8*x^2+4*x^3+3*x^4) / ( (1+x)^2*(x-1)^4 ).

The programs for A178947, the canonical program `A178947.P12849333717324020937` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178947 has offset 1).

The definition of A178947 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178947.P6295769606105023345

`∑[2*C(comp[3*n], 2)+1]`
-/

namespace A178947.P6295769606105023345
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178947.P6295769606105023345

namespace A178947

/-- `∑[2*C(comp[3*n], 2)+1]` -/
def P6295769606105023345.Spec : Prop :=
  ∀ n, (P6295769606105023345.a n : ℤ) = A178947 (n + 1)

end A178947

/-! ## A178947.P12849333717324020937

`∑[∑[lcm(2, 2*n+n-1)]-1]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178947

/-- `∑[∑[lcm(2, 2*n+n-1)]-1]` -/
def P12849333717324020937.Spec : Prop :=
  ∀ n, P12849333717324020937.a n = A178947 (n + 1)

theorem P12849333717324020937.correct : P12849333717324020937.Spec := by
  intro n
  simp only [A178947, Nat.add_sub_cancel]

end A178947

/-! ## A178947.P2399268200779959354

`∑[∑[(2*n+n-1)*gcd(2, n)]+3]`
-/

namespace A178947.P2399268200779959354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) + ((n : ℤ) - 1)) * (Nat.gcd 2 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178947.P2399268200779959354

namespace A178947

/-- `∑[∑[(2*n+n-1)*gcd(2, n)]+3]` -/
def P2399268200779959354.Spec : Prop :=
  ∀ n, P2399268200779959354.a n = A178947 (n + 1)

end A178947

/-! ## A178947.P11844920261205118217

`∑[record[n*A106610(n+1)+1]]`
-/

namespace A178947.P11844920261205118217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A106610 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178947.P11844920261205118217

namespace A178947

/-- `∑[record[n*A106610(n+1)+1]]` -/
def P11844920261205118217.Spec : Prop :=
  ∀ n, P11844920261205118217.a n = A178947 (n + 1)

end A178947

/-! ## A178947.P5261697013699796307

`∑[2*A000217(A032766(n))+1]`
-/

namespace A178947.P5261697013699796307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 (A032766 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178947.P5261697013699796307

namespace A178947

/-- `∑[2*A000217(A032766(n))+1]` -/
def P5261697013699796307.Spec : Prop :=
  ∀ n, P5261697013699796307.a n = A178947 (n + 1)

end A178947

/-! ## A178947.P16601000189931034645

`∑[A001651(n+1)+A032766(n)²]`
-/

namespace A178947.P16601000189931034645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1) + A032766 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178947.P16601000189931034645

namespace A178947

/-- `∑[A001651(n+1)+A032766(n)²]` -/
def P16601000189931034645.Spec : Prop :=
  ∀ n, P16601000189931034645.a n = A178947 (n + 1)

end A178947

/-! ## A178947.P17551938535970245226

`A213389(n+1)+A212683(n+1)`
-/

namespace A178947.P17551938535970245226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213389 (n + 1) + A212683 (n + 1)

end

end A178947.P17551938535970245226

namespace A178947

/-- `A213389(n+1)+A212683(n+1)` -/
def P17551938535970245226.Spec : Prop :=
  ∀ n, P17551938535970245226.a n = A178947 (n + 1)

end A178947

/-! ## A178947.P12928927087886518999

`A225972(n+1)+A005993(n)+A000330(n)`
-/

namespace A178947.P12928927087886518999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225972 (n + 1) + (A005993 n + A000330 n)

end

end A178947.P12928927087886518999

namespace A178947

/-- `A225972(n+1)+A005993(n)+A000330(n)` -/
def P12928927087886518999.Spec : Prop :=
  ∀ n, P12928927087886518999.a n = A178947 (n + 1)

end A178947

/-! ## A178947.P19511231088221639

`∑[A002061(comp[3*n])]`
-/

namespace A178947.P19511231088221639
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178947.P19511231088221639

namespace A178947

/-- `∑[A002061(comp[3*n])]` -/
def P19511231088221639.Spec : Prop :=
  ∀ n, P19511231088221639.a n = A178947 (n + 1)

end A178947

/-! ## A178947.P9319811123454099247

`∑[record[A038502(n+1)²-n]]`
-/

namespace A178947.P9319811123454099247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1) ^ 2 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178947.P9319811123454099247

namespace A178947

/-- `∑[record[A038502(n+1)²-n]]` -/
def P9319811123454099247.Spec : Prop :=
  ∀ n, P9319811123454099247.a n = A178947 (n + 1)

end A178947

/-! ## A178947.P15825880542517121529

`A213390(n)-A282513(2*n)`
-/

namespace A178947.P15825880542517121529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213390 n - A282513 (2 * n)

end

end A178947.P15825880542517121529

namespace A178947

/-- `A213390(n)-A282513(2*n)` -/
def P15825880542517121529.Spec : Prop :=
  ∀ n, P15825880542517121529.a n = A178947 (n + 1)

end A178947

/-! ## A178947.P17146924123651104585

`∑[A110660(3*n)+1]`
-/

namespace A178947.P17146924123651104585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 (3 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178947.P17146924123651104585

namespace A178947

/-- `∑[A110660(3*n)+1]` -/
def P17146924123651104585.Spec : Prop :=
  ∀ n, P17146924123651104585.a n = A178947 (n + 1)

end A178947

/-! ## A178947.P11873948889434374347

`∑[A002620(lt[n, xor(2, n)]+1+n)]+1+n`
-/

namespace A178947.P11873948889434374347
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (SequenceMachineLib.nth (fun j => f2 j < f3 j) n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A178947.P11873948889434374347

namespace A178947

/-- `∑[A002620(lt[n, xor(2, n)]+1+n)]+1+n` -/
def P11873948889434374347.Spec : Prop :=
  ∀ n, P11873948889434374347.a n = A178947 (n + 1)

end A178947

/-! ## A178947.P527301571986373857

`∑[A004652(A109613(3*n))]`
-/

namespace A178947.P527301571986373857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (A109613 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178947.P527301571986373857

namespace A178947

/-- `∑[A004652(A109613(3*n))]` -/
def P527301571986373857.Spec : Prop :=
  ∀ n, P527301571986373857.a n = A178947 (n + 1)

end A178947

/-! ## A178947.P11311508228120029488

`A266769(3*n)+A008763(3*n)`
-/

namespace A178947.P11311508228120029488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 (3 * n) + A008763 (3 * n)

end

end A178947.P11311508228120029488

namespace A178947

/-- `A266769(3*n)+A008763(3*n)` -/
def P11311508228120029488.Spec : Prop :=
  ∀ n, P11311508228120029488.a n = A178947 (n + 1)

end A178947

/-! ## A178947.P12474297917032353210

`2*A266769(3*n)-A156040(3*n)`
-/

namespace A178947.P12474297917032353210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A266769 (3 * n) - A156040 (3 * n)

end

end A178947.P12474297917032353210

namespace A178947

/-- `2*A266769(3*n)-A156040(3*n)` -/
def P12474297917032353210.Spec : Prop :=
  ∀ n, P12474297917032353210.a n = A178947 (n + 1)

end A178947

/-! ## A178947.P15606610639313310734

`A154958(3*n)+n*A001399(3*n)`
-/

namespace A178947.P15606610639313310734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 (3 * n) + (n : ℤ) * A001399 (3 * n)

end

end A178947.P15606610639313310734

namespace A178947

/-- `A154958(3*n)+n*A001399(3*n)` -/
def P15606610639313310734.Spec : Prop :=
  ∀ n, P15606610639313310734.a n = A178947 (n + 1)

end A178947

/-!
# A178948: a(n) = smallest m>=0 such that n*(3^m)-1 is prime, or -1 if no such prime exists.

The programs for A178948, there is no canonical definition to state claims against.
-/

/-! ## A178948.P14792458639080432887

`A118402(A107852(n+1))%(A238505(n)-n)`
-/

namespace A178948.P14792458639080432887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118402 (A107852 (n + 1)).toNat) (A238505 n - (n : ℤ))

end

end A178948.P14792458639080432887

/-! ## A178948.P1410965184460362416

`A140727(∑{e}[2*ceil(2^n/3), #])`
-/

namespace A178948.P1410965184460362416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(2 ^ n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140727 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A178948.P1410965184460362416

/-! ## A178948.P2307167380874399614

`A105812(A263927(n+1)+1-n)`
-/

namespace A178948.P2307167380874399614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (A263927 (n + 1) + (1 - (n : ℤ))).toNat

end

end A178948.P2307167380874399614

/-! ## A178948.P14177040039430341168

`A131379((6*(n+1))^A051699(n))`
-/

namespace A178948.P14177040039430341168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131379 (SequenceMachineLib.roundAway ((6 * (n + 1) : ℚ) ^ (A051699 n : ℤ))).toNat

end

end A178948.P14177040039430341168

/-! ## A178948.P14621320642873791878

`A118402(n+1)%A001222(A263927(n+1))`
-/

namespace A178948.P14621320642873791878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118402 (n + 1)) (A001222 (A263927 (n + 1)).toNat)

end

end A178948.P14621320642873791878

/-!
# A178949: E.g.f. satisfies: A(x) = exp(x^2*A(x)) where A(x) = Sum_{n>=0} a(n)*x^(2n)/(2n)!.

The programs for A178949, the canonical program `A178949.P5027759749716746902` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178949 has offset 0).

The definition of A178949 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178949.P5027759749716746902

`(n+1)^(n-1)*(2*n)!/n!`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178949

/-- `(n+1)^(n-1)*(2*n)!/n!` -/
def P5027759749716746902.Spec : Prop :=
  ∀ n, P5027759749716746902.a n = (A178949 n : ℚ)

end A178949

/-! ## A178949.P8986591024042634637

`abs((-(n+1))^n)*A001761(n)`
-/

namespace A178949.P8986591024042634637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-(n + 1 : ℤ)) ^ n| * A001761 n

end

end A178949.P8986591024042634637

namespace A178949

/-- `abs((-(n+1))^n)*A001761(n)` -/
def P8986591024042634637.Spec : Prop :=
  ∀ n, P8986591024042634637.a n = A178949 n

end A178949

/-! ## A178949.P11281480534238276877

`∏[round(sqrt(n²+1))]*A227325(n)`
-/

namespace A178949.P11281480534238276877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A227325 n

end

end A178949.P11281480534238276877

namespace A178949

/-- `∏[round(sqrt(n²+1))]*A227325(n)` -/
def P11281480534238276877.Spec : Prop :=
  ∀ n, P11281480534238276877.a n = A178949 n

end A178949

/-! ## A178949.P11430695985127179867

`record[A109767(n)*A185390(n)]`
-/

namespace A178949.P11430695985127179867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109767 n * A185390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178949.P11430695985127179867

namespace A178949

/-- `record[A109767(n)*A185390(n)]` -/
def P11430695985127179867.Spec : Prop :=
  ∀ n, P11430695985127179867.a n = A178949 n

end A178949

/-! ## A178949.P1217438074462052039

`A000272(n+1)*A001813(n)`
-/

namespace A178949.P1217438074462052039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 (n + 1) * A001813 n

end

end A178949.P1217438074462052039

namespace A178949

/-- `A000272(n+1)*A001813(n)` -/
def P1217438074462052039.Spec : Prop :=
  ∀ n, P1217438074462052039.a n = A178949 n

end A178949

/-!
# A178950: Numbers n such that A178609(n)=A178609(n+1).

The programs for A178950, there is no canonical definition to state claims against.
-/

/-! ## A178950.P9839618995562130189

`eq[A178609(n+2), A178609(n+1)]+1`
-/

namespace A178950.P9839618995562130189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178609 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178609 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A178950.P9839618995562130189

/-!
# A178951: Numbers k such that A178609(k-1) = A178609(k) = A178609(k+1).

The programs for A178951, there is no canonical definition to state claims against.
-/

/-! ## A178951.P6786535895680748482

`∩[A178950(n+1)+1, A178950(n+1)]`
-/

namespace A178951.P6786535895680748482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178950 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178951.P6786535895680748482

/-!
# A178952: T(n,k)=Log base 2 of the number of nXk binary arrays with no element equal to the modulo 2 sum of its king-move neighbors.

The programs for A178952, the canonical program `A178952.P16316959360273851306` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178952 has offset 1).

The definition of A178952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178952.P12583329566816780784

`A003991(n+1)-A219525(n+1)`
-/

namespace A178952.P12583329566816780784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A219525 (n + 1)

end

end A178952.P12583329566816780784

namespace A178952

/-- `A003991(n+1)-A219525(n+1)` -/
def P12583329566816780784.Spec : Prop :=
  ∀ n, P12583329566816780784.a n = A178952 (n + 1)

end A178952

/-! ## A178952.P5687709586193285748

`A086416(A247714(n))-A219525(n+1)`
-/

namespace A178952.P5687709586193285748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086416 (A247714 n).toNat - A219525 (n + 1)

end

end A178952.P5687709586193285748

namespace A178952

/-- `A086416(A247714(n))-A219525(n+1)` -/
def P5687709586193285748.Spec : Prop :=
  ∀ n, P5687709586193285748.a n = A178952 (n + 1)

end A178952

/-! ## A178952.P11099066492697401210

`A002265(A098352(n+1))-A219525(n+1)`
-/

namespace A178952.P11099066492697401210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A098352 (n + 1)).toNat - A219525 (n + 1)

end

end A178952.P11099066492697401210

namespace A178952

/-- `A002265(A098352(n+1))-A219525(n+1)` -/
def P11099066492697401210.Spec : Prop :=
  ∀ n, P11099066492697401210.a n = A178952 (n + 1)

end A178952

/-! ## A178952.P16316959360273851306

`A003991(n+1)-∏{e}[A036561(n), A117571(#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A178952

/-- `A003991(n+1)-∏{e}[A036561(n), A117571(#)]` -/
def P16316959360273851306.Spec : Prop :=
  ∀ n, P16316959360273851306.a n = A178952 (n + 1)

theorem P16316959360273851306.correct : P16316959360273851306.Spec := by
  intro n
  simp only [A178952, Nat.add_sub_cancel]

end A178952

/-! ## A178952.P12625253312749602087

`A181988(A054582(n))-A219525(n+1)`
-/

namespace A178952.P12625253312749602087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181988 (A054582 n).toNat - A219525 (n + 1)

end

end A178952.P12625253312749602087

namespace A178952

/-- `A181988(A054582(n))-A219525(n+1)` -/
def P12625253312749602087.Spec : Prop :=
  ∀ n, P12625253312749602087.a n = A178952 (n + 1)

end A178952

/-! ## A178952.P15267922825161574186

`A003991(n+1)-∏{e}[A175840(n), A117571(#)]`
-/

namespace A178952.P15267922825161574186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A117571 (Nat.factorization (f1 n).natAbs p)

end

end A178952.P15267922825161574186

namespace A178952

/-- `A003991(n+1)-∏{e}[A175840(n), A117571(#)]` -/
def P15267922825161574186.Spec : Prop :=
  ∀ n, P15267922825161574186.a n = A178952 (n + 1)

end A178952

/-! ## A178952.P1590900512913314349

`A000005(A036561(n))-A219525(n+1)`
-/

namespace A178952.P1590900512913314349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A036561 n).toNat - A219525 (n + 1)

end

end A178952.P1590900512913314349

namespace A178952

/-- `A000005(A036561(n))-A219525(n+1)` -/
def P1590900512913314349.Spec : Prop :=
  ∀ n, P1590900512913314349.a n = A178952 (n + 1)

end A178952

/-! ## A178952.P10315308345066621234

`A000005(A175840(n))-A219525(n+1)`
-/

namespace A178952.P10315308345066621234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A175840 n).toNat - A219525 (n + 1)

end

end A178952.P10315308345066621234

namespace A178952

/-- `A000005(A175840(n))-A219525(n+1)` -/
def P10315308345066621234.Spec : Prop :=
  ∀ n, P10315308345066621234.a n = A178952 (n + 1)

end A178952

/-!
# A178953: Indices m such that 2*prime(m) cannot be written as a sum of two distinct prime(m-k) and prime(m+k).

The programs for A178953, there is no canonical definition to state claims against.
-/

/-! ## A178953.P13022997160152556559

`eq[0, A179835(n+1)]+1`
-/

namespace A178953.P13022997160152556559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179835 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A178953.P13022997160152556559

/-! ## A178953.P688507483463743867

`lt[A178609(n+1), 1]+1`
-/

namespace A178953.P688507483463743867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178609 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A178953.P688507483463743867

/-! ## A178953.P16058531921396333061

`lt[A178670(n+1), 1]+1`
-/

namespace A178953.P16058531921396333061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178670 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A178953.P16058531921396333061

/-! ## A178953.P12945784850924581764

`A000720(A178954(n+1))`
-/

namespace A178953.P12945784850924581764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A178954 (n + 1)).toNat

end

end A178953.P12945784850924581764

/-! ## A178953.P18047176040451317069

`lt[n*A178670(A028310(n)), n]`
-/

namespace A178953.P18047176040451317069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A178670 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A178953.P18047176040451317069

/-! ## A178953.P12215151910680305165

`eq[1, A001223(A178609(n+1)+1)]+1`
-/

namespace A178953.P12215151910680305165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A178609 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A178953.P12215151910680305165

/-! ## A178953.P14286839863843002173

`record[n+1-A000720(n*A178670(n+1)+1)]`
-/

namespace A178953.P14286839863843002173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000720 ((n : ℤ) * A178670 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178953.P14286839863843002173

/-!
# A178954: Primes prime(j) which cannot be written as 2*prime(j) = prime(j+k) + prime(j-k) for any 0 < k < j.

The programs for A178954, there is no canonical definition to state claims against.
-/

/-! ## A178954.P7512472402610029159

`A000040(A178953(n+1))`
-/

namespace A178954.P7512472402610029159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A178953 (n + 1)).toNat

end

end A178954.P7512472402610029159

/-! ## A178954.P14417109052871612223

`A000040(lt[A178670(n+1), 1]+1)`
-/

namespace A178954.P14417109052871612223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178670 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A178954.P14417109052871612223

/-! ## A178954.P6539819337225201030

`A000040(lt[A179835(n+1), 1]+1)`
-/

namespace A178954.P6539819337225201030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179835 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A178954.P6539819337225201030

/-! ## A178954.P1927643511180712378

`record[gcd(A000040(n+1), A178609(n+1))]`
-/

namespace A178954.P1927643511180712378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A178609 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178954.P1927643511180712378

/-! ## A178954.P3389176967442779517

`record[(1-A178670(n+1))*A000040(n+1)]`
-/

namespace A178954.P3389176967442779517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A178670 (n + 1)) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178954.P3389176967442779517

/-! ## A178954.P14081242630843729857

`A000040(eq[2, A000040(A178609(n+1)+1)]+1)`
-/

namespace A178954.P14081242630843729857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A178609 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A178954.P14081242630843729857

/-! ## A178954.P8711798287267001231

`A000040(eq[2, A000040(A178670(n+1)+1)]+1)`
-/

namespace A178954.P8711798287267001231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A178670 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A178954.P8711798287267001231

/-!
# A178957: Denominators in expansion of 1/(Sum_{n >= 0} (x^n/n!)*binomial(2n,n)/(n+1)).

The programs for A178957, there is no canonical definition to state claims against.
-/

/-! ## A178957.P4873980663735873839

`A000142(n)/A080237(A202180(n+1))`
-/

namespace A178957.P4873980663735873839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A080237 (A202180 (n + 1)).toNat : ℚ)

end

end A178957.P4873980663735873839

/-! ## A178957.P17372418309242643017

`A000142(n)/A347460(A145106(n+1))`
-/

namespace A178957.P17372418309242643017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A347460 (A145106 (n + 1)).toNat : ℚ)

end

end A178957.P17372418309242643017

/-! ## A178957.P11440389303386176537

`A000142(n)/A298614(A000045(2*(n+1)))`
-/

namespace A178957.P11440389303386176537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A298614 (A000045 (2 * (n + 1))).toNat : ℚ)

end

end A178957.P11440389303386176537

/-! ## A178957.P10344551833069142245

`A010551(n)*A085392(n!)`
-/

namespace A178957.P10344551833069142245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010551 n * A085392 (Nat.factorial n)

end

end A178957.P10344551833069142245

/-!
# A178959: Decimal expansion of the site percolation threshold for the (3,6,3,6) Kagome Archimedean lattice.

The programs for A178959, there is no canonical definition to state claims against.
-/

/-! ## A178959.P4016394647050478090

`9-A130880(n)`
-/

namespace A178959.P4016394647050478090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A130880 n

end

end A178959.P4016394647050478090

/-!
# A178960: Numbers n such that n! contains every digit at least once.

The programs for A178960, there is no canonical definition to state claims against.
-/

/-! ## A178960.P13575875677368353741

`eq[0, A204633(n)]`
-/

namespace A178960.P13575875677368353741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204633 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178960.P13575875677368353741

/-!
# A178961: Partial sums of A001010.

The programs for A178961, there is no canonical definition to state claims against.
-/

/-! ## A178961.P474885058490348722

`∑[A001010(n+1)]`
-/

namespace A178961.P474885058490348722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178961.P474885058490348722

/-! ## A178961.P6538063072061919103

`a(n-1)+A001010(n+1)+A000038(n)` with `a(0)=1`
-/

namespace A178961.P6538063072061919103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A001010 (n + 1) + A000038 n)

end

end A178961.P6538063072061919103

/-!
# A178962: Partial sums of A007322.

The programs for A178962, there is no canonical definition to state claims against.
-/

/-! ## A178962.P9939602068287363203

`∑[A007322(n+1)]`
-/

namespace A178962.P9939602068287363203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178962.P9939602068287363203

/-! ## A178962.P4018657236607664071

`∑[∑[A120733(n+1)]]`
-/

namespace A178962.P4018657236607664071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120733 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178962.P4018657236607664071

/-! ## A178962.P90401475798827447

`∑[record[A007322(A037162(n))]]`
-/

namespace A178962.P90401475798827447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007322 (A037162 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178962.P90401475798827447

/-! ## A178962.P16951984297840361064

`∑[record[A007322(A117910(n))]]`
-/

namespace A178962.P16951984297840361064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007322 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178962.P16951984297840361064

/-! ## A178962.P16028370786168845771

`∑[record[A007322(A193592(n))]]`
-/

namespace A178962.P16028370786168845771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007322 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178962.P16028370786168845771

/-!
# A178963: E.g.f.: (3+2*sqrt(3)*exp(x/2)*sin(sqrt(3)*x/2))/(exp(-x)+2*exp(x/2)*cos(sqrt(3)*x/2)).

The programs for A178963, there is no canonical definition to state claims against.
-/

/-! ## A178963.P9111777448619845475

`A181937(∑[n+2]-1)`
-/

namespace A178963.P9111777448619845475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A178963.P9111777448619845475

/-! ## A178963.P4377654942910254716

`or(1, A181937(A034856(n+1)))`
-/

namespace A178963.P4377654942910254716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A181937 (A034856 (n + 1)).toNat)

end

end A178963.P4377654942910254716

/-! ## A178963.P1614175418021338410

`A181937(A034856(n+1))^A178334(n)`
-/

namespace A178963.P1614175418021338410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181937 (A034856 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A178963.P1614175418021338410

/-! ## A178963.P2506034318090308270

`gcd(A151878(n), A181937(A034856(n+1)))`
-/

namespace A178963.P2506034318090308270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151878 n) (A181937 (A034856 (n + 1)).toNat)

end

end A178963.P2506034318090308270

/-! ## A178963.P8482781880517791183

`lcm(A020985(n), A181937(A034856(n+1)))`
-/

namespace A178963.P8482781880517791183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A181937 (A034856 (n + 1)).toNat)

end

end A178963.P8482781880517791183

/-! ## A178963.P12189264500514794558

`A181937(A034856(n+1))^A014963(A039695(n+1))`
-/

namespace A178963.P12189264500514794558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181937 (A034856 (n + 1)).toNat : ℚ) ^ (A014963 (A039695 (n + 1)).toNat : ℤ)

end

end A178963.P12189264500514794558

/-! ## A178963.P9390960812170078106

`A001222(A005385(2*n+1))*A181937(A034856(n+1))`
-/

namespace A178963.P9390960812170078106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005385 (2 * n + 1)).toNat * A181937 (A034856 (n + 1)).toNat

end

end A178963.P9390960812170078106

/-!
# A178964: E.g.f.: (1+sqrt(2)*sin(x/sqrt(2))*cosh(x/sqrt(2))+sin(x/sqrt(2))*sinh(x/sqrt(2)))/(cos(x/sqrt(2))*cosh(x/sqrt(2))).

The programs for A178964, there is no canonical definition to state claims against.
-/

/-! ## A178964.P7786567161279812305

`abs(A281588(n+1)/(n+1))`
-/

namespace A178964.P7786567161279812305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A281588 (n + 1) : ℚ) / (n + 1 : ℚ)|

end

end A178964.P7786567161279812305

/-! ## A178964.P17356766250919294937

`A181937(∑[n+3])`
-/

namespace A178964.P17356766250919294937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178964.P17356766250919294937

/-! ## A178964.P10231383959268956470

`A181937(A055998(n+1))^(C(n, n²)+1)`
-/

namespace A178964.P10231383959268956470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (A055998 (n + 1)).toNat ^ (Nat.choose n (n ^ 2) + 1)

end

end A178964.P10231383959268956470

/-! ## A178964.P5446173295648928709

`lcm(A033999(n), A181937(A055998(n+1)))`
-/

namespace A178964.P5446173295648928709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A181937 (A055998 (n + 1)).toNat)

end

end A178964.P5446173295648928709

/-! ## A178964.P8723287268784219346

`or(A000007(n), A181937(A055998(n+1)))`
-/

namespace A178964.P8723287268784219346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A181937 (A055998 (n + 1)).toNat)

end

end A178964.P8723287268784219346

/-!
# A178965: a(n) = numerator of Sum_{k>=1} floor(n/k)/2^k.

The programs for A178965, the canonical program `A178965.P4770176394915467321` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178965 has offset 0).

The definition of A178965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178965.P4770176394915467321

`∑[∑{d}[n, 1/A011782(#)]]*A011782(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A178965

/-- `∑[∑{d}[n, 1/A011782(#)]]*A011782(n)` -/
def P4770176394915467321.Spec : Prop :=
  ∀ n, P4770176394915467321.a n = (A178965 n : ℚ)

end A178965

/-! ## A178965.P5610029209700467626

`A165477(A063695(n)+A015564(n))`
-/

namespace A178965.P5610029209700467626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165477 (A063695 n + A015564 n).toNat

end

end A178965.P5610029209700467626

namespace A178965

/-- `A165477(A063695(n)+A015564(n))` -/
def P5610029209700467626.Spec : Prop :=
  ∀ n, P5610029209700467626.a n = A178965 n

end A178965

/-! ## A178965.P12305686652955043858

`A307606(n)-A112911(A178963(n))`
-/

namespace A178965.P12305686652955043858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307606 n - A112911 (A178963 n).toNat

end

end A178965.P12305686652955043858

namespace A178965

/-- `A307606(n)-A112911(A178963(n))` -/
def P12305686652955043858.Spec : Prop :=
  ∀ n, P12305686652955043858.a n = A178965 n

end A178965

/-!
# A178967: Number of ways to place 5 nonattacking amazons (superqueens) on an n X n board.

The programs for A178967, there is no canonical definition to state claims against.
-/

/-! ## A178967.P12533099071640055724

`∑{d}[A034503(A014224(n+1)), #]`
-/

namespace A178967.P12533099071640055724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034503 (A014224 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A178967.P12533099071640055724

/-! ## A178967.P16055958671630526178

`A181830(A000579(n)*A106640(n))`
-/

namespace A178967.P16055958671630526178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181830 (A000579 n * A106640 n).toNat

end

end A178967.P16055958671630526178

/-! ## A178967.P7729176914258500394

`A048728(or(A058830(n), A058836(n)))`
-/

namespace A178967.P7729176914258500394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048728 (Int.lor (A058830 n) (A058836 n)).toNat

end

end A178967.P7729176914258500394

/-!
# A178968: Numbers that are represented in Roman numerals by exactly four letters.

The programs for A178968, there is no canonical definition to state claims against.
-/

/-! ## A178968.P2245480631797342602

`eq[4, A006968(n+1)]+1`
-/

namespace A178968.P2245480631797342602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A178968.P2245480631797342602

/-! ## A178968.P10675097836691301096

`eq[4, A006968(A028310(n))]`
-/

namespace A178968.P10675097836691301096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178968.P10675097836691301096

/-! ## A178968.P3518428754912206818

`A020725(eq[4, A006968(n+1)])`
-/

namespace A178968.P3518428754912206818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178968.P3518428754912206818

/-! ## A178968.P11850140059859805216

`A065475(eq[4, A006968(n+1)])`
-/

namespace A178968.P11850140059859805216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178968.P11850140059859805216

/-! ## A178968.P18070546829850239405

`eq[4, A006968(A138153(n+1))]`
-/

namespace A178968.P18070546829850239405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178968.P18070546829850239405

/-! ## A178968.P14913826581234665434

`eq[4, A006968(A065033(2*n))]`
-/

namespace A178968.P14913826581234665434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178968.P14913826581234665434

/-! ## A178968.P17854134406207750939

`eq[4, A006968(A000007(n)+n)]`
-/

namespace A178968.P17854134406207750939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178968.P17854134406207750939

/-! ## A178968.P8901666116451680950

`eq[4, A006968(xor(n, A000007(n)))]`
-/

namespace A178968.P8901666116451680950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178968.P8901666116451680950

/-! ## A178968.P6106810051053942947

`eq[4, A006968(A233583(n+1))]`
-/

namespace A178968.P6106810051053942947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178968.P6106810051053942947

/-!
# A178970: a(n) = 2^(2n-1) mod (2n+1).

The programs for A178970, the canonical program `A178970.P12852428986049114242` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178970 has offset 1).

The definition of A178970 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178970.P12852428986049114242

`A213859(Δ[n²])`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A178970

/-- `A213859(Δ[n²])` -/
def P12852428986049114242.Spec : Prop :=
  ∀ n, P12852428986049114242.a n = A178970 (n + 1)

theorem P12852428986049114242.correct : P12852428986049114242.Spec := by
  intro n
  simp only [A178970, Nat.add_sub_cancel]

end A178970

/-! ## A178970.P17322484086156999898

`root(A213859(2*n+1), 2)²`
-/

namespace A178970.P17322484086156999898
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A213859 (2 * n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A178970.P17322484086156999898

namespace A178970

/-- `root(A213859(2*n+1), 2)²` -/
def P17322484086156999898.Spec : Prop :=
  ∀ n, P17322484086156999898.a n = (A178970 (n + 1) : ℝ)

end A178970

/-! ## A178970.P18154373923048580088

`xor(1, xor(1, A213859(n+1+n)))`
-/

namespace A178970.P18154373923048580088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A213859 (n + 1 + n)))

end

end A178970.P18154373923048580088

namespace A178970

/-- `xor(1, xor(1, A213859(n+1+n)))` -/
def P18154373923048580088.Spec : Prop :=
  ∀ n, P18154373923048580088.a n = A178970 (n + 1)

end A178970

/-! ## A178970.P13887006837973905109

`2*n+3-A213381(Δ[n²])`
-/

namespace A178970.P13887006837973905109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A213381 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A178970.P13887006837973905109

namespace A178970

/-- `2*n+3-A213381(Δ[n²])` -/
def P13887006837973905109.Spec : Prop :=
  ∀ n, P13887006837973905109.a n = A178970 (n + 1)

end A178970

/-! ## A178970.P10250805482422085521

`2*n-A213381(2*n+1)+3`
-/

namespace A178970.P10250805482422085521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A213381 (2 * n + 1) + 3

end

end A178970.P10250805482422085521

namespace A178970

/-- `2*n-A213381(2*n+1)+3` -/
def P10250805482422085521.Spec : Prop :=
  ∀ n, P10250805482422085521.a n = A178970 (n + 1)

end A178970

/-! ## A178970.P2173861871962789152

`∑{d}[A213859(2*n+1), A000010(#)]`
-/

namespace A178970.P2173861871962789152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213859 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A178970.P2173861871962789152

namespace A178970

/-- `∑{d}[A213859(2*n+1), A000010(#)]` -/
def P2173861871962789152.Spec : Prop :=
  ∀ n, P2173861871962789152.a n = A178970 (n + 1)

end A178970

/-! ## A178970.P13461522482439462311

`∏{d}[A213859(2*n+1), A014963(#)]`
-/

namespace A178970.P13461522482439462311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213859 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A178970.P13461522482439462311

namespace A178970

/-- `∏{d}[A213859(2*n+1), A014963(#)]` -/
def P13461522482439462311.Spec : Prop :=
  ∀ n, P13461522482439462311.a n = A178970 (n + 1)

end A178970

/-! ## A178970.P2542542603446690575

`A213859(2*n+1)+A000007(n+1)`
-/

namespace A178970.P2542542603446690575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213859 (2 * n + 1) + A000007 (n + 1)

end

end A178970.P2542542603446690575

namespace A178970

/-- `A213859(2*n+1)+A000007(n+1)` -/
def P2542542603446690575.Spec : Prop :=
  ∀ n, P2542542603446690575.a n = A178970 (n + 1)

end A178970

/-! ## A178970.P1980991059716305002

`(2*4^n)%(2*n+3)`
-/

namespace A178970.P1980991059716305002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 4 ^ n % (2 * n + 3)

end

end A178970.P1980991059716305002

namespace A178970

/-- `(2*4^n)%(2*n+3)` -/
def P1980991059716305002.Spec : Prop :=
  ∀ n, (P1980991059716305002.a n : ℤ) = A178970 (n + 1)

end A178970

/-! ## A178970.P7292612616945496390

`A083420(n)%(2*n+3)+1`
-/

namespace A178970.P7292612616945496390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083420 n) (2 * n + 3 : ℤ) + 1

end

end A178970.P7292612616945496390

namespace A178970

/-- `A083420(n)%(2*n+3)+1` -/
def P7292612616945496390.Spec : Prop :=
  ∀ n, P7292612616945496390.a n = A178970 (n + 1)

end A178970

/-! ## A178970.P3805918864857088817

`A000027((2*A000079(n)²)%(2*n+3))`
-/

namespace A178970.P3805918864857088817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.tmod (2 * A000079 n ^ 2) (2 * n + 3 : ℤ)).toNat

end

end A178970.P3805918864857088817

namespace A178970

/-- `A000027((2*A000079(n)²)%(2*n+3))` -/
def P3805918864857088817.Spec : Prop :=
  ∀ n, P3805918864857088817.a n = A178970 (n + 1)

end A178970

/-!
# A178971: Indices of primes that are the sum of two Fibonacci numbers.

The programs for A178971, there is no canonical definition to state claims against.
-/

/-! ## A178971.P17621681926474284697

`lt[A182535(n+1), 3]+1`
-/

namespace A178971.P17621681926474284697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182535 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A178971.P17621681926474284697

/-! ## A178971.P17669561407865018881

`A000720(A178576(n+1))`
-/

namespace A178971.P17669561407865018881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A178576 (n + 1)).toNat

end

end A178971.P17669561407865018881

/-! ## A178971.P59053172528969019

`record[A061395(A059389(n+1))]`
-/

namespace A178971.P59053172528969019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A059389 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178971.P59053172528969019

/-! ## A178971.P10840551818604487097

`A000720(p?[A059389(n+1)])`
-/

namespace A178971.P10840551818604487097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A178971.P10840551818604487097

/-! ## A178971.P15263080064236355859

`A000720(p?[A084176(n+1)])`
-/

namespace A178971.P15263080064236355859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A178971.P15263080064236355859

/-!
# A178972: Number of ways to place 2 nonattacking amazons (superqueens) on an n X n toroidal board.

The programs for A178972, there is no canonical definition to state claims against.
-/

/-! ## A178972.P9244250847498626955

`A004526(A045669(n+1)^A068307(n+1))`
-/

namespace A178972.P9244250847498626955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A045669 (n + 1) : ℚ) ^ (A068307 (n + 1) : ℤ))).toNat

end

end A178972.P9244250847498626955

/-! ## A178972.P7029428856263424252

`(∑{d}[n+1, #]-(n+1))*A326541(2^n)`
-/

namespace A178972.P7029428856263424252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ)) * A326541 (2 ^ n)

end

end A178972.P7029428856263424252

/-! ## A178972.P12560686159770494417

`A326541(2^n)*A328580(n)`
-/

namespace A178972.P12560686159770494417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326541 (2 ^ n) * A328580 n

end

end A178972.P12560686159770494417

/-!
# A178973: Number of ways to place 3 nonattacking amazons (superqueens) on an n X n toroidal board.

The programs for A178973, there is no canonical definition to state claims against.
-/

/-! ## A178973.P14314437539192718450

`and(A061579(A193321(n)), A146894(n))`
-/

namespace A178973.P14314437539192718450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061579 (A193321 n).toNat) (A146894 n)

end

end A178973.P14314437539192718450

/-! ## A178973.P5159824308842696259

`A009531(A178974(n+1))*A009531(n)`
-/

namespace A178973.P5159824308842696259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A178974 (n + 1)).toNat * A009531 n

end

end A178973.P5159824308842696259

/-! ## A178973.P16680614775945096669

`A178974(n+1)*A341737(A007705(n))`
-/

namespace A178973.P16680614775945096669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178974 (n + 1) * A341737 (A007705 n).toNat

end

end A178973.P16680614775945096669

/-!
# A178974: Number of ways to place 4 nonattacking amazons (superqueens) on an n X n toroidal board.

The programs for A178974, there is no canonical definition to state claims against.
-/

/-! ## A178974.P9623602192571741450

`(n+1)²*A238660(A079284(n))`
-/

namespace A178974.P9623602192571741450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A238660 (A079284 n).toNat

end

end A178974.P9623602192571741450

/-! ## A178974.P11725041073994741756

`A006530(n+1)*A370804(C(n, 4))`
-/

namespace A178974.P11725041073994741756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A370804 (Nat.choose n 4)

end

end A178974.P11725041073994741756

/-! ## A178974.P17961648241291292283

`2*(n+1)²*A253638(A241703(n+1))`
-/

namespace A178974.P17961648241291292283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) ^ 2 : ℤ) * A253638 (A241703 (n + 1)).toNat

end

end A178974.P17961648241291292283

/-! ## A178974.P3162572236896913138

`A007947(n+1)*A370804(A000332(n))`
-/

namespace A178974.P3162572236896913138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A370804 (A000332 n).toNat

end

end A178974.P3162572236896913138

/-!
# A178975: Number of ways to place 5 nonattacking amazons (superqueens) on an n X n toroidal board.

The programs for A178975, there is no canonical definition to state claims against.
-/

/-! ## A178975.P9499006081834683903

`A008592(A014543(n+1)^3)`
-/

namespace A178975.P9499006081834683903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A014543 (n + 1) ^ 3).toNat

end

end A178975.P9499006081834683903

/-! ## A178975.P5033814048887115956

`A033583(A032555(n+1))*A035039(n)`
-/

namespace A178975.P5033814048887115956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 (A032555 (n + 1)).toNat * A035039 n

end

end A178975.P5033814048887115956

/-! ## A178975.P7235296337160714061

`A008592(A035039(n)*A080160(n+1))`
-/

namespace A178975.P7235296337160714061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A035039 n * A080160 (n + 1)).toNat

end

end A178975.P7235296337160714061

/-! ## A178975.P9217039846105551872

`lcm(A006610(n+1), A006628(A157727(n)))`
-/

namespace A178975.P9217039846105551872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006610 (n + 1)) (A006628 (A157727 n).toNat)

end

end A178975.P9217039846105551872

/-! ## A178975.P17590538963057175585

`A001068(A034349(n+1)*A066020(n+1))`
-/

namespace A178975.P17590538963057175585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (A034349 (n + 1) * A066020 (n + 1)).toNat

end

end A178975.P17590538963057175585

/-!
# A178977: a(n) = (3*n+2)*(3*n+5)/2.

The programs for A178977, the canonical program `A178977.P2299903301335999460` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178977 has offset 0).

The definition of A178977 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n+2)*(3*n+5)/2` (program `A178977.P18224934164485859818`, by `A178977.P18224934164485859818.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A178977.P2299903301335999460

`a(n-1)+6+9*n` with `a(0)=5`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178977

/-- `a(n-1)+6+9*n` -/
def P2299903301335999460.Spec : Prop :=
  ∀ n, (P2299903301335999460.a n : ℤ) = A178977 n

theorem P2299903301335999460.correct : P2299903301335999460.Spec := by
  intro n
  simp only [A178977]

end A178977

/-! ## A178977.P18224934164485859818

`(3*n+2)*(3*n+5)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A178977.P18224934164485859818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℚ) * ((3 * n + 5 : ℚ) / 2)

end

end A178977.P18224934164485859818

namespace A178977

/-- `(3*n+2)*(3*n+5)/2` -/
def P18224934164485859818.Spec : Prop :=
  ∀ n, P18224934164485859818.a n = (A178977 n : ℚ)

theorem P18224934164485859818.correct : P18224934164485859818.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A178977, Nat.add_sub_cancel, A178977.P18224934164485859818.a, A178977.P2299903301335999460.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A178977, Nat.add_sub_cancel, A178977.P18224934164485859818.a, A178977.P2299903301335999460.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A178977

/-! ## A178977.P11937749672527913827

`A145910(n)+3+3*n`
-/

namespace A178977.P11937749672527913827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145910 n + (3 + 3 * n : ℤ)

end

end A178977.P11937749672527913827

namespace A178977

/-- `A145910(n)+3+3*n` -/
def P11937749672527913827.Spec : Prop :=
  ∀ n, P11937749672527913827.a n = A178977 n

end A178977

/-! ## A178977.P14366236191075442472

`A016789(n)*A016789(n+1)/2`
-/

namespace A178977.P14366236191075442472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016789 n * A016789 (n + 1) : ℚ) / 2

end

end A178977.P14366236191075442472

namespace A178977

/-- `A016789(n)*A016789(n+1)/2` -/
def P14366236191075442472.Spec : Prop :=
  ∀ n, P14366236191075442472.a n = (A178977 n : ℚ)

end A178977

/-! ## A178977.P12997040580790875760

`∑[a(n-1)+9]` with `a(0)=5, a(1)=15`
-/

namespace A178977.P12997040580790875760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 15] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178977.P12997040580790875760

namespace A178977

/-- `∑[a(n-1)+9]` -/
def P12997040580790875760.Spec : Prop :=
  ∀ n, (P12997040580790875760.a n : ℤ) = A178977 n

end A178977

/-! ## A178977.P1690379641996237750

`abs(1-C(3*n+4, 2))`
-/

namespace A178977.P1690379641996237750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.choose (3 * n + 4) 2 : ℤ)|

end

end A178977.P1690379641996237750

namespace A178977

/-- `abs(1-C(3*n+4, 2))` -/
def P1690379641996237750.Spec : Prop :=
  ∀ n, P1690379641996237750.a n = A178977 n

end A178977

/-! ## A178977.P12363798923286590062

`5*(n+1)²-C(n, 2)`
-/

namespace A178977.P12363798923286590062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) ^ 2 : ℤ) - (Nat.choose n 2 : ℤ)

end

end A178977.P12363798923286590062

namespace A178977

/-- `5*(n+1)²-C(n, 2)` -/
def P12363798923286590062.Spec : Prop :=
  ∀ n, P12363798923286590062.a n = A178977 n

end A178977

/-! ## A178977.P3088442139447852884

`C(2*(n+2)+n, 2)-1`
-/

namespace A178977.P3088442139447852884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 2) + n) 2 : ℤ) - 1

end

end A178977.P3088442139447852884

namespace A178977

/-- `C(2*(n+2)+n, 2)-1` -/
def P3088442139447852884.Spec : Prop :=
  ∀ n, P3088442139447852884.a n = A178977 n

end A178977

/-! ## A178977.P16678737762981319590

`∑[floor(atan(n+1))+9*n+5]`
-/

namespace A178977.P16678737762981319590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n + 1 : ℝ)⌋ + (9 * n + 5 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178977.P16678737762981319590

namespace A178977

/-- `∑[floor(atan(n+1))+9*n+5]` -/
def P16678737762981319590.Spec : Prop :=
  ∀ n, P16678737762981319590.a n = A178977 n

end A178977

/-! ## A178977.P3416283019503860136

`A283394(n)+1`
-/

namespace A178977.P3416283019503860136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283394 n + 1

end

end A178977.P3416283019503860136

namespace A178977

/-- `A283394(n)+1` -/
def P3416283019503860136.Spec : Prop :=
  ∀ n, P3416283019503860136.a n = A178977 n

end A178977

/-! ## A178977.P16381121234049335484

`∑[A017233(n)]-1`
-/

namespace A178977.P16381121234049335484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A178977.P16381121234049335484

namespace A178977

/-- `∑[A017233(n)]-1` -/
def P16381121234049335484.Spec : Prop :=
  ∀ n, P16381121234049335484.a n = A178977 n

end A178977

/-! ## A178977.P7631324802165035009

`Δ[A196507(n)/2]`
-/

namespace A178977.P7631324802165035009
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196507 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178977.P7631324802165035009

namespace A178977

/-- `Δ[A196507(n)/2]` -/
def P7631324802165035009.Spec : Prop :=
  ∀ n, P7631324802165035009.a n = (A178977 n : ℚ)

end A178977

/-! ## A178977.P1049022120813345535

`∑[A017221(n)]+n`
-/

namespace A178977.P1049022120813345535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A178977.P1049022120813345535

namespace A178977

/-- `∑[A017221(n)]+n` -/
def P1049022120813345535.Spec : Prop :=
  ∀ n, P1049022120813345535.a n = A178977 n

end A178977

/-! ## A178977.P16600027313862206055

`A081266(n+1)-1`
-/

namespace A178977.P16600027313862206055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081266 (n + 1) - 1

end

end A178977.P16600027313862206055

namespace A178977

/-- `A081266(n+1)-1` -/
def P16600027313862206055.Spec : Prop :=
  ∀ n, P16600027313862206055.a n = A178977 n

end A178977

/-! ## A178977.P14761105264787807343

`3*A140090(n)+5`
-/

namespace A178977.P14761105264787807343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A140090 n + 5

end

end A178977.P14761105264787807343

namespace A178977

/-- `3*A140090(n)+5` -/
def P14761105264787807343.Spec : Prop :=
  ∀ n, P14761105264787807343.a n = A178977 n

end A178977

/-! ## A178977.P395026832143647226

`A022267(n+1)+n`
-/

namespace A178977.P395026832143647226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022267 (n + 1) + (n : ℤ)

end

end A178977.P395026832143647226

namespace A178977

/-- `A022267(n+1)+n` -/
def P395026832143647226.Spec : Prop :=
  ∀ n, P395026832143647226.a n = A178977 n

end A178977

/-! ## A178977.P9887302602355269158

`∑[A017449(n)]-n²`
-/

namespace A178977.P9887302602355269158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A178977.P9887302602355269158

namespace A178977

/-- `∑[A017449(n)]-n²` -/
def P9887302602355269158.Spec : Prop :=
  ∀ n, P9887302602355269158.a n = A178977 n

end A178977

/-! ## A178977.P11653803110582332171

`A235332(n)-Δ[n²]`
-/

namespace A178977.P11653803110582332171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235332 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A178977.P11653803110582332171

namespace A178977

/-- `A235332(n)-Δ[n²]` -/
def P11653803110582332171.Spec : Prop :=
  ∀ n, P11653803110582332171.a n = A178977 n

end A178977

/-!
# A178978: a(n) = A144448(n+1)/8.

The programs for A178978, the canonical program `A178978.P11304914624765367311` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178978 has offset 0).

The definition of A178978 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A144448, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A178978.P11304914624765367311

`A144448(n+1)/8`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A178978

/-- `A144448(n+1)/8` -/
def P11304914624765367311.Spec : Prop :=
  ∀ n, P11304914624765367311.a n = (A178978 n : ℚ)

end A178978

/-! ## A178978.P2609439164276992001

`lcm(81, ∑[n]+n)/81`
-/

namespace A178978.P2609439164276992001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 81 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℚ) / 81

end

end A178978.P2609439164276992001

namespace A178978

/-- `lcm(81, ∑[n]+n)/81` -/
def P2609439164276992001.Spec : Prop :=
  ∀ n, P2609439164276992001.a n = (A178978 n : ℚ)

end A178978

/-! ## A178978.P13547523248073358751

`gcd(A000096(n), A144448(n+1))`
-/

namespace A178978.P13547523248073358751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000096 n) (A144448 (n + 1))

end

end A178978.P13547523248073358751

namespace A178978

/-- `gcd(A000096(n), A144448(n+1))` -/
def P13547523248073358751.Spec : Prop :=
  ∀ n, (P13547523248073358751.a n : ℤ) = A178978 n

end A178978

/-! ## A178978.P10174105411125581223

`A061039(2*n+3)/8`
-/

namespace A178978.P10174105411125581223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061039 (2 * n + 3) : ℚ) / 8

end

end A178978.P10174105411125581223

namespace A178978

/-- `A061039(2*n+3)/8` -/
def P10174105411125581223.Spec : Prop :=
  ∀ n, P10174105411125581223.a n = (A178978 n : ℚ)

end A178978

/-! ## A178978.P2262705709078421819

`A106610(A106610(∑[n]+n))`
-/

namespace A178978.P2262705709078421819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A106610 (∑ j ∈ Finset.range (n + 1), f1 j + n)).toNat

end

end A178978.P2262705709078421819

namespace A178978

/-- `A106610(A106610(∑[n]+n))` -/
def P2262705709078421819.Spec : Prop :=
  ∀ n, P2262705709078421819.a n = A178978 n

end A178978

/-! ## A178978.P17740710723570886542

`A106619(A106610(n*(n+3)))`
-/

namespace A178978.P17740710723570886542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (A106610 (n * (n + 3))).toNat

end

end A178978.P17740710723570886542

namespace A178978

/-- `A106619(A106610(n*(n+3)))` -/
def P17740710723570886542.Spec : Prop :=
  ∀ n, P17740710723570886542.a n = A178978 n

end A178978

/-! ## A178978.P14042050237807209717

`A106619(A051176((n+3)*A051176(n)))`
-/

namespace A178978.P14042050237807209717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (A051176 ((n + 3 : ℤ) * A051176 n).toNat).toNat

end

end A178978.P14042050237807209717

namespace A178978

/-- `A106619(A051176((n+3)*A051176(n)))` -/
def P14042050237807209717.Spec : Prop :=
  ∀ n, P14042050237807209717.a n = A178978 n

end A178978

/-! ## A178978.P3950726144490699362

`A006085(A144448(n+1))`
-/

namespace A178978.P3950726144490699362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006085 (A144448 (n + 1)).toNat

end

end A178978.P3950726144490699362

namespace A178978

/-- `A006085(A144448(n+1))` -/
def P3950726144490699362.Spec : Prop :=
  ∀ n, P3950726144490699362.a n = A178978 n

end A178978

/-! ## A178978.P12154705380666554430

`A106619(A106619((n+3)*2*n))`
-/

namespace A178978.P12154705380666554430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (A106619 ((n + 3) * (2 * n))).toNat

end

end A178978.P12154705380666554430

namespace A178978

/-- `A106619(A106619((n+3)*2*n))` -/
def P12154705380666554430.Spec : Prop :=
  ∀ n, P12154705380666554430.a n = A178978 n

end A178978

/-!
# A178981: a(n) = 2^A003418(n); for n >= 1, the least number > 1 that can be expressed simultaneously as a k-th power of some integer for all 1 <= k <= n.

The programs for A178981, the canonical program `A178981.P9400766510582345247` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178981 has offset 0).

The definition of A178981 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178981.P9400766510582345247

`2^A003418(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A178981

/-- `2^A003418(n)` -/
def P9400766510582345247.Spec : Prop :=
  ∀ n, P9400766510582345247.a n = (A178981 n : ℚ)

end A178981

/-! ## A178981.P15162376456132128417

`2^A211418(n)`
-/

namespace A178981.P15162376456132128417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A211418 n : ℤ)

end

end A178981.P15162376456132128417

namespace A178981

/-- `2^A211418(n)` -/
def P15162376456132128417.Spec : Prop :=
  ∀ n, P15162376456132128417.a n = (A178981 n : ℚ)

end A178981

/-! ## A178981.P10026183312728700178

`2^A347304(n)`
-/

namespace A178981.P10026183312728700178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A347304 n : ℤ)

end

end A178981.P10026183312728700178

namespace A178981

/-- `2^A347304(n)` -/
def P10026183312728700178.Spec : Prop :=
  ∀ n, P10026183312728700178.a n = (A178981 n : ℚ)

end A178981

/-!
# A178982: Partial sums of floor(Fibonacci(n)/2).

The programs for A178982, the canonical program `A178982.P12530028120440161423` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178982 has offset 0).

The definition of A178982 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178982.P12530028120440161423

`2*a(n-1)-2*a(n-4)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=2, a(5)=4`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178982

/-- `2*a(n-1)-2*a(n-4)+a(n-6)` -/
def P12530028120440161423.Spec : Prop :=
  ∀ n, P12530028120440161423.a n = A178982 n

theorem P12530028120440161423.correct : P12530028120440161423.Spec := by
  intro n
  simp only [A178982]

end A178982

/-! ## A178982.P1969054478941004186

`floor(a(n-1)+a(n-2)+n/3)` with `a(0)=0, a(1)=0`
-/

namespace A178982.P1969054478941004186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((a (n - 2) : ℚ) + (n : ℚ) / 3)⌋

end

end A178982.P1969054478941004186

namespace A178982

/-- `floor(a(n-1)+a(n-2)+n/3)` -/
def P1969054478941004186.Spec : Prop :=
  ∀ n, P1969054478941004186.a n = A178982 n

end A178982

/-! ## A178982.P13798671269023335324

`∑[4%gcd(3, n)+a(n-1)+a(n-2)]` with `a(0)=0, a(1)=0`
-/

namespace A178982.P13798671269023335324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  4 % Nat.gcd 3 n + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178982.P13798671269023335324

namespace A178982

/-- `∑[4%gcd(3, n)+a(n-1)+a(n-2)]` -/
def P13798671269023335324.Spec : Prop :=
  ∀ n, (P13798671269023335324.a n : ℤ) = A178982 n

end A178982

/-! ## A178982.P7709907866766866003

`∑[a(n-1)+a(n-2)]+a(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A178982.P7709907866766866003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 3)

end

end A178982.P7709907866766866003

namespace A178982

/-- `∑[a(n-1)+a(n-2)]+a(n-3)` -/
def P7709907866766866003.Spec : Prop :=
  ∀ n, (P7709907866766866003.a n : ℤ) = A178982 n

end A178982

/-! ## A178982.P4300943191651444328

`∑[A004695(n)]`
-/

namespace A178982.P4300943191651444328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178982.P4300943191651444328

namespace A178982

/-- `∑[A004695(n)]` -/
def P4300943191651444328.Spec : Prop :=
  ∀ n, P4300943191651444328.a n = A178982 n

end A178982

/-! ## A178982.P11744080477013355764

`∑[A147997(n)-1]`
-/

namespace A178982.P11744080477013355764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147997 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178982.P11744080477013355764

namespace A178982

/-- `∑[A147997(n)-1]` -/
def P11744080477013355764.Spec : Prop :=
  ∀ n, P11744080477013355764.a n = A178982 n

end A178982

/-! ## A178982.P2724425535294803317

`∑[A173673(2*n)]`
-/

namespace A178982.P2724425535294803317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178982.P2724425535294803317

namespace A178982

/-- `∑[A173673(2*n)]` -/
def P2724425535294803317.Spec : Prop :=
  ∀ n, P2724425535294803317.a n = A178982 n

end A178982

/-! ## A178982.P18296459288319400210

`∑[A104221(n)/2]`
-/

namespace A178982.P18296459288319400210
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104221 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178982.P18296459288319400210

namespace A178982

/-- `∑[A104221(n)/2]` -/
def P18296459288319400210.Spec : Prop :=
  ∀ n, P18296459288319400210.a n = (A178982 n : ℚ)

end A178982

/-! ## A178982.P14613307790827361147

`∑[floor(A000045(n)/2)]`
-/

namespace A178982.P14613307790827361147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178982.P14613307790827361147

namespace A178982

/-- `∑[floor(A000045(n)/2)]` -/
def P14613307790827361147.Spec : Prop :=
  ∀ n, P14613307790827361147.a n = A178982 n

end A178982

/-! ## A178982.P11150499871982624383

`∑[floor(abs(A236191(n)/2))]`
-/

namespace A178982.P11150499871982624383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(A236191 n : ℚ) / 2|⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178982.P11150499871982624383

namespace A178982

/-- `∑[floor(abs(A236191(n)/2))]` -/
def P11150499871982624383.Spec : Prop :=
  ∀ n, P11150499871982624383.a n = A178982 n

end A178982

/-! ## A178982.P4965659664453971938

`∑[floor(A212804(n+1)/2)]`
-/

namespace A178982.P4965659664453971938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A212804 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178982.P4965659664453971938

namespace A178982

/-- `∑[floor(A212804(n+1)/2)]` -/
def P4965659664453971938.Spec : Prop :=
  ∀ n, P4965659664453971938.a n = A178982 n

end A178982

/-! ## A178982.P16166055133607384884

`∑[floor((A001611(n)-1)/2)]`
-/

namespace A178982.P16166055133607384884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001611 n - 1 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178982.P16166055133607384884

namespace A178982

/-- `∑[floor((A001611(n)-1)/2)]` -/
def P16166055133607384884.Spec : Prop :=
  ∀ n, P16166055133607384884.a n = A178982 n

end A178982

/-! ## A178982.P1467699507216185177

`∑[floor(A103609(2*n)/2)]`
-/

namespace A178982.P1467699507216185177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A103609 (2 * n) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178982.P1467699507216185177

namespace A178982

/-- `∑[floor(A103609(2*n)/2)]` -/
def P1467699507216185177.Spec : Prop :=
  ∀ n, P1467699507216185177.a n = A178982 n

end A178982

/-! ## A178982.P9305184495499397397

`A000071(n)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A178982.P9305184495499397397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  A000071 n + a (n - 3)

end

end A178982.P9305184495499397397

namespace A178982

/-- `A000071(n)+a(n-3)` -/
def P9305184495499397397.Spec : Prop :=
  ∀ n, P9305184495499397397.a n = A178982 n

end A178982

/-! ## A178982.P7220702494530221580

`A173673(n+n)+a(n-1)` with `a(0)=0`
-/

namespace A178982.P7220702494530221580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A173673 (n + n) + a (n - 1)

end

end A178982.P7220702494530221580

namespace A178982

/-- `A173673(n+n)+a(n-1)` -/
def P7220702494530221580.Spec : Prop :=
  ∀ n, P7220702494530221580.a n = A178982 n

end A178982

/-! ## A178982.P15914385943985294043

`A093040(n)-A008620(n)`
-/

namespace A178982.P15914385943985294043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093040 n - A008620 n

end

end A178982.P15914385943985294043

namespace A178982

/-- `A093040(n)-A008620(n)` -/
def P15914385943985294043.Spec : Prop :=
  ∀ n, P15914385943985294043.a n = A178982 n

end A178982

/-! ## A178982.P12322262722161844068

`A179006(n)+A004697(n+2)`
-/

namespace A178982.P12322262722161844068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179006 n + A004697 (n + 2)

end

end A178982.P12322262722161844068

namespace A178982

/-- `A179006(n)+A004697(n+2)` -/
def P12322262722161844068.Spec : Prop :=
  ∀ n, P12322262722161844068.a n = A178982 n

end A178982

/-! ## A178982.P8963122154681544081

`A179018(n)-A322042(n+1)`
-/

namespace A178982.P8963122154681544081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179018 n - A322042 (n + 1)

end

end A178982.P8963122154681544081

namespace A178982

/-- `A179018(n)-A322042(n+1)` -/
def P8963122154681544081.Spec : Prop :=
  ∀ n, P8963122154681544081.a n = A178982 n

end A178982

/-! ## A178982.P13515507914647101527

`A179006(n)+Δ[A179006(n+1)]`
-/

namespace A178982.P13515507914647101527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179006 n + (f1 (n + 1) - f1 n)

end

end A178982.P13515507914647101527

namespace A178982

/-- `A179006(n)+Δ[A179006(n+1)]` -/
def P13515507914647101527.Spec : Prop :=
  ∀ n, P13515507914647101527.a n = A178982 n

end A178982

/-! ## A178982.P9858764005542489529

`A293553(n+1)+A293553(n)+A179006(n)`
-/

namespace A178982.P9858764005542489529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293553 (n + 1) + (A293553 n + A179006 n)

end

end A178982.P9858764005542489529

namespace A178982

/-- `A293553(n+1)+A293553(n)+A179006(n)` -/
def P9858764005542489529.Spec : Prop :=
  ∀ n, P9858764005542489529.a n = A178982 n

end A178982

/-!
# A178983: The smallest cube containing n as a substring.

The programs for A178983, there is no canonical definition to state claims against.
-/

/-! ## A178983.P1138497226744313507

`A387865(∑[(n+1)²])^3`
-/

namespace A178983.P1138497226744313507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387865 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A178983.P1138497226744313507

/-! ## A178983.P145709254594089636

`(A034178(((1-n)²+n)^3+1)²+n)^3`
-/

namespace A178983.P145709254594089636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034178 (((1 - (n : ℤ)) ^ 2 + (n : ℤ)) ^ 3 + 1).toNat ^ 2 + (n : ℤ)) ^ 3

end

end A178983.P145709254594089636

/-!
# A178984: a(n) is the smallest prime p that makes prime(n) + 1 - p a prime.

The programs for A178984, there is no canonical definition to state claims against.
-/

/-! ## A178984.P16943345850901796176

`A002373(A006254(n+2))`
-/

namespace A178984.P16943345850901796176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002373 (A006254 (n + 2)).toNat

end

end A178984.P16943345850901796176

/-! ## A178984.P15972632632590871542

`A210957(A165972(n+2))`
-/

namespace A178984.P15972632632590871542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210957 (A165972 (n + 2)).toNat

end

end A178984.P15972632632590871542

/-! ## A178984.P2332200641099699491

`A002373(A130291(n+3))`
-/

namespace A178984.P2332200641099699491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002373 (A130291 (n + 3)).toNat

end

end A178984.P2332200641099699491

/-! ## A178984.P751926638732180885

`A020481(lt[3, A128059(n)])`
-/

namespace A178984.P751926638732180885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A178984.P751926638732180885

/-! ## A178984.P15480391892964842294

`A210957(record[A000010(n+5)])`
-/

namespace A178984.P15480391892964842294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210957 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A178984.P15480391892964842294

/-! ## A178984.P452360844097507040

`A002373(A005097(n+2)+1)`
-/

namespace A178984.P452360844097507040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002373 (A005097 (n + 2) + 1).toNat

end

end A178984.P452360844097507040

/-! ## A178984.P4303691918363116043

`A020481(A005097(n+2)+1)`
-/

namespace A178984.P4303691918363116043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (A005097 (n + 2) + 1).toNat

end

end A178984.P4303691918363116043

/-! ## A178984.P11313715369415500377

`A002373(A067076(n+2)+2)`
-/

namespace A178984.P11313715369415500377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002373 (A067076 (n + 2) + 2).toNat

end

end A178984.P11313715369415500377

/-! ## A178984.P11346348421250513956

`A020481(A067076(n+2)+2)`
-/

namespace A178984.P11346348421250513956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (A067076 (n + 2) + 2).toNat

end

end A178984.P11346348421250513956

/-! ## A178984.P17633859973170614362

`A002373(A089038(n+1)+3)`
-/

namespace A178984.P17633859973170614362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002373 (A089038 (n + 1) + 3).toNat

end

end A178984.P17633859973170614362

/-!
# A178985: Primes of the form 3^k mod 2^k, in the order in which they are found.

The programs for A178985, there is no canonical definition to state claims against.
-/

/-! ## A178985.P17061659219476077614

`A002380(A178995(n+1))`
-/

namespace A178985.P17061659219476077614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002380 (A178995 (n + 1)).toNat

end

end A178985.P17061659219476077614

/-! ## A178985.P7955210978492974960

`p?[(3^n)%(2^n)]`
-/

namespace A178985.P7955210978492974960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n % 2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A178985.P7955210978492974960

/-!
# A178986: Number of ways to place n nonattacking amazons (superqueens) on an n X n toroidal board.

The programs for A178986, there is no canonical definition to state claims against.
-/

/-! ## A178986.P3597605612568129548

`Δ[gcd(46, A348104(n))]`
-/

namespace A178986.P3597605612568129548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 46 (A348104 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A178986.P3597605612568129548

/-! ## A178986.P2385208435972920413

`A089861(C(n, 2*∑{digits}[n, #]))`
-/

namespace A178986.P2385208435972920413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089861 (Nat.choose n (2 * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum))

end

end A178986.P2385208435972920413

/-! ## A178986.P16125026439471134988

`A257294(C(n, 2*∑{digits}[n, #]))`
-/

namespace A178986.P16125026439471134988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257294 (Nat.choose n (2 * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum))

end

end A178986.P16125026439471134988

/-! ## A178986.P1986697287599836710

`C(A030702(n+3), record[xor(3, n)])`
-/

namespace A178986.P1986697287599836710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A030702 (n + 3 + 1)).toNat (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A178986.P1986697287599836710

/-! ## A178986.P1784088911385207611

`A261423(C(C(n, 2), ∑{digits}[n, #]²))`
-/

namespace A178986.P1784088911385207611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (Nat.choose (Nat.choose n 2) (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 2))

end

end A178986.P1784088911385207611

/-!
# A178987: a(n) = n*(n-3)*2^(n-2).

The programs for A178987, the canonical program `A178987.P12516379404190588547` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178987 has offset 0).

The definition of A178987 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178987.P14225079188278461454

`n*(n-3)*2^(n-2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A178987.P14225079188278461454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((n : ℤ) - 3 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

end

end A178987.P14225079188278461454

namespace A178987

/-- `n*(n-3)*2^(n-2)` -/
def P14225079188278461454.Spec : Prop :=
  ∀ n, P14225079188278461454.a n = (A178987 n : ℚ)

end A178987

/-! ## A178987.P12516379404190588547

`6*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=0, a(1)=-1, a(2)=-2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178987

/-- `6*a(n-1)-12*a(n-2)+8*a(n-3)` -/
def P12516379404190588547.Spec : Prop :=
  ∀ n, P12516379404190588547.a n = A178987 n

theorem P12516379404190588547.correct : P12516379404190588547.Spec := by
  intro n
  simp only [A178987]

end A178987

/-! ## A178987.P9478495736157470572

`A001815(n)-A001787(n)`
-/

namespace A178987.P9478495736157470572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n - A001787 n

end

end A178987.P9478495736157470572

namespace A178987

/-- `A001815(n)-A001787(n)` -/
def P9478495736157470572.Spec : Prop :=
  ∀ n, P9478495736157470572.a n = A178987 n

end A178987

/-! ## A178987.P2532859753160942428

`A001788(n)-A036289(n)`
-/

namespace A178987.P2532859753160942428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n - A036289 n

end

end A178987.P2532859753160942428

namespace A178987

/-- `A001788(n)-A036289(n)` -/
def P2532859753160942428.Spec : Prop :=
  ∀ n, P2532859753160942428.a n = A178987 n

end A178987

/-! ## A178987.P6332302664109601035

`A048506(n)-A002064(n)`
-/

namespace A178987.P6332302664109601035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048506 n - A002064 n

end

end A178987.P6332302664109601035

namespace A178987

/-- `A048506(n)-A002064(n)` -/
def P6332302664109601035.Spec : Prop :=
  ∀ n, P6332302664109601035.a n = A178987 n

end A178987

/-! ## A178987.P15498979807191128665

`A053730(n)-A001792(n)`
-/

namespace A178987.P15498979807191128665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053730 n - A001792 n

end

end A178987.P15498979807191128665

namespace A178987

/-- `A053730(n)-A001792(n)` -/
def P15498979807191128665.Spec : Prop :=
  ∀ n, P15498979807191128665.a n = A178987 n

end A178987

/-! ## A178987.P16803700393260493924

`A159964(n)-A127276(n)`
-/

namespace A178987.P16803700393260493924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159964 n - A127276 n

end

end A178987.P16803700393260493924

namespace A178987

/-- `A159964(n)-A127276(n)` -/
def P16803700393260493924.Spec : Prop :=
  ∀ n, P16803700393260493924.a n = A178987 n

end A178987

/-! ## A178987.P13127912903820273224

`A176027(n)+A159964(n+1)`
-/

namespace A178987.P13127912903820273224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176027 n + A159964 (n + 1)

end

end A178987.P13127912903820273224

namespace A178987

/-- `A176027(n)+A159964(n+1)` -/
def P13127912903820273224.Spec : Prop :=
  ∀ n, P13127912903820273224.a n = A178987 n

end A178987

/-! ## A178987.P400401002710961712

`A001815(n)+1-A005183(n)`
-/

namespace A178987.P400401002710961712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n + (1 - A005183 n)

end

end A178987.P400401002710961712

namespace A178987

/-- `A001815(n)+1-A005183(n)` -/
def P400401002710961712.Spec : Prop :=
  ∀ n, P400401002710961712.a n = A178987 n

end A178987

/-! ## A178987.P8209714836786017469

`A001793(n+1)-A014480(n)`
-/

namespace A178987.P8209714836786017469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001793 (n + 1) - A014480 n

end

end A178987.P8209714836786017469

namespace A178987

/-- `A001793(n+1)-A014480(n)` -/
def P8209714836786017469.Spec : Prop :=
  ∀ n, P8209714836786017469.a n = A178987 n

end A178987

/-! ## A178987.P17895325817433255670

`A053545(n)+1-A001792(n)`
-/

namespace A178987.P17895325817433255670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053545 n + (1 - A001792 n)

end

end A178987.P17895325817433255670

namespace A178987

/-- `A053545(n)+1-A001792(n)` -/
def P17895325817433255670.Spec : Prop :=
  ∀ n, P17895325817433255670.a n = A178987 n

end A178987

/-! ## A178987.P16822417059409708333

`A001815(n)-A139756(n+1)`
-/

namespace A178987.P16822417059409708333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n - A139756 (n + 1)

end

end A178987.P16822417059409708333

namespace A178987

/-- `A001815(n)-A139756(n+1)` -/
def P16822417059409708333.Spec : Prop :=
  ∀ n, P16822417059409708333.a n = A178987 n

end A178987

/-! ## A178987.P17628271185130632895

`A087431(n)-A128135(n+1)`
-/

namespace A178987.P17628271185130632895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087431 n - A128135 (n + 1)

end

end A178987.P17628271185130632895

namespace A178987

/-- `A087431(n)-A128135(n+1)` -/
def P17628271185130632895.Spec : Prop :=
  ∀ n, P17628271185130632895.a n = A178987 n

end A178987

/-! ## A178987.P13399657362722783388

`A176027(n)-A058922(n+1)`
-/

namespace A178987.P13399657362722783388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176027 n - A058922 (n + 1)

end

end A178987.P13399657362722783388

namespace A178987

/-- `A176027(n)-A058922(n+1)` -/
def P13399657362722783388.Spec : Prop :=
  ∀ n, P13399657362722783388.a n = A178987 n

end A178987

/-! ## A178987.P10182842663587819808

`A001788(n)-2*A001787(n)`
-/

namespace A178987.P10182842663587819808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n - 2 * A001787 n

end

end A178987.P10182842663587819808

namespace A178987

/-- `A001788(n)-2*A001787(n)` -/
def P10182842663587819808.Spec : Prop :=
  ∀ n, P10182842663587819808.a n = A178987 n

end A178987

/-! ## A178987.P9986268839534973611

`A176027(n)-2*A036289(n)`
-/

namespace A178987.P9986268839534973611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176027 n - 2 * A036289 n

end

end A178987.P9986268839534973611

namespace A178987

/-- `A176027(n)-2*A036289(n)` -/
def P9986268839534973611.Spec : Prop :=
  ∀ n, P9986268839534973611.a n = A178987 n

end A178987

/-! ## A178987.P14607620218635443274

`A001815(n)-A036289(n)/2`
-/

namespace A178987.P14607620218635443274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001815 n : ℚ) - (A036289 n : ℚ) / 2

end

end A178987.P14607620218635443274

namespace A178987

/-- `A001815(n)-A036289(n)/2` -/
def P14607620218635443274.Spec : Prop :=
  ∀ n, P14607620218635443274.a n = (A178987 n : ℚ)

end A178987

/-! ## A178987.P5200352672268742923

`A001788(n)-n*A000079(n)`
-/

namespace A178987.P5200352672268742923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n - (n : ℤ) * A000079 n

end

end A178987.P5200352672268742923

namespace A178987

/-- `A001788(n)-n*A000079(n)` -/
def P5200352672268742923.Spec : Prop :=
  ∀ n, P5200352672268742923.a n = A178987 n

end A178987

/-! ## A178987.P3728693070450933908

`A001815(n)-n*A011782(n)`
-/

namespace A178987.P3728693070450933908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n - (n : ℤ) * A011782 n

end

end A178987.P3728693070450933908

namespace A178987

/-- `A001815(n)-n*A011782(n)` -/
def P3728693070450933908.Spec : Prop :=
  ∀ n, P3728693070450933908.a n = A178987 n

end A178987

/-!
# A178991: Primes that can be expressed as the sum of a Fibonacci number and the square of a Fibonacci number.

The programs for A178991, there is no canonical definition to state claims against.
-/

/-! ## A178991.P1681946313167991896

`A123318(A281599(n+1))`
-/

namespace A178991.P1681946313167991896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123318 (A281599 (n + 1)).toNat

end

end A178991.P1681946313167991896

/-! ## A178991.P10753992891382180337

`record[A103866(A333941(n)+1)]`
-/

namespace A178991.P10753992891382180337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103866 (A333941 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178991.P10753992891382180337

/-! ## A178991.P8837001025204470459

`A038887(lt[A102388(n+3), n])`
-/

namespace A178991.P8837001025204470459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102388 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038887 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A178991.P8837001025204470459

/-! ## A178991.P18266355443438055886

`∩[A038887(n+1), A363287(n+1)]`
-/

namespace A178991.P18266355443438055886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178991.P18266355443438055886

/-! ## A178991.P5683925217356051981

`∩[A038887(n+1), A364354(n+1)]`
-/

namespace A178991.P5683925217356051981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178991.P5683925217356051981

/-!
# A178992: Ordered list in decimal notation of the subwords (with leading zeros omitted) appearing in the infinite Fibonacci word A005614 (0->1 & 1->10).

The programs for A178992, there is no canonical definition to state claims against.
-/

/-! ## A178992.P3516766726380874093

`record[A179969(n+1)]`
-/

namespace A178992.P3516766726380874093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178992.P3516766726380874093

/-! ## A178992.P5827294527637484563

`record[A062157(n)*A179969(A008619(n))]`
-/

namespace A178992.P5827294527637484563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A179969 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178992.P5827294527637484563

/-! ## A178992.P3801811619132135793

`record[A179969(A008619(n))*A266678(n)]`
-/

namespace A178992.P3801811619132135793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179969 (A008619 n).toNat * A266678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178992.P3801811619132135793

/-! ## A178992.P153140583569618610

`record[A179969(A008619(n))]%A000041(2*n)`
-/

namespace A178992.P153140583569618610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179969 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000041 (2 * n))

end

end A178992.P153140583569618610

/-! ## A178992.P8069719082473023018

`record[A179969(A008619(n))]%A286645(n)`
-/

namespace A178992.P8069719082473023018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179969 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A286645 n)

end

end A178992.P8069719082473023018

/-!
# A178994: T(n,k) = Maximum number Q for an n X k 1..Q array with each value in 1..Q horizontally or vertically adjacent to each other value at least once, or -1 if no such number exists.

The programs for A178994, there is no canonical definition to state claims against.
-/

/-! ## A178994.P14966711232270137383

`A000195(7*A183380(n+1))`
-/

namespace A178994.P14966711232270137383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (7 * A183380 (n + 1)).toNat

end

end A178994.P14966711232270137383

/-! ## A178994.P1395928894362295835

`A130147(A196982(n+1)%A000031(n))`
-/

namespace A178994.P1395928894362295835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130147 (Int.tmod (A196982 (n + 1)) (A000031 n)).toNat

end

end A178994.P1395928894362295835

/-! ## A178994.P6126780381323653122

`A070939(A303776(A014430(n)))`
-/

namespace A178994.P6126780381323653122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A303776 (A014430 n).toNat).toNat

end

end A178994.P6126780381323653122

/-! ## A178994.P15030380555372934531

`A335925(A203371(n+1))`
-/

namespace A178994.P15030380555372934531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335925 (A203371 (n + 1)).toNat

end

end A178994.P15030380555372934531

/-! ## A178994.P4534264751206189830

`A335925(A220553(n+1))`
-/

namespace A178994.P4534264751206189830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335925 (A220553 (n + 1)).toNat

end

end A178994.P4534264751206189830

/-!
# A178997: Super-Poulet numbers having more than two different prime factors.

The programs for A178997, there is no canonical definition to state claims against.
-/

/-! ## A178997.P16205886352442185735

`∩[A050217(n+1), A080747(n+1)]`
-/

namespace A178997.P16205886352442185735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178997.P16205886352442185735

/-!
# A178999: Number of n-node simple graphs that are not determined by their resistance distance multisets.

The programs for A178999, there is no canonical definition to state claims against.
-/

/-! ## A178999.P4101233102128627317

`(∏[4-2/(n+1)]/2)%floor((n+1)/(or(n, n+2)-n))!`
-/

namespace A178999.P4101233102128627317
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((∏ j ∈ Finset.range (n + 1), f1 j) / 2)) (Nat.factorial ⌊(n + 1 : ℚ) / ((Nat.lor n (n + 2) : ℤ) - (n : ℤ) : ℚ)⌋.toNat : ℤ)

end

end A178999.P4101233102128627317

/-! ## A178999.P1137538162824565779

`and(-10, A322070(n+1))`
-/

namespace A178999.P1137538162824565779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-10) (A322070 (n + 1))

end

end A178999.P1137538162824565779

/-! ## A178999.P10619311108285787808

`round(A137748(xor(2, n))/2)`
-/

namespace A178999.P10619311108285787808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A137748 (Nat.xor 2 n) : ℚ) / 2)

end

end A178999.P10619311108285787808

/-! ## A178999.P16675662617190657282

`A326464(∑[floor(2*n/5)])`
-/

namespace A178999.P16675662617190657282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n : ℚ) / 5)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326464 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A178999.P16675662617190657282

/-! ## A178999.P16001640606944210236

`∑[∑{digits}[n, and(8, #)/8]]*A214690(n+1)`
-/

namespace A178999.P16001640606944210236
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => (Nat.land 8 x : ℚ) / 8).sum

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A214690 (n + 1) : ℚ)

end

end A178999.P16001640606944210236

