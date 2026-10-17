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
import Seq.B000.C032
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A171800: a(n) = ((n+1)*2^n + 1)*(2^n + 1)^(n-1).

The programs for A171800, the canonical program `A171800.P8207078822798507330` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171800 has offset 0).

The definition of A171800 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171800.P8207078822798507330

`((n+1)*2^n+1)*(2^n+1)^(n-1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A171800

/-- `((n+1)*2^n+1)*(2^n+1)^(n-1)` -/
def P8207078822798507330.Spec : Prop :=
  ∀ n, P8207078822798507330.a n = (A171800 n : ℚ)

end A171800

/-! ## A171800.P14246345214825217085

`A136516(n)+n*A171799(n)`
-/

namespace A171800.P14246345214825217085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136516 n + (n : ℤ) * A171799 n

end

end A171800.P14246345214825217085

namespace A171800

/-- `A136516(n)+n*A171799(n)` -/
def P14246345214825217085.Spec : Prop :=
  ∀ n, P14246345214825217085.a n = A171800 n

end A171800

/-!
# A171802: G.f. satisfies: A(x) = P(x*A(x)^2) where A(x/P(x)^2) = P(x) is the g.f. for Partition numbers (A000041).

The programs for A171802, there is no canonical definition to state claims against.
-/

/-! ## A171802.P15236814010948410884

`record[A140356(n)]-comp[or(3, n)]`
-/

namespace A171802.P15236814010948410884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140356 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

end

end A171802.P15236814010948410884

/-! ## A171802.P3381891392842925258

`A330928(n+1)!-comp[Δ[lcm(3, n)]]`
-/

namespace A171802.P3381891392842925258
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A330928 (n + 1)).toNat : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A171802.P3381891392842925258

/-!
# A171803: G.f. satisfies: A(x) = P(x*A(x))^2 where A(x/P(x)^2) = P(x)^2 and P(x) is the g.f. for Partition numbers (A000041).

The programs for A171803, there is no canonical definition to state claims against.
-/

/-! ## A171803.P8064352198552770897

`A144064(A081270(n))/(n+1)`
-/

namespace A171803.P8064352198552770897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144064 (A081270 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A171803.P8064352198552770897

/-! ## A171803.P2271274987731028615

`A144064(A155212(n)+(2*n+1)²)/(n+1)`
-/

namespace A171803.P2271274987731028615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144064 (A155212 n + ((2 * n + 1) ^ 2 : ℤ)).toNat : ℚ) / (n + 1 : ℚ)

end

end A171803.P2271274987731028615

/-! ## A171803.P12894332599265733951

`A000081(2*n+1)-A061858(A305923(n))`
-/

namespace A171803.P12894332599265733951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (2 * n + 1) - A061858 (A305923 n).toNat

end

end A171803.P12894332599265733951

/-!
# A171804: G.f. satisfies: A(x) = P(x*A(x)^3) where A(x/P(x)^3) = P(x) is the g.f. for partition numbers (A000041).

The programs for A171804, there is no canonical definition to state claims against.
-/

/-! ## A171804.P7148848649058210807

`A074135(A365182(n))`
-/

namespace A171804.P7148848649058210807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074135 (A365182 n).toNat

end

end A171804.P7148848649058210807

/-! ## A171804.P4448954598166877231

`A365182(n)-A079944(A067309(n))`
-/

namespace A171804.P4448954598166877231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365182 n - A079944 (A067309 n).toNat

end

end A171804.P4448954598166877231

/-!
# A171805: G.f.: Series reversion of x/P(x)^3 where P(x) is the g.f. for Partition numbers (A000041).

The programs for A171805, there is no canonical definition to state claims against.
-/

/-! ## A171805.P2173131696616492745

`A289437(n*7*a(n-1))+4` with `a(0)=1, a(1)=3`
-/

namespace A171805.P2173131696616492745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A289437 ((n : ℤ) * (7 * a (n - 1))).toNat + 4

end

end A171805.P2173131696616492745

/-!
# A171807: Emirps (A006567) p such that R(prime(p)) is prime.

The programs for A171807, there is no canonical definition to state claims against.
-/

/-! ## A171807.P11109043571805672569

`∩[A006567(n+1), A000720(A007500(n+1))]`
-/

namespace A171807.P11109043571805672569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007500 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171807.P11109043571805672569

/-! ## A171807.P5855505455129064140

`∩[A061395(A007500(n+1)), A006567(n+2)]`
-/

namespace A171807.P5855505455129064140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A007500 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171807.P5855505455129064140

/-! ## A171807.P17084647584658836481

`∩[A006567(n+1), A056239(A007500(n+3))]`
-/

namespace A171807.P17084647584658836481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A007500 (n + 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171807.P17084647584658836481

/-!
# A171810: Let a(0) = 1. a(n) is the least k>0 such that k*x^n + Sum_{i=0..n-1} a(i)*x^i is an irreducible polynomial.

The programs for A171810, there is no canonical definition to state claims against.
-/

/-! ## A171810.P7844306690540039587

`A066099(gcd(A000217(n), A334299(3*n)))`
-/

namespace A171810.P7844306690540039587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (Int.gcd (A000217 n) (A334299 (3 * n)))

end

end A171810.P7844306690540039587

/-! ## A171810.P281533233864901139

`A307116(A211226(n)+A108046(n+1))`
-/

namespace A171810.P281533233864901139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307116 (A211226 n + A108046 (n + 1)).toNat

end

end A171810.P281533233864901139

/-! ## A171810.P1283782443534918470

`A284259(A081404(3*n+2)+A081393(n))`
-/

namespace A171810.P1283782443534918470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284259 (A081404 (3 * n + 2) + A081393 n).toNat

end

end A171810.P1283782443534918470

/-! ## A171810.P15802909420231578767

`gcd(A007422(n+1), A136480(A154888(n+4)))`
-/

namespace A171810.P15802909420231578767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007422 (n + 1)) (A136480 (A154888 (n + 4)).toNat)

end

end A171810.P15802909420231578767

/-! ## A171810.P12577590735937884515

`gcd(A001615(2*n+5), A367401(A000009(n)))`
-/

namespace A171810.P12577590735937884515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001615 (2 * n + 5)) (A367401 (A000009 n).toNat)

end

end A171810.P12577590735937884515

/-!
# A171812: Degrees of terms with coefficient >2 in the polynomials of A171810.

The programs for A171812, there is no canonical definition to state claims against.
-/

/-! ## A171812.P2362727147635954547

`lt[2, A171810(n)]`
-/

namespace A171812.P2362727147635954547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171810 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A171812.P2362727147635954547

/-!
# A171813: Trajectory of 1 under repeated applications of the map i -> A171798(i).

The programs for A171813, there is no canonical definition to state claims against.
-/

/-! ## A171813.P2139679744107070550

`A171798(a(n-1))` with `a(0)=1`
-/

namespace A171813.P2139679744107070550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A171798 (a (n - 1)).toNat

end

end A171813.P2139679744107070550

/-!
# A171814: Triangle T : T(n,k)= A007318(n,k)*A001700(n-k).

The programs for A171814, the canonical program `A171814.P9797681691333110312` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171814 has offset 0).

The definition of A171814 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171814.P14923881382704983062

`(∑[2*n]%(comp[∑[n]]+1)+1)*A124644(n)`
-/

namespace A171814.P14923881382704983062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) + 1 : ℕ) : ℤ) * A124644 n

end

end A171814.P14923881382704983062

namespace A171814

/-- `(∑[2*n]%(comp[∑[n]]+1)+1)*A124644(n)` -/
def P14923881382704983062.Spec : Prop :=
  ∀ n, P14923881382704983062.a n = A171814 n

end A171814

/-! ## A171814.P9797681691333110312

`A099375(n)*A124644(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A171814

/-- `A099375(n)*A124644(n)` -/
def P9797681691333110312.Spec : Prop :=
  ∀ n, P9797681691333110312.a n = A171814 n

theorem P9797681691333110312.correct : P9797681691333110312.Spec := by
  intro n
  simp only [A171814]

end A171814

/-! ## A171814.P14699932026097002149

`A007318(n)*A001405((n²+1+n)%(comp[C(n, 2)]+1))`
-/

namespace A171814.P14699932026097002149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A001405 ((n ^ 2 + 1 + n) % (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1))

end

end A171814.P14699932026097002149

namespace A171814

/-- `A007318(n)*A001405((n²+1+n)%(comp[C(n, 2)]+1))` -/
def P14699932026097002149.Spec : Prop :=
  ∀ n, P14699932026097002149.a n = A171814 n

end A171814

/-! ## A171814.P9593704228631462848

`A001700(A025581(n))*A007318(n)`
-/

namespace A171814.P9593704228631462848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 (A025581 n).toNat * A007318 n

end

end A171814.P9593704228631462848

namespace A171814

/-- `A001700(A025581(n))*A007318(n)` -/
def P9593704228631462848.Spec : Prop :=
  ∀ n, P9593704228631462848.a n = A171814 n

end A171814

/-! ## A171814.P11335408382452214171

`A007318(n)*A088218(A004736(n+1))`
-/

namespace A171814.P11335408382452214171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A088218 (A004736 (n + 1)).toNat

end

end A171814.P11335408382452214171

namespace A171814

/-- `A007318(n)*A088218(A004736(n+1))` -/
def P11335408382452214171.Spec : Prop :=
  ∀ n, P11335408382452214171.a n = A171814 n

end A171814

/-!
# A171815: Values of A171743 that are 1 less than a prime, listed in the order in which they appear.

The programs for A171815, the canonical program `A171815.P11809366983025997243` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171815 has offset 1).

The definition of A171815 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2691 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171815.P11809366983025997243

`p?[A171743(n+1)+1]-1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A171815

/-- `p?[A171743(n+1)+1]-1` -/
def P11809366983025997243.Spec : Prop :=
  ∀ n, P11809366983025997243.a n = A171815 (n + 1)

theorem P11809366983025997243.correct : P11809366983025997243.Spec := by
  intro n
  simp only [A171815, Nat.add_sub_cancel]

end A171815

/-! ## A171815.P6925445185314268268

`p?[A000010(A011974(n+2))+1]-1`
-/

namespace A171815.P6925445185314268268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A011974 (n + 2)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A171815.P6925445185314268268

namespace A171815

/-- `p?[A000010(A011974(n+2))+1]-1` -/
def P6925445185314268268.Spec : Prop :=
  ∀ n, P6925445185314268268.a n = A171815 (n + 1)

end A171815

/-! ## A171815.P6272390252802160488

`p?[A015126(A001043(n+1))]-1`
-/

namespace A171815.P6272390252802160488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015126 (A001043 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A171815.P6272390252802160488

namespace A171815

/-- `p?[A015126(A001043(n+1))]-1` -/
def P6272390252802160488.Spec : Prop :=
  ∀ n, P6272390252802160488.a n = A171815 (n + 1)

end A171815

/-! ## A171815.P7771828612771922665

`p?[A015126(A011974(n+1))]-1`
-/

namespace A171815.P7771828612771922665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015126 (A011974 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A171815.P7771828612771922665

namespace A171815

/-- `p?[A015126(A011974(n+1))]-1` -/
def P7771828612771922665.Spec : Prop :=
  ∀ n, P7771828612771922665.a n = A171815 (n + 1)

end A171815

/-! ## A171815.P17380908684168087824

`A004442(p?[A039649(A001043(n+1))])`
-/

namespace A171815.P17380908684168087824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A001043 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A171815.P17380908684168087824

namespace A171815

/-- `A004442(p?[A039649(A001043(n+1))])` -/
def P17380908684168087824.Spec : Prop :=
  ∀ n, P17380908684168087824.a n = A171815 (n + 1)

end A171815

/-! ## A171815.P3728870492346384670

`p?[A039649(A001043(n+1))]-(A007318(n)%2)!`
-/

namespace A171815.P3728870492346384670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A001043 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (Nat.factorial (Int.tmod (A007318 n) 2).toNat : ℤ)

end

end A171815.P3728870492346384670

namespace A171815

/-- `p?[A039649(A001043(n+1))]-(A007318(n)%2)!` -/
def P3728870492346384670.Spec : Prop :=
  ∀ n, P3728870492346384670.a n = A171815 (n + 1)

end A171815

/-! ## A171815.P8167628433480498644

`p?[A039649(A001043(n+1))]-A014963(6*(n+1))`
-/

namespace A171815.P8167628433480498644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A001043 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A014963 (6 * (n + 1))

end

end A171815.P8167628433480498644

namespace A171815

/-- `p?[A039649(A001043(n+1))]-A014963(6*(n+1))` -/
def P8167628433480498644.Spec : Prop :=
  ∀ n, P8167628433480498644.a n = A171815 (n + 1)

end A171815

/-! ## A171815.P7222471881055228239

`p?[A039649(A001043(n+1))]-A000040(n+2)%2`
-/

namespace A171815.P7222471881055228239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A001043 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - Int.tmod (A000040 (n + 2)) 2

end

end A171815.P7222471881055228239

namespace A171815

/-- `p?[A039649(A001043(n+1))]-A000040(n+2)%2` -/
def P7222471881055228239.Spec : Prop :=
  ∀ n, P7222471881055228239.a n = A171815 (n + 1)

end A171815

/-! ## A171815.P2822598142295107620

`p?[A039649(A001043(n+1))]-A000041(n²%(n+1))`
-/

namespace A171815.P2822598142295107620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A001043 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A000041 (n ^ 2 % (n + 1))

end

end A171815.P2822598142295107620

namespace A171815

/-- `p?[A039649(A001043(n+1))]-A000041(n²%(n+1))` -/
def P2822598142295107620.Spec : Prop :=
  ∀ n, P2822598142295107620.a n = A171815 (n + 1)

end A171815

/-!
# A171816: Smallest number of rank n in the poset of lunar numbers.

The programs for A171816, there is no canonical definition to state claims against.
-/

/-! ## A171816.P8183627356660011053

`A267193(n)+A010894(A311535(n))`
-/

namespace A171816.P8183627356660011053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267193 n + A010894 ((A311535 n).toNat + 21)

end

end A171816.P8183627356660011053

/-! ## A171816.P1469913775363385921

`A267193(n)+A010894(A312475(n))`
-/

namespace A171816.P1469913775363385921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267193 n + A010894 ((A312475 n).toNat + 21)

end

end A171816.P1469913775363385921

/-!
# A171817: Primes p such that neither the previous nor the next prime is of the form 6k+1.

The programs for A171817, there is no canonical definition to state claims against.
-/

/-! ## A171817.P12686951707096684758

`A000040(A173144(n%a(n-1)))` with `a(0)=2`
-/

namespace A171817.P12686951707096684758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (A173144 (Int.tmod (n : ℤ) (a (n - 1))).toNat).toNat

end

end A171817.P12686951707096684758

/-! ## A171817.P10960254835870333825

`∪[A000040(A173144(n+1)), A173156(n+1)]`
-/

namespace A171817.P10960254835870333825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A173144 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171817.P10960254835870333825

/-! ## A171817.P14634962261929017137

`∪[A000040(A173144(n+1)), A290972(n+1)]`
-/

namespace A171817.P14634962261929017137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A173144 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171817.P14634962261929017137

/-! ## A171817.P4712182740874511991

`A000040(∪[A173126(3*n+4), A173144(n+1)])`
-/

namespace A171817.P4712182740874511991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173126 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173144 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A171817.P4712182740874511991

/-! ## A171817.P17134758829102212533

`p?[∑[A283976(A243903(n+1))]]`
-/

namespace A171817.P17134758829102212533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (A243903 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171817.P17134758829102212533

/-!
# A171818: Lunar product 2 X n in base 10.

The programs for A171818, there is no canonical definition to state claims against.
-/

/-! ## A171818.P10445599510395620887

`A261684(∑[n+3])`
-/

namespace A171818.P10445599510395620887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261684 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A171818.P10445599510395620887

/-! ## A171818.P17144440714289336876

`A087062(∑[n]+2)%(n+1)`
-/

namespace A171818.P17144440714289336876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087062 (∑ j ∈ Finset.range (n + 1), f1 j + 2)) (n + 1 : ℤ)

end

end A171818.P17144440714289336876

/-! ## A171818.P12819265366217501279

`n-A235049(A235049(n))`
-/

namespace A171818.P12819265366217501279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A235049 (A235049 n).toNat

end

end A171818.P12819265366217501279

/-! ## A171818.P4412787633058140407

`A087062(∑[n]+2)-A000007(n)`
-/

namespace A171818.P4412787633058140407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087062 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - A000007 n

end

end A171818.P4412787633058140407

/-! ## A171818.P10194734071716738581

`A087062(∑[n]+2)-A023531(∑[n])`
-/

namespace A171818.P10194734071716738581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087062 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - A023531 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A171818.P10194734071716738581

/-! ## A171818.P15196899109537946897

`lcm(A000122(n)-1, A087062(∑[n]+2))`
-/

namespace A171818.P15196899109537946897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000122 n - 1) (A087062 (∑ j ∈ Finset.range (n + 1), f1 j + 2))

end

end A171818.P15196899109537946897

/-! ## A171818.P12454230595888951207

`xor(A000007(3*n), A087062(∑[n]+2))`
-/

namespace A171818.P12454230595888951207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (3 * n)) (A087062 (∑ j ∈ Finset.range (n + 1), f1 j + 2))

end

end A171818.P12454230595888951207

/-! ## A171818.P6604418166767771845

`floor(A087062(∑[n]+2)/A000038(n)!)`
-/

namespace A171818.P6604418166767771845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A087062 (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℚ) / (Nat.factorial (A000038 n).toNat : ℚ)⌋

end

end A171818.P6604418166767771845

/-! ## A171818.P1549518503859506116

`A087062(∑[n]+2)-val(A000040(n+1), 2)`
-/

namespace A171818.P1549518503859506116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087062 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A171818.P1549518503859506116

/-! ## A171818.P14467137899100962805

`A087062(∑[n]+2)-A000045(C(2, n+2))`
-/

namespace A171818.P14467137899100962805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087062 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - A000045 (Nat.choose 2 (n + 2))

end

end A171818.P14467137899100962805

/-!
# A171820: Numbers n such that the n-th prime is of the form 3k + 1/2 +- 1/2.

The programs for A171820, the canonical program `A171820.P15002892113044844994` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171820 has offset 1).

The definition of A171820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171820.P15002892113044844994

`∪[A091178(n+1), A109119(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A171820

/-- `∪[A091178(n+1), A109119(n)]` -/
def P15002892113044844994.Spec : Prop :=
  ∀ n, (P15002892113044844994.a n : ℤ) = A171820 (n + 1)

theorem P15002892113044844994.correct : P15002892113044844994.Spec := by
  intro n
  simp only [A171820, Nat.add_sub_cancel]

end A171820

/-! ## A171820.P15841194845054701337

`∪[A003391(n+1), A091178(n+1)]`
-/

namespace A171820.P15841194845054701337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171820.P15841194845054701337

namespace A171820

/-- `∪[A003391(n+1), A091178(n+1)]` -/
def P15841194845054701337.Spec : Prop :=
  ∀ n, (P15841194845054701337.a n : ℤ) = A171820 (n + 1)

end A171820

/-! ## A171820.P2075181701414659288

`∪[A006686(n+1), A091178(n+1)]`
-/

namespace A171820.P2075181701414659288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171820.P2075181701414659288

namespace A171820

/-- `∪[A006686(n+1), A091178(n+1)]` -/
def P2075181701414659288.Spec : Prop :=
  ∀ n, (P2075181701414659288.a n : ℤ) = A171820 (n + 1)

end A171820

/-! ## A171820.P4234704284459528125

`∪[A007352(n+1), A091178(n+1)]`
-/

namespace A171820.P4234704284459528125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171820.P4234704284459528125

namespace A171820

/-- `∪[A007352(n+1), A091178(n+1)]` -/
def P4234704284459528125.Spec : Prop :=
  ∀ n, (P4234704284459528125.a n : ℤ) = A171820 (n + 1)

end A171820

/-! ## A171820.P3935304824009993351

`∪[A062066(n+1), A091178(n+1)]`
-/

namespace A171820.P3935304824009993351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171820.P3935304824009993351

namespace A171820

/-- `∪[A062066(n+1), A091178(n+1)]` -/
def P3935304824009993351.Spec : Prop :=
  ∀ n, (P3935304824009993351.a n : ℤ) = A171820 (n + 1)

end A171820

/-! ## A171820.P9654255106537440535

`record[(n+2)*abs(A098090(n+1)%3-1)]`
-/

namespace A171820.P9654255106537440535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * |Int.tmod (A098090 (n + 1)) 3 - 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171820.P9654255106537440535

namespace A171820

/-- `record[(n+2)*abs(A098090(n+1)%3-1)]` -/
def P9654255106537440535.Spec : Prop :=
  ∀ n, P9654255106537440535.a n = A171820 (n + 1)

end A171820

/-! ## A171820.P5664146059950794906

`lt[A039701(n+1), 2]+1`
-/

namespace A171820.P5664146059950794906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039701 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A171820.P5664146059950794906

namespace A171820

/-- `lt[A039701(n+1), 2]+1` -/
def P5664146059950794906.Spec : Prop :=
  ∀ n, (P5664146059950794906.a n : ℤ) = A171820 (n + 1)

end A171820

/-! ## A171820.P18270251406685774560

`lt[A227991(n+1), 2]+1`
-/

namespace A171820.P18270251406685774560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227991 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A171820.P18270251406685774560

namespace A171820

/-- `lt[A227991(n+1), 2]+1` -/
def P18270251406685774560.Spec : Prop :=
  ∀ n, (P18270251406685774560.a n : ℤ) = A171820 (n + 1)

end A171820

/-! ## A171820.P5594242799556176574

`lt[1, A161344(n+1)%3]`
-/

namespace A171820.P5594242799556176574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161344 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A171820.P5594242799556176574

namespace A171820

/-- `lt[1, A161344(n+1)%3]` -/
def P5594242799556176574.Spec : Prop :=
  ∀ n, (P5594242799556176574.a n : ℤ) = A171820 (n + 1)

end A171820

/-! ## A171820.P14503411573188992533

`lt[0, A040976(n+1)%3]+1`
-/

namespace A171820.P14503411573188992533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040976 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A171820.P14503411573188992533

namespace A171820

/-- `lt[0, A040976(n+1)%3]+1` -/
def P14503411573188992533.Spec : Prop :=
  ∀ n, (P14503411573188992533.a n : ℤ) = A171820 (n + 1)

end A171820

/-! ## A171820.P2321334128146648841

`lt[A000040(n+1)%3, 2]+1`
-/

namespace A171820.P2321334128146648841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A171820.P2321334128146648841

namespace A171820

/-- `lt[A000040(n+1)%3, 2]+1` -/
def P2321334128146648841.Spec : Prop :=
  ∀ n, (P2321334128146648841.a n : ℤ) = A171820 (n + 1)

end A171820

/-! ## A171820.P4301554452704947761

`eq[4, a(A000040(n)%3)²]` with `a(0)=2, a(1)=2`
-/

namespace A171820.P4301554452704947761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  f2 (Int.tmod (A000040 n) 3).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171820.P4301554452704947761

namespace A171820

/-- `eq[4, a(A000040(n)%3)²]` -/
def P4301554452704947761.Spec : Prop :=
  ∀ n, (P4301554452704947761.a n : ℤ) = A171820 (n + 1)

end A171820

/-! ## A171820.P11249101849272743887

`eq[A134323(n+1)², A134323(n+1)]+1`
-/

namespace A171820.P11249101849272743887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134323 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134323 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A171820.P11249101849272743887

namespace A171820

/-- `eq[A134323(n+1)², A134323(n+1)]+1` -/
def P11249101849272743887.Spec : Prop :=
  ∀ n, (P11249101849272743887.a n : ℤ) = A171820 (n + 1)

end A171820

/-! ## A171820.P4747730439905028150

`lt[A000005(4*A242119(n+1)+1), 3]+1`
-/

namespace A171820.P4747730439905028150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * A242119 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A171820.P4747730439905028150

namespace A171820

/-- `lt[A000005(4*A242119(n+1)+1), 3]+1` -/
def P4747730439905028150.Spec : Prop :=
  ∀ n, (P4747730439905028150.a n : ℤ) = A171820 (n + 1)

end A171820

/-! ## A171820.P168678006261020715

`lt[2, A020639(ceil((2*A000040(n+1)+1)/3))]+1`
-/

namespace A171820.P168678006261020715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌈(2 * A000040 (n + 1) + 1 : ℚ) / 3⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A171820.P168678006261020715

namespace A171820

/-- `lt[2, A020639(ceil((2*A000040(n+1)+1)/3))]+1` -/
def P168678006261020715.Spec : Prop :=
  ∀ n, (P168678006261020715.a n : ℤ) = A171820 (n + 1)

end A171820

/-! ## A171820.P8711220283817302115

`A000720(p?[or(1, 3*n)])`
-/

namespace A171820.P8711220283817302115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A171820.P8711220283817302115

namespace A171820

/-- `A000720(p?[or(1, 3*n)])` -/
def P8711220283817302115.Spec : Prop :=
  ∀ n, P8711220283817302115.a n = A171820 (n + 1)

end A171820

/-! ## A171820.P6864825392496163409

`A000720(p?[floor(3*n/2)])`
-/

namespace A171820.P6864825392496163409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((n : ℚ) / 2)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A171820.P6864825392496163409

namespace A171820

/-- `A000720(p?[floor(3*n/2)])` -/
def P6864825392496163409.Spec : Prop :=
  ∀ n, P6864825392496163409.a n = A171820 (n + 1)

end A171820

/-! ## A171820.P5728638349095391660

`A061395(p?[floor(3*n/2)])`
-/

namespace A171820.P5728638349095391660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((n : ℚ) / 2)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A171820.P5728638349095391660

namespace A171820

/-- `A061395(p?[floor(3*n/2)])` -/
def P5728638349095391660.Spec : Prop :=
  ∀ n, P5728638349095391660.a n = A171820 (n + 1)

end A171820

/-! ## A171820.P388768374507047488

`A000720(A007645(n+1))`
-/

namespace A171820.P388768374507047488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007645 (n + 1)).toNat

end

end A171820.P388768374507047488

namespace A171820

/-- `A000720(A007645(n+1))` -/
def P388768374507047488.Spec : Prop :=
  ∀ n, P388768374507047488.a n = A171820 (n + 1)

end A171820

/-! ## A171820.P7884794991893555710

`A099801(A177965(n+1))`
-/

namespace A171820.P7884794991893555710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A177965 (n + 1)).toNat

end

end A171820.P7884794991893555710

namespace A171820

/-- `A099801(A177965(n+1))` -/
def P7884794991893555710.Spec : Prop :=
  ∀ n, P7884794991893555710.a n = A171820 (n + 1)

end A171820

/-!
# A171821: 2 together with twin primes.

The programs for A171821, the canonical program `A171821.P6124203405807324285` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171821 has offset 1).

The definition of A171821 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171821.P6124203405807324285

`A077800(n+1)-A130706(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A171821

/-- `A077800(n+1)-A130706(n)` -/
def P6124203405807324285.Spec : Prop :=
  ∀ n, P6124203405807324285.a n = A171821 (n + 1)

theorem P6124203405807324285.correct : P6124203405807324285.Spec := by
  intro n
  simp only [A171821, Nat.add_sub_cancel]

end A171821

/-! ## A171821.P6590566079548276827

`∪[A001097(n+1), A061351(n)]`
-/

namespace A171821.P6590566079548276827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171821.P6590566079548276827

namespace A171821

/-- `∪[A001097(n+1), A061351(n)]` -/
def P6590566079548276827.Spec : Prop :=
  ∀ n, (P6590566079548276827.a n : ℤ) = A171821 (n + 1)

end A171821

/-! ## A171821.P4773762095918842562

`∪[A265760(n+1), A061351(n)]`
-/

namespace A171821.P4773762095918842562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171821.P4773762095918842562

namespace A171821

/-- `∪[A265760(n+1), A061351(n)]` -/
def P4773762095918842562.Spec : Prop :=
  ∀ n, (P4773762095918842562.a n : ℤ) = A171821 (n + 1)

end A171821

/-! ## A171821.P12068316523471856534

`∪[A001097(n+1), A007352(n+1)]`
-/

namespace A171821.P12068316523471856534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171821.P12068316523471856534

namespace A171821

/-- `∪[A001097(n+1), A007352(n+1)]` -/
def P12068316523471856534.Spec : Prop :=
  ∀ n, (P12068316523471856534.a n : ℤ) = A171821 (n + 1)

end A171821

/-! ## A171821.P1810048691913546620

`∪[A001359(n+1), A265760(n+1)]`
-/

namespace A171821.P1810048691913546620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171821.P1810048691913546620

namespace A171821

/-- `∪[A001359(n+1), A265760(n+1)]` -/
def P1810048691913546620.Spec : Prop :=
  ∀ n, (P1810048691913546620.a n : ℤ) = A171821 (n + 1)

end A171821

/-! ## A171821.P17372317853288399955

`A099609(A057544(n+1))`
-/

namespace A171821.P17372317853288399955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099609 (A057544 (n + 1)).toNat

end

end A171821.P17372317853288399955

namespace A171821

/-- `A099609(A057544(n+1))` -/
def P17372317853288399955.Spec : Prop :=
  ∀ n, P17372317853288399955.a n = A171821 (n + 1)

end A171821

/-! ## A171821.P17821143995850559272

`p?[A000040(n+1)*A051702(A051702(n+1))]`
-/

namespace A171821.P17821143995850559272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A051702 (A051702 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171821.P17821143995850559272

namespace A171821

/-- `p?[A000040(n+1)*A051702(A051702(n+1))]` -/
def P17821143995850559272.Spec : Prop :=
  ∀ n, P17821143995850559272.a n = A171821 (n + 1)

end A171821

/-! ## A171821.P257674596513291112

`lt[A283265(n+1), 1]+1`
-/

namespace A171821.P257674596513291112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283265 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A171821.P257674596513291112

namespace A171821

/-- `lt[A283265(n+1), 1]+1` -/
def P257674596513291112.Spec : Prop :=
  ∀ n, (P257674596513291112.a n : ℤ) = A171821 (n + 1)

end A171821

/-! ## A171821.P3489424671737589692

`record[A006530(2*A062505(n+1))]`
-/

namespace A171821.P3489424671737589692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A062505 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171821.P3489424671737589692

namespace A171821

/-- `record[A006530(2*A062505(n+1))]` -/
def P3489424671737589692.Spec : Prop :=
  ∀ n, P3489424671737589692.a n = A171821 (n + 1)

end A171821

/-! ## A171821.P3048435208175279991

`p?[comp[A167706(n+2)]]`
-/

namespace A171821.P3048435208175279991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A171821.P3048435208175279991

namespace A171821

/-- `p?[comp[A167706(n+2)]]` -/
def P3048435208175279991.Spec : Prop :=
  ∀ n, (P3048435208175279991.a n : ℤ) = A171821 (n + 1)

end A171821

/-! ## A171821.P4625121312084427072

`record[A006530(2*A072963(n+1))]`
-/

namespace A171821.P4625121312084427072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A072963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171821.P4625121312084427072

namespace A171821

/-- `record[A006530(2*A072963(n+1))]` -/
def P4625121312084427072.Spec : Prop :=
  ∀ n, P4625121312084427072.a n = A171821 (n + 1)

end A171821

/-! ## A171821.P770228652402388663

`record[A006530(A072963(n+1)+A006530(n+1))]`
-/

namespace A171821.P770228652402388663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A072963 (n + 1) + A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171821.P770228652402388663

namespace A171821

/-- `record[A006530(A072963(n+1)+A006530(n+1))]` -/
def P770228652402388663.Spec : Prop :=
  ∀ n, P770228652402388663.a n = A171821 (n + 1)

end A171821

/-!
# A171822: Triangle T(n,k) = binomial(2*n-k, k)*binomial(n+k, 2*k), read by rows.

The programs for A171822, the canonical program `A171822.P12324693438503934281` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171822 has offset 0).

The definition of A171822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7808 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171822.P12324693438503934281

`A054142(n)*A085478(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A171822

/-- `A054142(n)*A085478(n)` -/
def P12324693438503934281.Spec : Prop :=
  ∀ n, P12324693438503934281.a n = A171822 n

theorem P12324693438503934281.correct : P12324693438503934281.Spec := by
  intro n
  simp only [A171822]

end A171822

/-! ## A171822.P757903421650067862

`A076756(n)*A129818(n)`
-/

namespace A171822.P757903421650067862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076756 n * A129818 n

end

end A171822.P757903421650067862

namespace A171822

/-- `A076756(n)*A129818(n)` -/
def P757903421650067862.Spec : Prop :=
  ∀ n, P757903421650067862.a n = A171822 n

end A171822

/-! ## A171822.P12269065829374502822

`abs(A076756(n)*A085478(n))`
-/

namespace A171822.P12269065829374502822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A076756 n * A085478 n|

end

end A171822.P12269065829374502822

namespace A171822

/-- `abs(A076756(n)*A085478(n))` -/
def P12269065829374502822.Spec : Prop :=
  ∀ n, P12269065829374502822.a n = A171822 n

end A171822

/-! ## A171822.P16223703611806160385

`A054142(n)*A054142(A061579(n))`
-/

namespace A171822.P16223703611806160385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 n * A054142 (A061579 n).toNat

end

end A171822.P16223703611806160385

namespace A171822

/-- `A054142(n)*A054142(A061579(n))` -/
def P16223703611806160385.Spec : Prop :=
  ∀ n, P16223703611806160385.a n = A171822 n

end A171822

/-! ## A171822.P8868568727036195645

`A085478(A061579(n))*A085478(n)`
-/

namespace A171822.P8868568727036195645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 (A061579 n).toNat * A085478 n

end

end A171822.P8868568727036195645

namespace A171822

/-- `A085478(A061579(n))*A085478(n)` -/
def P8868568727036195645.Spec : Prop :=
  ∀ n, P8868568727036195645.a n = A171822 n

end A171822

/-! ## A171822.P16232260362790483418

`abs(A076756(A061579(n))*A076756(n))`
-/

namespace A171822.P16232260362790483418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A076756 (A061579 n).toNat * A076756 n|

end

end A171822.P16232260362790483418

namespace A171822

/-- `abs(A076756(A061579(n))*A076756(n))` -/
def P16232260362790483418.Spec : Prop :=
  ∀ n, P16232260362790483418.a n = A171822 n

end A171822

/-! ## A171822.P3869610708383890132

`A054142(A038722(n+2))*A054142(n)`
-/

namespace A171822.P3869610708383890132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 (A038722 (n + 2)).toNat * A054142 n

end

end A171822.P3869610708383890132

namespace A171822

/-- `A054142(A038722(n+2))*A054142(n)` -/
def P3869610708383890132.Spec : Prop :=
  ∀ n, P3869610708383890132.a n = A171822 n

end A171822

/-! ## A171822.P13466738223685666634

`A085478(A038722(n+2))*A085478(n)`
-/

namespace A171822.P13466738223685666634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 (A038722 (n + 2)).toNat * A085478 n

end

end A171822.P13466738223685666634

namespace A171822

/-- `A085478(A038722(n+2))*A085478(n)` -/
def P13466738223685666634.Spec : Prop :=
  ∀ n, P13466738223685666634.a n = A171822 n

end A171822

/-! ## A171822.P12862715020022576576

`A054142(n)*A054142(A114327(n)+n)`
-/

namespace A171822.P12862715020022576576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 n * A054142 (A114327 n + (n : ℤ)).toNat

end

end A171822.P12862715020022576576

namespace A171822

/-- `A054142(n)*A054142(A114327(n)+n)` -/
def P12862715020022576576.Spec : Prop :=
  ∀ n, P12862715020022576576.a n = A171822 n

end A171822

/-! ## A171822.P2439295495094679368

`(A156717(n+1)-A054142(n))*A054142(n)`
-/

namespace A171822.P2439295495094679368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A156717 (n + 1) - A054142 n) * A054142 n

end

end A171822.P2439295495094679368

namespace A171822

/-- `(A156717(n+1)-A054142(n))*A054142(n)` -/
def P2439295495094679368.Spec : Prop :=
  ∀ n, P2439295495094679368.a n = A171822 n

end A171822

/-! ## A171822.P12758220726243780856

`(A156717(n+1)-A085478(n))*A085478(n)`
-/

namespace A171822.P12758220726243780856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A156717 (n + 1) - A085478 n) * A085478 n

end

end A171822.P12758220726243780856

namespace A171822

/-- `(A156717(n+1)-A085478(n))*A085478(n)` -/
def P12758220726243780856.Spec : Prop :=
  ∀ n, P12758220726243780856.a n = A171822 n

end A171822

/-!
# A171823: a(n) = base-2 concatenation XYZ, where X = number of bits in binary expansion of n, Y = number of 0's, Z = number of 1's.

The programs for A171823, there is no canonical definition to state claims against.
-/

/-! ## A171823.P11568442791222862144

`A257831(A171798(n+1))`
-/

namespace A171823.P11568442791222862144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257831 (A171798 (n + 1)).toNat

end

end A171823.P11568442791222862144

/-! ## A171823.P15579255768259883245

`A257831(∑{digits}[A007088(n+1), A171797(#)])`
-/

namespace A171823.P15579255768259883245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257831 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A171797 x).sum.toNat

end

end A171823.P15579255768259883245

/-! ## A171823.P5750142023027035870

`A257831(∑{digits}[A139707(n+1), A171797(#)])`
-/

namespace A171823.P5750142023027035870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257831 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A171797 x).sum.toNat

end

end A171823.P5750142023027035870

/-! ## A171823.P10156418728354874474

`A257831(∑{digits}[A139709(n+1), A171797(#)])`
-/

namespace A171823.P10156418728354874474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257831 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A171797 x).sum.toNat

end

end A171823.P10156418728354874474

/-!
# A171824: Triangle T(n,k)= binomial(n + k,n) + binomial(2*n-k,n) read by rows.

The programs for A171824, the canonical program `A171824.P9505180745158428969` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171824 has offset 0).

The definition of A171824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171824.P9505180745158428969

`A092392(n)+A046899(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A171824

/-- `A092392(n)+A046899(n)` -/
def P9505180745158428969.Spec : Prop :=
  ∀ n, P9505180745158428969.a n = A171824 n

theorem P9505180745158428969.correct : P9505180745158428969.Spec := by
  intro n
  simp only [A171824]

end A171824

/-! ## A171824.P8404607534821854348

`A046899(n)+A046899(A061579(n))`
-/

namespace A171824.P8404607534821854348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n + A046899 (A061579 n).toNat

end

end A171824.P8404607534821854348

namespace A171824

/-- `A046899(n)+A046899(A061579(n))` -/
def P8404607534821854348.Spec : Prop :=
  ∀ n, P8404607534821854348.a n = A171824 n

end A171824

/-! ## A171824.P5428576299889097628

`A092392(A061579(n))+A092392(n)`
-/

namespace A171824.P5428576299889097628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 (A061579 n).toNat + A092392 n

end

end A171824.P5428576299889097628

namespace A171824

/-- `A092392(A061579(n))+A092392(n)` -/
def P5428576299889097628.Spec : Prop :=
  ∀ n, P5428576299889097628.a n = A171824 n

end A171824

/-! ## A171824.P4825212249028763182

`A046899(A038722(n+2))+A046899(n)`
-/

namespace A171824.P4825212249028763182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A038722 (n + 2)).toNat + A046899 n

end

end A171824.P4825212249028763182

namespace A171824

/-- `A046899(A038722(n+2))+A046899(n)` -/
def P4825212249028763182.Spec : Prop :=
  ∀ n, P4825212249028763182.a n = A171824 n

end A171824

/-! ## A171824.P17250064141239339723

`A046899(n)+A046899(A114327(n)+n)`
-/

namespace A171824.P17250064141239339723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n + A046899 (A114327 n + (n : ℤ)).toNat

end

end A171824.P17250064141239339723

namespace A171824

/-- `A046899(n)+A046899(A114327(n)+n)` -/
def P17250064141239339723.Spec : Prop :=
  ∀ n, P17250064141239339723.a n = A171824 n

end A171824

/-! ## A171824.P6961978456335815912

`A092392(A038722(n+1)-1)+A092392(n)`
-/

namespace A171824.P6961978456335815912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 (A038722 (n + 1) - 1).toNat + A092392 n

end

end A171824.P6961978456335815912

namespace A171824

/-- `A092392(A038722(n+1)-1)+A092392(n)` -/
def P6961978456335815912.Spec : Prop :=
  ∀ n, P6961978456335815912.a n = A171824 n

end A171824

/-! ## A171824.P4657345085607069795

`(A104684(n)+A063007(n))/A007318(n)`
-/

namespace A171824.P4657345085607069795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104684 n + A063007 n : ℚ) / (A007318 n : ℚ)

end

end A171824.P4657345085607069795

namespace A171824

/-- `(A104684(n)+A063007(n))/A007318(n)` -/
def P4657345085607069795.Spec : Prop :=
  ∀ n, P4657345085607069795.a n = (A171824 n : ℚ)

end A171824

/-! ## A171824.P2033081880509607100

`(A104684(A061579(n))+A104684(n))/A007318(n)`
-/

namespace A171824.P2033081880509607100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104684 (A061579 n).toNat + A104684 n : ℚ) / (A007318 n : ℚ)

end

end A171824.P2033081880509607100

namespace A171824

/-- `(A104684(A061579(n))+A104684(n))/A007318(n)` -/
def P2033081880509607100.Spec : Prop :=
  ∀ n, P2033081880509607100.a n = (A171824 n : ℚ)

end A171824

/-! ## A171824.P5230809299954647758

`A046899(n)+A371400(n)/A046899(n)`
-/

namespace A171824.P5230809299954647758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046899 n : ℚ) + (A371400 n : ℚ) / (A046899 n : ℚ)

end

end A171824.P5230809299954647758

namespace A171824

/-- `A046899(n)+A371400(n)/A046899(n)` -/
def P5230809299954647758.Spec : Prop :=
  ∀ n, P5230809299954647758.a n = (A171824 n : ℚ)

end A171824

/-! ## A171824.P13897129163304059535

`A092392(n)+A371400(n)/A092392(n)`
-/

namespace A171824.P13897129163304059535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092392 n : ℚ) + (A371400 n : ℚ) / (A092392 n : ℚ)

end

end A171824.P13897129163304059535

namespace A171824

/-- `A092392(n)+A371400(n)/A092392(n)` -/
def P13897129163304059535.Spec : Prop :=
  ∀ n, P13897129163304059535.a n = (A171824 n : ℚ)

end A171824

/-! ## A171824.P11328556122157348893

`A156763(n)/A007318(n)`
-/

namespace A171824.P11328556122157348893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156763 n : ℚ) / (A007318 n : ℚ)

end

end A171824.P11328556122157348893

namespace A171824

/-- `A156763(n)/A007318(n)` -/
def P11328556122157348893.Spec : Prop :=
  ∀ n, P11328556122157348893.a n = (A171824 n : ℚ)

end A171824

/-!
# A171827: Nonnegative integers that can be made by using exactly four fours (4 4's) and the four basic operators {+, -, *, /}.

The programs for A171827, there is no canonical definition to state claims against.
-/

/-! ## A171827.P3632707323257813791

`lt[A165804(n+1), A344675(A145511(3*n+4))]`
-/

namespace A171827.P3632707323257813791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344675 (A145511 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A171827.P3632707323257813791

/-! ## A171827.P4608534614657919821

`lt[A102462(A000224(3*n+4)), A051586(2*n+1)]`
-/

namespace A171827.P4608534614657919821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102462 (A000224 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051586 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A171827.P4608534614657919821

/-! ## A171827.P15626556044715374732

`lt[A048272(n+4), A216557(A092310(n+2))]`
-/

namespace A171827.P15626556044715374732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216557 (A092310 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A171827.P15626556044715374732

/-! ## A171827.P8362631131266783033

`lt[A277416(n), A130373(A002326(3*n+2))]`
-/

namespace A171827.P8362631131266783033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130373 (A002326 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A171827.P8362631131266783033

/-! ## A171827.P1678801390442278482

`lt[A048407(n), A354159(A145390(3*n+4))]`
-/

namespace A171827.P1678801390442278482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048407 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354159 (A145390 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A171827.P1678801390442278482

/-!
# A171828: Nonnegative integers that can be made by using five fives (5 5's) and the four basic operators {+, -, *, /}.

The programs for A171828, there is no canonical definition to state claims against.
-/

/-! ## A171828.P11875945605954778474

`lt[A144018(A086196(2*(n+1))), 11]`
-/

namespace A171828.P11875945605954778474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144018 (A086196 (2 * (n + 1))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A171828.P11875945605954778474

/-! ## A171828.P12160114411990862741

`lt[A104519(n+3), A086958(A099267(n+1))]`
-/

namespace A171828.P12160114411990862741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104519 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086958 (A099267 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A171828.P12160114411990862741

/-! ## A171828.P4867492513368976713

`lt[A325201(A276783(n+3)), A002385(n+1)]`
-/

namespace A171828.P4867492513368976713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325201 (A276783 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A171828.P4867492513368976713

/-! ## A171828.P13900999724790576701

`lt[A263730(2*(n+1)), A000005(A024394(n+1))]`
-/

namespace A171828.P13900999724790576701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263730 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A024394 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A171828.P13900999724790576701

/-! ## A171828.P6122673626047670007

`lt[A261248(A065189(n+1)), A301987(2*(n+1))]`
-/

namespace A171828.P6122673626047670007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261248 (A065189 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301987 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A171828.P6122673626047670007

/-!
# A171829: Nonnegative integers that can be made by using six sixes (6 6's) and the four basic operators {+, -, *, /}.

The programs for A171829, there is no canonical definition to state claims against.
-/

/-! ## A171829.P7148806013998856816

`lt[Δ[A129835(n)], A188134(3*n+2)]`
-/

namespace A171829.P7148806013998856816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129835 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A171829.P7148806013998856816

/-! ## A171829.P15122692867526227722

`lt[A300830(n+2), A165778(∏{p}[n+1, #])]`
-/

namespace A171829.P15122692867526227722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300830 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165778 (∏ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A171829.P15122692867526227722

/-! ## A171829.P5313422586522809889

`lt[A051712(n+1), A039634(A000466(n+1))]`
-/

namespace A171829.P5313422586522809889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (A000466 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A171829.P5313422586522809889

/-! ## A171829.P10968299263295257302

`lt[A345057(n+1), A005101(A254763(n+1))]`
-/

namespace A171829.P10968299263295257302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (A254763 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A171829.P10968299263295257302

/-! ## A171829.P8090409935754045989

`lt[A255399(n+1), A080565(A017665(n+2))]`
-/

namespace A171829.P8090409935754045989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080565 (A017665 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A171829.P8090409935754045989

/-!
# A171832: Primes p such that p and 5*p^2+5*p-1 are both prime.

The programs for A171832, there is no canonical definition to state claims against.
-/

/-! ## A171832.P6224576891848736875

`p?[A262689(A093694(n))]`
-/

namespace A171832.P6224576891848736875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A093694 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171832.P6224576891848736875

/-! ## A171832.P16859837271786067818

`A277098(∑[A255903(n)!])`
-/

namespace A171832.P16859837271786067818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A255903 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277098 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A171832.P16859837271786067818

/-! ## A171832.P9162753295410394751

`A277098(∑[A338435(n)!])`
-/

namespace A171832.P9162753295410394751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A338435 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277098 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A171832.P9162753295410394751

/-!
# A171833: Pythagorean primes with Pythagorean prime index.

The programs for A171833, the canonical program `A171833.P13101684822582441579` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171833 has offset 1).

The definition of A171833 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 609 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171833.P13231538772652216400

`A002144(p?[comp[or(2, n)]])`
-/

namespace A171833.P13231538772652216400
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A171833.P13231538772652216400

namespace A171833

/-- `A002144(p?[comp[or(2, n)]])` -/
def P13231538772652216400.Spec : Prop :=
  ∀ n, P13231538772652216400.a n = A171833 (n + 1)

end A171833

/-! ## A171833.P6484678642241695169

`A002144(p?[4*n+1])`
-/

namespace A171833.P6484678642241695169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A171833.P6484678642241695169

namespace A171833

/-- `A002144(p?[4*n+1])` -/
def P6484678642241695169.Spec : Prop :=
  ∀ n, P6484678642241695169.a n = A171833 (n + 1)

end A171833

/-! ## A171833.P13101684822582441579

`A002313(p?[4*n+1]+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A171833

/-- `A002313(p?[4*n+1]+1)` -/
def P13101684822582441579.Spec : Prop :=
  ∀ n, P13101684822582441579.a n = A171833 (n + 1)

theorem P13101684822582441579.correct : P13101684822582441579.Spec := by
  intro n
  simp only [A171833, Nat.add_sub_cancel]

end A171833

/-! ## A171833.P10103632030683038421

`A002144(or(1, p?[4*n-3]))`
-/

namespace A171833.P10103632030683038421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A171833.P10103632030683038421

namespace A171833

/-- `A002144(or(1, p?[4*n-3]))` -/
def P10103632030683038421.Spec : Prop :=
  ∀ n, P10103632030683038421.a n = A171833 (n + 1)

end A171833

/-! ## A171833.P10297610789633293472

`A002144(A002144(n+1))`
-/

namespace A171833.P10297610789633293472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (A002144 (n + 1)).toNat

end

end A171833.P10297610789633293472

namespace A171833

/-- `A002144(A002144(n+1))` -/
def P10297610789633293472.Spec : Prop :=
  ∀ n, P10297610789633293472.a n = A171833 (n + 1)

end A171833

/-! ## A171833.P814907290686719806

`A002144(A055131(n)/3)`
-/

namespace A171833.P814907290686719806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (SequenceMachineLib.roundAway ((A055131 n : ℚ) / 3)).toNat

end

end A171833.P814907290686719806

namespace A171833

/-- `A002144(A055131(n)/3)` -/
def P814907290686719806.Spec : Prop :=
  ∀ n, P814907290686719806.a n = A171833 (n + 1)

end A171833

/-! ## A171833.P10268021936211470033

`p?[A002144(p?[A009001(n)])]`
-/

namespace A171833.P10268021936211470033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171833.P10268021936211470033

namespace A171833

/-- `p?[A002144(p?[A009001(n)])]` -/
def P10268021936211470033.Spec : Prop :=
  ∀ n, P10268021936211470033.a n = A171833 (n + 1)

end A171833

/-! ## A171833.P472956332611887176

`p?[A002144(p?[A016813(n)])]`
-/

namespace A171833.P472956332611887176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171833.P472956332611887176

namespace A171833

/-- `p?[A002144(p?[A016813(n)])]` -/
def P472956332611887176.Spec : Prop :=
  ∀ n, P472956332611887176.a n = A171833 (n + 1)

end A171833

/-! ## A171833.P16705268674995184447

`p?[A002144(p?[A266222(n)])]`
-/

namespace A171833.P16705268674995184447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266222 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171833.P16705268674995184447

namespace A171833

/-- `p?[A002144(p?[A266222(n)])]` -/
def P16705268674995184447.Spec : Prop :=
  ∀ n, P16705268674995184447.a n = A171833 (n + 1)

end A171833

/-! ## A171833.P7093214922609002651

`A002313(A002313(n+2)+1)`
-/

namespace A171833.P7093214922609002651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (A002313 (n + 2) + 1).toNat

end

end A171833.P7093214922609002651

namespace A171833

/-- `A002313(A002313(n+2)+1)` -/
def P7093214922609002651.Spec : Prop :=
  ∀ n, P7093214922609002651.a n = A171833 (n + 1)

end A171833

/-! ## A171833.P8152448048677665474

`A280084(A280084(n+2)+1)`
-/

namespace A171833.P8152448048677665474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (A280084 (n + 2) + 1).toNat

end

end A171833.P8152448048677665474

namespace A171833

/-- `A280084(A280084(n+2)+1)` -/
def P8152448048677665474.Spec : Prop :=
  ∀ n, P8152448048677665474.a n = A171833 (n + 1)

end A171833

/-! ## A171833.P4360993250432631148

`sqrt(A080109(sqrt(A080109(n+1))))`
-/

namespace A171833.P4360993250432631148
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A080109 (SequenceMachineLib.roundAway (Real.sqrt (A080109 (n + 1) : ℝ))).toNat : ℝ)

end

end A171833.P4360993250432631148

namespace A171833

/-- `sqrt(A080109(sqrt(A080109(n+1))))` -/
def P4360993250432631148.Spec : Prop :=
  ∀ n, P4360993250432631148.a n = (A171833 (n + 1) : ℝ)

end A171833

/-! ## A171833.P1839374893676584502

`p?[A002144(A002144(Δ[n²]-n))]`
-/

namespace A171833.P1839374893676584502
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (A002144 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171833.P1839374893676584502

namespace A171833

/-- `p?[A002144(A002144(Δ[n²]-n))]` -/
def P1839374893676584502.Spec : Prop :=
  ∀ n, P1839374893676584502.a n = A171833 (n + 1)

end A171833

/-! ## A171833.P4523460799351410633

`A152680(A152680(n+1)+1)+1`
-/

namespace A171833.P4523460799351410633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152680 (A152680 (n + 1) + 1).toNat + 1

end

end A171833.P4523460799351410633

namespace A171833

/-- `A152680(A152680(n+1)+1)+1` -/
def P4523460799351410633.Spec : Prop :=
  ∀ n, P4523460799351410633.a n = A171833 (n + 1)

end A171833

/-! ## A171833.P12695694121023913133

`A055131(abs(1-A055131(n)/3))/3`
-/

namespace A171833.P12695694121023913133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055131 (SequenceMachineLib.roundAway |1 - (A055131 n : ℚ) / 3|).toNat : ℚ) / 3

end

end A171833.P12695694121023913133

namespace A171833

/-- `A055131(abs(1-A055131(n)/3))/3` -/
def P12695694121023913133.Spec : Prop :=
  ∀ n, P12695694121023913133.a n = (A171833 (n + 1) : ℚ)

end A171833

/-! ## A171833.P17308708594840020001

`A002313(A000203(A002313(n+2)))`
-/

namespace A171833.P17308708594840020001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (A000203 (A002313 (n + 2)).toNat).toNat

end

end A171833.P17308708594840020001

namespace A171833

/-- `A002313(A000203(A002313(n+2)))` -/
def P17308708594840020001.Spec : Prop :=
  ∀ n, P17308708594840020001.a n = A171833 (n + 1)

end A171833

/-! ## A171833.P2051907061881769159

`A280084(A000203(A280084(n+2)))`
-/

namespace A171833.P2051907061881769159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (A000203 (A280084 (n + 2)).toNat).toNat

end

end A171833.P2051907061881769159

namespace A171833

/-- `A280084(A000203(A280084(n+2)))` -/
def P2051907061881769159.Spec : Prop :=
  ∀ n, P2051907061881769159.a n = A171833 (n + 1)

end A171833

/-! ## A171833.P1310389471376849596

`A267101(A080148(A267101(A080148(n+1))))`
-/

namespace A171833.P1310389471376849596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267101 (A080148 (A267101 (A080148 (n + 1)).toNat).toNat).toNat

end

end A171833.P1310389471376849596

namespace A171833

/-- `A267101(A080148(A267101(A080148(n+1))))` -/
def P1310389471376849596.Spec : Prop :=
  ∀ n, P1310389471376849596.a n = A171833 (n + 1)

end A171833

/-! ## A171833.P15242915178334827154

`A108546(A294091(n+2))`
-/

namespace A171833.P15242915178334827154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108546 (A294091 (n + 2)).toNat

end

end A171833.P15242915178334827154

namespace A171833

/-- `A108546(A294091(n+2))` -/
def P15242915178334827154.Spec : Prop :=
  ∀ n, P15242915178334827154.a n = A171833 (n + 1)

end A171833

/-! ## A171833.P4452419392338878323

`A000040(A080147(p?[4*n+1]))`
-/

namespace A171833.P4452419392338878323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A080147 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A171833.P4452419392338878323

namespace A171833

/-- `A000040(A080147(p?[4*n+1]))` -/
def P4452419392338878323.Spec : Prop :=
  ∀ n, P4452419392338878323.a n = A171833 (n + 1)

end A171833

/-!
# A171834: Partial sums of numbers congruent to {0, 1, 2, 7} mod 8 (A047527).

The programs for A171834, the canonical program `A171834.P12743399486398283447` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171834 has offset 1).

The definition of A171834 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171834.P12743399486398283447

`∑[∑[and(4, n²)+1]]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A171834

/-- `∑[∑[and(4, n²)+1]]` -/
def P12743399486398283447.Spec : Prop :=
  ∀ n, (P12743399486398283447.a n : ℤ) = A171834 (n + 1)

theorem P12743399486398283447.correct : P12743399486398283447.Spec := by
  intro n
  simp only [A171834, Nat.add_sub_cancel]

end A171834

/-! ## A171834.P8596802209283421290

`∑[record[abs(or(4, n)-5)]]`
-/

namespace A171834.P8596802209283421290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lor 4 n : ℤ) - 5|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171834.P8596802209283421290

namespace A171834

/-- `∑[record[abs(or(4, n)-5)]]` -/
def P8596802209283421290.Spec : Prop :=
  ∀ n, P8596802209283421290.a n = A171834 (n + 1)

end A171834

/-! ## A171834.P1111011399008326075

`∑[n-or(3, -(n+3))]`
-/

namespace A171834.P1111011399008326075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.lor 3 (-(n + 3 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171834.P1111011399008326075

namespace A171834

/-- `∑[n-or(3, -(n+3))]` -/
def P1111011399008326075.Spec : Prop :=
  ∀ n, P1111011399008326075.a n = A171834 (n + 1)

end A171834

/-! ## A171834.P6417365397866172283

`∑[and(3, 1-n)+2*n]`
-/

namespace A171834.P6417365397866172283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (1 - (n : ℤ)) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171834.P6417365397866172283

namespace A171834

/-- `∑[and(3, 1-n)+2*n]` -/
def P6417365397866172283.Spec : Prop :=
  ∀ n, P6417365397866172283.a n = A171834 (n + 1)

end A171834

/-! ## A171834.P18176149849706038832

`∑[or(3, n+2)-2+n]`
-/

namespace A171834.P18176149849706038832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (n + 2) : ℤ) - 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171834.P18176149849706038832

namespace A171834

/-- `∑[or(3, n+2)-2+n]` -/
def P18176149849706038832.Spec : Prop :=
  ∀ n, P18176149849706038832.a n = A171834 (n + 1)

end A171834

/-! ## A171834.P8496605931154953440

`∑[∑[Δ[or(3, n+1)]+1]]`
-/

namespace A171834.P8496605931154953440
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171834.P8496605931154953440

namespace A171834

/-- `∑[∑[Δ[or(3, n+1)]+1]]` -/
def P8496605931154953440.Spec : Prop :=
  ∀ n, P8496605931154953440.a n = A171834 (n + 1)

end A171834

/-! ## A171834.P11618369868205404778

`∑[∑[5^(∑[n]%gcd(2, n))]]`
-/

namespace A171834.P11618369868205404778
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ ((∑ j ∈ Finset.range (n + 1), f3 j) % Nat.gcd 2 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171834.P11618369868205404778

namespace A171834

/-- `∑[∑[5^(∑[n]%gcd(2, n))]]` -/
def P11618369868205404778.Spec : Prop :=
  ∀ n, (P11618369868205404778.a n : ℤ) = A171834 (n + 1)

end A171834

/-! ## A171834.P13034560007166434035

`∑[a(n-4)+8]` with `a(0)=1, a(1)=2, a(2)=7, a(3)=8`
-/

namespace A171834.P13034560007166434035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 7, 8] fun n f1 =>
  f1 (n - 4) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171834.P13034560007166434035

namespace A171834

/-- `∑[a(n-4)+8]` -/
def P13034560007166434035.Spec : Prop :=
  ∀ n, (P13034560007166434035.a n : ℤ) = A171834 (n + 1)

end A171834

/-! ## A171834.P9091248926342093489

`∑[∑[floor(a(n-4))]]` with `a(0)=1, a(1)=1, a(2)=5, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A171834.P9091248926342093489
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 5, 1] fun n f2 =>
  f2 (n - 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171834.P9091248926342093489

namespace A171834

/-- `∑[∑[floor(a(n-4))]]` -/
def P9091248926342093489.Spec : Prop :=
  ∀ n, (P9091248926342093489.a n : ℤ) = A171834 (n + 1)

end A171834

/-! ## A171834.P12832269366168261164

`∑[∑[a(n-4)%6]]` with `a(0)=1, a(1)=1, a(2)=5, a(3)=1`
-/

namespace A171834.P12832269366168261164
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 5, 1] fun n f2 =>
  f2 (n - 4) % 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171834.P12832269366168261164

namespace A171834

/-- `∑[∑[a(n-4)%6]]` -/
def P12832269366168261164.Spec : Prop :=
  ∀ n, (P12832269366168261164.a n : ℤ) = A171834 (n + 1)

end A171834

/-! ## A171834.P14454073328691863484

`∑[(3*n+1)%4+2*n]`
-/

namespace A171834.P14454073328691863484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n + 1) % 4 + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171834.P14454073328691863484

namespace A171834

/-- `∑[(3*n+1)%4+2*n]` -/
def P14454073328691863484.Spec : Prop :=
  ∀ n, (P14454073328691863484.a n : ℤ) = A171834 (n + 1)

end A171834

/-! ## A171834.P16418168842451251382

`∑[2*n-(and(3, n-2)-3)]`
-/

namespace A171834.P16418168842451251382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Int.land 3 ((n : ℤ) - 2) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171834.P16418168842451251382

namespace A171834

/-- `∑[2*n-(and(3, n-2)-3)]` -/
def P16418168842451251382.Spec : Prop :=
  ∀ n, P16418168842451251382.a n = A171834 (n + 1)

end A171834

/-! ## A171834.P11240771496135470349

`∑[n-and(3, n+2)+n+3]`
-/

namespace A171834.P11240771496135470349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land 3 (n + 2) : ℤ) + (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171834.P11240771496135470349

namespace A171834

/-- `∑[n-and(3, n+2)+n+3]` -/
def P11240771496135470349.Spec : Prop :=
  ∀ n, P11240771496135470349.a n = A171834 (n + 1)

end A171834

/-! ## A171834.P1376162135799482703

`∑[and(3, 19*n+1)+n+n]`
-/

namespace A171834.P1376162135799482703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (19 * n + 1) + n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171834.P1376162135799482703

namespace A171834

/-- `∑[and(3, 19*n+1)+n+n]` -/
def P1376162135799482703.Spec : Prop :=
  ∀ n, (P1376162135799482703.a n : ℤ) = A171834 (n + 1)

end A171834

/-! ## A171834.P14778239142778811253

`∑[2*n-(n-2-or(3, n-2))]`
-/

namespace A171834.P14778239142778811253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 2 - Int.lor 3 ((n : ℤ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171834.P14778239142778811253

namespace A171834

/-- `∑[2*n-(n-2-or(3, n-2))]` -/
def P14778239142778811253.Spec : Prop :=
  ∀ n, P14778239142778811253.a n = A171834 (n + 1)

end A171834

/-! ## A171834.P118345863107575723

`∑[∑[a(n-4)^a(n-1)]]` with `a(0)=1, a(1)=1, a(2)=5, a(3)=1`
-/

namespace A171834.P118345863107575723
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 5, 1] fun n f2 =>
  f2 (n - 4) ^ f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171834.P118345863107575723

namespace A171834

/-- `∑[∑[a(n-4)^a(n-1)]]` -/
def P118345863107575723.Spec : Prop :=
  ∀ n, (P118345863107575723.a n : ℤ) = A171834 (n + 1)

end A171834

/-! ## A171834.P17494108760976152384

`or(3, n+2)+a(n-1)+n-2` with `a(0)=1`
-/

namespace A171834.P17494108760976152384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.lor 3 (n + 2) : ℤ) + (a (n - 1) + ((n : ℤ) - 2))

end

end A171834.P17494108760976152384

namespace A171834

/-- `or(3, n+2)+a(n-1)+n-2` -/
def P17494108760976152384.Spec : Prop :=
  ∀ n, P17494108760976152384.a n = A171834 (n + 1)

end A171834

/-! ## A171834.P1887771278387539483

`∑[∑[a(a(n-1))*a(n-4)]]` with `a(0)=1, a(1)=1, a(2)=5, a(3)=1`
-/

namespace A171834.P1887771278387539483
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 5, 1] fun n f2 =>
  f2 (f2 (n - 1)) * f2 (n - 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171834.P1887771278387539483

namespace A171834

/-- `∑[∑[a(a(n-1))*a(n-4)]]` -/
def P1887771278387539483.Spec : Prop :=
  ∀ n, (P1887771278387539483.a n : ℤ) = A171834 (n + 1)

end A171834

/-! ## A171834.P2252086819936170626

`∑[∑[a(n-4)/a(a(n-1))]]` with `a(0)=1, a(1)=1, a(2)=5, a(3)=1`
-/

namespace A171834.P2252086819936170626
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 5, 1] fun n f2 =>
  f2 (n - 4) / f2 (SequenceMachineLib.roundAway (f2 (n - 1))).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171834.P2252086819936170626

namespace A171834

/-- `∑[∑[a(n-4)/a(a(n-1))]]` -/
def P2252086819936170626.Spec : Prop :=
  ∀ n, P2252086819936170626.a n = (A171834 (n + 1) : ℚ)

end A171834

/-!
# A171835: Partial sums of numbers congruent to {3, 4, 5, 6} mod 8 (A047425).

The programs for A171835, the canonical program `A171835.P493343050768504662` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171835 has offset 1).

The definition of A171835 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171835.P493343050768504662

`2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` with `a(0)=3, a(1)=7, a(2)=12, a(3)=18, a(4)=29, a(5)=41`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A171835

/-- `2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` -/
def P493343050768504662.Spec : Prop :=
  ∀ n, P493343050768504662.a n = A171835 (n + 1)

theorem P493343050768504662.correct : P493343050768504662.Spec := by
  intro n
  simp only [A171835, Nat.add_sub_cancel]

end A171835

/-! ## A171835.P15728460309027124991

`∑[or(3, n)+n]`
-/

namespace A171835.P15728460309027124991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171835.P15728460309027124991

namespace A171835

/-- `∑[or(3, n)+n]` -/
def P15728460309027124991.Spec : Prop :=
  ∀ n, (P15728460309027124991.a n : ℤ) = A171835 (n + 1)

end A171835

/-! ## A171835.P8081796101044648479

`∑[record[or(4, n)]-1]`
-/

namespace A171835.P8081796101044648479
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171835.P8081796101044648479

namespace A171835

/-- `∑[record[or(4, n)]-1]` -/
def P8081796101044648479.Spec : Prop :=
  ∀ n, P8081796101044648479.a n = A171835 (n + 1)

end A171835

/-! ## A171835.P2990988830218493303

`∑[record[xor(4, n)-1]]`
-/

namespace A171835.P2990988830218493303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 4 n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171835.P2990988830218493303

namespace A171835

/-- `∑[record[xor(4, n)-1]]` -/
def P2990988830218493303.Spec : Prop :=
  ∀ n, P2990988830218493303.a n = A171835 (n + 1)

end A171835

/-! ## A171835.P14619723621923305131

`∑[comp[or(4, n)-37]]`
-/

namespace A171835.P14619723621923305131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 4 n : ℤ) - 37

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171835.P14619723621923305131

namespace A171835

/-- `∑[comp[or(4, n)-37]]` -/
def P14619723621923305131.Spec : Prop :=
  ∀ n, (P14619723621923305131.a n : ℤ) = A171835 (n + 1)

end A171835

/-! ## A171835.P16477886567133888586

`∑[lt[xor(4, n+1), n]]`
-/

namespace A171835.P16477886567133888586
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171835.P16477886567133888586

namespace A171835

/-- `∑[lt[xor(4, n+1), n]]` -/
def P16477886567133888586.Spec : Prop :=
  ∀ n, (P16477886567133888586.a n : ℤ) = A171835 (n + 1)

end A171835

/-! ## A171835.P2962692832226077670

`∑[lt[n, or(4, n-3)]]`
-/

namespace A171835.P2962692832226077670
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 ((n : ℤ) - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171835.P2962692832226077670

namespace A171835

/-- `∑[lt[n, or(4, n-3)]]` -/
def P2962692832226077670.Spec : Prop :=
  ∀ n, (P2962692832226077670.a n : ℤ) = A171835 (n + 1)

end A171835

/-! ## A171835.P5572775052028885103

`∑[lt[n, xor(4, n-3)]]`
-/

namespace A171835.P5572775052028885103
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 ((n : ℤ) - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171835.P5572775052028885103

namespace A171835

/-- `∑[lt[n, xor(4, n-3)]]` -/
def P5572775052028885103.Spec : Prop :=
  ∀ n, (P5572775052028885103.a n : ℤ) = A171835 (n + 1)

end A171835

/-! ## A171835.P12435637066758385947

`∑[∑[gcd(5, n%4)]-2]`
-/

namespace A171835.P12435637066758385947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 (n % 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171835.P12435637066758385947

namespace A171835

/-- `∑[∑[gcd(5, n%4)]-2]` -/
def P12435637066758385947.Spec : Prop :=
  ∀ n, P12435637066758385947.a n = A171835 (n + 1)

end A171835

/-! ## A171835.P11379611023082702731

`∑[and(n, -4)+n+3]`
-/

namespace A171835.P11379611023082702731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-4) + (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171835.P11379611023082702731

namespace A171835

/-- `∑[and(n, -4)+n+3]` -/
def P11379611023082702731.Spec : Prop :=
  ∀ n, P11379611023082702731.a n = A171835 (n + 1)

end A171835

/-! ## A171835.P1953471948186884037

`∑[2*n+and(3, 3-n)]`
-/

namespace A171835.P1953471948186884037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + Int.land 3 (3 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171835.P1953471948186884037

namespace A171835

/-- `∑[2*n+and(3, 3-n)]` -/
def P1953471948186884037.Spec : Prop :=
  ∀ n, P1953471948186884037.a n = A171835 (n + 1)

end A171835

/-! ## A171835.P13244149190370089611

`∑[2*n-(and(3, n)-3)]`
-/

namespace A171835.P13244149190370089611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((Nat.land 3 n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171835.P13244149190370089611

namespace A171835

/-- `∑[2*n-(and(3, n)-3)]` -/
def P13244149190370089611.Spec : Prop :=
  ∀ n, P13244149190370089611.a n = A171835 (n + 1)

end A171835

/-! ## A171835.P5295648423464968596

`∑[eq[4, xor(n+1, n-3)]]`
-/

namespace A171835.P5295648423464968596
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) ((n : ℤ) - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171835.P5295648423464968596

namespace A171835

/-- `∑[eq[4, xor(n+1, n-3)]]` -/
def P5295648423464968596.Spec : Prop :=
  ∀ n, (P5295648423464968596.a n : ℤ) = A171835 (n + 1)

end A171835

/-! ## A171835.P4028714340816163371

`∑[n-and(3, n)+n+3]`
-/

namespace A171835.P4028714340816163371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land 3 n : ℤ) + (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171835.P4028714340816163371

namespace A171835

/-- `∑[n-and(3, n)+n+3]` -/
def P4028714340816163371.Spec : Prop :=
  ∀ n, P4028714340816163371.a n = A171835 (n + 1)

end A171835

/-! ## A171835.P10458476733045949330

`∑[2*n-(n-or(3, n))]`
-/

namespace A171835.P10458476733045949330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - (Nat.lor 3 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171835.P10458476733045949330

namespace A171835

/-- `∑[2*n-(n-or(3, n))]` -/
def P10458476733045949330.Spec : Prop :=
  ∀ n, P10458476733045949330.a n = A171835 (n + 1)

end A171835

/-! ## A171835.P9060632398043529271

`∑[a(n-4)+8]` with `a(0)=3, a(1)=4, a(2)=5, a(3)=6`
-/

namespace A171835.P9060632398043529271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 4, 5, 6] fun n f1 =>
  f1 (n - 4) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171835.P9060632398043529271

namespace A171835

/-- `∑[a(n-4)+8]` -/
def P9060632398043529271.Spec : Prop :=
  ∀ n, (P9060632398043529271.a n : ℤ) = A171835 (n + 1)

end A171835

/-! ## A171835.P5980070606338690823

`or(3, n)+a(n-1)+n` with `a(0)=3`
-/

namespace A171835.P5980070606338690823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.lor 3 n + (a (n - 1) + n)

end

end A171835.P5980070606338690823

namespace A171835

/-- `or(3, n)+a(n-1)+n` -/
def P5980070606338690823.Spec : Prop :=
  ∀ n, (P5980070606338690823.a n : ℤ) = A171835 (n + 1)

end A171835

/-! ## A171835.P5925425022276543096

`∑[∑[floor(a(n-4))]]` with `a(0)=3, a(1)=1, a(2)=1, a(3)=1, a(4)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A171835.P5925425022276543096
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 1, 1, 5] fun n f2 =>
  f2 (n - 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171835.P5925425022276543096

namespace A171835

/-- `∑[∑[floor(a(n-4))]]` -/
def P5925425022276543096.Spec : Prop :=
  ∀ n, (P5925425022276543096.a n : ℤ) = A171835 (n + 1)

end A171835

/-! ## A171835.P2244431597878674552

`∑[(3*(n+1))%4+2*n]`
-/

namespace A171835.P2244431597878674552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1) % 4 + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171835.P2244431597878674552

namespace A171835

/-- `∑[(3*(n+1))%4+2*n]` -/
def P2244431597878674552.Spec : Prop :=
  ∀ n, (P2244431597878674552.a n : ℤ) = A171835 (n + 1)

end A171835

/-! ## A171835.P15261984659044272504

`∑[∑[gcd(4, n)]-gcd(2, ∑[n+1])]`
-/

namespace A171835.P15261984659044272504
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f3 j) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171835.P15261984659044272504

namespace A171835

/-- `∑[∑[gcd(4, n)]-gcd(2, ∑[n+1])]` -/
def P15261984659044272504.Spec : Prop :=
  ∀ n, P15261984659044272504.a n = A171835 (n + 1)

end A171835

/-!
# A171836: a(n) = A002476(A002476(n)).

The programs for A171836, the canonical program `A171836.P7274293293660419268` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171836 has offset 1).

The definition of A171836 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 611 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171836.P5138291932623782791

`A002476(p?[3*n+1])`
-/

namespace A171836.P5138291932623782791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A171836.P5138291932623782791

namespace A171836

/-- `A002476(p?[3*n+1])` -/
def P5138291932623782791.Spec : Prop :=
  ∀ n, P5138291932623782791.a n = A171836 (n + 1)

end A171836

/-! ## A171836.P7274293293660419268

`A007645(p?[3*n+1]+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A171836

/-- `A007645(p?[3*n+1]+1)` -/
def P7274293293660419268.Spec : Prop :=
  ∀ n, P7274293293660419268.a n = A171836 (n + 1)

theorem P7274293293660419268.correct : P7274293293660419268.Spec := by
  intro n
  simp only [A171836, Nat.add_sub_cancel]

end A171836

/-! ## A171836.P9736215827747000898

`A002476(∏{p}[p?[3*n-2], #])`
-/

namespace A171836.P9736215827747000898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A171836.P9736215827747000898

namespace A171836

/-- `A002476(∏{p}[p?[3*n-2], #])` -/
def P9736215827747000898.Spec : Prop :=
  ∀ n, P9736215827747000898.a n = A171836 (n + 1)

end A171836

/-! ## A171836.P9010310959875449519

`A002476(A002476(n+1))`
-/

namespace A171836.P9010310959875449519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (A002476 (n + 1)).toNat

end

end A171836.P9010310959875449519

namespace A171836

/-- `A002476(A002476(n+1))` -/
def P9010310959875449519.Spec : Prop :=
  ∀ n, P9010310959875449519.a n = A171836 (n + 1)

end A171836

/-! ## A171836.P10161463332105121586

`p?[A002476(p?[A016777(n)])]`
-/

namespace A171836.P10161463332105121586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171836.P10161463332105121586

namespace A171836

/-- `p?[A002476(p?[A016777(n)])]` -/
def P10161463332105121586.Spec : Prop :=
  ∀ n, P10161463332105121586.a n = A171836 (n + 1)

end A171836

/-! ## A171836.P5098622423175415793

`A007645(A007645(n+2)+1)`
-/

namespace A171836.P5098622423175415793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (A007645 (n + 2) + 1).toNat

end

end A171836.P5098622423175415793

namespace A171836

/-- `A007645(A007645(n+2)+1)` -/
def P5098622423175415793.Spec : Prop :=
  ∀ n, P5098622423175415793.a n = A171836 (n + 1)

end A171836

/-! ## A171836.P7286091543907901539

`A045375(A045375(n+2)+1)`
-/

namespace A171836.P7286091543907901539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (A045375 (n + 2) + 1).toNat

end

end A171836.P7286091543907901539

namespace A171836

/-- `A045375(A045375(n+2)+1)` -/
def P7286091543907901539.Spec : Prop :=
  ∀ n, P7286091543907901539.a n = A171836 (n + 1)

end A171836

/-! ## A171836.P15574046379300583828

`A123365(A123365(n+2)+1)`
-/

namespace A171836.P15574046379300583828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (A123365 (n + 2) + 1).toNat

end

end A171836.P15574046379300583828

namespace A171836

/-- `A123365(A123365(n+2)+1)` -/
def P15574046379300583828.Spec : Prop :=
  ∀ n, P15574046379300583828.a n = A171836 (n + 1)

end A171836

/-! ## A171836.P10894663726917879075

`A045331(A045331(n+3)+2)`
-/

namespace A171836.P10894663726917879075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (A045331 (n + 3) + 2).toNat

end

end A171836.P10894663726917879075

namespace A171836

/-- `A045331(A045331(n+3)+2)` -/
def P10894663726917879075.Spec : Prop :=
  ∀ n, P10894663726917879075.a n = A171836 (n + 1)

end A171836

/-! ## A171836.P16605088331922897277

`A112772(A112772(n+1)/2)/2`
-/

namespace A171836.P16605088331922897277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112772 (SequenceMachineLib.roundAway ((A112772 (n + 1) : ℚ) / 2)).toNat : ℚ) / 2

end

end A171836.P16605088331922897277

namespace A171836

/-- `A112772(A112772(n+1)/2)/2` -/
def P16605088331922897277.Spec : Prop :=
  ∀ n, P16605088331922897277.a n = (A171836 (n + 1) : ℚ)

end A171836

/-! ## A171836.P14312937689857088627

`p?[A002476(A002476(4/2-(1-n)))]`
-/

namespace A171836.P14312937689857088627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (A002476 (SequenceMachineLib.roundAway ((4 : ℚ) / 2 - (1 - (n : ℤ) : ℚ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171836.P14312937689857088627

namespace A171836

/-- `p?[A002476(A002476(4/2-(1-n)))]` -/
def P14312937689857088627.Spec : Prop :=
  ∀ n, P14312937689857088627.a n = A171836 (n + 1)

end A171836

/-! ## A171836.P956569519421320146

`A007645(A000203(A007645(n+2)))`
-/

namespace A171836.P956569519421320146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (A000203 (A007645 (n + 2)).toNat).toNat

end

end A171836.P956569519421320146

namespace A171836

/-- `A007645(A000203(A007645(n+2)))` -/
def P956569519421320146.Spec : Prop :=
  ∀ n, P956569519421320146.a n = A171836 (n + 1)

end A171836

/-! ## A171836.P2751708958200998226

`A045375(A000203(A045375(n+2)))`
-/

namespace A171836.P2751708958200998226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (A000203 (A045375 (n + 2)).toNat).toNat

end

end A171836.P2751708958200998226

namespace A171836

/-- `A045375(A000203(A045375(n+2)))` -/
def P2751708958200998226.Spec : Prop :=
  ∀ n, P2751708958200998226.a n = A171836 (n + 1)

end A171836

/-! ## A171836.P10007845623033407041

`A123365(A000203(A123365(n+2)))`
-/

namespace A171836.P10007845623033407041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (A000203 (A123365 (n + 2)).toNat).toNat

end

end A171836.P10007845623033407041

namespace A171836

/-- `A123365(A000203(A123365(n+2)))` -/
def P10007845623033407041.Spec : Prop :=
  ∀ n, P10007845623033407041.a n = A171836 (n + 1)

end A171836

/-! ## A171836.P14558998554405118170

`A000040(A091178(p?[3*n+1]))`
-/

namespace A171836.P14558998554405118170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A091178 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A171836.P14558998554405118170

namespace A171836

/-- `A000040(A091178(p?[3*n+1]))` -/
def P14558998554405118170.Spec : Prop :=
  ∀ n, P14558998554405118170.a n = A171836 (n + 1)

end A171836

/-! ## A171836.P11944884051768332233

`A000040(A091178(A000040(A091178(n+1))))`
-/

namespace A171836.P11944884051768332233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A091178 (A000040 (A091178 (n + 1)).toNat).toNat).toNat

end

end A171836.P11944884051768332233

namespace A171836

/-- `A000040(A091178(A000040(A091178(n+1))))` -/
def P11944884051768332233.Spec : Prop :=
  ∀ n, P11944884051768332233.a n = A171836 (n + 1)

end A171836

/-! ## A171836.P14556070791250899467

`A016921(A024899(p?[3*n+1]))`
-/

namespace A171836.P14556070791250899467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A024899 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A171836.P14556070791250899467

namespace A171836

/-- `A016921(A024899(p?[3*n+1]))` -/
def P14556070791250899467.Spec : Prop :=
  ∀ n, P14556070791250899467.a n = A171836 (n + 1)

end A171836

/-! ## A171836.P791595254591945817

`A016921(A024899(A016921(A024899(n+1))))`
-/

namespace A171836.P791595254591945817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A024899 (A016921 (A024899 (n + 1)).toNat).toNat).toNat

end

end A171836.P791595254591945817

namespace A171836

/-- `A016921(A024899(A016921(A024899(n+1))))` -/
def P791595254591945817.Spec : Prop :=
  ∀ n, P791595254591945817.a n = A171836 (n + 1)

end A171836

/-! ## A171836.P2455143925206742840

`A016777(A024892(A016777(A024892(n+1))))`
-/

namespace A171836.P2455143925206742840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A024892 (A016777 (A024892 (n + 1)).toNat).toNat).toNat

end

end A171836.P2455143925206742840

namespace A171836

/-- `A016777(A024892(A016777(A024892(n+1))))` -/
def P2455143925206742840.Spec : Prop :=
  ∀ n, P2455143925206742840.a n = A171836 (n + 1)

end A171836

/-!
# A171838: Primes of the form 3*k^2 + 9*k + 5.

The programs for A171838, the canonical program `A171838.P15153469036404488717` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171838 has offset 1).

The definition of A171838 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171838.P15153469036404488717

`p?[Δ[n^3]-2]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A171838

/-- `p?[Δ[n^3]-2]` -/
def P15153469036404488717.Spec : Prop :=
  ∀ n, P15153469036404488717.a n = A171838 (n + 1)

theorem P15153469036404488717.correct : P15153469036404488717.Spec := by
  intro n
  simp only [A171838, Nat.add_sub_cancel]

end A171838

/-! ## A171838.P4240289997955678721

`∑{p}[p?[6*C(n, 2)-1], #]`
-/

namespace A171838.P4240289997955678721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * Nat.choose n 2 : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A171838.P4240289997955678721

namespace A171838

/-- `∑{p}[p?[6*C(n, 2)-1], #]` -/
def P4240289997955678721.Spec : Prop :=
  ∀ n, (P4240289997955678721.a n : ℤ) = A171838 (n + 1)

end A171838

/-! ## A171838.P16180358926418410676

`or(1, p?[abs(1-6*C(n, 2))])`
-/

namespace A171838.P16180358926418410676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (6 * Nat.choose n 2 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A171838.P16180358926418410676

namespace A171838

/-- `or(1, p?[abs(1-6*C(n, 2))])` -/
def P16180358926418410676.Spec : Prop :=
  ∀ n, P16180358926418410676.a n = A171838 (n + 1)

end A171838

/-! ## A171838.P5895884025603738956

`∏{d}[p?[3*(n²+n)-1], #]`
-/

namespace A171838.P5895884025603738956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n ^ 2 + n) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A171838.P5895884025603738956

namespace A171838

/-- `∏{d}[p?[3*(n²+n)-1], #]` -/
def P5895884025603738956.Spec : Prop :=
  ∀ n, (P5895884025603738956.a n : ℤ) = A171838 (n + 1)

end A171838

/-! ## A171838.P7307853018888695666

`∑{p}[p?[3*(n²+n)-1], #]`
-/

namespace A171838.P7307853018888695666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n ^ 2 + n) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A171838.P7307853018888695666

namespace A171838

/-- `∑{p}[p?[3*(n²+n)-1], #]` -/
def P7307853018888695666.Spec : Prop :=
  ∀ n, (P7307853018888695666.a n : ℤ) = A171838 (n + 1)

end A171838

/-! ## A171838.P14513751242263196489

`∏{p}[p?[3*(n²+n)-1], #]`
-/

namespace A171838.P14513751242263196489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n ^ 2 + n) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A171838.P14513751242263196489

namespace A171838

/-- `∏{p}[p?[3*(n²+n)-1], #]` -/
def P14513751242263196489.Spec : Prop :=
  ∀ n, (P14513751242263196489.a n : ℤ) = A171838 (n + 1)

end A171838

/-! ## A171838.P5973637958662861005

`or(1, p?[(n+1)*3*n-1])`
-/

namespace A171838.P5973637958662861005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (3 * n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A171838.P5973637958662861005

namespace A171838

/-- `or(1, p?[(n+1)*3*n-1])` -/
def P5973637958662861005.Spec : Prop :=
  ∀ n, P5973637958662861005.a n = A171838 (n + 1)

end A171838

/-! ## A171838.P177514085298085663

`xor(1, p?[(n-1)*3*n-1]-1)`
-/

namespace A171838.P177514085298085663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (3 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)

end

end A171838.P177514085298085663

namespace A171838

/-- `xor(1, p?[(n-1)*3*n-1]-1)` -/
def P177514085298085663.Spec : Prop :=
  ∀ n, P177514085298085663.a n = A171838 (n + 1)

end A171838

/-! ## A171838.P11388425841973943782

`xor(1, p?[A004538(n)])+1`
-/

namespace A171838.P11388425841973943782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) + 1

end

end A171838.P11388425841973943782

namespace A171838

/-- `xor(1, p?[A004538(n)])+1` -/
def P11388425841973943782.Spec : Prop :=
  ∀ n, P11388425841973943782.a n = A171838 (n + 1)

end A171838

/-! ## A171838.P10924947980210323037

`record[p?[A246919(n+1)-2]]`
-/

namespace A171838.P10924947980210323037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246919 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171838.P10924947980210323037

namespace A171838

/-- `record[p?[A246919(n+1)-2]]` -/
def P10924947980210323037.Spec : Prop :=
  ∀ n, P10924947980210323037.a n = A171838 (n + 1)

end A171838

/-! ## A171838.P13100180281887521599

`p?[A004538(n)]%A158693(n+1)`
-/

namespace A171838.P13100180281887521599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A158693 (n + 1))

end

end A171838.P13100180281887521599

namespace A171838

/-- `p?[A004538(n)]%A158693(n+1)` -/
def P13100180281887521599.Spec : Prop :=
  ∀ n, P13100180281887521599.a n = A171838 (n + 1)

end A171838

/-! ## A171838.P13016937171562051830

`A007318(C(2, n))*p?[A004538(n)]`
-/

namespace A171838.P13016937171562051830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171838.P13016937171562051830

namespace A171838

/-- `A007318(C(2, n))*p?[A004538(n)]` -/
def P13016937171562051830.Spec : Prop :=
  ∀ n, P13016937171562051830.a n = A171838 (n + 1)

end A171838

/-! ## A171838.P9019670061653538969

`p?[A003215(n+1)-2]%A000040(n+1)²²`
-/

namespace A171838.P9019670061653538969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ((A000040 (n + 1) ^ 2) ^ 2)

end

end A171838.P9019670061653538969

namespace A171838

/-- `p?[A003215(n+1)-2]%A000040(n+1)²²` -/
def P9019670061653538969.Spec : Prop :=
  ∀ n, P9019670061653538969.a n = A171838 (n + 1)

end A171838

/-! ## A171838.P4836387208183389732

`A000045(A020639(2*(n+1)))*p?[6*C(n, 2)-1]`
-/

namespace A171838.P4836387208183389732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * Nat.choose n 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020639 (2 * (n + 1))).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171838.P4836387208183389732

namespace A171838

/-- `A000045(A020639(2*(n+1)))*p?[6*C(n, 2)-1]` -/
def P4836387208183389732.Spec : Prop :=
  ∀ n, P4836387208183389732.a n = A171838 (n + 1)

end A171838

/-! ## A171838.P8148147674161745474

`∩[A141160(n+1), A004538(n)]`
-/

namespace A171838.P8148147674161745474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004538 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171838.P8148147674161745474

namespace A171838

/-- `∩[A141160(n+1), A004538(n)]` -/
def P8148147674161745474.Spec : Prop :=
  ∀ n, (P8148147674161745474.a n : ℤ) = A171838 (n + 1)

end A171838

/-! ## A171838.P2524289173065200360

`∩[A141160(n+1), A183861(n+1)]`
-/

namespace A171838.P2524289173065200360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171838.P2524289173065200360

namespace A171838

/-- `∩[A141160(n+1), A183861(n+1)]` -/
def P2524289173065200360.Spec : Prop :=
  ∀ n, (P2524289173065200360.a n : ℤ) = A171838 (n + 1)

end A171838

/-! ## A171838.P17130931012204118487

`∩[A141160(n+1), A276382(n+1)]`
-/

namespace A171838.P17130931012204118487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171838.P17130931012204118487

namespace A171838

/-- `∩[A141160(n+1), A276382(n+1)]` -/
def P17130931012204118487.Spec : Prop :=
  ∀ n, (P17130931012204118487.a n : ℤ) = A171838 (n + 1)

end A171838

/-!
# A171839: Equal to A171368*A007318.

The programs for A171839, there is no canonical definition to state claims against.
-/

/-! ## A171839.P10722319306055921235

`A098825(∑[A226873(n)^A145224(n)])`
-/

namespace A171839.P10722319306055921235
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226873 n : ℚ) ^ (A145224 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098825 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A171839.P10722319306055921235

/-! ## A171839.P3849161999051122225

`A097609(n)-A135898(A124539(n))`
-/

namespace A171839.P3849161999051122225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097609 n - A135898 (A124539 n).toNat

end

end A171839.P3849161999051122225

/-! ## A171839.P7368955721911872679

`floor(A104557(n)/A048766(A022100(n)))`
-/

namespace A171839.P7368955721911872679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A104557 n : ℚ) / (A048766 (A022100 n).toNat : ℚ)⌋

end

end A171839.P7368955721911872679

/-! ## A171839.P12553367495612461794

`round(A112292(n)/A004788(A010737(n)))`
-/

namespace A171839.P12553367495612461794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A112292 n : ℚ) / (A004788 (A010737 n).toNat : ℚ))

end

end A171839.P12553367495612461794

/-! ## A171839.P9453194169235194733

`A008611(A059623(n+1)%A272783(n))`
-/

namespace A171839.P9453194169235194733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (Int.tmod (A059623 (n + 1)) (A272783 n)).toNat

end

end A171839.P9453194169235194733

/-!
# A171840: Triangle read by rows, truncated columns of an array formed by taking sets of P(n) = Pascal's triangle, with the 1's column shifted up n = 1,2,3,... times. Then the n-th row of the array = lim_{k->infinity}, k=1,2,3,...; (P(n))^k, deleting the first 1.

The programs for A171840, there is no canonical definition to state claims against.
-/

/-! ## A171840.P14783326424525421666

`A335446(A275131(n+1))+A211700(n+1)`
-/

namespace A171840.P14783326424525421666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335446 (A275131 (n + 1)).toNat + A211700 (n + 1)

end

end A171840.P14783326424525421666

/-! ## A171840.P5735419458746915650

`A347779(A129116(n+1))%16`
-/

namespace A171840.P5735419458746915650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347779 (A129116 (n + 1)).toNat) 16

end

end A171840.P5735419458746915650

/-! ## A171840.P7913625265912417400

`A325783(A263597(n+1)²)`
-/

namespace A171840.P7913625265912417400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325783 (A263597 (n + 1) ^ 2).toNat

end

end A171840.P7913625265912417400

/-! ## A171840.P477848290855892767

`A325783(A263905(n+1)*A263905(n+1))`
-/

namespace A171840.P477848290855892767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325783 (A263905 (n + 1) * A263905 (n + 1)).toNat

end

end A171840.P477848290855892767

/-! ## A171840.P524551366498837890

`A123756(A266183(n+1))`
-/

namespace A171840.P524551366498837890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123756 (A266183 (n + 1)).toNat

end

end A171840.P524551366498837890

/-!
# A171841: Row sums of triangle A171840.

The programs for A171841, there is no canonical definition to state claims against.
-/

/-! ## A171841.P7479758317141733859

`∑[A004151(A107268(n+1))]`
-/

namespace A171841.P7479758317141733859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A107268 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171841.P7479758317141733859

/-! ## A171841.P18106551429691393249

`A028310(∑[A107268(n+1)])`
-/

namespace A171841.P18106551429691393249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A171841.P18106551429691393249

/-! ## A171841.P16803708162225893571

`∑[A107268(n+1)%A005343(n+1)]`
-/

namespace A171841.P16803708162225893571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107268 (n + 1)) (A005343 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171841.P16803708162225893571

/-! ## A171841.P539591238048463412

`∑[A107268(n+1)]%A107276(n+3)`
-/

namespace A171841.P539591238048463412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A107276 (n + 3))

end

end A171841.P539591238048463412

/-!
# A171842: Binomial transform of 1,0,1,0,2,0,4,0,8,0,16,...

The programs for A171842, the canonical program `A171842.P6024485262244088132` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171842 has offset 0).

The definition of A171842 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171842.P6024485262244088132

`3*a(n-1)-a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A171842

/-- `3*a(n-1)-a(n-2)-a(n-3)` -/
def P6024485262244088132.Spec : Prop :=
  ∀ n, P6024485262244088132.a n = A171842 n

theorem P6024485262244088132.correct : P6024485262244088132.Spec := by
  intro n
  simp only [A171842]

end A171842

/-! ## A171842.P6265032844447805796

`∑[a(n-2)+2*a(n-1)]` with `a(0)=1, a(1)=0`
-/

namespace A171842.P6265032844447805796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) + 2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171842.P6265032844447805796

namespace A171842

/-- `∑[a(n-2)+2*a(n-1)]` -/
def P6265032844447805796.Spec : Prop :=
  ∀ n, (P6265032844447805796.a n : ℤ) = A171842 n

end A171842

/-! ## A171842.P16048961133484663242

`2*a(n-1)+a(n-2)-1` with `a(0)=1, a(1)=1`
-/

namespace A171842.P16048961133484663242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * a (n - 1) + (a (n - 2) - 1)

end

end A171842.P16048961133484663242

namespace A171842

/-- `2*a(n-1)+a(n-2)-1` -/
def P16048961133484663242.Spec : Prop :=
  ∀ n, P16048961133484663242.a n = A171842 n

end A171842

/-! ## A171842.P17682490105045790878

`2*a(n-1)-(1-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A171842.P17682490105045790878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * a (n - 1) - (1 - a (n - 2))

end

end A171842.P17682490105045790878

namespace A171842

/-- `2*a(n-1)-(1-a(n-2))` -/
def P17682490105045790878.Spec : Prop :=
  ∀ n, P17682490105045790878.a n = A171842 n

end A171842

/-! ## A171842.P9268584409965255139

`∑[a(n-1)+a(n-1)+a(n-2)]` with `a(0)=1, a(1)=0`
-/

namespace A171842.P9268584409965255139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171842.P9268584409965255139

namespace A171842

/-- `∑[a(n-1)+a(n-1)+a(n-2)]` -/
def P9268584409965255139.Spec : Prop :=
  ∀ n, (P9268584409965255139.a n : ℤ) = A171842 n

end A171842

/-! ## A171842.P6161021880603308813

`a(n-1)-1+a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A171842.P6161021880603308813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - 1 + (a (n - 1) + a (n - 2))

end

end A171842.P6161021880603308813

namespace A171842

/-- `a(n-1)-1+a(n-1)+a(n-2)` -/
def P6161021880603308813.Spec : Prop :=
  ∀ n, P6161021880603308813.a n = A171842 n

end A171842

/-! ## A171842.P13589621272317930397

`a(n-1)-(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A171842.P13589621272317930397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - (1 - a (n - 1) - a (n - 2))

end

end A171842.P13589621272317930397

namespace A171842

/-- `a(n-1)-(1-a(n-1)-a(n-2))` -/
def P13589621272317930397.Spec : Prop :=
  ∀ n, P13589621272317930397.a n = A171842 n

end A171842

/-! ## A171842.P5794598295848219033

`A247311(3*n)`
-/

namespace A171842.P5794598295848219033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247311 (3 * n)

end

end A171842.P5794598295848219033

namespace A171842

/-- `A247311(3*n)` -/
def P5794598295848219033.Spec : Prop :=
  ∀ n, P5794598295848219033.a n = A171842 n

end A171842

/-! ## A171842.P17375383383225624630

`∑[abs(A176981(n))]`
-/

namespace A171842.P17375383383225624630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176981 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171842.P17375383383225624630

namespace A171842

/-- `∑[abs(A176981(n))]` -/
def P17375383383225624630.Spec : Prop :=
  ∀ n, P17375383383225624630.a n = A171842 n

end A171842

/-! ## A171842.P16680519690705266927

`ceil(A001333(n)/2)`
-/

namespace A171842.P16680519690705266927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001333 n : ℚ) / 2⌉

end

end A171842.P16680519690705266927

namespace A171842

/-- `ceil(A001333(n)/2)` -/
def P16680519690705266927.Spec : Prop :=
  ∀ n, P16680519690705266927.a n = A171842 n

end A171842

/-! ## A171842.P8268587580546237571

`A293004(n)/2+1`
-/

namespace A171842.P8268587580546237571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293004 n : ℚ) / 2 + 1

end

end A171842.P8268587580546237571

namespace A171842

/-- `A293004(n)/2+1` -/
def P8268587580546237571.Spec : Prop :=
  ∀ n, P8268587580546237571.a n = (A171842 n : ℚ)

end A171842

/-! ## A171842.P4490942672671771933

`∑[abs(A215936(n+1))]`
-/

namespace A171842.P4490942672671771933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A215936 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171842.P4490942672671771933

namespace A171842

/-- `∑[abs(A215936(n+1))]` -/
def P4490942672671771933.Spec : Prop :=
  ∀ n, P4490942672671771933.a n = A171842 n

end A171842

/-! ## A171842.P12936905444130811413

`∑[A000129(abs(1-n))]`
-/

namespace A171842.P12936905444130811413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171842.P12936905444130811413

namespace A171842

/-- `∑[A000129(abs(1-n))]` -/
def P12936905444130811413.Spec : Prop :=
  ∀ n, P12936905444130811413.a n = A171842 n

end A171842

/-! ## A171842.P16763479354130035177

`(abs(A123335(n))+1)/2`
-/

namespace A171842.P16763479354130035177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A123335 n| + 1 : ℚ) / 2

end

end A171842.P16763479354130035177

namespace A171842

/-- `(abs(A123335(n))+1)/2` -/
def P16763479354130035177.Spec : Prop :=
  ∀ n, P16763479354130035177.a n = (A171842 n : ℚ)

end A171842

/-! ## A171842.P14383763592094574071

`round((A265278(n)+1)/2)`
-/

namespace A171842.P14383763592094574071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A265278 n + 1 : ℚ) / 2)

end

end A171842.P14383763592094574071

namespace A171842

/-- `round((A265278(n)+1)/2)` -/
def P14383763592094574071.Spec : Prop :=
  ∀ n, P14383763592094574071.a n = A171842 n

end A171842

/-! ## A171842.P16511381891764251212

`ceil(A119016(2*n)/2)`
-/

namespace A171842.P16511381891764251212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A119016 (2 * n) : ℚ) / 2⌉

end

end A171842.P16511381891764251212

namespace A171842

/-- `ceil(A119016(2*n)/2)` -/
def P16511381891764251212.Spec : Prop :=
  ∀ n, P16511381891764251212.a n = A171842 n

end A171842

/-! ## A171842.P18268013657134025307

`A024537((n-1)%(n+1))`
-/

namespace A171842.P18268013657134025307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024537 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A171842.P18268013657134025307

namespace A171842

/-- `A024537((n-1)%(n+1))` -/
def P18268013657134025307.Spec : Prop :=
  ∀ n, P18268013657134025307.a n = A171842 n

end A171842

/-! ## A171842.P4485088619794538197

`A174191(n)-a(n-1)` with `a(0)=1`
-/

namespace A171842.P4485088619794538197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A174191 n - a (n - 1)

end

end A171842.P4485088619794538197

namespace A171842

/-- `A174191(n)-a(n-1)` -/
def P4485088619794538197.Spec : Prop :=
  ∀ n, P4485088619794538197.a n = A171842 n

end A171842

/-! ## A171842.P11428685525043545142

`(A002965(2*n+1)+1)/2`
-/

namespace A171842.P11428685525043545142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002965 (2 * n + 1) + 1 : ℚ) / 2

end

end A171842.P11428685525043545142

namespace A171842

/-- `(A002965(2*n+1)+1)/2` -/
def P11428685525043545142.Spec : Prop :=
  ∀ n, P11428685525043545142.a n = (A171842 n : ℚ)

end A171842

/-!
# A171843: Triangle read by rows = truncated columns of an array formed by variants of the natural number decrescendo triangle, A004736.

The programs for A171843, there is no canonical definition to state claims against.
-/

/-! ## A171843.P8220187467904479716

`A131160(A226441(n+1))%A329739(3*n+4)`
-/

namespace A171843.P8220187467904479716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131160 (A226441 (n + 1)).toNat) (A329739 (3 * n + 4))

end

end A171843.P8220187467904479716

/-! ## A171843.P14535289563390558579

`A233654(2^A222043(n+1))`
-/

namespace A171843.P14535289563390558579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233654 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A222043 (n + 1) : ℤ))).toNat

end

end A171843.P14535289563390558579

/-! ## A171843.P11408218583458529063

`A132827(lcm(A106683(n+1), A265312(n)))`
-/

namespace A171843.P11408218583458529063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132827 (Int.lcm (A106683 (n + 1)) (A265312 n))

end

end A171843.P11408218583458529063

/-!
# A171844: Row sums of triangle A171843.

The programs for A171844, there is no canonical definition to state claims against.
-/

/-! ## A171844.P11233908223420905372

`∑[A304662(n)%p?[∑[2^n]]+n]`
-/

namespace A171844.P11233908223420905372
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304662 n) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171844.P11233908223420905372

/-! ## A171844.P12112453219269826926

`floor((A151548(∑[4^n])-2)/(n+1))`
-/

namespace A171844.P12112453219269826926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A151548 (∑ j ∈ Finset.range (n + 1), f1 j) - 2 : ℚ) / (n + 1 : ℚ)⌋

end

end A171844.P12112453219269826926

/-! ## A171844.P1388471030387693381

`∑[A304680(lcm(2*n, ∑{e}[n+1, #]))+n]`
-/

namespace A171844.P1388471030387693381
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304680 (Nat.lcm (2 * n) (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171844.P1388471030387693381

/-!
# A171845: Numbers n >= 0 such that n-1 and n+1 are both primes or both nonprimes, but excluding primes.

The programs for A171845, the canonical program `A171845.P18222334941660186370` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171845 has offset 1).

The definition of A171845 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171845.P18222334941660186370

`eq[A010051((1-n)%2+n), A010051(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A171845

/-- `eq[A010051((1-n)%2+n), A010051(n+1)]` -/
def P18222334941660186370.Spec : Prop :=
  ∀ n, (P18222334941660186370.a n : ℤ) = A171845 (n + 1)

theorem P18222334941660186370.correct : P18222334941660186370.Spec := by
  intro n
  simp only [A171845, Nat.add_sub_cancel]

end A171845

/-! ## A171845.P14083841020713452144

`eq[A005171(n+1), A267537(A103509(n+1))]`
-/

namespace A171845.P14083841020713452144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267537 (A103509 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171845.P14083841020713452144

namespace A171845

/-- `eq[A005171(n+1), A267537(A103509(n+1))]` -/
def P14083841020713452144.Spec : Prop :=
  ∀ n, (P14083841020713452144.a n : ℤ) = A171845 (n + 1)

end A171845

/-! ## A171845.P15665701499917079528

`eq[A010051(n+1), A267883(A103509(n+1))]`
-/

namespace A171845.P15665701499917079528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267883 (A103509 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171845.P15665701499917079528

namespace A171845

/-- `eq[A010051(n+1), A267883(A103509(n+1))]` -/
def P15665701499917079528.Spec : Prop :=
  ∀ n, (P15665701499917079528.a n : ℤ) = A171845 (n + 1)

end A171845

/-! ## A171845.P10486977867232701681

`eq[A060576(A051699(n)), A292438(n)]`
-/

namespace A171845.P10486977867232701681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A051699 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171845.P10486977867232701681

namespace A171845

/-- `eq[A060576(A051699(n)), A292438(n)]` -/
def P10486977867232701681.Spec : Prop :=
  ∀ n, (P10486977867232701681.a n : ℤ) = A171845 (n + 1)

end A171845

/-! ## A171845.P6401481331675941021

`eq[A005171(n+1), A005171(A267458(n+1))]`
-/

namespace A171845.P6401481331675941021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A267458 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171845.P6401481331675941021

namespace A171845

/-- `eq[A005171(n+1), A005171(A267458(n+1))]` -/
def P6401481331675941021.Spec : Prop :=
  ∀ n, (P6401481331675941021.a n : ℤ) = A171845 (n + 1)

end A171845

/-! ## A171845.P16556481879747168619

`eq[A010051(n+1), A010051(A267458(n+1))]`
-/

namespace A171845.P16556481879747168619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A267458 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171845.P16556481879747168619

namespace A171845

/-- `eq[A010051(n+1), A010051(A267458(n+1))]` -/
def P16556481879747168619.Spec : Prop :=
  ∀ n, (P16556481879747168619.a n : ℤ) = A171845 (n + 1)

end A171845

/-! ## A171845.P11237783441477269377

`eq[A002471(A065033(n)²), A010051(n+1)]`
-/

namespace A171845.P11237783441477269377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002471 (A065033 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171845.P11237783441477269377

namespace A171845

/-- `eq[A002471(A065033(n)²), A010051(n+1)]` -/
def P11237783441477269377.Spec : Prop :=
  ∀ n, (P11237783441477269377.a n : ℤ) = A171845 (n + 1)

end A171845

/-! ## A171845.P1962148852705383350

`A093517(A065475(n+1))-1`
-/

namespace A171845.P1962148852705383350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093517 (A065475 (n + 1)).toNat - 1

end

end A171845.P1962148852705383350

namespace A171845

/-- `A093517(A065475(n+1))-1` -/
def P1962148852705383350.Spec : Prop :=
  ∀ n, P1962148852705383350.a n = A171845 (n + 1)

end A171845

/-! ## A171845.P15624015188119494418

`A093517(A094727(A133263(n)))-1`
-/

namespace A171845.P15624015188119494418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093517 (A094727 (A133263 n).toNat).toNat - 1

end

end A171845.P15624015188119494418

namespace A171845

/-- `A093517(A094727(A133263(n)))-1` -/
def P15624015188119494418.Spec : Prop :=
  ∀ n, P15624015188119494418.a n = A171845 (n + 1)

end A171845

/-!
# A171846: Triangle read by rows: T(n,k) is the number of peakless Motzkin paths of length n for which the area below the path is k (n>=0, k>=0).

The programs for A171846, there is no canonical definition to state claims against.
-/

/-! ## A171846.P12305371411266174074

`and(A169623(A087079(n)), A169623(n))`
-/

namespace A171846.P12305371411266174074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A169623 (A087079 n).toNat) (A169623 n)

end

end A171846.P12305371411266174074

/-! ## A171846.P3290160213158169125

`and(A007428(A000799(n+1)), A193592(n))`
-/

namespace A171846.P3290160213158169125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007428 (A000799 (n + 1)).toNat) (A193592 n)

end

end A171846.P3290160213158169125

/-! ## A171846.P15361222484306348611

`and(A040658(A152787(n+1)), A193592(n))`
-/

namespace A171846.P15361222484306348611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A040658 (A152787 (n + 1)).toNat) (A193592 n)

end

end A171846.P15361222484306348611

/-! ## A171846.P3192335358669499993

`and(A193592(n), A239553(A264831(n+1)))`
-/

namespace A171846.P3192335358669499993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A193592 n) (A239553 (A264831 (n + 1)).toNat)

end

end A171846.P3192335358669499993

/-! ## A171846.P6818863809612610144

`A287417(or(A184955(n), A194878(n+1)))`
-/

namespace A171846.P6818863809612610144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 (Int.lor (A184955 n) (A194878 (n + 1))).toNat

end

end A171846.P6818863809612610144

/-!
# A171847: Total area under all peakless Motzkin paths of length n (n>=0).

The programs for A171847, there is no canonical definition to state claims against.
-/

/-! ## A171847.P16503276292335657735

`Δ[A182895(n)]-A110236(n+1)`
-/

namespace A171847.P16503276292335657735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A110236 (n + 1)

end

end A171847.P16503276292335657735

/-! ## A171847.P10891550762185399185

`A027118(n)-A003059(A027124(n+3))`
-/

namespace A171847.P10891550762185399185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027118 n - A003059 (A027124 (n + 3)).toNat

end

end A171847.P10891550762185399185

/-! ## A171847.P1076335717831538871

`A026819(A000898(n))-A011782(n)`
-/

namespace A171847.P1076335717831538871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A000898 n).toNat - A011782 n

end

end A171847.P1076335717831538871

/-! ## A171847.P12245686722311590254

`A026819(A000898(n))-A087079(n)`
-/

namespace A171847.P12245686722311590254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A000898 n).toNat - A087079 n

end

end A171847.P12245686722311590254

/-!
# A171848: Triangle read by rows: T(n,k) is the number of peakless Motzkin paths of length n for which the area below the level steps (i.e., the sum of the altitudes of the level steps) is k (n>=0, k>=0).

The programs for A171848, there is no canonical definition to state claims against.
-/

/-! ## A171848.P9900493244338137668

`A073714(A289207(n))%A232496(n+2)`
-/

namespace A171848.P9900493244338137668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073714 (A289207 n).toNat) (A232496 (n + 2))

end

end A171848.P9900493244338137668

/-! ## A171848.P11336504550305857162

`A073714(∑[A188318(A173862(n+1)²)])`
-/

namespace A171848.P11336504550305857162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188318 (A173862 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073714 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A171848.P11336504550305857162

/-! ## A171848.P15623155316756125626

`A047120(A047263(n+1)%A232496(n+2))`
-/

namespace A171848.P15623155316756125626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047120 (Int.tmod (A047263 (n + 1)) (A232496 (n + 2))).toNat

end

end A171848.P15623155316756125626

/-! ## A171848.P13586774039821962589

`A047030(lt[n, A113139(2*(n+2))])`
-/

namespace A171848.P13586774039821962589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113139 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A171848.P13586774039821962589

/-! ## A171848.P16966205964994509793

`A007318(A289207(n))*A014709(A185063(n))`
-/

namespace A171848.P16966205964994509793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A289207 n).toNat * A014709 (A185063 n).toNat

end

end A171848.P16966205964994509793

/-!
# A171849: Total area under all the level steps in all peakless Motzkin paths of length n (n>=0).

The programs for A171849, there is no canonical definition to state claims against.
-/

/-! ## A171849.P4273874826588439275

`A051286(n)+A182890(n)-A091964(n)`
-/

namespace A171849.P4273874826588439275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 n + (A182890 n - A091964 n)

end

end A171849.P4273874826588439275

/-! ## A171849.P8678738825030244965

`A166300(n)+A182890(n)-A051286(n)`
-/

namespace A171849.P8678738825030244965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166300 n + (A182890 n - A051286 n)

end

end A171849.P8678738825030244965

/-! ## A171849.P16997995312394930277

`A182890(n)+A203611(n)-A051291(n)`
-/

namespace A171849.P16997995312394930277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182890 n + (A203611 n - A051291 n)

end

end A171849.P16997995312394930277

/-! ## A171849.P1312312885335419005

`A182890(n)+∑[A051286(n)-A051291(n)]`
-/

namespace A171849.P1312312885335419005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 n - A051291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182890 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171849.P1312312885335419005

/-! ## A171849.P404940525536727076

`A182890(n)-A202411(2*n+1)`
-/

namespace A171849.P404940525536727076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182890 n - A202411 (2 * n + 1)

end

end A171849.P404940525536727076

/-!
# A171850: Triangle read by rows: T(n,k) is the number of peakless Motzkin paths of length n for which the area below the path minus the number of U-steps is k (n>=0, k>=0).

The programs for A171850, there is no canonical definition to state claims against.
-/

/-! ## A171850.P11146336855619702552

`gcd(A193169(A374761(n)), A374380(n+1))`
-/

namespace A171850.P11146336855619702552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A193169 (A374761 n).toNat) (A374380 (n + 1))

end

end A171850.P11146336855619702552

/-!
# A171851: The difference between the area under a peakless Motzkin path and the number of its U-steps, summed over all peakless Motzkin paths of length n (n>=0).

The programs for A171851, there is no canonical definition to state claims against.
-/

/-! ## A171851.P13375056311913557201

`A145267(A004892(n+1))-A332726(n)`
-/

namespace A171851.P13375056311913557201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145267 (A004892 (n + 1)).toNat - A332726 n

end

end A171851.P13375056311913557201

/-! ## A171851.P7157265766745928

`ceil(A289429(n)/A000244(n)-A332726(n))`
-/

namespace A171851.P7157265766745928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A289429 n : ℚ) / (A000244 n : ℚ) - (A332726 n : ℚ)⌉

end

end A171851.P7157265766745928

/-! ## A171851.P1585398306496591030

`A003602(4*A027058(n+1))-A332726(n)`
-/

namespace A171851.P1585398306496591030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (4 * A027058 (n + 1)).toNat - A332726 n

end

end A171851.P1585398306496591030

/-! ## A171851.P6622365415955496688

`A003602(lcm(4, A027058(n+1)))-A332726(n)`
-/

namespace A171851.P6622365415955496688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (Int.lcm 4 (A027058 (n + 1))) - A332726 n

end

end A171851.P6622365415955496688

/-!
# A171853: Sum of the trapezoid weights of all peakless Motzkin paths of length n (n>=0).

The programs for A171853, there is no canonical definition to state claims against.
-/

/-! ## A171853.P5972575080585847612

`A187258(n)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A171853.P5972575080585847612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A187258 n + a (n - 2)

end

end A171853.P5972575080585847612

/-! ## A171853.P8152412677529742359

`A185283(A109317(n))-A008619(n)`
-/

namespace A171853.P8152412677529742359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A109317 n).toNat - A008619 n

end

end A171853.P8152412677529742359

/-! ## A171853.P13432261031661573318

`A185283(A109317(n))-A157271(n+1)`
-/

namespace A171853.P13432261031661573318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A109317 n).toNat - A157271 (n + 1)

end

end A171853.P13432261031661573318

/-! ## A171853.P16486825320406287647

`A054900(A048654(n)+A007318(3*(n+1)))`
-/

namespace A171853.P16486825320406287647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054900 (A048654 n + A007318 (3 * (n + 1))).toNat

end

end A171853.P16486825320406287647

/-! ## A171853.P3382764981300007627

`A325946(A259117(n+1))`
-/

namespace A171853.P3382764981300007627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325946 (A259117 (n + 1)).toNat

end

end A171853.P3382764981300007627

/-!
# A171854: Number of ladders in all peakless Motzkin paths of length n (n>=0).

The programs for A171854, there is no canonical definition to state claims against.
-/

/-! ## A171854.P13086212208050953389

`A202839(n)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A171854.P13086212208050953389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A202839 n + a (n - 2)

end

end A171854.P13086212208050953389

/-! ## A171854.P13493684838187311355

`A202846(abs(2-n))+A202846(n)`
-/

namespace A171854.P13493684838187311355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202846 |2 - (n : ℤ)|.toNat + A202846 n

end

end A171854.P13493684838187311355

/-! ## A171854.P265452555028694364

`A054899(A208354(n)+A071618(n))`
-/

namespace A171854.P265452555028694364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A208354 n + A071618 n).toNat

end

end A171854.P265452555028694364

/-! ## A171854.P14670943872245672401

`A054899(A071618(n)-(A054899(n)-A208354(n)))`
-/

namespace A171854.P14670943872245672401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A071618 n - (A054899 n - A208354 n)).toNat

end

end A171854.P14670943872245672401

/-! ## A171854.P2418123531999300507

`A033183(2^(n-1)*∑[n])%(2^n)`
-/

namespace A171854.P2418123531999300507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033183 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ))).toNat) (2 ^ n : ℤ)

end

end A171854.P2418123531999300507

/-!
# A171856: Number of n-step up-side self-avoiding walks on the lattice strip {-1,0,1} x Z (up-side means that the walks move up and sideways but not down).

The programs for A171856, the canonical program `A171856.P8435397142163404245` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171856 has offset 0).

The definition of A171856 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171856.P11427328091391094294

`A201081(n+1)-2*A171857(n)`
-/

namespace A171856.P11427328091391094294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201081 (n + 1) - 2 * A171857 n

end

end A171856.P11427328091391094294

namespace A171856

/-- `A201081(n+1)-2*A171857(n)` -/
def P11427328091391094294.Spec : Prop :=
  ∀ n, P11427328091391094294.a n = A171856 n

end A171856

/-! ## A171856.P8600636185918122716

`A201081(n-log2(1/2))%(2*A171857(n))`
-/

namespace A171856.P8600636185918122716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201081 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat) (2 * A171857 n)

end

end A171856.P8600636185918122716

namespace A171856

/-- `A201081(n-log2(1/2))%(2*A171857(n))` -/
def P8600636185918122716.Spec : Prop :=
  ∀ n, P8600636185918122716.a n = A171856 n

end A171856

/-! ## A171856.P8435397142163404245

`A201081(n+4)%Δ[A201081(n+3)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A171856

/-- `A201081(n+4)%Δ[A201081(n+3)]` -/
def P8435397142163404245.Spec : Prop :=
  ∀ n, P8435397142163404245.a n = A171856 n

theorem P8435397142163404245.correct : P8435397142163404245.Spec := by
  intro n
  simp only [A171856]

end A171856

/-! ## A171856.P4090483699454351397

`A201081(n+2)-Δ[Δ[A201081(n+2)]]`
-/

namespace A171856.P4090483699454351397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201081 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201081 (n + 2) - (f1 (n + 1) - f1 n)

end

end A171856.P4090483699454351397

namespace A171856

/-- `A201081(n+2)-Δ[Δ[A201081(n+2)]]` -/
def P4090483699454351397.Spec : Prop :=
  ∀ n, P4090483699454351397.a n = A171856 n

end A171856

/-!
# A171857: Number of n-step up-side self-avoiding walks on the lattice strip {0,1,2} x Z (up-side means that the walks move up and sideways but not down).

The programs for A171857, the canonical program `A171857.P15441258118698206598` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171857 has offset 0).

The definition of A171857 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 358 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171857.P15441258118698206598

`Δ[A171856(n+1)/2]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A171857

/-- `Δ[A171856(n+1)/2]` -/
def P15441258118698206598.Spec : Prop :=
  ∀ n, P15441258118698206598.a n = (A171857 n : ℚ)

end A171857

/-! ## A171857.P1337156501237437493

`(A201081(n+1)-A171856(n))/2`
-/

namespace A171857.P1337156501237437493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201081 (n + 1) - A171856 n : ℚ) / 2

end

end A171857.P1337156501237437493

namespace A171857

/-- `(A201081(n+1)-A171856(n))/2` -/
def P1337156501237437493.Spec : Prop :=
  ∀ n, P1337156501237437493.a n = (A171857 n : ℚ)

end A171857

/-! ## A171857.P13080847715987945174

`(A171856(n+2)-A171856(n+1))/2`
-/

namespace A171857.P13080847715987945174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171856 (n + 2) - A171856 (n + 1) : ℚ) / 2

end

end A171857.P13080847715987945174

namespace A171857

/-- `(A171856(n+2)-A171856(n+1))/2` -/
def P13080847715987945174.Spec : Prop :=
  ∀ n, P13080847715987945174.a n = (A171857 n : ℚ)

end A171857

/-! ## A171857.P9132817418226303795

`Δ[Δ[∑[A171856(n)]/2]]`
-/

namespace A171857.P9132817418226303795
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171856 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℤ) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171857.P9132817418226303795

namespace A171857

/-- `Δ[Δ[∑[A171856(n)]/2]]` -/
def P9132817418226303795.Spec : Prop :=
  ∀ n, P9132817418226303795.a n = (A171857 n : ℚ)

end A171857

/-! ## A171857.P1252714287703948290

`(A201081(n+1)-A201081(n+4)%Δ[A201081(n+3)])/2`
-/

namespace A171857.P1252714287703948290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201081 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201081 (n + 1) - Int.tmod (A201081 (n + 4)) (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A171857.P1252714287703948290

namespace A171857

/-- `(A201081(n+1)-A201081(n+4)%Δ[A201081(n+3)])/2` -/
def P1252714287703948290.Spec : Prop :=
  ∀ n, P1252714287703948290.a n = (A171857 n : ℚ)

end A171857

/-!
# A171858: Number of n-step up-side self-avoiding walks on the lattice strip {0,1,2,3} x Z (up-side means that the walks move up and sideways but not down).

The programs for A171858, there is no canonical definition to state claims against.
-/

/-! ## A171858.P14875163314294210394

`∑[A172471(Δ[A052884(n)])]`
-/

namespace A171858.P14875163314294210394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052884 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171858.P14875163314294210394

/-! ## A171858.P10141756547306088824

`A024417(∑[A159340(n)-1])`
-/

namespace A171858.P10141756547306088824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159340 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A171858.P10141756547306088824

/-! ## A171858.P6572917499924887098

`A045648(n+1)+record[A348366(n)]`
-/

namespace A171858.P6572917499924887098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348366 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045648 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171858.P6572917499924887098

/-! ## A171858.P6820476886348635526

`A045648(A046469(n+1))+A000225(n)`
-/

namespace A171858.P6820476886348635526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045648 (A046469 (n + 1)).toNat + A000225 n

end

end A171858.P6820476886348635526

/-! ## A171858.P11246147469250590051

`A077070(A124462(n)+A088617(n+1))`
-/

namespace A171858.P11246147469250590051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077070 (A124462 n + A088617 (n + 1)).toNat

end

end A171858.P11246147469250590051

/-!
# A171859: a(n) = Bell(n) - Sum_{j=0..n-1} Bell(j), where the Bell numbers are given in A000110.

The programs for A171859, there is no canonical definition to state claims against.
-/

/-! ## A171859.P15216630913636723302

`A000110(n)-A005001(n)`
-/

namespace A171859.P15216630913636723302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A005001 n

end

end A171859.P15216630913636723302

/-! ## A171859.P3864683363334165460

`abs(A292935(n))-A005001(n)`
-/

namespace A171859.P3864683363334165460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 n| - A005001 n

end

end A171859.P3864683363334165460

/-! ## A171859.P11286294894624980899

`A011971(∑[n])-A005001(n)`
-/

namespace A171859.P11286294894624980899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j) - A005001 n

end

end A171859.P11286294894624980899

/-! ## A171859.P3697999009302329423

`A095149(∑[n])-A005001(n)`
-/

namespace A171859.P3697999009302329423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (∑ j ∈ Finset.range (n + 1), f1 j) - A005001 n

end

end A171859.P3697999009302329423

/-! ## A171859.P12011440937887588406

`A108087(∑[n])-A005001(n)`
-/

namespace A171859.P12011440937887588406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (∑ j ∈ Finset.range (n + 1), f1 j) - A005001 n

end

end A171859.P12011440937887588406

/-! ## A171859.P5388685142408533941

`A005001(n+1)-2*A005001(n)`
-/

namespace A171859.P5388685142408533941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 (n + 1) - 2 * A005001 n

end

end A171859.P5388685142408533941

/-! ## A171859.P8907602444680833930

`A049020(∑[n])-A005001(n)`
-/

namespace A171859.P8907602444680833930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 (∑ j ∈ Finset.range (n + 1), f1 j) - A005001 n

end

end A171859.P8907602444680833930

/-! ## A171859.P8425468832079692821

`sqrt(A001247(n))-A005001(n)`
-/

namespace A171859.P8425468832079692821
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001247 n : ℝ) - (A005001 n : ℝ)

end

end A171859.P8425468832079692821

/-!
# A171860: Number of n-cell fixed polycubes that are proper in n-2 dimensions.

The programs for A171860, there is no canonical definition to state claims against.
-/

/-! ## A171860.P16641559751276494289

`A195739(∑[n+2])`
-/

namespace A171860.P16641559751276494289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195739 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A171860.P16641559751276494289

/-! ## A171860.P7291480255253837453

`record[A195739(A193974(n))]`
-/

namespace A171860.P7291480255253837453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195739 (A193974 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171860.P7291480255253837453

/-! ## A171860.P1234612699448293622

`record[A111548(n+2)*A195739(n+2)]`
-/

namespace A171860.P1234612699448293622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111548 (n + 2) * A195739 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171860.P1234612699448293622

/-! ## A171860.P15668205628388944110

`A195739(A000096(n+1))*A326307(n)`
-/

namespace A171860.P15668205628388944110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195739 (A000096 (n + 1)).toNat * A326307 n

end

end A171860.P15668205628388944110

/-! ## A171860.P5347960693432574213

`A195739(A000096(n+1))%A051189(n)`
-/

namespace A171860.P5347960693432574213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195739 (A000096 (n + 1)).toNat) (A051189 n)

end

end A171860.P5347960693432574213

/-!
# A171863: Numbers that take a record number of steps to appear in A181391.

The programs for A171863, there is no canonical definition to state claims against.
-/

/-! ## A171863.P2607802232537250481

`A181391(record[A171862(n)])`
-/

namespace A171863.P2607802232537250481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171863.P2607802232537250481

/-! ## A171863.P8671375199676400068

`A181391(A171864(n+1))`
-/

namespace A171863.P8671375199676400068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (A171864 (n + 1)).toNat

end

end A171863.P8671375199676400068

/-! ## A171863.P11437394490522643354

`abs(A171958(record[A171862(n)]))`
-/

namespace A171863.P11437394490522643354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A171958 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A171863.P11437394490522643354

/-! ## A171863.P6256495731413846088

`A185037(n)-A171958(record[A171862(n)])`
-/

namespace A171863.P6256495731413846088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185037 n - A171958 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171863.P6256495731413846088

/-! ## A171863.P9382150160251988170

`A057428(n)*A171958(record[A171862(n)])`
-/

namespace A171863.P9382150160251988170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A171958 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171863.P9382150160251988170

/-!
# A171864: Positions in A181391 where the terms listed in A171863 appear.

The programs for A171864, there is no canonical definition to state claims against.
-/

/-! ## A171864.P15683078389512006041

`record[A171862(n)]`
-/

namespace A171864.P15683078389512006041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171864.P15683078389512006041

/-! ## A171864.P1511283154293124076

`A171862(A171863(n+1))`
-/

namespace A171864.P1511283154293124076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171862 (A171863 (n + 1)).toNat

end

end A171864.P1511283154293124076

/-! ## A171864.P5915481503218775123

`A263652(eq[round(n^(2/3)), A171897(n+1)]+1)`
-/

namespace A171864.P5915481503218775123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) ^ ((2 : ℚ) / 3 : ℝ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263652 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A171864.P5915481503218775123

/-!
# A171865: Positions of 0's in A181391.

The programs for A171865, there is no canonical definition to state claims against.
-/

/-! ## A171865.P218889219899391237

`∑[A171889(n+1)]+1`
-/

namespace A171865.P218889219899391237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171889 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A171865.P218889219899391237

/-! ## A171865.P10956556699084284977

`A171868(n)+a(n-1)` with `a(0)=1`
-/

namespace A171865.P10956556699084284977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A171868 n + a (n - 1)

end

end A171865.P10956556699084284977

/-! ## A171865.P7444562776050256706

`record[n/a(A181391(n))]` with `a(0)=1, a(1)=2`
-/

namespace A171865.P7444562776050256706
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (n : ℚ) / f1 (A181391 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171865.P7444562776050256706

/-! ## A171865.P7042399078622391828

`record[gcd(n+1, A181391(n+1))]`
-/

namespace A171865.P7042399078622391828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A181391 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171865.P7042399078622391828

/-! ## A171865.P1231729381643604326

`A263652(n+1)+1-A171868(n+1)`
-/

namespace A171865.P1231729381643604326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263652 (n + 1) + (1 - A171868 (n + 1))

end

end A171865.P1231729381643604326

/-! ## A171865.P17323956035130064398

`record[(n+1)/A000005(A181391(n+1)+1)]`
-/

namespace A171865.P17323956035130064398
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000005 (A181391 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171865.P17323956035130064398

/-! ## A171865.P471040959828105518

`eq[0, A181391(n+1)]+1`
-/

namespace A171865.P471040959828105518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171865.P471040959828105518

/-! ## A171865.P3309775874330132576

`record[(n+1)/A057163(A181391(n+1)+1)]`
-/

namespace A171865.P3309775874330132576
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A057163 (A181391 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171865.P3309775874330132576

/-! ## A171865.P11469363619647866459

`A171898(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A171865.P11469363619647866459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A171898 (a (n - 1)).toNat + a (n - 1)

end

end A171865.P11469363619647866459

/-! ## A171865.P1891121972766176687

`eq[0, A337980(n+1)]`
-/

namespace A171865.P1891121972766176687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337980 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171865.P1891121972766176687

/-!
# A171866: Records in A181391 (values).

The programs for A171866, there is no canonical definition to state claims against.
-/

/-! ## A171866.P14240955899297464395

`record[A181391(n+1)]`
-/

namespace A171866.P14240955899297464395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171866.P14240955899297464395

/-! ## A171866.P421563101135211320

`A181391(A171867(n+1))`
-/

namespace A171866.P421563101135211320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (A171867 (n + 1)).toNat

end

end A171866.P421563101135211320

/-! ## A171866.P8747094664108825886

`record[A171897(n+1)]`
-/

namespace A171866.P8747094664108825886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171866.P8747094664108825886

/-! ## A171866.P2782487622039783286

`record[-A171958(n+1)]`
-/

namespace A171866.P2782487622039783286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A171958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171866.P2782487622039783286

/-! ## A171866.P9317788160479344429

`record[A337980(n+1)-1]`
-/

namespace A171866.P9317788160479344429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337980 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171866.P9317788160479344429

/-! ## A171866.P12500836827500915353

`record[A057428(n)*A171958(n+1)]`
-/

namespace A171866.P12500836827500915353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A171958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171866.P12500836827500915353

/-!
# A171867: Records in A181391 (positions).

The programs for A171867, there is no canonical definition to state claims against.
-/

/-! ## A171867.P9058762906211862575

`A171862(A171866(n+1))`
-/

namespace A171867.P9058762906211862575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171862 (A171866 (n + 1)).toNat

end

end A171867.P9058762906211862575

/-! ## A171867.P18294221622325946495

`A171862(record[A181391(n+1)])`
-/

namespace A171867.P18294221622325946495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171862 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171867.P18294221622325946495

/-! ## A171867.P9470418899008441263

`A171862(record[A171897(n+1)])`
-/

namespace A171867.P9470418899008441263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171862 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171867.P9470418899008441263

/-! ## A171867.P17377428514714535901

`A171862(record[-A171958(n+1)])`
-/

namespace A171867.P17377428514714535901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A171958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171862 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171867.P17377428514714535901

/-! ## A171867.P14223727328324634621

`A171862(record[A337980(n+1)-1])`
-/

namespace A171867.P14223727328324634621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337980 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171862 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171867.P14223727328324634621

/-! ## A171867.P10674803521379357297

`A171862(record[A057428(n)*A171958(n+1)])`
-/

namespace A171867.P10674803521379357297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A171958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171862 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171867.P10674803521379357297

/-!
# A171868: First differences of A171865.

The programs for A171868, there is no canonical definition to state claims against.
-/

/-! ## A171868.P3407770611180214446

`A171889(n+2)`
-/

namespace A171868.P3407770611180214446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171889 (n + 2)

end

end A171868.P3407770611180214446

/-! ## A171868.P9891186190941159015

`A181391(A263652(n+1)+2)`
-/

namespace A171868.P9891186190941159015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (A263652 (n + 1) + 2).toNat

end

end A171868.P9891186190941159015

/-! ## A171868.P13771710097078238753

`Δ[A171865(n+1)]`
-/

namespace A171868.P13771710097078238753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171868.P13771710097078238753

/-! ## A171868.P12736133197353600799

`A181391(A171865(n+2)+1)`
-/

namespace A171868.P12736133197353600799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (A171865 (n + 2) + 1).toNat

end

end A171868.P12736133197353600799

/-! ## A171868.P11778803376782542462

`A171865(n+2)-A171865(n+1)`
-/

namespace A171868.P11778803376782542462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171865 (n + 2) - A171865 (n + 1)

end

end A171868.P11778803376782542462

/-! ## A171868.P3339763986674948850

`Δ[eq[0, A181391(n+1)]]`
-/

namespace A171868.P3339763986674948850
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A171868.P3339763986674948850

/-! ## A171868.P9453116998551060546

`A171898(lt[A181391(n+1), 1]+1)`
-/

namespace A171868.P9453116998551060546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171898 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A171868.P9453116998551060546

/-! ## A171868.P467571149927423055

`A171898(record[n/(A181391(n+1)+1)]+1)`
-/

namespace A171868.P467571149927423055
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A181391 (n + 1) + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171898 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A171868.P467571149927423055

/-! ## A171868.P4173536946758394471

`A171898(A171865(n+1)%A171951(n+1))`
-/

namespace A171868.P4173536946758394471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171898 (Int.tmod (A171865 (n + 1)) (A171951 (n + 1))).toNat

end

end A171868.P4173536946758394471

/-! ## A171868.P995308314291836370

`Δ[lt[A337980(n+1), 1]]`
-/

namespace A171868.P995308314291836370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337980 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A171868.P995308314291836370

/-! ## A171868.P1382838048461396123

`A171958(A171865(n+2))`
-/

namespace A171868.P1382838048461396123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171958 (A171865 (n + 2)).toNat

end

end A171868.P1382838048461396123

/-! ## A171868.P12082123842929414375

`A171958(A263652(n+1)+1)`
-/

namespace A171868.P12082123842929414375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171958 (A263652 (n + 1) + 1).toNat

end

end A171868.P12082123842929414375

/-! ## A171868.P9729915504193625920

`A181391(eq[A000007(n), A181391(n+1)]+2)`
-/

namespace A171868.P9729915504193625920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A171868.P9729915504193625920

/-! ## A171868.P17839191915112284740

`A181391(eq[A000038(n), A181391(n+1)]+2)`
-/

namespace A171868.P17839191915112284740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A171868.P17839191915112284740

/-! ## A171868.P723634211183755327

`Δ[lt[A181391(n+1), A308625(2*n+3)]]`
-/

namespace A171868.P723634211183755327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308625 (2 * n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A171868.P723634211183755327

/-!
# A171869: a(n) is the period of A175555(n) in the sequence {A175555}.

The programs for A171869, the canonical program `A171869.P15852163525569997046` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171869 has offset 1).

The definition of A171869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171869.P15852163525569997046

`2*a(n-1)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2, a(4)=2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A171869

/-- `2*a(n-1)` -/
def P15852163525569997046.Spec : Prop :=
  ∀ n, (P15852163525569997046.a n : ℤ) = A171869 (n + 1)

theorem P15852163525569997046.correct : P15852163525569997046.Spec := by
  intro n
  simp only [A171869, Nat.add_sub_cancel]

end A171869

/-! ## A171869.P17897310773198545242

`a(2%n)^(n-3)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2`
-/

namespace A171869.P17897310773198545242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 2, 2] fun n a =>
  a (2 % n) ^ ((n : ℤ) - 3 : ℤ)

end

end A171869.P17897310773198545242

namespace A171869

/-- `a(2%n)^(n-3)` -/
def P17897310773198545242.Spec : Prop :=
  ∀ n, P17897310773198545242.a n = (A171869 (n + 1) : ℚ)

end A171869

/-! ## A171869.P14085430320855252271

`a(gcd(2, n))^(n-3)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2`
-/

namespace A171869.P14085430320855252271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 2, 2] fun n a =>
  a (Nat.gcd 2 n) ^ ((n : ℤ) - 3 : ℤ)

end

end A171869.P14085430320855252271

namespace A171869

/-- `a(gcd(2, n))^(n-3)` -/
def P14085430320855252271.Spec : Prop :=
  ∀ n, P14085430320855252271.a n = (A171869 (n + 1) : ℚ)

end A171869

/-! ## A171869.P15209311606233365681

`lcm(2^(n-3), a(n-1))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A171869.P15209311606233365681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 3 : ℤ))) (a (n - 1) : ℤ)

end

end A171869.P15209311606233365681

namespace A171869

/-- `lcm(2^(n-3), a(n-1))` -/
def P15209311606233365681.Spec : Prop :=
  ∀ n, (P15209311606233365681.a n : ℤ) = A171869 (n + 1)

end A171869

/-! ## A171869.P13962030766567463205

`a(n-1)+a(n-1)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2, a(4)=2`
-/

namespace A171869.P13962030766567463205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 2, 2] fun n a =>
  a (n - 1) + a (n - 1)

end

end A171869.P13962030766567463205

namespace A171869

/-- `a(n-1)+a(n-1)` -/
def P13962030766567463205.Spec : Prop :=
  ∀ n, (P13962030766567463205.a n : ℤ) = A171869 (n + 1)

theorem P13962030766567463205.correct : P13962030766567463205.Spec := by
  intro n
  simp only [A171869, Nat.add_sub_cancel, A171869.P13962030766567463205.a, A171869.P15852163525569997046.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A171869

/-! ## A171869.P11505743757624784048

`a(n-1)/(1-1/2)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2, a(4)=2`
-/

namespace A171869.P11505743757624784048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 2, 2, 2] fun n a =>
  a (n - 1) / (1 - (1 : ℚ) / 2)

end

end A171869.P11505743757624784048

namespace A171869

/-- `a(n-1)/(1-1/2)` -/
def P11505743757624784048.Spec : Prop :=
  ∀ n, P11505743757624784048.a n = (A171869 (n + 1) : ℚ)

end A171869

/-! ## A171869.P1791895100220910644

`1-floor(1-a(n-1)-a(n-1))` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A171869.P1791895100220910644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 2, 2] fun n a =>
  1 - (1 - a (n - 1) - a (n - 1))

end

end A171869.P1791895100220910644

namespace A171869

/-- `1-floor(1-a(n-1)-a(n-1))` -/
def P1791895100220910644.Spec : Prop :=
  ∀ n, P1791895100220910644.a n = A171869 (n + 1)

end A171869

/-! ## A171869.P14589413114623542209

`a(n-1)-(a(n-1)%2-a(n-1))` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2, a(4)=2`
-/

namespace A171869.P14589413114623542209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 2, 2] fun n a =>
  a (n - 1) - (Int.tmod (a (n - 1)) 2 - a (n - 1))

end

end A171869.P14589413114623542209

namespace A171869

/-- `a(n-1)-(a(n-1)%2-a(n-1))` -/
def P14589413114623542209.Spec : Prop :=
  ∀ n, P14589413114623542209.a n = A171869 (n + 1)

end A171869

/-! ## A171869.P1916722975325492843

`gcd(2^n, Δ[A087009(n)])`
-/

namespace A171869.P1916722975325492843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087009 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 ^ n : ℤ) (f1 (n + 1) - f1 n)

end

end A171869.P1916722975325492843

namespace A171869

/-- `gcd(2^n, Δ[A087009(n)])` -/
def P1916722975325492843.Spec : Prop :=
  ∀ n, (P1916722975325492843.a n : ℤ) = A171869 (n + 1)

end A171869

/-! ## A171869.P4738013358375061708

`gcd(A084633(n), A164143(n))`
-/

namespace A171869.P4738013358375061708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084633 n) (A164143 n)

end

end A171869.P4738013358375061708

namespace A171869

/-- `gcd(A084633(n), A164143(n))` -/
def P4738013358375061708.Spec : Prop :=
  ∀ n, (P4738013358375061708.a n : ℤ) = A171869 (n + 1)

end A171869

/-! ## A171869.P6549709473808918292

`gcd(Δ[A087009(n)], A122803(n))`
-/

namespace A171869.P6549709473808918292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087009 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A122803 n)

end

end A171869.P6549709473808918292

namespace A171869

/-- `gcd(Δ[A087009(n)], A122803(n))` -/
def P6549709473808918292.Spec : Prop :=
  ∀ n, (P6549709473808918292.a n : ℤ) = A171869 (n + 1)

end A171869

/-! ## A171869.P7745284717703168269

`A164161(n+2)-A007283(n)`
-/

namespace A171869.P7745284717703168269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164161 (n + 2) - A007283 n

end

end A171869.P7745284717703168269

namespace A171869

/-- `A164161(n+2)-A007283(n)` -/
def P7745284717703168269.Spec : Prop :=
  ∀ n, P7745284717703168269.a n = A171869 (n + 1)

end A171869

/-! ## A171869.P9734831221784131588

`A164161(n+2)-A003945(n+1)`
-/

namespace A171869.P9734831221784131588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164161 (n + 2) - A003945 (n + 1)

end

end A171869.P9734831221784131588

namespace A171869

/-- `A164161(n+2)-A003945(n+1)` -/
def P9734831221784131588.Spec : Prop :=
  ∀ n, P9734831221784131588.a n = A171869 (n + 1)

end A171869

/-!
# A171870: For odd numbers x, a(x) is the number of complex numbers z in the zx + 1 problem giving the same number of iterations as the 3x + 1 problem requires to reach 1.

The programs for A171870, there is no canonical definition to state claims against.
-/

/-! ## A171870.P13419703986257326078

`A075680(n+1)+A057428(n)`
-/

namespace A171870.P13419703986257326078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075680 (n + 1) + A057428 n

end

end A171870.P13419703986257326078

/-! ## A171870.P13789076037885015530

`A075680(n+1)-A057427(n)`
-/

namespace A171870.P13789076037885015530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075680 (n + 1) - A057427 n

end

end A171870.P13789076037885015530

/-! ## A171870.P15834179602598984696

`A075680(n+1)-A352894(2*n+1)`
-/

namespace A171870.P15834179602598984696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075680 (n + 1) - A352894 (2 * n + 1)

end

end A171870.P15834179602598984696

/-! ## A171870.P971253353365303493

`A075680(A173732(n)+1)`
-/

namespace A171870.P971253353365303493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075680 (A173732 n + 1).toNat

end

end A171870.P971253353365303493

/-! ## A171870.P11288209293248142705

`A075680(n+1)-A122458(2*n)`
-/

namespace A171870.P11288209293248142705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075680 (n + 1) - A122458 (2 * n)

end

end A171870.P11288209293248142705

/-! ## A171870.P6656697784592414347

`A006667(Δ[n²])-ceil(sin(n)²)`
-/

namespace A171870.P6656697784592414347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A171870.P6656697784592414347

/-! ## A171870.P9377742034411292753

`A028310(A006667(2*n+1))-1`
-/

namespace A171870.P9377742034411292753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A006667 (2 * n + 1)).toNat - 1

end

end A171870.P9377742034411292753

/-! ## A171870.P4875065424368581184

`A006667(2*n+1)-A122458(2*n)`
-/

namespace A171870.P4875065424368581184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (2 * n + 1) - A122458 (2 * n)

end

end A171870.P4875065424368581184

/-! ## A171870.P10648984218164852455

`A286380(2*n+1)-A122458(2*n)`
-/

namespace A171870.P10648984218164852455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 (2 * n + 1) - A122458 (2 * n)

end

end A171870.P10648984218164852455

/-! ## A171870.P11175859989835072834

`A006667(2*n+1)-A352894(2*n+1)`
-/

namespace A171870.P11175859989835072834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (2 * n + 1) - A352894 (2 * n + 1)

end

end A171870.P11175859989835072834

/-! ## A171870.P13371832663618678835

`A286380(2*n+1)-A352891(2*n+1)`
-/

namespace A171870.P13371832663618678835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 (2 * n + 1) - A352891 (2 * n + 1)

end

end A171870.P13371832663618678835

/-! ## A171870.P8844496448897576702

`A286380(2*n+1)-A352894(2*n+1)`
-/

namespace A171870.P8844496448897576702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 (2 * n + 1) - A352894 (2 * n + 1)

end

end A171870.P8844496448897576702

/-! ## A171870.P3642824036183382321

`A006667(3*n+2)`
-/

namespace A171870.P3642824036183382321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (3 * n + 2)

end

end A171870.P3642824036183382321

/-! ## A171870.P12512882604547118440

`A078719(3*n+2)-1`
-/

namespace A171870.P12512882604547118440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (3 * n + 2) - 1

end

end A171870.P12512882604547118440

/-! ## A171870.P14584208214436867393

`floor(A220182(3*n+2)/2)`
-/

namespace A171870.P14584208214436867393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A220182 (3 * n + 2) : ℚ) / 2⌋

end

end A171870.P14584208214436867393

/-! ## A171870.P7229187076711423342

`A286380(A075677(n+1))`
-/

namespace A171870.P7229187076711423342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 (A075677 (n + 1)).toNat

end

end A171870.P7229187076711423342

/-! ## A171870.P6992788682071267319

`A286380(A139391(2*n+1))`
-/

namespace A171870.P6992788682071267319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 (A139391 (2 * n + 1)).toNat

end

end A171870.P6992788682071267319

/-! ## A171870.P14668823716018862999

`A286380(A000265(2*n+n+2))`
-/

namespace A171870.P14668823716018862999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 (A000265 (2 * n + (n + 2))).toNat

end

end A171870.P14668823716018862999

/-! ## A171870.P13579268996350076941

`A075680(record[xor(3, n)])-1`
-/

namespace A171870.P13579268996350076941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075680 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) - 1

end

end A171870.P13579268996350076941

/-! ## A171870.P17774363615719924459

`A075680(4*n+3)-1`
-/

namespace A171870.P17774363615719924459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075680 (4 * n + 3) - 1

end

end A171870.P17774363615719924459

/-!
# A171871: Triangle read by rows: Distinct classifications of N elements containing exactly R binary partitions.

The programs for A171871, there is no canonical definition to state claims against.
-/

/-! ## A171871.P2340561427687704753

`A131810(4*A122890(n))`
-/

namespace A171871.P2340561427687704753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131810 (4 * A122890 n).toNat

end

end A171871.P2340561427687704753

/-! ## A171871.P6360631353442693748

`A275806(A073429(n)^5)`
-/

namespace A171871.P6360631353442693748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 (A073429 n ^ 5).toNat

end

end A171871.P6360631353442693748

/-! ## A171871.P3669437146262128650

`A054923(n)-A240329(A327108(3*(n+1)))`
-/

namespace A171871.P3669437146262128650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054923 n - A240329 (A327108 (3 * (n + 1))).toNat

end

end A171871.P3669437146262128650

/-! ## A171871.P4781675230577838498

`C(A257023(A293641(n)), A212012(n+1)/2)`
-/

namespace A171871.P4781675230577838498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A257023 (A293641 n).toNat).toNat (SequenceMachineLib.roundAway ((A212012 (n + 1) : ℚ) / 2)).toNat

end

end A171871.P4781675230577838498

/-! ## A171871.P2283899956236510924

`or(A000035(A244120(2*n+3)), A054923(n))`
-/

namespace A171871.P2283899956236510924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A244120 (2 * n + 3)).toNat) (A054923 n)

end

end A171871.P2283899956236510924

/-!
# A171872: Triangle read by columns: Distinct classifications of N elements containing exactly R binary partitions.

The programs for A171872, there is no canonical definition to state claims against.
-/

/-! ## A171872.P6299756424712580214

`A001965(A283709(n))%4`
-/

namespace A171872.P6299756424712580214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001965 (A283709 n).toNat) 4

end

end A171872.P6299756424712580214

/-! ## A171872.P678527347556782757

`A325414(∑[∑[A030341(n)]])`
-/

namespace A171872.P678527347556782757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325414 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A171872.P678527347556782757

/-! ## A171872.P12745781520718661910

`A056898(A201631(n+1))%6`
-/

namespace A171872.P12745781520718661910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056898 (A201631 (n + 1)).toNat) 6

end

end A171872.P12745781520718661910

/-! ## A171872.P8186635276364443439

`A086072(2*A006562(3*n+2))`
-/

namespace A171872.P8186635276364443439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086072 (2 * A006562 (3 * n + 2)).toNat

end

end A171872.P8186635276364443439

/-! ## A171872.P11694373077229901758

`A077267((1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n)*A000290(3*n+2))`
-/

namespace A171872.P11694373077229901758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (SequenceMachineLib.roundAway ((1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ)) * (A000290 (3 * n + 2) : ℚ))).toNat

end

end A171872.P11694373077229901758

/-!
# A171874: a(n) = a(n-1) + a(n-2)*a(n-3) + a(n-4)^a(n-5), with initial terms 0,0,0,1,1.

The programs for A171874, there is no canonical definition to state claims against.
-/

/-! ## A171874.P5895694755864262002

`a(n-1)+a(n-2)*a(n-3)+a(n-4)^a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A171874.P5895694755864262002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1, 1] fun n a =>
  a (n - 1) + a (n - 2) * a (n - 3) + a (n - 4) ^ a (n - 5)

end

end A171874.P5895694755864262002

/-! ## A171874.P1152022850329623628

`round(Δ[sqrt(A147510(2*(n+3)))])`
-/

namespace A171874.P1152022850329623628
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A147510 (2 * (n + 3)) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A171874.P1152022850329623628

/-! ## A171874.P16664956435405349087

`A347578(A329700(n))`
-/

namespace A171874.P16664956435405349087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347578 (A329700 n).toNat

end

end A171874.P16664956435405349087

/-! ## A171874.P1457693911468031660

`A171880(A325678(n²))`
-/

namespace A171874.P1457693911468031660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171880 (A325678 (n ^ 2)).toNat

end

end A171874.P1457693911468031660

/-! ## A171874.P15767097518058419378

`floor(A130616(n+1)/A100719(n+1))`
-/

namespace A171874.P15767097518058419378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A130616 (n + 1) : ℚ) / (A100719 (n + 1) : ℚ)⌋

end

end A171874.P15767097518058419378

/-!
# A171875: Subdiagonal of triangle A171871: Classifications of N elements containing exactly N-2 binary partitions.

The programs for A171875, there is no canonical definition to state claims against.
-/

/-! ## A171875.P1686876862682675446

`A171871(∑[n+2]-1)`
-/

namespace A171875.P1686876862682675446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171871 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A171875.P1686876862682675446

/-! ## A171875.P2348991493396098857

`A171871(A034856(n+1))+char[10]`
-/

namespace A171875.P2348991493396098857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171871 (A034856 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A171875.P2348991493396098857

/-! ## A171875.P9269618291296174377

`A326597(n)+A171871(A034856(n+1))`
-/

namespace A171875.P9269618291296174377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326597 n + A171871 (A034856 (n + 1)).toNat

end

end A171875.P9269618291296174377

/-! ## A171875.P6400989092605436247

`A171871(A034856(n+1))%A030191(n)`
-/

namespace A171875.P6400989092605436247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171871 (A034856 (n + 1)).toNat) (A030191 n)

end

end A171875.P6400989092605436247

/-! ## A171875.P13924237666780700531

`gcd(A137579(n), A171871(A034856(n+1)))`
-/

namespace A171875.P13924237666780700531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A137579 n) (A171871 (A034856 (n + 1)).toNat)

end

end A171875.P13924237666780700531

/-!
# A171876: Mutual solutions to two classification counting problems: binary block codes of wordlength J with N used words; and classifications of N elements by J partitions.

The programs for A171876, there is no canonical definition to state claims against.
-/

/-! ## A171876.P11723431485080092616

`A039754(A004754(n+1)+floor(log2(n+1)))`
-/

namespace A171876.P11723431485080092616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039754 (A004754 (n + 1) + (Nat.log 2 (n + 1) : ℤ)).toNat

end

end A171876.P11723431485080092616

/-!
# A171877: a(n) = a(n-1) + a(n-2)*a(n-3) + a(n-4)^a(n-5), with initial terms 0,0,1,1,1.

The programs for A171877, there is no canonical definition to state claims against.
-/

/-! ## A171877.P11201747867967737247

`a(n-1)+a(n-2)*a(n-3)+a(n-4)^a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A171877.P11201747867967737247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 1] fun n a =>
  a (n - 1) + a (n - 2) * a (n - 3) + a (n - 4) ^ a (n - 5)

end

end A171877.P11201747867967737247

/-! ## A171877.P354717946371438300

`A106801(A099170(n+1))`
-/

namespace A171877.P354717946371438300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106801 (A099170 (n + 1)).toNat

end

end A171877.P354717946371438300

/-! ## A171877.P5990501745889430314

`A171879(A256079(n))%A000108(n)`
-/

namespace A171877.P5990501745889430314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171879 (A256079 n).toNat) (A000108 n)

end

end A171877.P5990501745889430314

/-! ## A171877.P8407648654614448529

`A171879(A256079(n)%A192730(n))`
-/

namespace A171877.P8407648654614448529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171879 (Int.tmod (A256079 n) (A192730 n)).toNat

end

end A171877.P8407648654614448529

/-! ## A171877.P6635080916521331021

`A243282(A246676(n+1)+A128232(n))`
-/

namespace A171877.P6635080916521331021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243282 (A246676 (n + 1) + A128232 n).toNat

end

end A171877.P6635080916521331021

/-!
# A171878: a(n) = a(n-1) + a(n-2)*a(n-3) + a(n-4)^a(n-5), with initial terms 0,0,0,0,1.

The programs for A171878, there is no canonical definition to state claims against.
-/

/-! ## A171878.P7139691216124722856

`a(n-1)+a(n-2)*a(n-3)+a(n-4)^a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1`
-/

namespace A171878.P7139691216124722856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 1] fun n a =>
  a (n - 1) + a (n - 2) * a (n - 3) + a (n - 4) ^ a (n - 5)

end

end A171878.P7139691216124722856

/-! ## A171878.P3047054005137737688

`∑[A167383(floor(C(n, 2)/4)²)]`
-/

namespace A171878.P3047054005137737688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167383 (⌊(Nat.choose n 2 : ℚ) / 4⌋ ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171878.P3047054005137737688

/-! ## A171878.P8342241137645561764

`∑[A321728(A058278(n))]`
-/

namespace A171878.P8342241137645561764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321728 (A058278 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171878.P8342241137645561764

/-! ## A171878.P13858864437764587409

`∑{d}[A009306(n), A004218(#)]`
-/

namespace A171878.P13858864437764587409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A004218 d

end

end A171878.P13858864437764587409

/-!
# A171880: a(n) = a(n-1) + a(n-2)*a(n-3) + a(n-4)*a(n-5)^a(n-6); initial terms are 0, 0, 0, 1, 1, 1.

The programs for A171880, there is no canonical definition to state claims against.
-/

/-! ## A171880.P6664036730196933134

`A347578(A236862(n)+A000078(n))`
-/

namespace A171880.P6664036730196933134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347578 (A236862 n + A000078 n).toNat

end

end A171880.P6664036730196933134

/-! ## A171880.P9178326242040905708

`A002487(Δ[A273755(n)]%A178014(n+1))`
-/

namespace A171880.P9178326242040905708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Int.tmod (f1 (n + 1) - f1 n) (A178014 (n + 1))).toNat

end

end A171880.P9178326242040905708

/-!
# A171881: Square array, read by antidiagonals, where T(n,k)=n^^k for n>=0, k>=1.

The programs for A171881, there is no canonical definition to state claims against.
-/

/-! ## A171881.P10814697723263853996

`A025581(n)^A003992(n)`
-/

namespace A171881.P10814697723263853996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) ^ (A003992 n : ℤ)

end

end A171881.P10814697723263853996

/-! ## A171881.P14846609197724444402

`A122200(n)^A003992(n)`
-/

namespace A171881.P14846609197724444402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122200 n : ℚ) ^ (A003992 n : ℤ)

end

end A171881.P14846609197724444402

/-! ## A171881.P3891124029168404226

`log2(A130321(n))^A003992(n)`
-/

namespace A171881.P3891124029168404226
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A130321 n : ℝ) ^ (A003992 n : ℤ)

end

end A171881.P3891124029168404226

/-! ## A171881.P5965902631829583437

`A002262(A061579(n))^A003992(n)`
-/

namespace A171881.P5965902631829583437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 (A061579 n).toNat : ℚ) ^ (A003992 n : ℤ)

end

end A171881.P5965902631829583437

/-! ## A171881.P12832922901205267039

`A025581(n)^A004248(A061579(n))`
-/

namespace A171881.P12832922901205267039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) ^ (A004248 (A061579 n).toNat : ℤ)

end

end A171881.P12832922901205267039

/-!
# A171882: Square array, read by antidiagonals, where T(n,k)=n^^k for n>=0, k>=0.

The programs for A171882, there is no canonical definition to state claims against.
-/

/-! ## A171882.P16212173245717401324

`A321312((A114327(n)+n)%(n+7))`
-/

namespace A171882.P16212173245717401324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321312 (Int.tmod (A114327 n + (n : ℤ)) (n + 7 : ℤ)).toNat

end

end A171882.P16212173245717401324

/-! ## A171882.P7592493757320877325

`A321312(A061579(n%A013612(n)))`
-/

namespace A171882.P7592493757320877325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321312 (A061579 (Int.tmod (n : ℤ) (A013612 n)).toNat).toNat

end

end A171882.P7592493757320877325

/-! ## A171882.P15804631836189646312

`A321312(A002378(n)%A080036(n))`
-/

namespace A171882.P15804631836189646312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321312 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A171882.P15804631836189646312

/-! ## A171882.P5639905778277632071

`A321312(A061579(n)%A063007(n))`
-/

namespace A171882.P5639905778277632071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321312 (Int.tmod (A061579 n) (A063007 n)).toNat

end

end A171882.P5639905778277632071

/-! ## A171882.P14608451526266895947

`A321312(∑[2*n]%comp[∑[n]])`
-/

namespace A171882.P14608451526266895947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321312 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A171882.P14608451526266895947

/-!
# A171884: Lexicographically earliest injective nonnegative sequence a(n) satisfying |a(n+1) - a(n)| = n for all n.

The programs for A171884, there is no canonical definition to state claims against.
-/

/-! ## A171884.P7164639247218775690

`A339192(lt[A309764(n), 49])`
-/

namespace A171884.P7164639247218775690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309764 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339192 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A171884.P7164639247218775690

/-! ## A171884.P14919931300898160199

`A339192(n)%A127498(n)`
-/

namespace A171884.P14919931300898160199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339192 n) (A127498 n)

end

end A171884.P14919931300898160199

/-! ## A171884.P3674595460946236959

`A339192(lcm(n, A090273(n+1)))`
-/

namespace A171884.P3674595460946236959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339192 (Int.lcm (n : ℤ) (A090273 (n + 1)))

end

end A171884.P3674595460946236959

/-! ## A171884.P7382629582729244795

`A339192(n)+A019590(A256833(n))`
-/

namespace A171884.P7382629582729244795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339192 n + A019590 (A256833 n).toNat

end

end A171884.P7382629582729244795

/-! ## A171884.P2525820913298488803

`A055229(A173111(n))*A339192(n)`
-/

namespace A171884.P2525820913298488803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (A173111 n).toNat * A339192 n

end

end A171884.P2525820913298488803

/-!
# A171885: Representation of n in D. E. Knuth's second prefix-unambiguous, order-preserving binary string system.

The programs for A171885, the canonical program `A171885.P16728377187125056907` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171885 has offset 0).

The definition of A171885 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171885.P16728377187125056907

`xor(n-char[1], A000217(A003817(n)))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A171885

/-- `xor(n-char[1], A000217(A003817(n)))` -/
def P16728377187125056907.Spec : Prop :=
  ∀ n, P16728377187125056907.a n = A171885 n

theorem P16728377187125056907.correct : P16728377187125056907.Spec := by
  intro n
  simp only [A171885]

end A171885

/-! ## A171885.P9122819581382931997

`xor(n, A000217(A175918(A053644(n))))`
-/

namespace A171885.P9122819581382931997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A000217 (A175918 (A053644 n).toNat).toNat)

end

end A171885.P9122819581382931997

namespace A171885

/-- `xor(n, A000217(A175918(A053644(n))))` -/
def P9122819581382931997.Spec : Prop :=
  ∀ n, P9122819581382931997.a n = A171885 n

end A171885

/-! ## A171885.P2058043330700988311

`xor(A000217(A003817(n)), A199969(n+1))`
-/

namespace A171885.P2058043330700988311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000217 (A003817 n).toNat) (A199969 (n + 1))

end

end A171885.P2058043330700988311

namespace A171885

/-- `xor(A000217(A003817(n)), A199969(n+1))` -/
def P2058043330700988311.Spec : Prop :=
  ∀ n, P2058043330700988311.a n = A171885 n

end A171885

/-! ## A171885.P16671354434153057348

`xor(n, A003817(A199969(n+1))*A053644(n))`
-/

namespace A171885.P16671354434153057348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A003817 (A199969 (n + 1)).toNat * A053644 n)

end

end A171885.P16671354434153057348

namespace A171885

/-- `xor(n, A003817(A199969(n+1))*A053644(n))` -/
def P16671354434153057348.Spec : Prop :=
  ∀ n, P16671354434153057348.a n = A171885 n

end A171885

/-! ## A171885.P12198174878524973315

`A179865(A035327(n)+n)+n-1`
-/

namespace A171885.P12198174878524973315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A035327 n + (n : ℤ)).toNat + ((n : ℤ) - 1)

end

end A171885.P12198174878524973315

namespace A171885

/-- `A179865(A035327(n)+n)+n-1` -/
def P12198174878524973315.Spec : Prop :=
  ∀ n, P12198174878524973315.a n = A171885 n

end A171885

/-! ## A171885.P17567174244748597657

`A143051(A161680(A003817(n)))+n`
-/

namespace A171885.P17567174244748597657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 (A161680 (A003817 n).toNat).toNat + (n : ℤ)

end

end A171885.P17567174244748597657

namespace A171885

/-- `A143051(A161680(A003817(n)))+n` -/
def P17567174244748597657.Spec : Prop :=
  ∀ n, P17567174244748597657.a n = A171885 n

end A171885

/-! ## A171885.P14592949623367947194

`A092569(or(A053644(n)², A092569(n)))`
-/

namespace A171885.P14592949623367947194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (Int.lor (A053644 n ^ 2) (A092569 n)).toNat

end

end A171885.P14592949623367947194

namespace A171885

/-- `A092569(or(A053644(n)², A092569(n)))` -/
def P14592949623367947194.Spec : Prop :=
  ∀ n, P14592949623367947194.a n = A171885 n

end A171885

/-! ## A171885.P8349292480507654510

`xor(A092569(n), A175918(A003817(n)²))`
-/

namespace A171885.P8349292480507654510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A092569 n) (A175918 (A003817 n ^ 2).toNat)

end

end A171885.P8349292480507654510

namespace A171885

/-- `xor(A092569(n), A175918(A003817(n)²))` -/
def P8349292480507654510.Spec : Prop :=
  ∀ n, P8349292480507654510.a n = A171885 n

end A171885

/-! ## A171885.P13820693210353656435

`eq[A038572(A002024(n+1)), A103128(n+1)]`
-/

namespace A171885.P13820693210353656435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A002024 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171885.P13820693210353656435

namespace A171885

/-- `eq[A038572(A002024(n+1)), A103128(n+1)]` -/
def P13820693210353656435.Spec : Prop :=
  ∀ n, (P13820693210353656435.a n : ℤ) = A171885 n

end A171885

/-! ## A171885.P16135571003210063171

`eq[A103128(n+1), A318507(A003057(n+2))]`
-/

namespace A171885.P16135571003210063171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318507 (A003057 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171885.P16135571003210063171

namespace A171885

/-- `eq[A103128(n+1), A318507(A003057(n+2))]` -/
def P16135571003210063171.Spec : Prop :=
  ∀ n, (P16135571003210063171.a n : ℤ) = A171885 n

end A171885

/-!
# A171886: Numbers n such that A008949(n) is a power of 2.

The programs for A171886, the canonical program `A171886.P2069845256079596505` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171886 has offset 1).

The definition of A171886 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 356 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171886.P2069845256079596505

`eq[0, A140513(n)%A008949(n)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A171886

/-- `eq[0, A140513(n)%A008949(n)]` -/
def P2069845256079596505.Spec : Prop :=
  ∀ n, (P2069845256079596505.a n : ℤ) = A171886 (n + 1)

theorem P2069845256079596505.correct : P2069845256079596505.Spec := by
  intro n
  simp only [A171886, Nat.add_sub_cancel]

end A171886

/-! ## A171886.P14007366299308381271

`eq[0, A011782(n)%A008949(n)]`
-/

namespace A171886.P14007366299308381271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 n) (A008949 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171886.P14007366299308381271

namespace A171886

/-- `eq[0, A011782(n)%A008949(n)]` -/
def P14007366299308381271.Spec : Prop :=
  ∀ n, (P14007366299308381271.a n : ℤ) = A171886 (n + 1)

end A171886

/-! ## A171886.P17649312209932216232

`eq[0, A256479(A052509(n))]`
-/

namespace A171886.P17649312209932216232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256479 (A052509 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171886.P17649312209932216232

namespace A171886

/-- `eq[0, A256479(A052509(n))]` -/
def P17649312209932216232.Spec : Prop :=
  ∀ n, (P17649312209932216232.a n : ℤ) = A171886 (n + 1)

end A171886

/-! ## A171886.P990460821240447208

`eq[A048887(n+1), A080079(A054123(n))]`
-/

namespace A171886.P990460821240447208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (A054123 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171886.P990460821240447208

namespace A171886

/-- `eq[A048887(n+1), A080079(A054123(n))]` -/
def P990460821240447208.Spec : Prop :=
  ∀ n, (P990460821240447208.a n : ℤ) = A171886 (n + 1)

end A171886

/-! ## A171886.P7909372673685489348

`eq[A000034(2*n+1), A267584(A052509(n))]`
-/

namespace A171886.P7909372673685489348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 (A052509 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171886.P7909372673685489348

namespace A171886

/-- `eq[A000034(2*n+1), A267584(A052509(n))]` -/
def P7909372673685489348.Spec : Prop :=
  ∀ n, (P7909372673685489348.a n : ℤ) = A171886 (n + 1)

end A171886

/-! ## A171886.P6493219914379172221

`eq[1, A000120(A052509(n)+1)]`
-/

namespace A171886.P6493219914379172221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A052509 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171886.P6493219914379172221

namespace A171886

/-- `eq[1, A000120(A052509(n)+1)]` -/
def P6493219914379172221.Spec : Prop :=
  ∀ n, (P6493219914379172221.a n : ℤ) = A171886 (n + 1)

end A171886

/-! ## A171886.P17550293729688552140

`eq[1, A003960(A052509(n)+1)]`
-/

namespace A171886.P17550293729688552140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003960 (A052509 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171886.P17550293729688552140

namespace A171886

/-- `eq[1, A003960(A052509(n)+1)]` -/
def P17550293729688552140.Spec : Prop :=
  ∀ n, (P17550293729688552140.a n : ℤ) = A171886 (n + 1)

end A171886

/-! ## A171886.P17426738570042302318

`eq[1, A053645(A052509(n)+2)]`
-/

namespace A171886.P17426738570042302318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A052509 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171886.P17426738570042302318

namespace A171886

/-- `eq[1, A053645(A052509(n)+2)]` -/
def P17426738570042302318.Spec : Prop :=
  ∀ n, (P17426738570042302318.a n : ℤ) = A171886 (n + 1)

end A171886

/-!
# A171887: Records in A171868 (positions).

The programs for A171887, there is no canonical definition to state claims against.
-/

/-! ## A171887.P4706725375523757272

`A171896(A308721(A171888(n+1)))`
-/

namespace A171887.P4706725375523757272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171896 (A308721 (A171888 (n + 1)).toNat).toNat

end

end A171887.P4706725375523757272

/-! ## A171887.P12813214796104559512

`record[gcd((n+1)*∏{p}[n+1, #], A326230(n+1))]`
-/

namespace A171887.P12813214796104559512
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p) : ℕ) : ℤ) (A326230 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171887.P12813214796104559512

/-! ## A171887.P8518029453371921299

`A175585(A365062(n+1))`
-/

namespace A171887.P8518029453371921299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175585 (A365062 (n + 1)).toNat

end

end A171887.P8518029453371921299

/-!
# A171888: Records in A171868 (values).

The programs for A171888, there is no canonical definition to state claims against.
-/

/-! ## A171888.P5519099940394788637

`eq[0, A003849(A354724(n+1))]`
-/

namespace A171888.P5519099940394788637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A354724 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171888.P5519099940394788637

/-! ## A171888.P9507235948121802483

`eq[A341389(A164845(n)), A341389(n)]`
-/

namespace A171888.P9507235948121802483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341389 (A164845 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341389 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171888.P9507235948121802483

/-! ## A171888.P10042298566000884683

`A036042(A267591(record[A324888(n+1)]))`
-/

namespace A171888.P10042298566000884683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (A267591 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A171888.P10042298566000884683

/-! ## A171888.P2612005916919228785

`eq[A185037(n), A284468(A097475(n+1)+1)]+1`
-/

namespace A171888.P2612005916919228785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185037 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284468 (A097475 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A171888.P2612005916919228785

/-! ## A171888.P10215032133670282819

`A130245(2^n*A070939(n))`
-/

namespace A171888.P10215032133670282819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 ((2 ^ n : ℤ) * A070939 n).toNat

end

end A171888.P10215032133670282819

/-!
# A171889: a(n) = number immediately following n-th 0 in A181391.

The programs for A171889, there is no canonical definition to state claims against.
-/

/-! ## A171889.P9118179377977737087

`Δ[A171865(n-n²%(n+1)+1)]`
-/

namespace A171889.P9118179377977737087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171865 ((n : ℤ) - ((n ^ 2 % (n + 1) : ℕ) : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171889.P9118179377977737087

/-! ## A171889.P12453990642190127689

`A181391(A171865(n+1)+1)`
-/

namespace A171889.P12453990642190127689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (A171865 (n + 1) + 1).toNat

end

end A171889.P12453990642190127689

/-! ## A171889.P480830672868186455

`A181391(record[(n+1)*(1-A181391(n+1))]+1)`
-/

namespace A171889.P480830672868186455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A181391 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A171889.P480830672868186455

/-! ## A171889.P7408494879612149911

`A181391(record[(n+1)/(A181391(n+1)+1)]+1)`
-/

namespace A171889.P7408494879612149911
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A181391 (n + 1) + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A171889.P7408494879612149911

/-! ## A171889.P17469938029668050301

`A171868(A028310(n))+n-A028310(n)`
-/

namespace A171889.P17469938029668050301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171868 (A028310 n).toNat + ((n : ℤ) - A028310 n)

end

end A171889.P17469938029668050301

/-! ## A171889.P9798983530449773592

`A181391(A263652(n+1)+2-A171868(n+1))`
-/

namespace A171889.P9798983530449773592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (A263652 (n + 1) + (2 - A171868 (n + 1))).toNat

end

end A171889.P9798983530449773592

/-! ## A171889.P3654478188487215333

`A181391(eq[0, A181391(n+1)]+2)`
-/

namespace A171889.P3654478188487215333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A171889.P3654478188487215333

/-! ## A171889.P2391267380597600016

`A181391(lt[A181391(n+1), 1]+2)`
-/

namespace A171889.P2391267380597600016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A171889.P2391267380597600016

/-! ## A171889.P11173270293921417919

`A171958(A171865(n+1))`
-/

namespace A171889.P11173270293921417919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171958 (A171865 (n + 1)).toNat

end

end A171889.P11173270293921417919

/-!
# A171891: 1 and all numbers >= 10.

The programs for A171891, the canonical program `A171891.P17897639323398604836` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171891 has offset 1).

The definition of A171891 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171891.P17897639323398604836

`dr(9^dr(n))+n`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A171891

/-- `dr(9^dr(n))+n` -/
def P17897639323398604836.Spec : Prop :=
  ∀ n, (P17897639323398604836.a n : ℤ) = A171891 (n + 1)

theorem P17897639323398604836.correct : P17897639323398604836.Spec := by
  intro n
  simp only [A171891, Nat.add_sub_cancel]

end A171891

/-!
# A171892: 0, 1 and all numbers >= 9.

The programs for A171892, the canonical program `A171892.P4521711266613734512` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171892 has offset 1).

The definition of A171892 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171892.P4521711266613734512

`7*floor(atan(n))+n`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A171892

/-- `7*floor(atan(n))+n` -/
def P4521711266613734512.Spec : Prop :=
  ∀ n, P4521711266613734512.a n = A171892 (n + 1)

theorem P4521711266613734512.correct : P4521711266613734512.Spec := by
  intro n
  simp only [A171892, Nat.add_sub_cancel]

end A171892

/-!
# A171893: 1, 2 and all numbers >= 10.

The programs for A171893, the canonical program `A171893.P2351052779800547266` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171893 has offset 1).

The definition of A171893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171893.P2351052779800547266

`8^floor(atan(n))+n`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A171893

/-- `8^floor(atan(n))+n` -/
def P2351052779800547266.Spec : Prop :=
  ∀ n, P2351052779800547266.a n = (A171893 (n + 1) : ℚ)

end A171893

/-!
# A171894: 1 if A181391(n) is a new value in A181391, otherwise 0.

The programs for A171894, there is no canonical definition to state claims against.
-/

/-! ## A171894.P14123265850671078319

`char[A171862(n)-1]`
-/

namespace A171894.P14123265850671078319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171862 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A171894.P14123265850671078319

/-! ## A171894.P17014867376949060041

`floor(acot(A181391(n+2)))`
-/

namespace A171894.P17014867376949060041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A181391 (n + 2) : ℝ)⌋

end

end A171894.P17014867376949060041

/-! ## A171894.P17648535192722321400

`floor(1/A200780(n+1))`
-/

namespace A171894.P17648535192722321400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A200780 (n + 1) : ℚ)⌋

end

end A171894.P17648535192722321400

/-! ## A171894.P2200125841177318656

`char[A263652(n+1)-1]`
-/

namespace A171894.P2200125841177318656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263652 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A171894.P2200125841177318656

/-! ## A171894.P671094519644503052

`char[A171865(n+1)-2]`
-/

namespace A171894.P671094519644503052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171865 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A171894.P671094519644503052

/-! ## A171894.P9832712285595571109

`char[lt[A337980(n+3), 1]]`
-/

namespace A171894.P9832712285595571109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337980 (n + 3)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A171894.P9832712285595571109

/-! ## A171894.P5156899776272117781

`char[∑[A171889(n+1)]-1]`
-/

namespace A171894.P5156899776272117781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171889 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A171894.P5156899776272117781

/-! ## A171894.P12200694506702017705

`1-char[A171898(n+1)+n]`
-/

namespace A171894.P12200694506702017705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171898 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A171894.P12200694506702017705

/-! ## A171894.P7839592225480730937

`A000007(A181391(n+2))`
-/

namespace A171894.P7839592225480730937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A181391 (n + 2)).toNat

end

end A171894.P7839592225480730937

/-! ## A171894.P15449700607299525510

`A000007(∑[A171958(n+1)])`
-/

namespace A171894.P15449700607299525510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A171894.P15449700607299525510

/-! ## A171894.P10721432985523077004

`∏{d}[A181391(n+2), A181391(#)]`
-/

namespace A171894.P10721432985523077004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A181391 d

end

end A171894.P10721432985523077004

/-! ## A171894.P7559257048420651859

`floor(A171895(n+1)/A171896(n+1))`
-/

namespace A171894.P7559257048420651859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A171895 (n + 1) : ℚ) / (A171896 (n + 1) : ℚ)⌋

end

end A171894.P7559257048420651859

/-! ## A171894.P8600345115711803990

`A181391(a(n-1)+1)^A181391(n+2)` with `a(0)=1`
-/

namespace A171894.P8600345115711803990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A181391 (SequenceMachineLib.roundAway (a (n - 1) + 1)).toNat : ℚ) ^ (A181391 (n + 2) : ℤ)

end

end A171894.P8600345115711803990

/-! ## A171894.P7955220905811342592

`and(1, A000010(A000720(A181391(n+2)+4)))`
-/

namespace A171894.P7955220905811342592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000010 (A000720 (A181391 (n + 2) + 4).toNat).toNat)

end

end A171894.P7955220905811342592

/-! ## A171894.P4858124121842788918

`A171871(A171896(n+1)-A171895(n+1))`
-/

namespace A171894.P4858124121842788918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171871 (A171896 (n + 1) - A171895 (n + 1)).toNat

end

end A171894.P4858124121842788918

/-! ## A171894.P11026855132060541013

`Δ[A171896(n+1)]`
-/

namespace A171894.P11026855132060541013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171894.P11026855132060541013

/-! ## A171894.P1896023529946885881

`A171896(n+2)-A171896(n+1)`
-/

namespace A171894.P1896023529946885881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171896 (n + 2) - A171896 (n + 1)

end

end A171894.P1896023529946885881

/-! ## A171894.P11251726278395809394

`C(A181405(2*(n+1)), A181391(n+2))`
-/

namespace A171894.P11251726278395809394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A181405 (2 * (n + 1))).toNat (A181391 (n + 2)).toNat

end

end A171894.P11251726278395809394

/-! ## A171894.P1329722284336353172

`A073345(2*A181391(n+2)²)`
-/

namespace A171894.P1329722284336353172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073345 (2 * A181391 (n + 2) ^ 2).toNat

end

end A171894.P1329722284336353172

/-! ## A171894.P17240057618722703180

`A000038(A181391(n+2)²)/2`
-/

namespace A171894.P17240057618722703180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (A181391 (n + 2) ^ 2).toNat : ℚ) / 2

end

end A171894.P17240057618722703180

/-!
# A171895: Number of distinct terms among the first n terms of A181391.

The programs for A171895, there is no canonical definition to state claims against.
-/

/-! ## A171895.P6165995380370157249

`∑[A171894(n+1)]`
-/

namespace A171895.P6165995380370157249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171895.P6165995380370157249

/-! ## A171895.P13972690837438393981

`∑[char[A171862(n)-1]]`
-/

namespace A171895.P13972690837438393981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171862 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171895.P13972690837438393981

/-! ## A171895.P6493282546068681912

`∑[floor(acot(A181391(n+2)))]`
-/

namespace A171895.P6493282546068681912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A181391 (n + 2) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171895.P6493282546068681912

/-! ## A171895.P3908229739462780860

`∑[char[A263652(n+1)-1]]`
-/

namespace A171895.P3908229739462780860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263652 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171895.P3908229739462780860

/-! ## A171895.P1836795665913528723

`∑[A000007(A181391(n+2))]`
-/

namespace A171895.P1836795665913528723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A181391 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171895.P1836795665913528723

/-! ## A171895.P3355203456388587823

`∑[A000007(∑[A171958(n+1)])]`
-/

namespace A171895.P3355203456388587823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171958 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171895.P3355203456388587823

/-! ## A171895.P13003311445538968040

`∑[A000010(A181391(n+2)+2)%2]`
-/

namespace A171895.P13003311445538968040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A181391 (n + 2) + 2).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171895.P13003311445538968040

/-! ## A171895.P15170936376408388613

`A171896(n+2)-1`
-/

namespace A171895.P15170936376408388613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171896 (n + 2) - 1

end

end A171895.P15170936376408388613

/-! ## A171895.P9054828707806564302

`∑[abs(Δ[A171896(n+1)])]`
-/

namespace A171895.P9054828707806564302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171896 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171895.P9054828707806564302

/-! ## A171895.P12830693615907014653

`∑[A000045(Δ[A171896(n+1)])]`
-/

namespace A171895.P12830693615907014653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171896 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171895.P12830693615907014653

/-! ## A171895.P10076628310540566034

`∑[A001065(Δ[A171896(n+1)]+1)]`
-/

namespace A171895.P10076628310540566034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171896 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171895.P10076628310540566034

/-! ## A171895.P2355867703699262577

`∑[A001996(Δ[A171896(n+1)]+1)]`
-/

namespace A171895.P2355867703699262577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171896 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001996 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171895.P2355867703699262577

/-! ## A171895.P3067836295025420329

`∑[A004881(Δ[A171896(n+1)]+1)]`
-/

namespace A171895.P3067836295025420329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171896 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004881 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171895.P3067836295025420329

/-! ## A171895.P18386305473098432780

`∑[A025480(Δ[A171896(n+1)]+1)]`
-/

namespace A171895.P18386305473098432780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171896 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171895.P18386305473098432780

/-! ## A171895.P1581300712333260727

`∑[A067558(Δ[A171896(n+1)]+1)]`
-/

namespace A171895.P1581300712333260727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171896 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067558 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171895.P1581300712333260727

/-! ## A171895.P4475813079800707310

`∑[C(A181405(2*(n+1)), A181391(n+2))]`
-/

namespace A171895.P4475813079800707310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A181405 (2 * (n + 1))).toNat (A181391 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171895.P4475813079800707310

/-!
# A171896: Number of 0's in first n terms of Van Eck's sequence (A181391).

The programs for A171896, there is no canonical definition to state claims against.
-/

/-! ## A171896.P3050951990838832427

`∑[char[A171862(n)]]+1`
-/

namespace A171896.P3050951990838832427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171862 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A171896.P3050951990838832427

/-! ## A171896.P987640854634443381

`∑[char[∑[A171889(n+1)]]]`
-/

namespace A171896.P987640854634443381
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171896.P987640854634443381

/-! ## A171896.P4198561356326984351

`∑[floor(acot(A181391(n+1)))]`
-/

namespace A171896.P4198561356326984351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A181391 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171896.P4198561356326984351

/-! ## A171896.P2583941209230071284

`A171894(n)+a(n-1)` with `a(0)=1`
-/

namespace A171896.P2583941209230071284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A171894 n + a (n - 1)

end

end A171896.P2583941209230071284

/-! ## A171896.P3922519059484382995

`∑[char[A263652(n+1)]]+1`
-/

namespace A171896.P3922519059484382995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263652 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A171896.P3922519059484382995

/-! ## A171896.P18119012111212344517

`char[A171898(a(n-1)+1)+a(n-1)]+a(n-1)` with `a(0)=1`
-/

namespace A171896.P18119012111212344517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A171898 (f1 (n - 1) + 1).toNat + f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A171896.P18119012111212344517

/-! ## A171896.P5928256173319372711

`∑[A000007(A181391(n+1))]`
-/

namespace A171896.P5928256173319372711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A181391 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171896.P5928256173319372711

/-! ## A171896.P9882696770902681224

`∑[A000010(A181391(n+1)+2)%2]`
-/

namespace A171896.P9882696770902681224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A181391 (n + 1) + 2).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171896.P9882696770902681224

/-! ## A171896.P6122679866458911137

`∑[A171894(n+1)]+1-A171894(n+1)`
-/

namespace A171896.P6122679866458911137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A171894 (n + 1))

end

end A171896.P6122679866458911137

/-! ## A171896.P4316851579411912437

`∑[C(2, A337980(n+2)²)]`
-/

namespace A171896.P4316851579411912437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A337980 (n + 2) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171896.P4316851579411912437

/-! ## A171896.P4381693945733901156

`∑[A181405(3*n+1)^A181391(n+1)]`
-/

namespace A171896.P4381693945733901156
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181405 (3 * n + 1) : ℚ) ^ (A181391 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171896.P4381693945733901156

/-! ## A171896.P361728976930378531

`∑[C(A181405(3*n+5), A181391(n+1))]`
-/

namespace A171896.P361728976930378531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A181405 (3 * n + 5)).toNat (A181391 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171896.P361728976930378531

/-! ## A171896.P4442467378106902811

`∑[A002182(A181391(n+1)+1)%2]`
-/

namespace A171896.P4442467378106902811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002182 (A181391 (n + 1) + 1).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171896.P4442467378106902811

/-!
# A171897: Numbers in the van Eck sequence A181391 in order of first appearance.

The programs for A171897, there is no canonical definition to state claims against.
-/

/-! ## A171897.P18297570389835874169

`A181391(A263652(n+1))`
-/

namespace A171897.P18297570389835874169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (A263652 (n + 1)).toNat

end

end A171897.P18297570389835874169

/-! ## A171897.P4693445268331879987

`A181391(∑[A171868(n+1)])`
-/

namespace A171897.P4693445268331879987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A171897.P4693445268331879987

/-! ## A171897.P2710712134601892890

`A181391(∑[A171889(n+2)])`
-/

namespace A171897.P2710712134601892890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171889 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A171897.P2710712134601892890

/-! ## A171897.P11955582219881174715

`A181391(A171865(n+2)-1)`
-/

namespace A171897.P11955582219881174715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (A171865 (n + 2) - 1).toNat

end

end A171897.P11955582219881174715

/-! ## A171897.P11109937556542178876

`A181391(eq[0, A181391(n+2)]+1)`
-/

namespace A171897.P11109937556542178876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A171897.P11109937556542178876

/-! ## A171897.P14840959246261449282

`A181391(lt[n*A181391(n+1), n])`
-/

namespace A171897.P14840959246261449282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A181391 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A171897.P14840959246261449282

/-! ## A171897.P12142255004011168613

`A181391(record[n*(1-A181391(n+2))]+1)`
-/

namespace A171897.P12142255004011168613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A181391 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A171897.P12142255004011168613

/-! ## A171897.P5471607186210668522

`A181391(record[gcd(1-n, A181391(n+1))]+1)`
-/

namespace A171897.P5471607186210668522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) (A181391 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)

end

end A171897.P5471607186210668522

/-! ## A171897.P10586553757124635234

`A181391(eq[A000007(n), A181391(n+1)])`
-/

namespace A171897.P10586553757124635234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A171897.P10586553757124635234

/-! ## A171897.P7875985079297141528

`A181391(eq[A000038(n), A181391(n+1)])`
-/

namespace A171897.P7875985079297141528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A171897.P7875985079297141528

/-! ## A171897.P11938454342141886211

`A181391(lt[A181391(n+1), n/A293990(n)])`
-/

namespace A171897.P11938454342141886211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A293990 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A171897.P11938454342141886211

/-!
# A171898: Forward van Eck transform of A181391.

The programs for A171898, there is no canonical definition to state claims against.
-/

/-! ## A171898.P17645019156211611002

`A078802(3*n+1)*A340035(A061581(n+1))`
-/

namespace A171898.P17645019156211611002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078802 (3 * n + 1) * A340035 (A061581 (n + 1)).toNat

end

end A171898.P17645019156211611002

/-!
# A171899: Backwards van Eck transform of A000002.

The programs for A171899, the canonical program `A171899.P7149812686449934114` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171899 has offset 1).

The definition of A171899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171899.P7149812686449934114

`(Δ[char[A216345(n+1)]]+2)%(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A171899

/-- `(Δ[char[A216345(n+1)]]+2)%(n+1)` -/
def P7149812686449934114.Spec : Prop :=
  ∀ n, P7149812686449934114.a n = A171899 (n + 1)

theorem P7149812686449934114.correct : P7149812686449934114.Spec := by
  intro n
  simp only [A171899, Nat.add_sub_cancel]

end A171899

/-! ## A171899.P10999986151904459555

`(Δ[char[A216345(n+1)]]+2)*A157928(n)`
-/

namespace A171899.P10999986151904459555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2) * A157928 n

end

end A171899.P10999986151904459555

namespace A171899

/-- `(Δ[char[A216345(n+1)]]+2)*A157928(n)` -/
def P10999986151904459555.Spec : Prop :=
  ∀ n, P10999986151904459555.a n = A171899 (n + 1)

end A171899

/-! ## A171899.P1927134183799522719

`A078929(A025504(n+1))*A157928(n)`
-/

namespace A171899.P1927134183799522719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078929 (A025504 (n + 1)).toNat * A157928 n

end

end A171899.P1927134183799522719

namespace A171899

/-- `A078929(A025504(n+1))*A157928(n)` -/
def P1927134183799522719.Spec : Prop :=
  ∀ n, P1927134183799522719.a n = A171899 (n + 1)

end A171899

/-! ## A171899.P18328528725592884289

`and(A000225(n), A078929(A025504(n+1)))`
-/

namespace A171899.P18328528725592884289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A078929 (A025504 (n + 1)).toNat)

end

end A171899.P18328528725592884289

namespace A171899

/-- `and(A000225(n), A078929(A025504(n+1)))` -/
def P18328528725592884289.Spec : Prop :=
  ∀ n, P18328528725592884289.a n = A171899 (n + 1)

end A171899

/-! ## A171899.P5070470039498957511

`and(A003464(n), A078929(A025504(n+1)))`
-/

namespace A171899.P5070470039498957511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003464 n) (A078929 (A025504 (n + 1)).toNat)

end

end A171899.P5070470039498957511

namespace A171899

/-- `and(A003464(n), A078929(A025504(n+1)))` -/
def P5070470039498957511.Spec : Prop :=
  ∀ n, P5070470039498957511.a n = A171899 (n + 1)

end A171899

