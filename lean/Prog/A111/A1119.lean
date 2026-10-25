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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
# A111900: Number of partitions of n into distinct squares of primes.

The programs for A111900, the canonical program `A111900.P14340238911017857905` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111900 has offset 0).

The definition of A111900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 353 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111900.P14340238911017857905

`char[∑{p}[n, #²]]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111900

/-- `char[∑{p}[n, #²]]` -/
def P14340238911017857905.Spec : Prop :=
  ∀ n, (P14340238911017857905.a n : ℤ) = A111900 n

theorem P14340238911017857905.correct : P14340238911017857905.Spec := by
  intro n
  simp only [A111900]

end A111900

/-! ## A111900.P7607965794099321172

`char[A005063(n+1)]`
-/

namespace A111900.P7607965794099321172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A111900.P7607965794099321172

namespace A111900

/-- `char[A005063(n+1)]` -/
def P7607965794099321172.Spec : Prop :=
  ∀ n, (P7607965794099321172.a n : ℤ) = A111900 n

end A111900

/-! ## A111900.P5782132087754726899

`char[A098002(n+1)]`
-/

namespace A111900.P5782132087754726899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A111900.P5782132087754726899

namespace A111900

/-- `char[A098002(n+1)]` -/
def P5782132087754726899.Spec : Prop :=
  ∀ n, (P5782132087754726899.a n : ℤ) = A111900 n

end A111900

/-! ## A111900.P6798755348825491747

`char[A347156(n+1)]`
-/

namespace A111900.P6798755348825491747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A111900.P6798755348825491747

namespace A111900

/-- `char[A347156(n+1)]` -/
def P6798755348825491747.Spec : Prop :=
  ∀ n, (P6798755348825491747.a n : ℤ) = A111900 n

end A111900

/-! ## A111900.P5180048084414511004

`char[A071327((n+1)²)]`
-/

namespace A111900.P5180048084414511004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071327 ((n + 1) ^ 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A111900.P5180048084414511004

namespace A111900

/-- `char[A071327((n+1)²)]` -/
def P5180048084414511004.Spec : Prop :=
  ∀ n, (P5180048084414511004.a n : ℤ) = A111900 n

end A111900

/-! ## A111900.P10256034705498125464

`char[A345303((n+1)²)]`
-/

namespace A111900.P10256034705498125464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345303 ((n + 1) ^ 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A111900.P10256034705498125464

namespace A111900

/-- `char[A345303((n+1)²)]` -/
def P10256034705498125464.Spec : Prop :=
  ∀ n, (P10256034705498125464.a n : ℤ) = A111900 n

end A111900

/-!
# A111901: Number of partitions of n into parts that are primes or squares of primes.

The programs for A111901, there is no canonical definition to state claims against.
-/

/-! ## A111901.P56737194824813672

`A316202(n)-A162782(A051358(n))`
-/

namespace A111901.P56737194824813672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316202 n - A162782 (A051358 n).toNat

end

end A111901.P56737194824813672

/-! ## A111901.P11020088036205347857

`A316202(n)-A025466(A218543(n))`
-/

namespace A111901.P11020088036205347857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316202 n - A025466 (A218543 n).toNat

end

end A111901.P11020088036205347857

/-! ## A111901.P4454506918043539380

`A316202(n)-A240350(A270075(3*(n+1)))`
-/

namespace A111901.P4454506918043539380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316202 n - A240350 (A270075 (3 * (n + 1))).toNat

end

end A111901.P4454506918043539380

/-! ## A111901.P5768576442307802604

`A273190(A241736(2*n))-A025466(2*(n+2))`
-/

namespace A111901.P5768576442307802604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A241736 (2 * n)).toNat - A025466 (2 * (n + 2))

end

end A111901.P5768576442307802604

/-! ## A111901.P7474031790692644421

`A316202(A055645(n))`
-/

namespace A111901.P7474031790692644421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316202 (A055645 n).toNat

end

end A111901.P7474031790692644421

/-!
# A111902: Number of partitions of n into distinct parts that are primes or squares of primes.

The programs for A111902, there is no canonical definition to state claims against.
-/

/-! ## A111902.P8573104781230544699

`A316211(n)-A162782(A051358(n))`
-/

namespace A111902.P8573104781230544699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316211 n - A162782 (A051358 n).toNat

end

end A111902.P8573104781230544699

/-! ## A111902.P14060865834814145866

`A316211(n)-A036633(A184964(n))`
-/

namespace A111902.P14060865834814145866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316211 n - A036633 (A184964 n).toNat

end

end A111902.P14060865834814145866

/-! ## A111902.P5084252563321596485

`A316211(n)-A025466(A218543(n))`
-/

namespace A111902.P5084252563321596485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316211 n - A025466 (A218543 n).toNat

end

end A111902.P5084252563321596485

/-! ## A111902.P16314734281861894142

`A316211(A185238(2*n+1)+n)`
-/

namespace A111902.P16314734281861894142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316211 (A185238 (2 * n + 1) + (n : ℤ)).toNat

end

end A111902.P16314734281861894142

/-! ## A111902.P3653834902376626992

`A316211(n)-A125005(A156046(n))`
-/

namespace A111902.P3653834902376626992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316211 n - A125005 (A156046 n).toNat

end

end A111902.P3653834902376626992

/-!
# A111903: The work performed by a partial function f:{1,...,n}->{1,...,n} is defined to be work(f)=sum(|i-f(i)|,i in dom(f)); a(n) is equal to sum(work(f)) where the sum is over all order-preserving partial functions f:{1,...,n}->{1,...,n}.

The programs for A111903, there is no canonical definition to state claims against.
-/

/-! ## A111903.P8540707077410236667

`∑[A006645(Δ[n²])]`
-/

namespace A111903.P8540707077410236667
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111903.P8540707077410236667

/-! ## A111903.P1737463403798160172

`∑[∑[A119915(2*n)]]`
-/

namespace A111903.P1737463403798160172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119915 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111903.P1737463403798160172

/-! ## A111903.P12381128050232525149

`∑[record[A006645(xor(1, n))]]`
-/

namespace A111903.P12381128050232525149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 (Nat.xor 1 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111903.P12381128050232525149

/-! ## A111903.P5166019013914373779

`∑[record[A006645(lcm(16, n)/16)]]`
-/

namespace A111903.P5166019013914373779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 (SequenceMachineLib.roundAway ((Nat.lcm 16 n : ℚ) / 16)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111903.P5166019013914373779

/-! ## A111903.P3850839535906940906

`∑[record[A006645(n*n%2)]]`
-/

namespace A111903.P3850839535906940906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 (n * (n % 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111903.P3850839535906940906

/-!
# A111904: Number of unitary amicable pairs in which the smallest member has n digits.

The programs for A111904, there is no canonical definition to state claims against.
-/

/-! ## A111904.P16069285179730783952

`Δ[A126162(round(sqrt(n²+1)))]`
-/

namespace A111904.P16069285179730783952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126162 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111904.P16069285179730783952

/-! ## A111904.P16179279065486309040

`abs(Δ[A126162(A233583(n+1))])`
-/

namespace A111904.P16179279065486309040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126162 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A111904.P16179279065486309040

/-! ## A111904.P13823614870489974602

`A126162(n+1)-A126162(round(sqrt(n²+1)))`
-/

namespace A111904.P13823614870489974602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126162 (n + 1) - A126162 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A111904.P13823614870489974602

/-! ## A111904.P1999030841062191953

`A050796(A154671(n+1))%A001519(n)`
-/

namespace A111904.P1999030841062191953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050796 (A154671 (n + 1)).toNat) (A001519 n)

end

end A111904.P1999030841062191953

/-!
# A111905: Numbers k such that more primes, among primes <= the largest prime dividing k, divide k than do not.

The programs for A111905, the canonical program `A111905.P16457514482036740586` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111905 has offset 1).

The definition of A111905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 834 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111905.P16457514482036740586

`lt[A079067(n+1), A001221(n+1)]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A111905

/-- `lt[A079067(n+1), A001221(n+1)]+1` -/
def P16457514482036740586.Spec : Prop :=
  ∀ n, (P16457514482036740586.a n : ℤ) = A111905 (n + 1)

theorem P16457514482036740586.correct : P16457514482036740586.Spec := by
  intro n
  simp only [A111905, Nat.add_sub_cancel]

end A111905

/-! ## A111905.P8923436351285043916

`lt[a(A064989(n))-A033999(n), 1]` with `a(0)=1, a(1)=1`
-/

namespace A111905.P8923436351285043916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (A064989 n).toNat - A033999 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111905.P8923436351285043916

namespace A111905

/-- `lt[a(A064989(n))-A033999(n), 1]` -/
def P8923436351285043916.Spec : Prop :=
  ∀ n, (P8923436351285043916.a n : ℤ) = A111905 (n + 1)

end A111905

/-! ## A111905.P14990384599079644757

`record[A001281(A262504(∑[n]))]`
-/

namespace A111905.P14990384599079644757
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A262504 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111905.P14990384599079644757

namespace A111905

/-- `record[A001281(A262504(∑[n]))]` -/
def P14990384599079644757.Spec : Prop :=
  ∀ n, P14990384599079644757.a n = A111905 (n + 1)

end A111905

/-! ## A111905.P4487258831849385327

`record[A014682(A262504((n²+n)/2))]`
-/

namespace A111905.P4487258831849385327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A262504 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111905.P4487258831849385327

namespace A111905

/-- `record[A014682(A262504((n²+n)/2))]` -/
def P4487258831849385327.Spec : Prop :=
  ∀ n, P4487258831849385327.a n = A111905 (n + 1)

end A111905

/-!
# A111906: Numbers k such that fewer primes, among primes <= the largest prime dividing k, divide k than do not.

The programs for A111906, the canonical program `A111906.P2775197747297038191` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111906 has offset 1).

The definition of A111906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111906.P2775197747297038191

`lt[A001221(n+1), A079067(n+1)]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A111906

/-- `lt[A001221(n+1), A079067(n+1)]+1` -/
def P2775197747297038191.Spec : Prop :=
  ∀ n, (P2775197747297038191.a n : ℤ) = A111906 (n + 1)

theorem P2775197747297038191.correct : P2775197747297038191.Spec := by
  intro n
  simp only [A111906, Nat.add_sub_cancel]

end A111906

/-! ## A111906.P1899365129012582968

`lt[1, a(A064989(n))-A033999(n)]` with `a(0)=1, a(1)=1`
-/

namespace A111906.P1899365129012582968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (A064989 n).toNat - A033999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111906.P1899365129012582968

namespace A111906

/-- `lt[1, a(A064989(n))-A033999(n)]` -/
def P1899365129012582968.Spec : Prop :=
  ∀ n, (P1899365129012582968.a n : ℤ) = A111906 (n + 1)

end A111906

/-! ## A111906.P1830729560638889969

`lt[(A351202(n+1)+1)², A006530(n+1)]+1`
-/

namespace A111906.P1830729560638889969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A351202 (n + 1) + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A111906.P1830729560638889969

namespace A111906

/-- `lt[(A351202(n+1)+1)², A006530(n+1)]+1` -/
def P1830729560638889969.Spec : Prop :=
  ∀ n, (P1830729560638889969.a n : ℤ) = A111906 (n + 1)

end A111906

/-! ## A111906.P7881626035154016806

`lt[A129359(A002808(n+1)), A232988(n)]`
-/

namespace A111906.P7881626035154016806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129359 (A002808 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232988 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111906.P7881626035154016806

namespace A111906

/-- `lt[A129359(A002808(n+1)), A232988(n)]` -/
def P7881626035154016806.Spec : Prop :=
  ∀ n, (P7881626035154016806.a n : ℤ) = A111906 (n + 1)

end A111906

/-! ## A111906.P2519607862343486326

`A246281(n+4)%(A160421(3*n+2)+11)`
-/

namespace A111906.P2519607862343486326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246281 (n + 4)) (A160421 (3 * n + 2) + 11)

end

end A111906.P2519607862343486326

namespace A111906

/-- `A246281(n+4)%(A160421(3*n+2)+11)` -/
def P2519607862343486326.Spec : Prop :=
  ∀ n, P2519607862343486326.a n = A111906 (n + 1)

end A111906

/-!
# A111907: Numbers k such that the same number of primes, among primes <= the largest prime dividing k, divide k as do not.

The programs for A111907, the canonical program `A111907.P14627999045947996234` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111907 has offset 1).

The definition of A111907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111907.P14627999045947996234

`eq[A001221(n+1), A079067(n+1)]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A111907

/-- `eq[A001221(n+1), A079067(n+1)]+1` -/
def P14627999045947996234.Spec : Prop :=
  ∀ n, (P14627999045947996234.a n : ℤ) = A111907 (n + 1)

theorem P14627999045947996234.correct : P14627999045947996234.Spec := by
  intro n
  simp only [A111907, Nat.add_sub_cancel]

end A111907

/-! ## A111907.P1402000837544941023

`eq[A001222(A007947(n+1)), A079067(n+1)]+1`
-/

namespace A111907.P1402000837544941023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A111907.P1402000837544941023

namespace A111907

/-- `eq[A001222(A007947(n+1)), A079067(n+1)]+1` -/
def P1402000837544941023.Spec : Prop :=
  ∀ n, (P1402000837544941023.a n : ℤ) = A111907 (n + 1)

end A111907

/-! ## A111907.P13397993745309390519

`eq[1, a(A064989(n+1)-1)-(-1)^n]+1` with `a(0)=1`
-/

namespace A111907.P13397993745309390519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (A064989 (n + 1) - 1).toNat - (-1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A111907.P13397993745309390519

namespace A111907

/-- `eq[1, a(A064989(n+1)-1)-(-1)^n]+1` -/
def P13397993745309390519.Spec : Prop :=
  ∀ n, (P13397993745309390519.a n : ℤ) = A111907 (n + 1)

end A111907

/-! ## A111907.P10456763023328044066

`eq[1, a(A064989(n))-A033999(n)]` with `a(0)=2, a(1)=1`
-/

namespace A111907.P10456763023328044066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  f2 (A064989 n).toNat - A033999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111907.P10456763023328044066

namespace A111907

/-- `eq[1, a(A064989(n))-A033999(n)]` -/
def P10456763023328044066.Spec : Prop :=
  ∀ n, (P10456763023328044066.a n : ℤ) = A111907 (n + 1)

end A111907

/-! ## A111907.P14054350746852435310

`eq[1, a(A064989(n))-A087960(2*n)]` with `a(0)=2, a(1)=1`
-/

namespace A111907.P14054350746852435310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  f2 (A064989 n).toNat - A087960 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111907.P14054350746852435310

namespace A111907

/-- `eq[1, a(A064989(n))-A087960(2*n)]` -/
def P14054350746852435310.Spec : Prop :=
  ∀ n, (P14054350746852435310.a n : ℤ) = A111907 (n + 1)

end A111907

/-!
# A111908: Numbers that are not the sum of a prime and a nonzero triangular number.

The programs for A111908, there is no canonical definition to state claims against.
-/

/-! ## A111908.P4495937642058602154

`(3^A145815(A167487(n)))%A243583(n+1)`
-/

namespace A111908.P4495937642058602154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A145815 (A167487 n).toNat : ℤ))) (A243583 (n + 1))

end

end A111908.P4495937642058602154

/-!
# A111909: Numbers that cannot be represented as a^4 + b^2 with a, b > 0.

The programs for A111909, there is no canonical definition to state claims against.
-/

/-! ## A111909.P3193279640100378777

`comp[A111925(n+1)-1]+1`
-/

namespace A111909.P3193279640100378777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111925 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A111909.P3193279640100378777

/-! ## A111909.P12447917389581674462

`lt[1, A266152(n)]+1`
-/

namespace A111909.P12447917389581674462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266152 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A111909.P12447917389581674462

/-! ## A111909.P16621468921322190364

`eq[char[A111925(n+1)], A000007(n)]`
-/

namespace A111909.P16621468921322190364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111925 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A111909.P16621468921322190364

/-! ## A111909.P225630254994850701

`eq[char[A111925(n+1)], A000038(n)]`
-/

namespace A111909.P225630254994850701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111925 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A111909.P225630254994850701

/-! ## A111909.P10558547384227982621

`eq[char[A111925(n+1)], A036987(2*n)]`
-/

namespace A111909.P10558547384227982621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111925 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A111909.P10558547384227982621

/-! ## A111909.P16170263396900530494

`eq[char[A111925(n+1)], A049084(2*(n+1))]`
-/

namespace A111909.P16170263396900530494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111925 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A111909.P16170263396900530494

/-!
# A111910: Square array read by antidiagonals: S(p,q) = (p+q+1)!(2p+2q+1)!/((p+1)!(2p+1)!(q+1)!(2q+1)!) (p,q>=0).

The programs for A111910, the canonical program `A111910.P3727221019346552346` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111910 has offset 0).

The definition of A111910 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3868 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111910.P3727221019346552346

`A001263(n+1)/A155495(n)*A155516(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A111910

/-- `A001263(n+1)/A155495(n)*A155516(n)` -/
def P3727221019346552346.Spec : Prop :=
  ∀ n, P3727221019346552346.a n = (A111910 n : ℚ)

end A111910

/-! ## A111910.P9235280036636906904

`A191748(A001263(n+1)-1)`
-/

namespace A111910.P9235280036636906904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191748 (A001263 (n + 1) - 1).toNat

end

end A111910.P9235280036636906904

namespace A111910

/-- `A191748(A001263(n+1)-1)` -/
def P9235280036636906904.Spec : Prop :=
  ∀ n, P9235280036636906904.a n = A111910 n

end A111910

/-! ## A111910.P835977526174720190

`A191748(sqrt(A174158(n+1))-1)`
-/

namespace A111910.P835977526174720190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191748 (SequenceMachineLib.roundAway (Real.sqrt (A174158 (n + 1) : ℝ) - 1)).toNat

end

end A111910.P835977526174720190

namespace A111910

/-- `A191748(sqrt(A174158(n+1))-1)` -/
def P835977526174720190.Spec : Prop :=
  ∀ n, P835977526174720190.a n = A111910 n

end A111910

/-! ## A111910.P14775250024985873093

`A191748(ceil(A174124(n)/2)-1)`
-/

namespace A111910.P14775250024985873093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191748 (⌈(A174124 n : ℚ) / 2⌉ - 1).toNat

end

end A111910.P14775250024985873093

namespace A111910

/-- `A191748(ceil(A174124(n)/2)-1)` -/
def P14775250024985873093.Spec : Prop :=
  ∀ n, P14775250024985873093.a n = A111910 n

end A111910

/-! ## A111910.P10674942347352335803

`A181143(n)-A144556(A088699(n))`
-/

namespace A111910.P10674942347352335803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181143 n - A144556 (A088699 n).toNat

end

end A111910.P10674942347352335803

namespace A111910

/-- `A181143(n)-A144556(A088699(n))` -/
def P10674942347352335803.Spec : Prop :=
  ∀ n, P10674942347352335803.a n = A111910 n

end A111910

/-!
# A111911: a(n) = (4*n+1)!/( (2*n+1)! * ((n+1)!)^2 ).

The programs for A111911, the canonical program `A111911.P12969291128106025160` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111911 has offset 0).

The definition of A111911 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111911.P4438023515549361589

`C(4*n+1, 2*n+1)*C(2*n, n)/(n+1)²`
-/

namespace A111911.P4438023515549361589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n + 1) (2 * n + 1) * Nat.choose (2 * n) n : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A111911.P4438023515549361589

namespace A111911

/-- `C(4*n+1, 2*n+1)*C(2*n, n)/(n+1)²` -/
def P4438023515549361589.Spec : Prop :=
  ∀ n, P4438023515549361589.a n = (A111911 n : ℚ)

end A111911

/-! ## A111911.P12969291128106025160

`(4*n+1)!/((2*n+1)!*(n+1)!²)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111911

/-- `(4*n+1)!/((2*n+1)!*(n+1)!²)` -/
def P12969291128106025160.Spec : Prop :=
  ∀ n, P12969291128106025160.a n = (A111911 n : ℚ)

end A111911

/-! ## A111911.P6108219291147476953

`A111910(∑[4*n])`
-/

namespace A111911.P6108219291147476953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111910 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111911.P6108219291147476953

namespace A111911

/-- `A111910(∑[4*n])` -/
def P6108219291147476953.Spec : Prop :=
  ∀ n, P6108219291147476953.a n = A111911 n

end A111911

/-! ## A111911.P8746007891170279900

`A132341(n+1)/2`
-/

namespace A111911.P8746007891170279900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132341 (n + 1) : ℚ) / 2

end

end A111911.P8746007891170279900

namespace A111911

/-- `A132341(n+1)/2` -/
def P8746007891170279900.Spec : Prop :=
  ∀ n, P8746007891170279900.a n = (A111911 n : ℚ)

end A111911

/-! ## A111911.P782045565048163786

`record[(6/(n+1)-4)*a(n-1)]*A000108(n)` with `a(0)=1, a(1)=1`
-/

namespace A111911.P782045565048163786
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (6 / (n + 1 : ℚ) - 4) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * (A000108 n : ℚ)

end

end A111911.P782045565048163786

namespace A111911

/-- `record[(6/(n+1)-4)*a(n-1)]*A000108(n)` -/
def P782045565048163786.Spec : Prop :=
  ∀ n, P782045565048163786.a n = (A111911 n : ℚ)

end A111911

/-! ## A111911.P3765986718042706152

`A000108(n)*A024492(n)`
-/

namespace A111911.P3765986718042706152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A024492 n

end

end A111911.P3765986718042706152

namespace A111911

/-- `A000108(n)*A024492(n)` -/
def P3765986718042706152.Spec : Prop :=
  ∀ n, P3765986718042706152.a n = A111911 n

end A111911

/-! ## A111911.P13117347645982124108

`record[A000108(n)*A097331(n)]`
-/

namespace A111911.P13117347645982124108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111911.P13117347645982124108

namespace A111911

/-- `record[A000108(n)*A097331(n)]` -/
def P13117347645982124108.Spec : Prop :=
  ∀ n, P13117347645982124108.a n = A111911 n

end A111911

/-! ## A111911.P8711394659804338097

`record[A105523(n)]*A000108(n)`
-/

namespace A111911.P8711394659804338097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000108 n

end

end A111911.P8711394659804338097

namespace A111911

/-- `record[A105523(n)]*A000108(n)` -/
def P8711394659804338097.Spec : Prop :=
  ∀ n, P8711394659804338097.a n = A111911 n

end A111911

/-! ## A111911.P987281274837800385

`record[A168491(n)*A210628(n)]`
-/

namespace A111911.P987281274837800385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168491 n * A210628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111911.P987281274837800385

namespace A111911

/-- `record[A168491(n)*A210628(n)]` -/
def P987281274837800385.Spec : Prop :=
  ∀ n, P987281274837800385.a n = A111911 n

end A111911

/-! ## A111911.P12743475773429714175

`A000108(n)*A234040(2*n)`
-/

namespace A111911.P12743475773429714175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A234040 (2 * n)

end

end A111911.P12743475773429714175

namespace A111911

/-- `A000108(n)*A234040(2*n)` -/
def P12743475773429714175.Spec : Prop :=
  ∀ n, P12743475773429714175.a n = A111911 n

end A111911

/-!
# A111912: Expansion of x*(2 +3*x +x^2 -2*x^5 -x^7 -x^8)/((1-x)*(1+x)*(1-x^4+x^8)).

The programs for A111912, the canonical program `A111912.P11710307340807341454` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111912 has offset 0).

The definition of A111912 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2x+3x^2+x^3-2x^6-x^8-x^9)/(1-x^2-x^4+x^6+x^8-x^10))` (program `A111912.P11710307340807341454`, by `A111912.P11710307340807341454.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111912.P11710307340807341454

`ogf((2x+3x^2+x^3-2x^6-x^8-x^9)/(1-x^2-x^4+x^6+x^8-x^10))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111912

/-- `ogf((2x+3x^2+x^3-2x^6-x^8-x^9)/(1-x^2-x^4+x^6+x^8-x^10))` -/
def P11710307340807341454.Spec : Prop :=
  ∀ n, P11710307340807341454.a n = A111912 n

theorem P11710307340807341454.correct : P11710307340807341454.Spec := by
  intro n
  simp only [A111912]

end A111912

/-!
# A111913: Expansion of x*(-2-3*x-x^2+x^7+x^8+2*x^4) / ((x-1)*(x+1)*(x^8-x^4+1)).

The programs for A111913, the canonical program `A111913.P14441142425586945203` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111913 has offset 0).

The definition of A111913 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2x+3x^2+x^3-2x^5-x^8-x^9)/(1-x^2-x^4+x^6+x^8-x^10))` (program `A111913.P14441142425586945203`, by `A111913.P14441142425586945203.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111913.P14441142425586945203

`ogf((2x+3x^2+x^3-2x^5-x^8-x^9)/(1-x^2-x^4+x^6+x^8-x^10))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111913

/-- `ogf((2x+3x^2+x^3-2x^5-x^8-x^9)/(1-x^2-x^4+x^6+x^8-x^10))` -/
def P14441142425586945203.Spec : Prop :=
  ∀ n, P14441142425586945203.a n = A111913 n

theorem P14441142425586945203.correct : P14441142425586945203.Spec := by
  intro n
  simp only [A111913]

end A111913

/-!
# A111914: Expansion of -x^2*(x^4-2*x^3+x^2-2*x+1)*(x+1)^2 / ((x-1)*(x^8-x^4+1)).

The programs for A111914, the canonical program `A111914.P7687114026743347488` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111914 has offset 0).

The definition of A111914 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x^2-2x^4-2x^5-2x^6+x^8)/(1-x-x^4+x^5+x^8-x^9))` (program `A111914.P7687114026743347488`, by `A111914.P7687114026743347488.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111914.P7687114026743347488

`ogf((x^2-2x^4-2x^5-2x^6+x^8)/(1-x-x^4+x^5+x^8-x^9))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111914

/-- `ogf((x^2-2x^4-2x^5-2x^6+x^8)/(1-x-x^4+x^5+x^8-x^9))` -/
def P7687114026743347488.Spec : Prop :=
  ∀ n, P7687114026743347488.a n = A111914 n

theorem P7687114026743347488.correct : P7687114026743347488.Spec := by
  intro n
  simp only [A111914]

end A111914

/-!
# A111915: Expansion of -x^2*(x-1)*(x^2-x+1)*(x+x^2+1)/(1-x^4+x^8).

The programs for A111915, the canonical program `A111915.P13312707086280613304` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111915 has offset 0).

The definition of A111915 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x^2-x^3+x^4-x^5+x^6-x^7)/(1-x^4+x^8))` (program `A111915.P13312707086280613304`, by `A111915.P13312707086280613304.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111915.P13312707086280613304

`ogf((x^2-x^3+x^4-x^5+x^6-x^7)/(1-x^4+x^8))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111915

/-- `ogf((x^2-x^3+x^4-x^5+x^6-x^7)/(1-x^4+x^8))` -/
def P13312707086280613304.Spec : Prop :=
  ∀ n, P13312707086280613304.a n = A111915 n

theorem P13312707086280613304.correct : P13312707086280613304.Spec := by
  intro n
  simp only [A111915]

end A111915

/-!
# A111916: Number of Yutsis graphs or cubic dual Hamiltonian graphs on 2n nodes.

The programs for A111916, there is no canonical definition to state claims against.
-/

/-! ## A111916.P5657780359087112629

`∑[A141494(n+1)-A032765(n)]`
-/

namespace A111916.P5657780359087112629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141494 (n + 1) - A032765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111916.P5657780359087112629

/-! ## A111916.P8926978614948631805

`A113545(A292182(n))+comp[or(2, n)+n]`
-/

namespace A111916.P8926978614948631805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113545 (A292182 n).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A111916.P8926978614948631805

/-!
# A111917: The i-th term of the generalized Fibonacci sequence [0,k,k,2k,3k,...] is given by the formula F(i) = round( k/sqrt(5) * phi^i ) provided i >= s(k); a(n) = smallest value of k such that s(k) = n.

The programs for A111917, there is no canonical definition to state claims against.
-/

/-! ## A111917.P96091699202592461

`ceil((ϕ/2+1)*ϕ^n)`
-/

namespace A111917.P96091699202592461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.goldenRatio / 2 + 1) * Real.goldenRatio ^ n⌉

end

end A111917.P96091699202592461

/-! ## A111917.P10791674490302130422

`floor(sqrt(A280154(2*(n+1)))/2)+1`
-/

namespace A111917.P10791674490302130422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A280154 (2 * (n + 1)) : ℝ) / 2⌋ + 1

end

end A111917.P10791674490302130422

/-! ## A111917.P14963462710483002813

`record[ceil(A005248(n)/A054886(n))]`
-/

namespace A111917.P14963462710483002813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005248 n : ℚ) / (A054886 n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111917.P14963462710483002813

/-! ## A111917.P17424359932471317131

`A169986(n)+floor(A062724(n+1)/2)`
-/

namespace A111917.P17424359932471317131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169986 n + ⌊(A062724 (n + 1) : ℚ) / 2⌋

end

end A111917.P17424359932471317131

/-! ## A111917.P18344299214952229578

`floor((A288219(n)+A014217(n))/2)+1`
-/

namespace A111917.P18344299214952229578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A288219 n + A014217 n : ℚ) / 2⌋ + 1

end

end A111917.P18344299214952229578

/-!
# A111919: Denominator of x(n) = Sum_{k=1..n} ((odd part of k)/(k^3)).

The programs for A111919, there is no canonical definition to state claims against.
-/

/-! ## A111919.P1931739735541425195

`A006519(A284650(n+1))*A103931(n+1)`
-/

namespace A111919.P1931739735541425195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A284650 (n + 1)).toNat * A103931 (n + 1)

end

end A111919.P1931739735541425195

/-! ## A111919.P10916240112022397277

`A007409(n+1)/A000265(A051426(n+1))`
-/

namespace A111919.P10916240112022397277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007409 (n + 1) : ℚ) / (A000265 (A051426 (n + 1)).toNat : ℚ)

end

end A111919.P10916240112022397277

/-! ## A111919.P8256922274006387602

`A007409(n+1)/A000265(A058312(n+1))`
-/

namespace A111919.P8256922274006387602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007409 (n + 1) : ℚ) / (A000265 (A058312 (n + 1)).toNat : ℚ)

end

end A111919.P8256922274006387602

/-! ## A111919.P4131851048253873243

`A007409(n+1)/A000265(A109935(n+1))`
-/

namespace A111919.P4131851048253873243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007409 (n + 1) : ℚ) / (A000265 (A109935 (n + 1)).toNat : ℚ)

end

end A111919.P4131851048253873243

/-! ## A111919.P14750458165339050754

`A002805(n+1)/A000265(A058312(n+1))*A068589(n+1)`
-/

namespace A111919.P14750458165339050754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002805 (n + 1) : ℚ) / (A000265 (A058312 (n + 1)).toNat : ℚ) * (A068589 (n + 1) : ℚ)

end

end A111919.P14750458165339050754

/-!
# A111921: Denominator of x(n) = Sum_{k=1..n} ((odd part of k)/(k^4)).

The programs for A111921, there is no canonical definition to state claims against.
-/

/-! ## A111921.P16227033786195795152

`A007480(n+1)/A000265(A058312(n+1))`
-/

namespace A111921.P16227033786195795152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007480 (n + 1) : ℚ) / (A000265 (A058312 (n + 1)).toNat : ℚ)

end

end A111921.P16227033786195795152

/-! ## A111921.P17810867372857476276

`A007480(n+1)/A000265(A109935(n+1))`
-/

namespace A111921.P17810867372857476276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007480 (n + 1) : ℚ) / (A000265 (A109935 (n + 1)).toNat : ℚ)

end

end A111921.P17810867372857476276

/-! ## A111921.P2686514451313265251

`A053143(A111930(n+1))*A111930(n+1)`
-/

namespace A111921.P2686514451313265251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (A111930 (n + 1)).toNat * A111930 (n + 1)

end

end A111921.P2686514451313265251

/-!
# A111923: Denominator of x(n) = Sum_{k=1..n} ((odd part of k)/(k^5)).

The programs for A111923, there is no canonical definition to state claims against.
-/

/-! ## A111923.P6599336410652755389

`A069052(n+1)/A000265(A051426(n+1))`
-/

namespace A111923.P6599336410652755389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069052 (n + 1) : ℚ) / (A000265 (A051426 (n + 1)).toNat : ℚ)

end

end A111923.P6599336410652755389

/-! ## A111923.P3010746940520117441

`A002805(n+1)²*A069045(n+1)/A000265(A058312(n+1))`
-/

namespace A111923.P3010746940520117441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002805 (n + 1) ^ 2 * A069045 (n + 1) : ℚ) / (A000265 (A058312 (n + 1)).toNat : ℚ)

end

end A111923.P3010746940520117441

/-! ## A111923.P13942036520891899851

`A034444(A030222(n+1))*A334585(n+1)`
-/

namespace A111923.P13942036520891899851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A030222 (n + 1)).toNat * A334585 (n + 1)

end

end A111923.P13942036520891899851

/-!
# A111924: Triangle of Bessel numbers read by rows. Row n gives T(n,n), T(n,n-1), T(n,n-2), ..., T(n,1) for n >= 1.

The programs for A111924, there is no canonical definition to state claims against.
-/

/-! ## A111924.P14416234099404241164

`A144299(comp[∑[n-1]])`
-/

namespace A111924.P14416234099404241164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144299 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A111924.P14416234099404241164

/-! ## A111924.P13489466760340692523

`A049403(∑[char[∑[n]]]²-n)`
-/

namespace A111924.P13489466760340692523
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049403 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A111924.P13489466760340692523

/-! ## A111924.P13574657072015774665

`A122848(∑[char[∑[n]]]+∑[char[∑[n]]]²-n)`
-/

namespace A111924.P13574657072015774665
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
  A122848 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((((∑ j ∈ Finset.range (n + 1), f4 j) ^ 2 : ℕ) : ℤ) - (n : ℤ))).toNat

end

end A111924.P13574657072015774665

/-! ## A111924.P9313212115136829715

`abs(A104556(∑[2*n]%comp[∑[n]]))`
-/

namespace A111924.P9313212115136829715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104556 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)|

end

end A111924.P9313212115136829715

/-! ## A111924.P12014657532969429927

`abs(A104556(A061579(n)))`
-/

namespace A111924.P12014657532969429927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104556 (A061579 n).toNat|

end

end A111924.P12014657532969429927

/-! ## A111924.P10000625512915748760

`gcd(A000038(n), A104556(A061579(n)))`
-/

namespace A111924.P10000625512915748760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A104556 (A061579 n).toNat)

end

end A111924.P10000625512915748760

/-! ## A111924.P10762628298806909453

`lcm(A033999(n), A104556(A061579(n)))`
-/

namespace A111924.P10762628298806909453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A104556 (A061579 n).toNat)

end

end A111924.P10762628298806909453

/-!
# A111925: Numbers of the form a^2 + b^4, with a,b > 0.

The programs for A111925, there is no canonical definition to state claims against.
-/

/-! ## A111925.P10143823616270344884

`eq[1, A266152(n)]+1`
-/

namespace A111925.P10143823616270344884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266152 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A111925.P10143823616270344884

/-! ## A111925.P14267224932319422867

`record[(n+2)/A266152(n+1)]`
-/

namespace A111925.P14267224932319422867
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A266152 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111925.P14267224932319422867

/-! ## A111925.P17743282955737750351

`A020725(eq[1, A266152(n)])`
-/

namespace A111925.P17743282955737750351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111925.P17743282955737750351

/-! ## A111925.P12266133231501017552

`abs(A131738(eq[1, A266152(n)]))`
-/

namespace A111925.P12266133231501017552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A131738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)|

end

end A111925.P12266133231501017552

/-! ## A111925.P1479291641664948835

`1-A001489(eq[1, A266152(n)])`
-/

namespace A111925.P1479291641664948835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111925.P1479291641664948835

/-! ## A111925.P13188091835572782718

`∪[A340044(n+1), A340047(n+1)]`
-/

namespace A111925.P13188091835572782718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111925.P13188091835572782718

/-! ## A111925.P13158732295873676145

`∪[A340044(n+1), A340045(n+1)]`
-/

namespace A111925.P13158732295873676145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111925.P13158732295873676145

/-! ## A111925.P12973907583774612110

`∪[A340045(n+1), A340046(n+1)]`
-/

namespace A111925.P12973907583774612110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111925.P12973907583774612110

/-!
# A111926: Expansion of x^4/((1-2*x)*(x^2-x+1)*(x-1)^2).

The programs for A111926, the canonical program `A111926.P13531901798607081333` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111926 has offset 0).

The definition of A111926 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x^4/(1-5x+10x^2-11x^3+7x^4-2x^5))` (program `A111926.P13531901798607081333`, by `A111926.P13531901798607081333.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111926.P13531901798607081333

`ogf(x^4/(1-5x+10x^2-11x^3+7x^4-2x^5))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111926

/-- `ogf(x^4/(1-5x+10x^2-11x^3+7x^4-2x^5))` -/
def P13531901798607081333.Spec : Prop :=
  ∀ n, P13531901798607081333.a n = A111926 n

theorem P13531901798607081333.correct : P13531901798607081333.Spec := by
  intro n
  simp only [A111926]

end A111926

/-! ## A111926.P17207668477546160759

`A131708(n)-n`
-/

namespace A111926.P17207668477546160759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131708 n - (n : ℤ)

end

end A111926.P17207668477546160759

namespace A111926

/-- `A131708(n)-n` -/
def P17207668477546160759.Spec : Prop :=
  ∀ n, P17207668477546160759.a n = A111926 n

end A111926

/-! ## A111926.P666433963321796948

`A133806(2*n)-n`
-/

namespace A111926.P666433963321796948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133806 (2 * n) - (n : ℤ)

end

end A111926.P666433963321796948

namespace A111926

/-- `A133806(2*n)-n` -/
def P666433963321796948.Spec : Prop :=
  ∀ n, P666433963321796948.a n = A111926 n

end A111926

/-! ## A111926.P18167340644269738212

`∑[A111927(abs(1-n))]`
-/

namespace A111926.P18167340644269738212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111927 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111926.P18167340644269738212

namespace A111926

/-- `∑[A111927(abs(1-n))]` -/
def P18167340644269738212.Spec : Prop :=
  ∀ n, P18167340644269738212.a n = A111926 n

end A111926

/-! ## A111926.P17224523820566892687

`∑[A024493(abs(1-n))-1]`
-/

namespace A111926.P17224523820566892687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 |1 - (n : ℤ)|.toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111926.P17224523820566892687

namespace A111926

/-- `∑[A024493(abs(1-n))-1]` -/
def P17224523820566892687.Spec : Prop :=
  ∀ n, P17224523820566892687.a n = A111926 n

end A111926

/-! ## A111926.P7761792540473713409

`A111927(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A111926.P7761792540473713409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A111927 (n - 1) + a (n - 1)

end

end A111926.P7761792540473713409

namespace A111926

/-- `A111927(n-1)+a(n-1)` -/
def P7761792540473713409.Spec : Prop :=
  ∀ n, P7761792540473713409.a n = A111926 n

end A111926

/-! ## A111926.P12137712689665976007

`A133684(A047267(n+1))-n`
-/

namespace A111926.P12137712689665976007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A047267 (n + 1)).toNat - (n : ℤ)

end

end A111926.P12137712689665976007

namespace A111926

/-- `A133684(A047267(n+1))-n` -/
def P12137712689665976007.Spec : Prop :=
  ∀ n, P12137712689665976007.a n = A111926 n

end A111926

/-! ## A111926.P6175231517887447765

`2*A178742(n)-A153234(n)`
-/

namespace A111926.P6175231517887447765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178742 n - A153234 n

end

end A111926.P6175231517887447765

namespace A111926

/-- `2*A178742(n)-A153234(n)` -/
def P6175231517887447765.Spec : Prop :=
  ∀ n, P6175231517887447765.a n = A111926 n

end A111926

/-! ## A111926.P10177931966944574169

`A130707(n)-(A010892(n)+n)`
-/

namespace A111926.P10177931966944574169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130707 n - (A010892 n + (n : ℤ))

end

end A111926.P10177931966944574169

namespace A111926

/-- `A130707(n)-(A010892(n)+n)` -/
def P10177931966944574169.Spec : Prop :=
  ∀ n, P10177931966944574169.a n = A111926 n

end A111926

/-! ## A111926.P6903234255535883404

`A024495(n)+A128834(n)-n`
-/

namespace A111926.P6903234255535883404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 n + (A128834 n - (n : ℤ))

end

end A111926.P6903234255535883404

namespace A111926

/-- `A024495(n)+A128834(n)-n` -/
def P6903234255535883404.Spec : Prop :=
  ∀ n, P6903234255535883404.a n = A111926 n

end A111926

/-! ## A111926.P5215652684506722887

`A191370(n)-(A132367(n)+n)`
-/

namespace A111926.P5215652684506722887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191370 n - (A132367 n + (n : ℤ))

end

end A111926.P5215652684506722887

namespace A111926

/-- `A191370(n)-(A132367(n)+n)` -/
def P5215652684506722887.Spec : Prop :=
  ∀ n, P5215652684506722887.a n = A111926 n

end A111926

/-! ## A111926.P15875077914522000162

`A131531(n+1)+A001045(n)-n`
-/

namespace A111926.P15875077914522000162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (n + 1) + (A001045 n - (n : ℤ))

end

end A111926.P15875077914522000162

namespace A111926

/-- `A131531(n+1)+A001045(n)-n` -/
def P15875077914522000162.Spec : Prop :=
  ∀ n, P15875077914522000162.a n = A111926 n

end A111926

/-! ## A111926.P221942337393369002

`A173432(n+1)+A167030(n)-n`
-/

namespace A111926.P221942337393369002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173432 (n + 1) + (A167030 n - (n : ℤ))

end

end A111926.P221942337393369002

namespace A111926

/-- `A173432(n+1)+A167030(n)-n` -/
def P221942337393369002.Spec : Prop :=
  ∀ n, P221942337393369002.a n = A111926 n

end A111926

/-! ## A111926.P11679591708795290341

`A178742(n+1)+A178742(n)-A111927(n)`
-/

namespace A111926.P11679591708795290341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178742 (n + 1) + (A178742 n - A111927 n)

end

end A111926.P11679591708795290341

namespace A111926

/-- `A178742(n+1)+A178742(n)-A111927(n)` -/
def P11679591708795290341.Spec : Prop :=
  ∀ n, P11679591708795290341.a n = A111926 n

end A111926

/-! ## A111926.P3888024711420465952

`Δ[ogf(x^2/(1-3x+3x^2-2x^3))]-n`
-/

namespace A111926.P3888024711420465952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -3, 3, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A111926.P3888024711420465952

namespace A111926

/-- `Δ[ogf(x^2/(1-3x+3x^2-2x^3))]-n` -/
def P3888024711420465952.Spec : Prop :=
  ∀ n, P3888024711420465952.a n = A111926 n

end A111926

/-! ## A111926.P7591826959290943603

`5*a(n-1)-10*a(n-2)+11*a(n-3)-7*a(n-4)+2*a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1`
-/

namespace A111926.P7591826959290943603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 1] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 11 * a (n - 3) - 7 * a (n - 4) + 2 * a (n - 5)

end

end A111926.P7591826959290943603

namespace A111926

/-- `5*a(n-1)-10*a(n-2)+11*a(n-3)-7*a(n-4)+2*a(n-5)` -/
def P7591826959290943603.Spec : Prop :=
  ∀ n, P7591826959290943603.a n = A111926 n

end A111926

/-! ## A111926.P3445180231444373886

`Δ[A024495(n)]-n`
-/

namespace A111926.P3445180231444373886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A111926.P3445180231444373886

namespace A111926

/-- `Δ[A024495(n)]-n` -/
def P3445180231444373886.Spec : Prop :=
  ∀ n, P3445180231444373886.a n = A111926 n

end A111926

/-! ## A111926.P8027081441707838486

`A000325(n)-A130781(n)`
-/

namespace A111926.P8027081441707838486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 n - A130781 n

end

end A111926.P8027081441707838486

namespace A111926

/-- `A000325(n)-A130781(n)` -/
def P8027081441707838486.Spec : Prop :=
  ∀ n, P8027081441707838486.a n = A111926 n

end A111926

/-! ## A111926.P7322570513651537122

`∑[A111927(n)]-A111927(n)`
-/

namespace A111926.P7322570513651537122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A111927 n

end

end A111926.P7322570513651537122

namespace A111926

/-- `∑[A111927(n)]-A111927(n)` -/
def P7322570513651537122.Spec : Prop :=
  ∀ n, P7322570513651537122.a n = A111926 n

end A111926

/-! ## A111926.P5258496908912516191

`A000295(n)-A111927(n+1)`
-/

namespace A111926.P5258496908912516191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n - A111927 (n + 1)

end

end A111926.P5258496908912516191

namespace A111926

/-- `A000295(n)-A111927(n+1)` -/
def P5258496908912516191.Spec : Prop :=
  ∀ n, P5258496908912516191.a n = A111926 n

end A111926

/-!
# A111927: Expansion of x^3 / ((x-1)*(2*x-1)*(x^2-x+1)).

The programs for A111927, the canonical program `A111927.P10072642251601227799` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111927 has offset 0).

The definition of A111927 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x^3/(1-4x+6x^2-5x^3+2x^4))` (program `A111927.P10072642251601227799`, by `A111927.P10072642251601227799.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111927.P10072642251601227799

`ogf(x^3/(1-4x+6x^2-5x^3+2x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111927

/-- `ogf(x^3/(1-4x+6x^2-5x^3+2x^4))` -/
def P10072642251601227799.Spec : Prop :=
  ∀ n, P10072642251601227799.a n = A111927 n

theorem P10072642251601227799.correct : P10072642251601227799.Spec := by
  intro n
  simp only [A111927]

end A111927

/-! ## A111927.P18340182640698170704

`2^n/3+2*cos(π*n/3)/3-1`
-/

namespace A111927.P18340182640698170704
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℚ) / 3 : ℝ) + 2 * Real.cos (Real.pi * (n : ℝ) / 3) / 3 - 1

end

end A111927.P18340182640698170704

namespace A111927

/-- `2^n/3+2*cos(π*n/3)/3-1` -/
def P18340182640698170704.Spec : Prop :=
  ∀ n, P18340182640698170704.a n = (A111927 n : ℝ)

end A111927

/-! ## A111927.P501610260988410810

`4*a(n-1)-6*a(n-2)+5*a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A111927.P501610260988410810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 5 * a (n - 3) - 2 * a (n - 4)

end

end A111927.P501610260988410810

namespace A111927

/-- `4*a(n-1)-6*a(n-2)+5*a(n-3)-2*a(n-4)` -/
def P501610260988410810.Spec : Prop :=
  ∀ n, P501610260988410810.a n = A111927 n

end A111927

/-! ## A111927.P5197504937857676538

`(2^n+A087204(n))/3-1`
-/

namespace A111927.P5197504937857676538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) + A087204 n : ℚ) / 3 - 1

end

end A111927.P5197504937857676538

namespace A111927

/-- `(2^n+A087204(n))/3-1` -/
def P5197504937857676538.Spec : Prop :=
  ∀ n, P5197504937857676538.a n = (A111927 n : ℚ)

end A111927

/-! ## A111927.P16000786901325466230

`A024493(n)-1`
-/

namespace A111927.P16000786901325466230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 n - 1

end

end A111927.P16000786901325466230

namespace A111927

/-- `A024493(n)-1` -/
def P16000786901325466230.Spec : Prop :=
  ∀ n, P16000786901325466230.a n = A111927 n

end A111927

/-! ## A111927.P2507754484961948153

`∑[A024495(abs(1-n))]`
-/

namespace A111927.P2507754484961948153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111927.P2507754484961948153

namespace A111927

/-- `∑[A024495(abs(1-n))]` -/
def P2507754484961948153.Spec : Prop :=
  ∀ n, P2507754484961948153.a n = A111927 n

end A111927

/-! ## A111927.P2190779142384783641

`A024495(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A111927.P2190779142384783641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A024495 (n - 1) + a (n - 1)

end

end A111927.P2190779142384783641

namespace A111927

/-- `A024495(n-1)+a(n-1)` -/
def P2190779142384783641.Spec : Prop :=
  ∀ n, P2190779142384783641.a n = A111927 n

end A111927

/-! ## A111927.P6987692752781666698

`A130707(n)-A164965(n)`
-/

namespace A111927.P6987692752781666698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130707 n - A164965 n

end

end A111927.P6987692752781666698

namespace A111927

/-- `A130707(n)-A164965(n)` -/
def P6987692752781666698.Spec : Prop :=
  ∀ n, P6987692752781666698.a n = A111927 n

end A111927

/-! ## A111927.P11428261714930733707

`A133684(A047236(n+1))-1`
-/

namespace A111927.P11428261714930733707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A047236 (n + 1)).toNat - 1

end

end A111927.P11428261714930733707

namespace A111927

/-- `A133684(A047236(n+1))-1` -/
def P11428261714930733707.Spec : Prop :=
  ∀ n, P11428261714930733707.a n = A111927 n

end A111927

/-! ## A111927.P11199122205012705452

`A130781(A289207(n+1))-1`
-/

namespace A111927.P11199122205012705452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130781 (A289207 (n + 1)).toNat - 1

end

end A111927.P11199122205012705452

namespace A111927

/-- `A130781(A289207(n+1))-1` -/
def P11199122205012705452.Spec : Prop :=
  ∀ n, P11199122205012705452.a n = A111927 n

end A111927

/-! ## A111927.P14560003782178987253

`A153234(n+1)+A153234(n)`
-/

namespace A111927.P14560003782178987253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153234 (n + 1) + A153234 n

end

end A111927.P14560003782178987253

namespace A111927

/-- `A153234(n+1)+A153234(n)` -/
def P14560003782178987253.Spec : Prop :=
  ∀ n, P14560003782178987253.a n = A111927 n

end A111927

/-! ## A111927.P13811038877935435590

`A010892(n)+A024495(n)-1`
-/

namespace A111927.P13811038877935435590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n + (A024495 n - 1)

end

end A111927.P13811038877935435590

namespace A111927

/-- `A010892(n)+A024495(n)-1` -/
def P13811038877935435590.Spec : Prop :=
  ∀ n, P13811038877935435590.a n = A111927 n

end A111927

/-! ## A111927.P10784117370959079582

`A078008(n)+A092220(n)-1`
-/

namespace A111927.P10784117370959079582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n + (A092220 n - 1)

end

end A111927.P10784117370959079582

namespace A111927

/-- `A078008(n)+A092220(n)-1` -/
def P10784117370959079582.Spec : Prop :=
  ∀ n, P10784117370959079582.a n = A111927 n

end A111927

/-! ## A111927.P2463352034698333453

`A087628(n)-(A087463(n)+1)`
-/

namespace A111927.P2463352034698333453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087628 n - (A087463 n + 1)

end

end A111927.P2463352034698333453

namespace A111927

/-- `A087628(n)-(A087463(n)+1)` -/
def P2463352034698333453.Spec : Prop :=
  ∀ n, P2463352034698333453.a n = A111927 n

end A111927

/-! ## A111927.P1717051310373569553

`A087629(n)-(A087464(n)+1)`
-/

namespace A111927.P1717051310373569553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087629 n - (A087464 n + 1)

end

end A111927.P1717051310373569553

namespace A111927

/-- `A087629(n)-(A087464(n)+1)` -/
def P1717051310373569553.Spec : Prop :=
  ∀ n, P1717051310373569553.a n = A111927 n

end A111927

/-! ## A111927.P14609108396066444516

`A086953(n)+A128834(n)-1`
-/

namespace A111927.P14609108396066444516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086953 n + (A128834 n - 1)

end

end A111927.P14609108396066444516

namespace A111927

/-- `A086953(n)+A128834(n)-1` -/
def P14609108396066444516.Spec : Prop :=
  ∀ n, P14609108396066444516.a n = A111927 n

end A111927

/-! ## A111927.P10740804057592971282

`A131370(n)-(A087204(n)+1)`
-/

namespace A111927.P10740804057592971282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131370 n - (A087204 n + 1)

end

end A111927.P10740804057592971282

namespace A111927

/-- `A131370(n)-(A087204(n)+1)` -/
def P10740804057592971282.Spec : Prop :=
  ∀ n, P10740804057592971282.a n = A111927 n

end A111927

/-! ## A111927.P480785540336364936

`A113405(n)+A132780(n)-1`
-/

namespace A111927.P480785540336364936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 n + (A132780 n - 1)

end

end A111927.P480785540336364936

namespace A111927

/-- `A113405(n)+A132780(n)-1` -/
def P480785540336364936.Spec : Prop :=
  ∀ n, P480785540336364936.a n = A111927 n

end A111927

/-! ## A111927.P2858782710513401127

`A130707(n)-(A128834(n)+1)`
-/

namespace A111927.P2858782710513401127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130707 n - (A128834 n + 1)

end

end A111927.P2858782710513401127

namespace A111927

/-- `A130707(n)-(A128834(n)+1)` -/
def P2858782710513401127.Spec : Prop :=
  ∀ n, P2858782710513401127.a n = A111927 n

end A111927

/-! ## A111927.P1153785391950799272

`A167030(n)+A131531(n+3)`
-/

namespace A111927.P1153785391950799272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167030 n + A131531 (n + 3)

end

end A111927.P1153785391950799272

namespace A111927

/-- `A167030(n)+A131531(n+3)` -/
def P1153785391950799272.Spec : Prop :=
  ∀ n, P1153785391950799272.a n = A111927 n

end A111927

/-!
# A111928: Numerator of f(n) := Product_{i=1..n} sigma(i)/i.

The programs for A111928, there is no canonical definition to state claims against.
-/

/-! ## A111928.P3212713902008798379

`A109491(n+1)/gcd(A109489(n+1), A109491(n+1))`
-/

namespace A111928.P3212713902008798379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109491 (n + 1) : ℚ) / (Int.gcd (A109489 (n + 1)) (A109491 (n + 1)) : ℚ)

end

end A111928.P3212713902008798379

/-!
# A111929: Numerator of x(n) = Sum_{k=1..n} ((odd part of k)/(k^2)).

The programs for A111929, there is no canonical definition to state claims against.
-/

/-! ## A111929.P11104079949037627833

`A141345(A163772(∑[2*n]))`
-/

namespace A111929.P11104079949037627833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141345 (A163772 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A111929.P11104079949037627833

/-!
# A111930: Denominator of x(n) = Sum_{k=1..n} ((odd part of k)/(k^2)).

The programs for A111930, there is no canonical definition to state claims against.
-/

/-! ## A111930.P18344809873775504626

`A034699(A330719(n+1))*A284650(n+1)`
-/

namespace A111930.P18344809873775504626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A330719 (n + 1)).toNat * A284650 (n + 1)

end

end A111930.P18344809873775504626

/-! ## A111930.P6221794611269726817

`A034699(A330719(n+1))*A290344(n+1)*A053644(n+1)`
-/

namespace A111930.P6221794611269726817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A330719 (n + 1)).toNat * A290344 (n + 1) * A053644 (n + 1)

end

end A111930.P6221794611269726817

/-! ## A111930.P7837995785654306642

`A007407(n+1)/A000265(Δ[A173185(n)])`
-/

namespace A111930.P7837995785654306642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007407 (n + 1) : ℚ) / (A000265 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A111930.P7837995785654306642

/-! ## A111930.P4296665604654727133

`A007407(n+1)/A000265(Δ[A236856(n)])`
-/

namespace A111930.P4296665604654727133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236856 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007407 (n + 1) : ℚ) / (A000265 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A111930.P4296665604654727133

/-! ## A111930.P14172616603169293720

`A007407(n+1)/A000265(A051426(n+1))`
-/

namespace A111930.P14172616603169293720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007407 (n + 1) : ℚ) / (A000265 (A051426 (n + 1)).toNat : ℚ)

end

end A111930.P14172616603169293720

/-!
# A111932: Expansion of q * (psi(q) * psi(q^3))^2 in powers of q where psi() is a Ramanujan theta function.

The programs for A111932, the canonical program `A111932.P8397638407762564101` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111932 has offset 1).

The definition of A111932 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111932.P156460201489960410

`abs(A121456(n+1))`
-/

namespace A111932.P156460201489960410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121456 (n + 1)|

end

end A111932.P156460201489960410

namespace A111932

/-- `abs(A121456(n+1))` -/
def P156460201489960410.Spec : Prop :=
  ∀ n, P156460201489960410.a n = A111932 (n + 1)

end A111932

/-! ## A111932.P8397638407762564101

`∑{d}[n+1, #*A117188((n+1)/#-1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A111932

/-- `∑{d}[n+1, #*A117188((n+1)/#-1)]` -/
def P8397638407762564101.Spec : Prop :=
  ∀ n, P8397638407762564101.a n = A111932 (n + 1)

theorem P8397638407762564101.correct : P8397638407762564101.Spec := by
  intro n
  simp only [A111932, Nat.add_sub_cancel]

end A111932

/-! ## A111932.P4092450671330846477

`2^val(n+1, 2)*A121443((n+1)/3^val(n+1, 3))`
-/

namespace A111932.P4092450671330846477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) * A121443 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat

end

end A111932.P4092450671330846477

namespace A111932

/-- `2^val(n+1, 2)*A121443((n+1)/3^val(n+1, 3))` -/
def P4092450671330846477.Spec : Prop :=
  ∀ n, P4092450671330846477.a n = A111932 (n + 1)

end A111932

/-! ## A111932.P17397017314762045106

`A002131(A038502(n+1))`
-/

namespace A111932.P17397017314762045106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (A038502 (n + 1)).toNat

end

end A111932.P17397017314762045106

namespace A111932

/-- `A002131(A038502(n+1))` -/
def P17397017314762045106.Spec : Prop :=
  ∀ n, P17397017314762045106.a n = A111932 (n + 1)

end A111932

/-! ## A111932.P6370718307113293348

`A033999(n)*A121456(n+1)`
-/

namespace A111932.P6370718307113293348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A121456 (n + 1)

end

end A111932.P6370718307113293348

namespace A111932

/-- `A033999(n)*A121456(n+1)` -/
def P6370718307113293348.Spec : Prop :=
  ∀ n, P6370718307113293348.a n = A111932 (n + 1)

end A111932

/-! ## A111932.P4100587701945032566

`gcd(A000038(n), A121456(n+1))`
-/

namespace A111932.P4100587701945032566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A121456 (n + 1))

end

end A111932.P4100587701945032566

namespace A111932

/-- `gcd(A000038(n), A121456(n+1))` -/
def P4100587701945032566.Spec : Prop :=
  ∀ n, (P4100587701945032566.a n : ℤ) = A111932 (n + 1)

end A111932

/-! ## A111932.P17059264664320990421

`lcm(A000034(n), A121456(n+1))`
-/

namespace A111932.P17059264664320990421
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A121456 (n + 1))

end

end A111932.P17059264664320990421

namespace A111932

/-- `lcm(A000034(n), A121456(n+1))` -/
def P17059264664320990421.Spec : Prop :=
  ∀ n, (P17059264664320990421.a n : ℤ) = A111932 (n + 1)

end A111932

/-! ## A111932.P13054293919863722446

`∑{d}[A038502(n+1), A026741(#)]`
-/

namespace A111932.P13054293919863722446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A026741 d

end

end A111932.P13054293919863722446

namespace A111932

/-- `∑{d}[A038502(n+1), A026741(#)]` -/
def P13054293919863722446.Spec : Prop :=
  ∀ n, P13054293919863722446.a n = A111932 (n + 1)

end A111932

/-! ## A111932.P17290441689385086967

`A006519(n+1)*A186099(n+1)`
-/

namespace A111932.P17290441689385086967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A186099 (n + 1)

end

end A111932.P17290441689385086967

namespace A111932

/-- `A006519(n+1)*A186099(n+1)` -/
def P17290441689385086967.Spec : Prop :=
  ∀ n, P17290441689385086967.a n = A111932 (n + 1)

end A111932

/-! ## A111932.P3571993879510146666

`A002131(n+1)/A080278(n+1)`
-/

namespace A111932.P3571993879510146666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002131 (n + 1) : ℚ) / (A080278 (n + 1) : ℚ)

end

end A111932.P3571993879510146666

namespace A111932

/-- `A002131(n+1)/A080278(n+1)` -/
def P3571993879510146666.Spec : Prop :=
  ∀ n, P3571993879510146666.a n = (A111932 (n + 1) : ℚ)

end A111932

/-! ## A111932.P2556194042424886071

`A385138(n+1)/A038500(n+1)`
-/

namespace A111932.P2556194042424886071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385138 (n + 1) : ℚ) / (A038500 (n + 1) : ℚ)

end

end A111932.P2556194042424886071

namespace A111932

/-- `A385138(n+1)/A038500(n+1)` -/
def P2556194042424886071.Spec : Prop :=
  ∀ n, P2556194042424886071.a n = (A111932 (n + 1) : ℚ)

end A111932

/-! ## A111932.P12596774013211976330

`gcd(A002131(n+1), A385138(n+1))`
-/

namespace A111932.P12596774013211976330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002131 (n + 1)) (A385138 (n + 1))

end

end A111932.P12596774013211976330

namespace A111932

/-- `gcd(A002131(n+1), A385138(n+1))` -/
def P12596774013211976330.Spec : Prop :=
  ∀ n, (P12596774013211976330.a n : ℤ) = A111932 (n + 1)

end A111932

/-! ## A111932.P9990796111443134949

`(A186099(n+1)+A046913(n+1))/2`
-/

namespace A111932.P9990796111443134949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186099 (n + 1) + A046913 (n + 1) : ℚ) / 2

end

end A111932.P9990796111443134949

namespace A111932

/-- `(A186099(n+1)+A046913(n+1))/2` -/
def P9990796111443134949.Spec : Prop :=
  ∀ n, P9990796111443134949.a n = (A111932 (n + 1) : ℚ)

end A111932

/-! ## A111932.P3712080907947660066

`2*A121443(n+1)-A232356(n+1)`
-/

namespace A111932.P3712080907947660066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121443 (n + 1) - A232356 (n + 1)

end

end A111932.P3712080907947660066

namespace A111932

/-- `2*A121443(n+1)-A232356(n+1)` -/
def P3712080907947660066.Spec : Prop :=
  ∀ n, P3712080907947660066.a n = A111932 (n + 1)

theorem P3712080907947660066.correct : P3712080907947660066.Spec := by
  intro n
  simp only [A111932, Nat.add_sub_cancel, A111932.P3712080907947660066.a, A111932.P8397638407762564101.f1, A111932.P8397638407762564101.a, A117188, A117188.P8831629070024374832.a, A121443, A121443.P2966999353151604800.a, A232356, A232356.P2356897415690345151.a, A038500, A038500.P18314557775098268376.a, A186099, A186099.P16380765776800973491.a, A284098, A284098.P14941002019999752586.f1, A284098.P14941002019999752586.a, A284104, A284104.P13760200148477607299.a, A078182, A078182.P257615860530487597.a, A079979, A079979.P15116196827675478457.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111932

/-! ## A111932.P9416213509154909620

`∑{d}[n+1, A006519(#)*A091685((n+1)/#)]`
-/

namespace A111932.P9416213509154909620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006519 d * A091685 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111932.P9416213509154909620

namespace A111932

/-- `∑{d}[n+1, A006519(#)*A091685((n+1)/#)]` -/
def P9416213509154909620.Spec : Prop :=
  ∀ n, P9416213509154909620.a n = A111932 (n + 1)

end A111932

/-! ## A111932.P13735367669219266125

`∑{d}[n+1, A046913(#)*A154955((n+1)/#)]`
-/

namespace A111932.P13735367669219266125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046913 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111932.P13735367669219266125

namespace A111932

/-- `∑{d}[n+1, A046913(#)*A154955((n+1)/#)]` -/
def P13735367669219266125.Spec : Prop :=
  ∀ n, P13735367669219266125.a n = A111932 (n + 1)

end A111932

/-! ## A111932.P16749886631132679555

`∑{d}[n+1, A112848(#)*A227128((n+1)/#)]`
-/

namespace A111932.P16749886631132679555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A112848 d * A227128 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111932.P16749886631132679555

namespace A111932

/-- `∑{d}[n+1, A112848(#)*A227128((n+1)/#)]` -/
def P16749886631132679555.Spec : Prop :=
  ∀ n, P16749886631132679555.a n = A111932 (n + 1)

end A111932

/-! ## A111932.P9290687485084897943

`∑{d}[n+1, A138950(#)*A204617((n+1)/#)]`
-/

namespace A111932.P9290687485084897943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A138950 d * A204617 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111932.P9290687485084897943

namespace A111932

/-- `∑{d}[n+1, A138950(#)*A204617((n+1)/#)]` -/
def P9290687485084897943.Spec : Prop :=
  ∀ n, P9290687485084897943.a n = A111932 (n + 1)

end A111932

/-! ## A111932.P7148243945207665496

`∑{d}[n+1, A038502(#)*A232991((n+1)/#-1)]`
-/

namespace A111932.P7148243945207665496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038502 d * A232991 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A111932.P7148243945207665496

namespace A111932

/-- `∑{d}[n+1, A038502(#)*A232991((n+1)/#-1)]` -/
def P7148243945207665496.Spec : Prop :=
  ∀ n, P7148243945207665496.a n = A111932 (n + 1)

end A111932

/-! ## A111932.P15654914203524370499

`(A046913(A000265(n+1))+A046913(n+1))/2`
-/

namespace A111932.P15654914203524370499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046913 (A000265 (n + 1)).toNat + A046913 (n + 1) : ℚ) / 2

end

end A111932.P15654914203524370499

namespace A111932

/-- `(A046913(A000265(n+1))+A046913(n+1))/2` -/
def P15654914203524370499.Spec : Prop :=
  ∀ n, P15654914203524370499.a n = (A111932 (n + 1) : ℚ)

end A111932

/-!
# A111933: Triangle read by rows, generated from Stirling cycle numbers.

The programs for A111933, there is no canonical definition to state claims against.
-/

/-! ## A111933.P16777135566473564386

`A289192(n)+A086073(A324674(n))`
-/

namespace A111933.P16777135566473564386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 n + A086073 (A324674 n).toNat

end

end A111933.P16777135566473564386

/-! ## A111933.P15620241668121280710

`or(A058710(A058710(n)), A289192(n))`
-/

namespace A111933.P15620241668121280710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A058710 (A058710 n).toNat) (A289192 n)

end

end A111933.P15620241668121280710

/-! ## A111933.P4459715338536973285

`or(A289192(n), A319691(A077947(n)))`
-/

namespace A111933.P4459715338536973285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A289192 n) (A319691 (A077947 n).toNat)

end

end A111933.P4459715338536973285

/-! ## A111933.P2288430565159067496

`or(A099409(A347615(n)), A289192(n))`
-/

namespace A111933.P2288430565159067496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A099409 (A347615 n).toNat) (A289192 n)

end

end A111933.P2288430565159067496

/-! ## A111933.P6869493951735656673

`or(A289192(n), A321312(A288972(n)))`
-/

namespace A111933.P6869493951735656673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A289192 n) (A321312 (A288972 n).toNat)

end

end A111933.P6869493951735656673

/-!
# A111934: Denominator of f(n) := Product_{i=1..n} sigma(i)/i.

The programs for A111934, there is no canonical definition to state claims against.
-/

/-! ## A111934.P3993778079473847028

`A109489(n+1)/gcd(A109489(n+1), A109491(n+1))`
-/

namespace A111934.P3993778079473847028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109489 (n + 1) : ℚ) / (Int.gcd (A109489 (n + 1)) (A109491 (n + 1)) : ℚ)

end

end A111934.P3993778079473847028

/-! ## A111934.P11828375368843361335

`A128073(A037027(n))%A062399(n+2)`
-/

namespace A111934.P11828375368843361335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128073 (A037027 n).toNat) (A062399 (n + 2))

end

end A111934.P11828375368843361335

/-!
# A111935: Numerator of n-th term of the harmonic series after removal of all terms 1/m from Sum_{m=1..n} 1/m for which m contains a 9 in its decimal representation.

The programs for A111935, there is no canonical definition to state claims against.
-/

/-! ## A111935.P5562132155860785568

`A125900(A071817(n+2))`
-/

namespace A111935.P5562132155860785568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125900 (A071817 (n + 2)).toNat

end

end A111935.P5562132155860785568

/-! ## A111935.P6503276864240773355

`A001008(n+1)%A246335(A181018(n+1))`
-/

namespace A111935.P6503276864240773355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001008 (n + 1)) (A246335 (A181018 (n + 1)).toNat)

end

end A111935.P6503276864240773355

/-! ## A111935.P9576241049130037982

`A175441(n+1)%A299964(A299971(n+1))`
-/

namespace A111935.P9576241049130037982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175441 (n + 1)) (A299964 (A299971 (n + 1)).toNat)

end

end A111935.P9576241049130037982

/-!
# A111936: Denominator of n-th term of the harmonic series after removal of all terms 1/m from Sum_{m=1..n} 1/m for which m contains a 9 in its decimal representation.

The programs for A111936, there is no canonical definition to state claims against.
-/

/-! ## A111936.P8359991805002215122

`A327512(A375524(n+1))`
-/

namespace A111936.P8359991805002215122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (A375524 (n + 1)).toNat

end

end A111936.P8359991805002215122

/-! ## A111936.P28251059312573339

`A125901(A071817(n+2))`
-/

namespace A111936.P28251059312573339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125901 (A071817 (n + 2)).toNat

end

end A111936.P28251059312573339

/-! ## A111936.P1918707338505004214

`A002805(n+1-A185294(2*n+3))`
-/

namespace A111936.P1918707338505004214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 ((n + 1 : ℤ) - A185294 (2 * n + 3)).toNat

end

end A111936.P1918707338505004214

/-! ## A111936.P10007948106414296634

`lcm(2^∑{e}[n+1, #], A097504(A306853(n+1)))`
-/

namespace A111936.P10007948106414296634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℤ) (A097504 (A306853 (n + 1)).toNat)

end

end A111936.P10007948106414296634

/-! ## A111936.P4992060447202759640

`A125901(A141214(n)-A037477(n))`
-/

namespace A111936.P4992060447202759640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125901 (A141214 n - A037477 n).toNat

end

end A111936.P4992060447202759640

/-!
# A111938: a(n) = n times number of divisors of n of form 4m+1 - n times number of divisors of form 4m+3.

The programs for A111938, the canonical program `A111938.P12344735915851261426` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111938 has offset 1).

The definition of A111938 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A111938.P12344735915851261426

`(n+1)*A002654(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A111938

/-- `(n+1)*A002654(n+1)` -/
def P12344735915851261426.Spec : Prop :=
  ∀ n, P12344735915851261426.a n = A111938 (n + 1)

theorem P12344735915851261426.correct : P12344735915851261426.Spec := by
  intro n
  simp only [A111938, Nat.add_sub_cancel]

end A111938

/-! ## A111938.P12128686255023005632

`(n+1)*Δ[A014200(n)]`
-/

namespace A111938.P12128686255023005632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A111938.P12128686255023005632

namespace A111938

/-- `(n+1)*Δ[A014200(n)]` -/
def P12128686255023005632.Spec : Prop :=
  ∀ n, P12128686255023005632.a n = A111938 (n + 1)

end A111938

/-! ## A111938.P17195253045561287081

`abs((n+1)*A113652(n+1))`
-/

namespace A111938.P17195253045561287081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A113652 (n + 1)|

end

end A111938.P17195253045561287081

namespace A111938

/-- `abs((n+1)*A113652(n+1))` -/
def P17195253045561287081.Spec : Prop :=
  ∀ n, P17195253045561287081.a n = A111938 (n + 1)

end A111938

/-! ## A111938.P4519962028468659204

`(n+1)/4*Δ[A014198(n)]`
-/

namespace A111938.P4519962028468659204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014198 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 4 * (f1 (n + 1) - f1 n : ℚ)

end

end A111938.P4519962028468659204

namespace A111938

/-- `(n+1)/4*Δ[A014198(n)]` -/
def P4519962028468659204.Spec : Prop :=
  ∀ n, P4519962028468659204.a n = (A111938 (n + 1) : ℚ)

end A111938

/-! ## A111938.P5036500198687538590

`(n+1)/2*A105673(n+1)`
-/

namespace A111938.P5036500198687538590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A105673 (n + 1) : ℚ)

end

end A111938.P5036500198687538590

namespace A111938

/-- `(n+1)/2*A105673(n+1)` -/
def P5036500198687538590.Spec : Prop :=
  ∀ n, P5036500198687538590.a n = (A111938 (n + 1) : ℚ)

theorem P5036500198687538590.correct : P5036500198687538590.Spec := by
  intro n
  simp only [A111938, Nat.add_sub_cancel, A111938.P5036500198687538590.a, A111938.P12344735915851261426.a, A002654, A002654.P11574922253888480122.a, A105673, A105673.P14538287794614071707.a, A001826, A001826.P1518250824516108745.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A111938

/-! ## A111938.P17846662373422918265

`(n+1)/4*A004018(n+1)`
-/

namespace A111938.P17846662373422918265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 4 * (A004018 (n + 1) : ℚ)

end

end A111938.P17846662373422918265

namespace A111938

/-- `(n+1)/4*A004018(n+1)` -/
def P17846662373422918265.Spec : Prop :=
  ∀ n, P17846662373422918265.a n = (A111938 (n + 1) : ℚ)

end A111938

/-! ## A111938.P7981247359224676855

`A002654(n+1)*A396674(n)`
-/

namespace A111938.P7981247359224676855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1) * A396674 n

end

end A111938.P7981247359224676855

namespace A111938

/-- `A002654(n+1)*A396674(n)` -/
def P7981247359224676855.Spec : Prop :=
  ∀ n, P7981247359224676855.a n = A111938 (n + 1)

end A111938

/-! ## A111938.P6495495373561991230

`A053694(n)*A364223(n+1)`
-/

namespace A111938.P6495495373561991230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053694 n * A364223 (n + 1)

end

end A111938.P6495495373561991230

namespace A111938

/-- `A053694(n)*A364223(n+1)` -/
def P6495495373561991230.Spec : Prop :=
  ∀ n, P6495495373561991230.a n = A111938 (n + 1)

end A111938

/-! ## A111938.P2574234318256750916

`(n+1)*A008442(A000265(n+1))`
-/

namespace A111938.P2574234318256750916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008442 (A000265 (n + 1)).toNat

end

end A111938.P2574234318256750916

namespace A111938

/-- `(n+1)*A008442(A000265(n+1))` -/
def P2574234318256750916.Spec : Prop :=
  ∀ n, P2574234318256750916.a n = A111938 (n + 1)

end A111938

/-! ## A111938.P4171104857886181311

`(n+1)*A001281(A105673(n+1))`
-/

namespace A111938.P4171104857886181311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001281 (A105673 (n + 1)).toNat

end

end A111938.P4171104857886181311

namespace A111938

/-- `(n+1)*A001281(A105673(n+1))` -/
def P4171104857886181311.Spec : Prop :=
  ∀ n, P4171104857886181311.a n = A111938 (n + 1)

end A111938

/-! ## A111938.P2055864833428485834

`(n+1)*(A014200(n+1)-A014200(n))`
-/

namespace A111938.P2055864833428485834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A014200 (n + 1) - A014200 n)

end

end A111938.P2055864833428485834

namespace A111938

/-- `(n+1)*(A014200(n+1)-A014200(n))` -/
def P2055864833428485834.Spec : Prop :=
  ∀ n, P2055864833428485834.a n = A111938 (n + 1)

end A111938

/-! ## A111938.P8252216959583776857

`∑{d}[n+1, A000010(#)*A050457((n+1)/#)]`
-/

namespace A111938.P8252216959583776857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A050457 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111938.P8252216959583776857

namespace A111938

/-- `∑{d}[n+1, A000010(#)*A050457((n+1)/#)]` -/
def P8252216959583776857.Spec : Prop :=
  ∀ n, P8252216959583776857.a n = A111938 (n + 1)

end A111938

/-! ## A111938.P7157889997149817804

`∑{d}[n+1, A119972(#)*A193356((n+1)/#)]`
-/

namespace A111938.P7157889997149817804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A119972 d * A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111938.P7157889997149817804

namespace A111938

/-- `∑{d}[n+1, A119972(#)*A193356((n+1)/#)]` -/
def P7157889997149817804.Spec : Prop :=
  ∀ n, P7157889997149817804.a n = A111938 (n + 1)

end A111938

/-! ## A111938.P3958342497348299895

`∑{d}[n+1, A209613(#)*A227128((n+1)/#)]`
-/

namespace A111938.P3958342497348299895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A209613 d * A227128 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111938.P3958342497348299895

namespace A111938

/-- `∑{d}[n+1, A209613(#)*A227128((n+1)/#)]` -/
def P3958342497348299895.Spec : Prop :=
  ∀ n, P3958342497348299895.a n = A111938 (n + 1)

end A111938

/-! ## A111938.P11878336836401468924

`∑{d}[n+1, A056594(#-1)*A086933((n+1)/#)]`
-/

namespace A111938.P11878336836401468924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056594 (d - 1) * A086933 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111938.P11878336836401468924

namespace A111938

/-- `∑{d}[n+1, A056594(#-1)*A086933((n+1)/#)]` -/
def P11878336836401468924.Spec : Prop :=
  ∀ n, P11878336836401468924.a n = A111938 (n + 1)

end A111938

/-! ## A111938.P7209300468801545491

`Δ[A374534(n)]`
-/

namespace A111938.P7209300468801545491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111938.P7209300468801545491

namespace A111938

/-- `Δ[A374534(n)]` -/
def P7209300468801545491.Spec : Prop :=
  ∀ n, P7209300468801545491.a n = A111938 (n + 1)

end A111938

/-! ## A111938.P8793675903463175512

`(n+1)*Δ[A057655(n)/4]`
-/

namespace A111938.P8793675903463175512
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057655 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (f1 (n + 1) - f1 n)

end

end A111938.P8793675903463175512

namespace A111938

/-- `(n+1)*Δ[A057655(n)/4]` -/
def P8793675903463175512.Spec : Prop :=
  ∀ n, P8793675903463175512.a n = (A111938 (n + 1) : ℚ)

end A111938

/-! ## A111938.P3243487546431969294

`A374534(n+1)-A374534(n)`
-/

namespace A111938.P3243487546431969294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374534 (n + 1) - A374534 n

end

end A111938.P3243487546431969294

namespace A111938

/-- `A374534(n+1)-A374534(n)` -/
def P3243487546431969294.Spec : Prop :=
  ∀ n, P3243487546431969294.a n = A111938 (n + 1)

end A111938

/-! ## A111938.P8190036057146142844

`(n-(2*n+1))*A113652(2*(n+1))`
-/

namespace A111938.P8190036057146142844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (2 * n + 1 : ℤ)) * A113652 (2 * (n + 1))

end

end A111938.P8190036057146142844

namespace A111938

/-- `(n-(2*n+1))*A113652(2*(n+1))` -/
def P8190036057146142844.Spec : Prop :=
  ∀ n, P8190036057146142844.a n = A111938 (n + 1)

end A111938

/-!
# A111939: Number of primes < semiprime(n).

The programs for A111939, the canonical program `A111939.P7541202206482791046` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111939 has offset 1).

The definition of A111939 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A111939.P7541202206482791046

`A000720(A001358(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A111939

/-- `A000720(A001358(n+1))` -/
def P7541202206482791046.Spec : Prop :=
  ∀ n, P7541202206482791046.a n = A111939 (n + 1)

theorem P7541202206482791046.correct : P7541202206482791046.Spec := by
  intro n
  simp only [A111939, Nat.add_sub_cancel]

end A111939

/-! ## A111939.P18318535020872453611

`∑[A176451(n+1)]`
-/

namespace A111939.P18318535020872453611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111939.P18318535020872453611

namespace A111939

/-- `∑[A176451(n+1)]` -/
def P18318535020872453611.Spec : Prop :=
  ∀ n, P18318535020872453611.a n = A111939 (n + 1)

end A111939

/-! ## A111939.P9348136000293361241

`A088700(n)+a(n-1)` with `a(0)=2`
-/

namespace A111939.P9348136000293361241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A088700 n + a (n - 1)

end

end A111939.P9348136000293361241

namespace A111939

/-- `A088700(n)+a(n-1)` -/
def P9348136000293361241.Spec : Prop :=
  ∀ n, P9348136000293361241.a n = A111939 (n + 1)

end A111939

/-! ## A111939.P4519107758400210592

`comp[A111457(n+1)+n]-n`
-/

namespace A111939.P4519107758400210592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111457 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A111939.P4519107758400210592

namespace A111939

/-- `comp[A111457(n+1)+n]-n` -/
def P4519107758400210592.Spec : Prop :=
  ∀ n, P4519107758400210592.a n = A111939 (n + 1)

end A111939

/-! ## A111939.P17764964244675815503

`A000720(A176629(n+1))`
-/

namespace A111939.P17764964244675815503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A176629 (n + 1)).toNat

end

end A111939.P17764964244675815503

namespace A111939

/-- `A000720(A176629(n+1))` -/
def P17764964244675815503.Spec : Prop :=
  ∀ n, P17764964244675815503.a n = A111939 (n + 1)

end A111939

/-! ## A111939.P9482401673923760240

`A000720(A186621(n+1))`
-/

namespace A111939.P9482401673923760240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A186621 (n + 1)).toNat

end

end A111939.P9482401673923760240

namespace A111939

/-- `A000720(A186621(n+1))` -/
def P9482401673923760240.Spec : Prop :=
  ∀ n, P9482401673923760240.a n = A111939 (n + 1)

end A111939

/-! ## A111939.P6732601322002098430

`A000720(sqrt(A074985(n+1)))`
-/

namespace A111939.P6732601322002098430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat

end

end A111939.P6732601322002098430

namespace A111939

/-- `A000720(sqrt(A074985(n+1)))` -/
def P6732601322002098430.Spec : Prop :=
  ∀ n, P6732601322002098430.a n = A111939 (n + 1)

end A111939

/-! ## A111939.P14565477753773331977

`A000720(A088707(n+1)-1)`
-/

namespace A111939.P14565477753773331977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A088707 (n + 1) - 1).toNat

end

end A111939.P14565477753773331977

namespace A111939

/-- `A000720(A088707(n+1)-1)` -/
def P14565477753773331977.Spec : Prop :=
  ∀ n, P14565477753773331977.a n = A111939 (n + 1)

end A111939

/-! ## A111939.P12150793517565380694

`A000720(eq[2, A001222(n+1)])`
-/

namespace A111939.P12150793517565380694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111939.P12150793517565380694

namespace A111939

/-- `A000720(eq[2, A001222(n+1)])` -/
def P12150793517565380694.Spec : Prop :=
  ∀ n, P12150793517565380694.a n = A111939 (n + 1)

end A111939

/-! ## A111939.P14632825315370369858

`A000720(eq[2, A033273(n+1)])`
-/

namespace A111939.P14632825315370369858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111939.P14632825315370369858

namespace A111939

/-- `A000720(eq[2, A033273(n+1)])` -/
def P14632825315370369858.Spec : Prop :=
  ∀ n, P14632825315370369858.a n = A111939 (n + 1)

end A111939

/-! ## A111939.P7274033800990760765

`A186621(n+1)-A176193(n+1)`
-/

namespace A111939.P7274033800990760765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) - A176193 (n + 1)

end

end A111939.P7274033800990760765

namespace A111939

/-- `A186621(n+1)-A176193(n+1)` -/
def P7274033800990760765.Spec : Prop :=
  ∀ n, P7274033800990760765.a n = A111939 (n + 1)

theorem P7274033800990760765.correct : P7274033800990760765.Spec := by
  intro n
  simp only [A111939, Nat.add_sub_cancel, A111939.P7274033800990760765.a, A111939.P7541202206482791046.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001358, A001358.P632087320844056370.a, A176193, A176193.P9374032312984906973.a, A186621, A186621.P5089299060388261365.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A111939

/-! ## A111939.P11430930481190261935

`A000720(record[n/a(A001222(n))])` with `a(0)=4, a(1)=2`
-/

namespace A111939.P11430930481190261935
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  (n : ℚ) / f1 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A111939.P11430930481190261935

namespace A111939

/-- `A000720(record[n/a(A001222(n))])` -/
def P11430930481190261935.Spec : Prop :=
  ∀ n, P11430930481190261935.a n = A111939 (n + 1)

end A111939

/-! ## A111939.P2591756692800089752

`A000720(eq[4, a(A001222(n))²])` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A111939.P2591756692800089752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n f2 =>
  f2 (A001222 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A111939.P2591756692800089752

namespace A111939

/-- `A000720(eq[4, a(A001222(n))²])` -/
def P2591756692800089752.Spec : Prop :=
  ∀ n, P2591756692800089752.a n = A111939 (n + 1)

end A111939

/-! ## A111939.P10589087538764004337

`A001358(n+1)-(A176193(n+1)+1)`
-/

namespace A111939.P10589087538764004337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) - (A176193 (n + 1) + 1)

end

end A111939.P10589087538764004337

namespace A111939

/-- `A001358(n+1)-(A176193(n+1)+1)` -/
def P10589087538764004337.Spec : Prop :=
  ∀ n, P10589087538764004337.a n = A111939 (n + 1)

theorem P10589087538764004337.correct : P10589087538764004337.Spec := by
  intro n
  simp only [A111939, Nat.add_sub_cancel, A111939.P10589087538764004337.a, A111939.P7541202206482791046.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001358, A001358.P632087320844056370.a, A176193, A176193.P9374032312984906973.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A111939

/-! ## A111939.P5526050038296972385

`A000720(eq[2, A001222(3*n-(n-2))-1])`
-/

namespace A111939.P5526050038296972385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((3 * n : ℤ) - ((n : ℤ) - 2)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111939.P5526050038296972385

namespace A111939

/-- `A000720(eq[2, A001222(3*n-(n-2))-1])` -/
def P5526050038296972385.Spec : Prop :=
  ∀ n, P5526050038296972385.a n = A111939 (n + 1)

end A111939

/-! ## A111939.P10701312214698858689

`A000720(A084126(n+1)*A084127(n+1))`
-/

namespace A111939.P10701312214698858689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A084126 (n + 1) * A084127 (n + 1)).toNat

end

end A111939.P10701312214698858689

namespace A111939

/-- `A000720(A084126(n+1)*A084127(n+1))` -/
def P10701312214698858689.Spec : Prop :=
  ∀ n, P10701312214698858689.a n = A111939 (n + 1)

end A111939

/-! ## A111939.P5887351987848110025

`A000720(A176540(n+2))`
-/

namespace A111939.P5887351987848110025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A176540 (n + 2)).toNat

end

end A111939.P5887351987848110025

namespace A111939

/-- `A000720(A176540(n+2))` -/
def P5887351987848110025.Spec : Prop :=
  ∀ n, P5887351987848110025.a n = A111939 (n + 1)

end A111939

/-! ## A111939.P1253733379525658641

`A122489(n+2)-(A122489(n+1)+A088700(n+1))`
-/

namespace A111939.P1253733379525658641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122489 (n + 2) - (A122489 (n + 1) + A088700 (n + 1))

end

end A111939.P1253733379525658641

namespace A111939

/-- `A122489(n+2)-(A122489(n+1)+A088700(n+1))` -/
def P1253733379525658641.Spec : Prop :=
  ∀ n, P1253733379525658641.a n = A111939 (n + 1)

end A111939

/-! ## A111939.P17586590916405257315

`A122489(n+2)-(A176451(n+2)+A122489(n+1))`
-/

namespace A111939.P17586590916405257315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122489 (n + 2) - (A176451 (n + 2) + A122489 (n + 1))

end

end A111939.P17586590916405257315

namespace A111939

/-- `A122489(n+2)-(A176451(n+2)+A122489(n+1))` -/
def P17586590916405257315.Spec : Prop :=
  ∀ n, P17586590916405257315.a n = A111939 (n + 1)

end A111939

/-! ## A111939.P13724213637577399409

`A000720(A373656(n+1))-(n+1)`
-/

namespace A111939.P13724213637577399409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A373656 (n + 1)).toNat - (n + 1 : ℤ)

end

end A111939.P13724213637577399409

namespace A111939

/-- `A000720(A373656(n+1))-(n+1)` -/
def P13724213637577399409.Spec : Prop :=
  ∀ n, P13724213637577399409.a n = A111939 (n + 1)

end A111939

/-!
# A111940: Triangle P, read by rows, that satisfies [P^-1](n,k) = P(n+1,k+1) for n >= k >= 0, with P(k,k)=1 and P(k+1,1)=P(k+1,0) for k >= 0, where [P^-1] denotes the matrix inverse of P.

The programs for A111940, there is no canonical definition to state claims against.
-/

/-! ## A111940.P779390150420238632

`A167374(A060510(n+1)+n)`
-/

namespace A111940.P779390150420238632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 (A060510 (n + 1) + (n : ℤ)).toNat

end

end A111940.P779390150420238632

/-! ## A111940.P6663246533983956790

`A167374(A133083(n+1)-1+n)`
-/

namespace A111940.P6663246533983956790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 (A133083 (n + 1) - 1 + (n : ℤ)).toNat

end

end A111940.P6663246533983956790

/-! ## A111940.P18378016079078714605

`A167374(A217575(n+2)%2+n)`
-/

namespace A111940.P18378016079078714605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 (Int.tmod (A217575 (n + 2)) 2 + (n : ℤ)).toNat

end

end A111940.P18378016079078714605

/-! ## A111940.P4660810664004941266

`A167374(and(1, A002262(n+1))+n)`
-/

namespace A111940.P4660810664004941266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 (Int.land 1 (A002262 (n + 1)) + (n : ℤ)).toNat

end

end A111940.P4660810664004941266

/-! ## A111940.P828535307920847802

`A008683(A130321(n)/A133083(n+1))`
-/

namespace A111940.P828535307920847802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((A130321 n : ℚ) / (A133083 (n + 1) : ℚ))).toNat

end

end A111940.P828535307920847802

/-! ## A111940.P9237917148189942728

`A112299(A130321(n)/A133083(n+1))`
-/

namespace A111940.P9237917148189942728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112299 (SequenceMachineLib.roundAway ((A130321 n : ℚ) / (A133083 (n + 1) : ℚ))).toNat

end

end A111940.P9237917148189942728

/-! ## A111940.P12208085595439139722

`A319993(A099884(n)/A133083(n+1))`
-/

namespace A111940.P12208085595439139722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319993 (SequenceMachineLib.roundAway ((A099884 n : ℚ) / (A133083 (n + 1) : ℚ))).toNat

end

end A111940.P12208085595439139722

/-! ## A111940.P17614832645227853943

`A319993(A130321(n)/A133083(n+1))`
-/

namespace A111940.P17614832645227853943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319993 (SequenceMachineLib.roundAway ((A130321 n : ℚ) / (A133083 (n + 1) : ℚ))).toNat

end

end A111940.P17614832645227853943

/-! ## A111940.P3027288531303631274

`A133080(n+1)-A010054(A056011(n+3))`
-/

namespace A111940.P3027288531303631274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133080 (n + 1) - A010054 (A056011 (n + 3)).toNat

end

end A111940.P3027288531303631274

/-! ## A111940.P8633626513092110970

`or(1, A106467(n))*A106467(A181133(n+1))`
-/

namespace A111940.P8633626513092110970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A106467 n) * A106467 (A181133 (n + 1)).toNat

end

end A111940.P8633626513092110970

/-!
# A111941: Matrix log of triangle A111940, which shifts columns left and up under matrix inverse; these terms are the result of multiplying each element in row n and column k by (n-k)!.

The programs for A111941, there is no canonical definition to state claims against.
-/

/-! ## A111941.P14438928087675766739

`A015435(A002262(n))*A111942(A025581(n))`
-/

namespace A111941.P14438928087675766739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015435 (A002262 n).toNat * A111942 (A025581 n).toNat

end

end A111941.P14438928087675766739

/-! ## A111941.P12447704314001432544

`A111942(A025581(n))*A212157(A212207(n))`
-/

namespace A111941.P12447704314001432544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111942 (A025581 n).toNat * A212157 (A212207 n).toNat

end

end A111941.P12447704314001432544

/-! ## A111941.P17988674616198286679

`A131851(abs(A111848(n)))`
-/

namespace A111941.P17988674616198286679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 |A111848 n|.toNat

end

end A111941.P17988674616198286679

/-!
# A111942: Column 0 of the matrix logarithm (A111941) of triangle A111940, which shifts columns left and up under matrix inverse; these terms are the result of multiplying the element in row n by n!.

The programs for A111942, there is no canonical definition to state claims against.
-/

/-! ## A111942.P4528960707610671755

`-(floor(n/2)*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A111942.P4528960707610671755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  -(⌊(n : ℚ) / 2⌋ * a (n - 1))

end

end A111942.P4528960707610671755

/-! ## A111942.P6966614248641403989

`floor((1-n)/2)*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A111942.P6966614248641403989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(1 - (n : ℤ) : ℚ) / 2⌋ * a (n - 1)

end

end A111942.P6966614248641403989

/-! ## A111942.P6294904626812606096

`(n%2-n)*a(n-1)/2` with `a(0)=0, a(1)=1`
-/

namespace A111942.P6294904626812606096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (((n % 2 : ℕ) : ℤ) - (n : ℤ) : ℚ) * (a (n - 1) / 2)

end

end A111942.P6294904626812606096

/-! ## A111942.P477774516451212745

`floor((∑[a(n-2)²]-n)*a(n-1))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A111942.P477774516451212745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)) * a (n - 1)

end

end A111942.P477774516451212745

/-! ## A111942.P15496093880413102342

`floor((∑[floor(a(n-2))]-n)*a(n-1))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A111942.P15496093880413102342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)) * a (n - 1)

end

end A111942.P15496093880413102342

/-! ## A111942.P16635610665216437381

`-(a(n-1)*A004526(n))` with `a(0)=0, a(1)=1`
-/

namespace A111942.P16635610665216437381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  -(a (n - 1) * A004526 n)

end

end A111942.P16635610665216437381

/-! ## A111942.P17750789639431281506

`-(a(n-1)*A123108(n))` with `a(0)=0, a(1)=1`
-/

namespace A111942.P17750789639431281506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  -(a (n - 1) * A123108 n)

end

end A111942.P17750789639431281506

/-! ## A111942.P14620709538117673628

`a(n-1)*A168050(n+1)` with `a(0)=0, a(1)=1`
-/

namespace A111942.P14620709538117673628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) * A168050 (n + 1)

end

end A111942.P14620709538117673628

/-! ## A111942.P9131505777324828214

`floor(-a(n-1))*A008615(3*n)` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A111942.P9131505777324828214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (-a (n - 1)) * A008615 (3 * n)

end

end A111942.P9131505777324828214

/-! ## A111942.P11862925912128980210

`a(n-1)*A024000(A008619(n))` with `a(0)=0, a(1)=1`
-/

namespace A111942.P11862925912128980210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) * A024000 (A008619 n).toNat

end

end A111942.P11862925912128980210

/-!
# A111943: Prime p with prime gap q - p of n-th record Cramer-Shanks-Granville ratio, where q is smallest prime larger than p and C-S-G ratio is (q-p)/(log p)^2.

The programs for A111943, there is no canonical definition to state claims against.
-/

/-! ## A111943.P1978857864335032556

`A124147(n+6)`
-/

namespace A111943.P1978857864335032556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124147 (n + 6)

end

end A111943.P1978857864335032556

/-! ## A111943.P2882979162019368333

`A182315(eq[4, A060548(n+1)])`
-/

namespace A111943.P2882979162019368333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182315 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111943.P2882979162019368333

/-!
# A111944: Number of different lengths of cycles for vectors of length n under the Ducci map.

The programs for A111944, there is no canonical definition to state claims against.
-/

/-! ## A111944.P4411542028483549611

`A326987(n+1)+A275062(A275062(floor(2*ϕ*n)))`
-/

namespace A111944.P4411542028483549611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326987 (n + 1) + A275062 (A275062 ⌊2 * (Real.goldenRatio * (n : ℝ))⌋.toNat).toNat

end

end A111944.P4411542028483549611

/-! ## A111944.P4138299325801970498

`A326987(n+1)+A326976(A108917(n))`
-/

namespace A111944.P4138299325801970498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326987 (n + 1) + A326976 (A108917 n).toNat

end

end A111944.P4138299325801970498

/-! ## A111944.P9051385898617124582

`A188169((A000265(n+1)^A001511(n+1))²)`
-/

namespace A111944.P9051385898617124582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188169 (SequenceMachineLib.roundAway (((A000265 (n + 1) : ℚ) ^ (A001511 (n + 1) : ℤ)) ^ 2)).toNat

end

end A111944.P9051385898617124582

/-!
# A111946: Triangle read by rows: T(n,k) = gcd(Fibonacci(n), Fibonacci(k)), 1 <= k <= n.

The programs for A111946, the canonical program `A111946.P3190821044571146182` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111946 has offset 1).

The definition of A111946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111946.P1530543909973830766

`A000045(A050873(n+1))`
-/

namespace A111946.P1530543909973830766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A050873 (n + 1)).toNat

end

end A111946.P1530543909973830766

namespace A111946

/-- `A000045(A050873(n+1))` -/
def P1530543909973830766.Spec : Prop :=
  ∀ n, P1530543909973830766.a n = A111946 (n + 1)

end A111946

/-! ## A111946.P5066455585886373754

`A212804(A050873(n+1)+1)`
-/

namespace A111946.P5066455585886373754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A050873 (n + 1) + 1).toNat

end

end A111946.P5066455585886373754

namespace A111946

/-- `A212804(A050873(n+1)+1)` -/
def P5066455585886373754.Spec : Prop :=
  ∀ n, P5066455585886373754.a n = A111946 (n + 1)

end A111946

/-! ## A111946.P3190821044571146182

`gcd(A098356(n), A104763(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A111946

/-- `gcd(A098356(n), A104763(n+1))` -/
def P3190821044571146182.Spec : Prop :=
  ∀ n, (P3190821044571146182.a n : ℤ) = A111946 (n + 1)

theorem P3190821044571146182.correct : P3190821044571146182.Spec := by
  intro n
  simp only [A111946, Nat.add_sub_cancel]

end A111946

/-! ## A111946.P6907192267673046636

`A000045(gcd(A002260(n+1), A025581(n)))`
-/

namespace A111946.P6907192267673046636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.gcd (A002260 (n + 1)) (A025581 n))

end

end A111946.P6907192267673046636

namespace A111946

/-- `A000045(gcd(A002260(n+1), A025581(n)))` -/
def P6907192267673046636.Spec : Prop :=
  ∀ n, P6907192267673046636.a n = A111946 (n + 1)

end A111946

/-! ## A111946.P5622494846188826469

`A000045(A002024(n+1)/A054531(n+1))`
-/

namespace A111946.P5622494846188826469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((A002024 (n + 1) : ℚ) / (A054531 (n + 1) : ℚ))).toNat

end

end A111946.P5622494846188826469

namespace A111946

/-- `A000045(A002024(n+1)/A054531(n+1))` -/
def P5622494846188826469.Spec : Prop :=
  ∀ n, P5622494846188826469.a n = A111946 (n + 1)

end A111946

/-! ## A111946.P10494954960074598665

`A000045(gcd(A002024(n+1), A004202(n+1)))`
-/

namespace A111946.P10494954960074598665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.gcd (A002024 (n + 1)) (A004202 (n + 1)))

end

end A111946.P10494954960074598665

namespace A111946

/-- `A000045(gcd(A002024(n+1), A004202(n+1)))` -/
def P10494954960074598665.Spec : Prop :=
  ∀ n, P10494954960074598665.a n = A111946 (n + 1)

end A111946

/-! ## A111946.P4710169066415588243

`A000045(A109004(A014132(n+1)))`
-/

namespace A111946.P4710169066415588243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A109004 (A014132 (n + 1)).toNat).toNat

end

end A111946.P4710169066415588243

namespace A111946

/-- `A000045(A109004(A014132(n+1)))` -/
def P4710169066415588243.Spec : Prop :=
  ∀ n, P4710169066415588243.a n = A111946 (n + 1)

end A111946

/-! ## A111946.P10146769127509186391

`A174430(A014132(n+1))`
-/

namespace A111946.P10146769127509186391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174430 (A014132 (n + 1)).toNat

end

end A111946.P10146769127509186391

namespace A111946

/-- `A174430(A014132(n+1))` -/
def P10146769127509186391.Spec : Prop :=
  ∀ n, P10146769127509186391.a n = A111946 (n + 1)

end A111946

/-! ## A111946.P9474638329189417830

`A000045(A067815(A004202(n+1)))`
-/

namespace A111946.P9474638329189417830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A067815 (A004202 (n + 1)).toNat).toNat

end

end A111946.P9474638329189417830

namespace A111946

/-- `A000045(A067815(A004202(n+1)))` -/
def P9474638329189417830.Spec : Prop :=
  ∀ n, P9474638329189417830.a n = A111946 (n + 1)

end A111946

/-! ## A111946.P6690793395513669028

`A000045(A067815(A063657(n+1)))`
-/

namespace A111946.P6690793395513669028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A067815 (A063657 (n + 1)).toNat).toNat

end

end A111946.P6690793395513669028

namespace A111946

/-- `A000045(A067815(A063657(n+1)))` -/
def P6690793395513669028.Spec : Prop :=
  ∀ n, P6690793395513669028.a n = A111946 (n + 1)

end A111946

/-! ## A111946.P17038244883627063245

`A000045(A289508(A087112(n+1)))`
-/

namespace A111946.P17038244883627063245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A289508 (A087112 (n + 1)).toNat).toNat

end

end A111946.P17038244883627063245

namespace A111946

/-- `A000045(A289508(A087112(n+1)))` -/
def P17038244883627063245.Spec : Prop :=
  ∀ n, P17038244883627063245.a n = A111946 (n + 1)

end A111946

/-! ## A111946.P6597603609940725739

`A020650(A046143(n+1))`
-/

namespace A111946.P6597603609940725739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 (A046143 (n + 1)).toNat

end

end A111946.P6597603609940725739

namespace A111946

/-- `A020650(A046143(n+1))` -/
def P6597603609940725739.Spec : Prop :=
  ∀ n, P6597603609940725739.a n = A111946 (n + 1)

end A111946

/-! ## A111946.P9448805426855729510

`A000045(A093057(n+1)+1)`
-/

namespace A111946.P9448805426855729510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A093057 (n + 1) + 1).toNat

end

end A111946.P9448805426855729510

namespace A111946

/-- `A000045(A093057(n+1)+1)` -/
def P9448805426855729510.Spec : Prop :=
  ∀ n, P9448805426855729510.a n = A111946 (n + 1)

end A111946

/-! ## A111946.P1692222565943192045

`A000045(A005555(A093057(n+1)))`
-/

namespace A111946.P1692222565943192045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A005555 (A093057 (n + 1)).toNat).toNat

end

end A111946.P1692222565943192045

namespace A111946

/-- `A000045(A005555(A093057(n+1)))` -/
def P1692222565943192045.Spec : Prop :=
  ∀ n, P1692222565943192045.a n = A111946 (n + 1)

end A111946

/-! ## A111946.P485261546651624514

`A000045(A099244(A099627(n)))`
-/

namespace A111946.P485261546651624514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A099244 (A099627 n).toNat).toNat

end

end A111946.P485261546651624514

namespace A111946

/-- `A000045(A099244(A099627(n)))` -/
def P485261546651624514.Spec : Prop :=
  ∀ n, P485261546651624514.a n = A111946 (n + 1)

end A111946

/-!
# A111947: Admirable Harshad numbers.

The programs for A111947, there is no canonical definition to state claims against.
-/

/-! ## A111947.P6977732954950994709

`∩[A005349(n+1), A111592(n+1)]`
-/

namespace A111947.P6977732954950994709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111947.P6977732954950994709

/-! ## A111947.P9873842855628293496

`∩[A111592(n+1), A082516(n)+a(n-1)]` with `a(0)=1`
-/

namespace A111947.P9873842855628293496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A082516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111947.P9873842855628293496

/-! ## A111947.P12439462176697182417

`∩[A111592(n+1), A113315(n+1)*A325454(n+1)]`
-/

namespace A111947.P12439462176697182417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113315 (n + 1) * A325454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111947.P12439462176697182417

/-! ## A111947.P13929553848949390296

`record[A360074(A111592(n+1))]`
-/

namespace A111947.P13929553848949390296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360074 (A111592 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111947.P13929553848949390296

/-! ## A111947.P11086999592365031655

`filter[A111592(n+1), A188641(#)]`
-/

namespace A111947.P11086999592365031655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A111947.P11086999592365031655

/-!
# A111948: Admirable Harshad numbers n such that the subtracted divisor is equal to the digital sum of n.

The programs for A111948, there is no canonical definition to state claims against.
-/

/-! ## A111948.P6448517865368359562

`filter[A062768(n+1), A122895(#)]`
-/

namespace A111948.P6448517865368359562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062768 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122895 (f1 j).toNat = 1) n)

end

end A111948.P6448517865368359562

/-! ## A111948.P16902734264364175646

`filter[A109396(n+3), A153639(#)]`
-/

namespace A111948.P16902734264364175646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109396 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A153639 (f1 j).toNat = 1) n)

end

end A111948.P16902734264364175646

/-!
# A111949: Expansion of eta(q) * eta(q^2) * eta(q^10) * eta(q^20) / (eta(q^4) * eta(q^5)) in powers of q.

The programs for A111949, the canonical program `A111949.P10964253214955943244` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111949 has offset 1).

The definition of A111949 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111949.P8352827403992087099

`A143323(n+1)/(-1)^n`
-/

namespace A111949.P8352827403992087099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143323 (n + 1) : ℚ) / ((-1) ^ n : ℚ)

end

end A111949.P8352827403992087099

namespace A111949

/-- `A143323(n+1)/(-1)^n` -/
def P8352827403992087099.Spec : Prop :=
  ∀ n, P8352827403992087099.a n = (A111949 (n + 1) : ℚ)

end A111949

/-! ## A111949.P16662402252947915475

`A033999(n)*A143323(n+1)`
-/

namespace A111949.P16662402252947915475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A143323 (n + 1)

end

end A111949.P16662402252947915475

namespace A111949

/-- `A033999(n)*A143323(n+1)` -/
def P16662402252947915475.Spec : Prop :=
  ∀ n, P16662402252947915475.a n = A111949 (n + 1)

end A111949

/-! ## A111949.P1597286738225294575

`A035170(n+1)-A028586(n+1)`
-/

namespace A111949.P1597286738225294575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035170 (n + 1) - A028586 (n + 1)

end

end A111949.P1597286738225294575

namespace A111949

/-- `A035170(n+1)-A028586(n+1)` -/
def P1597286738225294575.Spec : Prop :=
  ∀ n, P1597286738225294575.a n = A111949 (n + 1)

end A111949

/-! ## A111949.P9714815159976569660

`A033718(n+1)-A035170(n+1)`
-/

namespace A111949.P9714815159976569660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033718 (n + 1) - A035170 (n + 1)

end

end A111949.P9714815159976569660

namespace A111949

/-- `A033718(n+1)-A035170(n+1)` -/
def P9714815159976569660.Spec : Prop :=
  ∀ n, P9714815159976569660.a n = A111949 (n + 1)

end A111949

/-! ## A111949.P3774245483448955598

`A124233(n+1)-A028586(n+1)`
-/

namespace A111949.P3774245483448955598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124233 (n + 1) - A028586 (n + 1)

end

end A111949.P3774245483448955598

namespace A111949

/-- `A124233(n+1)-A028586(n+1)` -/
def P3774245483448955598.Spec : Prop :=
  ∀ n, P3774245483448955598.a n = A111949 (n + 1)

end A111949

/-! ## A111949.P10168411181649063876

`A033718(n+1)-A124233(n+1)`
-/

namespace A111949.P10168411181649063876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033718 (n + 1) - A124233 (n + 1)

end

end A111949.P10168411181649063876

namespace A111949

/-- `A033718(n+1)-A124233(n+1)` -/
def P10168411181649063876.Spec : Prop :=
  ∀ n, P10168411181649063876.a n = A111949 (n + 1)

end A111949

/-! ## A111949.P7346270808756607778

`A035170(n+1)*A209615(n+1)`
-/

namespace A111949.P7346270808756607778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035170 (n + 1) * A209615 (n + 1)

end

end A111949.P7346270808756607778

namespace A111949

/-- `A035170(n+1)*A209615(n+1)` -/
def P7346270808756607778.Spec : Prop :=
  ∀ n, P7346270808756607778.a n = A111949 (n + 1)

end A111949

/-! ## A111949.P14331421065519103809

`(A033718(n+1)-A028586(n+1))/2`
-/

namespace A111949.P14331421065519103809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033718 (n + 1) - A028586 (n + 1) : ℚ) / 2

end

end A111949.P14331421065519103809

namespace A111949

/-- `(A033718(n+1)-A028586(n+1))/2` -/
def P14331421065519103809.Spec : Prop :=
  ∀ n, P14331421065519103809.a n = (A111949 (n + 1) : ℚ)

end A111949

/-! ## A111949.P10964253214955943244

`∑{d}[n+1, A035187(#)*A275966((n+1)/#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A111949

/-- `∑{d}[n+1, A035187(#)*A275966((n+1)/#)]` -/
def P10964253214955943244.Spec : Prop :=
  ∀ n, P10964253214955943244.a n = A111949 (n + 1)

theorem P10964253214955943244.correct : P10964253214955943244.Spec := by
  intro n
  simp only [A111949, Nat.add_sub_cancel]

end A111949

/-! ## A111949.P8685962316919793412

`A143323(A022998(n+1))`
-/

namespace A111949.P8685962316919793412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143323 (A022998 (n + 1)).toNat

end

end A111949.P8685962316919793412

namespace A111949

/-- `A143323(A022998(n+1))` -/
def P8685962316919793412.Spec : Prop :=
  ∀ n, P8685962316919793412.a n = A111949 (n + 1)

end A111949

/-! ## A111949.P16044349190329806717

`A143323(A257088(n+1))`
-/

namespace A111949.P16044349190329806717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143323 (A257088 (n + 1)).toNat

end

end A111949.P16044349190329806717

namespace A111949

/-- `A143323(A257088(n+1))` -/
def P16044349190329806717.Spec : Prop :=
  ∀ n, P16044349190329806717.a n = A111949 (n + 1)

end A111949

/-! ## A111949.P16470216718491836201

`A143323(2*(n+1))`
-/

namespace A111949.P16470216718491836201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143323 (2 * (n + 1))

end

end A111949.P16470216718491836201

namespace A111949

/-- `A143323(2*(n+1))` -/
def P16470216718491836201.Spec : Prop :=
  ∀ n, P16470216718491836201.a n = A111949 (n + 1)

end A111949

/-! ## A111949.P2514863831805879472

`or(A000007(n), A143323(-xor(2*n, -2)))`
-/

namespace A111949.P2514863831805879472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A143323 (-Int.xor (2 * n : ℤ) (-2)).toNat)

end

end A111949.P2514863831805879472

namespace A111949

/-- `or(A000007(n), A143323(-xor(2*n, -2)))` -/
def P2514863831805879472.Spec : Prop :=
  ∀ n, P2514863831805879472.a n = A111949 (n + 1)

end A111949

/-! ## A111949.P2743698544442846374

`or(A000007(n), A143323(A103517(n)))`
-/

namespace A111949.P2743698544442846374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A143323 (A103517 n).toNat)

end

end A111949.P2743698544442846374

namespace A111949

/-- `or(A000007(n), A143323(A103517(n)))` -/
def P2743698544442846374.Spec : Prop :=
  ∀ n, P2743698544442846374.a n = A111949 (n + 1)

end A111949

/-! ## A111949.P2597660647208857557

`A143323(A103517(n))+A000007(n+1)`
-/

namespace A111949.P2597660647208857557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143323 (A103517 n).toNat + A000007 (n + 1)

end

end A111949.P2597660647208857557

namespace A111949

/-- `A143323(A103517(n))+A000007(n+1)` -/
def P2597660647208857557.Spec : Prop :=
  ∀ n, P2597660647208857557.a n = A111949 (n + 1)

end A111949

/-! ## A111949.P16681710564016648313

`A020985(2*n+1)*A035170(n+1)*A020985(n+1)`
-/

namespace A111949.P16681710564016648313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (2 * n + 1) * A035170 (n + 1) * A020985 (n + 1)

end

end A111949.P16681710564016648313

namespace A111949

/-- `A020985(2*n+1)*A035170(n+1)*A020985(n+1)` -/
def P16681710564016648313.Spec : Prop :=
  ∀ n, P16681710564016648313.a n = A111949 (n + 1)

end A111949

/-!
# A111950: Smallest order n twin prime cluster.

The programs for A111950, there is no canonical definition to state claims against.
-/

/-! ## A111950.P9610631606875995705

`A087641(n+1)%(A001359(n+1)-record[A087641(n+1)])`
-/

namespace A111950.P9610631606875995705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087641 (n + 1)) (A001359 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A111950.P9610631606875995705

/-!
# A111951: Period 8: repeat [0,3,1,2,2,1,3,0].

The programs for A111951, the canonical program `A111951.P13791240703544801930` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111951 has offset 0).

The definition of A111951 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111951.P13791240703544801930

`and(3, ∑[-n])`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111951

/-- `and(3, ∑[-n])` -/
def P13791240703544801930.Spec : Prop :=
  ∀ n, P13791240703544801930.a n = A111951 n

theorem P13791240703544801930.correct : P13791240703544801930.Spec := by
  intro n
  simp only [A111951]

end A111951

/-!
# A111952: a(n) = 3*n mod 7.

The programs for A111952, the canonical program `A111952.P11756171292769996529` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111952 has offset 0).

The definition of A111952 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111952.P11756171292769996529

`a(n-7)` with `a(0)=0, a(1)=3, a(2)=6, a(3)=2, a(4)=5, a(5)=1, a(6)=4`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111952

/-- `a(n-7)` -/
def P11756171292769996529.Spec : Prop :=
  ∀ n, (P11756171292769996529.a n : ℤ) = A111952 n

theorem P11756171292769996529.correct : P11756171292769996529.Spec := by
  intro n
  simp only [A111952]

end A111952

/-!
# A111954: a(n) = A000129(n) + (-1)^n.

The programs for A111954, the canonical program `A111954.P2161245122123074090` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111954 has offset 0).

The definition of A111954 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000129(n)+(-1)^n` (program `A111954.P2161245122123074090`, by `A111954.P2161245122123074090.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111954.P8217586668819134909

`a(n-1)+3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A111954.P8217586668819134909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3] fun n a =>
  a (n - 1) + 3 * a (n - 2) + a (n - 3)

end

end A111954.P8217586668819134909

namespace A111954

/-- `a(n-1)+3*a(n-2)+a(n-3)` -/
def P8217586668819134909.Spec : Prop :=
  ∀ n, (P8217586668819134909.a n : ℤ) = A111954 n

end A111954

/-! ## A111954.P2161245122123074090

`A000129(n)+(-1)^n`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A111954

/-- `A000129(n)+(-1)^n` -/
def P2161245122123074090.Spec : Prop :=
  ∀ n, P2161245122123074090.a n = A111954 n

theorem P2161245122123074090.correct : P2161245122123074090.Spec := by
  intro n
  simp only [A111954]

end A111954

/-! ## A111954.P15393676448298001152

`ogf((-1+x)/(-1+x+3x^2+x^3))`
-/

namespace A111954.P15393676448298001152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -1, -3, -1] n

end

end A111954.P15393676448298001152

namespace A111954

/-- `ogf((-1+x)/(-1+x+3x^2+x^3))` -/
def P15393676448298001152.Spec : Prop :=
  ∀ n, P15393676448298001152.a n = A111954 n

end A111954

/-! ## A111954.P229728729165670934

`xor(1, A000129(n))`
-/

namespace A111954.P229728729165670934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A000129 n)

end

end A111954.P229728729165670934

namespace A111954

/-- `xor(1, A000129(n))` -/
def P229728729165670934.Spec : Prop :=
  ∀ n, P229728729165670934.a n = A111954 n

end A111954

/-! ## A111954.P6903494079494578308

`abs(∑[A123335(n)])`
-/

namespace A111954.P6903494079494578308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A111954.P6903494079494578308

namespace A111954

/-- `abs(∑[A123335(n)])` -/
def P6903494079494578308.Spec : Prop :=
  ∀ n, P6903494079494578308.a n = A111954 n

end A111954

/-! ## A111954.P11852553071876562782

`xor(1, A174191(n)-1)`
-/

namespace A111954.P11852553071876562782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A174191 n - 1)

end

end A111954.P11852553071876562782

namespace A111954

/-- `xor(1, A174191(n)-1)` -/
def P11852553071876562782.Spec : Prop :=
  ∀ n, P11852553071876562782.a n = A111954 n

end A111954

/-! ## A111954.P5052622130158170742

`xor(1, A002965(2*n))`
-/

namespace A111954.P5052622130158170742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A002965 (2 * n))

end

end A111954.P5052622130158170742

namespace A111954

/-- `xor(1, A002965(2*n))` -/
def P5052622130158170742.Spec : Prop :=
  ∀ n, P5052622130158170742.a n = A111954 n

end A111954

/-! ## A111954.P11749057645072851341

`xor(1, A135153(2*n))`
-/

namespace A111954.P11749057645072851341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A135153 (2 * n))

end

end A111954.P11749057645072851341

namespace A111954

/-- `xor(1, A135153(2*n))` -/
def P11749057645072851341.Spec : Prop :=
  ∀ n, P11749057645072851341.a n = A111954 n

end A111954

/-! ## A111954.P4366796855952445956

`xor(1, A249576(3*n))`
-/

namespace A111954.P4366796855952445956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A249576 (3 * n))

end

end A111954.P4366796855952445956

namespace A111954

/-- `xor(1, A249576(3*n))` -/
def P4366796855952445956.Spec : Prop :=
  ∀ n, P4366796855952445956.a n = A111954 n

end A111954

/-! ## A111954.P4002668646505810492

`A001333(n)-a(n-1)` with `a(0)=1`
-/

namespace A111954.P4002668646505810492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001333 n - a (n - 1)

end

end A111954.P4002668646505810492

namespace A111954

/-- `A001333(n)-a(n-1)` -/
def P4002668646505810492.Spec : Prop :=
  ∀ n, P4002668646505810492.a n = A111954 n

end A111954

/-! ## A111954.P506766116804759358

`A078057(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A111954.P506766116804759358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078057 (n - 1) - a (n - 1)

end

end A111954.P506766116804759358

namespace A111954

/-- `A078057(n-1)-a(n-1)` -/
def P506766116804759358.Spec : Prop :=
  ∀ n, P506766116804759358.a n = A111954 n

end A111954

/-! ## A111954.P11649167434543140214

`A082766(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A111954.P11649167434543140214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A082766 (2 * n) - a (n - 1)

end

end A111954.P11649167434543140214

namespace A111954

/-- `A082766(2*n)-a(n-1)` -/
def P11649167434543140214.Spec : Prop :=
  ∀ n, P11649167434543140214.a n = A111954 n

end A111954

/-! ## A111954.P5449996516119878535

`A119016(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A111954.P5449996516119878535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A119016 (2 * n) - a (n - 1)

end

end A111954.P5449996516119878535

namespace A111954

/-- `A119016(2*n)-a(n-1)` -/
def P5449996516119878535.Spec : Prop :=
  ∀ n, P5449996516119878535.a n = A111954 n

end A111954

/-! ## A111954.P4612652408037194169

`A152113(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A111954.P4612652408037194169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A152113 (2 * n) - a (n - 1)

end

end A111954.P4612652408037194169

namespace A111954

/-- `A152113(2*n)-a(n-1)` -/
def P4612652408037194169.Spec : Prop :=
  ∀ n, P4612652408037194169.a n = A111954 n

end A111954

/-! ## A111954.P13878604730326993935

`A008346(n)+A006684(n)`
-/

namespace A111954.P13878604730326993935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 n + A006684 n

end

end A111954.P13878604730326993935

namespace A111954

/-- `A008346(n)+A006684(n)` -/
def P13878604730326993935.Spec : Prop :=
  ∀ n, P13878604730326993935.a n = A111954 n

end A111954

/-! ## A111954.P431900442035717114

`A033999(n)+A000129(n)`
-/

namespace A111954.P431900442035717114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A000129 n

end

end A111954.P431900442035717114

namespace A111954

/-- `A033999(n)+A000129(n)` -/
def P431900442035717114.Spec : Prop :=
  ∀ n, P431900442035717114.a n = A111954 n

theorem P431900442035717114.correct : P431900442035717114.Spec := by
  intro n
  simp only [A111954, Nat.add_sub_cancel, A111954.P431900442035717114.a, A111954.P2161245122123074090.a, A000129, A000129.P3563729298025900801.a, A033999, A033999.P17703899380244199787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111954

/-! ## A111954.P16608754194465969082

`A111352(n)+A097076(n)`
-/

namespace A111954.P16608754194465969082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111352 n + A097076 n

end

end A111954.P16608754194465969082

namespace A111954

/-- `A111352(n)+A097076(n)` -/
def P16608754194465969082.Spec : Prop :=
  ∀ n, P16608754194465969082.a n = A111954 n

end A111954

/-! ## A111954.P8967899364885342830

`A209971(n)+A114285(n)`
-/

namespace A111954.P8967899364885342830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209971 n + A114285 n

end

end A111954.P8967899364885342830

namespace A111954

/-- `A209971(n)+A114285(n)` -/
def P8967899364885342830.Spec : Prop :=
  ∀ n, P8967899364885342830.a n = A111954 n

end A111954

/-! ## A111954.P569599644927675059

`A228748(n)+A099925(n)`
-/

namespace A111954.P569599644927675059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228748 n + A099925 n

end

end A111954.P569599644927675059

namespace A111954

/-- `A228748(n)+A099925(n)` -/
def P569599644927675059.Spec : Prop :=
  ∀ n, P569599644927675059.a n = A111954 n

end A111954

/-! ## A111954.P15419108987387537930

`A060405(n)-A098600(n)`
-/

namespace A111954.P15419108987387537930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060405 n - A098600 n

end

end A111954.P15419108987387537930

namespace A111954

/-- `A060405(n)-A098600(n)` -/
def P15419108987387537930.Spec : Prop :=
  ∀ n, P15419108987387537930.a n = A111954 n

end A111954

/-!
# A111955: a(n) = A078343(n) + (-1)^n.

The programs for A111955, the canonical program `A111955.P17725153685513830976` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111955 has offset 0).

The definition of A111955 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A078343(n)+(-1)^n` (program `A111955.P17725153685513830976`, by `A111955.P17725153685513830976.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111955.P16939736084103642673

`a(n-1)+3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A111955.P16939736084103642673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  a (n - 1) + 3 * a (n - 2) + a (n - 3)

end

end A111955.P16939736084103642673

namespace A111955

/-- `a(n-1)+3*a(n-2)+a(n-3)` -/
def P16939736084103642673.Spec : Prop :=
  ∀ n, (P16939736084103642673.a n : ℤ) = A111955 n

end A111955

/-! ## A111955.P17725153685513830976

`A078343(n)+(-1)^n`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A111955

/-- `A078343(n)+(-1)^n` -/
def P17725153685513830976.Spec : Prop :=
  ∀ n, P17725153685513830976.a n = A111955 n

theorem P17725153685513830976.correct : P17725153685513830976.Spec := by
  intro n
  simp only [A111955]

end A111955

/-! ## A111955.P14950258441086333758

`ogf((x+3x^2)/(1-x-3x^2-x^3))`
-/

namespace A111955.P14950258441086333758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3] [1, -1, -3, -1] n

end

end A111955.P14950258441086333758

namespace A111955

/-- `ogf((x+3x^2)/(1-x-3x^2-x^3))` -/
def P14950258441086333758.Spec : Prop :=
  ∀ n, P14950258441086333758.a n = A111955 n

end A111955

/-! ## A111955.P12663755754731094469

`a(n-2)-2*xor(1, -a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A111955.P12663755754731094469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) - 2 * Int.xor 1 (-a (n - 1))

end

end A111955.P12663755754731094469

namespace A111955

/-- `a(n-2)-2*xor(1, -a(n-1))` -/
def P12663755754731094469.Spec : Prop :=
  ∀ n, P12663755754731094469.a n = A111955 n

end A111955

/-! ## A111955.P5609133237472538189

`a(n-2)-xor(3, 1-2*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A111955.P5609133237472538189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) - Int.xor 3 (1 - 2 * a (n - 1))

end

end A111955.P5609133237472538189

namespace A111955

/-- `a(n-2)-xor(3, 1-2*a(n-1))` -/
def P5609133237472538189.Spec : Prop :=
  ∀ n, P5609133237472538189.a n = A111955 n

end A111955

/-! ## A111955.P3212440806727224854

`a(n-2)+2*(a(n-1)+(-1)^n)` with `a(0)=0, a(1)=1`
-/

namespace A111955.P3212440806727224854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + 2 * (a (n - 1) + (-1) ^ n)

end

end A111955.P3212440806727224854

namespace A111955

/-- `a(n-2)+2*(a(n-1)+(-1)^n)` -/
def P3212440806727224854.Spec : Prop :=
  ∀ n, P3212440806727224854.a n = A111955 n

end A111955

/-! ## A111955.P7225008180228879803

`a(n-2)-xor(3, 1-a(n-1)-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A111955.P7225008180228879803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) - Int.xor 3 (1 - a (n - 1) - a (n - 1))

end

end A111955.P7225008180228879803

namespace A111955

/-- `a(n-2)-xor(3, 1-a(n-1)-a(n-1))` -/
def P7225008180228879803.Spec : Prop :=
  ∀ n, P7225008180228879803.a n = A111955 n

end A111955

/-! ## A111955.P10374726397296448074

`A000129(n+1)-A137199(n)`
-/

namespace A111955.P10374726397296448074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) - A137199 n

end

end A111955.P10374726397296448074

namespace A111955

/-- `A000129(n+1)-A137199(n)` -/
def P10374726397296448074.Spec : Prop :=
  ∀ n, P10374726397296448074.a n = A111955 n

end A111955

/-! ## A111955.P3691573138073417959

`A215928(n+1)-A137199(n)`
-/

namespace A111955.P3691573138073417959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (n + 1) - A137199 n

end

end A111955.P3691573138073417959

namespace A111955

/-- `A215928(n+1)-A137199(n)` -/
def P3691573138073417959.Spec : Prop :=
  ∀ n, P3691573138073417959.a n = A111955 n

end A111955

/-! ## A111955.P13586727329108542470

`A000035(n+1)+A078343(n)-A000035(n)`
-/

namespace A111955.P13586727329108542470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) + (A078343 n - A000035 n)

end

end A111955.P13586727329108542470

namespace A111955

/-- `A000035(n+1)+A078343(n)-A000035(n)` -/
def P13586727329108542470.Spec : Prop :=
  ∀ n, P13586727329108542470.a n = A111955 n

end A111955

/-! ## A111955.P12822192885259696394

`A001333(n+1)+A000129(n)-A182143(n)`
-/

namespace A111955.P12822192885259696394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) + (A000129 n - A182143 n)

end

end A111955.P12822192885259696394

namespace A111955

/-- `A001333(n+1)+A000129(n)-A182143(n)` -/
def P12822192885259696394.Spec : Prop :=
  ∀ n, P12822192885259696394.a n = A111955 n

end A111955

/-! ## A111955.P9240004899980954258

`A097075(n+1)+A097075(n)-A137199(n)`
-/

namespace A111955.P9240004899980954258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097075 (n + 1) + (A097075 n - A137199 n)

end

end A111955.P9240004899980954258

namespace A111955

/-- `A097075(n+1)+A097075(n)-A137199(n)` -/
def P9240004899980954258.Spec : Prop :=
  ∀ n, P9240004899980954258.a n = A111955 n

end A111955

/-! ## A111955.P13155526718848820405

`A097076(n+1)+A097076(n)-A137199(n)`
-/

namespace A111955.P13155526718848820405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097076 (n + 1) + (A097076 n - A137199 n)

end

end A111955.P13155526718848820405

namespace A111955

/-- `A097076(n+1)+A097076(n)-A137199(n)` -/
def P13155526718848820405.Spec : Prop :=
  ∀ n, P13155526718848820405.a n = A111955 n

end A111955

/-! ## A111955.P15154730893909548868

`A048654(n)-A182143(n)`
-/

namespace A111955.P15154730893909548868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 n - A182143 n

end

end A111955.P15154730893909548868

namespace A111955

/-- `A048654(n)-A182143(n)` -/
def P15154730893909548868.Spec : Prop :=
  ∀ n, P15154730893909548868.a n = A111955 n

end A111955

/-! ## A111955.P9230357528667271168

`Δ[A002203(n)-∑[A111954(n)]]`
-/

namespace A111955.P9230357528667271168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111954 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111955.P9230357528667271168

namespace A111955

/-- `Δ[A002203(n)-∑[A111954(n)]]` -/
def P9230357528667271168.Spec : Prop :=
  ∀ n, P9230357528667271168.a n = A111955 n

end A111955

/-! ## A111955.P7332628960711921104

`Δ[A002203(n)]-A111954(n+1)`
-/

namespace A111955.P7332628960711921104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A111954 (n + 1)

end

end A111955.P7332628960711921104

namespace A111955

/-- `Δ[A002203(n)]-A111954(n+1)` -/
def P7332628960711921104.Spec : Prop :=
  ∀ n, P7332628960711921104.a n = A111955 n

end A111955

/-! ## A111955.P16361792771661027999

`Δ[A100227(n)]-A111954(n+1)`
-/

namespace A111955.P16361792771661027999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A111954 (n + 1)

end

end A111955.P16361792771661027999

namespace A111955

/-- `Δ[A100227(n)]-A111954(n+1)` -/
def P16361792771661027999.Spec : Prop :=
  ∀ n, P16361792771661027999.a n = A111955 n

end A111955

/-! ## A111955.P13932490666642843202

`Δ[A100227(n)-A111954(n)]-A111954(n)`
-/

namespace A111955.P13932490666642843202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100227 n - A111954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A111954 n

end

end A111955.P13932490666642843202

namespace A111955

/-- `Δ[A100227(n)-A111954(n)]-A111954(n)` -/
def P13932490666642843202.Spec : Prop :=
  ∀ n, P13932490666642843202.a n = A111955 n

end A111955

/-! ## A111955.P3167291850255733809

`A002203(n+1)-(A111954(n+1)+A002203(n))`
-/

namespace A111955.P3167291850255733809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (n + 1) - (A111954 (n + 1) + A002203 n)

end

end A111955.P3167291850255733809

namespace A111955

/-- `A002203(n+1)-(A111954(n+1)+A002203(n))` -/
def P3167291850255733809.Spec : Prop :=
  ∀ n, P3167291850255733809.a n = A111955 n

end A111955

/-! ## A111955.P5349352411330402141

`A080039(n+1)-(A080039(n)+A000129(n+1))`
-/

namespace A111955.P5349352411330402141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080039 (n + 1) - (A080039 n + A000129 (n + 1))

end

end A111955.P5349352411330402141

namespace A111955

/-- `A080039(n+1)-(A080039(n)+A000129(n+1))` -/
def P5349352411330402141.Spec : Prop :=
  ∀ n, P5349352411330402141.a n = A111955 n

end A111955

/-!
# A111956: Triangle read by rows: T(n,k) = gcd(Lucas(n), Lucas(k)), 1 <= k <= n.

The programs for A111956, the canonical program `A111956.P16283236696051058647` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111956 has offset 1).

The definition of A111956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111956.P16283236696051058647

`gcd(A098356(n), A104765(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A111956

/-- `gcd(A098356(n), A104765(n+1))` -/
def P16283236696051058647.Spec : Prop :=
  ∀ n, (P16283236696051058647.a n : ℤ) = A111956 (n + 1)

theorem P16283236696051058647.correct : P16283236696051058647.Spec := by
  intro n
  simp only [A111956, Nat.add_sub_cancel]

end A111956

/-! ## A111956.P6811590609466103043

`gcd(A000032(A050873(n+1)), A180663(n))`
-/

namespace A111956.P6811590609466103043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000032 (A050873 (n + 1)).toNat) (A180663 n)

end

end A111956.P6811590609466103043

namespace A111956

/-- `gcd(A000032(A050873(n+1)), A180663(n))` -/
def P6811590609466103043.Spec : Prop :=
  ∀ n, (P6811590609466103043.a n : ℤ) = A111956 (n + 1)

end A111956

/-! ## A111956.P10988860570513724373

`gcd(A000045(A025581(n)), A284115(n+1))`
-/

namespace A111956.P10988860570513724373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000045 (A025581 n).toNat) (A284115 (n + 1))

end

end A111956.P10988860570513724373

namespace A111956

/-- `gcd(A000045(A025581(n)), A284115(n+1))` -/
def P10988860570513724373.Spec : Prop :=
  ∀ n, (P10988860570513724373.a n : ℤ) = A111956 (n + 1)

end A111956

/-! ## A111956.P16883722884710254203

`A204114(A245300(n)+1)`
-/

namespace A111956.P16883722884710254203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204114 (A245300 n + 1).toNat

end

end A111956.P16883722884710254203

namespace A111956

/-- `A204114(A245300(n)+1)` -/
def P16883722884710254203.Spec : Prop :=
  ∀ n, P16883722884710254203.a n = A111956 (n + 1)

end A111956

/-! ## A111956.P17283908927276313461

`gcd(A000032(A128139(n)), A098356(n))`
-/

namespace A111956.P17283908927276313461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000032 (A128139 n).toNat) (A098356 n)

end

end A111956.P17283908927276313461

namespace A111956

/-- `gcd(A000032(A128139(n)), A098356(n))` -/
def P17283908927276313461.Spec : Prop :=
  ∀ n, (P17283908927276313461.a n : ℤ) = A111956 (n + 1)

end A111956

/-! ## A111956.P14778234568957446069

`gcd(A000204(A128139(n)), A180663(n))`
-/

namespace A111956.P14778234568957446069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000204 (A128139 n).toNat) (A180663 n)

end

end A111956.P14778234568957446069

namespace A111956

/-- `gcd(A000204(A128139(n)), A180663(n))` -/
def P14778234568957446069.Spec : Prop :=
  ∀ n, (P14778234568957446069.a n : ℤ) = A111956 (n + 1)

end A111956

/-! ## A111956.P3120161872623621233

`A204114(A286146(n+1))`
-/

namespace A111956.P3120161872623621233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204114 (A286146 (n + 1)).toNat

end

end A111956.P3120161872623621233

namespace A111956

/-- `A204114(A286146(n+1))` -/
def P3120161872623621233.Spec : Prop :=
  ∀ n, P3120161872623621233.a n = A111956 (n + 1)

end A111956

/-!
# A111957: Triangle read by rows: T(n,k) = gcd(Fibonacci(n), Lucas(k)), 1 <= k <= n.

The programs for A111957, the canonical program `A111957.P3102712656651243960` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111957 has offset 1).

The definition of A111957 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111957.P3102712656651243960

`gcd(A104765(n+1), A131410(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A111957

/-- `gcd(A104765(n+1), A131410(n+1))` -/
def P3102712656651243960.Spec : Prop :=
  ∀ n, (P3102712656651243960.a n : ℤ) = A111957 (n + 1)

theorem P3102712656651243960.correct : P3102712656651243960.Spec := by
  intro n
  simp only [A111957, Nat.add_sub_cancel]

end A111957

/-! ## A111957.P1280878424381531666

`gcd(A000045(A123578(n)), A104765(n+1))`
-/

namespace A111957.P1280878424381531666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000045 (A123578 n).toNat) (A104765 (n + 1))

end

end A111957.P1280878424381531666

namespace A111957

/-- `gcd(A000045(A123578(n)), A104765(n+1))` -/
def P1280878424381531666.Spec : Prop :=
  ∀ n, (P1280878424381531666.a n : ℤ) = A111957 (n + 1)

end A111957

/-! ## A111957.P8683484997383779608

`gcd(A000032(A025581(n)), A284115(n+1))`
-/

namespace A111957.P8683484997383779608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000032 (A025581 n).toNat) (A284115 (n + 1))

end

end A111957.P8683484997383779608

namespace A111957

/-- `gcd(A000032(A025581(n)), A284115(n+1))` -/
def P8683484997383779608.Spec : Prop :=
  ∀ n, (P8683484997383779608.a n : ℤ) = A111957 (n + 1)

end A111957

/-! ## A111957.P3518296480532418270

`gcd(A000032(A063656(n)), A131410(n+1))`
-/

namespace A111957.P3518296480532418270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000032 (A063656 n).toNat) (A131410 (n + 1))

end

end A111957.P3518296480532418270

namespace A111957

/-- `gcd(A000032(A063656(n)), A131410(n+1))` -/
def P3518296480532418270.Spec : Prop :=
  ∀ n, (P3518296480532418270.a n : ℤ) = A111957 (n + 1)

end A111957

/-!
# A111958: Lucas numbers (A000032) mod 8.

The programs for A111958, the canonical program `A111958.P3829484070769114747` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111958 has offset 0).

The definition of A111958 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111958.P3829484070769114747

`(a(n-1)+a(n-2))%8` with `a(0)=2, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111958

/-- `(a(n-1)+a(n-2))%8` -/
def P3829484070769114747.Spec : Prop :=
  ∀ n, (P3829484070769114747.a n : ℤ) = A111958 n

theorem P3829484070769114747.correct : P3829484070769114747.Spec := by
  intro n
  simp only [A111958]

end A111958

/-!
# A111959: Renewal array for aerated central binomial coefficients.

The programs for A111959, there is no canonical definition to state claims against.
-/

/-! ## A111959.P11457793469070000707

`A110109(n)+A085491(A228963(n+1))`
-/

namespace A111959.P11457793469070000707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110109 n + A085491 (A228963 (n + 1)).toNat

end

end A111959.P11457793469070000707

/-! ## A111959.P2325845927491926126

`A000720(A180049(n+1)+1)%A109745(n+1)`
-/

namespace A111959.P2325845927491926126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (A180049 (n + 1) + 1).toNat) (A109745 (n + 1))

end

end A111959.P2325845927491926126

/-! ## A111959.P5772450922598451798

`A000720(A128174(n+1)*A248809(n)+1)%A109745(n+1)`
-/

namespace A111959.P5772450922598451798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (A128174 (n + 1) * A248809 n + 1).toNat) (A109745 (n + 1))

end

end A111959.P5772450922598451798

/-! ## A111959.P14801911952079413073

`A110109(A008554(n+1))`
-/

namespace A111959.P14801911952079413073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110109 (A008554 (n + 1)).toNat

end

end A111959.P14801911952079413073

/-!
# A111960: Renewal array for central trinomial numbers A002426.

The programs for A111960, there is no canonical definition to state claims against.
-/

/-! ## A111960.P11873183039426512005

`A185044(A343488(n))+A161009(n)`
-/

namespace A111960.P11873183039426512005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185044 (A343488 n).toNat + A161009 n

end

end A111960.P11873183039426512005

/-! ## A111960.P16242527355379646836

`or(A161009(n), A243566(A293936(n)))`
-/

namespace A111960.P16242527355379646836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A161009 n) (A243566 (A293936 n).toNat)

end

end A111960.P16242527355379646836

/-! ## A111960.P1532955365839953784

`or(A010051(A034824(n+1)), A161009(n))`
-/

namespace A111960.P1532955365839953784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (A034824 (n + 1)).toNat) (A161009 n)

end

end A111960.P1532955365839953784

/-! ## A111960.P12608284382520898241

`or(A161009(n), A354028(A187829(n+1)))`
-/

namespace A111960.P12608284382520898241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A161009 n) (A354028 (A187829 (n + 1)).toNat)

end

end A111960.P12608284382520898241

/-!
# A111961: Expansion of 1/(sqrt(1-2x-3x^2)-x).

The programs for A111961, there is no canonical definition to state claims against.
-/

/-! ## A111961.P5973563963852322990

`A109190(n)+A103435(n)`
-/

namespace A111961.P5973563963852322990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109190 n + A103435 n

end

end A111961.P5973563963852322990

/-! ## A111961.P10073995795243301907

`A109190(n)+Δ[A014334(n)]`
-/

namespace A111961.P10073995795243301907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109190 n + (f1 (n + 1) - f1 n)

end

end A111961.P10073995795243301907

/-! ## A111961.P1378729640868233324

`A036453(n+1)*A358092(n)`
-/

namespace A111961.P1378729640868233324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A358092 n

end

end A111961.P1378729640868233324

/-! ## A111961.P6123667859082527190

`A109189(∑[n])+A103435(n)`
-/

namespace A111961.P6123667859082527190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109189 (∑ j ∈ Finset.range (n + 1), f1 j) + A103435 n

end

end A111961.P6123667859082527190

/-! ## A111961.P4762388146094956524

`A103435(n)+A109189(A000217(n))`
-/

namespace A111961.P4762388146094956524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103435 n + A109189 (A000217 n).toNat

end

end A111961.P4762388146094956524

/-!
# A111962: Expansion of 1/(sqrt(1-2x-3x^2)-x^2).

The programs for A111962, there is no canonical definition to state claims against.
-/

/-! ## A111962.P4055344690889174736

`A156878(A274142(3*(n+1)))+A000045(n+1)`
-/

namespace A111962.P4055344690889174736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156878 (A274142 (3 * (n + 1))).toNat + A000045 (n + 1)

end

end A111962.P4055344690889174736

/-! ## A111962.P911057793668904148

`A350969(A005717(n+1)+1)`
-/

namespace A111962.P911057793668904148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350969 (A005717 (n + 1) + 1).toNat

end

end A111962.P911057793668904148

/-! ## A111962.P6471266195010334695

`A247908(A046717(n)+floor(n/2))`
-/

namespace A111962.P6471266195010334695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (A046717 n + ⌊(n : ℚ) / 2⌋).toNat

end

end A111962.P6471266195010334695

/-!
# A111965: Riordan array (1/sqrt(1-6x+5x^2),x/(1-6x+5x^2)).

The programs for A111965, there is no canonical definition to state claims against.
-/

/-! ## A111965.P11052380215670292928

`A110440(n)-A010893(A119502(n))`
-/

namespace A111965.P11052380215670292928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110440 n - A010893 ((A119502 n).toNat + 13)

end

end A111965.P11052380215670292928

/-! ## A111965.P7808386738937686402

`A110440(n)-A342376(A342342(n))`
-/

namespace A111965.P7808386738937686402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110440 n - A342376 (A342342 n).toNat

end

end A111965.P7808386738937686402

/-! ## A111965.P4276301045257191158

`A110440(n)-A217154(A236757(n+4))`
-/

namespace A111965.P4276301045257191158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110440 n - A217154 (A236757 (n + 4)).toNat

end

end A111965.P4276301045257191158

/-! ## A111965.P6943871608117083288

`or(A037910(A088305(n)), A110165(n))`
-/

namespace A111965.P6943871608117083288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037910 (A088305 n).toNat) (A110165 n)

end

end A111965.P6943871608117083288

/-!
# A111966: Expansion of 1/(sqrt(1-6x+5x^2)-x).

The programs for A111966, there is no canonical definition to state claims against.
-/

/-! ## A111966.P11200347963463159257

`A078898(A086405(n)+A083879(n))`
-/

namespace A111966.P11200347963463159257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A086405 n + A083879 n).toNat

end

end A111966.P11200347963463159257

/-! ## A111966.P12608302389522815673

`A344902(n)+A005374(A005057(n))`
-/

namespace A111966.P12608302389522815673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344902 n + A005374 (A005057 n).toNat

end

end A111966.P12608302389522815673

/-!
# A111967: Inverse of number triangle A101688.

The programs for A111967, the canonical program `A111967.P13674875290881375490` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111967 has offset 0).

The definition of A111967 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111967.P4378982858266197411

`∑[-A115236(abs(1-n))]`
-/

namespace A111967.P4378982858266197411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A115236 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111967.P4378982858266197411

namespace A111967

/-- `∑[-A115236(abs(1-n))]` -/
def P4378982858266197411.Spec : Prop :=
  ∀ n, P4378982858266197411.a n = A111967 n

end A111967

/-! ## A111967.P10618567474745902272

`a(n-1)-A115236(n-1)` with `a(0)=1`
-/

namespace A111967.P10618567474745902272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A115236 (n - 1)

end

end A111967.P10618567474745902272

namespace A111967

/-- `a(n-1)-A115236(n-1)` -/
def P10618567474745902272.Spec : Prop :=
  ∀ n, P10618567474745902272.a n = A111967 n

end A111967

/-! ## A111967.P9104912101437475760

`2-∑[A115236(A028310(n)-1)]`
-/

namespace A111967.P9104912101437475760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115236 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111967.P9104912101437475760

namespace A111967

/-- `2-∑[A115236(A028310(n)-1)]` -/
def P9104912101437475760.Spec : Prop :=
  ∀ n, P9104912101437475760.a n = A111967 n

end A111967

/-! ## A111967.P111074555257858533

`A115236(n)+1-∑[A115236(n)]`
-/

namespace A111967.P111074555257858533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115236 n + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111967.P111074555257858533

namespace A111967

/-- `A115236(n)+1-∑[A115236(n)]` -/
def P111074555257858533.Spec : Prop :=
  ∀ n, P111074555257858533.a n = A111967 n

end A111967

/-! ## A111967.P1879467235344359346

`A115236(n)+A014757(∑[A115236(n)])`
-/

namespace A111967.P1879467235344359346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115236 n + A014757 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111967.P1879467235344359346

namespace A111967

/-- `A115236(n)+A014757(∑[A115236(n)])` -/
def P1879467235344359346.Spec : Prop :=
  ∀ n, P1879467235344359346.a n = A111967 n

end A111967

/-! ## A111967.P10579110606434445462

`A115236(n)+A056594(∑[A115236(n)])`
-/

namespace A111967.P10579110606434445462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115236 n + A056594 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111967.P10579110606434445462

namespace A111967

/-- `A115236(n)+A056594(∑[A115236(n)])` -/
def P10579110606434445462.Spec : Prop :=
  ∀ n, P10579110606434445462.a n = A111967 n

end A111967

/-! ## A111967.P8104206662453069118

`A014757(∑[A115236(n)]-A115236(n))`
-/

namespace A111967.P8104206662453069118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014757 (∑ j ∈ Finset.range (n + 1), f1 j - A115236 n).toNat

end

end A111967.P8104206662453069118

namespace A111967

/-- `A014757(∑[A115236(n)]-A115236(n))` -/
def P8104206662453069118.Spec : Prop :=
  ∀ n, P8104206662453069118.a n = A111967 n

end A111967

/-! ## A111967.P1569915837267736523

`A115236(n)-A023443(∑[A115236(n)])`
-/

namespace A111967.P1569915837267736523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115236 n - A023443 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111967.P1569915837267736523

namespace A111967

/-- `A115236(n)-A023443(∑[A115236(n)])` -/
def P1569915837267736523.Spec : Prop :=
  ∀ n, P1569915837267736523.a n = A111967 n

end A111967

/-! ## A111967.P4687845378612585440

`A056594(∑[A115236(n)]-A115236(n))`
-/

namespace A111967.P4687845378612585440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (∑ j ∈ Finset.range (n + 1), f1 j - A115236 n).toNat

end

end A111967.P4687845378612585440

namespace A111967

/-- `A056594(∑[A115236(n)]-A115236(n))` -/
def P4687845378612585440.Spec : Prop :=
  ∀ n, P4687845378612585440.a n = A111967 n

end A111967

/-! ## A111967.P13674875290881375490

`Δ[A000523(A002024(n+1))-A115361(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A111967

/-- `Δ[A000523(A002024(n+1))-A115361(n)]` -/
def P13674875290881375490.Spec : Prop :=
  ∀ n, P13674875290881375490.a n = A111967 n

theorem P13674875290881375490.correct : P13674875290881375490.Spec := by
  intro n
  simp only [A111967]

end A111967

/-! ## A111967.P194739407292442903

`Δ[A000035(A054372(n+1))]^A054372(n+1)`
-/

namespace A111967.P194739407292442903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A054372 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A054372 (n + 1) : ℤ)

end

end A111967.P194739407292442903

namespace A111967

/-- `Δ[A000035(A054372(n+1))]^A054372(n+1)` -/
def P194739407292442903.Spec : Prop :=
  ∀ n, P194739407292442903.a n = (A111967 n : ℚ)

end A111967

/-! ## A111967.P6898945808584157831

`A115717(A185868(n+1)-1)%3`
-/

namespace A111967.P6898945808584157831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115717 (A185868 (n + 1) - 1).toNat) 3

end

end A111967.P6898945808584157831

namespace A111967

/-- `A115717(A185868(n+1)-1)%3` -/
def P6898945808584157831.Spec : Prop :=
  ∀ n, P6898945808584157831.a n = A111967 n

end A111967

/-!
# A111972: a(n) = Max(omega(k): 1<=k<=n), where omega(n) = A001221(n), the number of distinct prime factors of n.

The programs for A111972, the canonical program `A111972.P10773037967819847724` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111972 has offset 1).

The definition of A111972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111972.P12630679311903992034

`∑[char[∑[A061720(n)]]]`
-/

namespace A111972.P12630679311903992034
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061720 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111972.P12630679311903992034

namespace A111972

/-- `∑[char[∑[A061720(n)]]]` -/
def P12630679311903992034.Spec : Prop :=
  ∀ n, (P12630679311903992034.a n : ℤ) = A111972 (n + 1)

end A111972

/-! ## A111972.P5333299441671209237

`∑[char[Δ[A096334(n)]]]`
-/

namespace A111972.P5333299441671209237
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111972.P5333299441671209237

namespace A111972

/-- `∑[char[Δ[A096334(n)]]]` -/
def P5333299441671209237.Spec : Prop :=
  ∀ n, (P5333299441671209237.a n : ℤ) = A111972 (n + 1)

end A111972

/-! ## A111972.P4496322197978843453

`A235224(n+1)-1`
-/

namespace A111972.P4496322197978843453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (n + 1) - 1

end

end A111972.P4496322197978843453

namespace A111972

/-- `A235224(n+1)-1` -/
def P4496322197978843453.Spec : Prop :=
  ∀ n, P4496322197978843453.a n = A111972 (n + 1)

end A111972

/-! ## A111972.P10773037967819847724

`∑{e}[A260188(n+1), #]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A111972

/-- `∑{e}[A260188(n+1), #]` -/
def P10773037967819847724.Spec : Prop :=
  ∀ n, (P10773037967819847724.a n : ℤ) = A111972 (n + 1)

theorem P10773037967819847724.correct : P10773037967819847724.Spec := by
  intro n
  simp only [A111972, Nat.add_sub_cancel]

end A111972

/-! ## A111972.P18380249609380441669

`∑[char[A030522(n+1)]]`
-/

namespace A111972.P18380249609380441669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030522 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111972.P18380249609380441669

namespace A111972

/-- `∑[char[A030522(n+1)]]` -/
def P18380249609380441669.Spec : Prop :=
  ∀ n, (P18380249609380441669.a n : ℤ) = A111972 (n + 1)

end A111972

/-! ## A111972.P13153295921822014805

`∑[char[A057588(n+1)]]`
-/

namespace A111972.P13153295921822014805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057588 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111972.P13153295921822014805

namespace A111972

/-- `∑[char[A057588(n+1)]]` -/
def P13153295921822014805.Spec : Prop :=
  ∀ n, (P13153295921822014805.a n : ℤ) = A111972 (n + 1)

end A111972

/-! ## A111972.P17534712916883022533

`∑[Δ[A235224(n)]²]-1`
-/

namespace A111972.P17534712916883022533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A111972.P17534712916883022533

namespace A111972

/-- `∑[Δ[A235224(n)]²]-1` -/
def P17534712916883022533.Spec : Prop :=
  ∀ n, P17534712916883022533.a n = A111972 (n + 1)

end A111972

/-! ## A111972.P14125270210624214517

`∑[char[record[A347379(n+1)]]]`
-/

namespace A111972.P14125270210624214517
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111972.P14125270210624214517

namespace A111972

/-- `∑[char[record[A347379(n+1)]]]` -/
def P14125270210624214517.Spec : Prop :=
  ∀ n, (P14125270210624214517.a n : ℤ) = A111972 (n + 1)

end A111972

/-! ## A111972.P957358532492882879

`∑[char[A002110(n+1)-1]]`
-/

namespace A111972.P957358532492882879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111972.P957358532492882879

namespace A111972

/-- `∑[char[A002110(n+1)-1]]` -/
def P957358532492882879.Spec : Prop :=
  ∀ n, (P957358532492882879.a n : ℤ) = A111972 (n + 1)

end A111972

/-! ## A111972.P11733404291435268617

`∑[char[A073917(n+1)-2]]`
-/

namespace A111972.P11733404291435268617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073917 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111972.P11733404291435268617

namespace A111972

/-- `∑[char[A073917(n+1)-2]]` -/
def P11733404291435268617.Spec : Prop :=
  ∀ n, (P11733404291435268617.a n : ℤ) = A111972 (n + 1)

end A111972

/-! ## A111972.P8295655371365814263

`∑[char[A289125(n+1)-2]]`
-/

namespace A111972.P8295655371365814263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289125 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111972.P8295655371365814263

namespace A111972

/-- `∑[char[A289125(n+1)-2]]` -/
def P8295655371365814263.Spec : Prop :=
  ∀ n, (P8295655371365814263.a n : ℤ) = A111972 (n + 1)

end A111972

/-! ## A111972.P14226885868181429836

`∑[char[A289127(n+1)-2]]`
-/

namespace A111972.P14226885868181429836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289127 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111972.P14226885868181429836

namespace A111972

/-- `∑[char[A289127(n+1)-2]]` -/
def P14226885868181429836.Spec : Prop :=
  ∀ n, (P14226885868181429836.a n : ℤ) = A111972 (n + 1)

end A111972

/-! ## A111972.P1199144459408478706

`∑[char[∏[A000040(n+1)]-1]]`
-/

namespace A111972.P1199144459408478706
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111972.P1199144459408478706

namespace A111972

/-- `∑[char[∏[A000040(n+1)]-1]]` -/
def P1199144459408478706.Spec : Prop :=
  ∀ n, (P1199144459408478706.a n : ℤ) = A111972 (n + 1)

end A111972

/-! ## A111972.P12251422692713872526

`∑[char[∏[A002385(n+1)]-1]]`
-/

namespace A111972.P12251422692713872526
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111972.P12251422692713872526

namespace A111972

/-- `∑[char[∏[A002385(n+1)]-1]]` -/
def P12251422692713872526.Spec : Prop :=
  ∀ n, (P12251422692713872526.a n : ℤ) = A111972 (n + 1)

end A111972

/-! ## A111972.P1987103304418511543

`∑[char[A086568(n+1)-1]]-1`
-/

namespace A111972.P1987103304418511543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086568 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A111972.P1987103304418511543

namespace A111972

/-- `∑[char[A086568(n+1)-1]]-1` -/
def P1987103304418511543.Spec : Prop :=
  ∀ n, P1987103304418511543.a n = A111972 (n + 1)

end A111972

/-! ## A111972.P2760463103617393616

`∑[char[A300951(n+2)-1]]-1`
-/

namespace A111972.P2760463103617393616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A111972.P2760463103617393616

namespace A111972

/-- `∑[char[A300951(n+2)-1]]-1` -/
def P2760463103617393616.Spec : Prop :=
  ∀ n, P2760463103617393616.a n = A111972 (n + 1)

end A111972

/-! ## A111972.P12275271758569282121

`comp[∏[record[A014963(n+2)]]+n-1]-n`
-/

namespace A111972.P12275271758569282121
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j + ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A111972.P12275271758569282121

namespace A111972

/-- `comp[∏[record[A014963(n+2)]]+n-1]-n` -/
def P12275271758569282121.Spec : Prop :=
  ∀ n, P12275271758569282121.a n = A111972 (n + 1)

end A111972

/-! ## A111972.P13414944318145724412

`comp[∏[record[A020639(n+1)]]-2+n]-n`
-/

namespace A111972.P13414944318145724412
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j - 2 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A111972.P13414944318145724412

namespace A111972

/-- `comp[∏[record[A020639(n+1)]]-2+n]-n` -/
def P13414944318145724412.Spec : Prop :=
  ∀ n, P13414944318145724412.a n = A111972 (n + 1)

end A111972

/-! ## A111972.P5554147430518086457

`A001222(A260188(n+1))`
-/

namespace A111972.P5554147430518086457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A260188 (n + 1)).toNat

end

end A111972.P5554147430518086457

namespace A111972

/-- `A001222(A260188(n+1))` -/
def P5554147430518086457.Spec : Prop :=
  ∀ n, P5554147430518086457.a n = A111972 (n + 1)

end A111972

/-!
# A111973: Expansion of ((eta(q^2)eta(q^4))^6/(eta(q)eta(q^8))^4-1)/4 in powers of q.

The programs for A111973, the canonical program `A111973.P15413486378653993803` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111973 has offset 1).

The definition of A111973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111973.P16822174776310834191

`A097057(n+1)/4`
-/

namespace A111973.P16822174776310834191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097057 (n + 1) : ℚ) / 4

end

end A111973.P16822174776310834191

namespace A111973

/-- `A097057(n+1)/4` -/
def P16822174776310834191.Spec : Prop :=
  ∀ n, P16822174776310834191.a n = (A111973 (n + 1) : ℚ)

end A111973

/-! ## A111973.P15413486378653993803

`abs(A133691(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A111973

/-- `abs(A133691(n+1))` -/
def P15413486378653993803.Spec : Prop :=
  ∀ n, P15413486378653993803.a n = A111973 (n + 1)

theorem P15413486378653993803.correct : P15413486378653993803.Spec := by
  intro n
  simp only [A111973, Nat.add_sub_cancel]

end A111973

/-! ## A111973.P1401506520663421175

`A033999(n)*A133691(n+1)`
-/

namespace A111973.P1401506520663421175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A133691 (n + 1)

end

end A111973.P1401506520663421175

namespace A111973

/-- `A033999(n)*A133691(n+1)` -/
def P1401506520663421175.Spec : Prop :=
  ∀ n, P1401506520663421175.a n = A111973 (n + 1)

end A111973

/-! ## A111973.P12318884061769425895

`gcd(A000038(n), A133691(n+1))`
-/

namespace A111973.P12318884061769425895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A133691 (n + 1))

end

end A111973.P12318884061769425895

namespace A111973

/-- `gcd(A000038(n), A133691(n+1))` -/
def P12318884061769425895.Spec : Prop :=
  ∀ n, (P12318884061769425895.a n : ℤ) = A111973 (n + 1)

end A111973

/-! ## A111973.P15820565952473264612

`lcm(A000034(n), A133691(n+1))`
-/

namespace A111973.P15820565952473264612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A133691 (n + 1))

end

end A111973.P15820565952473264612

namespace A111973

/-- `lcm(A000034(n), A133691(n+1))` -/
def P15820565952473264612.Spec : Prop :=
  ∀ n, (P15820565952473264612.a n : ℤ) = A111973 (n + 1)

end A111973

/-! ## A111973.P13106132687812590094

`∑{d}[A133691(n+1), A000010(#)]`
-/

namespace A111973.P13106132687812590094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A111973.P13106132687812590094

namespace A111973

/-- `∑{d}[A133691(n+1), A000010(#)]` -/
def P13106132687812590094.Spec : Prop :=
  ∀ n, P13106132687812590094.a n = A111973 (n + 1)

end A111973

/-! ## A111973.P11144564176097979535

`abs(A133690(n+1)/4)`
-/

namespace A111973.P11144564176097979535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A133690 (n + 1) : ℚ) / 4|

end

end A111973.P11144564176097979535

namespace A111973

/-- `abs(A133690(n+1)/4)` -/
def P11144564176097979535.Spec : Prop :=
  ∀ n, P11144564176097979535.a n = (A111973 (n + 1) : ℚ)

end A111973

/-! ## A111973.P12115651071917693544

`A236922(2*(n+1))/4`
-/

namespace A111973.P12115651071917693544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236922 (2 * (n + 1)) : ℚ) / 4

end

end A111973.P12115651071917693544

namespace A111973

/-- `A236922(2*(n+1))/4` -/
def P12115651071917693544.Spec : Prop :=
  ∀ n, P12115651071917693544.a n = (A111973 (n + 1) : ℚ)

end A111973

/-! ## A111973.P4788310230292309012

`A236924(2*(n+1))/4`
-/

namespace A111973.P4788310230292309012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236924 (2 * (n + 1)) : ℚ) / 4

end

end A111973.P4788310230292309012

namespace A111973

/-- `A236924(2*(n+1))/4` -/
def P4788310230292309012.Spec : Prop :=
  ∀ n, P4788310230292309012.a n = (A111973 (n + 1) : ℚ)

end A111973

/-! ## A111973.P6825673304836130735

`∏{d}[A133691(n+1), A014963(#)]`
-/

namespace A111973.P6825673304836130735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A111973.P6825673304836130735

namespace A111973

/-- `∏{d}[A133691(n+1), A014963(#)]` -/
def P6825673304836130735.Spec : Prop :=
  ∀ n, P6825673304836130735.a n = A111973 (n + 1)

end A111973

/-! ## A111973.P8377038090264658851

`A033720(4*(n+1))/4`
-/

namespace A111973.P8377038090264658851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033720 (4 * (n + 1)) : ℚ) / 4

end

end A111973.P8377038090264658851

namespace A111973

/-- `A033720(4*(n+1))/4` -/
def P8377038090264658851.Spec : Prop :=
  ∀ n, P8377038090264658851.a n = (A111973 (n + 1) : ℚ)

end A111973

/-! ## A111973.P17461502557024089990

`A002265(A097057(n+1))`
-/

namespace A111973.P17461502557024089990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A097057 (n + 1)).toNat

end

end A111973.P17461502557024089990

namespace A111973

/-- `A002265(A097057(n+1))` -/
def P17461502557024089990.Spec : Prop :=
  ∀ n, P17461502557024089990.a n = A111973 (n + 1)

end A111973

/-! ## A111973.P11682379954984823349

`A000118(∑[n])/A097057(n)`
-/

namespace A111973.P11682379954984823349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000118 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A097057 n : ℚ)

end

end A111973.P11682379954984823349

namespace A111973

/-- `A000118(∑[n])/A097057(n)` -/
def P11682379954984823349.Spec : Prop :=
  ∀ n, P11682379954984823349.a n = (A111973 (n + 1) : ℚ)

end A111973

/-!
# A111974: Primes of the form 2*3^k + 1.

The programs for A111974, there is no canonical definition to state claims against.
-/

/-! ## A111974.P9615088041696475161

`A052919(A003306(n+1)+1)`
-/

namespace A111974.P9615088041696475161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052919 (A003306 (n + 1) + 1).toNat

end

end A111974.P9615088041696475161

/-! ## A111974.P3905803006584085588

`A100702(A003306(n+1)+1)`
-/

namespace A111974.P3905803006584085588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100702 (A003306 (n + 1) + 1).toNat

end

end A111974.P3905803006584085588

/-! ## A111974.P7123560407054075375

`∩[A005109(n+1), A100702(n)]`
-/

namespace A111974.P7123560407054075375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100702 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111974.P7123560407054075375

/-! ## A111974.P16095696443505288035

`∩[A053341(n+1), A052919(n)]`
-/

namespace A111974.P16095696443505288035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052919 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111974.P16095696443505288035

/-! ## A111974.P5202052893502134816

`∩[A053341(n+1), A100702(n)]`
-/

namespace A111974.P5202052893502134816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100702 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111974.P5202052893502134816

/-!
# A111976: Column 0 of triangle A111975, which shifts columns left and up under matrix square.

The programs for A111976, there is no canonical definition to state claims against.
-/

/-! ## A111976.P404100875699500158

`A111975(∑[n])`
-/

namespace A111976.P404100875699500158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111975 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111976.P404100875699500158

/-! ## A111976.P4675901974381396876

`and(-3, A111975(A000217(n)))`
-/

namespace A111976.P4675901974381396876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A111975 (A000217 n).toNat)

end

end A111976.P4675901974381396876

/-! ## A111976.P8864201380248278467

`A111975(A000124(n)+1)^floor(atan(n))`
-/

namespace A111976.P8864201380248278467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111975 (A000124 n + 1).toNat : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A111976.P8864201380248278467

/-! ## A111976.P2143098556047537581

`A185044(n)+A111975(A000217(n))`
-/

namespace A111976.P2143098556047537581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185044 n + A111975 (A000217 n).toNat

end

end A111976.P2143098556047537581

/-! ## A111976.P6189582713463504173

`A185245(n)+A111975(A000217(n))`
-/

namespace A111976.P6189582713463504173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185245 n + A111975 (A000217 n).toNat

end

end A111976.P6189582713463504173

/-!
# A111977: Row sums of triangle A111975, which shifts columns left and up under matrix square.

The programs for A111977, there is no canonical definition to state claims against.
-/

/-! ## A111977.P9548136226696410624

`A126257(A157005(n)+2)`
-/

namespace A111977.P9548136226696410624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A157005 n + 2).toNat

end

end A111977.P9548136226696410624

/-! ## A111977.P11322271896081626035

`A024417(A120971(n))+n`
-/

namespace A111977.P11322271896081626035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A120971 n).toNat + (n : ℤ)

end

end A111977.P11322271896081626035

/-!
# A111978: Matrix log of triangle A111975, which shifts columns left and up under matrix square; these terms are the result of multiplying each element in row n and column k by (n-k)!.

The programs for A111978, there is no canonical definition to state claims against.
-/

/-! ## A111978.P15664135498787029900

`A059268(n)*A111979(A025581(n))`
-/

namespace A111978.P15664135498787029900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A111979 (A025581 n).toNat

end

end A111978.P15664135498787029900

/-! ## A111978.P11908983253451857411

`A000079(A002262(n))*A111979(A025581(n))`
-/

namespace A111978.P11908983253451857411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A111979 (A025581 n).toNat

end

end A111978.P11908983253451857411

/-! ## A111978.P5409032433158650568

`A088397(A038474(n+1))`
-/

namespace A111978.P5409032433158650568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088397 (A038474 (n + 1)).toNat

end

end A111978.P5409032433158650568

/-! ## A111978.P6038883520241599495

`A111813(n)*A111818(abs(A110504(n)))`
-/

namespace A111978.P6038883520241599495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111813 n * A111818 |A110504 n|.toNat

end

end A111978.P6038883520241599495

/-! ## A111978.P748059570956593661

`and(A130321(n+4), A227362(A052523(n+2)))`
-/

namespace A111978.P748059570956593661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130321 (n + 4)) (A227362 (A052523 (n + 2)).toNat)

end

end A111978.P748059570956593661

/-!
# A111979: Column 0 of the matrix logarithm (A111978) of triangle A111975, which shifts columns left and up under matrix square; these terms are the result of multiplying the element in row n by n!.

The programs for A111979, there is no canonical definition to state claims against.
-/

/-! ## A111979.P4391150974525467187

`and(A001108(n), A099425(A049674(n)))`
-/

namespace A111979.P4391150974525467187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001108 n) (A099425 (A049674 n).toNat)

end

end A111979.P4391150974525467187

/-!
# A111980: Union of pairs of consecutive primes p, q with q-p = 4.

The programs for A111980, there is no canonical definition to state claims against.
-/

/-! ## A111980.P13629789046870040929

`∪[A029710(n+1), A031505(n+1)]`
-/

namespace A111980.P13629789046870040929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111980.P13629789046870040929

/-! ## A111980.P6681154352519364748

`∪[A029710(n+1), A046132(n+1)]`
-/

namespace A111980.P6681154352519364748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111980.P6681154352519364748

/-! ## A111980.P1923095466345673363

`A094343(n+3)`
-/

namespace A111980.P1923095466345673363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094343 (n + 3)

end

end A111980.P1923095466345673363

/-! ## A111980.P10557856725911891187

`A072541(n+3)-1`
-/

namespace A111980.P10557856725911891187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072541 (n + 3) - 1

end

end A111980.P10557856725911891187

/-! ## A111980.P958303503583930375

`record[A094343(n%a(n-1))]` with `a(0)=7`
-/

namespace A111980.P958303503583930375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A094343 (Int.tmod (n : ℤ) (f1 (n - 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111980.P958303503583930375

/-! ## A111980.P10654416019587488986

`∏{d}[A094343(2*n-(n-3)), #]`
-/

namespace A111980.P10654416019587488986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094343 ((2 * n : ℤ) - ((n : ℤ) - 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A111980.P10654416019587488986

/-! ## A111980.P4077069411449651273

`record[A094343(A258451(n))]`
-/

namespace A111980.P4077069411449651273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094343 (A258451 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111980.P4077069411449651273

/-! ## A111980.P1159596881821371976

`record[A094343(A262672(n))]`
-/

namespace A111980.P1159596881821371976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094343 (A262672 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111980.P1159596881821371976

/-! ## A111980.P15994639134517227855

`A007917(A072541(n+3))`
-/

namespace A111980.P15994639134517227855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A072541 (n + 3)).toNat

end

end A111980.P15994639134517227855

/-! ## A111980.P1088346418011954468

`record[A093074(A271211(n+1))]`
-/

namespace A111980.P1088346418011954468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (A271211 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111980.P1088346418011954468

/-!
# A111981: Numbers n such that 2n-1 and 2n+3 are consecutive primes.

The programs for A111981, there is no canonical definition to state claims against.
-/

/-! ## A111981.P2027324203338606222

`(A029710(n+1)+1)/2`
-/

namespace A111981.P2027324203338606222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029710 (n + 1) + 1 : ℚ) / 2

end

end A111981.P2027324203338606222

/-! ## A111981.P1986478526814382354

`(A029708(n+1)-1)/2`
-/

namespace A111981.P1986478526814382354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029708 (n + 1) - 1 : ℚ) / 2

end

end A111981.P1986478526814382354

/-! ## A111981.P9897909201959487248

`(A031505(n+1)-3)/2`
-/

namespace A111981.P9897909201959487248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031505 (n + 1) - 3 : ℚ) / 2

end

end A111981.P9897909201959487248

/-! ## A111981.P14746597582406300671

`floor(A029708(n+1)/2)`
-/

namespace A111981.P14746597582406300671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A029708 (n + 1) : ℚ) / 2⌋

end

end A111981.P14746597582406300671

/-! ## A111981.P13868603994110525034

`ceil(A029710(n+1)/2)`
-/

namespace A111981.P13868603994110525034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A029710 (n + 1) : ℚ) / 2⌉

end

end A111981.P13868603994110525034

/-! ## A111981.P7936900271186736441

`3*A056956(n+1)+1`
-/

namespace A111981.P7936900271186736441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A056956 (n + 1) + 1

end

end A111981.P7936900271186736441

/-! ## A111981.P2376927142272893261

`3*A186243(n+1)-2`
-/

namespace A111981.P2376927142272893261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A186243 (n + 1) - 2

end

end A111981.P2376927142272893261

/-! ## A111981.P8700315420878345336

`∑[A053320(n+1)/2]+2`
-/

namespace A111981.P8700315420878345336
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053320 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A111981.P8700315420878345336

/-! ## A111981.P1967950123338727476

`A157834(n+1)+A056956(n+1)`
-/

namespace A111981.P1967950123338727476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1) + A056956 (n + 1)

end

end A111981.P1967950123338727476

/-! ## A111981.P7100406287997554086

`A157834(n+1)+A186243(n+1)-1`
-/

namespace A111981.P7100406287997554086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1) + (A186243 (n + 1) - 1)

end

end A111981.P7100406287997554086

/-! ## A111981.P10577990943204669046

`A056956(n+1)+A186243(n+1)+A056956(n+1)`
-/

namespace A111981.P10577990943204669046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056956 (n + 1) + (A186243 (n + 1) + A056956 (n + 1))

end

end A111981.P10577990943204669046

/-! ## A111981.P3939688133108574356

`A088762(n+2)`
-/

namespace A111981.P3939688133108574356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088762 (n + 2)

end

end A111981.P3939688133108574356

/-! ## A111981.P1410696615112113671

`A047847(n+2)+1`
-/

namespace A111981.P1410696615112113671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047847 (n + 2) + 1

end

end A111981.P1410696615112113671

/-! ## A111981.P17594005177611793988

`floor(A087679(n+2)/2)`
-/

namespace A111981.P17594005177611793988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A087679 (n + 2) : ℚ) / 2⌋

end

end A111981.P17594005177611793988

/-! ## A111981.P12452546453629745529

`ceil(A015913(n+2)/2)`
-/

namespace A111981.P12452546453629745529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A015913 (n + 2) : ℚ) / 2⌉

end

end A111981.P12452546453629745529

/-! ## A111981.P1189946182353065556

`(A046132(n+2)-3)/2`
-/

namespace A111981.P1189946182353065556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046132 (n + 2) - 3 : ℚ) / 2

end

end A111981.P1189946182353065556

/-! ## A111981.P14814865948030314912

`(Δ[A172112(n+1)]+1)/2`
-/

namespace A111981.P14814865948030314912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172112 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1 : ℚ) / 2

end

end A111981.P14814865948030314912

/-! ## A111981.P13411315193358978289

`ceil(p?[A056772(n+2)]/2)`
-/

namespace A111981.P13411315193358978289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌉

end

end A111981.P13411315193358978289

/-! ## A111981.P5352186555991533688

`A072541(2*n+3)/2`
-/

namespace A111981.P5352186555991533688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072541 (2 * n + 3) : ℚ) / 2

end

end A111981.P5352186555991533688

/-! ## A111981.P11654410857216644223

`∩[A104280(n+1), A173178(n+1)]`
-/

namespace A111981.P11654410857216644223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111981.P11654410857216644223

/-!
# A111982: Row sums of abs(A111967).

The programs for A111982, the canonical program `A111982.P10179803336704345844` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111982 has offset 0).

The definition of A111982 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111982.P10179803336704345844

`n%2*a(floor(n/2))+2` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111982

/-- `n%2*a(floor(n/2))+2` -/
def P10179803336704345844.Spec : Prop :=
  ∀ n, (P10179803336704345844.a n : ℤ) = A111982 n

theorem P10179803336704345844.correct : P10179803336704345844.Spec := by
  intro n
  simp only [A111982]

end A111982

/-! ## A111982.P14745222389886778536

`and(1, n)*a(floor(n/2))+2` with `a(0)=1, a(1)=1`
-/

namespace A111982.P14745222389886778536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.land 1 n * a ⌊(n : ℚ) / 2⌋.toNat + 2

end

end A111982.P14745222389886778536

namespace A111982

/-- `and(1, n)*a(floor(n/2))+2` -/
def P14745222389886778536.Spec : Prop :=
  ∀ n, (P14745222389886778536.a n : ℤ) = A111982 n

theorem P14745222389886778536.correct : P14745222389886778536.Spec := by
  intro n
  simp only [A111982, Nat.add_sub_cancel, A111982.P14745222389886778536.a, A111982.P10179803336704345844.a, SequenceMachineLib.memo_apply]
  try simp

end A111982

/-! ## A111982.P8639211738765441948

`Δ[a(floor(n/2))+2*n-3]` with `a(0)=0, a(1)=1`
-/

namespace A111982.P8639211738765441948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + ((2 * n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111982.P8639211738765441948

namespace A111982

/-- `Δ[a(floor(n/2))+2*n-3]` -/
def P8639211738765441948.Spec : Prop :=
  ∀ n, P8639211738765441948.a n = A111982 n

end A111982

/-! ## A111982.P9210231302746539406

`Δ[n-3+a(floor(n/2))+n]` with `a(0)=0, a(1)=1`
-/

namespace A111982.P9210231302746539406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (n : ℤ) - 3 + (f1 ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111982.P9210231302746539406

namespace A111982

/-- `Δ[n-3+a(floor(n/2))+n]` -/
def P9210231302746539406.Spec : Prop :=
  ∀ n, P9210231302746539406.a n = A111982 n

end A111982

/-! ## A111982.P6418138249025664495

`(a(floor(n/2))+1)^and(1, n)+1` with `a(0)=1, a(1)=1`
-/

namespace A111982.P6418138249025664495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a ⌊(n : ℚ) / 2⌋.toNat + 1) ^ Nat.land 1 n + 1

end

end A111982.P6418138249025664495

namespace A111982

/-- `(a(floor(n/2))+1)^and(1, n)+1` -/
def P6418138249025664495.Spec : Prop :=
  ∀ n, (P6418138249025664495.a n : ℤ) = A111982 n

end A111982

/-! ## A111982.P3895725244604770830

`a(floor(n/2))%xor(n, n+1)+2` with `a(0)=1, a(1)=1`
-/

namespace A111982.P3895725244604770830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat % Nat.xor n (n + 1) + 2

end

end A111982.P3895725244604770830

namespace A111982

/-- `a(floor(n/2))%xor(n, n+1)+2` -/
def P3895725244604770830.Spec : Prop :=
  ∀ n, (P3895725244604770830.a n : ℤ) = A111982 n

end A111982

/-! ## A111982.P6005617823606916854

`2-(1-gcd(2, n+1))*a(floor(n/2))` with `a(0)=1, a(1)=1`
-/

namespace A111982.P6005617823606916854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 - (1 - (Nat.gcd 2 (n + 1) : ℤ)) * a ⌊(n : ℚ) / 2⌋.toNat

end

end A111982.P6005617823606916854

namespace A111982

/-- `2-(1-gcd(2, n+1))*a(floor(n/2))` -/
def P6005617823606916854.Spec : Prop :=
  ∀ n, P6005617823606916854.a n = A111982 n

end A111982

/-! ## A111982.P13427379529677868174

`4-(a(n-1)-a(floor((n-1)/2)))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A111982.P13427379529677868174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  4 - (a (n - 1) - a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat)

end

end A111982.P13427379529677868174

namespace A111982

/-- `4-(a(n-1)-a(floor((n-1)/2)))` -/
def P13427379529677868174.Spec : Prop :=
  ∀ n, P13427379529677868174.a n = A111982 n

end A111982

/-! ## A111982.P17861225948337282422

`log2(xor(n, -(n+2))²)-∏{p}[n+1, 3*val(#, 2)]`
-/

namespace A111982.P17861225948337282422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.xor (n : ℤ) (-(n + 2 : ℤ)) ^ 2 : ℝ) - ((∏ p ∈ Nat.primeFactors (f1 n), 3 * SequenceMachineLib.valuation p 2 : ℕ) : ℝ)

end

end A111982.P17861225948337282422

namespace A111982

/-- `log2(xor(n, -(n+2))²)-∏{p}[n+1, 3*val(#, 2)]` -/
def P17861225948337282422.Spec : Prop :=
  ∀ n, P17861225948337282422.a n = (A111982 n : ℝ)

end A111982

/-! ## A111982.P5770425799248016817

`2*(val(n+1, 2)+1)-∏{p}[n+1, 3*val(#, 2)]`
-/

namespace A111982.P5770425799248016817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (SequenceMachineLib.valuation (n + 1) 2 + 1) : ℤ) - ((∏ p ∈ Nat.primeFactors (f1 n), 3 * SequenceMachineLib.valuation p 2 : ℕ) : ℤ)

end

end A111982.P5770425799248016817

namespace A111982

/-- `2*(val(n+1, 2)+1)-∏{p}[n+1, 3*val(#, 2)]` -/
def P5770425799248016817.Spec : Prop :=
  ∀ n, P5770425799248016817.a n = A111982 n

end A111982

/-! ## A111982.P18445554234797695143

`A123273((xor(n, n+1)+1)%(n+2))`
-/

namespace A111982.P18445554234797695143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123273 ((Nat.xor n (n + 1) + 1) % (n + 2))

end

end A111982.P18445554234797695143

namespace A111982

/-- `A123273((xor(n, n+1)+1)%(n+2))` -/
def P18445554234797695143.Spec : Prop :=
  ∀ n, P18445554234797695143.a n = A111982 n

end A111982

/-! ## A111982.P18100784463944536483

`A004277(val(n+1, 2)+1)-∏{p}[n+1, 3*val(#, 2)]`
-/

namespace A111982.P18100784463944536483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.valuation (n + 1) 2 + 1) - ((∏ p ∈ Nat.primeFactors (f1 n), 3 * SequenceMachineLib.valuation p 2 : ℕ) : ℤ)

end

end A111982.P18100784463944536483

namespace A111982

/-- `A004277(val(n+1, 2)+1)-∏{p}[n+1, 3*val(#, 2)]` -/
def P18100784463944536483.Spec : Prop :=
  ∀ n, P18100784463944536483.a n = A111982 n

end A111982

/-! ## A111982.P14806142286050188938

`A005843(val(n+1, 2)+1)-∏{p}[n+1, 3*val(#, 2)]`
-/

namespace A111982.P14806142286050188938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.valuation (n + 1) 2 + 1) - ((∏ p ∈ Nat.primeFactors (f1 n), 3 * SequenceMachineLib.valuation p 2 : ℕ) : ℤ)

end

end A111982.P14806142286050188938

namespace A111982

/-- `A005843(val(n+1, 2)+1)-∏{p}[n+1, 3*val(#, 2)]` -/
def P14806142286050188938.Spec : Prop :=
  ∀ n, P14806142286050188938.a n = A111982 n

end A111982

/-! ## A111982.P10850724091812425363

`Δ[A178207(n)]-A127802(n)`
-/

namespace A111982.P10850724091812425363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A127802 n

end

end A111982.P10850724091812425363

namespace A111982

/-- `Δ[A178207(n)]-A127802(n)` -/
def P10850724091812425363.Spec : Prop :=
  ∀ n, P10850724091812425363.a n = A111982 n

end A111982

/-! ## A111982.P4136219138442760696

`A366839(n+1)-A127802(n)`
-/

namespace A111982.P4136219138442760696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366839 (n + 1) - A127802 n

end

end A111982.P4136219138442760696

namespace A111982

/-- `A366839(n+1)-A127802(n)` -/
def P4136219138442760696.Spec : Prop :=
  ∀ n, P4136219138442760696.a n = A111982 n

end A111982

/-! ## A111982.P7165873041238029855

`2*A091090(n)-A036987(n)`
-/

namespace A111982.P7165873041238029855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091090 n - A036987 n

end

end A111982.P7165873041238029855

namespace A111982

/-- `2*A091090(n)-A036987(n)` -/
def P7165873041238029855.Spec : Prop :=
  ∀ n, P7165873041238029855.a n = A111982 n

end A111982

/-! ## A111982.P6262506605766536875

`A043545(n)+A004273(A091090(n))`
-/

namespace A111982.P6262506605766536875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n + A004273 (A091090 n).toNat

end

end A111982.P6262506605766536875

namespace A111982

/-- `A043545(n)+A004273(A091090(n))` -/
def P6262506605766536875.Spec : Prop :=
  ∀ n, P6262506605766536875.a n = A111982 n

end A111982

/-! ## A111982.P4325003397282354496

`A004277(A091090(n))-A036987(n)`
-/

namespace A111982.P4325003397282354496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A091090 n).toNat - A036987 n

end

end A111982.P4325003397282354496

namespace A111982

/-- `A004277(A091090(n))-A036987(n)` -/
def P4325003397282354496.Spec : Prop :=
  ∀ n, P4325003397282354496.a n = A111982 n

end A111982

/-! ## A111982.P1079273560215161019

`A227542(2*A127750(n))`
-/

namespace A111982.P1079273560215161019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227542 (2 * A127750 n).toNat

end

end A111982.P1079273560215161019

namespace A111982

/-- `A227542(2*A127750(n))` -/
def P1079273560215161019.Spec : Prop :=
  ∀ n, P1079273560215161019.a n = A111982 n

end A111982

/-! ## A111982.P9962890910989760109

`A127750(and(n, A117120(n+1)))`
-/

namespace A111982.P9962890910989760109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127750 (Int.land (n : ℤ) (A117120 (n + 1))).toNat

end

end A111982.P9962890910989760109

namespace A111982

/-- `A127750(and(n, A117120(n+1)))` -/
def P9962890910989760109.Spec : Prop :=
  ∀ n, P9962890910989760109.a n = A111982 n

end A111982

/-!
# A111983: G.f.: A(x) = Sum_{n>=0} (2*n+1) * 8^n * x^(n*(n+1)/2).

The programs for A111983, the canonical program `A111983.P13317211300514928737` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111983 has offset 0).

The definition of A111983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5051 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111983.P13317211300514928737

`A038279(n)*A198954(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A111983

/-- `A038279(n)*A198954(n)` -/
def P13317211300514928737.Spec : Prop :=
  ∀ n, P13317211300514928737.a n = A111983 n

theorem P13317211300514928737.correct : P13317211300514928737.Spec := by
  intro n
  simp only [A111983]

end A111983

/-! ## A111983.P2044980864160174467

`A038280(n)*A198954(n)`
-/

namespace A111983.P2044980864160174467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038280 n * A198954 n

end

end A111983.P2044980864160174467

namespace A111983

/-- `A038280(n)*A198954(n)` -/
def P2044980864160174467.Spec : Prop :=
  ∀ n, P2044980864160174467.a n = A111983 n

end A111983

/-! ## A111983.P4159930907035162884

`lcm(A010816(n), A038279(n))`
-/

namespace A111983.P4159930907035162884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010816 n) (A038279 n)

end

end A111983.P4159930907035162884

namespace A111983

/-- `lcm(A010816(n), A038279(n))` -/
def P4159930907035162884.Spec : Prop :=
  ∀ n, (P4159930907035162884.a n : ℤ) = A111983 n

end A111983

/-! ## A111983.P1368334950122962817

`lcm(A038280(n), A133089(n))`
-/

namespace A111983.P1368334950122962817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038280 n) (A133089 n)

end

end A111983.P1368334950122962817

namespace A111983

/-- `lcm(A038280(n), A133089(n))` -/
def P1368334950122962817.Spec : Prop :=
  ∀ n, (P1368334950122962817.a n : ℤ) = A111983 n

end A111983

/-! ## A111983.P13222970360602560311

`A101508(n)*A198954(n)*A101508(n)²`
-/

namespace A111983.P13222970360602560311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101508 n * A198954 n * A101508 n ^ 2

end

end A111983.P13222970360602560311

namespace A111983

/-- `A101508(n)*A198954(n)*A101508(n)²` -/
def P13222970360602560311.Spec : Prop :=
  ∀ n, P13222970360602560311.a n = A111983 n

end A111983

/-! ## A111983.P5227209776001000259

`A130321(n)*A198954(n)*A130321(n)²`
-/

namespace A111983.P5227209776001000259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A198954 n * A130321 n ^ 2

end

end A111983.P5227209776001000259

namespace A111983

/-- `A130321(n)*A198954(n)*A130321(n)²` -/
def P5227209776001000259.Spec : Prop :=
  ∀ n, P5227209776001000259.a n = A111983 n

end A111983

/-! ## A111983.P15800469669630879407

`A038281(n)*A198954(n)`
-/

namespace A111983.P15800469669630879407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038281 n * A198954 n

end

end A111983.P15800469669630879407

namespace A111983

/-- `A038281(n)*A198954(n)` -/
def P15800469669630879407.Spec : Prop :=
  ∀ n, P15800469669630879407.a n = A111983 n

end A111983

/-! ## A111983.P8909071053131168292

`A038282(n)*A198954(n)`
-/

namespace A111983.P8909071053131168292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038282 n * A198954 n

end

end A111983.P8909071053131168292

namespace A111983

/-- `A038282(n)*A198954(n)` -/
def P8909071053131168292.Spec : Prop :=
  ∀ n, P8909071053131168292.a n = A111983 n

end A111983

/-! ## A111983.P7184836980361058554

`A038283(n)*A198954(n)`
-/

namespace A111983.P7184836980361058554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038283 n * A198954 n

end

end A111983.P7184836980361058554

namespace A111983

/-- `A038283(n)*A198954(n)` -/
def P7184836980361058554.Spec : Prop :=
  ∀ n, P7184836980361058554.a n = A111983 n

end A111983

/-! ## A111983.P13044165389442394134

`A038284(n)*A198954(n)`
-/

namespace A111983.P13044165389442394134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038284 n * A198954 n

end

end A111983.P13044165389442394134

namespace A111983

/-- `A038284(n)*A198954(n)` -/
def P13044165389442394134.Spec : Prop :=
  ∀ n, P13044165389442394134.a n = A111983 n

end A111983

/-! ## A111983.P12210674647185419511

`lcm(A038284(n)*A133089(n), A038284(n))`
-/

namespace A111983.P12210674647185419511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038284 n * A133089 n) (A038284 n)

end

end A111983.P12210674647185419511

namespace A111983

/-- `lcm(A038284(n)*A133089(n), A038284(n))` -/
def P12210674647185419511.Spec : Prop :=
  ∀ n, (P12210674647185419511.a n : ℤ) = A111983 n

end A111983

/-! ## A111983.P5187418750065876314

`A038285(n)*A198954(n)`
-/

namespace A111983.P5187418750065876314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038285 n * A198954 n

end

end A111983.P5187418750065876314

namespace A111983

/-- `A038285(n)*A198954(n)` -/
def P5187418750065876314.Spec : Prop :=
  ∀ n, P5187418750065876314.a n = A111983 n

end A111983

/-! ## A111983.P1582545419488342192

`A038286(n)*A198954(n)`
-/

namespace A111983.P1582545419488342192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038286 n * A198954 n

end

end A111983.P1582545419488342192

namespace A111983

/-- `A038286(n)*A198954(n)` -/
def P1582545419488342192.Spec : Prop :=
  ∀ n, P1582545419488342192.a n = A111983 n

end A111983

/-! ## A111983.P593043586039406488

`A038287(n)*A198954(n)`
-/

namespace A111983.P593043586039406488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038287 n * A198954 n

end

end A111983.P593043586039406488

namespace A111983

/-- `A038287(n)*A198954(n)` -/
def P593043586039406488.Spec : Prop :=
  ∀ n, P593043586039406488.a n = A111983 n

end A111983

/-! ## A111983.P12362805501137114002

`A038288(n)*A198954(n)`
-/

namespace A111983.P12362805501137114002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038288 n * A198954 n

end

end A111983.P12362805501137114002

namespace A111983

/-- `A038288(n)*A198954(n)` -/
def P12362805501137114002.Spec : Prop :=
  ∀ n, P12362805501137114002.a n = A111983 n

end A111983

/-! ## A111983.P14832742849498572278

`A038289(n)*A198954(n)`
-/

namespace A111983.P14832742849498572278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038289 n * A198954 n

end

end A111983.P14832742849498572278

namespace A111983

/-- `A038289(n)*A198954(n)` -/
def P14832742849498572278.Spec : Prop :=
  ∀ n, P14832742849498572278.a n = A111983 n

end A111983

/-! ## A111983.P2101569562089093960

`A038290(n)*A198954(n)`
-/

namespace A111983.P2101569562089093960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038290 n * A198954 n

end

end A111983.P2101569562089093960

namespace A111983

/-- `A038290(n)*A198954(n)` -/
def P2101569562089093960.Spec : Prop :=
  ∀ n, P2101569562089093960.a n = A111983 n

end A111983

/-! ## A111983.P16731002097162027243

`lcm(A038281(n), A202394(n))`
-/

namespace A111983.P16731002097162027243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038281 n) (A202394 n)

end

end A111983.P16731002097162027243

namespace A111983

/-- `lcm(A038281(n), A202394(n))` -/
def P16731002097162027243.Spec : Prop :=
  ∀ n, (P16731002097162027243.a n : ℤ) = A111983 n

end A111983

/-! ## A111983.P11768105606788457690

`lcm(A038282(n), A204850(n))`
-/

namespace A111983.P11768105606788457690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038282 n) (A204850 n)

end

end A111983.P11768105606788457690

namespace A111983

/-- `lcm(A038282(n), A204850(n))` -/
def P11768105606788457690.Spec : Prop :=
  ∀ n, (P11768105606788457690.a n : ℤ) = A111983 n

end A111983

/-! ## A111983.P1454107496249918144

`A075503(n+1)*A198954(n)`
-/

namespace A111983.P1454107496249918144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075503 (n + 1) * A198954 n

end

end A111983.P1454107496249918144

namespace A111983

/-- `A075503(n+1)*A198954(n)` -/
def P1454107496249918144.Spec : Prop :=
  ∀ n, P1454107496249918144.a n = A111983 n

end A111983

/-!
# A111984: Expansion of g.f.: A(x) = ( Sum_{n>=0} (2*n+1)*8^n*x^(n*(n+1)/2) )^(1/3).

The programs for A111984, there is no canonical definition to state claims against.
-/

/-! ## A111984.P5566773883448051990

`record[A199571(n)]*A112281(n)`
-/

namespace A111984.P5566773883448051990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199571 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A112281 n

end

end A111984.P5566773883448051990

/-! ## A111984.P6262256613293170711

`4^n*A112281(A004911(n+1))`
-/

namespace A111984.P6262256613293170711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A112281 (A004911 (n + 1)).toNat

end

end A111984.P6262256613293170711

/-!
# A111988: Greatest number having n quadratic residues, or 0 if there is no such number.

The programs for A111988, there is no canonical definition to state claims against.
-/

/-! ## A111988.P11301164632161546884

`and(A052905(n), A198186(A027379(n)))`
-/

namespace A111988.P11301164632161546884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052905 n) (A198186 (A027379 n).toNat)

end

end A111988.P11301164632161546884

/-!
# A111989: G.f.: 1/(1-6*x+8*x^3).

The programs for A111989, the canonical program `A111989.P3783058857212624465` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111989 has offset 0).

The definition of A111989 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111989.P3783058857212624465

`6*a(n-1)-8*a(n-3)` with `a(0)=1, a(1)=6, a(2)=36`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111989

/-- `6*a(n-1)-8*a(n-3)` -/
def P3783058857212624465.Spec : Prop :=
  ∀ n, P3783058857212624465.a n = A111989 n

theorem P3783058857212624465.correct : P3783058857212624465.Spec := by
  intro n
  simp only [A111989]

end A111989

/-! ## A111989.P17621541486306942678

`ogf(1/(1-6x+8x^3))`
-/

namespace A111989.P17621541486306942678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -6, 0, 8] n

end

end A111989.P17621541486306942678

namespace A111989

/-- `ogf(1/(1-6x+8x^3))` -/
def P17621541486306942678.Spec : Prop :=
  ∀ n, P17621541486306942678.a n = A111989 n

end A111989

/-! ## A111989.P9658895437514960054

`2^n*A076264(n)`
-/

namespace A111989.P9658895437514960054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A076264 n

end

end A111989.P9658895437514960054

namespace A111989

/-- `2^n*A076264(n)` -/
def P9658895437514960054.Spec : Prop :=
  ∀ n, P9658895437514960054.a n = A111989 n

end A111989

/-! ## A111989.P9738491394593564804

`2^n*∑[A052536(n)]`
-/

namespace A111989.P9738491394593564804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052536 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111989.P9738491394593564804

namespace A111989

/-- `2^n*∑[A052536(n)]` -/
def P9738491394593564804.Spec : Prop :=
  ∀ n, P9738491394593564804.a n = A111989 n

end A111989

/-! ## A111989.P7436710387588738726

`2^n*Δ[A052963(n)]`
-/

namespace A111989.P7436710387588738726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A111989.P7436710387588738726

namespace A111989

/-- `2^n*Δ[A052963(n)]` -/
def P7436710387588738726.Spec : Prop :=
  ∀ n, P7436710387588738726.a n = A111989 n

end A111989

/-! ## A111989.P3886062203550783570

`2^n*A123941(n+1)`
-/

namespace A111989.P3886062203550783570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A123941 (n + 1)

end

end A111989.P3886062203550783570

namespace A111989

/-- `2^n*A123941(n+1)` -/
def P3886062203550783570.Spec : Prop :=
  ∀ n, P3886062203550783570.a n = A111989 n

end A111989

/-! ## A111989.P197145671858169135

`2^n*∑[∑[A052545(n)]]`
-/

namespace A111989.P197145671858169135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052545 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111989.P197145671858169135

namespace A111989

/-- `2^n*∑[∑[A052545(n)]]` -/
def P197145671858169135.Spec : Prop :=
  ∀ n, P197145671858169135.a n = A111989 n

end A111989

/-! ## A111989.P7682501517954908441

`2^n*∑[A123891(n+1)/3]`
-/

namespace A111989.P7682501517954908441
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123891 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111989.P7682501517954908441

namespace A111989

/-- `2^n*∑[A123891(n+1)/3]` -/
def P7682501517954908441.Spec : Prop :=
  ∀ n, P7682501517954908441.a n = (A111989 n : ℚ)

end A111989

/-! ## A111989.P8402793272027391589

`∑[A052536(n)]*A000079(n)`
-/

namespace A111989.P8402793272027391589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052536 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A111989.P8402793272027391589

namespace A111989

/-- `∑[A052536(n)]*A000079(n)` -/
def P8402793272027391589.Spec : Prop :=
  ∀ n, P8402793272027391589.a n = A111989 n

end A111989

/-! ## A111989.P1822250097481562597

`Δ[A052963(n)]*A000079(n)`
-/

namespace A111989.P1822250097481562597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A111989.P1822250097481562597

namespace A111989

/-- `Δ[A052963(n)]*A000079(n)` -/
def P1822250097481562597.Spec : Prop :=
  ∀ n, P1822250097481562597.a n = A111989 n

end A111989

/-! ## A111989.P7776484063547096891

`∑[A052536(n)]*Δ[A000051(n)]`
-/

namespace A111989.P7776484063547096891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052536 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A111989.P7776484063547096891

namespace A111989

/-- `∑[A052536(n)]*Δ[A000051(n)]` -/
def P7776484063547096891.Spec : Prop :=
  ∀ n, P7776484063547096891.a n = A111989 n

end A111989

/-! ## A111989.P9184844402639550398

`∑[A052536(n)]*Δ[A000225(n)]`
-/

namespace A111989.P9184844402639550398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052536 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A111989.P9184844402639550398

namespace A111989

/-- `∑[A052536(n)]*Δ[A000225(n)]` -/
def P9184844402639550398.Spec : Prop :=
  ∀ n, P9184844402639550398.a n = A111989 n

end A111989

/-! ## A111989.P3745409252833445621

`∑[A052536(n)]*A016116(2*n)`
-/

namespace A111989.P3745409252833445621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052536 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A016116 (2 * n)

end

end A111989.P3745409252833445621

namespace A111989

/-- `∑[A052536(n)]*A016116(2*n)` -/
def P3745409252833445621.Spec : Prop :=
  ∀ n, P3745409252833445621.a n = A111989 n

end A111989

/-! ## A111989.P10615012401600187263

`A000051(n)*A076264(n)-A076264(n)`
-/

namespace A111989.P10615012401600187263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A076264 n - A076264 n

end

end A111989.P10615012401600187263

namespace A111989

/-- `A000051(n)*A076264(n)-A076264(n)` -/
def P10615012401600187263.Spec : Prop :=
  ∀ n, P10615012401600187263.a n = A111989 n

end A111989

/-!
# A111990: Convolution of A111989 with itself.

The programs for A111990, the canonical program `A111990.P1711683096646036050` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111990 has offset 0).

The definition of A111990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111990.P1711683096646036050

`2^n*A119852(n+3)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A111990

/-- `2^n*A119852(n+3)` -/
def P1711683096646036050.Spec : Prop :=
  ∀ n, P1711683096646036050.a n = A111990 n

theorem P1711683096646036050.correct : P1711683096646036050.Spec := by
  intro n
  simp only [A111990]

end A111990

/-! ## A111990.P9772622724146480521

`abs(Δ[A000051(n)]*A119852(n+3))`
-/

namespace A111990.P9772622724146480521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A119852 (n + 3)|

end

end A111990.P9772622724146480521

namespace A111990

/-- `abs(Δ[A000051(n)]*A119852(n+3))` -/
def P9772622724146480521.Spec : Prop :=
  ∀ n, P9772622724146480521.a n = A111990 n

end A111990

/-! ## A111990.P7740009870916047674

`A000079(n+1)*A119852(n+3)/2`
-/

namespace A111990.P7740009870916047674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) * A119852 (n + 3) : ℚ) / 2

end

end A111990.P7740009870916047674

namespace A111990

/-- `A000079(n+1)*A119852(n+3)/2` -/
def P7740009870916047674.Spec : Prop :=
  ∀ n, P7740009870916047674.a n = (A111990 n : ℚ)

theorem P7740009870916047674.correct : P7740009870916047674.Spec := by
  intro n
  simp only [A111990, Nat.add_sub_cancel, A111990.P7740009870916047674.a, A111990.P1711683096646036050.a, A000079, A000079.P10855139691139572931.a, A119852, A119852.P13090645802049692301.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111990

/-! ## A111990.P2635091539496674314

`round(Δ[A095121(n)]*A119852(n+3)/2)`
-/

namespace A111990.P2635091539496674314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((f1 (n + 1) - f1 n) * A119852 (n + 3) : ℚ) / 2)

end

end A111990.P2635091539496674314

namespace A111990

/-- `round(Δ[A095121(n)]*A119852(n+3)/2)` -/
def P2635091539496674314.Spec : Prop :=
  ∀ n, P2635091539496674314.a n = A111990 n

end A111990

/-! ## A111990.P2087508862073688798

`Δ[A000051(n+1)]*A119852(n+3)/2`
-/

namespace A111990.P2087508862073688798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) * A119852 (n + 3) : ℚ) / 2

end

end A111990.P2087508862073688798

namespace A111990

/-- `Δ[A000051(n+1)]*A119852(n+3)/2` -/
def P2087508862073688798.Spec : Prop :=
  ∀ n, P2087508862073688798.a n = (A111990 n : ℚ)

theorem P2087508862073688798.correct : P2087508862073688798.Spec := by
  intro n
  simp only [A111990, Nat.add_sub_cancel, A111990.P2087508862073688798.f1, A111990.P2087508862073688798.a, A111990.P1711683096646036050.a, A000051, A000051.P14067217022188782580.a, A119852, A119852.P13090645802049692301.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111990

/-!
# A111993: Fifth convolution of Schroeder's (second problem) numbers A001003(n), n>=0.

The programs for A111993, there is no canonical definition to state claims against.
-/

/-! ## A111993.P2798595166063117158

`A011117(A155212(n+1)+3)`
-/

namespace A111993.P2798595166063117158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011117 (A155212 (n + 1) + 3).toNat

end

end A111993.P2798595166063117158

/-! ## A111993.P3226842164834090055

`A011117(A000096(n+3)+n+1)`
-/

namespace A111993.P3226842164834090055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011117 (A000096 (n + 3) + (n + 1 : ℤ)).toNat

end

end A111993.P3226842164834090055

/-! ## A111993.P8582602809087443613

`A011117(A167614(n+2)+2*n+1)`
-/

namespace A111993.P8582602809087443613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011117 (A167614 (n + 2) + (2 * n + 1 : ℤ)).toNat

end

end A111993.P8582602809087443613

/-! ## A111993.P10496512438951791023

`A091370(A166136(n+2))`
-/

namespace A111993.P10496512438951791023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091370 (A166136 (n + 2)).toNat

end

end A111993.P10496512438951791023

/-! ## A111993.P371789910362203641

`A104219(eq[4, A002262(n)])`
-/

namespace A111993.P371789910362203641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111993.P371789910362203641

/-! ## A111993.P5064192460978272364

`A104219(A166136(n+3)-2)`
-/

namespace A111993.P5064192460978272364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (A166136 (n + 3) - 2).toNat

end

end A111993.P5064192460978272364

/-! ## A111993.P535578178853007256

`A104219(A000096(n+3)+5)`
-/

namespace A111993.P535578178853007256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (A000096 (n + 3) + 5).toNat

end

end A111993.P535578178853007256

/-!
# A111994: Sixth convolution of Schroeder's (second problem) numbers A001003(n), n>=0.

The programs for A111994, there is no canonical definition to state claims against.
-/

/-! ## A111994.P7383441932098773811

`A104219(A167499(n+4))`
-/

namespace A111994.P7383441932098773811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (A167499 (n + 4)).toNat

end

end A111994.P7383441932098773811

/-! ## A111994.P1785253363203465673

`A104219(eq[5, A002262(n)])`
-/

namespace A111994.P1785253363203465673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111994.P1785253363203465673

/-! ## A111994.P16123152798208579538

`A104219(A000096(n+4)+6)`
-/

namespace A111994.P16123152798208579538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (A000096 (n + 4) + 6).toNat

end

end A111994.P16123152798208579538

/-! ## A111994.P568985885528642874

`A104219(A000217(n+6)-(n+1))`
-/

namespace A111994.P568985885528642874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (A000217 (n + 6) - (n + 1 : ℤ)).toNat

end

end A111994.P568985885528642874

/-! ## A111994.P7114434286971217092

`A104219(A016789(n+5)+A000217(n+2))`
-/

namespace A111994.P7114434286971217092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (A016789 (n + 5) + A000217 (n + 2)).toNat

end

end A111994.P7114434286971217092

/-!
# A111995: Seventh convolution of Schroeder's (second problem) numbers A001003(n), n >= 0.

The programs for A111995, there is no canonical definition to state claims against.
-/

/-! ## A111995.P5784150889440224814

`A104219(eq[6, A002262(n)])`
-/

namespace A111995.P5784150889440224814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111995.P5784150889440224814

/-! ## A111995.P15528559323229305781

`A104219(A000124(n+6)+5)`
-/

namespace A111995.P15528559323229305781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (A000124 (n + 6) + 5).toNat

end

end A111995.P15528559323229305781

/-! ## A111995.P659420853452081722

`A104219(A000096(n+5)+7)`
-/

namespace A111995.P659420853452081722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (A000096 (n + 5) + 7).toNat

end

end A111995.P659420853452081722

/-! ## A111995.P9517422778911845966

`A104219(A000217(n+6)+6)`
-/

namespace A111995.P9517422778911845966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (A000217 (n + 6) + 6).toNat

end

end A111995.P9517422778911845966

/-! ## A111995.P13579427267782914103

`A104219(eq[7, A002260(n+1)])`
-/

namespace A111995.P13579427267782914103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111995.P13579427267782914103

/-!
# A111996: Eighth convolution of Schroeder's (second problem) numbers A001003(n), n>=0.

The programs for A111996, there is no canonical definition to state claims against.
-/

/-! ## A111996.P7242478137024640384

`A104219(eq[7, A002262(n)])`
-/

namespace A111996.P7242478137024640384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111996.P7242478137024640384

/-! ## A111996.P10551782751874255178

`A104219(A000096(n+6)+8)`
-/

namespace A111996.P10551782751874255178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (A000096 (n + 6) + 8).toNat

end

end A111996.P10551782751874255178

/-! ## A111996.P1192534858107351994

`A104219(A000217(n+7)+7)`
-/

namespace A111996.P1192534858107351994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (A000217 (n + 7) + 7).toNat

end

end A111996.P1192534858107351994

/-! ## A111996.P10084514181082424883

`A104219(eq[8, A002260(n+1)])`
-/

namespace A111996.P10084514181082424883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111996.P10084514181082424883

/-!
# A111997: Ninth convolution of Schroeder's (second problem) numbers A001003(n), n>=0.

The programs for A111997, there is no canonical definition to state claims against.
-/

/-! ## A111997.P7938189285687568078

`A011117(A000096(n+7)+n+1)`
-/

namespace A111997.P7938189285687568078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011117 (A000096 (n + 7) + (n + 1 : ℤ)).toNat

end

end A111997.P7938189285687568078

/-! ## A111997.P9209126271292702413

`A104219(A000096(n+7)+9)`
-/

namespace A111997.P9209126271292702413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (A000096 (n + 7) + 9).toNat

end

end A111997.P9209126271292702413

/-! ## A111997.P9137830055766397677

`A104219(A056000(n+6)-(2*n+1))`
-/

namespace A111997.P9137830055766397677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (A056000 (n + 6) - (2 * n + 1 : ℤ)).toNat

end

end A111997.P9137830055766397677

/-! ## A111997.P15009523892444745905

`A104219(A016789(n+9)+A000217(n+5))`
-/

namespace A111997.P15009523892444745905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (A016789 (n + 9) + A000217 (n + 5)).toNat

end

end A111997.P15009523892444745905

/-! ## A111997.P3425250213483475351

`A104219(A000217(n+10)-10-A005408(n))`
-/

namespace A111997.P3425250213483475351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (A000217 (n + 10) - 10 - A005408 n).toNat

end

end A111997.P3425250213483475351

/-!
# A111998: Tenth convolution of Schroeder's (second problem) numbers A001003(n), n>=0.

The programs for A111998, there is no canonical definition to state claims against.
-/

/-! ## A111998.P7978582108229732031

`A104219(eq[9, A002262(n)])`
-/

namespace A111998.P7978582108229732031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111998.P7978582108229732031

/-! ## A111998.P7478218487096010802

`A104219(A000096(n+8)+10)`
-/

namespace A111998.P7478218487096010802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (A000096 (n + 8) + 10).toNat

end

end A111998.P7478218487096010802

/-! ## A111998.P5300044662644495072

`A104219(eq[10, A002260(n+1)])`
-/

namespace A111998.P5300044662644495072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111998.P5300044662644495072

/-! ## A111998.P11205717692116802007

`A104219(A000217(n+10)-(n+1))`
-/

namespace A111998.P11205717692116802007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (A000217 (n + 10) - (n + 1 : ℤ)).toNat

end

end A111998.P11205717692116802007

/-! ## A111998.P230022961533537803

`A104219(A161680(n+11)-(n+1))`
-/

namespace A111998.P230022961533537803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (A161680 (n + 11) - (n + 1 : ℤ)).toNat

end

end A111998.P230022961533537803

/-!
# A111999: T(n, k) = [x^k] (-1)^n*Sum_{k=0..n} E2(n, n-k)*(1+x)^(n-k) where E2(n, k) are the second-order Eulerian numbers. Triangle read by rows, T(n, k) for n >= 1 and 0 <= k <= n.

The programs for A111999, there is no canonical definition to state claims against.
-/

/-! ## A111999.P14460812173958209347

`A016023(A002024(n+1))*A259456(A061579(n))`
-/

namespace A111999.P14460812173958209347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016023 (A002024 (n + 1)).toNat * A259456 (A061579 n).toNat

end

end A111999.P14460812173958209347

/-! ## A111999.P3367570780239812555

`A033999(A185871(n+1))*A259456(A061579(n))`
-/

namespace A111999.P3367570780239812555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A185871 (n + 1)).toNat * A259456 (A061579 n).toNat

end

end A111999.P3367570780239812555

/-! ## A111999.P18193989996211361588

`A008683(A210848(n))*A133932(n+2)`
-/

namespace A111999.P18193989996211361588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A210848 n).toNat * A133932 (n + 2)

end

end A111999.P18193989996211361588

