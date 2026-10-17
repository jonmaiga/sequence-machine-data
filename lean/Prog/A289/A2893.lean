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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
# A289306: a(n) = Sum_{k >= 0}(-1)^k*binomial(n,5*k).

The programs for A289306, the canonical program `A289306.P1289273269748893500` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289306 has offset 0).

The definition of A289306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 359 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289306.P1289273269748893500

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A289306

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)` -/
def P1289273269748893500.Spec : Prop :=
  ∀ n, P1289273269748893500.a n = A289306 n

theorem P1289273269748893500.correct : P1289273269748893500.Spec := by
  intro n
  simp only [A289306]

end A289306

/-! ## A289306.P3741756190035433181

`Δ[A289321(n)]`
-/

namespace A289306.P3741756190035433181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289306.P3741756190035433181

namespace A289306

/-- `Δ[A289321(n)]` -/
def P3741756190035433181.Spec : Prop :=
  ∀ n, P3741756190035433181.a n = A289306 n

end A289306

/-! ## A289306.P6029474853540693357

`a(n-1)-A289389(n-1)` with `a(0)=1`
-/

namespace A289306.P6029474853540693357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A289389 (n - 1)

end

end A289306.P6029474853540693357

namespace A289306

/-- `a(n-1)-A289389(n-1)` -/
def P6029474853540693357.Spec : Prop :=
  ∀ n, P6029474853540693357.a n = A289306 n

end A289306

/-! ## A289306.P18419712183889338753

`A289321(n+1)-A289321(n)`
-/

namespace A289306.P18419712183889338753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289321 (n + 1) - A289321 n

end

end A289306.P18419712183889338753

namespace A289306

/-- `A289321(n+1)-A289321(n)` -/
def P18419712183889338753.Spec : Prop :=
  ∀ n, P18419712183889338753.a n = A289306 n

end A289306

/-! ## A289306.P6397496811908651975

`Δ[Δ[A289387(n)]]`
-/

namespace A289306.P6397496811908651975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289387 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289306.P6397496811908651975

namespace A289306

/-- `Δ[Δ[A289387(n)]]` -/
def P6397496811908651975.Spec : Prop :=
  ∀ n, P6397496811908651975.a n = A289306 n

end A289306

/-! ## A289306.P6801010892607966399

`Δ[Δ[Δ[A289388(n)]]]`
-/

namespace A289306.P6801010892607966399
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289306.P6801010892607966399

namespace A289306

/-- `Δ[Δ[Δ[A289388(n)]]]` -/
def P6801010892607966399.Spec : Prop :=
  ∀ n, P6801010892607966399.a n = A289306 n

end A289306

/-! ## A289306.P15130532681496763416

`A307039(∑[n+5]+5)`
-/

namespace A289306.P15130532681496763416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307039 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A289306.P15130532681496763416

namespace A289306

/-- `A307039(∑[n+5]+5)` -/
def P15130532681496763416.Spec : Prop :=
  ∀ n, P15130532681496763416.a n = A289306 n

end A289306

/-!
# A289310: Let f be the multiplicative function satisfying f(p^k) = (1 + p*I)^k for any prime p and k > 0 (where I^2 = -1); a(n) = the real part of f(n).

The programs for A289310, there is no canonical definition to state claims against.
-/

/-! ## A289310.P15846896385564256134

`A289311(3*(n+1))-A289311(2*(n+1))`
-/

namespace A289310.P15846896385564256134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289311 (3 * (n + 1)) - A289311 (2 * (n + 1))

end

end A289310.P15846896385564256134

/-! ## A289310.P5474436199145437080

`A034802(A033809(n+1))-A163407(n+1)`
-/

namespace A289310.P5474436199145437080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034802 (A033809 (n + 1)).toNat - A163407 (n + 1)

end

end A289310.P5474436199145437080

/-! ## A289310.P121121989175699100

`A317132(A184955(n))-A163407(n+1)`
-/

namespace A289310.P121121989175699100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317132 (A184955 n).toNat - A163407 (n + 1)

end

end A289310.P121121989175699100

/-! ## A289310.P7418494471607083029

`1-A163407(A187829(n+1))`
-/

namespace A289310.P7418494471607083029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A163407 (A187829 (n + 1)).toNat

end

end A289310.P7418494471607083029

/-! ## A289310.P15003928820562626211

`1-A367098(A074736(n+1))`
-/

namespace A289310.P15003928820562626211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A367098 (A074736 (n + 1)).toNat

end

end A289310.P15003928820562626211

/-!
# A289311: Let f be the multiplicative function satisfying f(p^k) = (1 + p*I)^k for any prime p and k > 0 (where I^2 = -1); a(n) = the imaginary part of f(n).

The programs for A289311, there is no canonical definition to state claims against.
-/

/-! ## A289311.P15472323460047551744

`(A289310(n+1)-A289310(3*(n+1)))/3`
-/

namespace A289311.P15472323460047551744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289310 (n + 1) - A289310 (3 * (n + 1)) : ℚ) / 3

end

end A289311.P15472323460047551744

/-!
# A289312: The number of upper-triangular matrices with integer entries whose absolute sum is equal to n, and each row and column contains at least one nonzero entry.

The programs for A289312, there is no canonical definition to state claims against.
-/

/-! ## A289312.P6798704898060005878

`A225055(A348802(n)+1)`
-/

namespace A289312.P6798704898060005878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225055 (A348802 n + 1).toNat

end

end A289312.P6798704898060005878

/-! ## A289312.P8638829466750838307

`A087627(2*A348802(n))`
-/

namespace A289312.P8638829466750838307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087627 (2 * A348802 n).toNat

end

end A289312.P8638829466750838307

/-!
# A289313: The number of upper-triangular matrices with integer entries whose absolute sum is equal to n and such that each row contains a nonzero entry.

The programs for A289313, there is no canonical definition to state claims against.
-/

/-! ## A289313.P13927494342314913188

`A194979(2*((n+1)^n-1)+1)`
-/

namespace A289313.P13927494342314913188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (2 * (((n + 1) ^ n : ℤ) - 1) + 1).toNat

end

end A289313.P13927494342314913188

/-!
# A289314: Number of n X n Fishburn matrices with entries in the set {0,1,2}.

The programs for A289314, there is no canonical definition to state claims against.
-/

/-! ## A289314.P17434389319015786866

`A369415(∑[n+3])`
-/

namespace A289314.P17434389319015786866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369415 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289314.P17434389319015786866

/-! ## A289314.P7806369805588081117

`record[A129184(n+2)*A369415(n)]`
-/

namespace A289314.P7806369805588081117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129184 (n + 2) * A369415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289314.P7806369805588081117

/-!
# A289315: Number of n X n Fishburn matrices with entries in the set {0,1,2,3}.

The programs for A289315, there is no canonical definition to state claims against.
-/

/-! ## A289315.P11971508256403019862

`A369415(A046691(n+2))`
-/

namespace A289315.P11971508256403019862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369415 (A046691 (n + 2)).toNat

end

end A289315.P11971508256403019862

/-! ## A289315.P18207462228003361187

`record[A369415(abs(A046691(n)))]`
-/

namespace A289315.P18207462228003361187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369415 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289315.P18207462228003361187

/-! ## A289315.P12522417179019284721

`A369415(A179865(n+4)+n)`
-/

namespace A289315.P12522417179019284721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369415 (A179865 (n + 4) + (n : ℤ)).toNat

end

end A289315.P12522417179019284721

/-!
# A289316: The number of upper-triangular matrices whose nonzero entries are positive odd numbers summing to n and each row contains a nonzero entry.

The programs for A289316, there is no canonical definition to state claims against.
-/

/-! ## A289316.P8926715355774363453

`A004526(A007808(n)+A000041(n))`
-/

namespace A289316.P8926715355774363453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A007808 n + A000041 n).toNat

end

end A289316.P8926715355774363453

/-! ## A289316.P1911927528134332740

`A123108(A352370(n)+A242701(n))`
-/

namespace A289316.P1911927528134332740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A352370 n + A242701 (n + 100)).toNat

end

end A289316.P1911927528134332740

/-! ## A289316.P12845875253446074691

`A109451(A346189(n+1)+A336940(n))`
-/

namespace A289316.P12845875253446074691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109451 (A346189 (n + 1) + A336940 n).toNat

end

end A289316.P12845875253446074691

/-!
# A289317: The number of upper-triangular matrices whose nonzero entries are positive odd numbers summing to n and each row and each column contains a nonzero entry.

The programs for A289317, there is no canonical definition to state claims against.
-/

/-! ## A289317.P10871052168258540978

`or(A193899(A004148(n)), A202846(n))`
-/

namespace A289317.P10871052168258540978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A193899 (A004148 n).toNat) (A202846 n)

end

end A289317.P10871052168258540978

/-!
# A289320: a(n) = A289310(n)^2 + A289311(n)^2.

The programs for A289320, the canonical program `A289320.P2991685240031938222` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289320 has offset 1).

The definition of A289320 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289320.P2991685240031938222

`∏{d}[n+1, A120007(#)²+1]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A289320

/-- `∏{d}[n+1, A120007(#)²+1]` -/
def P2991685240031938222.Spec : Prop :=
  ∀ n, P2991685240031938222.a n = A289320 (n + 1)

theorem P2991685240031938222.correct : P2991685240031938222.Spec := by
  intro n
  simp only [A289320, Nat.add_sub_cancel]

end A289320

/-! ## A289320.P9557263472790057275

`∏{d}[n+1, A001157(A014963(#))]`
-/

namespace A289320.P9557263472790057275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A001157 (A014963 d).toNat

end

end A289320.P9557263472790057275

namespace A289320

/-- `∏{d}[n+1, A001157(A014963(#))]` -/
def P9557263472790057275.Spec : Prop :=
  ∀ n, P9557263472790057275.a n = A289320 (n + 1)

end A289320

/-! ## A289320.P6828291269309201323

`A289310(n+1)²+A289311(n+1)²`
-/

namespace A289320.P6828291269309201323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289310 (n + 1) ^ 2 + A289311 (n + 1) ^ 2

end

end A289320.P6828291269309201323

namespace A289320

/-- `A289310(n+1)²+A289311(n+1)²` -/
def P6828291269309201323.Spec : Prop :=
  ∀ n, P6828291269309201323.a n = A289320 (n + 1)

end A289320

/-! ## A289320.P14359599766149737871

`(A020639(n+1)²+1)*a(A032742(n+1)-1)` with `a(0)=1`
-/

namespace A289320.P14359599766149737871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A020639 (n + 1) ^ 2 + 1) * a (A032742 (n + 1) - 1).toNat

end

end A289320.P14359599766149737871

namespace A289320

/-- `(A020639(n+1)²+1)*a(A032742(n+1)-1)` -/
def P14359599766149737871.Spec : Prop :=
  ∀ n, P14359599766149737871.a n = A289320 (n + 1)

end A289320

/-! ## A289320.P11849846698014604103

`∏{e}[A181821(n+1), A066872(#)]`
-/

namespace A289320.P11849846698014604103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A066872 (Nat.factorization (f1 n).natAbs p)

end

end A289320.P11849846698014604103

namespace A289320

/-- `∏{e}[A181821(n+1), A066872(#)]` -/
def P11849846698014604103.Spec : Prop :=
  ∀ n, P11849846698014604103.a n = A289320 (n + 1)

end A289320

/-! ## A289320.P17772190767932719738

`∏{e}[A181821(n+1), A000040(#)²+1]`
-/

namespace A289320.P17772190767932719738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A000040 (Nat.factorization (f1 n).natAbs p) ^ 2 + 1)

end

end A289320.P17772190767932719738

namespace A289320

/-- `∏{e}[A181821(n+1), A000040(#)²+1]` -/
def P17772190767932719738.Spec : Prop :=
  ∀ n, P17772190767932719738.a n = A289320 (n + 1)

end A289320

/-! ## A289320.P16491962448354053793

`∏{e}[A181821(n+1), A001157(A000040(#))]`
-/

namespace A289320.P16491962448354053793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001157 (A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A289320.P16491962448354053793

namespace A289320

/-- `∏{e}[A181821(n+1), A001157(A000040(#))]` -/
def P16491962448354053793.Spec : Prop :=
  ∀ n, P16491962448354053793.a n = A289320 (n + 1)

end A289320

/-!
# A289321: a(n) = Sum_{k >= 0}(-1)^k*binomial(n,5*k+1).

The programs for A289321, the canonical program `A289321.P7846006413158243942` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289321 has offset 0).

The definition of A289321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289321.P7846006413158243942

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A289321

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)` -/
def P7846006413158243942.Spec : Prop :=
  ∀ n, P7846006413158243942.a n = A289321 n

theorem P7846006413158243942.correct : P7846006413158243942.Spec := by
  intro n
  simp only [A289321]

end A289321

/-! ## A289321.P3283045365350299645

`A289306(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A289321.P3283045365350299645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A289306 (n - 1) + a (n - 1)

end

end A289321.P3283045365350299645

namespace A289321

/-- `A289306(n-1)+a(n-1)` -/
def P3283045365350299645.Spec : Prop :=
  ∀ n, P3283045365350299645.a n = A289321 n

end A289321

/-! ## A289321.P10707475606762582529

`∑[A289306(n)]-A289306(n)`
-/

namespace A289321.P10707475606762582529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A289306 n

end

end A289321.P10707475606762582529

namespace A289321

/-- `∑[A289306(n)]-A289306(n)` -/
def P10707475606762582529.Spec : Prop :=
  ∀ n, P10707475606762582529.a n = A289321 n

end A289321

/-! ## A289321.P16953722667026886471

`Δ[A289387(n)]`
-/

namespace A289321.P16953722667026886471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289387 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289321.P16953722667026886471

namespace A289321

/-- `Δ[A289387(n)]` -/
def P16953722667026886471.Spec : Prop :=
  ∀ n, P16953722667026886471.a n = A289321 n

end A289321

/-! ## A289321.P4060289899111573355

`A289387(n+1)-A289387(n)`
-/

namespace A289321.P4060289899111573355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289387 (n + 1) - A289387 n

end

end A289321.P4060289899111573355

namespace A289321

/-- `A289387(n+1)-A289387(n)` -/
def P4060289899111573355.Spec : Prop :=
  ∀ n, P4060289899111573355.a n = A289321 n

end A289321

/-! ## A289321.P12013123608150645684

`Δ[Δ[A289388(n)]]`
-/

namespace A289321.P12013123608150645684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289388 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289321.P12013123608150645684

namespace A289321

/-- `Δ[Δ[A289388(n)]]` -/
def P12013123608150645684.Spec : Prop :=
  ∀ n, P12013123608150645684.a n = A289321 n

end A289321

/-! ## A289321.P10821568282490021431

`Δ[Δ[Δ[A289389(n)]]]`
-/

namespace A289321.P10821568282490021431
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289389 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289321.P10821568282490021431

namespace A289321

/-- `Δ[Δ[Δ[A289389(n)]]]` -/
def P10821568282490021431.Spec : Prop :=
  ∀ n, P10821568282490021431.a n = A289321 n

end A289321

/-! ## A289321.P6616882924657425231

`∑[A307039(∑[n+4]+1)]`
-/

namespace A289321.P6616882924657425231
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307039 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289321.P6616882924657425231

namespace A289321

/-- `∑[A307039(∑[n+4]+1)]` -/
def P6616882924657425231.Spec : Prop :=
  ∀ n, P6616882924657425231.a n = A289321 n

end A289321

/-!
# A289322: Number of 1s in the first 2^n entries of the Kolakoski sequence, A000002.

The programs for A289322, the canonical program `A289322.P2431377451658955017` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289322 has offset 0).

The definition of A289322 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088568, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A289322.P2854109726035707058

`(2^n-A289323(n))/2`
-/

namespace A289322.P2854109726035707058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - A289323 n : ℚ) / 2

end

end A289322.P2854109726035707058

namespace A289322

/-- `(2^n-A289323(n))/2` -/
def P2854109726035707058.Spec : Prop :=
  ∀ n, P2854109726035707058.a n = (A289322 n : ℚ)

end A289322

/-! ## A289322.P2431377451658955017

`(2^n+A088568(2^n))/2`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A289322

/-- `(2^n+A088568(2^n))/2` -/
def P2431377451658955017.Spec : Prop :=
  ∀ n, P2431377451658955017.a n = (A289322 n : ℚ)

end A289322

/-! ## A289322.P17714538293756378215

`floor(A011782(n)-A289323(n)/2)`
-/

namespace A289322.P17714538293756378215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011782 n : ℚ) - (A289323 n : ℚ) / 2⌋

end

end A289322.P17714538293756378215

namespace A289322

/-- `floor(A011782(n)-A289323(n)/2)` -/
def P17714538293756378215.Spec : Prop :=
  ∀ n, P17714538293756378215.a n = A289322 n

end A289322

/-! ## A289322.P10443061715025221920

`(A000079(n)-A289323(n))*2^A317950(gcd(n, n+1))`
-/

namespace A289322.P10443061715025221920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n - A289323 n : ℚ) * (2 : ℚ) ^ (A317950 (Nat.gcd n (n + 1)) : ℤ)

end

end A289322.P10443061715025221920

namespace A289322

/-- `(A000079(n)-A289323(n))*2^A317950(gcd(n, n+1))` -/
def P10443061715025221920.Spec : Prop :=
  ∀ n, P10443061715025221920.a n = (A289322 n : ℚ)

end A289322

/-! ## A289322.P11176774597989177038

`A156077(2^n)`
-/

namespace A289322.P11176774597989177038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156077 (2 ^ n)

end

end A289322.P11176774597989177038

namespace A289322

/-- `A156077(2^n)` -/
def P11176774597989177038.Spec : Prop :=
  ∀ n, P11176774597989177038.a n = A289322 n

end A289322

/-!
# A289323: Number of twos minus number of ones in the first 2^n entries of the Kolakoski sequence, A000002.

The programs for A289323, the canonical program `A289323.P568056266206430904` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289323 has offset 0).

The definition of A289323 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289322, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A289323.P568056266206430904

`2^n-2*A289322(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A289323

/-- `2^n-2*A289322(n)` -/
def P568056266206430904.Spec : Prop :=
  ∀ n, P568056266206430904.a n = A289323 n

theorem P568056266206430904.correct : P568056266206430904.Spec := by
  intro n
  simp only [A289323]

end A289323

/-! ## A289323.P12203521854573039718

`-A088568(2^n)`
-/

namespace A289323.P12203521854573039718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A088568 (2 ^ n)

end

end A289323.P12203521854573039718

namespace A289323

/-- `-A088568(2^n)` -/
def P12203521854573039718.Spec : Prop :=
  ∀ n, P12203521854573039718.a n = A289323 n

end A289323

/-! ## A289323.P1057502946807769015

`2^n-2*A156077(2^n)`
-/

namespace A289323.P1057502946807769015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 2 * A156077 (2 ^ n)

end

end A289323.P1057502946807769015

namespace A289323

/-- `2^n-2*A156077(2^n)` -/
def P1057502946807769015.Spec : Prop :=
  ∀ n, P1057502946807769015.a n = A289323 n

end A289323

/-! ## A289323.P2791828791897292775

`2*A054353(2^n)-3*2^n`
-/

namespace A289323.P2791828791897292775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054353 (2 ^ n) - (3 * 2 ^ n : ℤ)

end

end A289323.P2791828791897292775

namespace A289323

/-- `2*A054353(2^n)-3*2^n` -/
def P2791828791897292775.Spec : Prop :=
  ∀ n, P2791828791897292775.a n = A289323 n

end A289323

/-! ## A289323.P4519989198383627939

`A000079(n)-A005843(A289322(n))`
-/

namespace A289323.P4519989198383627939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A005843 (A289322 n).toNat

end

end A289323.P4519989198383627939

namespace A289323

/-- `A000079(n)-A005843(A289322(n))` -/
def P4519989198383627939.Spec : Prop :=
  ∀ n, P4519989198383627939.a n = A289323 n

end A289323

/-!
# A289324: Number of twos minus number of ones in the first 10^n entries of the Kolakoski sequence, A000002.

The programs for A289324, there is no canonical definition to state claims against.
-/

/-! ## A289324.P6775833097251843135

`10^n-2*A195206(n)`
-/

namespace A289324.P6775833097251843135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) - 2 * A195206 n

end

end A289324.P6775833097251843135

/-! ## A289324.P3218391316192922688

`A342407(n)-A195206(n)`
-/

namespace A289324.P3218391316192922688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342407 n - A195206 n

end

end A289324.P3218391316192922688

/-! ## A289324.P7507579779752635029

`2*A342407(n)-A011557(n)`
-/

namespace A289324.P7507579779752635029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A342407 n - A011557 n

end

end A289324.P7507579779752635029

/-! ## A289324.P8521865011658705168

`2*A342407(n)-Δ[A002275(n)]`
-/

namespace A289324.P8521865011658705168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A342407 n - (f1 (n + 1) - f1 n)

end

end A289324.P8521865011658705168

/-! ## A289324.P10493657545493961324

`2*A342407(n)-Δ[A098406(n)]`
-/

namespace A289324.P10493657545493961324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A342407 n - (f1 (n + 1) - f1 n)

end

end A289324.P10493657545493961324

/-!
# A289335: a(n) is the sum of the base-b representations of n for 2 <= b <= n+1 read in base ten.

The programs for A289335, there is no canonical definition to state claims against.
-/

/-! ## A289335.P10190898455642419883

`A002262(2*∑[n]²*floor((∑[n]+1)²/3))`
-/

namespace A289335.P10190898455642419883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (((2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) * ⌊(((∑ j ∈ Finset.range (n + 1), f2 j + 1) ^ 2 : ℕ) : ℚ) / 3⌋).toNat

end

end A289335.P10190898455642419883

/-!
# A289336: a(n) = numerator of (sigma(n) / phi(n)).

The programs for A289336, the canonical program `A289336.P13059549218811230367` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289336 has offset 1).

The definition of A289336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289336.P11929527468118095935

`∑{d}[n+1, #]/gcd(∑{d}[n+1, #], A051612(n+1))`
-/

namespace A289336.P11929527468118095935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (Int.gcd ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) (A051612 (n + 1)) : ℚ)

end

end A289336.P11929527468118095935

namespace A289336

/-- `∑{d}[n+1, #]/gcd(∑{d}[n+1, #], A051612(n+1))` -/
def P11929527468118095935.Spec : Prop :=
  ∀ n, P11929527468118095935.a n = (A289336 (n + 1) : ℚ)

end A289336

/-! ## A289336.P4533890256481008346

`A009286(n+1)/Δ[A002088(n)]`
-/

namespace A289336.P4533890256481008346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009286 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A289336.P4533890256481008346

namespace A289336

/-- `A009286(n+1)/Δ[A002088(n)]` -/
def P4533890256481008346.Spec : Prop :=
  ∀ n, P4533890256481008346.a n = (A289336 (n + 1) : ℚ)

end A289336

/-! ## A289336.P13029244199187642540

`A009286(n+1)/Δ[A005728(n)]`
-/

namespace A289336.P13029244199187642540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009286 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A289336.P13029244199187642540

namespace A289336

/-- `A009286(n+1)/Δ[A005728(n)]` -/
def P13029244199187642540.Spec : Prop :=
  ∀ n, P13029244199187642540.a n = (A289336 (n + 1) : ℚ)

end A289336

/-! ## A289336.P13059549218811230367

`Δ[A160664(n)]/A009223(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A289336

/-- `Δ[A160664(n)]/A009223(n+1)` -/
def P13059549218811230367.Spec : Prop :=
  ∀ n, P13059549218811230367.a n = (A289336 (n + 1) : ℚ)

end A289336

/-! ## A289336.P10184836916167106181

`A009286(n+1)/A000010(n+1)`
-/

namespace A289336.P10184836916167106181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009286 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A289336.P10184836916167106181

namespace A289336

/-- `A009286(n+1)/A000010(n+1)` -/
def P10184836916167106181.Spec : Prop :=
  ∀ n, P10184836916167106181.a n = (A289336 (n + 1) : ℚ)

end A289336

/-! ## A289336.P7502618259026719830

`A000203(n+1)/A009223(n+1)`
-/

namespace A289336.P7502618259026719830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A009223 (n + 1) : ℚ)

end

end A289336.P7502618259026719830

namespace A289336

/-- `A000203(n+1)/A009223(n+1)` -/
def P7502618259026719830.Spec : Prop :=
  ∀ n, P7502618259026719830.a n = (A289336 (n + 1) : ℚ)

end A289336

/-! ## A289336.P13167356075631498253

`A009286(n+1)/∑{d}[n+1, (n+1)/#*A008683(#)]`
-/

namespace A289336.P13167356075631498253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009286 (n + 1) : ℚ) / (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ))

end

end A289336.P13167356075631498253

namespace A289336

/-- `A009286(n+1)/∑{d}[n+1, (n+1)/#*A008683(#)]` -/
def P13167356075631498253.Spec : Prop :=
  ∀ n, P13167356075631498253.a n = (A289336 (n + 1) : ℚ)

end A289336

/-! ## A289336.P8824741277861990816

`A000203(n+1)/gcd(A000010(n+1), Δ[A160664(n)])`
-/

namespace A289336.P8824741277861990816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (Int.gcd (A000010 (n + 1)) (f1 (n + 1) - f1 n) : ℚ)

end

end A289336.P8824741277861990816

namespace A289336

/-- `A000203(n+1)/gcd(A000010(n+1), Δ[A160664(n)])` -/
def P8824741277861990816.Spec : Prop :=
  ∀ n, P8824741277861990816.a n = (A289336 (n + 1) : ℚ)

end A289336

/-! ## A289336.P12099433622545353232

`(A051612(n+1)+A000010(n+1))/A009223(n+1)`
-/

namespace A289336.P12099433622545353232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051612 (n + 1) + A000010 (n + 1) : ℚ) / (A009223 (n + 1) : ℚ)

end

end A289336.P12099433622545353232

namespace A289336

/-- `(A051612(n+1)+A000010(n+1))/A009223(n+1)` -/
def P12099433622545353232.Spec : Prop :=
  ∀ n, P12099433622545353232.a n = (A289336 (n + 1) : ℚ)

end A289336

/-! ## A289336.P5955274454942063846

`(A065387(n+1)-A000010(n+1))/A009223(n+1)`
-/

namespace A289336.P5955274454942063846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065387 (n + 1) - A000010 (n + 1) : ℚ) / (A009223 (n + 1) : ℚ)

end

end A289336.P5955274454942063846

namespace A289336

/-- `(A065387(n+1)-A000010(n+1))/A009223(n+1)` -/
def P5955274454942063846.Spec : Prop :=
  ∀ n, P5955274454942063846.a n = (A289336 (n + 1) : ℚ)

end A289336

/-! ## A289336.P13808322932116074204

`A000203(n+1)*A009286(n+1)/A062354(n+1)`
-/

namespace A289336.P13808322932116074204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * A009286 (n + 1) : ℚ) / (A062354 (n + 1) : ℚ)

end

end A289336.P13808322932116074204

namespace A289336

/-- `A000203(n+1)*A009286(n+1)/A062354(n+1)` -/
def P13808322932116074204.Spec : Prop :=
  ∀ n, P13808322932116074204.a n = (A289336 (n + 1) : ℚ)

end A289336

/-! ## A289336.P16487444889745983594

`A000203(n+1)/A000010(n+1)*A289412(n+1)`
-/

namespace A289336.P16487444889745983594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A289412 (n + 1) : ℚ)

end

end A289336.P16487444889745983594

namespace A289336

/-- `A000203(n+1)/A000010(n+1)*A289412(n+1)` -/
def P16487444889745983594.Spec : Prop :=
  ∀ n, P16487444889745983594.a n = (A289336 (n + 1) : ℚ)

end A289336

/-! ## A289336.P3893578397615387623

`lcm(A000010(n+1), A143348(n+1))/A000010(n+1)`
-/

namespace A289336.P3893578397615387623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000010 (n + 1)) (A143348 (n + 1)) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A289336.P3893578397615387623

namespace A289336

/-- `lcm(A000010(n+1), A143348(n+1))/A000010(n+1)` -/
def P3893578397615387623.Spec : Prop :=
  ∀ n, P3893578397615387623.a n = (A289336 (n + 1) : ℚ)

end A289336

/-!
# A289341: Partial sums of l-fusc A288002(n-1) + 1.

The programs for A289341, the canonical program `A289341.P18206740167896856464` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289341 has offset 1).

The definition of A289341 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A288002, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A289341.P18206740167896856464

`a(n-1)+A288002(n)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A289341

/-- `a(n-1)+A288002(n)` -/
def P18206740167896856464.Spec : Prop :=
  ∀ n, P18206740167896856464.a n = A289341 (n + 1)

theorem P18206740167896856464.correct : P18206740167896856464.Spec := by
  intro n
  simp only [A289341, Nat.add_sub_cancel]

end A289341

/-! ## A289341.P7266403540781550710

`A288002(n)+a(n-1)` with `a(0)=1`
-/

namespace A289341.P7266403540781550710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A288002 n + a (n - 1)

end

end A289341.P7266403540781550710

namespace A289341

/-- `A288002(n)+a(n-1)` -/
def P7266403540781550710.Spec : Prop :=
  ∀ n, P7266403540781550710.a n = A289341 (n + 1)

end A289341

/-! ## A289341.P8060445196442596115

`∑[A002487(and(n, n-1))]+1`
-/

namespace A289341.P8060445196442596115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A289341.P8060445196442596115

namespace A289341

/-- `∑[A002487(and(n, n-1))]+1` -/
def P8060445196442596115.Spec : Prop :=
  ∀ n, P8060445196442596115.a n = A289341 (n + 1)

end A289341

/-! ## A289341.P12095902864180563771

`∑[A283976(and(n, n-1))]+1`
-/

namespace A289341.P12095902864180563771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A289341.P12095902864180563771

namespace A289341

/-- `∑[A283976(and(n, n-1))]+1` -/
def P12095902864180563771.Spec : Prop :=
  ∀ n, P12095902864180563771.a n = A289341 (n + 1)

end A289341

/-! ## A289341.P17381840121165268406

`∑[A288002(abs(1-n)+1)]+1`
-/

namespace A289341.P17381840121165268406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288002 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A289341.P17381840121165268406

namespace A289341

/-- `∑[A288002(abs(1-n)+1)]+1` -/
def P17381840121165268406.Spec : Prop :=
  ∀ n, P17381840121165268406.a n = A289341 (n + 1)

end A289341

/-! ## A289341.P14301602070608495410

`∑[A002487(xor(n, -n)/2+n)]+1`
-/

namespace A289341.P14301602070608495410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.roundAway ((Int.xor (n : ℤ) (-(n : ℤ)) : ℚ) / 2 + (n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A289341.P14301602070608495410

namespace A289341

/-- `∑[A002487(xor(n, -n)/2+n)]+1` -/
def P14301602070608495410.Spec : Prop :=
  ∀ n, P14301602070608495410.a n = A289341 (n + 1)

end A289341

/-! ## A289341.P3255613434626581031

`∑[A283977(xor(1, A227140(n)))]`
-/

namespace A289341.P3255613434626581031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283977 (Int.xor 1 (A227140 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289341.P3255613434626581031

namespace A289341

/-- `∑[A283977(xor(1, A227140(n)))]` -/
def P3255613434626581031.Spec : Prop :=
  ∀ n, P3255613434626581031.a n = A289341 (n + 1)

end A289341

/-! ## A289341.P14699327896749438639

`(∑[A007306(n)]-A007729(n))/2+1`
-/

namespace A289341.P14699327896749438639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A007729 n : ℤ) : ℚ) / 2 + 1

end

end A289341.P14699327896749438639

namespace A289341

/-- `(∑[A007306(n)]-A007729(n))/2+1` -/
def P14699327896749438639.Spec : Prop :=
  ∀ n, P14699327896749438639.a n = (A289341 (n + 1) : ℚ)

end A289341

/-! ## A289341.P18413357504345278888

`1-A001489(∑[A002487(and(n, n-1))])`
-/

namespace A289341.P18413357504345278888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A289341.P18413357504345278888

namespace A289341

/-- `1-A001489(∑[A002487(and(n, n-1))])` -/
def P18413357504345278888.Spec : Prop :=
  ∀ n, P18413357504345278888.a n = A289341 (n + 1)

end A289341

/-! ## A289341.P13440043893068577877

`A008619(2*∑[A002487(and(n, n-1))])`
-/

namespace A289341.P13440043893068577877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A289341.P13440043893068577877

namespace A289341

/-- `A008619(2*∑[A002487(and(n, n-1))])` -/
def P13440043893068577877.Spec : Prop :=
  ∀ n, P13440043893068577877.a n = A289341 (n + 1)

end A289341

/-!
# A289342: Partial sums of r-fusc A288003(n-1) + 1.

The programs for A289342, the canonical program `A289342.P19232162365294286` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289342 has offset 1).

The definition of A289342 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A288003, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A289342.P19232162365294286

`a(n-1)+A288003(n)` with `a(0)=1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A289342

/-- `a(n-1)+A288003(n)` -/
def P19232162365294286.Spec : Prop :=
  ∀ n, P19232162365294286.a n = A289342 (n + 1)

theorem P19232162365294286.correct : P19232162365294286.Spec := by
  intro n
  simp only [A289342, Nat.add_sub_cancel]

end A289342

/-! ## A289342.P5713676804871458064

`∑[A002487(gcd(64, n)+n)]`
-/

namespace A289342.P5713676804871458064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Nat.gcd 64 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289342.P5713676804871458064

namespace A289342

/-- `∑[A002487(gcd(64, n)+n)]` -/
def P5713676804871458064.Spec : Prop :=
  ∀ n, P5713676804871458064.a n = A289342 (n + 1)

end A289342

/-! ## A289342.P4761953579823802324

`∑[A288003(floor(acot(n)+n))]`
-/

namespace A289342.P4761953579823802324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289342.P4761953579823802324

namespace A289342

/-- `∑[A288003(floor(acot(n)+n))]` -/
def P4761953579823802324.Spec : Prop :=
  ∀ n, P4761953579823802324.a n = A289342 (n + 1)

end A289342

/-! ## A289342.P11591524738389729803

`∑[A288003(round(acot(n)+n))]`
-/

namespace A289342.P11591524738389729803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289342.P11591524738389729803

namespace A289342

/-- `∑[A288003(round(acot(n)+n))]` -/
def P11591524738389729803.Spec : Prop :=
  ∀ n, P11591524738389729803.a n = A289342 (n + 1)

end A289342

/-! ## A289342.P6691637061735269461

`∑[A288003(abs(1-n)+1)]`
-/

namespace A289342.P6691637061735269461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289342.P6691637061735269461

namespace A289342

/-- `∑[A288003(abs(1-n)+1)]` -/
def P6691637061735269461.Spec : Prop :=
  ∀ n, P6691637061735269461.a n = A289342 (n + 1)

end A289342

/-! ## A289342.P6378808688280120242

`∑[A002487(lcm(32, n)/32+1)]`
-/

namespace A289342.P6378808688280120242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.roundAway ((Nat.lcm 32 n : ℚ) / 32 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289342.P6378808688280120242

namespace A289342

/-- `∑[A002487(lcm(32, n)/32+1)]` -/
def P6378808688280120242.Spec : Prop :=
  ∀ n, P6378808688280120242.a n = A289342 (n + 1)

end A289342

/-! ## A289342.P4622019293438426662

`∑[A309014(A227140(n))]`
-/

namespace A289342.P4622019293438426662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309014 (A227140 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289342.P4622019293438426662

namespace A289342

/-- `∑[A309014(A227140(n))]` -/
def P4622019293438426662.Spec : Prop :=
  ∀ n, P4622019293438426662.a n = A289342 (n + 1)

end A289342

/-! ## A289342.P10000778102697337694

`∑[dr(A288003(A004277(n)))]`
-/

namespace A289342.P10000778102697337694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A288003 (A004277 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289342.P10000778102697337694

namespace A289342

/-- `∑[dr(A288003(A004277(n)))]` -/
def P10000778102697337694.Spec : Prop :=
  ∀ n, (P10000778102697337694.a n : ℤ) = A289342 (n + 1)

end A289342

/-! ## A289342.P13056415429470052336

`∑[dr(A288003(A008574(n)))]`
-/

namespace A289342.P13056415429470052336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A288003 (A008574 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289342.P13056415429470052336

namespace A289342

/-- `∑[dr(A288003(A008574(n)))]` -/
def P13056415429470052336.Spec : Prop :=
  ∀ n, (P13056415429470052336.a n : ℤ) = A289342 (n + 1)

end A289342

/-! ## A289342.P12031745706594974777

`∑[dr(A288003(A022144(n)))]`
-/

namespace A289342.P12031745706594974777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A288003 (A022144 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289342.P12031745706594974777

namespace A289342

/-- `∑[dr(A288003(A022144(n)))]` -/
def P12031745706594974777.Spec : Prop :=
  ∀ n, (P12031745706594974777.a n : ℤ) = A289342 (n + 1)

end A289342

/-!
# A289343: a(n) = A289191(prime(n)).

The programs for A289343, there is no canonical definition to state claims against.
-/

/-! ## A289343.P7354812931471567452

`A289191(A000040(n+1))`
-/

namespace A289343.P7354812931471567452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289191 (A000040 (n + 1)).toNat

end

end A289343.P7354812931471567452

/-! ## A289343.P14192415830095716333

`A289191(record[A006530(n+2)])`
-/

namespace A289343.P14192415830095716333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289191 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A289343.P14192415830095716333

/-! ## A289343.P16420622886648906243

`A289191(record[A014963(n+2)])`
-/

namespace A289343.P16420622886648906243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289191 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A289343.P16420622886648906243

/-! ## A289343.P2187645917789694814

`A289191(record[A020639(n+2)])`
-/

namespace A289343.P2187645917789694814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289191 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A289343.P2187645917789694814

/-!
# A289350: Coefficients in expansion of E_2/Product_{k>=1} (1-q^k)^2.

The programs for A289350, there is no canonical definition to state claims against.
-/

/-! ## A289350.P17233657185540106906

`(1-12*n)*A000712(n)`
-/

namespace A289350.P17233657185540106906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (12 * n : ℤ)) * A000712 n

end

end A289350.P17233657185540106906

/-! ## A289350.P3307441158458211046

`A000712(n)*A084060(A008586(n))`
-/

namespace A289350.P3307441158458211046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n * A084060 (A008586 n).toNat

end

end A289350.P3307441158458211046

/-! ## A289350.P11077173568690873575

`∑[A000990(n)]*A084060(A008586(n))`
-/

namespace A289350.P11077173568690873575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A084060 (A008586 n).toNat

end

end A289350.P11077173568690873575

/-! ## A289350.P14591797016624489187

`A000712(n)*A165747(A008588(n))`
-/

namespace A289350.P14591797016624489187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n * A165747 (A008588 n).toNat

end

end A289350.P14591797016624489187

/-! ## A289350.P13024083516197639284

`A084060(A008586(n))*A144064(∑[n+3])`
-/

namespace A289350.P13024083516197639284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084060 (A008586 n).toNat * A144064 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289350.P13024083516197639284

/-!
# A289351: Starting from one digit move right by x steps, x being the value of the digit. If the steps go beyond the least significant digits they continue from the left side. Then repeat the process from the reached digit. The sequence lists the numbers such that all the digits are touched just one time and the last run ends in the initial digit.

The programs for A289351, there is no canonical definition to state claims against.
-/

/-! ## A289351.P632325244722457083

`lt[A065031(n), 12]`
-/

namespace A289351.P632325244722457083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065031 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A289351.P632325244722457083

/-! ## A289351.P5768794162059334328

`eq[1, A031100(A171797(n))]`
-/

namespace A289351.P5768794162059334328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (A171797 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289351.P5768794162059334328

/-! ## A289351.P256154800464688993

`lt[A196563(A051022(n)), 2]`
-/

namespace A289351.P256154800464688993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A051022 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A289351.P256154800464688993

/-! ## A289351.P5198774898517651113

`lt[A196563(A059729(n)), 2]`
-/

namespace A289351.P5198774898517651113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A059729 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A289351.P5198774898517651113

/-! ## A289351.P10578660716122716681

`lt[A086066(A308003(n)), 5]`
-/

namespace A289351.P10578660716122716681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 (A308003 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A289351.P10578660716122716681

/-!
# A289353: Primes p such that (p,p+4) is a pair of cousin primes and p == 7 (mod 10).

The programs for A289353, the canonical program `A289353.P6543965714867084062` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289353 has offset 1).

The definition of A289353 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1514 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289353.P12574912259671093918

`∩[A015913(n+1), A132231(n+1)]`
-/

namespace A289353.P12574912259671093918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289353.P12574912259671093918

namespace A289353

/-- `∩[A015913(n+1), A132231(n+1)]` -/
def P12574912259671093918.Spec : Prop :=
  ∀ n, (P12574912259671093918.a n : ℤ) = A289353 (n + 1)

end A289353

/-! ## A289353.P5830195609651472993

`∩[A029710(n+1), A132231(n+1)]`
-/

namespace A289353.P5830195609651472993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289353.P5830195609651472993

namespace A289353

/-- `∩[A029710(n+1), A132231(n+1)]` -/
def P5830195609651472993.Spec : Prop :=
  ∀ n, (P5830195609651472993.a n : ℤ) = A289353 (n + 1)

end A289353

/-! ## A289353.P14235094941575915099

`∩[A056772(n+1), A132231(n+1)]`
-/

namespace A289353.P14235094941575915099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289353.P14235094941575915099

namespace A289353

/-- `∩[A056772(n+1), A132231(n+1)]` -/
def P14235094941575915099.Spec : Prop :=
  ∀ n, (P14235094941575915099.a n : ℤ) = A289353 (n + 1)

end A289353

/-! ## A289353.P4800151085491080530

`p?[A030430(n+1)-4]`
-/

namespace A289353.P4800151085491080530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289353.P4800151085491080530

namespace A289353

/-- `p?[A030430(n+1)-4]` -/
def P4800151085491080530.Spec : Prop :=
  ∀ n, P4800151085491080530.a n = A289353 (n + 1)

end A289353

/-! ## A289353.P2926518659297980668

`∩[A029710(n+1), A030432(n+1)]`
-/

namespace A289353.P2926518659297980668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289353.P2926518659297980668

namespace A289353

/-- `∩[A029710(n+1), A030432(n+1)]` -/
def P2926518659297980668.Spec : Prop :=
  ∀ n, (P2926518659297980668.a n : ℤ) = A289353 (n + 1)

end A289353

/-! ## A289353.P7333886260956782961

`∩[A111980(n+1), A132231(n+1)]`
-/

namespace A289353.P7333886260956782961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289353.P7333886260956782961

namespace A289353

/-- `∩[A111980(n+1), A132231(n+1)]` -/
def P7333886260956782961.Spec : Prop :=
  ∀ n, (P7333886260956782961.a n : ℤ) = A289353 (n + 1)

end A289353

/-! ## A289353.P6543965714867084062

`p?[abs(4-p?[5*n+1])]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A289353

/-- `p?[abs(4-p?[5*n+1])]` -/
def P6543965714867084062.Spec : Prop :=
  ∀ n, P6543965714867084062.a n = A289353 (n + 1)

theorem P6543965714867084062.correct : P6543965714867084062.Spec := by
  intro n
  simp only [A289353, Nat.add_sub_cancel]

end A289353

/-! ## A289353.P12318003473869305283

`p?[p?[a(n-1)+5]-4]` with `a(0)=1`
-/

namespace A289353.P12318003473869305283
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289353.P12318003473869305283

namespace A289353

/-- `p?[p?[a(n-1)+5]-4]` -/
def P12318003473869305283.Spec : Prop :=
  ∀ n, P12318003473869305283.a n = A289353 (n + 1)

end A289353

/-! ## A289353.P13771567712375421569

`∩[A015913(n+1), A030432(n+1)]`
-/

namespace A289353.P13771567712375421569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289353.P13771567712375421569

namespace A289353

/-- `∩[A015913(n+1), A030432(n+1)]` -/
def P13771567712375421569.Spec : Prop :=
  ∀ n, (P13771567712375421569.a n : ℤ) = A289353 (n + 1)

end A289353

/-! ## A289353.P8164657004376724619

`∩[A015913(n+1), A045357(n+1)]`
-/

namespace A289353.P8164657004376724619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289353.P8164657004376724619

namespace A289353

/-- `∩[A015913(n+1), A045357(n+1)]` -/
def P8164657004376724619.Spec : Prop :=
  ∀ n, (P8164657004376724619.a n : ℤ) = A289353 (n + 1)

end A289353

/-! ## A289353.P9622590202557835561

`∩[A015913(n+1), A045380(n+1)]`
-/

namespace A289353.P9622590202557835561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289353.P9622590202557835561

namespace A289353

/-- `∩[A015913(n+1), A045380(n+1)]` -/
def P9622590202557835561.Spec : Prop :=
  ∀ n, (P9622590202557835561.a n : ℤ) = A289353 (n + 1)

end A289353

/-! ## A289353.P4623140519969934661

`∩[A029710(n+1), A045357(n+1)]`
-/

namespace A289353.P4623140519969934661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289353.P4623140519969934661

namespace A289353

/-- `∩[A029710(n+1), A045357(n+1)]` -/
def P4623140519969934661.Spec : Prop :=
  ∀ n, (P4623140519969934661.a n : ℤ) = A289353 (n + 1)

end A289353

/-! ## A289353.P15974115974298464606

`∩[A029710(n+1), A045380(n+1)]`
-/

namespace A289353.P15974115974298464606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289353.P15974115974298464606

namespace A289353

/-- `∩[A029710(n+1), A045380(n+1)]` -/
def P15974115974298464606.Spec : Prop :=
  ∀ n, (P15974115974298464606.a n : ℤ) = A289353 (n + 1)

end A289353

/-! ## A289353.P3670173455649491036

`∩[A030432(n+1), A056772(n+1)]`
-/

namespace A289353.P3670173455649491036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289353.P3670173455649491036

namespace A289353

/-- `∩[A030432(n+1), A056772(n+1)]` -/
def P3670173455649491036.Spec : Prop :=
  ∀ n, (P3670173455649491036.a n : ℤ) = A289353 (n + 1)

end A289353

/-! ## A289353.P18017270079072187639

`∩[A045357(n+1), A056772(n+1)]`
-/

namespace A289353.P18017270079072187639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289353.P18017270079072187639

namespace A289353

/-- `∩[A045357(n+1), A056772(n+1)]` -/
def P18017270079072187639.Spec : Prop :=
  ∀ n, (P18017270079072187639.a n : ℤ) = A289353 (n + 1)

end A289353

/-! ## A289353.P13334644542024855199

`∩[A045380(n+1), A056772(n+1)]`
-/

namespace A289353.P13334644542024855199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289353.P13334644542024855199

namespace A289353

/-- `∩[A045380(n+1), A056772(n+1)]` -/
def P13334644542024855199.Spec : Prop :=
  ∀ n, (P13334644542024855199.a n : ℤ) = A289353 (n + 1)

end A289353

/-! ## A289353.P14690594618704268227

`∩[A015913(n+1), A132237(n+1)]`
-/

namespace A289353.P14690594618704268227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289353.P14690594618704268227

namespace A289353

/-- `∩[A015913(n+1), A132237(n+1)]` -/
def P14690594618704268227.Spec : Prop :=
  ∀ n, (P14690594618704268227.a n : ℤ) = A289353 (n + 1)

end A289353

/-! ## A289353.P4247537870034439842

`∩[A029710(n+1), A132237(n+1)]`
-/

namespace A289353.P4247537870034439842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289353.P4247537870034439842

namespace A289353

/-- `∩[A029710(n+1), A132237(n+1)]` -/
def P4247537870034439842.Spec : Prop :=
  ∀ n, (P4247537870034439842.a n : ℤ) = A289353 (n + 1)

end A289353

/-! ## A289353.P4010433693202288730

`∩[A056772(n+1), A132237(n+1)]`
-/

namespace A289353.P4010433693202288730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289353.P4010433693202288730

namespace A289353

/-- `∩[A056772(n+1), A132237(n+1)]` -/
def P4010433693202288730.Spec : Prop :=
  ∀ n, (P4010433693202288730.a n : ℤ) = A289353 (n + 1)

end A289353

/-! ## A289353.P13863280938424846964

`p?[A132238(n+1)-4]`
-/

namespace A289353.P13863280938424846964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289353.P13863280938424846964

namespace A289353

/-- `p?[A132238(n+1)-4]` -/
def P13863280938424846964.Spec : Prop :=
  ∀ n, P13863280938424846964.a n = A289353 (n + 1)

end A289353

/-!
# A289354: Number of 9-digit numbers whose sum of digits is n.

The programs for A289354, there is no canonical definition to state claims against.
-/

/-! ## A289354.P13220673812292374996

`or(A114511(A079451(n)), A306942(n))`
-/

namespace A289354.P13220673812292374996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A114511 (A079451 n).toNat) (A306942 n)

end

end A289354.P13220673812292374996

/-! ## A289354.P11158474252419275478

`or(A256547(A011782(n)), A306942(n))`
-/

namespace A289354.P11158474252419275478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A256547 (A011782 n).toNat) (A306942 n)

end

end A289354.P11158474252419275478

/-! ## A289354.P8071781793786366825

`or(A306942(n), A306954(A060693(n)))`
-/

namespace A289354.P8071781793786366825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A306942 n) (A306954 (A060693 n).toNat)

end

end A289354.P8071781793786366825

/-! ## A289354.P15002717398604763967

`or(A293959(A232988(n)), A306942(n))`
-/

namespace A289354.P15002717398604763967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A293959 (A232988 n).toNat) (A306942 n)

end

end A289354.P15002717398604763967

/-! ## A289354.P15666251540418744501

`or(A306942(n), A316867(A028578(n)²))`
-/

namespace A289354.P15666251540418744501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A306942 n) (A316867 (A028578 n ^ 2).toNat)

end

end A289354.P15666251540418744501

/-!
# A289355: Complement of A229289.

The programs for A289355, there is no canonical definition to state claims against.
-/

/-! ## A289355.P15385994218782702340

`∩[A040136(n+1), A166110(n+1)]`
-/

namespace A289355.P15385994218782702340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289355.P15385994218782702340

/-!
# A289356: Least number k such that n^2 + n + k is prime.

The programs for A289356, the canonical program `A289356.P270311075941156718` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289356 has offset 0).

The definition of A289356 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013632, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A289356.P270311075941156718

`A013632(A002378(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A289356

/-- `A013632(A002378(n))` -/
def P270311075941156718.Spec : Prop :=
  ∀ n, P270311075941156718.a n = A289356 n

theorem P270311075941156718.correct : P270311075941156718.Spec := by
  intro n
  simp only [A289356]

end A289356

/-! ## A289356.P12656555273218604067

`A182047(n)-∑[2*n]`
-/

namespace A289356.P12656555273218604067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182047 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A289356.P12656555273218604067

namespace A289356

/-- `A182047(n)-∑[2*n]` -/
def P12656555273218604067.Spec : Prop :=
  ∀ n, P12656555273218604067.a n = A289356 n

end A289356

/-! ## A289356.P2122416401861332428

`abs(A002378(n)-A182047(n))`
-/

namespace A289356.P2122416401861332428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002378 n - A182047 n|

end

end A289356.P2122416401861332428

namespace A289356

/-- `abs(A002378(n)-A182047(n))` -/
def P2122416401861332428.Spec : Prop :=
  ∀ n, P2122416401861332428.a n = A289356 n

end A289356

/-! ## A289356.P9372020823141281131

`A028310(A182047(n)-A002378(n))`
-/

namespace A289356.P9372020823141281131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A182047 n - A002378 n).toNat

end

end A289356.P9372020823141281131

namespace A289356

/-- `A028310(A182047(n)-A002378(n))` -/
def P9372020823141281131.Spec : Prop :=
  ∀ n, P9372020823141281131.a n = A289356 n

end A289356

/-! ## A289356.P9277162581800083807

`A182047(n)-A000217(n)-A000217(n)`
-/

namespace A289356.P9277162581800083807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182047 n - A000217 n - A000217 n

end

end A289356.P9277162581800083807

namespace A289356

/-- `A182047(n)-A000217(n)-A000217(n)` -/
def P9277162581800083807.Spec : Prop :=
  ∀ n, P9277162581800083807.a n = A289356 n

end A289356

/-! ## A289356.P11540248532282570666

`A182047(n)%A008072(n+1)-A002378(n)`
-/

namespace A289356.P11540248532282570666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182047 n) (A008072 (n + 1)) - A002378 n

end

end A289356.P11540248532282570666

namespace A289356

/-- `A182047(n)%A008072(n+1)-A002378(n)` -/
def P11540248532282570666.Spec : Prop :=
  ∀ n, P11540248532282570666.a n = A289356 n

end A289356

/-! ## A289356.P10716249479137580628

`A151800(n²+n)-∑[2*n]`
-/

namespace A289356.P10716249479137580628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n ^ 2 + n) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A289356.P10716249479137580628

namespace A289356

/-- `A151800(n²+n)-∑[2*n]` -/
def P10716249479137580628.Spec : Prop :=
  ∀ n, P10716249479137580628.a n = A289356 n

end A289356

/-! ## A289356.P6661297529209111445

`A004738(A182047(n)-2*n)`
-/

namespace A289356.P6661297529209111445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 (A182047 n - (2 * n : ℤ)).toNat

end

end A289356.P6661297529209111445

namespace A289356

/-- `A004738(A182047(n)-2*n)` -/
def P6661297529209111445.Spec : Prop :=
  ∀ n, P6661297529209111445.a n = A289356 n

end A289356

/-! ## A289356.P188447859523199175

`A109400(A182047(n)-2*n)`
-/

namespace A289356.P188447859523199175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109400 (A182047 n - (2 * n : ℤ)).toNat

end

end A289356.P188447859523199175

namespace A289356

/-- `A109400(A182047(n)-2*n)` -/
def P188447859523199175.Spec : Prop :=
  ∀ n, P188447859523199175.a n = A289356 n

end A289356

/-! ## A289356.P10412272388987193073

`A004738(A182047(n)-n-n)`
-/

namespace A289356.P10412272388987193073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 (A182047 n - (n : ℤ) - (n : ℤ)).toNat

end

end A289356.P10412272388987193073

namespace A289356

/-- `A004738(A182047(n)-n-n)` -/
def P10412272388987193073.Spec : Prop :=
  ∀ n, P10412272388987193073.a n = A289356 n

end A289356

/-! ## A289356.P8702942389034155321

`A109400(A182047(n)-n-n)`
-/

namespace A289356.P8702942389034155321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109400 (A182047 n - (n : ℤ) - (n : ℤ)).toNat

end

end A289356.P8702942389034155321

namespace A289356

/-- `A109400(A182047(n)-n-n)` -/
def P8702942389034155321.Spec : Prop :=
  ∀ n, P8702942389034155321.a n = A289356 n

end A289356

/-! ## A289356.P16653377293571800027

`A013632(∑[2*n])`
-/

namespace A289356.P16653377293571800027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289356.P16653377293571800027

namespace A289356

/-- `A013632(∑[2*n])` -/
def P16653377293571800027.Spec : Prop :=
  ∀ n, P16653377293571800027.a n = A289356 n

end A289356

/-! ## A289356.P1336474127810104815

`A007920(n²+1+n)+1`
-/

namespace A289356.P1336474127810104815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (n ^ 2 + 1 + n) + 1

end

end A289356.P1336474127810104815

namespace A289356

/-- `A007920(n²+1+n)+1` -/
def P1336474127810104815.Spec : Prop :=
  ∀ n, P1336474127810104815.a n = A289356 n

end A289356

/-! ## A289356.P9511970804438125117

`A004738(A182047(n))`
-/

namespace A289356.P9511970804438125117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 (A182047 n).toNat

end

end A289356.P9511970804438125117

namespace A289356

/-- `A004738(A182047(n))` -/
def P9511970804438125117.Spec : Prop :=
  ∀ n, P9511970804438125117.a n = A289356 n

end A289356

/-! ## A289356.P13507117891560103969

`A000015(A013632(n²+n))`
-/

namespace A289356.P13507117891560103969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A013632 (n ^ 2 + n)).toNat

end

end A289356.P13507117891560103969

namespace A289356

/-- `A000015(A013632(n²+n))` -/
def P13507117891560103969.Spec : Prop :=
  ∀ n, P13507117891560103969.a n = A289356 n

end A289356

/-! ## A289356.P12196634192586305036

`A028310(A007920(n²+n))`
-/

namespace A289356.P12196634192586305036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A007920 (n ^ 2 + n)).toNat

end

end A289356.P12196634192586305036

namespace A289356

/-- `A028310(A007920(n²+n))` -/
def P12196634192586305036.Spec : Prop :=
  ∀ n, P12196634192586305036.a n = A289356 n

end A289356

/-! ## A289356.P2842447325148584643

`A109400(A151800(n²+n))`
-/

namespace A289356.P2842447325148584643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109400 (A151800 (n ^ 2 + n)).toNat

end

end A289356.P2842447325148584643

namespace A289356

/-- `A109400(A151800(n²+n))` -/
def P2842447325148584643.Spec : Prop :=
  ∀ n, P2842447325148584643.a n = A289356 n

end A289356

/-! ## A289356.P13953338172284756312

`A004185(A013632(n*(n+1)))`
-/

namespace A289356.P13953338172284756312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A013632 (n * (n + 1))).toNat

end

end A289356.P13953338172284756312

namespace A289356

/-- `A004185(A013632(n*(n+1)))` -/
def P13953338172284756312.Spec : Prop :=
  ∀ n, P13953338172284756312.a n = A289356 n

end A289356

/-! ## A289356.P5644777197518085293

`A007920((n+1)*A254667(n))`
-/

namespace A289356.P5644777197518085293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 ((n + 1 : ℤ) * A254667 n).toNat

end

end A289356.P5644777197518085293

namespace A289356

/-- `A007920((n+1)*A254667(n))` -/
def P5644777197518085293.Spec : Prop :=
  ∀ n, P5644777197518085293.a n = A289356 n

end A289356

/-! ## A289356.P2709523012887851524

`A007920(n*(A060576(n)+n))`
-/

namespace A289356.P2709523012887851524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 ((n : ℤ) * (A060576 n + (n : ℤ))).toNat

end

end A289356.P2709523012887851524

namespace A289356

/-- `A007920(n*(A060576(n)+n))` -/
def P2709523012887851524.Spec : Prop :=
  ∀ n, P2709523012887851524.a n = A289356 n

end A289356

/-!
# A289357: Least number k such that n^2 + n - k is prime.

The programs for A289357, there is no canonical definition to state claims against.
-/

/-! ## A289357.P7446358913802547436

`(n*A161550(n+1))%(n+1)`
-/

namespace A289357.P7446358913802547436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A161550 (n + 1)) (n + 1 : ℤ)

end

end A289357.P7446358913802547436

/-! ## A289357.P9744637246658091968

`A028387(n)+1-A161550(n+1)`
-/

namespace A289357.P9744637246658091968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n + (1 - A161550 (n + 1))

end

end A289357.P9744637246658091968

/-! ## A289357.P11700694554158097069

`A002378(n+1)-A161550(n+1)`
-/

namespace A289357.P11700694554158097069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 1) - A161550 (n + 1)

end

end A289357.P11700694554158097069

/-! ## A289357.P17881595239752543934

`A279019(n+6)-A161550(n+1)`
-/

namespace A289357.P17881595239752543934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279019 (n + 6) - A161550 (n + 1)

end

end A289357.P17881595239752543934

/-! ## A289357.P16335990690395281395

`A028387(n)-A000010(A161550(n+1))`
-/

namespace A289357.P16335990690395281395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n - A000010 (A161550 (n + 1)).toNat

end

end A289357.P16335990690395281395

/-! ## A289357.P6703958297024892529

`A175851((n+1)*(n+2))-1`
-/

namespace A289357.P6703958297024892529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 ((n + 1) * (n + 2)) - 1

end

end A289357.P6703958297024892529

/-! ## A289357.P1657151081493884431

`abs(A175851((n+1)²+n+1)-1)`
-/

namespace A289357.P1657151081493884431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A175851 ((n + 1) ^ 2 + (n + 1)) - 1|

end

end A289357.P1657151081493884431

/-! ## A289357.P14711294584312982168

`A175851(A028387(n))%(n+1)`
-/

namespace A289357.P14711294584312982168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175851 (A028387 n).toNat) (n + 1 : ℤ)

end

end A289357.P14711294584312982168

/-! ## A289357.P13091411763136058883

`A130734(A175851(∑[2*(n+1)]))`
-/

namespace A289357.P13091411763136058883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130734 (A175851 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A289357.P13091411763136058883

/-! ## A289357.P8174797349203040523

`A238737(∑[n]+n)`
-/

namespace A289357.P8174797349203040523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238737 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A289357.P8174797349203040523

/-! ## A289357.P17657536804132255709

`A049716(∑[n+1])-1`
-/

namespace A289357.P17657536804132255709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049716 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A289357.P17657536804132255709

/-!
# A289360: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 670", based on the 5-celled von Neumann neighborhood.

The programs for A289360, there is no canonical definition to state claims against.
-/

/-! ## A289360.P16854065268534769354

`A030101(A290160(n)/A060546(n))`
-/

namespace A289360.P16854065268534769354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A290160 n : ℚ) / (A060546 n : ℚ))).toNat

end

end A289360.P16854065268534769354

/-! ## A289360.P12515763436963918207

`A030101(A290160(n)/A016116(n+1))`
-/

namespace A289360.P12515763436963918207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A290160 n : ℚ) / (A016116 (n + 1) : ℚ))).toNat

end

end A289360.P12515763436963918207

/-! ## A289360.P11761034803855976991

`A030101(floor(A290160(n)/A016116(n)))`
-/

namespace A289360.P11761034803855976991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 ⌊(A290160 n : ℚ) / (A016116 n : ℚ)⌋.toNat

end

end A289360.P11761034803855976991

/-! ## A289360.P14961860143809632222

`A030101(ceil(A290160(n)/A016116(n)))`
-/

namespace A289360.P14961860143809632222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 ⌈(A290160 n : ℚ) / (A016116 n : ℚ)⌉.toNat

end

end A289360.P14961860143809632222

/-! ## A289360.P5795167006557447476

`A030101(2/A016116(n)*A290160(n))`
-/

namespace A289360.P5795167006557447476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway (2 / (A016116 n : ℚ) * (A290160 n : ℚ))).toNat

end

end A289360.P5795167006557447476

/-!
# A289361: Least sum s of three consecutive primes such that s is a multiple of the n-th prime.

The programs for A289361, there is no canonical definition to state claims against.
-/

/-! ## A289361.P9536647426041538294

`A000040(n+1)*A225660(A005046(n))`
-/

namespace A289361.P9536647426041538294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A225660 (A005046 n).toNat

end

end A289361.P9536647426041538294

/-!
# A289363: Primes p such that p^2 + p - 1 is composite.

The programs for A289363, the canonical program `A289363.P17304641566808962649` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289363 has offset 1).

The definition of A289363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 972 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289363.P18099283422818310503

`p?[comp[A045546(n+1)]]`
-/

namespace A289363.P18099283422818310503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A289363.P18099283422818310503

namespace A289363

/-- `p?[comp[A045546(n+1)]]` -/
def P18099283422818310503.Spec : Prop :=
  ∀ n, (P18099283422818310503.a n : ℤ) = A289363 (n + 1)

end A289363

/-! ## A289363.P1433379247155669029

`p?[comp[A094210(n+1)+1]]`
-/

namespace A289363.P1433379247155669029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A289363.P1433379247155669029

namespace A289363

/-- `p?[comp[A094210(n+1)+1]]` -/
def P1433379247155669029.Spec : Prop :=
  ∀ n, (P1433379247155669029.a n : ℤ) = A289363 (n + 1)

end A289363

/-! ## A289363.P2556843024138601321

`p?[comp[A002328(n+1)-1]]`
-/

namespace A289363.P2556843024138601321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A289363.P2556843024138601321

namespace A289363

/-- `p?[comp[A002328(n+1)-1]]` -/
def P2556843024138601321.Spec : Prop :=
  ∀ n, (P2556843024138601321.a n : ℤ) = A289363 (n + 1)

end A289363

/-! ## A289363.P7082381821432742891

`p?[comp[A089362(n+1)-3]]`
-/

namespace A289363.P7082381821432742891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089362 (n + 1) - 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A289363.P7082381821432742891

namespace A289363

/-- `p?[comp[A089362(n+1)-3]]` -/
def P7082381821432742891.Spec : Prop :=
  ∀ n, (P7082381821432742891.a n : ℤ) = A289363 (n + 1)

end A289363

/-! ## A289363.P11136739831979824156

`p?[comp[floor(A088502(n+1)/2)]]`
-/

namespace A289363.P11136739831979824156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088502 (n + 1) : ℚ) / 2⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A289363.P11136739831979824156

namespace A289363

/-- `p?[comp[floor(A088502(n+1)/2)]]` -/
def P11136739831979824156.Spec : Prop :=
  ∀ n, (P11136739831979824156.a n : ℤ) = A289363 (n + 1)

end A289363

/-! ## A289363.P320745814054712810

`p?[comp[A002327(n+1)%A002328(n+1)]]`
-/

namespace A289363.P320745814054712810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002327 (n + 1)) (A002328 (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A289363.P320745814054712810

namespace A289363

/-- `p?[comp[A002327(n+1)%A002328(n+1)]]` -/
def P320745814054712810.Spec : Prop :=
  ∀ n, (P320745814054712810.a n : ℤ) = A289363 (n + 1)

end A289363

/-! ## A289363.P9629302684047631092

`p?[lt[1, A289357(n+1)]+1]`
-/

namespace A289363.P9629302684047631092
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289357 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A289363.P9629302684047631092

namespace A289363

/-- `p?[lt[1, A289357(n+1)]+1]` -/
def P9629302684047631092.Spec : Prop :=
  ∀ n, (P9629302684047631092.a n : ℤ) = A289363 (n + 1)

end A289363

/-! ## A289363.P17304641566808962649

`p?[2-A108151(n+1)+n]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A289363

/-- `p?[2-A108151(n+1)+n]` -/
def P17304641566808962649.Spec : Prop :=
  ∀ n, P17304641566808962649.a n = A289363 (n + 1)

theorem P17304641566808962649.correct : P17304641566808962649.Spec := by
  intro n
  simp only [A289363, Nat.add_sub_cancel]

end A289363

/-! ## A289363.P12773873064999405805

`p?[(n+1)%(A272903(n+2)+n)]`
-/

namespace A289363.P12773873064999405805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A272903 (n + 2) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289363.P12773873064999405805

namespace A289363

/-- `p?[(n+1)%(A272903(n+2)+n)]` -/
def P12773873064999405805.Spec : Prop :=
  ∀ n, P12773873064999405805.a n = A289363 (n + 1)

end A289363

/-! ## A289363.P13576637505915713417

`p?[A014963(A278247(n))*(n+1)]`
-/

namespace A289363.P13576637505915713417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A278247 n).toNat * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289363.P13576637505915713417

namespace A289363

/-- `p?[A014963(A278247(n))*(n+1)]` -/
def P13576637505915713417.Spec : Prop :=
  ∀ n, P13576637505915713417.a n = A289363 (n + 1)

end A289363

/-! ## A289363.P14284354812348607453

`p?[A131738(n)*A157928(A272903(n+2))]`
-/

namespace A289363.P14284354812348607453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n * A157928 (A272903 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289363.P14284354812348607453

namespace A289363

/-- `p?[A131738(n)*A157928(A272903(n+2))]` -/
def P14284354812348607453.Spec : Prop :=
  ∀ n, P14284354812348607453.a n = A289363 (n + 1)

end A289363

/-!
# A289364: Numbers k such that phi(x) = 12*k+2 is solvable, where phi is Euler's totient A000010.

The programs for A289364, there is no canonical definition to state claims against.
-/

/-! ## A289364.P10689282986920126972

`floor(A063668(n+1)/12)`
-/

namespace A289364.P10689282986920126972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A063668 (n + 1) : ℚ) / 12⌋

end

end A289364.P10689282986920126972

/-! ## A289364.P9749023655339868252

`round(A063668(n+1)/12*A019429(2*n))`
-/

namespace A289364.P9749023655339868252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A063668 (n + 1) : ℚ) / 12 * (A019429 (2 * n) : ℚ))

end

end A289364.P9749023655339868252

/-! ## A289364.P8009117209072934141

`round(A218858(A218858(n))+A063668(n+1)/12)`
-/

namespace A289364.P8009117209072934141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A218858 (A218858 n).toNat : ℚ) + (A063668 (n + 1) : ℚ) / 12)

end

end A289364.P8009117209072934141

/-! ## A289364.P14461977868687389133

`ceil(A063668(n+1)/12-A000120(A061142(n+2)))`
-/

namespace A289364.P14461977868687389133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A063668 (n + 1) : ℚ) / 12 - (A000120 (A061142 (n + 2)).toNat : ℚ)⌉

end

end A289364.P14461977868687389133

/-! ## A289364.P3943446871251966907

`round(A063668(n+1)/12*A001221(A000015(n+1)))`
-/

namespace A289364.P3943446871251966907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A063668 (n + 1) : ℚ) / 12 * (A001221 (A000015 (n + 1)).toNat : ℚ))

end

end A289364.P3943446871251966907

/-! ## A289364.P7222259584962634268

`round(A063668(n+1)/12*A001222(A181848(n+1)))`
-/

namespace A289364.P7222259584962634268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A063668 (n + 1) : ℚ) / 12 * (A001222 (A181848 (n + 1)).toNat : ℚ))

end

end A289364.P7222259584962634268

/-! ## A289364.P13453606822026568350

`ceil(A063668(n+1)/12-A007318(∑[n]))`
-/

namespace A289364.P13453606822026568350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A063668 (n + 1) : ℚ) / 12 - (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)⌉

end

end A289364.P13453606822026568350

/-! ## A289364.P1712138202438694716

`round(A063668(n+1)/12)%A330980(n+1)`
-/

namespace A289364.P1712138202438694716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A063668 (n + 1) : ℚ) / 12)) (A330980 (n + 1))

end

end A289364.P1712138202438694716

/-!
# A289367: a(n) = (2*A288851(n) - 3*A110163(n))/288.

The programs for A289367, there is no canonical definition to state claims against.
-/

/-! ## A289367.P992797708536125187

`(A289061(n+1)-A192731(n+1))/288`
-/

namespace A289367.P992797708536125187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289061 (n + 1) - A192731 (n + 1) : ℚ) / 288

end

end A289367.P992797708536125187

/-!
# A289370: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 553", based on the 5-celled von Neumann neighborhood.

The programs for A289370, there is no canonical definition to state claims against.
-/

/-! ## A289370.P10591158961230941717

`or(A051049(n), A286858(n))`
-/

namespace A289370.P10591158961230941717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051049 n) (A286858 n)

end

end A289370.P10591158961230941717

/-! ## A289370.P6092310316479008193

`or(A166977(n), A286858(n))`
-/

namespace A289370.P6092310316479008193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A166977 n) (A286858 n)

end

end A289370.P6092310316479008193

/-! ## A289370.P2984661107483026487

`or(A277800(n), A286858(n))`
-/

namespace A289370.P2984661107483026487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A277800 n) (A286858 n)

end

end A289370.P2984661107483026487

/-! ## A289370.P15365257228433969256

`or(A286773(n), A286858(n))`
-/

namespace A289370.P15365257228433969256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A286773 n) (A286858 n)

end

end A289370.P15365257228433969256

/-! ## A289370.P9053081592832448584

`or(A106624(n)², A286858(n))`
-/

namespace A289370.P9053081592832448584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A106624 n ^ 2) (A286858 n)

end

end A289370.P9053081592832448584

/-! ## A289370.P11013216736673397974

`or(A035038(A029579(n)), A286858(n))`
-/

namespace A289370.P11013216736673397974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035038 (A029579 n).toNat) (A286858 n)

end

end A289370.P11013216736673397974

/-! ## A289370.P16439906255705975492

`xor(A166920(n), A290863(n))`
-/

namespace A289370.P16439906255705975492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A166920 n) (A290863 n)

end

end A289370.P16439906255705975492

/-! ## A289370.P17438593441896600349

`A051049(n)+A126646(n)-A290863(n)`
-/

namespace A289370.P17438593441896600349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051049 n + (A126646 n - A290863 n)

end

end A289370.P17438593441896600349

/-! ## A289370.P3186260462630009773

`A126646(n)-A288197(n)%A126646(n)`
-/

namespace A289370.P3186260462630009773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A288197 n) (A126646 n)

end

end A289370.P3186260462630009773

/-!
# A289371: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 557", based on the 5-celled von Neumann neighborhood.

The programs for A289371, there is no canonical definition to state claims against.
-/

/-! ## A289371.P9775539870138511160

`A007088(A289373(n))`
-/

namespace A289371.P9775539870138511160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289373 n).toNat

end

end A289371.P9775539870138511160

/-! ## A289371.P16246423909335338193

`A002275(n+1)-A256078(A289373(n))`
-/

namespace A289371.P16246423909335338193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) - A256078 (A289373 n).toNat

end

end A289371.P16246423909335338193

/-! ## A289371.P16217498135893275376

`A185544(2*A289373(n))`
-/

namespace A289371.P16217498135893275376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A289373 n).toNat

end

end A289371.P16217498135893275376

/-! ## A289371.P1225521431568893075

`A185544(A289373(n)+A289373(n))`
-/

namespace A289371.P1225521431568893075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A289373 n + A289373 n).toNat

end

end A289371.P1225521431568893075

/-!
# A289372: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 557", based on the 5-celled von Neumann neighborhood.

The programs for A289372, there is no canonical definition to state claims against.
-/

/-! ## A289372.P11013172971311553844

`A007088(A289374(n))`
-/

namespace A289372.P11013172971311553844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289374 n).toNat

end

end A289372.P11013172971311553844

/-! ## A289372.P15512970785494127303

`A305989(A289373(n))`
-/

namespace A289372.P15512970785494127303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A289373 n).toNat

end

end A289372.P15512970785494127303

/-! ## A289372.P5274306574877705947

`A185544(2*A289374(n))`
-/

namespace A289372.P5274306574877705947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A289374 n).toNat

end

end A289372.P5274306574877705947

/-! ## A289372.P4048612240380039479

`A185544(lcm(2, A289374(n)))`
-/

namespace A289372.P4048612240380039479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A289374 n))

end

end A289372.P4048612240380039479

/-!
# A289374: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 557", based on the 5-celled von Neumann neighborhood.

The programs for A289374, there is no canonical definition to state claims against.
-/

/-! ## A289374.P4946361226694456607

`A325401(A289373(n))`
-/

namespace A289374.P4946361226694456607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A289373 n).toNat

end

end A289374.P4946361226694456607

/-! ## A289374.P3865256319332473858

`or(A175920(A289373(n)), A286865(n))`
-/

namespace A289374.P3865256319332473858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A175920 (A289373 n).toNat) (A286865 n)

end

end A289374.P3865256319332473858

/-! ## A289374.P5617223013390790457

`A030101(lcm(2, A289373(n)))`
-/

namespace A289374.P5617223013390790457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.lcm 2 (A289373 n))

end

end A289374.P5617223013390790457

/-! ## A289374.P5407606051216749298

`A030101(ceil(acot(n))*A289373(n))`
-/

namespace A289374.P5407606051216749298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (⌈SequenceMachineLib.acot (n : ℝ)⌉ * A289373 n).toNat

end

end A289374.P5407606051216749298

/-! ## A289374.P15611659457872981161

`A030101(A289373(n)^ceil(acot(n)))`
-/

namespace A289374.P15611659457872981161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A289373 n : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ))).toNat

end

end A289374.P15611659457872981161

/-!
# A289375: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 561", based on the 5-celled von Neumann neighborhood.

The programs for A289375, there is no canonical definition to state claims against.
-/

/-! ## A289375.P12374201461066412160

`∑[A011557(n)]+A057428(n)*A288435(n)`
-/

namespace A289375.P12374201461066412160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A057428 n * A288435 n

end

end A289375.P12374201461066412160

/-! ## A289375.P17176187573429433456

`A000042(n+1)+A000007(n)-A288435(n)`
-/

namespace A289375.P17176187573429433456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + (A000007 n - A288435 n)

end

end A289375.P17176187573429433456

/-! ## A289375.P17349955453011345989

`A000042(n+1)+A057428(n)*A288435(n)`
-/

namespace A289375.P17349955453011345989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + A057428 n * A288435 n

end

end A289375.P17349955453011345989

/-! ## A289375.P16081619090284647751

`A000042(n+1)-A288435(n)%A000244(n)`
-/

namespace A289375.P16081619090284647751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - Int.tmod (A288435 n) (A000244 n)

end

end A289375.P16081619090284647751

/-! ## A289375.P10623070477770326862

`∑[A002283(n)+1]+A057428(n)*A288435(n)`
-/

namespace A289375.P10623070477770326862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A057428 n * A288435 n

end

end A289375.P10623070477770326862

/-! ## A289375.P11690988020505086214

`or(A000042(n+1)-A288435(n), A145649(n+1))`
-/

namespace A289375.P11690988020505086214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000042 (n + 1) - A288435 n) (A145649 (n + 1))

end

end A289375.P11690988020505086214

/-! ## A289375.P11351898731070053259

`(A000042(n+1)-A288435(n))^A001222(2-C(2, n+2))`
-/

namespace A289375.P11351898731070053259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000042 (n + 1) - A288435 n : ℚ) ^ (A001222 (2 - Nat.choose 2 (n + 2)) : ℤ)

end

end A289375.P11351898731070053259

/-!
# A289376: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 561", based on the 5-celled von Neumann neighborhood.

The programs for A289376, there is no canonical definition to state claims against.
-/

/-! ## A289376.P9438298284761683663

`or(1, A000042(n+1)-A288436(n))`
-/

namespace A289376.P9438298284761683663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000042 (n + 1) - A288436 n)

end

end A289376.P9438298284761683663

/-! ## A289376.P2349511345233306521

`A000042(n+1)+A000007(n)-A288436(n)`
-/

namespace A289376.P2349511345233306521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + (A000007 n - A288436 n)

end

end A289376.P2349511345233306521

/-! ## A289376.P1430132827092939325

`A000042(n+1)+A057428(n)*A288436(n)`
-/

namespace A289376.P1430132827092939325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + A057428 n * A288436 n

end

end A289376.P1430132827092939325

/-! ## A289376.P12998242478413104801

`1-A060576(n+1)+A000042(n+1)-A288436(n)`
-/

namespace A289376.P12998242478413104801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A060576 (n + 1) + (A000042 (n + 1) - A288436 n)

end

end A289376.P12998242478413104801

/-! ## A289376.P14878395933088088138

`A007088(A289378(n))`
-/

namespace A289376.P14878395933088088138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289378 n).toNat

end

end A289376.P14878395933088088138

/-!
# A289377: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 561", based on the 5-celled von Neumann neighborhood.

The programs for A289377, there is no canonical definition to state claims against.
-/

/-! ## A289377.P12099194066001385811

`A000007(n)+A126646(n)-A288437(n)`
-/

namespace A289377.P12099194066001385811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A126646 n - A288437 n)

end

end A289377.P12099194066001385811

/-! ## A289377.P10509057596463486252

`A126646(n)+A057428(n)*A288437(n)`
-/

namespace A289377.P10509057596463486252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + A057428 n * A288437 n

end

end A289377.P10509057596463486252

/-! ## A289377.P331629067016923733

`or(A126646(n)-A288437(n), A000079(n))`
-/

namespace A289377.P331629067016923733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A126646 n - A288437 n) (A000079 n)

end

end A289377.P331629067016923733

/-! ## A289377.P1706792665573076773

`or(A126646(n)-A288437(n), A288438(n))`
-/

namespace A289377.P1706792665573076773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A126646 n - A288437 n) (A288438 n)

end

end A289377.P1706792665573076773

/-! ## A289377.P7869066185722299111

`A126646(n)-A062157(n)²*A288437(n)`
-/

namespace A289377.P7869066185722299111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A062157 n ^ 2 * A288437 n

end

end A289377.P7869066185722299111

/-! ## A289377.P13506309439380844730

`A036987(2*n)+A126646(n)-A288437(n)`
-/

namespace A289377.P13506309439380844730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n) + (A126646 n - A288437 n)

end

end A289377.P13506309439380844730

/-!
# A289378: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 561", based on the 5-celled von Neumann neighborhood.

The programs for A289378, there is no canonical definition to state claims against.
-/

/-! ## A289378.P10752744620091213327

`or(1, A126646(n)-A288438(n))`
-/

namespace A289378.P10752744620091213327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A126646 n - A288438 n)

end

end A289378.P10752744620091213327

/-! ## A289378.P17012226760595470226

`A000007(n)+A126646(n)-A288438(n)`
-/

namespace A289378.P17012226760595470226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A126646 n - A288438 n)

end

end A289378.P17012226760595470226

/-! ## A289378.P15876375815926245791

`A288437(n)+A289377(n)-A288438(n)`
-/

namespace A289378.P15876375815926245791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288437 n + (A289377 n - A288438 n)

end

end A289378.P15876375815926245791

/-! ## A289378.P16567839977358357805

`(A126646(n)-A288438(n))*a(1-A010054(n))` with `a(0)=1`
-/

namespace A289378.P16567839977358357805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A126646 n - A288438 n) * a (1 - A010054 n).toNat

end

end A289378.P16567839977358357805

/-! ## A289378.P14415849627176960602

`A126646(A028310(n))-A288438(A028310(n))`
-/

namespace A289378.P14415849627176960602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A028310 n).toNat - A288438 (A028310 n).toNat

end

end A289378.P14415849627176960602

/-!
# A289380: Number of 10-digit numbers whose sum of digits is n.

The programs for A289380, there is no canonical definition to state claims against.
-/

/-! ## A289380.P3994378942679464305

`A008502(A087051(n))`
-/

namespace A289380.P3994378942679464305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008502 (A087051 n).toNat

end

end A289380.P3994378942679464305

/-!
# A289381: a(n) = numerator of Sum_{k=1..n} 1/(2*k-1)!!.

The programs for A289381, there is no canonical definition to state claims against.
-/

/-! ## A289381.P3796620027508744292

`A099377(A113133(n)+A001222(n+1))`
-/

namespace A289381.P3796620027508744292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099377 (A113133 n + A001222 (n + 1)).toNat

end

end A289381.P3796620027508744292

/-!
# A289382: a(n) = 2^n mod triangular(n).

The programs for A289382, the canonical program `A289382.P11272265768490195260` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289382 has offset 1).

The definition of A289382 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289382.P11272265768490195260

`(2^(n+1))%∑[n+1]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A289382

/-- `(2^(n+1))%∑[n+1]` -/
def P11272265768490195260.Spec : Prop :=
  ∀ n, (P11272265768490195260.a n : ℤ) = A289382 (n + 1)

theorem P11272265768490195260.correct : P11272265768490195260.Spec := by
  intro n
  simp only [A289382, Nat.add_sub_cancel]

end A289382

/-! ## A289382.P11754127941297551595

`abs(Δ[A077925(n)]%∑[n+1])`
-/

namespace A289382.P11754127941297551595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)|

end

end A289382.P11754127941297551595

namespace A289382

/-- `abs(Δ[A077925(n)]%∑[n+1])` -/
def P11754127941297551595.Spec : Prop :=
  ∀ n, P11754127941297551595.a n = A289382 (n + 1)

end A289382

/-! ## A289382.P3652374002604729060

`-(1-A048578(n))%∑[n+1]`
-/

namespace A289382.P3652374002604729060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (1 - A048578 n) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A289382.P3652374002604729060

namespace A289382

/-- `-(1-A048578(n))%∑[n+1]` -/
def P3652374002604729060.Spec : Prop :=
  ∀ n, P3652374002604729060.a n = A289382 (n + 1)

end A289382

/-! ## A289382.P4220663157297301139

`abs((∑[A000051(n)]-n)%A000217(n+1))`
-/

namespace A289382.P4220663157297301139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)) (A000217 (n + 1))|

end

end A289382.P4220663157297301139

namespace A289382

/-- `abs((∑[A000051(n)]-n)%A000217(n+1))` -/
def P4220663157297301139.Spec : Prop :=
  ∀ n, P4220663157297301139.a n = A289382 (n + 1)

end A289382

/-! ## A289382.P11752118796342755634

`abs(Δ[A126646(n)]%∑[n+1])`
-/

namespace A289382.P11752118796342755634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)|

end

end A289382.P11752118796342755634

namespace A289382

/-- `abs(Δ[A126646(n)]%∑[n+1])` -/
def P11752118796342755634.Spec : Prop :=
  ∀ n, P11752118796342755634.a n = A289382 (n + 1)

end A289382

/-! ## A289382.P8164601702240856919

`abs(Δ[A000051(n+1)]%∑[n+1])`
-/

namespace A289382.P8164601702240856919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)|

end

end A289382.P8164601702240856919

namespace A289382

/-- `abs(Δ[A000051(n+1)]%∑[n+1])` -/
def P8164601702240856919.Spec : Prop :=
  ∀ n, P8164601702240856919.a n = A289382 (n + 1)

end A289382

/-! ## A289382.P6055678438112788989

`abs(Δ[A000225(n+1)]%∑[n+1])`
-/

namespace A289382.P6055678438112788989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)|

end

end A289382.P6055678438112788989

namespace A289382

/-- `abs(Δ[A000225(n+1)]%∑[n+1])` -/
def P6055678438112788989.Spec : Prop :=
  ∀ n, P6055678438112788989.a n = A289382 (n + 1)

end A289382

/-! ## A289382.P17738380794328130342

`abs(Δ[A048578(n)]%A000217(n+1))`
-/

namespace A289382.P17738380794328130342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) (A000217 (n + 1))|

end

end A289382.P17738380794328130342

namespace A289382

/-- `abs(Δ[A048578(n)]%A000217(n+1))` -/
def P17738380794328130342.Spec : Prop :=
  ∀ n, P17738380794328130342.a n = A289382 (n + 1)

end A289382

/-! ## A289382.P6075932139148011007

`abs(Δ[A000918(n+1)]%A000217(n+1))`
-/

namespace A289382.P6075932139148011007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) (A000217 (n + 1))|

end

end A289382.P6075932139148011007

namespace A289382

/-- `abs(Δ[A000918(n+1)]%A000217(n+1))` -/
def P6075932139148011007.Spec : Prop :=
  ∀ n, P6075932139148011007.a n = A289382 (n + 1)

end A289382

/-! ## A289382.P878274132026887167

`A014682(A000079(n+2)%((n+1)*(n+2)))`
-/

namespace A289382.P878274132026887167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.tmod (A000079 (n + 2)) ((n + 1) * (n + 2) : ℤ)).toNat

end

end A289382.P878274132026887167

namespace A289382

/-- `A014682(A000079(n+2)%((n+1)*(n+2)))` -/
def P878274132026887167.Spec : Prop :=
  ∀ n, P878274132026887167.a n = A289382 (n + 1)

end A289382

/-! ## A289382.P99798099915868872

`abs((A198276(n)-A171389(n))%C(n+2, 2))`
-/

namespace A289382.P99798099915868872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A198276 n - A171389 n) (Nat.choose (n + 2) 2 : ℤ)|

end

end A289382.P99798099915868872

namespace A289382

/-- `abs((A198276(n)-A171389(n))%C(n+2, 2))` -/
def P99798099915868872.Spec : Prop :=
  ∀ n, P99798099915868872.a n = A289382 (n + 1)

end A289382

/-! ## A289382.P14468897886497054609

`A028242(A083318(n+2)%((n+1)*(n+2)))`
-/

namespace A289382.P14468897886497054609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.tmod (A083318 (n + 2)) ((n + 1) * (n + 2) : ℤ)).toNat

end

end A289382.P14468897886497054609

namespace A289382

/-- `A028242(A083318(n+2)%((n+1)*(n+2)))` -/
def P14468897886497054609.Spec : Prop :=
  ∀ n, P14468897886497054609.a n = A289382 (n + 1)

end A289382

/-!
# A289383: Total number of nonzero vectors over all subspaces of an n-dimensional vector space over the field with two elements.

The programs for A289383, there is no canonical definition to state claims against.
-/

/-! ## A289383.P1267254366250988603

`A182176(n)-A006116(n)`
-/

namespace A289383.P1267254366250988603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182176 n - A006116 n

end

end A289383.P1267254366250988603

/-! ## A289383.P8075760057563290771

`A006116(n+1)-2*A006116(n)`
-/

namespace A289383.P8075760057563290771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006116 (n + 1) - 2 * A006116 n

end

end A289383.P8075760057563290771

/-! ## A289383.P17807660317038308854

`(2*A182176(n))%A006116(n+1)`
-/

namespace A289383.P17807660317038308854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A182176 n) (A006116 (n + 1))

end

end A289383.P17807660317038308854

/-! ## A289383.P17262273286425162290

`(2^n-1)*A061034(A011782(n))`
-/

namespace A289383.P17262273286425162290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - 1) * A061034 (A011782 n).toNat

end

end A289383.P17262273286425162290

/-! ## A289383.P17297298399304628502

`A000225(n)*A061034(ceil(2^(n-1)))`
-/

namespace A289383.P17297298399304628502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n * A061034 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A289383.P17297298399304628502

/-!
# A289387: a(n) = Sum_{k>=0} (-1)^k*binomial(n, 5*k+2).

The programs for A289387, the canonical program `A289387.P12260547900688232206` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289387 has offset 0).

The definition of A289387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 358 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289387.P12260547900688232206

`A289321(n-1)+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A289387

/-- `A289321(n-1)+a(n-1)` -/
def P12260547900688232206.Spec : Prop :=
  ∀ n, P12260547900688232206.a n = A289387 n

theorem P12260547900688232206.correct : P12260547900688232206.Spec := by
  intro n
  simp only [A289387]

end A289387

/-! ## A289387.P15152955845047012347

`∑[A289321(n)]-A289321(n)`
-/

namespace A289387.P15152955845047012347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A289321 n

end

end A289387.P15152955845047012347

namespace A289387

/-- `∑[A289321(n)]-A289321(n)` -/
def P15152955845047012347.Spec : Prop :=
  ∀ n, P15152955845047012347.a n = A289387 n

end A289387

/-! ## A289387.P5603460064028831978

`Δ[Δ[Δ[-A289306(n)]]]`
-/

namespace A289387.P5603460064028831978
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A289306 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289387.P5603460064028831978

namespace A289387

/-- `Δ[Δ[Δ[-A289306(n)]]]` -/
def P5603460064028831978.Spec : Prop :=
  ∀ n, P5603460064028831978.a n = A289387 n

end A289387

/-! ## A289387.P16826107685751445182

`Δ[A289388(n)]`
-/

namespace A289387.P16826107685751445182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289387.P16826107685751445182

namespace A289387

/-- `Δ[A289388(n)]` -/
def P16826107685751445182.Spec : Prop :=
  ∀ n, P16826107685751445182.a n = A289387 n

end A289387

/-! ## A289387.P4269773833994072250

`Δ[Δ[A289389(n)]]`
-/

namespace A289387.P4269773833994072250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289389 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289387.P4269773833994072250

namespace A289387

/-- `Δ[Δ[A289389(n)]]` -/
def P4269773833994072250.Spec : Prop :=
  ∀ n, P4269773833994072250.a n = A289387 n

end A289387

/-! ## A289387.P3836740256147658836

`A289388(n+1)-A289388(n)`
-/

namespace A289387.P3836740256147658836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289388 (n + 1) - A289388 n

end

end A289387.P3836740256147658836

namespace A289387

/-- `A289388(n+1)-A289388(n)` -/
def P3836740256147658836.Spec : Prop :=
  ∀ n, P3836740256147658836.a n = A289387 n

end A289387

/-! ## A289387.P7560753389846329764

`∑[A289321(log2(A011782(n)))]`
-/

namespace A289387.P7560753389846329764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289321 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289387.P7560753389846329764

namespace A289387

/-- `∑[A289321(log2(A011782(n)))]` -/
def P7560753389846329764.Spec : Prop :=
  ∀ n, P7560753389846329764.a n = A289387 n

end A289387

/-!
# A289388: a(n) = Sum_{k>=0} (-1)^k*binomial(n,5*k+3).

The programs for A289388, the canonical program `A289388.P9088607596143187835` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289388 has offset 0).

The definition of A289388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 357 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289388.P722955474042229002

`Δ[A289389(n)]`
-/

namespace A289388.P722955474042229002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289388.P722955474042229002

namespace A289388

/-- `Δ[A289389(n)]` -/
def P722955474042229002.Spec : Prop :=
  ∀ n, P722955474042229002.a n = A289388 n

end A289388

/-! ## A289388.P9088607596143187835

`Δ[Δ[-A289306(n)]]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A289388

/-- `Δ[Δ[-A289306(n)]]` -/
def P9088607596143187835.Spec : Prop :=
  ∀ n, P9088607596143187835.a n = A289388 n

theorem P9088607596143187835.correct : P9088607596143187835.Spec := by
  intro n
  simp only [A289388]

end A289388

/-! ## A289388.P10271554121524916665

`∑[A289387(abs(1-n))]`
-/

namespace A289388.P10271554121524916665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289387 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289388.P10271554121524916665

namespace A289388

/-- `∑[A289387(abs(1-n))]` -/
def P10271554121524916665.Spec : Prop :=
  ∀ n, P10271554121524916665.a n = A289388 n

end A289388

/-! ## A289388.P2793566386340496290

`Δ[Δ[Δ[-A289321(n)]]]`
-/

namespace A289388.P2793566386340496290
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A289321 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289388.P2793566386340496290

namespace A289388

/-- `Δ[Δ[Δ[-A289321(n)]]]` -/
def P2793566386340496290.Spec : Prop :=
  ∀ n, P2793566386340496290.a n = A289388 n

end A289388

/-! ## A289388.P10938053855786933049

`A289387(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A289388.P10938053855786933049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A289387 (n - 1) + a (n - 1)

end

end A289388.P10938053855786933049

namespace A289388

/-- `A289387(n-1)+a(n-1)` -/
def P10938053855786933049.Spec : Prop :=
  ∀ n, P10938053855786933049.a n = A289388 n

end A289388

/-! ## A289388.P6369146973415711763

`∑[A289387(n)]-A289387(n)`
-/

namespace A289388.P6369146973415711763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289387 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A289387 n

end

end A289388.P6369146973415711763

namespace A289388

/-- `∑[A289387(n)]-A289387(n)` -/
def P6369146973415711763.Spec : Prop :=
  ∀ n, P6369146973415711763.a n = A289388 n

end A289388

/-! ## A289388.P16165514230458255988

`A289389(n+1)-A289389(n)`
-/

namespace A289388.P16165514230458255988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289389 (n + 1) - A289389 n

end

end A289388.P16165514230458255988

namespace A289388

/-- `A289389(n+1)-A289389(n)` -/
def P16165514230458255988.Spec : Prop :=
  ∀ n, P16165514230458255988.a n = A289388 n

end A289388

/-! ## A289388.P14047424898528637711

`Δ[A289306(n)-A289306(n+1)]`
-/

namespace A289388.P14047424898528637711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289306 n - A289306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289388.P14047424898528637711

namespace A289388

/-- `Δ[A289306(n)-A289306(n+1)]` -/
def P14047424898528637711.Spec : Prop :=
  ∀ n, P14047424898528637711.a n = A289388 n

theorem P14047424898528637711.correct : P14047424898528637711.Spec := by
  intro n
  simp only [A289388, Nat.add_sub_cancel, A289388.P14047424898528637711.f1, A289388.P14047424898528637711.a, A289388.P9088607596143187835.f2, A289388.P9088607596143187835.f1, A289388.P9088607596143187835.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A289388

/-!
# A289389: a(n) = Sum_{k>=0} (-1)^k*binomial(n,5*k+4).

The programs for A289389, the canonical program `A289389.P4744459025562339149` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289389 has offset 0).

The definition of A289389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 358 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289389.P4744459025562339149

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A289389

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)` -/
def P4744459025562339149.Spec : Prop :=
  ∀ n, P4744459025562339149.a n = A289389 n

theorem P4744459025562339149.correct : P4744459025562339149.Spec := by
  intro n
  simp only [A289389]

end A289389

/-! ## A289389.P11947499090826547323

`Δ[-A289306(n)]`
-/

namespace A289389.P11947499090826547323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A289306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289389.P11947499090826547323

namespace A289389

/-- `Δ[-A289306(n)]` -/
def P11947499090826547323.Spec : Prop :=
  ∀ n, P11947499090826547323.a n = A289389 n

end A289389

/-! ## A289389.P8904681955695881451

`Δ[Δ[-A289321(n)]]`
-/

namespace A289389.P8904681955695881451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A289321 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289389.P8904681955695881451

namespace A289389

/-- `Δ[Δ[-A289321(n)]]` -/
def P8904681955695881451.Spec : Prop :=
  ∀ n, P8904681955695881451.a n = A289389 n

end A289389

/-! ## A289389.P5152416820111777708

`∑[A289388(abs(1-n))]`
-/

namespace A289389.P5152416820111777708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289388 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289389.P5152416820111777708

namespace A289389

/-- `∑[A289388(abs(1-n))]` -/
def P5152416820111777708.Spec : Prop :=
  ∀ n, P5152416820111777708.a n = A289389 n

end A289389

/-! ## A289389.P124626290043129572

`A289388(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A289389.P124626290043129572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A289388 (n - 1) + a (n - 1)

end

end A289389.P124626290043129572

namespace A289389

/-- `A289388(n-1)+a(n-1)` -/
def P124626290043129572.Spec : Prop :=
  ∀ n, P124626290043129572.a n = A289389 n

end A289389

/-! ## A289389.P18274616052460755168

`A289306(n)-A289306(n+1)`
-/

namespace A289389.P18274616052460755168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289306 n - A289306 (n + 1)

end

end A289389.P18274616052460755168

namespace A289389

/-- `A289306(n)-A289306(n+1)` -/
def P18274616052460755168.Spec : Prop :=
  ∀ n, P18274616052460755168.a n = A289389 n

end A289389

/-! ## A289389.P8465449510343576406

`Δ[Δ[A022958(n)-A289321(n)]]`
-/

namespace A289389.P8465449510343576406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 n - A289321 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289389.P8465449510343576406

namespace A289389

/-- `Δ[Δ[A022958(n)-A289321(n)]]` -/
def P8465449510343576406.Spec : Prop :=
  ∀ n, P8465449510343576406.a n = A289389 n

end A289389

/-! ## A289389.P1263907041786374913

`Δ[A289321(n)-A289321(n+1)]`
-/

namespace A289389.P1263907041786374913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289321 n - A289321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289389.P1263907041786374913

namespace A289389

/-- `Δ[A289321(n)-A289321(n+1)]` -/
def P1263907041786374913.Spec : Prop :=
  ∀ n, P1263907041786374913.a n = A289389 n

end A289389

/-! ## A289389.P16774831571265789830

`(A000007(n)-1)*Δ[A289306(n)]`
-/

namespace A289389.P16774831571265789830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n - 1) * (f1 (n + 1) - f1 n)

end

end A289389.P16774831571265789830

namespace A289389

/-- `(A000007(n)-1)*Δ[A289306(n)]` -/
def P16774831571265789830.Spec : Prop :=
  ∀ n, P16774831571265789830.a n = A289389 n

end A289389

/-! ## A289389.P14612507065482664076

`Δ[Δ[A017209(7*n)-A289321(n)]]`
-/

namespace A289389.P14612507065482664076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 (7 * n) - A289321 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289389.P14612507065482664076

namespace A289389

/-- `Δ[Δ[A017209(7*n)-A289321(n)]]` -/
def P14612507065482664076.Spec : Prop :=
  ∀ n, P14612507065482664076.a n = A289389 n

end A289389

/-! ## A289389.P1273511275899869014

`Δ[A000007(A031200(n))-A289306(n)]`
-/

namespace A289389.P1273511275899869014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A031200 n).toNat - A289306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289389.P1273511275899869014

namespace A289389

/-- `Δ[A000007(A031200(n))-A289306(n)]` -/
def P1273511275899869014.Spec : Prop :=
  ∀ n, P1273511275899869014.a n = A289389 n

end A289389

/-! ## A289389.P5056296974096498664

`Δ[A000007(A031209(n))-A289306(n)]`
-/

namespace A289389.P5056296974096498664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A031209 n).toNat - A289306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289389.P5056296974096498664

namespace A289389

/-- `Δ[A000007(A031209(n))-A289306(n)]` -/
def P5056296974096498664.Spec : Prop :=
  ∀ n, P5056296974096498664.a n = A289389 n

end A289389

/-! ## A289389.P4320361338065077427

`Δ[A000007(A031210(n))-A289306(n)]`
-/

namespace A289389.P4320361338065077427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A031210 n).toNat - A289306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289389.P4320361338065077427

namespace A289389

/-- `Δ[A000007(A031210(n))-A289306(n)]` -/
def P4320361338065077427.Spec : Prop :=
  ∀ n, P4320361338065077427.a n = A289389 n

end A289389

/-! ## A289389.P4355838731061135026

`Δ[A000007(A031212(n))-A289306(n)]`
-/

namespace A289389.P4355838731061135026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A031212 n).toNat - A289306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289389.P4355838731061135026

namespace A289389

/-- `Δ[A000007(A031212(n))-A289306(n)]` -/
def P4355838731061135026.Spec : Prop :=
  ∀ n, P4355838731061135026.a n = A289389 n

end A289389

/-! ## A289389.P13216181288903463178

`∑[A289388(n)]-A289388(n)`
-/

namespace A289389.P13216181288903463178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A289388 n

end

end A289389.P13216181288903463178

namespace A289389

/-- `∑[A289388(n)]-A289388(n)` -/
def P13216181288903463178.Spec : Prop :=
  ∀ n, P13216181288903463178.a n = A289389 n

end A289389

/-!
# A289394: a(n) = A288968(n)/4.

The programs for A289394, there is no canonical definition to state claims against.
-/

/-! ## A289394.P15316465527144242463

`A288968(n+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A289394.P15316465527144242463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288968 (n + 1) : ℚ) / 4

end

end A289394.P15316465527144242463

/-! ## A289394.P12051699559095876451

`record[A288968(A193592(n))/4]`
-/

namespace A289394.P12051699559095876451
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288968 (A193592 n).toNat : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289394.P12051699559095876451

/-! ## A289394.P17415588161356564686

`ceil(A288995(n+1)/48)`
-/

namespace A289394.P17415588161356564686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A288995 (n + 1) : ℚ) / 48⌉

end

end A289394.P17415588161356564686

/-! ## A289394.P14082530965103294611

`round(A288995(floor(sqrt((n+1)²+1)))/48)`
-/

namespace A289394.P14082530965103294611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A288995 (Nat.sqrt ((n + 1) ^ 2 + 1)) : ℚ) / 48)

end

end A289394.P14082530965103294611

/-! ## A289394.P10326237494991360983

`round(A288995(n+1)/48)/A033999(n)²`
-/

namespace A289394.P10326237494991360983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A288995 (n + 1) : ℚ) / 48) : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A289394.P10326237494991360983

/-! ## A289394.P12521188354837086943

`round(A288995(n+1)/48*A014963(A351562(n+1)))`
-/

namespace A289394.P12521188354837086943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A288995 (n + 1) : ℚ) / 48 * (A014963 (A351562 (n + 1)).toNat : ℚ))

end

end A289394.P12521188354837086943

/-!
# A289395: a(n) = A110163(n)/8.

The programs for A289395, there is no canonical definition to state claims against.
-/

/-! ## A289395.P4810776139323964559

`A110163(n+1)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A289395.P4810776139323964559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110163 (n + 1) : ℚ) / 8

end

end A289395.P4810776139323964559

/-! ## A289395.P12122086743021449858

`A288471(n+1)/16`
-/

namespace A289395.P12122086743021449858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288471 (n + 1) : ℚ) / 16

end

end A289395.P12122086743021449858

/-! ## A289395.P11397686226980392563

`A192731(n+1)/24+1`
-/

namespace A289395.P11397686226980392563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192731 (n + 1) : ℚ) / 24 + 1

end

end A289395.P11397686226980392563

/-! ## A289395.P4592046029070044187

`(A289024(n+1)-A288851(n+1))/8`
-/

namespace A289395.P4592046029070044187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289024 (n + 1) - A288851 (n + 1) : ℚ) / 8

end

end A289395.P4592046029070044187

/-! ## A289395.P7536736152713101383

`(A289029(n+1)-A289024(n+1))/8`
-/

namespace A289395.P7536736152713101383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289029 (n + 1) - A289024 (n + 1) : ℚ) / 8

end

end A289395.P7536736152713101383

/-!
# A289396: a(n) = A288851(n)/12.

The programs for A289396, there is no canonical definition to state claims against.
-/

/-! ## A289396.P15975661662910920274

`A288851(n+1)/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A289396.P15975661662910920274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288851 (n + 1) : ℚ) / 12

end

end A289396.P15975661662910920274

/-! ## A289396.P419932628979613496

`(A289061(n+1)/2+12)/12`
-/

namespace A289396.P419932628979613496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A289061 (n + 1) : ℚ) / 2 + 12) / 12

end

end A289396.P419932628979613496

/-! ## A289396.P15983712760072427193

`(A289024(n+1)-A110163(n+1))/12`
-/

namespace A289396.P15983712760072427193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289024 (n + 1) - A110163 (n + 1) : ℚ) / 12

end

end A289396.P15983712760072427193

/-! ## A289396.P9344751321439969833

`(A289029(n+1)-A288471(n+1))/12`
-/

namespace A289396.P9344751321439969833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289029 (n + 1) - A288471 (n + 1) : ℚ) / 12

end

end A289396.P9344751321439969833

/-!
# A289398: Least integer m > n such that (n^2 + m^2)/2 is a square.

The programs for A289398, there is no canonical definition to state claims against.
-/

/-! ## A289398.P5868484179959440534

`A379596(2*(n+1))+n+1`
-/

namespace A289398.P5868484179959440534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379596 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A289398.P5868484179959440534

/-! ## A289398.P16888186280832432095

`A065475(A379596(2*(n+1))+n)`
-/

namespace A289398.P16888186280832432095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A379596 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A289398.P16888186280832432095

/-! ## A289398.P10088446985103832373

`A284600(7*A033014(n+1))`
-/

namespace A289398.P10088446985103832373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284600 (7 * A033014 (n + 1)).toNat

end

end A289398.P10088446985103832373

/-! ## A289398.P11427794876463775144

`A284600(7*A044842(n+1))`
-/

namespace A289398.P11427794876463775144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284600 (7 * A044842 (n + 1)).toNat

end

end A289398.P11427794876463775144

/-! ## A289398.P16743721772950089166

`A284600(7*17*A043320(n+1))`
-/

namespace A289398.P16743721772950089166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284600 (7 * (17 * A043320 (n + 1))).toNat

end

end A289398.P16743721772950089166

/-!
# A289399: Total path length of the complete ternary tree of height n.

The programs for A289399, the canonical program `A289399.P15191863474018548052` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289399 has offset 0).

The definition of A289399 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289399.P8908142306094462739

`3*(3^n*(2*n-1)+1)/4`
-/

namespace A289399.P8908142306094462739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (((3 ^ n : ℤ) * ((2 * n : ℤ) - 1) + 1 : ℚ) / 4)

end

end A289399.P8908142306094462739

namespace A289399

/-- `3*(3^n*(2*n-1)+1)/4` -/
def P8908142306094462739.Spec : Prop :=
  ∀ n, P8908142306094462739.a n = (A289399 n : ℚ)

end A289399

/-! ## A289399.P15191863474018548052

`7*a(n-1)-15*a(n-2)+9*a(n-3)` with `a(0)=0, a(1)=3, a(2)=21`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A289399

/-- `7*a(n-1)-15*a(n-2)+9*a(n-3)` -/
def P15191863474018548052.Spec : Prop :=
  ∀ n, P15191863474018548052.a n = A289399 n

theorem P15191863474018548052.correct : P15191863474018548052.Spec := by
  intro n
  simp only [A289399]

end A289399

/-! ## A289399.P912569037598401212

`a(n-1)+n*3^n` with `a(0)=0`
-/

namespace A289399.P912569037598401212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n * 3 ^ n

end

end A289399.P912569037598401212

namespace A289399

/-- `a(n-1)+n*3^n` -/
def P912569037598401212.Spec : Prop :=
  ∀ n, (P912569037598401212.a n : ℤ) = A289399 n

end A289399

/-! ## A289399.P6457701000326960539

`∑[n*∑[3*a(n-1)]]` with `a(0)=1, a(1)=2`
-/

namespace A289399.P6457701000326960539
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289399.P6457701000326960539

namespace A289399

/-- `∑[n*∑[3*a(n-1)]]` -/
def P6457701000326960539.Spec : Prop :=
  ∀ n, (P6457701000326960539.a n : ℤ) = A289399 n

end A289399

/-! ## A289399.P411921754615620887

`3-3*(3*a(n-2)-2*a(n-1))` with `a(0)=0, a(1)=3`
-/

namespace A289399.P411921754615620887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  3 - 3 * (3 * a (n - 2) - 2 * a (n - 1))

end

end A289399.P411921754615620887

namespace A289399

/-- `3-3*(3*a(n-2)-2*a(n-1))` -/
def P411921754615620887.Spec : Prop :=
  ∀ n, P411921754615620887.a n = A289399 n

end A289399

/-! ## A289399.P15081791024940034743

`∑[A036290(n)]`
-/

namespace A289399.P15081791024940034743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289399.P15081791024940034743

namespace A289399

/-- `∑[A036290(n)]` -/
def P15081791024940034743.Spec : Prop :=
  ∀ n, P15081791024940034743.a n = A289399 n

end A289399

/-! ## A289399.P241215325826625478

`A088581(n)-1`
-/

namespace A289399.P241215325826625478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088581 n - 1

end

end A289399.P241215325826625478

namespace A289399

/-- `A088581(n)-1` -/
def P241215325826625478.Spec : Prop :=
  ∀ n, P241215325826625478.a n = A289399 n

end A289399

/-! ## A289399.P6006845025438717866

`∑[∑[A229277(n)]]`
-/

namespace A289399.P6006845025438717866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229277 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289399.P6006845025438717866

namespace A289399

/-- `∑[∑[A229277(n)]]` -/
def P6006845025438717866.Spec : Prop :=
  ∀ n, P6006845025438717866.a n = A289399 n

end A289399

/-! ## A289399.P14470499590535560114

`Δ[3*A121365(n+2)]`
-/

namespace A289399.P14470499590535560114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A121365 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289399.P14470499590535560114

namespace A289399

/-- `Δ[3*A121365(n+2)]` -/
def P14470499590535560114.Spec : Prop :=
  ∀ n, P14470499590535560114.a n = A289399 n

end A289399

/-! ## A289399.P1938599011019245529

`∑[A050914(n)]-(n+1)`
-/

namespace A289399.P1938599011019245529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A289399.P1938599011019245529

namespace A289399

/-- `∑[A050914(n)]-(n+1)` -/
def P1938599011019245529.Spec : Prop :=
  ∀ n, P1938599011019245529.a n = A289399 n

end A289399

/-! ## A289399.P16736897401653277074

`lcm(3, ∑[n*A000244(n)])`
-/

namespace A289399.P16736897401653277074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000244 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289399.P16736897401653277074

namespace A289399

/-- `lcm(3, ∑[n*A000244(n)])` -/
def P16736897401653277074.Spec : Prop :=
  ∀ n, (P16736897401653277074.a n : ℤ) = A289399 n

end A289399

/-! ## A289399.P4573835621599347014

`A029858(n+1)+3*a(n-1)` with `a(0)=0`
-/

namespace A289399.P4573835621599347014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A029858 (n + 1) + 3 * a (n - 1)

end

end A289399.P4573835621599347014

namespace A289399

/-- `A029858(n+1)+3*a(n-1)` -/
def P4573835621599347014.Spec : Prop :=
  ∀ n, P4573835621599347014.a n = A289399 n

end A289399

/-! ## A289399.P16753076331091454161

`A014915(n+1)-A003462(n+1)`
-/

namespace A289399.P16753076331091454161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014915 (n + 1) - A003462 (n + 1)

end

end A289399.P16753076331091454161

namespace A289399

/-- `A014915(n+1)-A003462(n+1)` -/
def P16753076331091454161.Spec : Prop :=
  ∀ n, P16753076331091454161.a n = A289399 n

end A289399

/-! ## A289399.P4437859902228291129

`∑[A116138(n)/(n+1)]`
-/

namespace A289399.P4437859902228291129
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116138 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289399.P4437859902228291129

namespace A289399

/-- `∑[A116138(n)/(n+1)]` -/
def P4437859902228291129.Spec : Prop :=
  ∀ n, P4437859902228291129.a n = (A289399 n : ℚ)

end A289399

/-! ## A289399.P11777799381794987974

`∑[sqrt(A128788(n))]`
-/

namespace A289399.P11777799381794987974
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A128788 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289399.P11777799381794987974

namespace A289399

/-- `∑[sqrt(A128788(n))]` -/
def P11777799381794987974.Spec : Prop :=
  ∀ n, P11777799381794987974.a n = (A289399 n : ℝ)

end A289399

