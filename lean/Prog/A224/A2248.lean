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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A224800: Column 0 of triangle A224798.

The programs for A224800, there is no canonical definition to state claims against.
-/

/-! ## A224800.P7102838930412130099

`A224798(∑[n])`
-/

namespace A224800.P7102838930412130099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224798 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A224800.P7102838930412130099

/-! ## A224800.P5741807714692335414

`and(-1, A224798(C(n+1, 2)))`
-/

namespace A224800.P5741807714692335414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A224798 (Nat.choose (n + 1) 2))

end

end A224800.P5741807714692335414

/-! ## A224800.P10437771145757701166

`and(-1, A224798(record[C(n, 2)-n]-n))`
-/

namespace A224800.P10437771145757701166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A224798 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat)

end

end A224800.P10437771145757701166

/-! ## A224800.P11643814130278394512

`and(-1, A224798(floor((2*n+1)²/8)))`
-/

namespace A224800.P11643814130278394512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A224798 ⌊((2 * n + 1) ^ 2 : ℚ) / 8⌋.toNat)

end

end A224800.P11643814130278394512

/-! ## A224800.P15959853875224552309

`A175740(n)*A224798(n*(n+1)/2)`
-/

namespace A224800.P15959853875224552309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175740 n * A224798 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat

end

end A224800.P15959853875224552309

/-!
# A224801: Column 1 of triangle A224798.

The programs for A224801, there is no canonical definition to state claims against.
-/

/-! ## A224801.P13950516076756011532

`record[A224798(comp[∑[n]])]`
-/

namespace A224801.P13950516076756011532
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224798 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224801.P13950516076756011532

/-! ## A224801.P11367234533838121540

`A224798(∑[n+1]+1)`
-/

namespace A224801.P11367234533838121540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224798 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224801.P11367234533838121540

/-! ## A224801.P13585657283436979661

`record[A051168(n)*A224798(n)]`
-/

namespace A224801.P13585657283436979661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 n * A224798 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224801.P13585657283436979661

/-! ## A224801.P7352953870229036715

`record[and(A093558(n+2), A224798(n))]`
-/

namespace A224801.P7352953870229036715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A093558 (n + 2)) (A224798 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224801.P7352953870229036715

/-! ## A224801.P4775254349706349069

`A236460(n+1)+A224798(A249725(2*n+3))`
-/

namespace A224801.P4775254349706349069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236460 (n + 1) + A224798 (A249725 (2 * n + 3)).toNat

end

end A224801.P4775254349706349069

/-!
# A224802: Column 2 of triangle A224798.

The programs for A224802, there is no canonical definition to state claims against.
-/

/-! ## A224802.P17083073288541450606

`record[A224798(∑[n]+2)]`
-/

namespace A224802.P17083073288541450606
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224798 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224802.P17083073288541450606

/-! ## A224802.P2316650209443066500

`A224798(∑[n+2]+3)`
-/

namespace A224802.P2316650209443066500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224798 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A224802.P2316650209443066500

/-! ## A224802.P11328072597222682814

`record[A010054(n)*A224798(n+2)]`
-/

namespace A224802.P11328072597222682814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A224798 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224802.P11328072597222682814

/-! ## A224802.P14125876281894376479

`record[root(A224798(n+2), A008949(n))]`
-/

namespace A224802.P14125876281894376479
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A224798 (n + 2) : ℝ) ^ (1 / (A008949 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224802.P14125876281894376479

/-!
# A224803: Number of (n+2)X3 0..3 matrices with each 3X3 subblock having the same population.

The programs for A224803, there is no canonical definition to state claims against.
-/

/-! ## A224803.P13486684495385242335

`A224806(∑[n]+1)`
-/

namespace A224803.P13486684495385242335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224806 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224803.P13486684495385242335

/-! ## A224803.P7836688291619253973

`record[A224806(n+1)]`
-/

namespace A224803.P7836688291619253973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224803.P7836688291619253973

/-! ## A224803.P11000168072771981163

`lcm(2, A224806(A000124(n)))`
-/

namespace A224803.P11000168072771981163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A224806 (A000124 n).toNat)

end

end A224803.P11000168072771981163

/-! ## A224803.P3207054621601574496

`A224806(A000124(n))+A011846(n)`
-/

namespace A224803.P3207054621601574496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224806 (A000124 n).toNat + A011846 n

end

end A224803.P3207054621601574496

/-! ## A224803.P13442779664864474677

`A224806(A000124(n))+A011854(n)`
-/

namespace A224803.P13442779664864474677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224806 (A000124 n).toNat + A011854 n

end

end A224803.P13442779664864474677

/-!
# A224804: Number of (n+2)X4 0..3 matrices with each 3X3 subblock having the same population.

The programs for A224804, there is no canonical definition to state claims against.
-/

/-! ## A224804.P9423058511120436962

`A224806(∑[n+1]+2)`
-/

namespace A224804.P9423058511120436962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224806 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A224804.P9423058511120436962

/-! ## A224804.P12214631494382384729

`lcm(2, A224806(A133263(n+1)))`
-/

namespace A224804.P12214631494382384729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A224806 (A133263 (n + 1)).toNat)

end

end A224804.P12214631494382384729

/-! ## A224804.P7509360862236002860

`A224806(A133263(n+1))+A031286(n)`
-/

namespace A224804.P7509360862236002860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224806 (A133263 (n + 1)).toNat + A031286 n

end

end A224804.P7509360862236002860

/-! ## A224804.P9011496973977376112

`A224806(A133263(n+1))+A090620(n)`
-/

namespace A224804.P9011496973977376112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224806 (A133263 (n + 1)).toNat + A090620 n

end

end A224804.P9011496973977376112

/-!
# A224805: Number of (n+2)X5 0..3 matrices with each 3X3 subblock having the same population.

The programs for A224805, there is no canonical definition to state claims against.
-/

/-! ## A224805.P7413100664117390165

`A224806(∑[n+2]+4)`
-/

namespace A224805.P7413100664117390165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224806 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224805.P7413100664117390165

/-! ## A224805.P10429284097605344614

`lcm(2, A224806(A167614(n+1)))`
-/

namespace A224805.P10429284097605344614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A224806 (A167614 (n + 1)).toNat)

end

end A224805.P10429284097605344614

/-! ## A224805.P10691226219706235432

`record[root(A224806(n+4), A103324(n+3))]`
-/

namespace A224805.P10691226219706235432
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A224806 (n + 4) : ℝ) ^ (1 / (A103324 (n + 3) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224805.P10691226219706235432

/-!
# A224808: Number of permutations (p(1), p(2), ..., p(n)) satisfying -k <= p(i)-i <= r and p(i)-i not in the set I, i=1..n, with k=2, r=6, I={-1,1,2,3,4,5}.

The programs for A224808, the canonical program `A224808.P11417623861762669123` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224808 has offset 0).

The definition of A224808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 719 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224808.P11417623861762669123

`A122522(n+1)*A122522(n+2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A224808

/-- `A122522(n+1)*A122522(n+2)` -/
def P11417623861762669123.Spec : Prop :=
  ∀ n, P11417623861762669123.a n = A224808 n

theorem P11417623861762669123.correct : P11417623861762669123.Spec := by
  intro n
  simp only [A224808]

end A224808

/-! ## A224808.P7205882490761035801

`∏{e}[A026532(n+1), A199120(#)]`
-/

namespace A224808.P7205882490761035801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A199120 (Nat.factorization (f1 n).natAbs p)

end

end A224808.P7205882490761035801

namespace A224808

/-- `∏{e}[A026532(n+1), A199120(#)]` -/
def P7205882490761035801.Spec : Prop :=
  ∀ n, P7205882490761035801.a n = A224808 n

end A224808

/-!
# A224809: Number of permutations (p(1), p(2), ..., p(n)) satisfying -k <= p(i)-i <= r and p(i)-i not in the set I, i=1..n, with k=2, r=4, I={-1,1,2,3}.

The programs for A224809, the canonical program `A224809.P12024715351715861749` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224809 has offset 0).

The definition of A224809 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224809.P12024715351715861749

`a(n-1)+a(n-3)-a(n-4)+a(n-5)+a(n-6)-a(n-9)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=2, a(6)=4, a(7)=6, a(8)=9`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A224809

/-- `a(n-1)+a(n-3)-a(n-4)+a(n-5)+a(n-6)-a(n-9)` -/
def P12024715351715861749.Spec : Prop :=
  ∀ n, P12024715351715861749.a n = A224809 n

theorem P12024715351715861749.correct : P12024715351715861749.Spec := by
  intro n
  simp only [A224809]

end A224809

/-! ## A224809.P17237202191071336877

`A108104(n+1)*A108104(n)`
-/

namespace A224809.P17237202191071336877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108104 (n + 1) * A108104 n

end

end A224809.P17237202191071336877

namespace A224809

/-- `A108104(n+1)*A108104(n)` -/
def P17237202191071336877.Spec : Prop :=
  ∀ n, P17237202191071336877.a n = A224809 n

end A224809

/-! ## A224809.P4392290838813851267

`A000930(A065033(n))*A108104(n)`
-/

namespace A224809.P4392290838813851267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (A065033 n).toNat * A108104 n

end

end A224809.P4392290838813851267

namespace A224809

/-- `A000930(A065033(n))*A108104(n)` -/
def P4392290838813851267.Spec : Prop :=
  ∀ n, P4392290838813851267.a n = A224809 n

end A224809

/-! ## A224809.P6430531860113588740

`A000930(A004526(n+1))*A000930(A004526(n))`
-/

namespace A224809.P6430531860113588740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (A004526 (n + 1)).toNat * A000930 (A004526 n).toNat

end

end A224809.P6430531860113588740

namespace A224809

/-- `A000930(A004526(n+1))*A000930(A004526(n))` -/
def P6430531860113588740.Spec : Prop :=
  ∀ n, P6430531860113588740.a n = A224809 n

end A224809

/-! ## A224809.P7129233734450148840

`sqrt(A224815(2*n))`
-/

namespace A224809.P7129233734450148840
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A224815 (2 * n) : ℝ)

end

end A224809.P7129233734450148840

namespace A224809

/-- `sqrt(A224815(2*n))` -/
def P7129233734450148840.Spec : Prop :=
  ∀ n, P7129233734450148840.a n = (A224809 n : ℝ)

end A224809

/-! ## A224809.P7728936202848473654

`A224815(A005843(n))^(1/2)`
-/

namespace A224809.P7728936202848473654
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A224815 (A005843 n).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A224809.P7728936202848473654

namespace A224809

/-- `A224815(A005843(n))^(1/2)` -/
def P7728936202848473654.Spec : Prop :=
  ∀ n, P7728936202848473654.a n = (A224809 n : ℝ)

end A224809

/-!
# A224810: Subsets of {1,2,...,n-6} without differences equal to 3 or 6.

The programs for A224810, there is no canonical definition to state claims against.
-/

/-! ## A224810.P18168563357592263953

`A224814(n+3)%record[A224793(n)]`
-/

namespace A224810.P18168563357592263953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224793 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224814 (n + 3)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A224810.P18168563357592263953

/-! ## A224810.P3917415299867063011

`A224814(n+3)+A049084((6*n+5)²)`
-/

namespace A224810.P3917415299867063011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224814 (n + 3) + A049084 ((6 * n + 5) ^ 2)

end

end A224810.P3917415299867063011

/-! ## A224810.P16619293736610949477

`A000120(A060818(n))*A224814(n+3)`
-/

namespace A224810.P16619293736610949477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A060818 n).toNat * A224814 (n + 3)

end

end A224810.P16619293736610949477

/-! ## A224810.P11552860224752318966

`A001065(A139054(n+1))*A224814(n+3)`
-/

namespace A224810.P11552860224752318966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A139054 (n + 1)).toNat * A224814 (n + 3)

end

end A224810.P11552860224752318966

/-! ## A224810.P1981015038417355475

`A224814(n+3)*A352893(A265780(n+1))`
-/

namespace A224810.P1981015038417355475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224814 (n + 3) * A352893 (A265780 (n + 1)).toNat

end

end A224810.P1981015038417355475

/-!
# A224811: Number of subsets of {1,2,...,n-8} without differences equal to 2, 4, 6 or 8.

The programs for A224811, there is no canonical definition to state claims against.
-/

/-! ## A224811.P5051417378724465443

`A194061(A212369(n+2))`
-/

namespace A224811.P5051417378724465443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194061 (A212369 (n + 2)).toNat

end

end A224811.P5051417378724465443

/-! ## A224811.P2634611348391752023

`A224813(n+4)%A138669(2*(n+1))`
-/

namespace A224811.P2634611348391752023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224813 (n + 4)) (A138669 (2 * (n + 1)))

end

end A224811.P2634611348391752023

/-! ## A224811.P17614425337384461143

`gcd(∏[A351873(3*n+1)], A224812(n+2))`
-/

namespace A224811.P17614425337384461143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351873 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A224812 (n + 2))

end

end A224811.P17614425337384461143

/-! ## A224811.P8989575950701904553

`A224812(n+2)%A351874(A079972(n))`
-/

namespace A224811.P8989575950701904553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224812 (n + 2)) (A351874 (A079972 n).toNat)

end

end A224811.P8989575950701904553

/-! ## A224811.P17941413314669698336

`A224813(n+4)%A235280(A224809(n))`
-/

namespace A224811.P17941413314669698336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224813 (n + 4)) (A235280 (A224809 n).toNat)

end

end A224811.P17941413314669698336

/-!
# A224812: Number of subsets of {1,2,...,n-10} without differences equal to 2, 4, 6, 8 or 10.

The programs for A224812, there is no canonical definition to state claims against.
-/

/-! ## A224812.P5281513637330366939

`A224813(n+2)+A000007(A177485(n))`
-/

namespace A224812.P5281513637330366939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224813 (n + 2) + A000007 (A177485 n).toNat

end

end A224812.P5281513637330366939

/-! ## A224812.P4256550980133276728

`A224813(n+2)%A224785(A224808(n))`
-/

namespace A224812.P4256550980133276728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224813 (n + 2)) (A224785 (A224808 n).toNat)

end

end A224812.P4256550980133276728

/-! ## A224812.P867728942121893666

`A224813(n+2)+A000007(A075629(n+5))`
-/

namespace A224812.P867728942121893666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224813 (n + 2) + A000007 (A075629 (n + 5)).toNat

end

end A224812.P867728942121893666

/-! ## A224812.P5794813266713899411

`A224813(lt[A168142(3*n+2), A342383(3*(n+1))])`
-/

namespace A224812.P5794813266713899411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168142 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342383 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224813 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A224812.P5794813266713899411

/-! ## A224812.P578630729572136768

`A224813(lt[A175057(2*n+3), A342383(3*(n+1))])`
-/

namespace A224812.P578630729572136768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175057 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342383 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224813 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A224812.P578630729572136768

/-!
# A224813: Number of subsets of {1,2,...,n-12} without differences equal to 2, 4, 6, 8, 10 or 12.

The programs for A224813, there is no canonical definition to state claims against.
-/

/-! ## A224813.P1613061609990067010

`A087811(∑[A160984(n+1)^n])`
-/

namespace A224813.P1613061609990067010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160984 (n + 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A224813.P1613061609990067010

/-!
# A224815: Number of subsets of {1,2,...,n-8} without differences equal to 4 or 8.

The programs for A224815, there is no canonical definition to state claims against.
-/

/-! ## A224815.P2597155815093418977

`A000005(∏[Δ[A068862(n+1)]])`
-/

namespace A224815.P2597155815093418977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068862 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A224815.P2597155815093418977

/-!
# A224821: Expansion of theta_4(q)^2 * theta_4(q^3) in powers of q.

The programs for A224821, there is no canonical definition to state claims against.
-/

/-! ## A224821.P17924129209380476154

`(-1)^n*A034933(n)`
-/

namespace A224821.P17924129209380476154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A034933 n

end

end A224821.P17924129209380476154

/-! ## A224821.P6536319944925816557

`A034933(n)/A033999(n)`
-/

namespace A224821.P6536319944925816557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034933 n : ℚ) / (A033999 n : ℚ)

end

end A224821.P6536319944925816557

/-! ## A224821.P17556695765223947490

`A034933(n)*A121373(Δ[or(1, n)])`
-/

namespace A224821.P17556695765223947490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034933 n * A121373 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A224821.P17556695765223947490

/-! ## A224821.P14934358839854810899

`A224822(3*n)`
-/

namespace A224821.P14934358839854810899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224822 (3 * n)

end

end A224821.P14934358839854810899

/-! ## A224821.P17889602184839065833

`A224822(A008585(n))%A016885(n)`
-/

namespace A224821.P17889602184839065833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224822 (A008585 n).toNat) (A016885 n)

end

end A224821.P17889602184839065833

/-! ## A224821.P2744900063475186865

`A329955(9*n)`
-/

namespace A224821.P2744900063475186865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329955 (9 * n)

end

end A224821.P2744900063475186865

/-! ## A224821.P13512984231169009411

`A034933(n)*A244895(A328982(n+1))`
-/

namespace A224821.P13512984231169009411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034933 n * A244895 (A328982 (n + 1)).toNat

end

end A224821.P13512984231169009411

/-!
# A224822: Expansion of phi(-q) * phi(-q^3)^2 in powers of q where phi() is a Ramanujan theta function.

The programs for A224822, there is no canonical definition to state claims against.
-/

/-! ## A224822.P6258292867398095417

`A033999(n)*A246928(n)`
-/

namespace A224822.P6258292867398095417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A246928 n

end

end A224822.P6258292867398095417

/-! ## A224822.P8280642941781952724

`A057079(n)*A246927(n)`
-/

namespace A224822.P8280642941781952724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A246927 n

end

end A224822.P8280642941781952724

/-! ## A224822.P6974052755907489070

`A132954(n)*A246927(n)`
-/

namespace A224822.P6974052755907489070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132954 n * A246927 n

end

end A224822.P6974052755907489070

/-! ## A224822.P9695651512828675663

`(A004442(n)-n)*A246928(n)`
-/

namespace A224822.P9695651512828675663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A246928 n

end

end A224822.P9695651512828675663

/-! ## A224822.P11470093827770674309

`A010815(Δ[or(1, n)])*A246928(n)`
-/

namespace A224822.P11470093827770674309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A246928 n

end

end A224822.P11470093827770674309

/-! ## A224822.P186637400728544958

`A121373(Δ[or(1, n)])*A246928(n)`
-/

namespace A224822.P186637400728544958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A246928 n

end

end A224822.P186637400728544958

/-! ## A224822.P17431602986737334378

`A100051(n+1)*A246928(n)`
-/

namespace A224822.P17431602986737334378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 (n + 1) * A246928 n

end

end A224822.P17431602986737334378

/-! ## A224822.P2396793517850111467

`A224821(3*n)`
-/

namespace A224822.P2396793517850111467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224821 (3 * n)

end

end A224822.P2396793517850111467

/-! ## A224822.P9701749403559323633

`A329955(3*n)`
-/

namespace A224822.P9701749403559323633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329955 (3 * n)

end

end A224822.P9701749403559323633

/-! ## A224822.P9013639441503713992

`A033721(A008585(n))*A100051(n+1)`
-/

namespace A224822.P9013639441503713992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033721 (A008585 n).toNat * A100051 (n + 1)

end

end A224822.P9013639441503713992

/-! ## A224822.P15168019928827350561

`A246928(n)/A100051(A005408(n)+n)`
-/

namespace A224822.P15168019928827350561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246928 n : ℚ) / (A100051 (A005408 n + (n : ℤ)).toNat : ℚ)

end

end A224822.P15168019928827350561

/-! ## A224822.P8707216603213681389

`A246928(n)/A100051(n²+1)`
-/

namespace A224822.P8707216603213681389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246928 n : ℚ) / (A100051 (n ^ 2 + 1) : ℚ)

end

end A224822.P8707216603213681389

/-!
# A224823: Number of solutions to n = x + y + 3*z where x, y, z are triangular numbers.

The programs for A224823, there is no canonical definition to state claims against.
-/

/-! ## A224823.P15598671925908477818

`A224825(3*n+1)`
-/

namespace A224823.P15598671925908477818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224825 (3 * n + 1)

end

end A224823.P15598671925908477818

/-! ## A224823.P6463791245404097248

`A224825(A016777(n))%(n+2)`
-/

namespace A224823.P6463791245404097248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224825 (A016777 n).toNat) (n + 2 : ℤ)

end

end A224823.P6463791245404097248

/-! ## A224823.P9627360826640810369

`or(A000007(n), A224825(A016777(n)))`
-/

namespace A224823.P9627360826640810369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A224825 (A016777 n).toNat)

end

end A224823.P9627360826640810369

/-! ## A224823.P8776561762001585017

`A224825(A016777(n))+A000007(n+1)`
-/

namespace A224823.P8776561762001585017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224825 (A016777 n).toNat + A000007 (n + 1)

end

end A224823.P8776561762001585017

/-! ## A224823.P559141683662823524

`A259659(6*n+3)/6`
-/

namespace A224823.P559141683662823524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259659 (6 * n + 3) : ℚ) / 6

end

end A224823.P559141683662823524

/-! ## A224823.P7972582324838308962

`A033768(9*n+4)`
-/

namespace A224823.P7972582324838308962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033768 (9 * n + 4)

end

end A224823.P7972582324838308962

/-!
# A224824: Smallest m such that Fibonacci(m) >= m^n.

The programs for A224824, there is no canonical definition to state claims against.
-/

/-! ## A224824.P1050319192930134033

`∑[A000523(A002148(2*n+1))]`
-/

namespace A224824.P1050319192930134033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A002148 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224824.P1050319192930134033

/-! ## A224824.P2421038532312233671

`∑[13-A033823(n+1)]`
-/

namespace A224824.P2421038532312233671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 - A033823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224824.P2421038532312233671

/-! ## A224824.P11735533755233468534

`A156247(A047273(2*n+1)+A003311(n+1))`
-/

namespace A224824.P11735533755233468534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156247 (A047273 (2 * n + 1) + A003311 (n + 1)).toNat

end

end A224824.P11735533755233468534

/-! ## A224824.P8792342471512705858

`∑[A003434(∑[A142547(n+1)])]`
-/

namespace A224824.P8792342471512705858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142547 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224824.P8792342471512705858

/-! ## A224824.P10411851841041776824

`A162996(n+1)+A110654(A032559(n+1))`
-/

namespace A224824.P10411851841041776824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162996 (n + 1) + A110654 (A032559 (n + 1)).toNat

end

end A224824.P10411851841041776824

/-!
# A224825: Expansion of psi(x) * psi(x^3)^2 in powers of x where psi() is a Ramanujan theta function.

The programs for A224825, there is no canonical definition to state claims against.
-/

/-! ## A224825.P16897814977549475051

`A033768(3*n+1)`
-/

namespace A224825.P16897814977549475051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033768 (3 * n + 1)

end

end A224825.P16897814977549475051

/-! ## A224825.P8094560791932985107

`A227595(n)/A131713(n)`
-/

namespace A224825.P8094560791932985107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227595 n : ℚ) / (A131713 n : ℚ)

end

end A224825.P8094560791932985107

/-! ## A224825.P7999197295394899309

`A033768(Δ[n²]+n)%(n+2)`
-/

namespace A224825.P7999197295394899309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033768 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat) (n + 2 : ℤ)

end

end A224825.P7999197295394899309

/-! ## A224825.P2230077890298376771

`A033768(Δ[n²]+n)/A060654(A006530(n+2))`
-/

namespace A224825.P2230077890298376771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033768 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat : ℚ) / (A060654 (A006530 (n + 2)).toNat : ℚ)

end

end A224825.P2230077890298376771

/-! ## A224825.P784140073027027277

`A224823(3*n+2)`
-/

namespace A224825.P784140073027027277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224823 (3 * n + 2)

end

end A224825.P784140073027027277

/-! ## A224825.P13258291612817829214

`A033768(Δ[n²]+n)/A060680(A060658(n+1))`
-/

namespace A224825.P13258291612817829214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033768 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat : ℚ) / (A060680 (A060658 (n + 1)).toNat : ℚ)

end

end A224825.P13258291612817829214

/-! ## A224825.P16350601536673975475

`A137893(A167499(n))+A033768(Δ[n²]+n)`
-/

namespace A224825.P16350601536673975475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137893 (A167499 n).toNat + A033768 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat

end

end A224825.P16350601536673975475

/-! ## A224825.P15575990042895106139

`A199918(A167614(n+1))+A033768(Δ[n²]+n)`
-/

namespace A224825.P15575990042895106139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199918 (A167614 (n + 1)).toNat + A033768 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat

end

end A224825.P15575990042895106139

/-!
# A224827: Primes p such that prime(floor(p/10) + (p mod 10)) = p.

The programs for A224827, there is no canonical definition to state claims against.
-/

/-! ## A224827.P2124762638585847735

`A224843(n+2)`
-/

namespace A224827.P2124762638585847735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224843 (n + 2)

end

end A224827.P2124762638585847735

/-!
# A224829: Numbers m, such that there is no solution m = x + y + 3*z, with triangular numbers x, y, z.

The programs for A224829, there is no canonical definition to state claims against.
-/

/-! ## A224829.P17738035682659057772

`eq[0, A224823(n)]`
-/

namespace A224829.P17738035682659057772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224823 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224829.P17738035682659057772

/-! ## A224829.P2660770061728961792

`A016789(eq[0, A224825(n)])`
-/

namespace A224829.P2660770061728961792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224829.P2660770061728961792

/-! ## A224829.P8471376363294305945

`A016789(eq[0, A227595(n)])`
-/

namespace A224829.P8471376363294305945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224829.P8471376363294305945

/-! ## A224829.P17110134513711793097

`A016777(eq[0, A227595(n)])+1`
-/

namespace A224829.P17110134513711793097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A224829.P17110134513711793097

/-! ## A224829.P10188719994261351066

`eq[tan(A033768(n+1)), A033768(n)]+1`
-/

namespace A224829.P10188719994261351066
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A033768 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033768 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n + 1

end

end A224829.P10188719994261351066

/-! ## A224829.P4952188422164468505

`eq[A227595(A016777(n))², A227595(n)]`
-/

namespace A224829.P4952188422164468505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227595 (A016777 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227595 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A224829.P4952188422164468505

/-!
# A224830: Numbers n such that both the sum of the semiprime divisors of n and the sum of the prime divisors of n are prime numbers.

The programs for A224830, there is no canonical definition to state claims against.
-/

/-! ## A224830.P12089076591799781696

`∩[A066038(n+1), A227680(n+1)]`
-/

namespace A224830.P12089076591799781696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224830.P12089076591799781696

/-! ## A224830.P9731873378388861287

`∩[A114522(n+1), A227680(n+1)]`
-/

namespace A224830.P9731873378388861287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224830.P9731873378388861287

/-!
# A224831: Expansion of phi(-x^3)^2 * psi(x) / chi(-x)^2 in powers of x where phi(), psi(), chi() are Ramanujan theta functions.

The programs for A224831, there is no canonical definition to state claims against.
-/

/-! ## A224831.P17032668558103153983

`A224823(3*n)`
-/

namespace A224831.P17032668558103153983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224823 (3 * n)

end

end A224831.P17032668558103153983

/-! ## A224831.P1955285470678642750

`A224823(A008486(n))-A000007(n)`
-/

namespace A224831.P1955285470678642750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224823 (A008486 n).toNat - A000007 n

end

end A224831.P1955285470678642750

/-! ## A224831.P9579741142225873679

`A224823(A008585(n))%A139613(n)`
-/

namespace A224831.P9579741142225873679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224823 (A008585 n).toNat) (A139613 n)

end

end A224831.P9579741142225873679

/-! ## A224831.P14735693497622419107

`or(A000007(n), A224823(A008585(n)))`
-/

namespace A224831.P14735693497622419107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A224823 (A008585 n).toNat)

end

end A224831.P14735693497622419107

/-! ## A224831.P1565699696798598096

`A224823(A008585(n))+A000007(n+1)`
-/

namespace A224831.P1565699696798598096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224823 (A008585 n).toNat + A000007 (n + 1)

end

end A224831.P1565699696798598096

/-! ## A224831.P9655224698926695661

`A224825(9*n+1)`
-/

namespace A224831.P9655224698926695661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224825 (9 * n + 1)

end

end A224831.P9655224698926695661

/-! ## A224831.P5545644790318917675

`A321440(9*n+2)/2`
-/

namespace A224831.P5545644790318917675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321440 (9 * n + 2) : ℚ) / 2

end

end A224831.P5545644790318917675

/-!
# A224832: Numbers k such that the sum of reciprocals of even divisors of k is an integer.

The programs for A224832, there is no canonical definition to state claims against.
-/

/-! ## A224832.P9943341995197408412

`2*A325637(n+1)`
-/

namespace A224832.P9943341995197408412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A325637 (n + 1)

end

end A224832.P9943341995197408412

/-! ## A224832.P2524957165769465344

`A325637(A000027(n+1))+A325637(n+1)`
-/

namespace A224832.P2524957165769465344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325637 (A000027 (n + 1)).toNat + A325637 (n + 1)

end

end A224832.P2524957165769465344

/-! ## A224832.P14787915467291009321

`2*∑{e}[A020707(n), A336702(#)]`
-/

namespace A224832.P14787915467291009321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A336702 (Nat.factorization (f1 n).natAbs p))

end

end A224832.P14787915467291009321

/-! ## A224832.P128725576323394041

`∩[2*A246454(n+1), A323652(n+1)]`
-/

namespace A224832.P128725576323394041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A246454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224832.P128725576323394041

/-!
# A224833: Expansion of phi(-x)^2 * chi(-x) * psi(x^3) in powers of x where phi(), psi(), chi() are Ramanujan theta functions.

The programs for A224833, there is no canonical definition to state claims against.
-/

/-! ## A224833.P6154285150395672272

`A033999(n)*A246926(n)`
-/

namespace A224833.P6154285150395672272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A246926 n

end

end A224833.P6154285150395672272

/-! ## A224833.P7446095268977969451

`A010815(Δ[or(1, n)])*A246926(n)`
-/

namespace A224833.P7446095268977969451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A246926 n

end

end A224833.P7446095268977969451

/-! ## A224833.P17181714264220895422

`A121373(Δ[or(1, n)])*A246926(n)`
-/

namespace A224833.P17181714264220895422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A246926 n

end

end A224833.P17181714264220895422

/-! ## A224833.P14582398737830099749

`(A059841(n)-A059841(n+1))*A246926(n)`
-/

namespace A224833.P14582398737830099749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059841 n - A059841 (n + 1)) * A246926 n

end

end A224833.P14582398737830099749

/-! ## A224833.P13306920621503528389

`A246928(A007310(n+1))-A246926(n)`
-/

namespace A224833.P13306920621503528389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246928 (A007310 (n + 1)).toNat - A246926 n

end

end A224833.P13306920621503528389

/-! ## A224833.P10399400732044243307

`A246928(A007310(n+1))+A246927(3*n+1)`
-/

namespace A224833.P10399400732044243307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246928 (A007310 (n + 1)).toNat + A246927 (3 * n + 1)

end

end A224833.P10399400732044243307

/-!
# A224834: a(n) = Sum {d|n, d <= n^(1/2)} tau(d)^2.

The programs for A224834, there is no canonical definition to state claims against.
-/

/-! ## A224834.P10293390865282629862

`A062108(A050593(A072499(n+1)))`
-/

namespace A224834.P10293390865282629862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A050593 (A072499 (n + 1)).toNat).toNat

end

end A224834.P10293390865282629862

/-! ## A224834.P7159667220549263876

`A330709(A154765(A113309(n+1))²)`
-/

namespace A224834.P7159667220549263876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330709 (A154765 (A113309 (n + 1)).toNat ^ 2).toNat

end

end A224834.P7159667220549263876

/-! ## A224834.P1745847907903441921

`A000285(A061395(A066839(n+1)!))`
-/

namespace A224834.P1745847907903441921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 (A061395 (Nat.factorial (A066839 (n + 1)).toNat)).toNat

end

end A224834.P1745847907903441921

/-! ## A224834.P2159470165452458289

`A190053(A006530(A066839(n+1)!))`
-/

namespace A224834.P2159470165452458289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190053 (A006530 (Nat.factorial (A066839 (n + 1)).toNat)).toNat

end

end A224834.P2159470165452458289

/-! ## A224834.P2190087206857198366

`A200266(A050340(n+1))`
-/

namespace A224834.P2190087206857198366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200266 (A050340 (n + 1)).toNat

end

end A224834.P2190087206857198366

/-!
# A224835: Sum of the cubes of the number of divisors function for those divisors of n that are less than or equal to the cube root of n.

The programs for A224835, there is no canonical definition to state claims against.
-/

/-! ## A224835.P8690559591954851096

`A347530(n+4)%A347524(A347516(n+1))`
-/

namespace A224835.P8690559591954851096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347530 (n + 4)) (A347524 (A347516 (n + 1)).toNat)

end

end A224835.P8690559591954851096

/-! ## A224835.P10774459760391921041

`A329315(A347516(n+1)^6)`
-/

namespace A224835.P10774459760391921041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329315 (A347516 (n + 1) ^ 6).toNat

end

end A224835.P10774459760391921041

/-! ## A224835.P13549732738788791739

`A237593(A347516(n+1)^12)`
-/

namespace A224835.P13549732738788791739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (A347516 (n + 1) ^ 12).toNat

end

end A224835.P13549732738788791739

/-! ## A224835.P11762500564423281646

`A117136(A347516(n+1)²²)`
-/

namespace A224835.P11762500564423281646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117136 ((A347516 (n + 1) ^ 2) ^ 2).toNat

end

end A224835.P11762500564423281646

/-! ## A224835.P14348203767364140017

`A161332(A347516(n+1)²²)`
-/

namespace A224835.P14348203767364140017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161332 ((A347516 (n + 1) ^ 2) ^ 2).toNat

end

end A224835.P14348203767364140017

/-!
# A224837: Surface area of Johnson square pyramid (rounded down) with all the edge-lengths equal to n.

The programs for A224837, the canonical program `A224837.P14273272058890309216` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224837 has offset 1).

The definition of A224837 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224837.P14273272058890309216

`floor((1+sqrt(3))*(n+1)²)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A224837

/-- `floor((1+sqrt(3))*(n+1)²)` -/
def P14273272058890309216.Spec : Prop :=
  ∀ n, P14273272058890309216.a n = A224837 (n + 1)

theorem P14273272058890309216.correct : P14273272058890309216.Spec := by
  intro n
  simp only [A224837, Nat.add_sub_cancel]

end A224837

/-! ## A224837.P3377884256212959834

`A171972(n+1)+(n+1)²`
-/

namespace A224837.P3377884256212959834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171972 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A224837.P3377884256212959834

namespace A224837

/-- `A171972(n+1)+(n+1)²` -/
def P3377884256212959834.Spec : Prop :=
  ∀ n, P3377884256212959834.a n = A224837 (n + 1)

end A224837

/-! ## A224837.P16732442073065274714

`A171971(2*(n+1))+(n+1)²`
-/

namespace A224837.P16732442073065274714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171971 (2 * (n + 1)) + ((n + 1) ^ 2 : ℤ)

end

end A224837.P16732442073065274714

namespace A224837

/-- `A171971(2*(n+1))+(n+1)²` -/
def P16732442073065274714.Spec : Prop :=
  ∀ n, P16732442073065274714.a n = A224837 (n + 1)

end A224837

/-! ## A224837.P10313508696028491348

`A054088((n+1)²)`
-/

namespace A224837.P10313508696028491348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054088 ((n + 1) ^ 2)

end

end A224837.P10313508696028491348

namespace A224837

/-- `A054088((n+1)²)` -/
def P10313508696028491348.Spec : Prop :=
  ∀ n, P10313508696028491348.a n = A224837 (n + 1)

end A224837

/-! ## A224837.P11841531356938865407

`A180122((n+1)²)+1`
-/

namespace A224837.P11841531356938865407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180122 ((n + 1) ^ 2) + 1

end

end A224837.P11841531356938865407

namespace A224837

/-- `A180122((n+1)²)+1` -/
def P11841531356938865407.Spec : Prop :=
  ∀ n, P11841531356938865407.a n = A224837 (n + 1)

end A224837

/-! ## A224837.P12262791981448007331

`A022838((n+1)²)+(n+1)²`
-/

namespace A224837.P12262791981448007331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 ((n + 1) ^ 2) + ((n + 1) ^ 2 : ℤ)

end

end A224837.P12262791981448007331

namespace A224837

/-- `A022838((n+1)²)+(n+1)²` -/
def P12262791981448007331.Spec : Prop :=
  ∀ n, P12262791981448007331.a n = A224837 (n + 1)

end A224837

/-! ## A224837.P2128518934645175147

`A003512((n+1)²)-(n+1)²`
-/

namespace A224837.P2128518934645175147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 ((n + 1) ^ 2) - ((n + 1) ^ 2 : ℤ)

end

end A224837.P2128518934645175147

namespace A224837

/-- `A003512((n+1)²)-(n+1)²` -/
def P2128518934645175147.Spec : Prop :=
  ∀ n, P2128518934645175147.a n = A224837 (n + 1)

end A224837

/-! ## A224837.P4318341063212835328

`A003511(2*(n+1)²)`
-/

namespace A224837.P4318341063212835328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (2 * (n + 1) ^ 2)

end

end A224837.P4318341063212835328

namespace A224837

/-- `A003511(2*(n+1)²)` -/
def P4318341063212835328.Spec : Prop :=
  ∀ n, P4318341063212835328.a n = A224837 (n + 1)

end A224837

/-! ## A224837.P11119987763810703144

`A188070(A000217(Δ[n²])+n+1)-1`
-/

namespace A224837.P11119987763810703144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188070 (A000217 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n + 1 : ℤ)).toNat - 1

end

end A224837.P11119987763810703144

namespace A224837

/-- `A188070(A000217(Δ[n²])+n+1)-1` -/
def P11119987763810703144.Spec : Prop :=
  ∀ n, P11119987763810703144.a n = A224837 (n + 1)

end A224837

/-! ## A224837.P862265072784749048

`A054086(3*(n+1)²)`
-/

namespace A224837.P862265072784749048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054086 (3 * (n + 1) ^ 2)

end

end A224837.P862265072784749048

namespace A224837

/-- `A054086(3*(n+1)²)` -/
def P862265072784749048.Spec : Prop :=
  ∀ n, P862265072784749048.a n = A224837 (n + 1)

end A224837

/-!
# A224838: Triangle read by rows, obtained from triangle A011973 by reading that array from right to left along the irregular paths shown in the figure.

The programs for A224838, there is no canonical definition to state claims against.
-/

/-! ## A224838.P15454364972275561827

`A007318(and(A077168(n), A125466(n)))`
-/

namespace A224838.P15454364972275561827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land (A077168 n) (A125466 n)).toNat

end

end A224838.P15454364972275561827

/-! ## A224838.P15383609989114560017

`A007318(A077168(n)-A057498(n+1))`
-/

namespace A224838.P15383609989114560017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A077168 n - A057498 (n + 1)).toNat

end

end A224838.P15383609989114560017

/-! ## A224838.P6611328461633824027

`A105535(n+1)*A147640(A233543(n))`
-/

namespace A224838.P6611328461633824027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105535 (n + 1) * A147640 (A233543 n).toNat

end

end A224838.P6611328461633824027

/-! ## A224838.P15169936162572087000

`A302998(A376214(n+1)%A332748(n))`
-/

namespace A224838.P15169936162572087000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (Int.tmod (A376214 (n + 1)) (A332748 n)).toNat

end

end A224838.P15169936162572087000

/-!
# A224839: a(1) = 1 and a(n) is the smallest number greater than a(n-1) with no square difference with any preceding term.

The programs for A224839, there is no canonical definition to state claims against.
-/

/-! ## A224839.P282390020191982086

`A030193(n)+1`
-/

namespace A224839.P282390020191982086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030193 n + 1

end

end A224839.P282390020191982086

/-! ## A224839.P2314388478197172489

`A171465(n)+a(n-1)` with `a(0)=1`
-/

namespace A224839.P2314388478197172489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A171465 n + a (n - 1)

end

end A224839.P2314388478197172489

/-! ## A224839.P13239114838063705217

`∑[A171465(n+1)]+1-A171465(n+1)`
-/

namespace A224839.P13239114838063705217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A171465 (n + 1))

end

end A224839.P13239114838063705217

/-! ## A224839.P17946093933621170594

`eq[1, A014586(n)]`
-/

namespace A224839.P17946093933621170594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014586 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224839.P17946093933621170594

/-! ## A224839.P8571277823357175940

`eq[1, A059841(A338027(n))]+1`
-/

namespace A224839.P8571277823357175940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A338027 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A224839.P8571277823357175940

/-! ## A224839.P15266226474696066137

`record[(n+1)/A079438(A014586(n)+1)]`
-/

namespace A224839.P15266226474696066137
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A079438 (A014586 n + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224839.P15266226474696066137

/-! ## A224839.P16987110855285701341

`lt[A014586(n), A014560(A014589(n))]+1`
-/

namespace A224839.P16987110855285701341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014586 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014560 (A014589 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A224839.P16987110855285701341

/-!
# A224840: Divisor sum of the arithmetic function A085945(n).

The programs for A224840, the canonical program `A224840.P6519552924552385028` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224840 has offset 1).

The definition of A224840 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224840.P6519552924552385028

`∑{d}[n+1, A085945(#)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A224840

/-- `∑{d}[n+1, A085945(#)]` -/
def P6519552924552385028.Spec : Prop :=
  ∀ n, P6519552924552385028.a n = A224840 (n + 1)

theorem P6519552924552385028.correct : P6519552924552385028.Spec := by
  intro n
  simp only [A224840, Nat.add_sub_cancel]

end A224840

/-! ## A224840.P549108250548219939

`A055086(A149568(n+1))`
-/

namespace A224840.P549108250548219939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A149568 (n + 1)).toNat

end

end A224840.P549108250548219939

namespace A224840

/-- `A055086(A149568(n+1))` -/
def P549108250548219939.Spec : Prop :=
  ∀ n, P549108250548219939.a n = A224840 (n + 1)

end A224840

/-! ## A224840.P8016173272512344883

`A350943(A005418(n+1))`
-/

namespace A224840.P8016173272512344883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350943 (A005418 (n + 1)).toNat

end

end A224840.P8016173272512344883

namespace A224840

/-- `A350943(A005418(n+1))` -/
def P8016173272512344883.Spec : Prop :=
  ∀ n, P8016173272512344883.a n = A224840 (n + 1)

end A224840

/-!
# A224841: Triangle T(n,k) read by rows: Substring of k digits of sequence A007376, ending at position n, 1 <= k <= n.

The programs for A224841, there is no canonical definition to state claims against.
-/

/-! ## A224841.P6292527672385765135

`A113698(∑[A007318(n)])`
-/

namespace A224841.P6292527672385765135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113698 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A224841.P6292527672385765135

/-! ## A224841.P1285307709553011174

`A086068(A043569(n+1))`
-/

namespace A224841.P1285307709553011174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (A043569 (n + 1)).toNat

end

end A224841.P1285307709553011174

/-! ## A224841.P4942757239136382706

`A086068(A043756(n+1))`
-/

namespace A224841.P4942757239136382706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (A043756 (n + 1)).toNat

end

end A224841.P4942757239136382706

/-! ## A224841.P17340757677079029955

`A086068(A043765(n+1))`
-/

namespace A224841.P17340757677079029955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (A043765 (n + 1)).toNat

end

end A224841.P17340757677079029955

/-! ## A224841.P10544827196947917946

`A113698(A163866(n+1))`
-/

namespace A224841.P10544827196947917946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113698 (A163866 (n + 1)).toNat

end

end A224841.P10544827196947917946

/-!
# A224845: Integer lengths of the Mills primes A051254.

The programs for A224845, there is no canonical definition to state claims against.
-/

/-! ## A224845.P5968577088576589728

`A008619(3^n-A183111(n))`
-/

namespace A224845.P5968577088576589728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((3 ^ n : ℤ) - A183111 n).toNat

end

end A224845.P5968577088576589728

/-! ## A224845.P4348426143089081309

`A029579(3^n-A183111(n))`
-/

namespace A224845.P4348426143089081309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 ((3 ^ n : ℤ) - A183111 n).toNat

end

end A224845.P4348426143089081309

/-! ## A224845.P8169760042086805164

`A008619(ceil(A076656(n+1)/4))`
-/

namespace A224845.P8169760042086805164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ⌈(A076656 (n + 1) : ℚ) / 4⌉.toNat

end

end A224845.P8169760042086805164

/-! ## A224845.P448505304368249908

`A032742(3^n+2-A183111(n))`
-/

namespace A224845.P448505304368249908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 ((3 ^ n + 2 : ℤ) - A183111 n).toNat

end

end A224845.P448505304368249908

/-! ## A224845.P1196654357931796840

`A076039(A261547(n)+A183111(n))`
-/

namespace A224845.P1196654357931796840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076039 (A261547 n + A183111 n).toNat

end

end A224845.P1196654357931796840

/-!
# A224846: Smallest k such that (10^n+k, 10^n+k+2) and (10^(n+1)+k, 10^(n+1)+k+2) are two pairs of twin primes with k(n+1) > k(n).

The programs for A224846, there is no canonical definition to state claims against.
-/

/-! ## A224846.P73101329427261658

`A224905(ceil(∏{e}[29^n, 2*#+1]/2))`
-/

namespace A224846.P73101329427261658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224905 ⌈((∏ p ∈ Nat.primeFactors (f1 n), (2 * Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2⌉.toNat

end

end A224846.P73101329427261658

/-!
# A224847: Position of first occurrence of n in the continued fraction for the Euler-Mascheroni constant (gamma).

The programs for A224847, there is no canonical definition to state claims against.
-/

/-! ## A224847.P15991121162455390921

`A033149(n+1)-1`
-/

namespace A224847.P15991121162455390921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033149 (n + 1) - 1

end

end A224847.P15991121162455390921

/-! ## A224847.P12170678698108040560

`A023443(A033149(n+1))`
-/

namespace A224847.P12170678698108040560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A033149 (n + 1)).toNat

end

end A224847.P12170678698108040560

/-! ## A224847.P8676581441781357218

`A289207(A033149(n+1)+1)`
-/

namespace A224847.P8676581441781357218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A033149 (n + 1) + 1).toNat

end

end A224847.P8676581441781357218

/-! ## A224847.P18047661034242529026

`A023445(A033149(n+1)+2)`
-/

namespace A224847.P18047661034242529026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A033149 (n + 1) + 2).toNat

end

end A224847.P18047661034242529026

/-! ## A224847.P3108409056246953428

`A023446(A033149(n+1)+3)`
-/

namespace A224847.P3108409056246953428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A033149 (n + 1) + 3).toNat

end

end A224847.P3108409056246953428

/-! ## A224847.P5394743724425042687

`A023447(A033149(n+1)+4)`
-/

namespace A224847.P5394743724425042687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023447 (A033149 (n + 1) + 4).toNat

end

end A224847.P5394743724425042687

/-! ## A224847.P3972656279763271695

`A267182(2*A033149(n+1))`
-/

namespace A224847.P3972656279763271695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267182 (2 * A033149 (n + 1)).toNat

end

end A224847.P3972656279763271695

/-! ## A224847.P2899083687092640910

`A023448(A033149(n+1)+5)`
-/

namespace A224847.P2899083687092640910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 (A033149 (n + 1) + 5).toNat

end

end A224847.P2899083687092640910

/-! ## A224847.P9681999695206070507

`A057428(n+1)+A033149(n+1)`
-/

namespace A224847.P9681999695206070507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A033149 (n + 1)

end

end A224847.P9681999695206070507

/-! ## A224847.P12748462889227587639

`A033999(2*n+1)+A033149(n+1)`
-/

namespace A224847.P12748462889227587639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A033149 (n + 1)

end

end A224847.P12748462889227587639

/-!
# A224849: Positions of incrementally largest terms in the continued fraction for Euler's constant gamma (A002852).

The programs for A224849, there is no canonical definition to state claims against.
-/

/-! ## A224849.P6784733425158058047

`A033092(n)-1`
-/

namespace A224849.P6784733425158058047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033092 n - 1

end

end A224849.P6784733425158058047

/-! ## A224849.P7742337590553915016

`A057428(n+1)+A033092(n)`
-/

namespace A224849.P7742337590553915016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A033092 n

end

end A224849.P7742337590553915016

/-! ## A224849.P1534160762722634238

`A134824(n+2)+A033092(n)`
-/

namespace A224849.P1534160762722634238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A033092 n

end

end A224849.P1534160762722634238

/-! ## A224849.P12763453946974113228

`A260196(n+2)+A033092(n)`
-/

namespace A224849.P12763453946974113228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A033092 n

end

end A224849.P12763453946974113228

/-! ## A224849.P11935178380386917835

`A033999(Δ[n²])+A033092(n)`
-/

namespace A224849.P11935178380386917835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A033092 n

end

end A224849.P11935178380386917835

/-!
# A224851: First position of n in continued fraction for Khinchin's constant.

The programs for A224851, there is no canonical definition to state claims against.
-/

/-! ## A224851.P4400336632528942432

`A054781(n+1)-1`
-/

namespace A224851.P4400336632528942432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054781 (n + 1) - 1

end

end A224851.P4400336632528942432

/-! ## A224851.P3621486758747469706

`A023443(A054781(n+1))`
-/

namespace A224851.P3621486758747469706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A054781 (n + 1)).toNat

end

end A224851.P3621486758747469706

/-! ## A224851.P7775856257385152175

`A289207(A054781(n+1)+1)`
-/

namespace A224851.P7775856257385152175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A054781 (n + 1) + 1).toNat

end

end A224851.P7775856257385152175

/-! ## A224851.P12980268981130639792

`A023445(A054781(n+1)+2)`
-/

namespace A224851.P12980268981130639792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A054781 (n + 1) + 2).toNat

end

end A224851.P12980268981130639792

/-! ## A224851.P4602885097529873046

`A023446(A054781(n+1)+3)`
-/

namespace A224851.P4602885097529873046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A054781 (n + 1) + 3).toNat

end

end A224851.P4602885097529873046

/-! ## A224851.P5346449318634065636

`A057428(n+1)+A054781(n+1)`
-/

namespace A224851.P5346449318634065636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A054781 (n + 1)

end

end A224851.P5346449318634065636

/-! ## A224851.P15260742866252685992

`A115638(2*n+1)+A054781(n+1)`
-/

namespace A224851.P15260742866252685992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115638 (2 * n + 1) + A054781 (n + 1)

end

end A224851.P15260742866252685992

/-! ## A224851.P7953972137837678354

`A286714(gcd(n, n+1))+A054781(n+1)`
-/

namespace A224851.P7953972137837678354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286714 (Nat.gcd n (n + 1)) + A054781 (n + 1)

end

end A224851.P7953972137837678354

/-! ## A224851.P8858771623195290158

`abs(A054781(n+1)+A033999(2*n+1))`
-/

namespace A224851.P8858771623195290158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054781 (n + 1) + A033999 (2 * n + 1)|

end

end A224851.P8858771623195290158

/-! ## A224851.P7671182212190449152

`A062157(A020744(n))+A054781(n+1)`
-/

namespace A224851.P7671182212190449152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A020744 n).toNat + A054781 (n + 1)

end

end A224851.P7671182212190449152

/-!
# A224852: Positions of the incrementally largest terms in the continued fraction for Khinchin's constant.

The programs for A224852, there is no canonical definition to state claims against.
-/

/-! ## A224852.P8172679899174044604

`A054870(n+1)-1`
-/

namespace A224852.P8172679899174044604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054870 (n + 1) - 1

end

end A224852.P8172679899174044604

/-! ## A224852.P9093794476557864894

`record[Δ[A054870(A152271(n))]]`
-/

namespace A224852.P9093794476557864894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054870 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224852.P9093794476557864894

/-! ## A224852.P18223430591901549774

`record[A054870(A038569(n))-1]`
-/

namespace A224852.P18223430591901549774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054870 (A038569 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224852.P18223430591901549774

/-! ## A224852.P17621822486349405014

`record[A054870(A059127(n))-1]`
-/

namespace A224852.P17621822486349405014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054870 (A059127 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224852.P17621822486349405014

/-! ## A224852.P15523227986403951487

`record[Δ[A054870(A050873(n+1))]]`
-/

namespace A224852.P15523227986403951487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054870 (A050873 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224852.P15523227986403951487

/-!
# A224854: Numbers n such that 90*n + 11 and 90*n + 13 are twin prime.

The programs for A224854, the canonical program `A224854.P17096122939360505849` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224854 has offset 1).

The definition of A224854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224854.P17096122939360505849

`∩[A201804(n+1), A201816(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A224854

/-- `∩[A201804(n+1), A201816(n+1)]` -/
def P17096122939360505849.Spec : Prop :=
  ∀ n, (P17096122939360505849.a n : ℤ) = A224854 (n + 1)

theorem P17096122939360505849.correct : P17096122939360505849.Spec := by
  intro n
  simp only [A224854, Nat.add_sub_cancel]

end A224854

/-! ## A224854.P5875548077535759074

`record[A263390(A089160(n+1))]`
-/

namespace A224854.P5875548077535759074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263390 (A089160 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224854.P5875548077535759074

namespace A224854

/-- `record[A263390(A089160(n+1))]` -/
def P5875548077535759074.Spec : Prop :=
  ∀ n, P5875548077535759074.a n = A224854 (n + 1)

end A224854

/-! ## A224854.P1076184070701344539

`record[A057428(n)*A166711(A089160(n+1))]`
-/

namespace A224854.P1076184070701344539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A166711 (A089160 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224854.P1076184070701344539

namespace A224854

/-- `record[A057428(n)*A166711(A089160(n+1))]` -/
def P1076184070701344539.Spec : Prop :=
  ∀ n, P1076184070701344539.a n = A224854 (n + 1)

end A224854

/-! ## A224854.P13354254269803961699

`record[A166711(A089160(n+1))*A260196(n)]`
-/

namespace A224854.P13354254269803961699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166711 (A089160 (n + 1)).toNat * A260196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224854.P13354254269803961699

namespace A224854

/-- `record[A166711(A089160(n+1))*A260196(n)]` -/
def P13354254269803961699.Spec : Prop :=
  ∀ n, P13354254269803961699.a n = A224854 (n + 1)

end A224854

/-! ## A224854.P12928779088346210090

`record[A000007(n+1)-A166711(A089160(n+1))]`
-/

namespace A224854.P12928779088346210090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A166711 (A089160 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224854.P12928779088346210090

namespace A224854

/-- `record[A000007(n+1)-A166711(A089160(n+1))]` -/
def P12928779088346210090.Spec : Prop :=
  ∀ n, P12928779088346210090.a n = A224854 (n + 1)

end A224854

/-! ## A224854.P11986994725747511372

`∩[floor(A142317(n+1)/90), A201816(n+1)]`
-/

namespace A224854.P11986994725747511372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142317 (n + 1) : ℚ) / 90⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201816 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224854.P11986994725747511372

namespace A224854

/-- `∩[floor(A142317(n+1)/90), A201816(n+1)]` -/
def P11986994725747511372.Spec : Prop :=
  ∀ n, (P11986994725747511372.a n : ℤ) = A224854 (n + 1)

end A224854

/-! ## A224854.P2857212482773422809

`eq[2, A145193(A008597(n)+2)]`
-/

namespace A224854.P2857212482773422809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145193 (A008597 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224854.P2857212482773422809

namespace A224854

/-- `eq[2, A145193(A008597(n)+2)]` -/
def P2857212482773422809.Spec : Prop :=
  ∀ n, (P2857212482773422809.a n : ℤ) = A224854 (n + 1)

end A224854

/-! ## A224854.P11897041267115699792

`record[A055671(45*n)-A166711(A089160(n+1))]`
-/

namespace A224854.P11897041267115699792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (45 * n) - A166711 (A089160 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224854.P11897041267115699792

namespace A224854

/-- `record[A055671(45*n)-A166711(A089160(n+1))]` -/
def P11897041267115699792.Spec : Prop :=
  ∀ n, P11897041267115699792.a n = A224854 (n + 1)

end A224854

/-!
# A224855: Numbers n such that 90*n + 17 and 90*n + 19 are twin primes.

The programs for A224855, the canonical program `A224855.P8373330680304639775` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224855 has offset 1).

The definition of A224855 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2539 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224855.P8373330680304639775

`∩[A196000(n+1), A202115(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A224855

/-- `∩[A196000(n+1), A202115(n+1)]` -/
def P8373330680304639775.Spec : Prop :=
  ∀ n, (P8373330680304639775.a n : ℤ) = A224855 (n + 1)

theorem P8373330680304639775.correct : P8373330680304639775.Spec := by
  intro n
  simp only [A224855, Nat.add_sub_cancel]

end A224855

/-! ## A224855.P6870194275457028126

`∩[floor(A142321(n+1)/90), A196000(n+1)]`
-/

namespace A224855.P6870194275457028126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142321 (n + 1) : ℚ) / 90⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224855.P6870194275457028126

namespace A224855

/-- `∩[floor(A142321(n+1)/90), A196000(n+1)]` -/
def P6870194275457028126.Spec : Prop :=
  ∀ n, (P6870194275457028126.a n : ℤ) = A224855 (n + 1)

end A224855

/-! ## A224855.P4516478353348639971

`record[A137241(A089161(n+1))]`
-/

namespace A224855.P4516478353348639971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137241 (A089161 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224855.P4516478353348639971

namespace A224855

/-- `record[A137241(A089161(n+1))]` -/
def P4516478353348639971.Spec : Prop :=
  ∀ n, P4516478353348639971.a n = A224855 (n + 1)

end A224855

/-! ## A224855.P14006121710495261197

`eq[1, A137876(5*n+1)]`
-/

namespace A224855.P14006121710495261197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137876 (5 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224855.P14006121710495261197

namespace A224855

/-- `eq[1, A137876(5*n+1)]` -/
def P14006121710495261197.Spec : Prop :=
  ∀ n, (P14006121710495261197.a n : ℤ) = A224855 (n + 1)

end A224855

/-! ## A224855.P16061883807996427671

`lt[A000040(A137876(5*n+1)+1), 5]`
-/

namespace A224855.P16061883807996427671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A137876 (5 * n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A224855.P16061883807996427671

namespace A224855

/-- `lt[A000040(A137876(5*n+1)+1), 5]` -/
def P16061883807996427671.Spec : Prop :=
  ∀ n, (P16061883807996427671.a n : ℤ) = A224855 (n + 1)

end A224855

/-! ## A224855.P15222483441416608498

`lt[A137876(5*(A005843(n)-n)+1), 2]`
-/

namespace A224855.P15222483441416608498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137876 (5 * (A005843 n - (n : ℤ)) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A224855.P15222483441416608498

namespace A224855

/-- `lt[A137876(5*(A005843(n)-n)+1), 2]` -/
def P15222483441416608498.Spec : Prop :=
  ∀ n, (P15222483441416608498.a n : ℤ) = A224855 (n + 1)

end A224855

/-! ## A224855.P18022983531930663293

`lt[A137876(5*n%A155766(n)+1), 2]`
-/

namespace A224855.P18022983531930663293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137876 (5 * Int.tmod (n : ℤ) (A155766 n) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A224855.P18022983531930663293

namespace A224855

/-- `lt[A137876(5*n%A155766(n)+1), 2]` -/
def P18022983531930663293.Spec : Prop :=
  ∀ n, (P18022983531930663293.a n : ℤ) = A224855 (n + 1)

end A224855

/-! ## A224855.P9988973743938233046

`eq[1, A100923(A008486(5*n+1))]`
-/

namespace A224855.P9988973743938233046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100923 (A008486 (5 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224855.P9988973743938233046

namespace A224855

/-- `eq[1, A100923(A008486(5*n+1))]` -/
def P9988973743938233046.Spec : Prop :=
  ∀ n, (P9988973743938233046.a n : ℤ) = A224855 (n + 1)

end A224855

/-!
# A224856: Numbers n such that 90*n + 29 and 90*n + 31 are twin primes.

The programs for A224856, the canonical program `A224856.P11929615249765491218` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224856 has offset 1).

The definition of A224856 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2506 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224856.P11929615249765491218

`∩[A201739(n+1), A201819(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A224856

/-- `∩[A201739(n+1), A201819(n+1)]` -/
def P11929615249765491218.Spec : Prop :=
  ∀ n, (P11929615249765491218.a n : ℤ) = A224856 (n + 1)

theorem P11929615249765491218.correct : P11929615249765491218.Spec := by
  intro n
  simp only [A224856, Nat.add_sub_cancel]

end A224856

/-! ## A224856.P1462757580359651626

`lt[1, A048198(A017197(n))]`
-/

namespace A224856.P1462757580359651626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048198 (A017197 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A224856.P1462757580359651626

namespace A224856

/-- `lt[1, A048198(A017197(n))]` -/
def P1462757580359651626.Spec : Prop :=
  ∀ n, (P1462757580359651626.a n : ℤ) = A224856 (n + 1)

end A224856

/-! ## A224856.P2348142874596361374

`eq[3, A071558(A008592(3*n+1))]`
-/

namespace A224856.P2348142874596361374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (A008592 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224856.P2348142874596361374

namespace A224856

/-- `eq[3, A071558(A008592(3*n+1))]` -/
def P2348142874596361374.Spec : Prop :=
  ∀ n, (P2348142874596361374.a n : ℤ) = A224856 (n + 1)

end A224856

/-! ## A224856.P15587696469278233400

`lt[A135023(5*(3*n+1)), 2]`
-/

namespace A224856.P15587696469278233400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135023 (5 * (3 * n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A224856.P15587696469278233400

namespace A224856

/-- `lt[A135023(5*(3*n+1)), 2]` -/
def P15587696469278233400.Spec : Prop :=
  ∀ n, (P15587696469278233400.a n : ℤ) = A224856 (n + 1)

end A224856

/-!
# A224857: Numbers n such that 90n + 41 and 90n + 43 are twin primes.

The programs for A224857, the canonical program `A224857.P3836827436332242418` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224857 has offset 1).

The definition of A224857 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2605 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224857.P3836827436332242418

`∩[A202104(n+1), A202105(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A224857

/-- `∩[A202104(n+1), A202105(n+1)]` -/
def P3836827436332242418.Spec : Prop :=
  ∀ n, (P3836827436332242418.a n : ℤ) = A224857 (n + 1)

theorem P3836827436332242418.correct : P3836827436332242418.Spec := by
  intro n
  simp only [A224857, Nat.add_sub_cancel]

end A224857

/-! ## A224857.P5717499040625022568

`∩[floor(A142334(n+1)/90), A202104(n+1)]`
-/

namespace A224857.P5717499040625022568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142334 (n + 1) : ℚ) / 90⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224857.P5717499040625022568

namespace A224857

/-- `∩[floor(A142334(n+1)/90), A202104(n+1)]` -/
def P5717499040625022568.Spec : Prop :=
  ∀ n, (P5717499040625022568.a n : ℤ) = A224857 (n + 1)

end A224857

/-! ## A224857.P11186621480738419923

`∩[eq[1, A068695(9*n+4)], A202105(n+1)]`
-/

namespace A224857.P11186621480738419923
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (9 * n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A224857.P11186621480738419923

namespace A224857

/-- `∩[eq[1, A068695(9*n+4)], A202105(n+1)]` -/
def P11186621480738419923.Spec : Prop :=
  ∀ n, (P11186621480738419923.a n : ℤ) = A224857 (n + 1)

end A224857

/-! ## A224857.P14360437144561586739

`eq[1, A182481(A164284(n+1)-1)]`
-/

namespace A224857.P14360437144561586739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 (A164284 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224857.P14360437144561586739

namespace A224857

/-- `eq[1, A182481(A164284(n+1)-1)]` -/
def P14360437144561586739.Spec : Prop :=
  ∀ n, (P14360437144561586739.a n : ℤ) = A224857 (n + 1)

end A224857

/-! ## A224857.P9512258566256235069

`A202104(A072281(n+1))%A197791(n+1)`
-/

namespace A224857.P9512258566256235069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202104 (A072281 (n + 1)).toNat) (A197791 (n + 1))

end

end A224857.P9512258566256235069

namespace A224857

/-- `A202104(A072281(n+1))%A197791(n+1)` -/
def P9512258566256235069.Spec : Prop :=
  ∀ n, P9512258566256235069.a n = A224857 (n + 1)

end A224857

/-!
# A224859: Numbers n such that 90*n + 47 and 90*n + 49 are twin primes.

The programs for A224859, the canonical program `A224859.P2414491205030028482` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224859 has offset 1).

The definition of A224859 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2565 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224859.P2414491205030028482

`∩[A201734(n+1), A201818(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A224859

/-- `∩[A201734(n+1), A201818(n+1)]` -/
def P2414491205030028482.Spec : Prop :=
  ∀ n, (P2414491205030028482.a n : ℤ) = A224859 (n + 1)

theorem P2414491205030028482.correct : P2414491205030028482.Spec := by
  intro n
  simp only [A224859, Nat.add_sub_cancel]

end A224859

/-! ## A224859.P1595199717730876226

`∩[floor(A142314(n+1)/90), A201734(n+1)]`
-/

namespace A224859.P1595199717730876226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142314 (n + 1) : ℚ) / 90⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224859.P1595199717730876226

namespace A224859

/-- `∩[floor(A142314(n+1)/90), A201734(n+1)]` -/
def P1595199717730876226.Spec : Prop :=
  ∀ n, (P1595199717730876226.a n : ℤ) = A224859 (n + 1)

end A224859

/-! ## A224859.P11599026820357871220

`lt[A283265(A156376(3*n+1)), 1]`
-/

namespace A224859.P11599026820357871220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283265 (A156376 (3 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A224859.P11599026820357871220

namespace A224859

/-- `lt[A283265(A156376(3*n+1)), 1]` -/
def P11599026820357871220.Spec : Prop :=
  ∀ n, (P11599026820357871220.a n : ℤ) = A224859 (n + 1)

end A224859

/-! ## A224859.P1196445503566192465

`eq[1, A182481(A164284(n+1))]`
-/

namespace A224859.P1196445503566192465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 (A164284 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224859.P1196445503566192465

namespace A224859

/-- `eq[1, A182481(A164284(n+1))]` -/
def P1196445503566192465.Spec : Prop :=
  ∀ n, (P1196445503566192465.a n : ℤ) = A224859 (n + 1)

end A224859

/-! ## A224859.P10881407452919169033

`∩[eq[1, A206824(9*(10*n+5)+2)], A201818(n+1)]`
-/

namespace A224859.P10881407452919169033
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206824 (9 * (10 * n + 5) + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A224859.P10881407452919169033

namespace A224859

/-- `∩[eq[1, A206824(9*(10*n+5)+2)], A201818(n+1)]` -/
def P10881407452919169033.Spec : Prop :=
  ∀ n, (P10881407452919169033.a n : ℤ) = A224859 (n + 1)

end A224859

/-!
# A224860: Numbers n such that 90*n + 59 and 90*n + 61 are twin prime.

The programs for A224860, there is no canonical definition to state claims against.
-/

/-! ## A224860.P8365569754099224488

`∩[A202101(n+1), A202113(n+1)]`
-/

namespace A224860.P8365569754099224488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224860.P8365569754099224488

/-! ## A224860.P861054621740135954

`∩[floor(A142320(n+1)/90), A202101(n+1)]`
-/

namespace A224860.P861054621740135954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142320 (n + 1) : ℚ) / 90⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224860.P861054621740135954

/-! ## A224860.P7584026953679940693

`lt[1, A048198(A017233(n))]`
-/

namespace A224860.P7584026953679940693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048198 (A017233 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A224860.P7584026953679940693

/-! ## A224860.P17495597554356620210

`eq[1, A182481(A164284(n+1)+2)]`
-/

namespace A224860.P17495597554356620210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 (A164284 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224860.P17495597554356620210

/-! ## A224860.P3846581097246690539

`record[n/2*A048198(A017233(n))]%A244353(n+1)`
-/

namespace A224860.P3846581097246690539
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A048198 (A017233 n).toNat : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) (A244353 (n + 1))

end

end A224860.P3846581097246690539

/-!
# A224862: Numbers n such that 90*n + 71 and 90*n + 73 are twin primes.

The programs for A224862, the canonical program `A224862.P10932737819112680464` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224862 has offset 1).

The definition of A224862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2522 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224862.P10932737819112680464

`∩[A195993(n+1), A202129(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A224862

/-- `∩[A195993(n+1), A202129(n+1)]` -/
def P10932737819112680464.Spec : Prop :=
  ∀ n, (P10932737819112680464.a n : ℤ) = A224862 (n + 1)

theorem P10932737819112680464.correct : P10932737819112680464.Spec := by
  intro n
  simp only [A224862, Nat.add_sub_cancel]

end A224862

/-! ## A224862.P16839510492143972030

`eq[1, A137876(5*n+4)]`
-/

namespace A224862.P16839510492143972030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137876 (5 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224862.P16839510492143972030

namespace A224862

/-- `eq[1, A137876(5*n+4)]` -/
def P16839510492143972030.Spec : Prop :=
  ∀ n, (P16839510492143972030.a n : ℤ) = A224862 (n + 1)

end A224862

/-! ## A224862.P11330225049856187853

`lt[A048633(A137876(5*n+4)+1), 3]`
-/

namespace A224862.P11330225049856187853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048633 (A137876 (5 * n + 4) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A224862.P11330225049856187853

namespace A224862

/-- `lt[A048633(A137876(5*n+4)+1), 3]` -/
def P11330225049856187853.Spec : Prop :=
  ∀ n, (P11330225049856187853.a n : ℤ) = A224862 (n + 1)

end A224862

/-! ## A224862.P11845293040586035528

`lt[A340626(A137876(5*n+4)+1), 3]`
-/

namespace A224862.P11845293040586035528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340626 (A137876 (5 * n + 4) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A224862.P11845293040586035528

namespace A224862

/-- `lt[A340626(A137876(5*n+4)+1), 3]` -/
def P11845293040586035528.Spec : Prop :=
  ∀ n, (P11845293040586035528.a n : ℤ) = A224862 (n + 1)

end A224862

/-! ## A224862.P1894561193903130867

`lt[A000010(A137876(5*n+4)^3), 3]`
-/

namespace A224862.P1894561193903130867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A137876 (5 * n + 4) ^ 3).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A224862.P1894561193903130867

namespace A224862

/-- `lt[A000010(A137876(5*n+4)^3), 3]` -/
def P1894561193903130867.Spec : Prop :=
  ∀ n, (P1894561193903130867.a n : ℤ) = A224862 (n + 1)

end A224862

/-! ## A224862.P16065074146065256227

`lt[log(A137876(5*n+4)), A054977(n+1)]`
-/

namespace A224862.P16065074146065256227
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A137876 (5 * n + 4) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A224862.P16065074146065256227

namespace A224862

/-- `lt[log(A137876(5*n+4)), A054977(n+1)]` -/
def P16065074146065256227.Spec : Prop :=
  ∀ n, (P16065074146065256227.a n : ℤ) = A224862 (n + 1)

end A224862

/-! ## A224862.P5381450129368036439

`lt[A137876(5*n+4)-A057428(n+1), 3]`
-/

namespace A224862.P5381450129368036439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137876 (5 * n + 4) - A057428 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A224862.P5381450129368036439

namespace A224862

/-- `lt[A137876(5*n+4)-A057428(n+1), 3]` -/
def P5381450129368036439.Spec : Prop :=
  ∀ n, (P5381450129368036439.a n : ℤ) = A224862 (n + 1)

end A224862

/-! ## A224862.P5867972195566450257

`lt[A137876(5*n+4)-A085788(n+1)%3, 3]`
-/

namespace A224862.P5867972195566450257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137876 (5 * n + 4) - Int.tmod (A085788 (n + 1)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A224862.P5867972195566450257

namespace A224862

/-- `lt[A137876(5*n+4)-A085788(n+1)%3, 3]` -/
def P5867972195566450257.Spec : Prop :=
  ∀ n, (P5867972195566450257.a n : ℤ) = A224862 (n + 1)

end A224862

/-!
# A224864: Numbers n such that 90*n + 77 and 90*n + 79 are twin primes.

The programs for A224864, the canonical program `A224864.P12895529055223917671` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224864 has offset 1).

The definition of A224864 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2559 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224864.P12895529055223917671

`∩[A201822(n+1), A202112(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A224864

/-- `∩[A201822(n+1), A202112(n+1)]` -/
def P12895529055223917671.Spec : Prop :=
  ∀ n, (P12895529055223917671.a n : ℤ) = A224864 (n + 1)

theorem P12895529055223917671.correct : P12895529055223917671.Spec := by
  intro n
  simp only [A224864, Nat.add_sub_cancel]

end A224864

/-! ## A224864.P5283664277715841777

`∩[floor(A142329(n+1)/90), A202112(n+1)]`
-/

namespace A224864.P5283664277715841777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142329 (n + 1) : ℚ) / 90⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224864.P5283664277715841777

namespace A224864

/-- `∩[floor(A142329(n+1)/90), A202112(n+1)]` -/
def P5283664277715841777.Spec : Prop :=
  ∀ n, (P5283664277715841777.a n : ℤ) = A224864 (n + 1)

end A224864

/-! ## A224864.P16548524874105102053

`record[A137241(A089161(n+2)-2)]`
-/

namespace A224864.P16548524874105102053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137241 (A089161 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224864.P16548524874105102053

namespace A224864

/-- `record[A137241(A089161(n+2)-2)]` -/
def P16548524874105102053.Spec : Prop :=
  ∀ n, P16548524874105102053.a n = A224864 (n + 1)

end A224864

/-! ## A224864.P6814231307002807011

`eq[1, A286385(A128468(3*n+2))]`
-/

namespace A224864.P6814231307002807011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286385 (A128468 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224864.P6814231307002807011

namespace A224864

/-- `eq[1, A286385(A128468(3*n+2))]` -/
def P6814231307002807011.Spec : Prop :=
  ∀ n, (P6814231307002807011.a n : ℤ) = A224864 (n + 1)

end A224864

/-! ## A224864.P12806839316449125372

`eq[4, A002126(A156376(3*n+2))]`
-/

namespace A224864.P12806839316449125372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (A156376 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224864.P12806839316449125372

namespace A224864

/-- `eq[4, A002126(A156376(3*n+2))]` -/
def P12806839316449125372.Spec : Prop :=
  ∀ n, (P12806839316449125372.a n : ℤ) = A224864 (n + 1)

end A224864

/-!
# A224865: Numbers n such that 90*n + 89 and 90*n + 91 are twin primes.

The programs for A224865, the canonical program `A224865.P6084895308211863179` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224865 has offset 1).

The definition of A224865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2571 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224865.P6084895308211863179

`∩[A202116(n+1), A224889(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A224865

/-- `∩[A202116(n+1), A224889(n+1)]` -/
def P6084895308211863179.Spec : Prop :=
  ∀ n, (P6084895308211863179.a n : ℤ) = A224865 (n + 1)

theorem P6084895308211863179.correct : P6084895308211863179.Spec := by
  intro n
  simp only [A224865, Nat.add_sub_cancel]

end A224865

/-! ## A224865.P2446359851736014300

`eq[1, A137876(5*(n+1))]`
-/

namespace A224865.P2446359851736014300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137876 (5 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224865.P2446359851736014300

namespace A224865

/-- `eq[1, A137876(5*(n+1))]` -/
def P2446359851736014300.Spec : Prop :=
  ∀ n, (P2446359851736014300.a n : ℤ) = A224865 (n + 1)

end A224865

/-! ## A224865.P4788689251463524926

`record[root(A028310(n), A137876(5*(n+1)))]`
-/

namespace A224865.P4788689251463524926
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A028310 n : ℝ) ^ (1 / (A137876 (5 * (n + 1)) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224865.P4788689251463524926

namespace A224865

/-- `record[root(A028310(n), A137876(5*(n+1)))]` -/
def P4788689251463524926.Spec : Prop :=
  ∀ n, P4788689251463524926.a n = (A224865 (n + 1) : ℝ)

end A224865

/-! ## A224865.P14060897120887945984

`lt[A008347(A137876(5*(n+1))+1), 2]`
-/

namespace A224865.P14060897120887945984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 (A137876 (5 * (n + 1)) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A224865.P14060897120887945984

namespace A224865

/-- `lt[A008347(A137876(5*(n+1))+1), 2]` -/
def P14060897120887945984.Spec : Prop :=
  ∀ n, (P14060897120887945984.a n : ℤ) = A224865 (n + 1)

end A224865

/-! ## A224865.P2767833005581515967

`lt[1, 2/A000010(A137876(5*(n+1))+1)]`
-/

namespace A224865.P2767833005581515967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000010 (A137876 (5 * (n + 1)) + 1).toNat : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A224865.P2767833005581515967

namespace A224865

/-- `lt[1, 2/A000010(A137876(5*(n+1))+1)]` -/
def P2767833005581515967.Spec : Prop :=
  ∀ n, (P2767833005581515967.a n : ℤ) = A224865 (n + 1)

end A224865

/-! ## A224865.P17722769408630268917

`eq[2, A145193(A008597(n+1))]`
-/

namespace A224865.P17722769408630268917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145193 (A008597 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224865.P17722769408630268917

namespace A224865

/-- `eq[2, A145193(A008597(n+1))]` -/
def P17722769408630268917.Spec : Prop :=
  ∀ n, (P17722769408630268917.a n : ℤ) = A224865 (n + 1)

end A224865

/-!
# A224866: Numbers of the form m*rad(m)+1, where rad = A007947 (squarefree kernel).

The programs for A224866, there is no canonical definition to state claims against.
-/

/-! ## A224866.P2292759628062003442

`A001694(n+1)+1`
-/

namespace A224866.P2292759628062003442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1) + 1

end

end A224866.P2292759628062003442

/-! ## A224866.P15457556671699187536

`sqrt(A374291(n+1))+1`
-/

namespace A224866.P15457556671699187536
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A374291 (n + 1) : ℝ) + 1

end

end A224866.P15457556671699187536

/-! ## A224866.P4052849403915630230

`A076446(n)+a(n-1)` with `a(0)=2`
-/

namespace A224866.P4052849403915630230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A076446 n + a (n - 1)

end

end A224866.P4052849403915630230

/-! ## A224866.P2192645412921816009

`∪[(n+1)², A320966(n+1)]+1`
-/

namespace A224866.P2192645412921816009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A224866.P2192645412921816009

/-! ## A224866.P16123124053157450528

`A084371(n+1)*A306458(n+1)+1`
-/

namespace A224866.P16123124053157450528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084371 (n + 1) * A306458 (n + 1) + 1

end

end A224866.P16123124053157450528

/-! ## A224866.P8306584455750590640

`A369429(n+1)*A369430(n+1)+1`
-/

namespace A224866.P8306584455750590640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369429 (n + 1) * A369430 (n + 1) + 1

end

end A224866.P8306584455750590640

/-! ## A224866.P11847274693633114165

`∪[A001597(n+1), A052486(n+1)]+1`
-/

namespace A224866.P11847274693633114165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A224866.P11847274693633114165

/-! ## A224866.P4626919645851550939

`∪[A001597(n+1), A102834(n+1)]+1`
-/

namespace A224866.P4626919645851550939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A224866.P4626919645851550939

/-! ## A224866.P17515953076181505577

`∪[A001597(n+1), A216426(n+1)]+1`
-/

namespace A224866.P17515953076181505577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A224866.P17515953076181505577

/-! ## A224866.P5760357202427522465

`∪[A001597(n+1), A216427(n+1)]+1`
-/

namespace A224866.P5760357202427522465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A224866.P5760357202427522465

/-! ## A224866.P12502997765040293782

`∪[A001597(n+1), A286708(n+1)]+1`
-/

namespace A224866.P12502997765040293782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A224866.P12502997765040293782

/-! ## A224866.P11681998369526940070

`∪[A025475(n+1), A286708(n+1)]+1`
-/

namespace A224866.P11681998369526940070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A224866.P11681998369526940070

/-! ## A224866.P2938501153431665290

`record[gcd(n+1, A008833(n+1)²)+1]`
-/

namespace A224866.P2938501153431665290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A008833 (n + 1) ^ 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224866.P2938501153431665290

/-! ## A224866.P14430570910816270941

`A078310(A306458(n+1))`
-/

namespace A224866.P14430570910816270941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078310 (A306458 (n + 1)).toNat

end

end A224866.P14430570910816270941

/-! ## A224866.P10101795217772678425

`eq[1, A055231(n+1)]+2`
-/

namespace A224866.P10101795217772678425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A224866.P10101795217772678425

/-! ## A224866.P3523420220404341959

`lt[A326186(n+1), 1]+2`
-/

namespace A224866.P3523420220404341959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326186 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A224866.P3523420220404341959

/-! ## A224866.P14748425383608324469

`∩[A326692(n+1), A335851(n+1)]+1`
-/

namespace A224866.P14748425383608324469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A224866.P14748425383608324469

/-! ## A224866.P6862024009643395495

`lt[n, A183097(n+1)]+2`
-/

namespace A224866.P6862024009643395495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183097 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A224866.P6862024009643395495

/-! ## A224866.P6297289802535990041

`lt[n, A295294(n+1)]+2`
-/

namespace A224866.P6297289802535990041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295294 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A224866.P6297289802535990041

/-! ## A224866.P3887583010873179701

`record[A057521(n+1)+1]`
-/

namespace A224866.P3887583010873179701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224866.P3887583010873179701

/-!
# A224868: a(1) = greatest k such that H(k) - H(4) < 1/3 + 1/4; a(2) = greatest k such that H(k) - H(a(1)) < H(a(1)) - H(4); and for n > 2, a(n) = greatest k such that H(k) - H(a(n-1)) > H(a(n-1)) - H(a(n-2)), where H = harmonic number.

The programs for A224868, the canonical program `A224868.P14145327682528409891` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224868 has offset 1).

The definition of A224868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 597 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224868.P14145327682528409891

`∑[a(n-1)+a(n-3)]` with `a(0)=7, a(1)=4, a(2)=6, a(3)=9`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A224868

/-- `∑[a(n-1)+a(n-3)]` -/
def P14145327682528409891.Spec : Prop :=
  ∀ n, (P14145327682528409891.a n : ℤ) = A224868 (n + 1)

theorem P14145327682528409891.correct : P14145327682528409891.Spec := by
  intro n
  simp only [A224868, Nat.add_sub_cancel]

end A224868

/-! ## A224868.P15350643300373818459

`A020749(n+1)-1`
-/

namespace A224868.P15350643300373818459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020749 (n + 1) - 1

end

end A224868.P15350643300373818459

namespace A224868

/-- `A020749(n+1)-1` -/
def P15350643300373818459.Spec : Prop :=
  ∀ n, P15350643300373818459.a n = A224868 (n + 1)

end A224868

/-! ## A224868.P7202355484006895771

`A020745(n+2)-1`
-/

namespace A224868.P7202355484006895771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020745 (n + 2) - 1

end

end A224868.P7202355484006895771

namespace A224868

/-- `A020745(n+2)-1` -/
def P7202355484006895771.Spec : Prop :=
  ∀ n, P7202355484006895771.a n = A224868 (n + 1)

end A224868

/-! ## A224868.P15320249773781531454

`A048626(n+1)-2`
-/

namespace A224868.P15320249773781531454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048626 (n + 1) - 2

end

end A224868.P15320249773781531454

namespace A224868

/-- `A048626(n+1)-2` -/
def P15320249773781531454.Spec : Prop :=
  ∀ n, P15320249773781531454.a n = A224868 (n + 1)

end A224868

/-! ## A224868.P4223803777731304640

`A020721(n+1)-3`
-/

namespace A224868.P4223803777731304640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020721 (n + 1) - 3

end

end A224868.P4223803777731304640

namespace A224868

/-- `A020721(n+1)-3` -/
def P4223803777731304640.Spec : Prop :=
  ∀ n, P4223803777731304640.a n = A224868 (n + 1)

end A224868

/-! ## A224868.P17844453541146345457

`A048625(n+2)-2`
-/

namespace A224868.P17844453541146345457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048625 (n + 2) - 2

end

end A224868.P17844453541146345457

namespace A224868

/-- `A048625(n+2)-2` -/
def P17844453541146345457.Spec : Prop :=
  ∀ n, P17844453541146345457.a n = A224868 (n + 1)

end A224868

/-! ## A224868.P3722618259655878996

`A020711(n+2)-3`
-/

namespace A224868.P3722618259655878996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020711 (n + 2) - 3

end

end A224868.P3722618259655878996

namespace A224868

/-- `A020711(n+2)-3` -/
def P3722618259655878996.Spec : Prop :=
  ∀ n, P3722618259655878996.a n = A224868 (n + 1)

end A224868

/-! ## A224868.P13816842429949369245

`A077868(n+4)-1`
-/

namespace A224868.P13816842429949369245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077868 (n + 4) - 1

end

end A224868.P13816842429949369245

namespace A224868

/-- `A077868(n+4)-1` -/
def P13816842429949369245.Spec : Prop :=
  ∀ n, P13816842429949369245.a n = A224868 (n + 1)

end A224868

/-! ## A224868.P16394195273655778395

`A048589(n+2)-5`
-/

namespace A224868.P16394195273655778395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048589 (n + 2) - 5

end

end A224868.P16394195273655778395

namespace A224868

/-- `A048589(n+2)-5` -/
def P16394195273655778395.Spec : Prop :=
  ∀ n, P16394195273655778395.a n = A224868 (n + 1)

end A224868

/-! ## A224868.P3882664838467531203

`A048585(n+3)-5`
-/

namespace A224868.P3882664838467531203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048585 (n + 3) - 5

end

end A224868.P3882664838467531203

namespace A224868

/-- `A048585(n+3)-5` -/
def P3882664838467531203.Spec : Prop :=
  ∀ n, P3882664838467531203.a n = A224868 (n + 1)

end A224868

/-! ## A224868.P17359605985590089352

`A048591(n+2)-6`
-/

namespace A224868.P17359605985590089352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048591 (n + 2) - 6

end

end A224868.P17359605985590089352

namespace A224868

/-- `A048591(n+2)-6` -/
def P17359605985590089352.Spec : Prop :=
  ∀ n, P17359605985590089352.a n = A224868 (n + 1)

end A224868

/-! ## A224868.P16807620733088003662

`A000930(n+7)-2`
-/

namespace A224868.P16807620733088003662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 7) - 2

end

end A224868.P16807620733088003662

namespace A224868

/-- `A000930(n+7)-2` -/
def P16807620733088003662.Spec : Prop :=
  ∀ n, P16807620733088003662.a n = A224868 (n + 1)

end A224868

/-! ## A224868.P8687827752955230584

`A048588(n+3)-6`
-/

namespace A224868.P8687827752955230584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048588 (n + 3) - 6

end

end A224868.P8687827752955230584

namespace A224868

/-- `A048588(n+3)-6` -/
def P8687827752955230584.Spec : Prop :=
  ∀ n, P8687827752955230584.a n = A224868 (n + 1)

end A224868

/-! ## A224868.P14309195063886204894

`A019527(n+6)-4`
-/

namespace A224868.P14309195063886204894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019527 (n + 6) - 4

end

end A224868.P14309195063886204894

namespace A224868

/-- `A019527(n+6)-4` -/
def P14309195063886204894.Spec : Prop :=
  ∀ n, P14309195063886204894.a n = A224868 (n + 1)

end A224868

/-! ## A224868.P7629098798176158553

`∑[A068921(n+3)]+4`
-/

namespace A224868.P7629098798176158553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A224868.P7629098798176158553

namespace A224868

/-- `∑[A068921(n+3)]+4` -/
def P7629098798176158553.Spec : Prop :=
  ∀ n, P7629098798176158553.a n = A224868 (n + 1)

end A224868

/-! ## A224868.P3632196737323602629

`∑[A000930(n+4)]+4`
-/

namespace A224868.P3632196737323602629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A224868.P3632196737323602629

namespace A224868

/-- `∑[A000930(n+4)]+4` -/
def P3632196737323602629.Spec : Prop :=
  ∀ n, P3632196737323602629.a n = A224868 (n + 1)

end A224868

/-! ## A224868.P13588798754480600907

`A164487(n+3)-(n+1)`
-/

namespace A224868.P13588798754480600907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164487 (n + 3) - (n + 1 : ℤ)

end

end A224868.P13588798754480600907

namespace A224868

/-- `A164487(n+3)-(n+1)` -/
def P13588798754480600907.Spec : Prop :=
  ∀ n, P13588798754480600907.a n = A224868 (n + 1)

end A224868

/-! ## A224868.P10808522229731337621

`A050228(n+2)+A020705(n)`
-/

namespace A224868.P10808522229731337621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050228 (n + 2) + A020705 n

end

end A224868.P10808522229731337621

namespace A224868

/-- `A050228(n+2)+A020705(n)` -/
def P10808522229731337621.Spec : Prop :=
  ∀ n, P10808522229731337621.a n = A224868 (n + 1)

end A224868

/-! ## A224868.P13533904707404775705

`A020710(n+1)+A050228(n+2)-2`
-/

namespace A224868.P13533904707404775705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (n + 1) + (A050228 (n + 2) - 2)

end

end A224868.P13533904707404775705

namespace A224868

/-- `A020710(n+1)+A050228(n+2)-2` -/
def P13533904707404775705.Spec : Prop :=
  ∀ n, P13533904707404775705.a n = A224868 (n + 1)

end A224868

/-! ## A224868.P449709752500379069

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=7, a(1)=11, a(2)=17, a(3)=26`
-/

namespace A224868.P449709752500379069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 11, 17, 26] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - a (n - 4)

end

end A224868.P449709752500379069

namespace A224868

/-- `2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` -/
def P449709752500379069.Spec : Prop :=
  ∀ n, P449709752500379069.a n = A224868 (n + 1)

end A224868

/-!
# A224869: a(n) = n*( a(n-1)+1 ), initialized by a(1) = -1.

The programs for A224869, the canonical program `A224869.P3951692250476544348` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224869 has offset 1).

The definition of A224869 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(a(n-1)+1)` (program `A224869.P3951692250476544348`, by `A224869.P3951692250476544348.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A224869.P3951692250476544348

`(n+1)*(a(n-1)+1)` with `a(0)=-1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A224869

/-- `(n+1)*(a(n-1)+1)` -/
def P3951692250476544348.Spec : Prop :=
  ∀ n, P3951692250476544348.a n = A224869 (n + 1)

theorem P3951692250476544348.correct : P3951692250476544348.Spec := by
  intro n
  simp only [A224869, Nat.add_sub_cancel]

end A224869

/-! ## A224869.P10373887392836885192

`∑[-Δ[n*(a(n-1)-1)]]` with `a(0)=0, a(1)=1`
-/

namespace A224869.P10373887392836885192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  (n : ℤ) * (f2 (n - 1) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224869.P10373887392836885192

namespace A224869

/-- `∑[-Δ[n*(a(n-1)-1)]]` -/
def P10373887392836885192.Spec : Prop :=
  ∀ n, P10373887392836885192.a n = A224869 (n + 1)

end A224869

/-! ## A224869.P17670098788558385283

`(a(n-1)+1)/(n+1)^(-1)` with `a(0)=-1`
-/

namespace A224869.P17670098788558385283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [-1] fun n a =>
  (a (n - 1) + 1) / (n + 1 : ℚ) ^ (-1 : ℤ)

end

end A224869.P17670098788558385283

namespace A224869

/-- `(a(n-1)+1)/(n+1)^(-1)` -/
def P17670098788558385283.Spec : Prop :=
  ∀ n, P17670098788558385283.a n = (A224869 (n + 1) : ℚ)

end A224869

/-! ## A224869.P8215077785346643585

`∑[abs(Δ[n*(a(n-1)-1)])]-2` with `a(0)=2`
-/

namespace A224869.P8215077785346643585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  (n : ℤ) * (f2 (n - 1) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A224869.P8215077785346643585

namespace A224869

/-- `∑[abs(Δ[n*(a(n-1)-1)])]-2` -/
def P8215077785346643585.Spec : Prop :=
  ∀ n, P8215077785346643585.a n = A224869 (n + 1)

end A224869

/-! ## A224869.P9843845614805989416

`∑[A007808(n)]-2`
-/

namespace A224869.P9843845614805989416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A224869.P9843845614805989416

namespace A224869

/-- `∑[A007808(n)]-2` -/
def P9843845614805989416.Spec : Prop :=
  ∀ n, P9843845614805989416.a n = A224869 (n + 1)

end A224869

/-! ## A224869.P5800746527640048032

`A056542(n+1)-1`
-/

namespace A224869.P5800746527640048032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056542 (n + 1) - 1

end

end A224869.P5800746527640048032

namespace A224869

/-- `A056542(n+1)-1` -/
def P5800746527640048032.Spec : Prop :=
  ∀ n, P5800746527640048032.a n = A224869 (n + 1)

end A224869

/-! ## A224869.P5206930021823680272

`A094294(n+1)-2`
-/

namespace A224869.P5206930021823680272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094294 (n + 1) - 2

end

end A224869.P5206930021823680272

namespace A224869

/-- `A094294(n+1)-2` -/
def P5206930021823680272.Spec : Prop :=
  ∀ n, P5206930021823680272.a n = A224869 (n + 1)

end A224869

/-! ## A224869.P15574741500390927837

`record[A094294(A065648(n))-2]`
-/

namespace A224869.P15574741500390927837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094294 (A065648 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224869.P15574741500390927837

namespace A224869

/-- `record[A094294(A065648(n))-2]` -/
def P15574741500390927837.Spec : Prop :=
  ∀ n, P15574741500390927837.a n = A224869 (n + 1)

end A224869

/-! ## A224869.P13436459453409161769

`A260196(n+2)+A056542(n+1)`
-/

namespace A224869.P13436459453409161769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A056542 (n + 1)

end

end A224869.P13436459453409161769

namespace A224869

/-- `A260196(n+2)+A056542(n+1)` -/
def P13436459453409161769.Spec : Prop :=
  ∀ n, P13436459453409161769.a n = A224869 (n + 1)

end A224869

/-! ## A224869.P12044869876850270201

`A255331(A139139(3*n+2))+A056542(n+1)`
-/

namespace A224869.P12044869876850270201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255331 (A139139 (3 * n + 2)).toNat + A056542 (n + 1)

end

end A224869.P12044869876850270201

namespace A224869

/-- `A255331(A139139(3*n+2))+A056542(n+1)` -/
def P12044869876850270201.Spec : Prop :=
  ∀ n, P12044869876850270201.a n = A224869 (n + 1)

end A224869

/-!
# A224870: Numbers m such that m^2 + (m+3)^2 is prime.

The programs for A224870, there is no canonical definition to state claims against.
-/

/-! ## A224870.P665010802585221671

`eq[3, A358790(n+1)]`
-/

namespace A224870.P665010802585221671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358790 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224870.P665010802585221671

/-! ## A224870.P7341790258755918330

`eq[3, A281158(n+3)]`
-/

namespace A224870.P7341790258755918330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281158 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224870.P7341790258755918330

/-! ## A224870.P9902919796772244846

`lt[A002260(A281158(n+3)+1), 2]`
-/

namespace A224870.P9902919796772244846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A281158 (n + 3) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A224870.P9902919796772244846

/-! ## A224870.P266811763690560435

`lt[A002415(A281158(n+3)+1), 63]`
-/

namespace A224870.P266811763690560435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 (A281158 (n + 3) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  63

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A224870.P266811763690560435

/-! ## A224870.P13095122537113290918

`lt[A097248(A281158(n+3)+1), 10/3]`
-/

namespace A224870.P13095122537113290918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097248 (A281158 (n + 3) + 1).toNat

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) / 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A224870.P13095122537113290918

/-! ## A224870.P251695813570187389

`lt[A028310(n)*A059268(A281158(n+3))-1, n]`
-/

namespace A224870.P251695813570187389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A059268 (A281158 (n + 3)).toNat - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A224870.P251695813570187389

/-!
# A224872: Numbers k such that prime(k)*pi(k)+1 is prime.

The programs for A224872, there is no canonical definition to state claims against.
-/

/-! ## A224872.P13439348980789973320

`eq[2, A000005(A000040(n+1)*A230980(n+1)+1)]+1`
-/

namespace A224872.P13439348980789973320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000040 (n + 1) * A230980 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A224872.P13439348980789973320

/-! ## A224872.P7786905379214357194

`eq[1, A292286(A128930(n+1)+1)]+1`
-/

namespace A224872.P7786905379214357194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292286 (A128930 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A224872.P7786905379214357194

/-!
# A224873: Triangle of coefficients T(n, k) (n > 0, k < n) in expansion of sin(u*x) * sin(v*x) / (cos(u*x) + cos(v*x)), read by rows.

The programs for A224873, there is no canonical definition to state claims against.
-/

/-! ## A224873.P16304556342116565479

`A272481(comp[∑[n]]+n)`
-/

namespace A224873.P16304556342116565479
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272481 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A224873.P16304556342116565479

/-!
# A224876: On an hexagonal lattice, repeatedly: mark the current point and then move forward to the nearest unmarked point and then rotate 120 degrees clockwise. a(n) gives the number of steps between the n-th and (n+1)-th marks.

The programs for A224876, there is no canonical definition to state claims against.
-/

/-! ## A224876.P12597008014323347631

`A000120(A288010(∑[A001057(n+3)]))`
-/

namespace A224876.P12597008014323347631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A288010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A224876.P12597008014323347631

/-! ## A224876.P12014255237509390940

`A008619(xor(A027656(n), A185294(n)))`
-/

namespace A224876.P12014255237509390940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.xor (A027656 n) (A185294 n)).toNat

end

end A224876.P12014255237509390940

/-! ## A224876.P16149202088822957128

`A008619(xor(A158416(n), A185294(n)))`
-/

namespace A224876.P16149202088822957128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.xor (A158416 n) (A185294 n)).toNat

end

end A224876.P16149202088822957128

/-! ## A224876.P15797303285245377619

`A004526(xor(A027656(n), A185294(n)))+1`
-/

namespace A224876.P15797303285245377619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.xor (A027656 n) (A185294 n)).toNat + 1

end

end A224876.P15797303285245377619

/-! ## A224876.P9268450172633161461

`A216282(3^((n+2)*(n+1)%2/2))`
-/

namespace A224876.P9268450172633161461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216282 (SequenceMachineLib.roundAway ((3 : ℝ) ^ ((n + 2 : ℚ) * ((((n + 1) % 2 : ℕ) : ℚ) / 2) : ℝ))).toNat

end

end A224876.P9268450172633161461

/-!
# A224877: Expansion of f(x^29, x^31) - x^3 * f(x^11, x^49) in powers of x where f() is a Ramanujan theta function.

The programs for A224877, there is no canonical definition to state claims against.
-/

/-! ## A224877.P12005477883089863422

`(A113681(n)+A113430(n))/2`
-/

namespace A224877.P12005477883089863422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113681 n + A113430 n : ℚ) / 2

end

end A224877.P12005477883089863422

/-! ## A224877.P1671625710439913634

`(A113681(n)+A113430(n))*2^A033999(or(1, n))`
-/

namespace A224877.P1671625710439913634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113681 n + A113430 n : ℚ) * (2 : ℚ) ^ (A033999 (Nat.lor 1 n) : ℤ)

end

end A224877.P1671625710439913634

/-! ## A224877.P13930521555134495803

`(A113681(n)+A113430(n))*2^A008683(A020483(n))`
-/

namespace A224877.P13930521555134495803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113681 n + A113430 n : ℚ) * (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ)

end

end A224877.P13930521555134495803

/-! ## A224877.P3999007816773866306

`(A274719(10*n)+A057077(n+1)*A208546(n))/2`
-/

namespace A224877.P3999007816773866306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274719 (10 * n) + A057077 (n + 1) * A208546 n : ℚ) / 2

end

end A224877.P3999007816773866306

/-! ## A224877.P18304764823890920178

`A113430(n)*A285076(A352108(n+5))`
-/

namespace A224877.P18304764823890920178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113430 n * A285076 (A352108 (n + 5)).toNat

end

end A224877.P18304764823890920178

/-! ## A224877.P8794893337422000895

`A005614(A210702(n+1))*A113430(n)`
-/

namespace A224877.P8794893337422000895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A210702 (n + 1)).toNat * A113430 n

end

end A224877.P8794893337422000895

/-! ## A224877.P5724365148035517151

`A005614(A210702(n+1))*A113681(n)`
-/

namespace A224877.P5724365148035517151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A210702 (n + 1)).toNat * A113681 n

end

end A224877.P5724365148035517151

/-!
# A224878: Number T(n,k) of partitions of n into distinct parts with boundary size k (where one part of size 0 is allowed).

The programs for A224878, there is no canonical definition to state claims against.
-/

/-! ## A224878.P13254839344743378305

`A023416(p?[A086970(A113176(n+1))])`
-/

namespace A224878.P13254839344743378305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086970 (A113176 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A224878.P13254839344743378305

/-! ## A224878.P13068703172624921948

`and(A041330(n), A337323(A022321(n)))`
-/

namespace A224878.P13068703172624921948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A041330 n) (A337323 (A022321 n).toNat)

end

end A224878.P13068703172624921948

/-! ## A224878.P10060033724367219519

`or(A000035(A128161(n+3)), A079644(n+1))`
-/

namespace A224878.P10060033724367219519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A128161 (n + 3)).toNat) (A079644 (n + 1))

end

end A224878.P10060033724367219519

/-! ## A224878.P3623731602035791761

`A346377(A130113(n+1))`
-/

namespace A224878.P3623731602035791761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346377 (A130113 (n + 1)).toNat

end

end A224878.P3623731602035791761

/-! ## A224878.P10302206945057033947

`A319659(A166627(n+2))`
-/

namespace A224878.P10302206945057033947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319659 (A166627 (n + 2)).toNat

end

end A224878.P10302206945057033947

/-!
# A224879: Number of equivalence classes of n X n nonsingular matrices over GF(2), up to row and column permutation.

The programs for A224879, there is no canonical definition to state claims against.
-/

/-! ## A224879.P9619355634299096415

`A225819((n+1)*a(n-1))` with `a(0)=1`
-/

namespace A224879.P9619355634299096415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A225819 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A224879.P9619355634299096415

/-!
# A224880: a(n) = 2*n + sum of divisors of n.

The programs for A224880, the canonical program `A224880.P6096983120324589862` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224880 has offset 1).

The definition of A224880 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224880.P6780601834210635688

`A155085(n+1)+n+1`
-/

namespace A224880.P6780601834210635688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) + (n + 1 : ℤ)

end

end A224880.P6780601834210635688

namespace A224880

/-- `A155085(n+1)+n+1` -/
def P6780601834210635688.Spec : Prop :=
  ∀ n, P6780601834210635688.a n = A224880 (n + 1)

end A224880

/-! ## A224880.P14335915205296632646

`A005843(n+1)+A000203(n+1)`
-/

namespace A224880.P14335915205296632646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + A000203 (n + 1)

end

end A224880.P14335915205296632646

namespace A224880

/-- `A005843(n+1)+A000203(n+1)` -/
def P14335915205296632646.Spec : Prop :=
  ∀ n, P14335915205296632646.a n = A224880 (n + 1)

end A224880

/-! ## A224880.P6096983120324589862

`A033879(n+1)+2*A000203(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A224880

/-- `A033879(n+1)+2*A000203(n+1)` -/
def P6096983120324589862.Spec : Prop :=
  ∀ n, P6096983120324589862.a n = A224880 (n + 1)

theorem P6096983120324589862.correct : P6096983120324589862.Spec := by
  intro n
  simp only [A224880, Nat.add_sub_cancel]

end A224880

/-! ## A224880.P17978438986884224115

`A033880(n+1)+2*A005843(n+1)`
-/

namespace A224880.P17978438986884224115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) + 2 * A005843 (n + 1)

end

end A224880.P17978438986884224115

namespace A224880

/-- `A033880(n+1)+2*A005843(n+1)` -/
def P17978438986884224115.Spec : Prop :=
  ∀ n, P17978438986884224115.a n = A224880 (n + 1)

end A224880

/-! ## A224880.P7652549066288287431

`2*A000203(n+1)-A033880(n+1)`
-/

namespace A224880.P7652549066288287431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (n + 1) - A033880 (n + 1)

end

end A224880.P7652549066288287431

namespace A224880

/-- `2*A000203(n+1)-A033880(n+1)` -/
def P7652549066288287431.Spec : Prop :=
  ∀ n, P7652549066288287431.a n = A224880 (n + 1)

end A224880

/-! ## A224880.P2383348827428261325

`A001065(n+1)+A008585(n+1)`
-/

namespace A224880.P2383348827428261325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + A008585 (n + 1)

end

end A224880.P2383348827428261325

namespace A224880

/-- `A001065(n+1)+A008585(n+1)` -/
def P2383348827428261325.Spec : Prop :=
  ∀ n, P2383348827428261325.a n = A224880 (n + 1)

end A224880

/-! ## A224880.P10702784726245697824

`∑{d}[n+1, #]+2*(n+1)`
-/

namespace A224880.P10702784726245697824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d + 2 * (n + 1)

end

end A224880.P10702784726245697824

namespace A224880

/-- `∑{d}[n+1, #]+2*(n+1)` -/
def P10702784726245697824.Spec : Prop :=
  ∀ n, (P10702784726245697824.a n : ℤ) = A224880 (n + 1)

end A224880

/-! ## A224880.P3002002435056669858

`∑{d}[n+1, #]+2+n+n`
-/

namespace A224880.P3002002435056669858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d + 2 + n + n

end

end A224880.P3002002435056669858

namespace A224880

/-- `∑{d}[n+1, #]+2+n+n` -/
def P3002002435056669858.Spec : Prop :=
  ∀ n, (P3002002435056669858.a n : ℤ) = A224880 (n + 1)

end A224880

/-! ## A224880.P2108297347450686441

`A387001(n+1)-1`
-/

namespace A224880.P2108297347450686441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387001 (n + 1) - 1

end

end A224880.P2108297347450686441

namespace A224880

/-- `A387001(n+1)-1` -/
def P2108297347450686441.Spec : Prop :=
  ∀ n, P2108297347450686441.a n = A224880 (n + 1)

end A224880

/-! ## A224880.P9468103009267679791

`∑[A340793(n+1)+2]`
-/

namespace A224880.P9468103009267679791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224880.P9468103009267679791

namespace A224880

/-- `∑[A340793(n+1)+2]` -/
def P9468103009267679791.Spec : Prop :=
  ∀ n, P9468103009267679791.a n = A224880 (n + 1)

end A224880

/-! ## A224880.P11956259694958114928

`A088580(n+1)+Δ[n²]`
-/

namespace A224880.P11956259694958114928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A224880.P11956259694958114928

namespace A224880

/-- `A088580(n+1)+Δ[n²]` -/
def P11956259694958114928.Spec : Prop :=
  ∀ n, P11956259694958114928.a n = A224880 (n + 1)

end A224880

/-! ## A224880.P14705495583719991498

`∑[n+3]-A024816(n+1)`
-/

namespace A224880.P14705495583719991498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A024816 (n + 1)

end

end A224880.P14705495583719991498

namespace A224880

/-- `∑[n+3]-A024816(n+1)` -/
def P14705495583719991498.Spec : Prop :=
  ∀ n, P14705495583719991498.a n = A224880 (n + 1)

end A224880

/-! ## A224880.P3340705371099622151

`A033880(n+1)+4*(n+1)`
-/

namespace A224880.P3340705371099622151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) + (4 * (n + 1) : ℤ)

end

end A224880.P3340705371099622151

namespace A224880

/-- `A033880(n+1)+4*(n+1)` -/
def P3340705371099622151.Spec : Prop :=
  ∀ n, P3340705371099622151.a n = A224880 (n + 1)

end A224880

/-! ## A224880.P13952546309535484399

`A039653(n+1)+2*n+3`
-/

namespace A224880.P13952546309535484399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1) + (2 * n + 3 : ℤ)

end

end A224880.P13952546309535484399

namespace A224880

/-- `A039653(n+1)+2*n+3` -/
def P13952546309535484399.Spec : Prop :=
  ∀ n, P13952546309535484399.a n = A224880 (n + 1)

end A224880

/-! ## A224880.P10188203675466523520

`4*(n+1)-A033879(n+1)`
-/

namespace A224880.P10188203675466523520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A033879 (n + 1)

end

end A224880.P10188203675466523520

namespace A224880

/-- `4*(n+1)-A033879(n+1)` -/
def P10188203675466523520.Spec : Prop :=
  ∀ n, P10188203675466523520.a n = A224880 (n + 1)

end A224880

/-! ## A224880.P4854718770990654483

`5*(n+1)-A033885(n+1)`
-/

namespace A224880.P4854718770990654483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℤ) - A033885 (n + 1)

end

end A224880.P4854718770990654483

namespace A224880

/-- `5*(n+1)-A033885(n+1)` -/
def P4854718770990654483.Spec : Prop :=
  ∀ n, P4854718770990654483.a n = A224880 (n + 1)

end A224880

/-! ## A224880.P17877890810652609645

`a(n-1)+A053222(n)+2` with `a(0)=3`
-/

namespace A224880.P17877890810652609645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (A053222 n + 2)

end

end A224880.P17877890810652609645

namespace A224880

/-- `a(n-1)+A053222(n)+2` -/
def P17877890810652609645.Spec : Prop :=
  ∀ n, P17877890810652609645.a n = A224880 (n + 1)

end A224880

/-! ## A224880.P17862997490870784653

`∑{d}[n+1, 2*A000010(#)+#]`
-/

namespace A224880.P17862997490870784653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 * A000010 d + (d : ℤ))

end

end A224880.P17862997490870784653

namespace A224880

/-- `∑{d}[n+1, 2*A000010(#)+#]` -/
def P17862997490870784653.Spec : Prop :=
  ∀ n, P17862997490870784653.a n = A224880 (n + 1)

end A224880

/-! ## A224880.P8034290212108561237

`A000203(C(n+1, n))+n+2+n`
-/

namespace A224880.P8034290212108561237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.choose (n + 1) n) + (n + 2 : ℤ) + (n : ℤ)

end

end A224880.P8034290212108561237

namespace A224880

/-- `A000203(C(n+1, n))+n+2+n` -/
def P8034290212108561237.Spec : Prop :=
  ∀ n, P8034290212108561237.a n = A224880 (n + 1)

end A224880

/-! ## A224880.P9756653392249810659

`A237588(n+1)+A004767(n)`
-/

namespace A224880.P9756653392249810659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + A004767 n

end

end A224880.P9756653392249810659

namespace A224880

/-- `A237588(n+1)+A004767(n)` -/
def P9756653392249810659.Spec : Prop :=
  ∀ n, P9756653392249810659.a n = A224880 (n + 1)

end A224880

/-!
# A224881: Expansion of 1/(1 - 16*x)^(1/8).

The programs for A224881, there is no canonical definition to state claims against.
-/

/-! ## A224881.P15092290418120085872

`∏[record[A138999(2*(n+1))/A138999(n+2)]]`
-/

namespace A224881.P15092290418120085872
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138999 (2 * (n + 1)) : ℚ) / (A138999 (n + 2) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A224881.P15092290418120085872

/-! ## A224881.P3629626411892276764

`∏[A111284(A111284(n+1))/A028310(n)]`
-/

namespace A224881.P3629626411892276764
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111284 (A111284 (n + 1)).toNat : ℚ) / (A028310 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A224881.P3629626411892276764

/-! ## A224881.P11694329554880177262

`A034977(n)/A000079(n)²`
-/

namespace A224881.P11694329554880177262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034977 n : ℚ) / (A000079 n ^ 2 : ℚ)

end

end A224881.P11694329554880177262

/-! ## A224881.P16690242522182783494

`A034977(n)/A000079(2*n)`
-/

namespace A224881.P16690242522182783494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034977 n : ℚ) / (A000079 (2 * n) : ℚ)

end

end A224881.P16690242522182783494

/-! ## A224881.P2443914695989716961

`A004981(n)/A007696(n)*A045755(n)`
-/

namespace A224881.P2443914695989716961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004981 n : ℚ) / (A007696 n : ℚ) * (A045755 n : ℚ)

end

end A224881.P2443914695989716961

/-!
# A224882: Expansion of g.f. 1/(1 - 32*x)^(1/16).

The programs for A224882, there is no canonical definition to state claims against.
-/

/-! ## A224882.P18324920501105813617

`(32-30/n)*a(n-1)` with `a(0)=1`
-/

namespace A224882.P18324920501105813617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (32 - 30 / (n : ℚ)) * a (n - 1)

end

end A224882.P18324920501105813617

/-!
# A224883: a(n) = 2^(n^2) * binomial(n-1 + 1/2^(n-1), n).

The programs for A224883, there is no canonical definition to state claims against.
-/

/-! ## A224883.P9577506251652894331

`A103776(a(n-1))-1` with `a(0)=1, a(1)=2`
-/

namespace A224883.P9577506251652894331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A103776 (a (n - 1)).toNat - 1

end

end A224883.P9577506251652894331

/-!
# A224884: Expansion of x / Series_Reversion(x*sqrt(1 + 4*x)).

The programs for A224884, there is no canonical definition to state claims against.
-/

/-! ## A224884.P14993141802484660032

`abs(A206300(n))*A165326(n)`
-/

namespace A224884.P14993141802484660032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A206300 n| * A165326 n

end

end A224884.P14993141802484660032

/-! ## A224884.P13249581456034238160

`-(A033999(n)*A206300(n))`
-/

namespace A224884.P13249581456034238160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A033999 n * A206300 n)

end

end A224884.P13249581456034238160

/-! ## A224884.P12834209541502274290

`A033999(n+1)*A206300(n)`
-/

namespace A224884.P12834209541502274290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A206300 n

end

end A224884.P12834209541502274290

/-! ## A224884.P10722868352221653636

`-(A206300(n)/A033999(n+2))`
-/

namespace A224884.P10722868352221653636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A206300 n : ℚ) / (A033999 (n + 2) : ℚ))

end

end A224884.P10722868352221653636

/-! ## A224884.P2146241958172251925

`A129818(A000217(3*(n+1)))*A206300(n)`
-/

namespace A224884.P2146241958172251925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129818 (A000217 (3 * (n + 1))).toNat * A206300 n

end

end A224884.P2146241958172251925

/-!
# A224885: G.f.: A(x) = 1+x + Sum_{n>=2} Product_{k=1..n} (A(x)^k - 1).

The programs for A224885, there is no canonical definition to state claims against.
-/

/-! ## A224885.P3441513022998368790

`A213196(or((n+1)/2^val(n+1, 2), ceil(n^n/2)))`
-/

namespace A224885.P3441513022998368790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213196 (Int.lor (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) ⌈(n ^ n : ℚ) / 2⌉).toNat

end

end A224885.P3441513022998368790

/-! ## A224885.P16137032569246633933

`A008620(A336421(n)-A150863(n))`
-/

namespace A224885.P16137032569246633933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A336421 n - A150863 n).toNat

end

end A224885.P16137032569246633933

/-!
# A224887: Honaker trios: Consecutive prime numbers p < q < r such that p | (qr+1).

The programs for A224887, there is no canonical definition to state claims against.
-/

/-! ## A224887.P13842208387564593070

`A122820(A004857(n+2))`
-/

namespace A224887.P13842208387564593070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122820 (A004857 (n + 2)).toNat

end

end A224887.P13842208387564593070

/-!
# A224888: Primes of the form p^2 + (q-p)^2, where p and q are consecutive primes.

The programs for A224888, there is no canonical definition to state claims against.
-/

/-! ## A224888.P17323707453341792918

`p?[A001248(n+1)+A001223(n+1)²]`
-/

namespace A224888.P17323707453341792918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + A001223 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A224888.P17323707453341792918

/-! ## A224888.P7094999392752700875

`p?[A076821(n+1)+A000040(n+1)²]`
-/

namespace A224888.P7094999392752700875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076821 (n + 1) + A000040 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A224888.P7094999392752700875

/-! ## A224888.P5535827592659825587

`p?[A167770(n+1)+A000040(n+1)²]`
-/

namespace A224888.P5535827592659825587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167770 (n + 1) + A000040 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A224888.P5535827592659825587

/-! ## A224888.P4317398344947954479

`p?[A000040(n+1)²+A001223(n+1)²]`
-/

namespace A224888.P4317398344947954479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 + A001223 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A224888.P4317398344947954479

/-! ## A224888.P9002689725263377079

`p?[A001248(n+1)+(A000040(n+1)-A000040(n+2))²]`
-/

namespace A224888.P9002689725263377079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + (A000040 (n + 1) - A000040 (n + 2)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A224888.P9002689725263377079

/-!
# A224889: Numbers n such that 90n + 91 is prime.

The programs for A224889, the canonical program `A224889.P2171058080815795800` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224889 has offset 1).

The definition of A224889 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224889.P2171058080815795800

`A181732(n+1)-1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A224889

/-- `A181732(n+1)-1` -/
def P2171058080815795800.Spec : Prop :=
  ∀ n, P2171058080815795800.a n = A224889 (n + 1)

theorem P2171058080815795800.correct : P2171058080815795800.Spec := by
  intro n
  simp only [A224889, Nat.add_sub_cancel]

end A224889

/-! ## A224889.P11409834261607914785

`A023443(A181732(n+1))`
-/

namespace A224889.P11409834261607914785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A181732 (n + 1)).toNat

end

end A224889.P11409834261607914785

namespace A224889

/-- `A023443(A181732(n+1))` -/
def P11409834261607914785.Spec : Prop :=
  ∀ n, P11409834261607914785.a n = A224889 (n + 1)

end A224889

/-! ## A224889.P18306545525525363779

`A023444(A181732(n+1)+1)`
-/

namespace A224889.P18306545525525363779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A181732 (n + 1) + 1).toNat

end

end A224889.P18306545525525363779

namespace A224889

/-- `A023444(A181732(n+1)+1)` -/
def P18306545525525363779.Spec : Prop :=
  ∀ n, P18306545525525363779.a n = A224889 (n + 1)

end A224889

/-! ## A224889.P8514425948593017623

`A307445(record[A014963(n+2)])+A181732(n+1)`
-/

namespace A224889.P8514425948593017623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A181732 (n + 1)

end

end A224889.P8514425948593017623

namespace A224889

/-- `A307445(record[A014963(n+2)])+A181732(n+1)` -/
def P8514425948593017623.Spec : Prop :=
  ∀ n, P8514425948593017623.a n = A224889 (n + 1)

end A224889

/-! ## A224889.P14223268758464532229

`A354824(A069709(n+1))+A181732(n+1)`
-/

namespace A224889.P14223268758464532229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354824 (A069709 (n + 1)).toNat + A181732 (n + 1)

end

end A224889.P14223268758464532229

namespace A224889

/-- `A354824(A069709(n+1))+A181732(n+1)` -/
def P14223268758464532229.Spec : Prop :=
  ∀ n, P14223268758464532229.a n = A224889 (n + 1)

end A224889

/-! ## A224889.P1609339062680436524

`A309970(A074837(n+1))+A181732(n+1)`
-/

namespace A224889.P1609339062680436524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309970 (A074837 (n + 1)).toNat + A181732 (n + 1)

end

end A224889.P1609339062680436524

namespace A224889

/-- `A309970(A074837(n+1))+A181732(n+1)` -/
def P1609339062680436524.Spec : Prop :=
  ∀ n, P1609339062680436524.a n = A224889 (n + 1)

end A224889

/-! ## A224889.P996784487367213647

`abs(A181732(n+1)+A008683(A142316(n+1)))`
-/

namespace A224889.P996784487367213647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A181732 (n + 1) + A008683 (A142316 (n + 1)).toNat|

end

end A224889.P996784487367213647

namespace A224889

/-- `abs(A181732(n+1)+A008683(A142316(n+1)))` -/
def P996784487367213647.Spec : Prop :=
  ∀ n, P996784487367213647.a n = A224889 (n + 1)

end A224889

/-! ## A224889.P17440387183426793182

`record[gcd(n-1, A007599(A001222(90*n+1)))]`
-/

namespace A224889.P17440387183426793182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 1) (A007599 (A001222 (90 * n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224889.P17440387183426793182

namespace A224889

/-- `record[gcd(n-1, A007599(A001222(90*n+1)))]` -/
def P17440387183426793182.Spec : Prop :=
  ∀ n, (P17440387183426793182.a n : ℤ) = A224889 (n + 1)

end A224889

/-! ## A224889.P12112603381509669841

`eq[2, A001222(A066164(n+3)+2)]`
-/

namespace A224889.P12112603381509669841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A066164 (n + 3) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224889.P12112603381509669841

namespace A224889

/-- `eq[2, A001222(A066164(n+3)+2)]` -/
def P12112603381509669841.Spec : Prop :=
  ∀ n, (P12112603381509669841.a n : ℤ) = A224889 (n + 1)

end A224889

/-! ## A224889.P5834193427671780007

`eq[1, A034693(90*(n+1))]`
-/

namespace A224889.P5834193427671780007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (90 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224889.P5834193427671780007

namespace A224889

/-- `eq[1, A034693(90*(n+1))]` -/
def P5834193427671780007.Spec : Prop :=
  ∀ n, (P5834193427671780007.a n : ℤ) = A224889 (n + 1)

end A224889

/-!
# A224890: Positions of incrementally largest terms in continued fraction for Copeland-Erdős constant.

The programs for A224890, there is no canonical definition to state claims against.
-/

/-! ## A224890.P4812786511189146380

`A033311(n+1)-1`
-/

namespace A224890.P4812786511189146380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033311 (n + 1) - 1

end

end A224890.P4812786511189146380

/-! ## A224890.P6871318670437500195

`record[Δ[A033311(A152271(n))]]`
-/

namespace A224890.P6871318670437500195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033311 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224890.P6871318670437500195

/-! ## A224890.P4418949402412517508

`record[Δ[A033311(A142150(n)+1)]]`
-/

namespace A224890.P4418949402412517508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033311 (A142150 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224890.P4418949402412517508

/-! ## A224890.P3956266909692047799

`A057428(n+1)+A033311(n+1)`
-/

namespace A224890.P3956266909692047799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A033311 (n + 1)

end

end A224890.P3956266909692047799

/-! ## A224890.P12579902651302119942

`A134824(n+2)+A033311(n+1)`
-/

namespace A224890.P12579902651302119942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A033311 (n + 1)

end

end A224890.P12579902651302119942

/-!
# A224891: Position of first occurrence of n in continued fraction for Copeland-Erdos constant.

The programs for A224891, there is no canonical definition to state claims against.
-/

/-! ## A224891.P6150542646903727258

`A057078(A017617(n))+A033309(n+1)`
-/

namespace A224891.P6150542646903727258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A017617 n).toNat + A033309 (n + 1)

end

end A224891.P6150542646903727258

/-! ## A224891.P9584206131887891054

`A033309(n+1)-A057427(A109238(3*(n+1)))`
-/

namespace A224891.P9584206131887891054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033309 (n + 1) - A057427 (A109238 (3 * (n + 1))).toNat

end

end A224891.P9584206131887891054

/-! ## A224891.P11392191797371909341

`A033309(n+1)-A057427(A185300(3*n+1))`
-/

namespace A224891.P11392191797371909341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033309 (n + 1) - A057427 (A185300 (3 * n + 1)).toNat

end

end A224891.P11392191797371909341

/-! ## A224891.P11966966845309599495

`A033309(n+1)-A007877(A071216(3*n+5))`
-/

namespace A224891.P11966966845309599495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033309 (n + 1) - A007877 (A071216 (3 * n + 5)).toNat

end

end A224891.P11966966845309599495

/-! ## A224891.P18419696770202353225

`A033309(n+1)-A231813(A000040(3*n+5))`
-/

namespace A224891.P18419696770202353225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033309 (n + 1) - A231813 (A000040 (3 * n + 5)).toNat

end

end A224891.P18419696770202353225

/-! ## A224891.P15229956091302418567

`A057078(A007528(n+1))+A033309(n+1)`
-/

namespace A224891.P15229956091302418567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A007528 (n + 1)).toNat + A033309 (n + 1)

end

end A224891.P15229956091302418567

/-! ## A224891.P2429784781929468644

`A033309(n+1)-A013632(A006093(2*n+3))`
-/

namespace A224891.P2429784781929468644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033309 (n + 1) - A013632 (A006093 (2 * n + 3)).toNat

end

end A224891.P2429784781929468644

/-! ## A224891.P2617377410722110398

`A182394(A106950(n+1))+A033309(n+1)`
-/

namespace A224891.P2617377410722110398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182394 (A106950 (n + 1)).toNat + A033309 (n + 1)

end

end A224891.P2617377410722110398

/-! ## A224891.P2479751026394673628

`A033309(n+1)-A277866(A326305(n+1))`
-/

namespace A224891.P2479751026394673628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033309 (n + 1) - A277866 (A326305 (n + 1)).toNat

end

end A224891.P2479751026394673628

/-! ## A224891.P6245682032119143711

`A033999(A051227(n+1))+A033309(n+1)`
-/

namespace A224891.P6245682032119143711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A051227 (n + 1)).toNat + A033309 (n + 1)

end

end A224891.P6245682032119143711

/-! ## A224891.P17657971604721067847

`A033309(n+1)-A000010(A048896(A048896(n)²))`
-/

namespace A224891.P17657971604721067847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033309 (n + 1) - A000010 (A048896 (A048896 n ^ 2).toNat).toNat

end

end A224891.P17657971604721067847

/-! ## A224891.P8466546850017747482

`A033999(A051229(n+1))+A033309(n+1)`
-/

namespace A224891.P8466546850017747482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A051229 (n + 1)).toNat + A033309 (n + 1)

end

end A224891.P8466546850017747482

/-! ## A224891.P9588746660424747049

`A033309(n+1)-A277866(2*n)`
-/

namespace A224891.P9588746660424747049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033309 (n + 1) - A277866 (2 * n)

end

end A224891.P9588746660424747049

/-! ## A224891.P16834628192414230518

`A118830(A056108(n))+A033309(n+1)`
-/

namespace A224891.P16834628192414230518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (A056108 n).toNat + A033309 (n + 1)

end

end A224891.P16834628192414230518

/-! ## A224891.P5364702848804594934

`A118830(A130330(n))+A033309(n+1)`
-/

namespace A224891.P5364702848804594934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (A130330 n).toNat + A033309 (n + 1)

end

end A224891.P5364702848804594934

/-! ## A224891.P18370192849262190852

`A033309(n+1)+A008683(A007918(n²))`
-/

namespace A224891.P18370192849262190852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033309 (n + 1) + A008683 (A007918 (n ^ 2)).toNat

end

end A224891.P18370192849262190852

/-! ## A224891.P4809473318115053837

`A033309(n+1)+A008683(A020484(n²))`
-/

namespace A224891.P4809473318115053837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033309 (n + 1) + A008683 (A020484 (n ^ 2)).toNat

end

end A224891.P4809473318115053837

/-!
# A224892: Dirichlet g.f.: Product_{k>=2} (1 - 1/k^(s-1)).

The programs for A224892, there is no canonical definition to state claims against.
-/

/-! ## A224892.P2900051592111571372

`(n+1)*A114592(n+1)`
-/

namespace A224892.P2900051592111571372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A114592 (n + 1)

end

end A224892.P2900051592111571372

/-! ## A224892.P2682407445828867915

`(n+1)*A320836(A181819(n+1))`
-/

namespace A224892.P2682407445828867915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A320836 (A181819 (n + 1)).toNat

end

end A224892.P2682407445828867915

/-! ## A224892.P10076995479198876761

`(n+1)*A320836(∏{e}[n+1, A109611(#)])`
-/

namespace A224892.P10076995479198876761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A320836 (∏ p ∈ Nat.primeFactors (f1 n), A109611 (Nat.factorization (f1 n) p)).toNat

end

end A224892.P10076995479198876761

/-! ## A224892.P5209443053860728931

`(n+1)*∑{d}[n+1, A008683(#)*A114591((n+1)/#)]`
-/

namespace A224892.P5209443053860728931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A008683 d * A114591 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat)

end

end A224892.P5209443053860728931

/-! ## A224892.P3918150841356619754

`A114592(n+1)/(n+1)^A114592(A008578(n+1))`
-/

namespace A224892.P3918150841356619754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114592 (n + 1) : ℚ) / (n + 1 : ℚ) ^ (A114592 (A008578 (n + 1)).toNat : ℤ)

end

end A224892.P3918150841356619754

/-! ## A224892.P5185554541494903043

`(n+1)*A194511(A045778(n+1))^A215161(n+1)`
-/

namespace A224892.P5185554541494903043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A194511 (A045778 (n + 1)).toNat : ℚ) ^ (A215161 (n + 1) : ℤ)

end

end A224892.P5185554541494903043

/-! ## A224892.P8919532950222717741

`(n+1)*A320836(A344462(n+1)+1)`
-/

namespace A224892.P8919532950222717741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A320836 (A344462 (n + 1) + 1).toNat

end

end A224892.P8919532950222717741

/-! ## A224892.P7140664835427644408

`(A045778(n+1)-2*A347447(n+1))*(n+1)`
-/

namespace A224892.P7140664835427644408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A045778 (n + 1) - 2 * A347447 (n + 1)) * (n + 1 : ℤ)

end

end A224892.P7140664835427644408

/-! ## A224892.P14616090701987888333

`(n+1)*A320836(A000005(n+1)%A023096(n+5))`
-/

namespace A224892.P14616090701987888333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A320836 (Int.tmod (A000005 (n + 1)) (A023096 (n + 5))).toNat

end

end A224892.P14616090701987888333

/-!
# A224894: a(1) = 1, a(n+1) = smallest prime divisor of 1 + product of all the primes p <= a(n).

The programs for A224894, there is no canonical definition to state claims against.
-/

/-! ## A224894.P15410561656283258927

`∑[A325017(A239858(ceil(2^(n-1))))]`
-/

namespace A224894.P15410561656283258927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325017 (A239858 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224894.P15410561656283258927

/-! ## A224894.P14316146957048072555

`∩[A240556(n+1), A383399(n+1)]`
-/

namespace A224894.P14316146957048072555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224894.P14316146957048072555

/-!
# A224895: Let p = prime(n). Smallest odd number m > p such that m + p is semiprime.

The programs for A224895, there is no canonical definition to state claims against.
-/

/-! ## A224895.P9315185575630770943

`A210497(ceil(acot(n)+n))`
-/

namespace A224895.P9315185575630770943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210497 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

end

end A224895.P9315185575630770943

/-! ## A224895.P7112954001459107503

`A211280(ceil(acot(n)+n))`
-/

namespace A224895.P7112954001459107503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211280 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

end

end A224895.P7112954001459107503

/-! ## A224895.P7979929929273631101

`A210497(floor(acot(n))+n+1)`
-/

namespace A224895.P7979929929273631101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210497 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + (n + 1 : ℤ)).toNat

end

end A224895.P7979929929273631101

/-! ## A224895.P16131387590288282230

`A211280(floor(acot(n))+n+1)`
-/

namespace A224895.P16131387590288282230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211280 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + (n + 1 : ℤ)).toNat

end

end A224895.P16131387590288282230

/-! ## A224895.P3134689970654321615

`A210497(round(sqrt(n²+1))+1)`
-/

namespace A224895.P3134689970654321615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210497 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat

end

end A224895.P3134689970654321615

/-! ## A224895.P2265480782346244249

`A086799(A210497(n+1))`
-/

namespace A224895.P2265480782346244249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A210497 (n + 1)).toNat

end

end A224895.P2265480782346244249

/-! ## A224895.P335354606587299804

`A195159(A211280(n+1))`
-/

namespace A224895.P335354606587299804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195159 (A211280 (n + 1)).toNat

end

end A224895.P335354606587299804

/-! ## A224895.P13316553765032611560

`A211280(A054977(n)+n)`
-/

namespace A224895.P13316553765032611560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211280 (A054977 n + (n : ℤ)).toNat

end

end A224895.P13316553765032611560

/-! ## A224895.P3484970788130344750

`A161344(n+3)-A006005(n+1)`
-/

namespace A224895.P3484970788130344750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161344 (n + 3) - A006005 (n + 1)

end

end A224895.P3484970788130344750

/-! ## A224895.P7161532372703406135

`A196226(n+1)-A006005(n+1)`
-/

namespace A224895.P7161532372703406135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196226 (n + 1) - A006005 (n + 1)

end

end A224895.P7161532372703406135

/-!
# A224898: G.f.: Sum_{n>=0} (-1)^n* x^(n*(n+1)) / Product_{k=1..n} (1-x^k).

The programs for A224898, there is no canonical definition to state claims against.
-/

/-! ## A224898.P12426579011610832034

`A286744(n)-A286745(n)`
-/

namespace A224898.P12426579011610832034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286744 n - A286745 n

end

end A224898.P12426579011610832034

/-! ## A224898.P10705143932422574943

`2*A286744(n)-A003106(n)`
-/

namespace A224898.P10705143932422574943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286744 n - A003106 n

end

end A224898.P10705143932422574943

/-! ## A224898.P8947402979708666290

`A003106(n)-2*A286745(n)`
-/

namespace A224898.P8947402979708666290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 n - 2 * A286745 n

end

end A224898.P8947402979708666290

/-! ## A224898.P5931293262631465974

`A003113(n)-(A003114(n)+2*A286745(n))`
-/

namespace A224898.P5931293262631465974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003113 n - (A003114 n + 2 * A286745 n)

end

end A224898.P5931293262631465974

/-! ## A224898.P9852665586728204909

`A003114(n)-A003113(n)+2*A286744(n)`
-/

namespace A224898.P9852665586728204909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 n - A003113 n + 2 * A286744 n

end

end A224898.P9852665586728204909

/-! ## A224898.P8998998183353123229

`A003106(n)-A005843(A286745(n))`
-/

namespace A224898.P8998998183353123229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 n - A005843 (A286745 n).toNat

end

end A224898.P8998998183353123229

/-!
# A224899: E.g.f.: Sum_{n>=0} sinh(n*x)^n.

The programs for A224899, there is no canonical definition to state claims against.
-/

/-! ## A224899.P15100232401110887572

`A053756(Δ[A092254(n+1)]+1)`
-/

namespace A224899.P15100232401110887572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053756 (f1 (n + 1) - f1 n + 1).toNat

end

end A224899.P15100232401110887572

