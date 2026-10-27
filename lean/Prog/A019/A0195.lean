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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A019500: Number of 6-ary search trees on n keys.

The programs for A019500, there is no canonical definition to state claims against.
-/

/-! ## A019500.P9244060059152588833

`A028310(A229886(n+1))%A096526(n+1)`
-/

namespace A019500.P9244060059152588833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (A229886 (n + 1)).toNat) (A096526 (n + 1))

end

end A019500.P9244060059152588833

/-! ## A019500.P11260937718500462968

`C(n, 5)^Δ[C(n, floor(n/6))]`
-/

namespace A019500.P11260937718500462968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ⌊(n : ℚ) / 6⌋.toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 5 : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)

end

end A019500.P11260937718500462968

/-! ## A019500.P9145825565933104037

`C(∑[floor((n-1)/5)^(∑[n+2]-1)]+6, 5)`
-/

namespace A019500.P9145825565933104037
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊((n : ℤ) - 1 : ℚ) / 5⌋ : ℚ) ^ (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + 6)).toNat 5

end

end A019500.P9145825565933104037

/-! ## A019500.P9067997835839804995

`C(n, 5)^A007968(C(n, 5))`
-/

namespace A019500.P9067997835839804995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 5 : ℚ) ^ (A007968 (Nat.choose n 5) : ℤ)

end

end A019500.P9067997835839804995

/-! ## A019500.P5704880449791226140

`A000389(n)^Δ[C(n, floor(n/6))]`
-/

namespace A019500.P5704880449791226140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ⌊(n : ℚ) / 6⌋.toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000389 n : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)

end

end A019500.P5704880449791226140

/-!
# A019501: Number of 7-ary search trees on n keys.

The programs for A019501, there is no canonical definition to state claims against.
-/

/-! ## A019501.P2717271645016305349

`C(n, 6%A324166(n))`
-/

namespace A019501.P2717271645016305349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Int.tmod 6 (A324166 n)).toNat

end

end A019501.P2717271645016305349

/-! ## A019501.P7743405611323105124

`A233583(C(n, 6)+2)-1`
-/

namespace A019501.P7743405611323105124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (Nat.choose n 6 + 2) - 1

end

end A019501.P7743405611323105124

/-! ## A019501.P17104684720613914140

`A170770(C(n, 6))+C(n, 6)`
-/

namespace A019501.P17104684720613914140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170770 (Nat.choose n 6) + (Nat.choose n 6 : ℤ)

end

end A019501.P17104684720613914140

/-! ## A019501.P15822338061616116387

`A325336(C(n, 6))+C(n, 6)`
-/

namespace A019501.P15822338061616116387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325336 (Nat.choose n 6) + (Nat.choose n 6 : ℤ)

end

end A019501.P15822338061616116387

/-! ## A019501.P13612759174638602801

`A065475(A250283(n))`
-/

namespace A019501.P13612759174638602801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A250283 n).toNat

end

end A019501.P13612759174638602801

/-!
# A019503: Simplexity of the n-cube: minimal cardinality of triangulation of n-cube using n-simplices whose vertices are vertices of the n-cube.

The programs for A019503, there is no canonical definition to state claims against.
-/

/-! ## A019503.P9515834076039286263

`∪[A000108(A043550(3*n+1)), A166932(n+3)]`
-/

namespace A019503.P9515834076039286263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A043550 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166932 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A019503.P9515834076039286263

/-! ## A019503.P14858501106574397512

`A322058(A053311(n))`
-/

namespace A019503.P14858501106574397512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322058 (A053311 n).toNat

end

end A019503.P14858501106574397512

/-!
# A019504: Number of simplices in minimal corner-slicing triangulation of n-cube.

The programs for A019504, there is no canonical definition to state claims against.
-/

/-! ## A019504.P11142561894050801567

`∑[or(1, A323347((n-1)*2*n))]`
-/

namespace A019504.P11142561894050801567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A323347 (((n : ℤ) - 1) * (2 * n : ℤ)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019504.P11142561894050801567

/-! ## A019504.P1464872456068716306

`A185283(A217902(n))`
-/

namespace A019504.P1464872456068716306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A217902 n).toNat

end

end A019504.P1464872456068716306

/-!
# A019505: a(1)=1; for n > 1, a(n) is the smallest number with the same number of divisors as 2*a(n-1).

The programs for A019505, there is no canonical definition to state claims against.
-/

/-! ## A019505.P6090296131710242807

`A140635(2*a(n-1))` with `a(0)=1`
-/

namespace A019505.P6090296131710242807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A140635 (2 * a (n - 1)).toNat

end

end A019505.P6090296131710242807

/-! ## A019505.P11141125649331224858

`A061799(A020697(n+1))`
-/

namespace A019505.P11141125649331224858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A020697 (n + 1)).toNat

end

end A019505.P11141125649331224858

/-! ## A019505.P5129580055117576596

`A350049(n+1)`
-/

namespace A019505.P5129580055117576596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350049 (n + 1)

end

end A019505.P5129580055117576596

/-! ## A019505.P5845863937158332397

`lcm(A007318(n), A350049(Δ[n²]-n))`
-/

namespace A019505.P5845863937158332397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A350049 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A019505.P5845863937158332397

/-! ## A019505.P338669670651278205

`A007318(∑[n])*A350049(Δ[n²]-n)`
-/

namespace A019505.P338669670651278205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A350049 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

end

end A019505.P338669670651278205

/-!
# A019506: Hoax numbers: composite numbers whose digit-sum equals the sum of the digit-sums of its distinct prime factors.

The programs for A019506, the canonical program `A019506.P15594823480605419391` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019506 has offset 1).

The definition of A019506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A019506.P15594823480605419391

`record[A191558(A095405(n+9))]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A019506

/-- `record[A191558(A095405(n+9))]` -/
def P15594823480605419391.Spec : Prop :=
  ∀ n, P15594823480605419391.a n = A019506 (n + 1)

theorem P15594823480605419391.correct : P15594823480605419391.Spec := by
  intro n
  simp only [A019506, Nat.add_sub_cancel]

end A019506

/-! ## A019506.P8484918042610364921

`filter[A095405(n+1), A005171(#)]`
-/

namespace A019506.P8484918042610364921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A019506.P8484918042610364921

namespace A019506

/-- `filter[A095405(n+1), A005171(#)]` -/
def P8484918042610364921.Spec : Prop :=
  ∀ n, P8484918042610364921.a n = A019506 (n + 1)

end A019506

/-! ## A019506.P1290978568970232875

`filter[A095405(n+1), A066247(#)]`
-/

namespace A019506.P1290978568970232875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A019506.P1290978568970232875

namespace A019506

/-- `filter[A095405(n+1), A066247(#)]` -/
def P1290978568970232875.Spec : Prop :=
  ∀ n, P1290978568970232875.a n = A019506 (n + 1)

end A019506

/-! ## A019506.P11592022222064506715

`filter[A095405(n+1), A174898(#)]`
-/

namespace A019506.P11592022222064506715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A019506.P11592022222064506715

namespace A019506

/-- `filter[A095405(n+1), A174898(#)]` -/
def P11592022222064506715.Spec : Prop :=
  ∀ n, P11592022222064506715.a n = A019506 (n + 1)

end A019506

/-! ## A019506.P6264318007413082520

`filter[A095405(n+1), A202238(#)]`
-/

namespace A019506.P6264318007413082520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A019506.P6264318007413082520

namespace A019506

/-- `filter[A095405(n+1), A202238(#)]` -/
def P6264318007413082520.Spec : Prop :=
  ∀ n, P6264318007413082520.a n = A019506 (n + 1)

end A019506

/-! ## A019506.P4122346043399169942

`∩[A002808(n+1), A095405(n+1)]`
-/

namespace A019506.P4122346043399169942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019506.P4122346043399169942

namespace A019506

/-- `∩[A002808(n+1), A095405(n+1)]` -/
def P4122346043399169942.Spec : Prop :=
  ∀ n, (P4122346043399169942.a n : ℤ) = A019506 (n + 1)

end A019506

/-! ## A019506.P534984102238982313

`∩[A018252(n+1), A095405(n+1)]`
-/

namespace A019506.P534984102238982313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019506.P534984102238982313

namespace A019506

/-- `∩[A018252(n+1), A095405(n+1)]` -/
def P534984102238982313.Spec : Prop :=
  ∀ n, (P534984102238982313.a n : ℤ) = A019506 (n + 1)

end A019506

/-! ## A019506.P5467001242334929622

`∩[A056653(n+1), A095405(n+1)]`
-/

namespace A019506.P5467001242334929622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019506.P5467001242334929622

namespace A019506

/-- `∩[A056653(n+1), A095405(n+1)]` -/
def P5467001242334929622.Spec : Prop :=
  ∀ n, (P5467001242334929622.a n : ℤ) = A019506 (n + 1)

end A019506

/-! ## A019506.P16556214057728051965

`∩[A062973(n+1), A095405(n+1)]`
-/

namespace A019506.P16556214057728051965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019506.P16556214057728051965

namespace A019506

/-- `∩[A062973(n+1), A095405(n+1)]` -/
def P16556214057728051965.Spec : Prop :=
  ∀ n, (P16556214057728051965.a n : ℤ) = A019506 (n + 1)

end A019506

/-! ## A019506.P3208602462946007754

`∩[A095405(n+1), A138592(n+1)]`
-/

namespace A019506.P3208602462946007754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019506.P3208602462946007754

namespace A019506

/-- `∩[A095405(n+1), A138592(n+1)]` -/
def P3208602462946007754.Spec : Prop :=
  ∀ n, (P3208602462946007754.a n : ℤ) = A019506 (n + 1)

end A019506

/-! ## A019506.P8955611772666129974

`∩[A095405(n+1), A141468(n+1)]`
-/

namespace A019506.P8955611772666129974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019506.P8955611772666129974

namespace A019506

/-- `∩[A095405(n+1), A141468(n+1)]` -/
def P8955611772666129974.Spec : Prop :=
  ∀ n, (P8955611772666129974.a n : ℤ) = A019506 (n + 1)

end A019506

/-! ## A019506.P9092476946872703539

`∩[A095405(n+1), A193166(n+1)]`
-/

namespace A019506.P9092476946872703539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019506.P9092476946872703539

namespace A019506

/-- `∩[A095405(n+1), A193166(n+1)]` -/
def P9092476946872703539.Spec : Prop :=
  ∀ n, (P9092476946872703539.a n : ℤ) = A019506 (n + 1)

end A019506

/-! ## A019506.P4872012170381991176

`∩[A095405(n+1), A257586(n+1)]`
-/

namespace A019506.P4872012170381991176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019506.P4872012170381991176

namespace A019506

/-- `∩[A095405(n+1), A257586(n+1)]` -/
def P4872012170381991176.Spec : Prop :=
  ∀ n, (P4872012170381991176.a n : ℤ) = A019506 (n + 1)

end A019506

/-! ## A019506.P7867208105823932851

`∩[A095405(n+1), A343311(n+1)]`
-/

namespace A019506.P7867208105823932851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019506.P7867208105823932851

namespace A019506

/-- `∩[A095405(n+1), A343311(n+1)]` -/
def P7867208105823932851.Spec : Prop :=
  ∀ n, (P7867208105823932851.a n : ℤ) = A019506 (n + 1)

end A019506

/-! ## A019506.P16160102575435016568

`∩[A095405(n+1), A387319(n+1)]`
-/

namespace A019506.P16160102575435016568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019506.P16160102575435016568

namespace A019506

/-- `∩[A095405(n+1), A387319(n+1)]` -/
def P16160102575435016568.Spec : Prop :=
  ∀ n, (P16160102575435016568.a n : ℤ) = A019506 (n + 1)

end A019506

/-!
# A019508: X^m=X rings without normal forms: integers m > 1 for which there exist a prime p and integers a,b > 0 such that both p^a-1 and p^b-1 divide m-1 but p^lcm(a,b)-1 does not divide m-1.

The programs for A019508, there is no canonical definition to state claims against.
-/

/-! ## A019508.P7659994578147192155

`A143935(A066364(n+4)+A000040(n+1))`
-/

namespace A019508.P7659994578147192155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143935 (A066364 (n + 4) + A000040 (n + 1)).toNat

end

end A019508.P7659994578147192155

/-!
# A019509: Nim-values for the impartial game Take-a-Triangle.

The programs for A019509, there is no canonical definition to state claims against.
-/

/-! ## A019509.P14095008081781017808

`A247299(A004396(p?[A113581(n)]))`
-/

namespace A019509.P14095008081781017808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247299 (A004396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A019509.P14095008081781017808

/-! ## A019509.P10066085399237654866

`xor(A000035(A051122(n)), A163326(n))`
-/

namespace A019509.P10066085399237654866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (A051122 n).toNat) (A163326 n)

end

end A019509.P10066085399237654866

/-! ## A019509.P11106813039083083152

`xor(A163326(n), A264655(A000124(n)))`
-/

namespace A019509.P11106813039083083152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A163326 n) (A264655 (A000124 n).toNat)

end

end A019509.P11106813039083083152

/-! ## A019509.P8589926544134108936

`A339601(A024654(n)+12)`
-/

namespace A019509.P8589926544134108936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339601 (A024654 n + 12).toNat

end

end A019509.P8589926544134108936

/-! ## A019509.P9410905976383795473

`A240438(A299261(n))%4`
-/

namespace A019509.P9410905976383795473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240438 (A299261 n).toNat) 4

end

end A019509.P9410905976383795473

/-!
# A019510: a(n) = gcd( binomial(n+3, n) + binomial(n+4, n+1), binomial(n+5, n+2) ).

The programs for A019510, the canonical program `A019510.P11679685294636175852` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019510 has offset 1).

The definition of A019510 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(C(n+4, n+1)+C(n+5, n+2), C(n+6, n+3))` (program `A019510.P11679685294636175852`, by `A019510.P11679685294636175852.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A019510.P11679685294636175852

`gcd(C(n+4, n+1)+C(n+5, n+2), C(n+6, n+3))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019510

/-- `gcd(C(n+4, n+1)+C(n+5, n+2), C(n+6, n+3))` -/
def P11679685294636175852.Spec : Prop :=
  ∀ n, (P11679685294636175852.a n : ℤ) = A019510 (n + 1)

theorem P11679685294636175852.correct : P11679685294636175852.Spec := by
  intro n
  simp only [A019510, Nat.add_sub_cancel]

end A019510

/-! ## A019510.P10500728827413681268

`gcd(∑[(n+1)²]+5, ∑[n+2])`
-/

namespace A019510.P10500728827413681268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ j ∈ Finset.range (n + 1), f1 j + 5) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A019510.P10500728827413681268

namespace A019510

/-- `gcd(∑[(n+1)²]+5, ∑[n+2])` -/
def P10500728827413681268.Spec : Prop :=
  ∀ n, (P10500728827413681268.a n : ℤ) = A019510 (n + 1)

end A019510

/-! ## A019510.P14636193496720494910

`A026741(lcm(gcd(10, 1-n²), A051176(n+4)))`
-/

namespace A019510.P14636193496720494910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.lcm (Int.gcd 10 (1 - (n ^ 2 : ℤ)) : ℤ) (A051176 (n + 4)))

end

end A019510.P14636193496720494910

namespace A019510

/-- `A026741(lcm(gcd(10, 1-n²), A051176(n+4)))` -/
def P14636193496720494910.Spec : Prop :=
  ∀ n, P14636193496720494910.a n = A019510 (n + 1)

end A019510

/-! ## A019510.P11501629027654864983

`A026741(lcm(A051176(n+4), A283393(n)))`
-/

namespace A019510.P11501629027654864983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.lcm (A051176 (n + 4)) (A283393 n))

end

end A019510.P11501629027654864983

namespace A019510

/-- `A026741(lcm(A051176(n+4), A283393(n)))` -/
def P11501629027654864983.Spec : Prop :=
  ∀ n, P11501629027654864983.a n = A019510 (n + 1)

end A019510

/-!
# A019511: a(n+1) (n >= 1) is smallest number > a(n) which is the sum of cubes of distinct earlier terms.

The programs for A019511, there is no canonical definition to state claims against.
-/

/-! ## A019511.P14404823886700373467

`A293483(Δ[A056208(n)]²)`
-/

namespace A019511.P14404823886700373467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056208 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293483 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A019511.P14404823886700373467

/-!
# A019512: Expansion of 1/((1-4*x)*(1-7*x)*(1-8*x)).

The programs for A019512, the canonical program `A019512.P1583111463133559292` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019512 has offset 0).

The definition of A019512 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019512.P1583111463133559292

`15*a(n-1)-56*a(n-2)+4^n` with `a(0)=1, a(1)=19`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019512

/-- `15*a(n-1)-56*a(n-2)+4^n` -/
def P1583111463133559292.Spec : Prop :=
  ∀ n, P1583111463133559292.a n = A019512 n

theorem P1583111463133559292.correct : P1583111463133559292.Spec := by
  intro n
  simp only [A019512]

end A019512

/-! ## A019512.P5924661775191446105

`(3*8^(n+2)-4*7^(n+2)+4^(n+2))/12`
-/

namespace A019512.P5924661775191446105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 8 ^ (n + 2) : ℤ) - (4 * 7 ^ (n + 2) : ℤ) + (4 ^ (n + 2) : ℤ) : ℚ) / 12

end

end A019512.P5924661775191446105

namespace A019512

/-- `(3*8^(n+2)-4*7^(n+2)+4^(n+2))/12` -/
def P5924661775191446105.Spec : Prop :=
  ∀ n, P5924661775191446105.a n = (A019512 n : ℚ)

theorem P5924661775191446105.correct : P5924661775191446105.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A019512, Nat.add_sub_cancel, A019512.P5924661775191446105.a, A019512.P1583111463133559292.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A019512, Nat.add_sub_cancel, A019512.P5924661775191446105.a, A019512.P1583111463133559292.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A019512

/-! ## A019512.P3340721077470140985

`∑[A257288(n)]+4*a(n-1)` with `a(0)=1`
-/

namespace A019512.P3340721077470140985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257288 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4 * a (n - 1)

end

end A019512.P3340721077470140985

namespace A019512

/-- `∑[A257288(n)]+4*a(n-1)` -/
def P3340721077470140985.Spec : Prop :=
  ∀ n, P3340721077470140985.a n = A019512 n

end A019512

/-! ## A019512.P938051168390987044

`A016152(n+1)+7*a(n-1)` with `a(0)=1`
-/

namespace A019512.P938051168390987044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016152 (n + 1) + 7 * a (n - 1)

end

end A019512.P938051168390987044

namespace A019512

/-- `A016152(n+1)+7*a(n-1)` -/
def P938051168390987044.Spec : Prop :=
  ∀ n, P938051168390987044.a n = A019512 n

end A019512

/-! ## A019512.P9942367960903610268

`Δ[A016224(n)-A016223(n)]`
-/

namespace A019512.P9942367960903610268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016224 n - A016223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A019512.P9942367960903610268

namespace A019512

/-- `Δ[A016224(n)-A016223(n)]` -/
def P9942367960903610268.Spec : Prop :=
  ∀ n, P9942367960903610268.a n = A019512 n

end A019512

/-! ## A019512.P4920613334944970743

`A016152(n+2)-A016150(n+1)`
-/

namespace A019512.P4920613334944970743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016152 (n + 2) - A016150 (n + 1)

end

end A019512.P4920613334944970743

namespace A019512

/-- `A016152(n+2)-A016150(n+1)` -/
def P4920613334944970743.Spec : Prop :=
  ∀ n, P4920613334944970743.a n = A019512 n

end A019512

/-! ## A019512.P2335339500187840877

`2*A019613(n)-A019664(n)`
-/

namespace A019512.P2335339500187840877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019613 n - A019664 n

end

end A019512.P2335339500187840877

namespace A019512

/-- `2*A019613(n)-A019664(n)` -/
def P2335339500187840877.Spec : Prop :=
  ∀ n, P2335339500187840877.a n = A019512 n

end A019512

/-!
# A019514: a(n) = (n!)^3 + 1.

The programs for A019514, the canonical program `A019514.P10224047116372289714` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019514 has offset 0).

The definition of A019514 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!^3+1` (program `A019514.P10224047116372289714`, by `A019514.P10224047116372289714.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A019514.P10224047116372289714

`n!^3+1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019514

/-- `n!^3+1` -/
def P10224047116372289714.Spec : Prop :=
  ∀ n, (P10224047116372289714.a n : ℤ) = A019514 n

theorem P10224047116372289714.correct : P10224047116372289714.Spec := by
  intro n
  simp only [A019514]

end A019514

/-! ## A019514.P2878917165378363526

`1-(-n!)^3`
-/

namespace A019514.P2878917165378363526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (-(Nat.factorial n : ℤ)) ^ 3

end

end A019514.P2878917165378363526

namespace A019514

/-- `1-(-n!)^3` -/
def P2878917165378363526.Spec : Prop :=
  ∀ n, P2878917165378363526.a n = A019514 n

theorem P2878917165378363526.correct : P2878917165378363526.Spec := by
  intro n
  simp only [A019514, Nat.add_sub_cancel, A019514.P2878917165378363526.a, A019514.P10224047116372289714.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A019514

/-! ## A019514.P13915848057297247665

`root(n!, 1/3)+1`
-/

namespace A019514.P13915848057297247665
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℝ) ^ (1 / ((1 : ℚ) / 3 : ℝ)) + 1

end

end A019514.P13915848057297247665

namespace A019514

/-- `root(n!, 1/3)+1` -/
def P13915848057297247665.Spec : Prop :=
  ∀ n, P13915848057297247665.a n = (A019514 n : ℝ)

theorem P13915848057297247665.correct : P13915848057297247665.Spec := by
  intro n
  simp only [A019514, Nat.add_sub_cancel, A019514.P13915848057297247665.a, A019514.P10224047116372289714.a, SequenceMachineLib.memo_apply]
  try simp

end A019514

/-! ## A019514.P3471658692524592467

`or(2, n!^3)-1`
-/

namespace A019514.P3471658692524592467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (Nat.factorial n ^ 3) : ℤ) - 1

end

end A019514.P3471658692524592467

namespace A019514

/-- `or(2, n!^3)-1` -/
def P3471658692524592467.Spec : Prop :=
  ∀ n, P3471658692524592467.a n = A019514 n

end A019514

/-! ## A019514.P7549188699125020198

`xor(2, n!^3)-1`
-/

namespace A019514.P7549188699125020198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (Nat.factorial n ^ 3) : ℤ) - 1

end

end A019514.P7549188699125020198

namespace A019514

/-- `xor(2, n!^3)-1` -/
def P7549188699125020198.Spec : Prop :=
  ∀ n, P7549188699125020198.a n = A019514 n

end A019514

/-!
# A019515: a(n) = 1 + 0!*1!*2!*...*n!.

The programs for A019515, the canonical program `A019515.P7237518338830127336` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019515 has offset 0).

The definition of A019515 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019515.P7237518338830127336

`A000178(n)+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A019515

/-- `A000178(n)+1` -/
def P7237518338830127336.Spec : Prop :=
  ∀ n, P7237518338830127336.a n = A019515 n

theorem P7237518338830127336.correct : P7237518338830127336.Spec := by
  intro n
  simp only [A019515]

end A019515

/-! ## A019515.P5546625653051354154

`∏[n!]+1`
-/

namespace A019515.P5546625653051354154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A019515.P5546625653051354154

namespace A019515

/-- `∏[n!]+1` -/
def P5546625653051354154.Spec : Prop :=
  ∀ n, (P5546625653051354154.a n : ℤ) = A019515 n

end A019515

/-! ## A019515.P8128336888004065508

`exp(∑[log(n!)])+1`
-/

namespace A019515.P8128336888004065508
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (Nat.factorial n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A019515.P8128336888004065508

namespace A019515

/-- `exp(∑[log(n!)])+1` -/
def P8128336888004065508.Spec : Prop :=
  ∀ n, P8128336888004065508.a n = (A019515 n : ℝ)

end A019515

/-! ## A019515.P766376354086921216

`abs(xor(-1, ∏[n!]))`
-/

namespace A019515.P766376354086921216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A019515.P766376354086921216

namespace A019515

/-- `abs(xor(-1, ∏[n!]))` -/
def P766376354086921216.Spec : Prop :=
  ∀ n, P766376354086921216.a n = A019515 n

end A019515

/-! ## A019515.P17740697083544370590

`-xor(-1, ∏[n!])`
-/

namespace A019515.P17740697083544370590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A019515.P17740697083544370590

namespace A019515

/-- `-xor(-1, ∏[n!])` -/
def P17740697083544370590.Spec : Prop :=
  ∀ n, P17740697083544370590.a n = A019515 n

end A019515

/-!
# A019518: Smarandache-Wellin numbers: a(n) is the concatenation of first n primes (written in base 10).

The programs for A019518, there is no canonical definition to state claims against.
-/

/-! ## A019518.P14173254844700552702

`A074366(n+1)-A074366(n+1)%A074809(n+1)`
-/

namespace A019518.P14173254844700552702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074366 (n + 1) - Int.tmod (A074366 (n + 1)) (A074809 (n + 1))

end

end A019518.P14173254844700552702

/-! ## A019518.P11001110715260775155

`A048794(∑[A061286(n+1)])`
-/

namespace A019518.P11001110715260775155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A019518.P11001110715260775155

/-!
# A019519: Concatenate odd numbers.

The programs for A019519, there is no canonical definition to state claims against.
-/

/-! ## A019519.P11781721231067205937

`A048794(∑[4^n])`
-/

namespace A019519.P11781721231067205937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A019519.P11781721231067205937

/-! ## A019519.P3091601150125418350

`record[A048794(∑{d}[2^val(n+1, 2), #²])]`
-/

namespace A019519.P3091601150125418350
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (∑ d ∈ Nat.divisors (f2 n), d ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019519.P3091601150125418350

/-! ## A019519.P17190189680790173093

`record[A048794(A130329(n))]`
-/

namespace A019519.P17190189680790173093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (A130329 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019519.P17190189680790173093

/-!
# A019520: a(n) is the concatenation of the first n positive even numbers.

The programs for A019520, there is no canonical definition to state claims against.
-/

/-! ## A019520.P12479967894715179644

`A048794(∑[2*4^n])`
-/

namespace A019520.P12479967894715179644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A019520.P12479967894715179644

/-! ## A019520.P15447747112184547615

`record[A048794(2*A130329(n))]`
-/

namespace A019520.P15447747112184547615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (2 * A130329 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019520.P15447747112184547615

/-!
# A019523: Concatenation of Fibonacci(1) through Fibonacci(n).

The programs for A019523, the canonical program `A019523.P11857034925577887048` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019523 has offset 1).

The definition of A019523 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019523.P11857034925577887048

`a(n-1)*10^A055642(A000045(n+1))+A000045(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A019523

/-- `a(n-1)*10^A055642(A000045(n+1))+A000045(n+1)` -/
def P11857034925577887048.Spec : Prop :=
  ∀ n, P11857034925577887048.a n = (A019523 (n + 1) : ℚ)

end A019523

/-! ## A019523.P2830946328065709497

`A000027(A094704(n+1))`
-/

namespace A019523.P2830946328065709497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A094704 (n + 1)).toNat

end

end A019523.P2830946328065709497

namespace A019523

/-- `A000027(A094704(n+1))` -/
def P2830946328065709497.Spec : Prop :=
  ∀ n, P2830946328065709497.a n = A019523 (n + 1)

end A019523

/-!
# A019524: Duplicate terms of A007908.

The programs for A019524, the canonical program `A019524.P15401352265773152237` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019524 has offset 1).

The definition of A019524 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058183, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A019524.P15401352265773152237

`A007908(n+1)*(1+10^A058183(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A019524

/-- `A007908(n+1)*(1+10^A058183(n+1))` -/
def P15401352265773152237.Spec : Prop :=
  ∀ n, P15401352265773152237.a n = (A019524 (n + 1) : ℚ)

end A019524

/-! ## A019524.P11720576203915530531

`A259937(n+1)-A019566(n+1)`
-/

namespace A019524.P11720576203915530531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259937 (n + 1) - A019566 (n + 1)

end

end A019524.P11720576203915530531

namespace A019524

/-- `A259937(n+1)-A019566(n+1)` -/
def P11720576203915530531.Spec : Prop :=
  ∀ n, P11720576203915530531.a n = A019524 (n + 1)

end A019524

/-! ## A019524.P13920448764110342706

`A000533(A058183(n+1))*A007908(n+1)`
-/

namespace A019524.P13920448764110342706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000533 (A058183 (n + 1)).toNat * A007908 (n + 1)

end

end A019524.P13920448764110342706

namespace A019524

/-- `A000533(A058183(n+1))*A007908(n+1)` -/
def P13920448764110342706.Spec : Prop :=
  ∀ n, P13920448764110342706.a n = A019524 (n + 1)

end A019524

/-! ## A019524.P2993990128350862336

`A000533(lt[A131575(n), 9]+1)*A007908(n+1)`
-/

namespace A019524.P2993990128350862336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000533 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) * A007908 (n + 1)

end

end A019524.P2993990128350862336

namespace A019524

/-- `A000533(lt[A131575(n), 9]+1)*A007908(n+1)` -/
def P2993990128350862336.Spec : Prop :=
  ∀ n, P2993990128350862336.a n = A019524 (n + 1)

end A019524

/-! ## A019524.P9075894061402458343

`A000533(lt[A285311(n), n+1])*A007908(n+1)`
-/

namespace A019524.P9075894061402458343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285311 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000533 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) * A007908 (n + 1)

end

end A019524.P9075894061402458343

namespace A019524

/-- `A000533(lt[A285311(n), n+1])*A007908(n+1)` -/
def P9075894061402458343.Spec : Prop :=
  ∀ n, P9075894061402458343.a n = A019524 (n + 1)

end A019524

/-!
# A019525: Poincaré series [or Poincare series] for depths of roots in a certain root system.

The programs for A019525, the canonical program `A019525.P346191500954382354` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019525 has offset 1).

The definition of A019525 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019525.P346191500954382354

`2*a(n-1)+2*a(n-2)-3*a(n-3)` with `a(0)=2, a(1)=3, a(2)=6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019525

/-- `2*a(n-1)+2*a(n-2)-3*a(n-3)` -/
def P346191500954382354.Spec : Prop :=
  ∀ n, P346191500954382354.a n = A019525 (n + 1)

theorem P346191500954382354.correct : P346191500954382354.Spec := by
  intro n
  simp only [A019525, Nat.add_sub_cancel]

end A019525

/-! ## A019525.P8129600443389447998

`∑[ogf((-2+x+4x^2)/(-1+x+3x^2))]`
-/

namespace A019525.P8129600443389447998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, -4] [1, -1, -3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019525.P8129600443389447998

namespace A019525

/-- `∑[ogf((-2+x+4x^2)/(-1+x+3x^2))]` -/
def P8129600443389447998.Spec : Prop :=
  ∀ n, P8129600443389447998.a n = A019525 (n + 1)

end A019525

/-! ## A019525.P12890198059985900018

`ogf((-2+x+4x^2)/(-1+2x+2x^2-3x^3))`
-/

namespace A019525.P12890198059985900018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, -4] [1, -2, -2, 3] n

end

end A019525.P12890198059985900018

namespace A019525

/-- `ogf((-2+x+4x^2)/(-1+2x+2x^2-3x^3))` -/
def P12890198059985900018.Spec : Prop :=
  ∀ n, P12890198059985900018.a n = A019525 (n + 1)

end A019525

/-! ## A019525.P8300622586163274791

`a(n-1)+3*(a(n-2)-1)` with `a(0)=2, a(1)=3`
-/

namespace A019525.P8300622586163274791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) + 3 * (a (n - 2) - 1)

end

end A019525.P8300622586163274791

namespace A019525

/-- `a(n-1)+3*(a(n-2)-1)` -/
def P8300622586163274791.Spec : Prop :=
  ∀ n, P8300622586163274791.a n = A019525 (n + 1)

end A019525

/-! ## A019525.P13391046061396614930

`a(n-1)-3*(1-a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A019525.P13391046061396614930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) - 3 * (1 - a (n - 2))

end

end A019525.P13391046061396614930

namespace A019525

/-- `a(n-1)-3*(1-a(n-2))` -/
def P13391046061396614930.Spec : Prop :=
  ∀ n, P13391046061396614930.a n = A019525 (n + 1)

end A019525

/-! ## A019525.P4213447347042020499

`a(n-1)+a(n-2)+a(n-2)+a(n-2)-3` with `a(0)=2, a(1)=3`
-/

namespace A019525.P4213447347042020499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) + (a (n - 2) - 3)))

end

end A019525.P4213447347042020499

namespace A019525

/-- `a(n-1)+a(n-2)+a(n-2)+a(n-2)-3` -/
def P4213447347042020499.Spec : Prop :=
  ∀ n, P4213447347042020499.a n = A019525 (n + 1)

end A019525

/-! ## A019525.P14308192307640595506

`a(n-1)-(3-a(n-2)-a(n-2)-a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A019525.P14308192307640595506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) - (3 - a (n - 2) - a (n - 2) - a (n - 2))

end

end A019525.P14308192307640595506

namespace A019525

/-- `a(n-1)-(3-a(n-2)-a(n-2)-a(n-2))` -/
def P14308192307640595506.Spec : Prop :=
  ∀ n, P14308192307640595506.a n = A019525 (n + 1)

end A019525

/-! ## A019525.P10444847466106935519

`A006138(n)+1`
-/

namespace A019525.P10444847466106935519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006138 n + 1

end

end A019525.P10444847466106935519

namespace A019525

/-- `A006138(n)+1` -/
def P10444847466106935519.Spec : Prop :=
  ∀ n, P10444847466106935519.a n = A019525 (n + 1)

end A019525

/-! ## A019525.P8971911360520830526

`∑[A105476(n)]+1`
-/

namespace A019525.P8971911360520830526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A019525.P8971911360520830526

namespace A019525

/-- `∑[A105476(n)]+1` -/
def P8971911360520830526.Spec : Prop :=
  ∀ n, P8971911360520830526.a n = A019525 (n + 1)

end A019525

/-! ## A019525.P1476251467924453981

`A006130(n)+abs(A182228(n))+1`
-/

namespace A019525.P1476251467924453981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 n + (|A182228 n| + 1)

end

end A019525.P1476251467924453981

namespace A019525

/-- `A006130(n)+abs(A182228(n))+1` -/
def P1476251467924453981.Spec : Prop :=
  ∀ n, P1476251467924453981.a n = A019525 (n + 1)

end A019525

/-! ## A019525.P6596207002416097844

`abs(Δ[A182228(n)])+1`
-/

namespace A019525.P6596207002416097844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182228 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| + 1

end

end A019525.P6596207002416097844

namespace A019525

/-- `abs(Δ[A182228(n)])+1` -/
def P6596207002416097844.Spec : Prop :=
  ∀ n, P6596207002416097844.a n = A019525 (n + 1)

end A019525

/-! ## A019525.P1785219476941176997

`A288309(n)-A099232(n)`
-/

namespace A019525.P1785219476941176997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288309 n - A099232 n

end

end A019525.P1785219476941176997

namespace A019525

/-- `A288309(n)-A099232(n)` -/
def P1785219476941176997.Spec : Prop :=
  ∀ n, P1785219476941176997.a n = A019525 (n + 1)

end A019525

/-! ## A019525.P9997711414054673374

`A228661(n+1)+1-A052533(n)`
-/

namespace A019525.P9997711414054673374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228661 (n + 1) + (1 - A052533 n)

end

end A019525.P9997711414054673374

namespace A019525

/-- `A228661(n+1)+1-A052533(n)` -/
def P9997711414054673374.Spec : Prop :=
  ∀ n, P9997711414054673374.a n = A019525 (n + 1)

end A019525

/-! ## A019525.P3258613450568340867

`A105476(n+2)/3+1`
-/

namespace A019525.P3258613450568340867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105476 (n + 2) : ℚ) / 3 + 1

end

end A019525.P3258613450568340867

namespace A019525

/-- `A105476(n+2)/3+1` -/
def P3258613450568340867.Spec : Prop :=
  ∀ n, P3258613450568340867.a n = (A019525 (n + 1) : ℚ)

end A019525

/-! ## A019525.P7906998303916534656

`A124959(A000096(n))+1`
-/

namespace A019525.P7906998303916534656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124959 (A000096 n).toNat + 1

end

end A019525.P7906998303916534656

namespace A019525

/-- `A124959(A000096(n))+1` -/
def P7906998303916534656.Spec : Prop :=
  ∀ n, P7906998303916534656.a n = A019525 (n + 1)

end A019525

/-!
# A019526: Poincaré series [or Poincare series] for depths of roots in a certain root system.

The programs for A019526, the canonical program `A019526.P16934594003973705152` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019526 has offset 1).

The definition of A019526 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019526.P16934594003973705152

`2*a(n-1)-a(n-5)` with `a(0)=4, a(1)=5, a(2)=8, a(3)=13, a(4)=24`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019526

/-- `2*a(n-1)-a(n-5)` -/
def P16934594003973705152.Spec : Prop :=
  ∀ n, P16934594003973705152.a n = A019526 (n + 1)

theorem P16934594003973705152.correct : P16934594003973705152.Spec := by
  intro n
  simp only [A019526, Nat.add_sub_cancel]

end A019526

/-! ## A019526.P12101471149161191955

`A001630(n+3)+2-A000078(n)`
-/

namespace A019526.P12101471149161191955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001630 (n + 3) + (2 - A000078 n)

end

end A019526.P12101471149161191955

namespace A019526

/-- `A001630(n+3)+2-A000078(n)` -/
def P12101471149161191955.Spec : Prop :=
  ∀ n, P12101471149161191955.a n = A019526 (n + 1)

end A019526

/-! ## A019526.P5740525347827775359

`A000078(n+3)+A001631(n+4)+2`
-/

namespace A019526.P5740525347827775359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 3) + (A001631 (n + 4) + 2)

end

end A019526.P5740525347827775359

namespace A019526

/-- `A000078(n+3)+A001631(n+4)+2` -/
def P5740525347827775359.Spec : Prop :=
  ∀ n, P5740525347827775359.a n = A019526 (n + 1)

end A019526

/-! ## A019526.P420579059035130060

`2-A000078(n)+A000078(n+3)+A000078(n+4)`
-/

namespace A019526.P420579059035130060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000078 n + (A000078 (n + 3) + A000078 (n + 4))

end

end A019526.P420579059035130060

namespace A019526

/-- `2-A000078(n)+A000078(n+3)+A000078(n+4)` -/
def P420579059035130060.Spec : Prop :=
  ∀ n, P420579059035130060.a n = A019526 (n + 1)

end A019526

/-! ## A019526.P9094680636184318509

`A001631(n+6)-2*A089074(n)`
-/

namespace A019526.P9094680636184318509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 (n + 6) - 2 * A089074 n

end

end A019526.P9094680636184318509

namespace A019526

/-- `A001631(n+6)-2*A089074(n)` -/
def P9094680636184318509.Spec : Prop :=
  ∀ n, P9094680636184318509.a n = A019526 (n + 1)

end A019526

/-! ## A019526.P7417156639673514972

`A001631(n+6)+2-A135492(n+1)`
-/

namespace A019526.P7417156639673514972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 (n + 6) + (2 - A135492 (n + 1))

end

end A019526.P7417156639673514972

namespace A019526

/-- `A001631(n+6)+2-A135492(n+1)` -/
def P7417156639673514972.Spec : Prop :=
  ∀ n, P7417156639673514972.a n = A019526 (n + 1)

end A019526

/-! ## A019526.P17499994747163692449

`A000288(n+4)+2-A001631(n+5)`
-/

namespace A019526.P17499994747163692449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 (n + 4) + (2 - A001631 (n + 5))

end

end A019526.P17499994747163692449

namespace A019526

/-- `A000288(n+4)+2-A001631(n+5)` -/
def P17499994747163692449.Spec : Prop :=
  ∀ n, P17499994747163692449.a n = A019526 (n + 1)

end A019526

/-!
# A019527: Poincaré series [or Poincare series] for depths of roots in a certain root system.

The programs for A019527, the canonical program `A019527.P2824217214792039722` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019527 has offset 1).

The definition of A019527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019527.P2824217214792039722

`a(n-1)+a(n-3)-2` with `a(0)=4, a(1)=4, a(2)=5, a(3)=6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019527

/-- `a(n-1)+a(n-3)-2` -/
def P2824217214792039722.Spec : Prop :=
  ∀ n, P2824217214792039722.a n = A019527 (n + 1)

theorem P2824217214792039722.correct : P2824217214792039722.Spec := by
  intro n
  simp only [A019527, Nat.add_sub_cancel]

end A019527

/-! ## A019527.P138370505654617210

`a(n-1)-(2-a(n-3))` with `a(0)=4, a(1)=4, a(2)=5, a(3)=6`
-/

namespace A019527.P138370505654617210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 4, 5, 6] fun n a =>
  a (n - 1) - (2 - a (n - 3))

end

end A019527.P138370505654617210

namespace A019527

/-- `a(n-1)-(2-a(n-3))` -/
def P138370505654617210.Spec : Prop :=
  ∀ n, P138370505654617210.a n = A019527 (n + 1)

theorem P138370505654617210.correct : P138370505654617210.Spec := by
  intro n
  simp only [A019527, Nat.add_sub_cancel, A019527.P138370505654617210.a, A019527.P2824217214792039722.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A019527

/-! ## A019527.P4554071288215473093

`A000930(n+2)+floor(acot(n))+2`
-/

namespace A019527.P4554071288215473093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 2) + (⌊SequenceMachineLib.acot (n : ℝ)⌋ + 2)

end

end A019527.P4554071288215473093

namespace A019527

/-- `A000930(n+2)+floor(acot(n))+2` -/
def P4554071288215473093.Spec : Prop :=
  ∀ n, P4554071288215473093.a n = A019527 (n + 1)

end A019527

/-! ## A019527.P15061801005359044199

`A068921(A233583(n+2))+2`
-/

namespace A019527.P15061801005359044199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (A233583 (n + 2)).toNat + 2

end

end A019527.P15061801005359044199

namespace A019527

/-- `A068921(A233583(n+2))+2` -/
def P15061801005359044199.Spec : Prop :=
  ∀ n, P15061801005359044199.a n = A019527 (n + 1)

end A019527

/-! ## A019527.P4054018272463142569

`A068921(A243427(n+1)-2)+2`
-/

namespace A019527.P4054018272463142569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (A243427 (n + 1) - 2).toNat + 2

end

end A019527.P4054018272463142569

namespace A019527

/-- `A068921(A243427(n+1)-2)+2` -/
def P4054018272463142569.Spec : Prop :=
  ∀ n, P4054018272463142569.a n = A019527 (n + 1)

end A019527

/-! ## A019527.P13451120434905630022

`A000007(n)+A068921(n+1)+2`
-/

namespace A019527.P13451120434905630022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A068921 (n + 1) + 2)

end

end A019527.P13451120434905630022

namespace A019527

/-- `A000007(n)+A068921(n+1)+2` -/
def P13451120434905630022.Spec : Prop :=
  ∀ n, P13451120434905630022.a n = A019527 (n + 1)

end A019527

/-! ## A019527.P8557493958924431531

`A000930(A000007(n)+2+n)+2`
-/

namespace A019527.P8557493958924431531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (A000007 n + 2 + (n : ℤ)).toNat + 2

end

end A019527.P8557493958924431531

namespace A019527

/-- `A000930(A000007(n)+2+n)+2` -/
def P8557493958924431531.Spec : Prop :=
  ∀ n, P8557493958924431531.a n = A019527 (n + 1)

end A019527

/-! ## A019527.P17166616758433922956

`A023435(abs(1-n))+A023435(n)+3`
-/

namespace A019527.P17166616758433922956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023435 |1 - (n : ℤ)|.toNat + A023435 n + 3

end

end A019527.P17166616758433922956

namespace A019527

/-- `A023435(abs(1-n))+A023435(n)+3` -/
def P17166616758433922956.Spec : Prop :=
  ∀ n, P17166616758433922956.a n = A019527 (n + 1)

end A019527

/-! ## A019527.P2631796209523047361

`A068921(n)+A068921(A289207(n))+2`
-/

namespace A019527.P2631796209523047361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 n + (A068921 (A289207 n).toNat + 2)

end

end A019527.P2631796209523047361

namespace A019527

/-- `A068921(n)+A068921(A289207(n))+2` -/
def P2631796209523047361.Spec : Prop :=
  ∀ n, P2631796209523047361.a n = A019527 (n + 1)

end A019527

/-! ## A019527.P6582494592321070370

`A068921(n+1)+A000040(A014973(A285669(n+1)+1))`
-/

namespace A019527.P6582494592321070370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (n + 1) + A000040 (A014973 (A285669 (n + 1) + 1).toNat).toNat

end

end A019527.P6582494592321070370

namespace A019527

/-- `A068921(n+1)+A000040(A014973(A285669(n+1)+1))` -/
def P6582494592321070370.Spec : Prop :=
  ∀ n, P6582494592321070370.a n = A019527 (n + 1)

end A019527

/-! ## A019527.P5219184827390254784

`Δ[A128424(n+3)]+2`
-/

namespace A019527.P5219184827390254784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128424 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A019527.P5219184827390254784

namespace A019527

/-- `Δ[A128424(n+3)]+2` -/
def P5219184827390254784.Spec : Prop :=
  ∀ n, P5219184827390254784.a n = A019527 (n + 1)

end A019527

/-! ## A019527.P17188973315645874550

`Δ[sqrt(A207170(n+1))]+2`
-/

namespace A019527.P17188973315645874550
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207170 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A019527.P17188973315645874550

namespace A019527

/-- `Δ[sqrt(A207170(n+1))]+2` -/
def P17188973315645874550.Spec : Prop :=
  ∀ n, P17188973315645874550.a n = (A019527 (n + 1) : ℝ)

end A019527

/-! ## A019527.P6727323435082254950

`A000930(A029635(∑[n])+1+n)+2`
-/

namespace A019527.P6727323435082254950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (A029635 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 + (n : ℤ)).toNat + 2

end

end A019527.P6727323435082254950

namespace A019527

/-- `A000930(A029635(∑[n])+1+n)+2` -/
def P6727323435082254950.Spec : Prop :=
  ∀ n, P6727323435082254950.a n = A019527 (n + 1)

end A019527

/-!
# A019528: Poincaré series [or Poincare series] for depths of roots in a certain root system.

The programs for A019528, there is no canonical definition to state claims against.
-/

/-! ## A019528.P6682184215875979382

`A172471(A026597(n)+1)+3`
-/

namespace A019528.P6682184215875979382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A026597 n + 1).toNat + 3

end

end A019528.P6682184215875979382

/-! ## A019528.P1909976357376175395

`A133196(4*A182053(n))`
-/

namespace A019528.P1909976357376175395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133196 (4 * A182053 n).toNat

end

end A019528.P1909976357376175395

/-! ## A019528.P5043402916575281429

`A133196(5*A001006(n))`
-/

namespace A019528.P5043402916575281429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133196 (5 * A001006 n).toNat

end

end A019528.P5043402916575281429

/-! ## A019528.P14390509460596528812

`A003057(A178035(n)+7)`
-/

namespace A019528.P14390509460596528812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A178035 n + 7).toNat

end

end A019528.P14390509460596528812

/-! ## A019528.P16909030948620055320

`A002024(A054192(n)+12)`
-/

namespace A019528.P16909030948620055320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A054192 n + 12).toNat

end

end A019528.P16909030948620055320

/-!
# A019529: Sum of a(n) terms of 1/sqrt(k) first strictly exceeds n.

The programs for A019529, there is no canonical definition to state claims against.
-/

/-! ## A019529.P4188650367849582923

`A054040(round(sqrt(n²+1)))+char[1]`
-/

namespace A019529.P4188650367849582923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054040 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A019529.P4188650367849582923

/-! ## A019529.P17920941772550606417

`∪[A054040(n+1), A109119(n)]`
-/

namespace A019529.P17920941772550606417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109119 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A019529.P17920941772550606417

/-! ## A019529.P8810933097824618258

`∪[A054040(n+1), A141130(n)]`
-/

namespace A019529.P8810933097824618258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141130 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A019529.P8810933097824618258

/-! ## A019529.P5373102825692545365

`∪[A054040(n+1), A150322(n)]`
-/

namespace A019529.P5373102825692545365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150322 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A019529.P5373102825692545365

/-! ## A019529.P10474604625388864496

`∪[A054040(n+1), A150629(n)]`
-/

namespace A019529.P10474604625388864496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150629 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A019529.P10474604625388864496

/-! ## A019529.P16822862575890794110

`∪[A004813(n+1), A054040(n+1)]`
-/

namespace A019529.P16822862575890794110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A019529.P16822862575890794110

/-! ## A019529.P10043545294401721144

`∪[A006935(n+1), A054040(n+1)]`
-/

namespace A019529.P10043545294401721144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A019529.P10043545294401721144

/-! ## A019529.P14464092423090090386

`∪[A007352(n+1), A054040(n+1)]`
-/

namespace A019529.P14464092423090090386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A019529.P14464092423090090386

/-! ## A019529.P1013092380453614698

`∪[A023328(n+1), A054040(n+1)]`
-/

namespace A019529.P1013092380453614698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A019529.P1013092380453614698

/-! ## A019529.P2409531657142380682

`∪[A030462(n+1), A054040(n+1)]`
-/

namespace A019529.P2409531657142380682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A019529.P2409531657142380682

/-!
# A019530: Smallest number m such that m^m is divisible by n.

The programs for A019530, there is no canonical definition to state claims against.
-/

/-! ## A019530.P12096422656370703651

`A066069(n+1)%(n+1)²`
-/

namespace A019530.P12096422656370703651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066069 (n + 1)) ((n + 1) ^ 2 : ℤ)

end

end A019530.P12096422656370703651

/-! ## A019530.P17877154992260255804

`A087156(A066069(n+1))`
-/

namespace A019530.P17877154992260255804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A066069 (n + 1)).toNat

end

end A019530.P17877154992260255804

/-! ## A019530.P3970691539217192685

`A066069(n+1)-A000007(n)`
-/

namespace A019530.P3970691539217192685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066069 (n + 1) - A000007 n

end

end A019530.P3970691539217192685

/-! ## A019530.P11720406138673995780

`A057427(n)*A066069(n+1)`
-/

namespace A019530.P11720406138673995780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A066069 (n + 1)

end

end A019530.P11720406138673995780

/-! ## A019530.P13338753508767678331

`and(A057428(n), A066069(n+1))`
-/

namespace A019530.P13338753508767678331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A066069 (n + 1))

end

end A019530.P13338753508767678331

/-! ## A019530.P17590208734574596529

`A066069(n+1)-A327170(2*n+1)`
-/

namespace A019530.P17590208734574596529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066069 (n + 1) - A327170 (2 * n + 1)

end

end A019530.P17590208734574596529

/-! ## A019530.P15579681343075014835

`A066069(n+1)-C(2, A066080(n+1))`
-/

namespace A019530.P15579681343075014835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066069 (n + 1) - (Nat.choose 2 (A066080 (n + 1)).toNat : ℤ)

end

end A019530.P15579681343075014835

/-! ## A019530.P11583732335987901792

`A051903(A007947(n+1))*A066069(n+1)`
-/

namespace A019530.P11583732335987901792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A007947 (n + 1)).toNat * A066069 (n + 1)

end

end A019530.P11583732335987901792

/-! ## A019530.P7739363894064294129

`A066069(n+1)-C(A014963(n+1), A066069(n+1)²)`
-/

namespace A019530.P7739363894064294129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066069 (n + 1) - (Nat.choose (A014963 (n + 1)).toNat (A066069 (n + 1) ^ 2).toNat : ℤ)

end

end A019530.P7739363894064294129

/-! ## A019530.P10573297342636844741

`A000007(A000007(n)*A066069(n+1))*A066069(n+1)`
-/

namespace A019530.P10573297342636844741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A000007 n * A066069 (n + 1)).toNat * A066069 (n + 1)

end

end A019530.P10573297342636844741

/-! ## A019530.P17227701804220689896

`C(A066069(n+1), A014963(A066080(n+1)))`
-/

namespace A019530.P17227701804220689896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A066069 (n + 1)).toNat (A014963 (A066080 (n + 1)).toNat).toNat

end

end A019530.P17227701804220689896

/-! ## A019530.P8834112966224500311

`A066069(n+1)-A090192(A066069(n+1))*A090192(n)`
-/

namespace A019530.P8834112966224500311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066069 (n + 1) - A090192 (A066069 (n + 1)).toNat * A090192 n

end

end A019530.P8834112966224500311

/-! ## A019530.P3385923408620849598

`and(A066069(n+1), A088041(n+1))`
-/

namespace A019530.P3385923408620849598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066069 (n + 1)) (A088041 (n + 1))

end

end A019530.P3385923408620849598

/-! ## A019530.P17520233503194778854

`and(A066069(n+1), A118883(n+1))`
-/

namespace A019530.P17520233503194778854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066069 (n + 1)) (A118883 (n + 1))

end

end A019530.P17520233503194778854

/-! ## A019530.P12877192749184360850

`and(A066069(n+1), A087522(n))`
-/

namespace A019530.P12877192749184360850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066069 (n + 1)) (A087522 n)

end

end A019530.P12877192749184360850

/-! ## A019530.P17471754199370934164

`and(A066069(n+1), A127582(n))`
-/

namespace A019530.P17471754199370934164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066069 (n + 1)) (A127582 n)

end

end A019530.P17471754199370934164

/-! ## A019530.P13619108729445020009

`and(A066069(n+1), A087323(A066069(n+1)-1))`
-/

namespace A019530.P13619108729445020009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066069 (n + 1)) (A087323 (A066069 (n + 1) - 1).toNat)

end

end A019530.P13619108729445020009

/-! ## A019530.P1666212564558051085

`and(A066069(n+1), A087323(n))`
-/

namespace A019530.P1666212564558051085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066069 (n + 1)) (A087323 n)

end

end A019530.P1666212564558051085

/-! ## A019530.P3214053397158292542

`and(1, A278477(n+1))*A066069(n+1)`
-/

namespace A019530.P3214053397158292542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A278477 (n + 1)) * A066069 (n + 1)

end

end A019530.P3214053397158292542

/-!
# A019531: Let I_c(n,d) be maximal number of independent sets in d-regular simple connected graphs with n vertices; sequence gives I_c(2n,3).

The programs for A019531, there is no canonical definition to state claims against.
-/

/-! ## A019531.P10758743686306521834

`A329161(A080181(n+2))`
-/

namespace A019531.P10758743686306521834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329161 (A080181 (n + 2)).toNat

end

end A019531.P10758743686306521834

/-!
# A019534: Let I_c(n,d) be the maximal number of independent sets in d-regular simple connected graphs with n nodes; sequence gives I_c(2n,5).

The programs for A019534, there is no canonical definition to state claims against.
-/

/-! ## A019534.P16548085908797048036

`A328485(A033453(n)+4-n)`
-/

namespace A019534.P16548085908797048036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328485 (A033453 n + (4 - (n : ℤ))).toNat

end

end A019534.P16548085908797048036

/-!
# A019535: Let I_c(n,d) be the maximal number of independent sets in d-regular simple connected graphs with n nodes; sequence gives I_c(n,6).

The programs for A019535, there is no canonical definition to state claims against.
-/

/-! ## A019535.P5777202149951191604

`xor(A014489(n), A018412(A016777(n+2)))`
-/

namespace A019535.P5777202149951191604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014489 n) (A018412 (A016777 (n + 2)).toNat)

end

end A019535.P5777202149951191604

/-!
# A019536: Number of length n necklaces with integer entries that cover an initial interval of positive integers.

The programs for A019536, there is no canonical definition to state claims against.
-/

/-! ## A019536.P6555325696313509286

`∑{d}[n+1, A060223(#)]`
-/

namespace A019536.P6555325696313509286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060223 d

end

end A019536.P6555325696313509286

/-! ## A019536.P14482007601536921312

`record[∑{d}[A008611(n), A060223(#)]]`
-/

namespace A019536.P14482007601536921312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A060223 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019536.P14482007601536921312

/-! ## A019536.P16562589376000299415

`A326895(n+1)+A019537(n+1)`
-/

namespace A019536.P16562589376000299415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326895 (n + 1) + A019537 (n + 1)

end

end A019536.P16562589376000299415

/-! ## A019536.P14217815790619957317

`A019537(n+1)+∑{d}[n+1, A326888(#)]`
-/

namespace A019536.P14217815790619957317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019537 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A326888 d

end

end A019536.P14217815790619957317

/-! ## A019536.P13892934929933418755

`A326895(n+1)+A327868(n+1)+A326895(n+1)`
-/

namespace A019536.P13892934929933418755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326895 (n + 1) + (A327868 (n + 1) + A326895 (n + 1))

end

end A019536.P13892934929933418755

/-!
# A019537: Number of special orbits for dihedral group of degree n.

The programs for A019537, there is no canonical definition to state claims against.
-/

/-! ## A019537.P10165947980987018205

`A327868(n+1)+A326895(n+1)`
-/

namespace A019537.P10165947980987018205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327868 (n + 1) + A326895 (n + 1)

end

end A019537.P10165947980987018205

/-! ## A019537.P17410013921609254046

`A019536(n+1)-A326895(n+1)`
-/

namespace A019537.P17410013921609254046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019536 (n + 1) - A326895 (n + 1)

end

end A019537.P17410013921609254046

/-! ## A019537.P869719067361405759

`A327868(n+1)+∑{d}[n+1, A326888(#)]`
-/

namespace A019537.P869719067361405759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327868 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A326888 d

end

end A019537.P869719067361405759

/-! ## A019537.P13019014272800957295

`A019536(n+1)-∑{d}[n+1, A326888(#)]`
-/

namespace A019537.P13019014272800957295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019536 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A326888 d

end

end A019537.P13019014272800957295

/-! ## A019537.P13188874584319332173

`A326895(n+1)+A226513(A101881(n+1))`
-/

namespace A019537.P13188874584319332173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326895 (n + 1) + A226513 (A101881 (n + 1)).toNat

end

end A019537.P13188874584319332173

/-!
# A019538: Triangle of numbers T(n,k) = k!*Stirling2(n,k) read by rows (n >= 1, 1 <= k <= n).

The programs for A019538, the canonical program `A019538.P3804028035437037175` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019538 has offset 1).

The definition of A019538 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019538.P3804028035437037175

`(col(n)+1)*(T(n-1,k-1)+T(n-1,k))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019538

/-- `(col(n)+1)*(T(n-1,k-1)+T(n-1,k))` -/
def P3804028035437037175.Spec : Prop :=
  ∀ n, (P3804028035437037175.a n : ℤ) = A019538 (n + 1)

theorem P3804028035437037175.correct : P3804028035437037175.Spec := by
  intro n
  simp only [A019538, Nat.add_sub_cancel]

end A019538

/-! ## A019538.P1604635259215192888

`A131689(comp[∑[n]])`
-/

namespace A019538.P1604635259215192888
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A019538.P1604635259215192888

namespace A019538

/-- `A131689(comp[∑[n]])` -/
def P1604635259215192888.Spec : Prop :=
  ∀ n, P1604635259215192888.a n = A019538 (n + 1)

end A019538

/-! ## A019538.P8391630108914310170

`A305540(A064801(n+1))`
-/

namespace A019538.P8391630108914310170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305540 (A064801 (n + 1)).toNat

end

end A019538.P8391630108914310170

namespace A019538

/-- `A305540(A064801(n+1))` -/
def P8391630108914310170.Spec : Prop :=
  ∀ n, P8391630108914310170.a n = A019538 (n + 1)

end A019538

/-! ## A019538.P7189622556864812265

`A233543(n)*A321331(n)`
-/

namespace A019538.P7189622556864812265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n * A321331 n

end

end A019538.P7189622556864812265

namespace A019538

/-- `A233543(n)*A321331(n)` -/
def P7189622556864812265.Spec : Prop :=
  ∀ n, P7189622556864812265.a n = A019538 (n + 1)

end A019538

/-! ## A019538.P11641314487978323096

`abs(A002260(n+1)*A163626(n))`
-/

namespace A019538.P11641314487978323096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002260 (n + 1) * A163626 n|

end

end A019538.P11641314487978323096

namespace A019538

/-- `abs(A002260(n+1)*A163626(n))` -/
def P11641314487978323096.Spec : Prop :=
  ∀ n, P11641314487978323096.a n = A019538 (n + 1)

end A019538

/-! ## A019538.P4608190177925396798

`abs((A002262(n)+1)*A163626(n))`
-/

namespace A019538.P4608190177925396798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A002262 n + 1) * A163626 n|

end

end A019538.P4608190177925396798

namespace A019538

/-- `abs((A002262(n)+1)*A163626(n))` -/
def P4608190177925396798.Spec : Prop :=
  ∀ n, P4608190177925396798.a n = A019538 (n + 1)

end A019538

/-! ## A019538.P2176915093861319879

`A002260(n+1)*A028246(n+1)`
-/

namespace A019538.P2176915093861319879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A028246 (n + 1)

end

end A019538.P2176915093861319879

namespace A019538

/-- `A002260(n+1)*A028246(n+1)` -/
def P2176915093861319879.Spec : Prop :=
  ∀ n, P2176915093861319879.a n = A019538 (n + 1)

end A019538

/-! ## A019538.P6183786116341191378

`(A002262(n)+1)*A028246(n+1)`
-/

namespace A019538.P6183786116341191378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A028246 (n + 1)

end

end A019538.P6183786116341191378

namespace A019538

/-- `(A002262(n)+1)*A028246(n+1)` -/
def P6183786116341191378.Spec : Prop :=
  ∀ n, P6183786116341191378.a n = A019538 (n + 1)

end A019538

/-! ## A019538.P9093047379483989661

`A008277(n+1)*A166350(n+1)`
-/

namespace A019538.P9093047379483989661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A166350 (n + 1)

end

end A019538.P9093047379483989661

namespace A019538

/-- `A008277(n+1)*A166350(n+1)` -/
def P9093047379483989661.Spec : Prop :=
  ∀ n, P9093047379483989661.a n = A019538 (n + 1)

end A019538

/-! ## A019538.P1225590598349375120

`abs(A028246(n+1)*A140756(n+1))`
-/

namespace A019538.P1225590598349375120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A028246 (n + 1) * A140756 (n + 1)|

end

end A019538.P1225590598349375120

namespace A019538

/-- `abs(A028246(n+1)*A140756(n+1))` -/
def P1225590598349375120.Spec : Prop :=
  ∀ n, P1225590598349375120.a n = A019538 (n + 1)

end A019538

/-! ## A019538.P11413090763994246651

`sqrt(A133819(n+1))*A028246(n+1)`
-/

namespace A019538.P11413090763994246651
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) * (A028246 (n + 1) : ℝ)

end

end A019538.P11413090763994246651

namespace A019538

/-- `sqrt(A133819(n+1))*A028246(n+1)` -/
def P11413090763994246651.Spec : Prop :=
  ∀ n, P11413090763994246651.a n = (A019538 (n + 1) : ℝ)

end A019538

/-! ## A019538.P18298346151610326237

`(A002262(n)+1)*A142071(A014132(n+1))`
-/

namespace A019538.P18298346151610326237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A142071 (A014132 (n + 1)).toNat

end

end A019538.P18298346151610326237

namespace A019538

/-- `(A002262(n)+1)*A142071(A014132(n+1))` -/
def P18298346151610326237.Spec : Prop :=
  ∀ n, P18298346151610326237.a n = A019538 (n + 1)

end A019538

/-! ## A019538.P7460256809167471859

`A008277(n+1)*A233543(A014132(n+1))`
-/

namespace A019538.P7460256809167471859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A233543 (A014132 (n + 1)).toNat

end

end A019538.P7460256809167471859

namespace A019538

/-- `A008277(n+1)*A233543(A014132(n+1))` -/
def P7460256809167471859.Spec : Prop :=
  ∀ n, P7460256809167471859.a n = A019538 (n + 1)

end A019538

/-! ## A019538.P7118770487153079074

`A008277(n+1)/A007318(n)*A121757(n)`
-/

namespace A019538.P7118770487153079074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008277 (n + 1) : ℚ) / (A007318 n : ℚ) * (A121757 n : ℚ)

end

end A019538.P7118770487153079074

namespace A019538

/-- `A008277(n+1)/A007318(n)*A121757(n)` -/
def P7118770487153079074.Spec : Prop :=
  ∀ n, P7118770487153079074.a n = (A019538 (n + 1) : ℚ)

end A019538

/-! ## A019538.P3483632206890009466

`A028246(n+1)/A008292(n+1)*A065826(n+1)`
-/

namespace A019538.P3483632206890009466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028246 (n + 1) : ℚ) / (A008292 (n + 1) : ℚ) * (A065826 (n + 1) : ℚ)

end

end A019538.P3483632206890009466

namespace A019538

/-- `A028246(n+1)/A008292(n+1)*A065826(n+1)` -/
def P3483632206890009466.Spec : Prop :=
  ∀ n, P3483632206890009466.a n = (A019538 (n + 1) : ℚ)

end A019538

/-! ## A019538.P13340821364393240945

`A090582(A038722(n+1))`
-/

namespace A019538.P13340821364393240945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090582 (A038722 (n + 1)).toNat

end

end A019538.P13340821364393240945

namespace A019538

/-- `A090582(A038722(n+1))` -/
def P13340821364393240945.Spec : Prop :=
  ∀ n, P13340821364393240945.a n = A019538 (n + 1)

end A019538

/-! ## A019538.P13561326982457566582

`A008277(n+1)/A039810(n+1)*A233357(n+1)`
-/

namespace A019538.P13561326982457566582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008277 (n + 1) : ℚ) / (A039810 (n + 1) : ℚ) * (A233357 (n + 1) : ℚ)

end

end A019538.P13561326982457566582

namespace A019538

/-- `A008277(n+1)/A039810(n+1)*A233357(n+1)` -/
def P13561326982457566582.Spec : Prop :=
  ∀ n, P13561326982457566582.a n = (A019538 (n + 1) : ℚ)

end A019538

/-! ## A019538.P8326432736926292000

`A048743(n+1)/A007318(n)`
-/

namespace A019538.P8326432736926292000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048743 (n + 1) : ℚ) / (A007318 n : ℚ)

end

end A019538.P8326432736926292000

namespace A019538

/-- `A048743(n+1)/A007318(n)` -/
def P8326432736926292000.Spec : Prop :=
  ∀ n, P8326432736926292000.a n = (A019538 (n + 1) : ℚ)

end A019538

/-! ## A019538.P9069787063567197206

`A305622(n+1)+A305621(n+1)`
-/

namespace A019538.P9069787063567197206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305622 (n + 1) + A305621 (n + 1)

end

end A019538.P9069787063567197206

namespace A019538

/-- `A305622(n+1)+A305621(n+1)` -/
def P9069787063567197206.Spec : Prop :=
  ∀ n, P9069787063567197206.a n = A019538 (n + 1)

end A019538

/-! ## A019538.P14454974217961629137

`A008277(n+1)/A147315(n)*A185421(n+1)`
-/

namespace A019538.P14454974217961629137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008277 (n + 1) : ℚ) / (A147315 n : ℚ) * (A185421 (n + 1) : ℚ)

end

end A019538.P14454974217961629137

namespace A019538

/-- `A008277(n+1)/A147315(n)*A185421(n+1)` -/
def P14454974217961629137.Spec : Prop :=
  ∀ n, P14454974217961629137.a n = (A019538 (n + 1) : ℚ)

end A019538

/-!
# A019543: Number of steps from one unit vector to next in linear quantum cellular automata.

The programs for A019543, there is no canonical definition to state claims against.
-/

/-! ## A019543.P3022542109372843431

`a(n-4)^a(n-1)` with `a(0)=2, a(1)=4, a(2)=15, a(3)=8`
-/

namespace A019543.P3022542109372843431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 15, 8] fun n a =>
  a (n - 4) ^ a (n - 1)

end

end A019543.P3022542109372843431

/-!
# A019544: Squares whose digits are squares.

The programs for A019544, there is no canonical definition to state claims against.
-/

/-! ## A019544.P11225343450809887428

`A285550(n+1)²`
-/

namespace A019544.P11225343450809887428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285550 (n + 1) ^ 2

end

end A019544.P11225343450809887428

/-! ## A019544.P15956206875011018445

`A285550(n+1)^A000040(gcd(n, n+1))`
-/

namespace A019544.P15956206875011018445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285550 (n + 1) : ℚ) ^ (A000040 (Nat.gcd n (n + 1)) : ℤ)

end

end A019544.P15956206875011018445

/-! ## A019544.P6879526506148946381

`A285550(A000027(n+1))*A285550(n+1)`
-/

namespace A019544.P6879526506148946381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285550 (A000027 (n + 1)).toNat * A285550 (n + 1)

end

end A019544.P6879526506148946381

/-! ## A019544.P14249467815942677932

`A010051(A004771(n)+1)+A285550(n+1)^2`
-/

namespace A019544.P14249467815942677932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A004771 n + 1).toNat + A285550 (n + 1) ^ 2

end

end A019544.P14249467815942677932

/-! ## A019544.P12376333831160982062

`A285550(n+1)*A285550((n+1)%A000040(n+1))`
-/

namespace A019544.P12376333831160982062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285550 (n + 1) * A285550 (Int.tmod (n + 1 : ℤ) (A000040 (n + 1))).toNat

end

end A019544.P12376333831160982062

/-! ## A019544.P15791638245528912840

`(A285550(n+1)*A285550(n+1))%A316969(n+1)`
-/

namespace A019544.P15791638245528912840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285550 (n + 1) * A285550 (n + 1)) (A316969 (n + 1))

end

end A019544.P15791638245528912840

/-! ## A019544.P7697700185858894317

`A285550(n+1)^A000005(A285512(n+1))`
-/

namespace A019544.P7697700185858894317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285550 (n + 1) : ℚ) ^ (A000005 (A285512 (n + 1)).toNat : ℤ)

end

end A019544.P7697700185858894317

/-!
# A019545: Cubes whose digits are cubes.

The programs for A019545, there is no canonical definition to state claims against.
-/

/-! ## A019545.P17479881903060218577

`A352721(A294732(n+2))`
-/

namespace A019545.P17479881903060218577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352721 (A294732 (n + 2)).toNat

end

end A019545.P17479881903060218577

/-! ## A019545.P3475494725894458585

`A352721(A065033(3*n))`
-/

namespace A019545.P3475494725894458585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352721 (A065033 (3 * n)).toNat

end

end A019545.P3475494725894458585

/-! ## A019545.P1448999175424605802

`A352721(A034888(n)+n)`
-/

namespace A019545.P1448999175424605802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352721 (A034888 n + (n : ℤ)).toNat

end

end A019545.P1448999175424605802

/-! ## A019545.P14590208535533636723

`A352721(A065033(n)+n)`
-/

namespace A019545.P14590208535533636723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352721 (A065033 n + (n : ℤ)).toNat

end

end A019545.P14590208535533636723

/-! ## A019545.P738932434378107073

`A007090(floor(2^(n-1)))^3`
-/

namespace A019545.P738932434378107073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat ^ 3

end

end A019545.P738932434378107073

/-!
# A019546: Primes whose digits are primes; primes having only {2, 3, 5, 7} as digits.

The programs for A019546, there is no canonical definition to state claims against.
-/

/-! ## A019546.P4203287002665241843

`∩[A062087(n+1), A190222(n+1)]`
-/

namespace A019546.P4203287002665241843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019546.P4203287002665241843

/-! ## A019546.P14085291514020147485

`∩[A062087(n+1), A106116(n+1)]`
-/

namespace A019546.P14085291514020147485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019546.P14085291514020147485

/-! ## A019546.P2343002559420148967

`∩[A106116(n+1), A190222(n+1)]`
-/

namespace A019546.P2343002559420148967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019546.P2343002559420148967

/-! ## A019546.P11649651506103252569

`∩[A106116(n+1), A190223(n+1)]`
-/

namespace A019546.P11649651506103252569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019546.P11649651506103252569

/-! ## A019546.P5571007807055040081

`∩[A046034(n+1), A106116(n+1)]`
-/

namespace A019546.P5571007807055040081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019546.P5571007807055040081

/-! ## A019546.P2613021438426118639

`∩[A046034(n+1), A190222(n+1)]`
-/

namespace A019546.P2613021438426118639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019546.P2613021438426118639

/-! ## A019546.P6809905617764109198

`∩[A038603(n+1), A046034(n+1)]`
-/

namespace A019546.P6809905617764109198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019546.P6809905617764109198

/-! ## A019546.P10099735794099909777

`∩[A038603(n+1), A062087(n+1)]`
-/

namespace A019546.P10099735794099909777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019546.P10099735794099909777

/-! ## A019546.P2062891022283646825

`∩[A038603(n+1), A190222(n+1)]`
-/

namespace A019546.P2062891022283646825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019546.P2062891022283646825

/-! ## A019546.P11706238902432349953

`∩[A038603(n+1), A190223(n+1)]`
-/

namespace A019546.P11706238902432349953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019546.P11706238902432349953

/-! ## A019546.P10695952076181516858

`p?[A046034(n+1)]`
-/

namespace A019546.P10695952076181516858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019546.P10695952076181516858

/-! ## A019546.P11065915239374745447

`p?[A062087(n+1)]`
-/

namespace A019546.P11065915239374745447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019546.P11065915239374745447

/-! ## A019546.P8060205154584839141

`∩[A038616(n+1), A046034(n+1)]`
-/

namespace A019546.P8060205154584839141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019546.P8060205154584839141

/-! ## A019546.P13477992002680992364

`∩[A038617(n+1), A046034(n+1)]`
-/

namespace A019546.P13477992002680992364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019546.P13477992002680992364

/-! ## A019546.P7092433156075584351

`∩[A038617(n+1), A062087(n+1)]`
-/

namespace A019546.P7092433156075584351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019546.P7092433156075584351

/-! ## A019546.P9897980220958782471

`∩[A046034(n+1), A160337(n+1)]`
-/

namespace A019546.P9897980220958782471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019546.P9897980220958782471

/-! ## A019546.P4917410948143897094

`∩[A062087(n+1), A160337(n+1)]`
-/

namespace A019546.P4917410948143897094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019546.P4917410948143897094

/-! ## A019546.P15283289891754271206

`∩[A106116(n+1), A160337(n+1)]`
-/

namespace A019546.P15283289891754271206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019546.P15283289891754271206

/-! ## A019546.P12296366820756382182

`p?[A000035(n)*A062087(A008619(n))]`
-/

namespace A019546.P12296366820756382182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A062087 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019546.P12296366820756382182

/-! ## A019546.P16724742801730925952

`p?[A062087(A008619(n))*A087960(n)]`
-/

namespace A019546.P16724742801730925952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (A008619 n).toNat * A087960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019546.P16724742801730925952

/-!
# A019547: Squares which are a decimal concatenation of two or more squares.

The programs for A019547, there is no canonical definition to state claims against.
-/

/-! ## A019547.P11221284994187318686

`A128783(n+1)²`
-/

namespace A019547.P11221284994187318686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128783 (n + 1) ^ 2

end

end A019547.P11221284994187318686

/-! ## A019547.P2882001053710710737

`A128783(n+1)^A001316(A001316(n))`
-/

namespace A019547.P2882001053710710737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128783 (n + 1) : ℚ) ^ (A001316 (A001316 n).toNat : ℤ)

end

end A019547.P2882001053710710737

/-! ## A019547.P5784668943594668582

`A128783(A000027(n+1))*A128783(n+1)`
-/

namespace A019547.P5784668943594668582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128783 (A000027 (n + 1)).toNat * A128783 (n + 1)

end

end A019547.P5784668943594668582

/-! ## A019547.P2836663727244536706

`A128783(n+1)^A000005(A000040(n+1))`
-/

namespace A019547.P2836663727244536706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128783 (n + 1) : ℚ) ^ (A000005 (A000040 (n + 1)).toNat : ℤ)

end

end A019547.P2836663727244536706

/-! ## A019547.P17893081319407417499

`A000290(A128783(n+1)%A000217(n+4))`
-/

namespace A019547.P17893081319407417499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A128783 (n + 1)) (A000217 (n + 4))).toNat

end

end A019547.P17893081319407417499

/-! ## A019547.P8062999389952717286

`A000290(2*A128783(n+1)-A128783(n+1))`
-/

namespace A019547.P8062999389952717286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A128783 (n + 1) - A128783 (n + 1)).toNat

end

end A019547.P8062999389952717286

/-! ## A019547.P13556121391500077433

`A010052(A000037(n+1))+A000290(A128783(n+1))`
-/

namespace A019547.P13556121391500077433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A000037 (n + 1)).toNat + A000290 (A128783 (n + 1)).toNat

end

end A019547.P13556121391500077433

/-! ## A019547.P12993518270018534654

`A000290(A128783(n+1))%A000290(A128783(n+2))`
-/

namespace A019547.P12993518270018534654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (A128783 (n + 1)).toNat) (A000290 (A128783 (n + 2)).toNat)

end

end A019547.P12993518270018534654

/-! ## A019547.P5566884613236808695

`A002620(2*A128783(n+1))`
-/

namespace A019547.P5566884613236808695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A128783 (n + 1)).toNat

end

end A019547.P5566884613236808695

/-! ## A019547.P15764465546510940942

`A000290(A128783(n+1))*A010052(A000290(n))`
-/

namespace A019547.P15764465546510940942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A128783 (n + 1)).toNat * A010052 (A000290 n).toNat

end

end A019547.P15764465546510940942

/-!
# A019548: Cubes formed by concatenating other cubes.

The programs for A019548, there is no canonical definition to state claims against.
-/

/-! ## A019548.P9704529169892221011

`A111029(A032487(n+1))`
-/

namespace A019548.P9704529169892221011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111029 (A032487 (n + 1)).toNat

end

end A019548.P9704529169892221011

/-!
# A019549: Primes formed by concatenating other primes.

The programs for A019549, there is no canonical definition to state claims against.
-/

/-! ## A019549.P6352119408732601383

`∏{p}[∪[A100607(n+1), A105184(n+1)]², #]`
-/

namespace A019549.P6352119408732601383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100607 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105184 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A019549.P6352119408732601383

/-! ## A019549.P9049092281047131857

`p?[or(A003982(n), A147627(n+1))]`
-/

namespace A019549.P9049092281047131857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003982 n) (A147627 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019549.P9049092281047131857

/-! ## A019549.P16385579738685506021

`p?[or(A011742(n), A147627(n+1))]`
-/

namespace A019549.P16385579738685506021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011742 n) (A147627 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019549.P16385579738685506021

/-! ## A019549.P16185561937730294658

`A238056(n+1)-A112765(A022182(n))`
-/

namespace A019549.P16185561937730294658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238056 (n + 1) - A112765 (A022182 n).toNat

end

end A019549.P16185561937730294658

/-! ## A019549.P1782472690703167704

`A105184(n+1)-A004198(A101371(3*n))`
-/

namespace A019549.P1782472690703167704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105184 (n + 1) - A004198 (A101371 (3 * n)).toNat

end

end A019549.P1782472690703167704

/-!
# A019550: a(n) is the concatenation of n and 2n.

The programs for A019550, the canonical program `A019550.P18383690293496929747` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019550 has offset 1).

The definition of A019550 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019550.P18383690293496929747

`(n+1)*(10^(1+A004216(2*(n+1)))+2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A019550

/-- `(n+1)*(10^(1+A004216(2*(n+1)))+2)` -/
def P18383690293496929747.Spec : Prop :=
  ∀ n, P18383690293496929747.a n = (A019550 (n + 1) : ℚ)

end A019550

/-! ## A019550.P6938258972162787855

`A309809(n+1)-1`
-/

namespace A019550.P6938258972162787855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309809 (n + 1) - 1

end

end A019550.P6938258972162787855

namespace A019550

/-- `A309809(n+1)-1` -/
def P6938258972162787855.Spec : Prop :=
  ∀ n, P6938258972162787855.a n = A019550 (n + 1)

end A019550

/-! ## A019550.P11462345583416025960

`3*A061085(n+1)`
-/

namespace A019550.P11462345583416025960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A061085 (n + 1)

end

end A019550.P11462345583416025960

namespace A019550

/-- `3*A061085(n+1)` -/
def P11462345583416025960.Spec : Prop :=
  ∀ n, P11462345583416025960.a n = A019550 (n + 1)

end A019550

/-! ## A019550.P11702048930891108205

`A248422(n+1)/2+1+n`
-/

namespace A019550.P11702048930891108205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248422 (n + 1) : ℚ) / 2 + 1 + (n : ℚ)

end

end A019550.P11702048930891108205

namespace A019550

/-- `A248422(n+1)/2+1+n` -/
def P11702048930891108205.Spec : Prop :=
  ∀ n, P11702048930891108205.a n = (A019550 (n + 1) : ℚ)

end A019550

/-! ## A019550.P1522311632568054613

`ceil(A127421(2*n+3)/2+n)`
-/

namespace A019550.P1522311632568054613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A127421 (2 * n + 3) : ℚ) / 2 + (n : ℚ)⌉

end

end A019550.P1522311632568054613

namespace A019550

/-- `ceil(A127421(2*n+3)/2+n)` -/
def P1522311632568054613.Spec : Prop :=
  ∀ n, P1522311632568054613.a n = A019550 (n + 1)

end A019550

/-! ## A019550.P4137782002054813202

`(A001704(2*(n+1))+2*n+1)/2`
-/

namespace A019550.P4137782002054813202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001704 (2 * (n + 1)) + (2 * n + 1 : ℤ) : ℚ) / 2

end

end A019550.P4137782002054813202

namespace A019550

/-- `(A001704(2*(n+1))+2*n+1)/2` -/
def P4137782002054813202.Spec : Prop :=
  ∀ n, P4137782002054813202.a n = (A019550 (n + 1) : ℚ)

end A019550

/-! ## A019550.P7515715033485355009

`(A004273(n+1)+A001704(2*(n+1)))/2`
-/

namespace A019550.P7515715033485355009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004273 (n + 1) + A001704 (2 * (n + 1)) : ℚ) / 2

end

end A019550.P7515715033485355009

namespace A019550

/-- `(A004273(n+1)+A001704(2*(n+1)))/2` -/
def P7515715033485355009.Spec : Prop :=
  ∀ n, P7515715033485355009.a n = (A019550 (n + 1) : ℚ)

end A019550

/-! ## A019550.P11130071017438657107

`(A030656(n+1)+1)/2+n`
-/

namespace A019550.P11130071017438657107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030656 (n + 1) + 1 : ℚ) / 2 + (n : ℚ)

end

end A019550.P11130071017438657107

namespace A019550

/-- `(A030656(n+1)+1)/2+n` -/
def P11130071017438657107.Spec : Prop :=
  ∀ n, P11130071017438657107.a n = (A019550 (n + 1) : ℚ)

end A019550

/-! ## A019550.P464431509913359479

`(A004442(2*n)+A001704(2*(n+1)))/2`
-/

namespace A019550.P464431509913359479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004442 (2 * n) + A001704 (2 * (n + 1)) : ℚ) / 2

end

end A019550.P464431509913359479

namespace A019550

/-- `(A004442(2*n)+A001704(2*(n+1)))/2` -/
def P464431509913359479.Spec : Prop :=
  ∀ n, P464431509913359479.a n = (A019550 (n + 1) : ℚ)

end A019550

/-! ## A019550.P16874253650509370692

`n+1+A020338(2*(n+1))/2`
-/

namespace A019550.P16874253650509370692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) + (A020338 (2 * (n + 1)) : ℚ) / 2

end

end A019550.P16874253650509370692

namespace A019550

/-- `n+1+A020338(2*(n+1))/2` -/
def P16874253650509370692.Spec : Prop :=
  ∀ n, P16874253650509370692.a n = (A019550 (n + 1) : ℚ)

end A019550

/-! ## A019550.P6419379317672945486

`A074993(2*(n+1))+n+1`
-/

namespace A019550.P6419379317672945486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074993 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A019550.P6419379317672945486

namespace A019550

/-- `A074993(2*(n+1))+n+1` -/
def P6419379317672945486.Spec : Prop :=
  ∀ n, P6419379317672945486.a n = A019550 (n + 1)

end A019550

/-! ## A019550.P764010768977290359

`and(A309809(n+1), A309867(A309869(3*n+4)))`
-/

namespace A019550.P764010768977290359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A309809 (n + 1)) (A309867 (A309869 (3 * n + 4)).toNat)

end

end A019550.P764010768977290359

namespace A019550

/-- `and(A309809(n+1), A309867(A309869(3*n+4)))` -/
def P764010768977290359.Spec : Prop :=
  ∀ n, P764010768977290359.a n = A019550 (n + 1)

end A019550

/-!
# A019551: a(n) is the concatenation of n and 3n.

The programs for A019551, the canonical program `A019551.P12101301121661445223` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019551 has offset 1).

The definition of A019551 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A019551.P12101301121661445223

`A248038(n+1)/3+2*(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A019551

/-- `A248038(n+1)/3+2*(n+1)` -/
def P12101301121661445223.Spec : Prop :=
  ∀ n, P12101301121661445223.a n = (A019551 (n + 1) : ℚ)

end A019551

/-! ## A019551.P13424107847693337652

`A005843(n+1)+A248038(n+1)/3`
-/

namespace A019551.P13424107847693337652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) + (A248038 (n + 1) : ℚ) / 3

end

end A019551.P13424107847693337652

namespace A019551

/-- `A005843(n+1)+A248038(n+1)/3` -/
def P13424107847693337652.Spec : Prop :=
  ∀ n, P13424107847693337652.a n = (A019551 (n + 1) : ℚ)

end A019551

/-! ## A019551.P10958280957353652052

`Δ[A002378(n)]+A248038(n+1)/3`
-/

namespace A019551.P10958280957353652052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (A248038 (n + 1) : ℚ) / 3

end

end A019551.P10958280957353652052

namespace A019551

/-- `Δ[A002378(n)]+A248038(n+1)/3` -/
def P10958280957353652052.Spec : Prop :=
  ∀ n, P10958280957353652052.a n = (A019551 (n + 1) : ℚ)

end A019551

/-! ## A019551.P13145136813315138881

`Δ[A014206(n)]+A248038(n+1)/3`
-/

namespace A019551.P13145136813315138881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (A248038 (n + 1) : ℚ) / 3

end

end A019551.P13145136813315138881

namespace A019551

/-- `Δ[A014206(n)]+A248038(n+1)/3` -/
def P13145136813315138881.Spec : Prop :=
  ∀ n, P13145136813315138881.a n = (A019551 (n + 1) : ℚ)

end A019551

/-!
# A019552: a(n) is the concatenation of n and 4n.

The programs for A019552, the canonical program `A019552.P234428209897043585` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019552 has offset 1).

The definition of A019552 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A019552.P234428209897043585

`A248422(2*(n+1))/4+3*(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A019552

/-- `A248422(2*(n+1))/4+3*(n+1)` -/
def P234428209897043585.Spec : Prop :=
  ∀ n, P234428209897043585.a n = (A019552 (n + 1) : ℚ)

end A019552

/-! ## A019552.P18400343966946913450

`(A309809(2*(n+1))+4*n+3)/2`
-/

namespace A019552.P18400343966946913450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309809 (2 * (n + 1)) + (4 * n + 3 : ℤ) : ℚ) / 2

end

end A019552.P18400343966946913450

namespace A019552

/-- `(A309809(2*(n+1))+4*n+3)/2` -/
def P18400343966946913450.Spec : Prop :=
  ∀ n, P18400343966946913450.a n = (A019552 (n + 1) : ℚ)

end A019552

/-! ## A019552.P745601548944310038

`A005843(n+1)+A019550(2*(n+1))/2`
-/

namespace A019552.P745601548944310038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) + (A019550 (2 * (n + 1)) : ℚ) / 2

end

end A019552.P745601548944310038

namespace A019552

/-- `A005843(n+1)+A019550(2*(n+1))/2` -/
def P745601548944310038.Spec : Prop :=
  ∀ n, P745601548944310038.a n = (A019552 (n + 1) : ℚ)

end A019552

/-! ## A019552.P14513687825742909413

`xor(1, A030656(2*(n+1)))/4+3*(n+1)`
-/

namespace A019552.P14513687825742909413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A030656 (2 * (n + 1))) : ℚ) / 4 + (3 * (n + 1) : ℚ)

end

end A019552.P14513687825742909413

namespace A019552

/-- `xor(1, A030656(2*(n+1)))/4+3*(n+1)` -/
def P14513687825742909413.Spec : Prop :=
  ∀ n, P14513687825742909413.a n = (A019552 (n + 1) : ℚ)

end A019552

/-! ## A019552.P10640660064172834638

`(A033999(2*n+1)+A030656(2*(n+1)))/4+3*(n+1)`
-/

namespace A019552.P10640660064172834638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 (2 * n + 1) + A030656 (2 * (n + 1)) : ℚ) / 4 + (3 * (n + 1) : ℚ)

end

end A019552.P10640660064172834638

namespace A019552

/-- `(A033999(2*n+1)+A030656(2*(n+1)))/4+3*(n+1)` -/
def P10640660064172834638.Spec : Prop :=
  ∀ n, P10640660064172834638.a n = (A019552 (n + 1) : ℚ)

end A019552

/-!
# A019553: a(n) is the concatenation of n and 5n.

The programs for A019553, there is no canonical definition to state claims against.
-/

/-! ## A019553.P4230827153755450032

`A084855(A178572(n+1))`
-/

namespace A019553.P4230827153755450032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (A178572 (n + 1)).toNat

end

end A019553.P4230827153755450032

/-!
# A019554: Smallest number whose square is divisible by n.

The programs for A019554, the canonical program `A019554.P934973065694448032` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019554 has offset 1).

The definition of A019554 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019554.P3099433908080810314

`sqrt(A053143(n+1))`
-/

namespace A019554.P3099433908080810314
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053143 (n + 1) : ℝ)

end

end A019554.P3099433908080810314

namespace A019554

/-- `sqrt(A053143(n+1))` -/
def P3099433908080810314.Spec : Prop :=
  ∀ n, P3099433908080810314.a n = (A019554 (n + 1) : ℝ)

end A019554

/-! ## A019554.P11476018650461902134

`(n+1)/A000188(n+1)`
-/

namespace A019554.P11476018650461902134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000188 (n + 1) : ℚ)

end

end A019554.P11476018650461902134

namespace A019554

/-- `(n+1)/A000188(n+1)` -/
def P11476018650461902134.Spec : Prop :=
  ∀ n, P11476018650461902134.a n = (A019554 (n + 1) : ℚ)

end A019554

/-! ## A019554.P934973065694448032

`sqrt((n+1)*A007913(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A019554

/-- `sqrt((n+1)*A007913(n+1))` -/
def P934973065694448032.Spec : Prop :=
  ∀ n, P934973065694448032.a n = (A019554 (n + 1) : ℝ)

end A019554

/-! ## A019554.P7996976879120646354

`(n+1)/∏{p}[n+1, #^val(n+1, #²)]`
-/

namespace A019554.P7996976879120646354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ)

end

end A019554.P7996976879120646354

namespace A019554

/-- `(n+1)/∏{p}[n+1, #^val(n+1, #²)]` -/
def P7996976879120646354.Spec : Prop :=
  ∀ n, P7996976879120646354.a n = (A019554 (n + 1) : ℚ)

end A019554

/-! ## A019554.P8390278603844822530

`∑{d}[n+1, A346612(#)]`
-/

namespace A019554.P8390278603844822530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A346612 d

end

end A019554.P8390278603844822530

namespace A019554

/-- `∑{d}[n+1, A346612(#)]` -/
def P8390278603844822530.Spec : Prop :=
  ∀ n, P8390278603844822530.a n = A019554 (n + 1)

end A019554

/-! ## A019554.P15711884633970811239

`A254732(n+1)-(n+1)`
-/

namespace A019554.P15711884633970811239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254732 (n + 1) - (n + 1 : ℤ)

end

end A019554.P15711884633970811239

namespace A019554

/-- `A254732(n+1)-(n+1)` -/
def P15711884633970811239.Spec : Prop :=
  ∀ n, P15711884633970811239.a n = A019554 (n + 1)

end A019554

/-! ## A019554.P3404418993014407271

`gcd(n+1, A056134(n+1))`
-/

namespace A019554.P3404418993014407271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A056134 (n + 1))

end

end A019554.P3404418993014407271

namespace A019554

/-- `gcd(n+1, A056134(n+1))` -/
def P3404418993014407271.Spec : Prop :=
  ∀ n, (P3404418993014407271.a n : ℤ) = A019554 (n + 1)

end A019554

/-! ## A019554.P18243165228258896945

`A083482(n)/a(n-1)` with `a(0)=1`
-/

namespace A019554.P18243165228258896945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A083482 n : ℚ) / a (n - 1)

end

end A019554.P18243165228258896945

namespace A019554

/-- `A083482(n)/a(n-1)` -/
def P18243165228258896945.Spec : Prop :=
  ∀ n, P18243165228258896945.a n = (A019554 (n + 1) : ℚ)

end A019554

/-! ## A019554.P7120991953745262348

`(n+1)²/A355264(n+1)`
-/

namespace A019554.P7120991953745262348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A355264 (n + 1) : ℚ)

end

end A019554.P7120991953745262348

namespace A019554

/-- `(n+1)²/A355264(n+1)` -/
def P7120991953745262348.Spec : Prop :=
  ∀ n, P7120991953745262348.a n = (A019554 (n + 1) : ℚ)

end A019554

/-! ## A019554.P550571255634484793

`(n+1)/sqrt(A008833(n+1))`
-/

namespace A019554.P550571255634484793
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.sqrt (A008833 (n + 1) : ℝ)

end

end A019554.P550571255634484793

namespace A019554

/-- `(n+1)/sqrt(A008833(n+1))` -/
def P550571255634484793.Spec : Prop :=
  ∀ n, P550571255634484793.a n = (A019554 (n + 1) : ℝ)

end A019554

/-! ## A019554.P250599253855643729

`gcd((n+1)², A083482(n+1))`
-/

namespace A019554.P250599253855643729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1) ^ 2 : ℤ) (A083482 (n + 1))

end

end A019554.P250599253855643729

namespace A019554

/-- `gcd((n+1)², A083482(n+1))` -/
def P250599253855643729.Spec : Prop :=
  ∀ n, (P250599253855643729.a n : ℤ) = A019554 (n + 1)

end A019554

/-! ## A019554.P17665195253100891847

`(n+1)/(A057918(n+1)+1)`
-/

namespace A019554.P17665195253100891847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A057918 (n + 1) + 1 : ℚ)

end

end A019554.P17665195253100891847

namespace A019554

/-- `(n+1)/(A057918(n+1)+1)` -/
def P17665195253100891847.Spec : Prop :=
  ∀ n, P17665195253100891847.a n = (A019554 (n + 1) : ℚ)

end A019554

/-! ## A019554.P6131082340120768678

`(n+1)/A337101(2*(n+1))`
-/

namespace A019554.P6131082340120768678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A337101 (2 * (n + 1)) : ℚ)

end

end A019554.P6131082340120768678

namespace A019554

/-- `(n+1)/A337101(2*(n+1))` -/
def P6131082340120768678.Spec : Prop :=
  ∀ n, P6131082340120768678.a n = (A019554 (n + 1) : ℚ)

end A019554

/-! ## A019554.P10605674450623413714

`round(sqrt(n*(n+1-A326128(n+1))+1))`
-/

namespace A019554.P10605674450623413714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((n : ℤ) * ((n + 1 : ℤ) - A326128 (n + 1)) + 1 : ℝ))

end

end A019554.P10605674450623413714

namespace A019554

/-- `round(sqrt(n*(n+1-A326128(n+1))+1))` -/
def P10605674450623413714.Spec : Prop :=
  ∀ n, P10605674450623413714.a n = A019554 (n + 1)

end A019554

/-! ## A019554.P4261734140535782025

`(n+1)/a((n+1)/A007947(n+1)-1)` with `a(0)=1`
-/

namespace A019554.P4261734140535782025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) / a (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ) - 1)).toNat

end

end A019554.P4261734140535782025

namespace A019554

/-- `(n+1)/a((n+1)/A007947(n+1)-1)` -/
def P4261734140535782025.Spec : Prop :=
  ∀ n, P4261734140535782025.a n = (A019554 (n + 1) : ℚ)

end A019554

/-! ## A019554.P2171571222784388108

`A038388(A186646(n+1))`
-/

namespace A019554.P2171571222784388108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038388 (A186646 (n + 1)).toNat

end

end A019554.P2171571222784388108

namespace A019554

/-- `A038388(A186646(n+1))` -/
def P2171571222784388108.Spec : Prop :=
  ∀ n, P2171571222784388108.a n = A019554 (n + 1)

end A019554

/-! ## A019554.P15367491290090003170

`A038388(A350390(n+1))`
-/

namespace A019554.P15367491290090003170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038388 (A350390 (n + 1)).toNat

end

end A019554.P15367491290090003170

namespace A019554

/-- `A038388(A350390(n+1))` -/
def P15367491290090003170.Spec : Prop :=
  ∀ n, P15367491290090003170.a n = A019554 (n + 1)

end A019554

/-! ## A019554.P1106472643758445831

`Δ[A069891(n)]*A000188(n+1)`
-/

namespace A019554.P1106472643758445831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000188 (n + 1)

end

end A019554.P1106472643758445831

namespace A019554

/-- `Δ[A069891(n)]*A000188(n+1)` -/
def P1106472643758445831.Spec : Prop :=
  ∀ n, P1106472643758445831.a n = A019554 (n + 1)

end A019554

/-! ## A019554.P13707771843123808021

`A000188(n+1)*A007913(n+1)`
-/

namespace A019554.P13707771843123808021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) * A007913 (n + 1)

end

end A019554.P13707771843123808021

namespace A019554

/-- `A000188(n+1)*A007913(n+1)` -/
def P13707771843123808021.Spec : Prop :=
  ∀ n, P13707771843123808021.a n = A019554 (n + 1)

end A019554

/-! ## A019554.P17237546884447976080

`A071974(n+1)*A071975(n+1)`
-/

namespace A019554.P17237546884447976080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (n + 1) * A071975 (n + 1)

end

end A019554.P17237546884447976080

namespace A019554

/-- `A071974(n+1)*A071975(n+1)` -/
def P17237546884447976080.Spec : Prop :=
  ∀ n, P17237546884447976080.a n = A019554 (n + 1)

end A019554

/-!
# A019555: Smallest number whose cube is divisible by n.

The programs for A019555, the canonical program `A019555.P8996553868709767269` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019555 has offset 1).

The definition of A019555 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000189, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A019555.P8996553868709767269

`(n+1)/A000189(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A019555

/-- `(n+1)/A000189(n+1)` -/
def P8996553868709767269.Spec : Prop :=
  ∀ n, P8996553868709767269.a n = (A019555 (n + 1) : ℚ)

end A019555

/-! ## A019555.P13325523134191681517

`A053149(n+1)^(1/3)`
-/

namespace A019555.P13325523134191681517
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053149 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A019555.P13325523134191681517

namespace A019555

/-- `A053149(n+1)^(1/3)` -/
def P13325523134191681517.Spec : Prop :=
  ∀ n, P13325523134191681517.a n = (A019555 (n + 1) : ℝ)

end A019555

/-! ## A019555.P3872050956316122837

`A254733(n+1)-(n+1)`
-/

namespace A019555.P3872050956316122837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254733 (n + 1) - (n + 1 : ℤ)

end

end A019555.P3872050956316122837

namespace A019555

/-- `A254733(n+1)-(n+1)` -/
def P3872050956316122837.Spec : Prop :=
  ∀ n, P3872050956316122837.a n = A019555 (n + 1)

end A019555

/-! ## A019555.P5161031447630312129

`A053150(n+1)*A056552(n+1)`
-/

namespace A019555.P5161031447630312129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 (n + 1) * A056552 (n + 1)

end

end A019555.P5161031447630312129

namespace A019555

/-- `A053150(n+1)*A056552(n+1)` -/
def P5161031447630312129.Spec : Prop :=
  ∀ n, P5161031447630312129.a n = A019555 (n + 1)

end A019555

/-! ## A019555.P17386658980986474504

`A019554((n+1)/A053150(n+1))`
-/

namespace A019555.P17386658980986474504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A053150 (n + 1) : ℚ))).toNat

end

end A019555.P17386658980986474504

namespace A019555

/-- `A019554((n+1)/A053150(n+1))` -/
def P17386658980986474504.Spec : Prop :=
  ∀ n, P17386658980986474504.a n = A019555 (n + 1)

end A019555

/-! ## A019555.P9480907901984557176

`gcd(A000027(n+1), A254733(n+1))`
-/

namespace A019555.P9480907901984557176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A254733 (n + 1))

end

end A019555.P9480907901984557176

namespace A019555

/-- `gcd(A000027(n+1), A254733(n+1))` -/
def P9480907901984557176.Spec : Prop :=
  ∀ n, (P9480907901984557176.a n : ℤ) = A019555 (n + 1)

end A019555

/-! ## A019555.P12974322311314134624

`A000188(A000189(n+1))*A056552(n+1)`
-/

namespace A019555.P12974322311314134624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A000189 (n + 1)).toNat * A056552 (n + 1)

end

end A019555.P12974322311314134624

namespace A019555

/-- `A000188(A000189(n+1))*A056552(n+1)` -/
def P12974322311314134624.Spec : Prop :=
  ∀ n, P12974322311314134624.a n = A019555 (n + 1)

end A019555

/-! ## A019555.P15336494737616126031

`A019554(A000189(n+1)*A056552(n+1))`
-/

namespace A019555.P15336494737616126031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A000189 (n + 1) * A056552 (n + 1)).toNat

end

end A019555.P15336494737616126031

namespace A019555

/-- `A019554(A000189(n+1)*A056552(n+1))` -/
def P15336494737616126031.Spec : Prop :=
  ∀ n, P15336494737616126031.a n = A019555 (n + 1)

end A019555

/-! ## A019555.P12411574328037911799

`A053166((n+1)*A053150(n+1))`
-/

namespace A019555.P12411574328037911799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 ((n + 1 : ℤ) * A053150 (n + 1)).toNat

end

end A019555.P12411574328037911799

namespace A019555

/-- `A053166((n+1)*A053150(n+1))` -/
def P12411574328037911799.Spec : Prop :=
  ∀ n, P12411574328037911799.a n = A019555 (n + 1)

end A019555

/-! ## A019555.P7073746604782218395

`A053166(A053166(n+1)*A057521(n+1))`
-/

namespace A019555.P7073746604782218395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (A053166 (n + 1) * A057521 (n + 1)).toNat

end

end A019555.P7073746604782218395

namespace A019555

/-- `A053166(A053166(n+1)*A057521(n+1))` -/
def P7073746604782218395.Spec : Prop :=
  ∀ n, P7073746604782218395.a n = A019555 (n + 1)

end A019555

/-! ## A019555.P3700284432186694125

`A015052((n+1)*A000189(n+1))`
-/

namespace A019555.P3700284432186694125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 ((n + 1 : ℤ) * A000189 (n + 1)).toNat

end

end A019555.P3700284432186694125

namespace A019555

/-- `A015052((n+1)*A000189(n+1))` -/
def P3700284432186694125.Spec : Prop :=
  ∀ n, P3700284432186694125.a n = A019555 (n + 1)

end A019555

/-! ## A019555.P14163004127673667445

`A015052((n+1)*A000190(n+1))`
-/

namespace A019555.P14163004127673667445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 ((n + 1 : ℤ) * A000190 (n + 1)).toNat

end

end A019555.P14163004127673667445

namespace A019555

/-- `A015052((n+1)*A000190(n+1))` -/
def P14163004127673667445.Spec : Prop :=
  ∀ n, P14163004127673667445.a n = A019555 (n + 1)

end A019555

/-! ## A019555.P3394499115962392703

`A015053(A102631(n+1))`
-/

namespace A019555.P3394499115962392703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (A102631 (n + 1)).toNat

end

end A019555.P3394499115962392703

namespace A019555

/-- `A015053(A102631(n+1))` -/
def P3394499115962392703.Spec : Prop :=
  ∀ n, P3394499115962392703.a n = A019555 (n + 1)

end A019555

/-! ## A019555.P2609486597558604706

`A015053((n+1)*A003557(n+1))`
-/

namespace A019555.P2609486597558604706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 ((n + 1 : ℤ) * A003557 (n + 1)).toNat

end

end A019555.P2609486597558604706

namespace A019555

/-- `A015053((n+1)*A003557(n+1))` -/
def P2609486597558604706.Spec : Prop :=
  ∀ n, P2609486597558604706.a n = A019555 (n + 1)

end A019555

/-! ## A019555.P16661687728291172006

`A015052((n+1)²/A015052(n+1))`
-/

namespace A019555.P16661687728291172006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A015052 (n + 1) : ℚ))).toNat

end

end A019555.P16661687728291172006

namespace A019555

/-- `A015052((n+1)²/A015052(n+1))` -/
def P16661687728291172006.Spec : Prop :=
  ∀ n, P16661687728291172006.a n = A019555 (n + 1)

end A019555

/-! ## A019555.P16812833816510433128

`A015052((n+1)*A008835(n+1))`
-/

namespace A019555.P16812833816510433128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 ((n + 1 : ℤ) * A008835 (n + 1)).toNat

end

end A019555.P16812833816510433128

namespace A019555

/-- `A015052((n+1)*A008835(n+1))` -/
def P16812833816510433128.Spec : Prop :=
  ∀ n, P16812833816510433128.a n = A019555 (n + 1)

end A019555

/-! ## A019555.P12858959712828262494

`A015053((n+1)*A032742(n+1))`
-/

namespace A019555.P12858959712828262494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 ((n + 1 : ℤ) * A032742 (n + 1)).toNat

end

end A019555.P12858959712828262494

namespace A019555

/-- `A015053((n+1)*A032742(n+1))` -/
def P12858959712828262494.Spec : Prop :=
  ∀ n, P12858959712828262494.a n = A019555 (n + 1)

end A019555

/-! ## A019555.P13353320098638636245

`A272327(A167614(n+1))-(n+1)`
-/

namespace A019555.P13353320098638636245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272327 (A167614 (n + 1)).toNat - (n + 1 : ℤ)

end

end A019555.P13353320098638636245

namespace A019555

/-- `A272327(A167614(n+1))-(n+1)` -/
def P13353320098638636245.Spec : Prop :=
  ∀ n, P13353320098638636245.a n = A019555 (n + 1)

end A019555

/-! ## A019555.P4663698687662514039

`A015053((n+1)*A008834(n+1))`
-/

namespace A019555.P4663698687662514039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 ((n + 1 : ℤ) * A008834 (n + 1)).toNat

end

end A019555.P4663698687662514039

namespace A019555

/-- `A015053((n+1)*A008834(n+1))` -/
def P4663698687662514039.Spec : Prop :=
  ∀ n, P4663698687662514039.a n = A019555 (n + 1)

end A019555

/-! ## A019555.P15436065124814634435

`A015053((n+1)*A008833(n+1))`
-/

namespace A019555.P15436065124814634435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 ((n + 1 : ℤ) * A008833 (n + 1)).toNat

end

end A019555.P15436065124814634435

namespace A019555

/-- `A015053((n+1)*A008833(n+1))` -/
def P15436065124814634435.Spec : Prop :=
  ∀ n, P15436065124814634435.a n = A019555 (n + 1)

end A019555

/-!
# A019556: Dimension of space of Jacobi forms of weight 4 and index n.

The programs for A019556, there is no canonical definition to state claims against.
-/

/-! ## A019556.P12397928610562848562

`A331245(A008350(n)!%A108199(n+1))`
-/

namespace A019556.P12397928610562848562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331245 (Int.tmod (Nat.factorial (A008350 n).toNat : ℤ) (A108199 (n + 1))).toNat

end

end A019556.P12397928610562848562

/-! ## A019556.P12762077524243841376

`A008320(A008350(A097479(n)+n))`
-/

namespace A019556.P12762077524243841376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008320 (A008350 (A097479 n + (n : ℤ)).toNat).toNat

end

end A019556.P12762077524243841376

/-! ## A019556.P15061568107345101366

`A008320(or(A008350(n), A097479(n)))`
-/

namespace A019556.P15061568107345101366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008320 (Int.lor (A008350 n) (A097479 n)).toNat

end

end A019556.P15061568107345101366

/-! ## A019556.P13867167802514791390

`A016028(or(A008350(n), A097479(n)))`
-/

namespace A019556.P13867167802514791390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016028 (Int.lor (A008350 n) (A097479 n)).toNat

end

end A019556.P13867167802514791390

/-! ## A019556.P17242438708825906476

`A057164(or(A008350(n), A097479(n)))`
-/

namespace A019556.P17242438708825906476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (Int.lor (A008350 n) (A097479 n)).toNat

end

end A019556.P17242438708825906476

/-!
# A019557: Coordination sequence for G_2 lattice.

The programs for A019557, the canonical program `A019557.P403049892568768982` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019557 has offset 0).

The definition of A019557 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019557.P403049892568768982

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=12, a(2)=30`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019557

/-- `2*a(n-1)-a(n-2)` -/
def P403049892568768982.Spec : Prop :=
  ∀ n, P403049892568768982.a n = A019557 n

theorem P403049892568768982.correct : P403049892568768982.Spec := by
  intro n
  simp only [A019557]

end A019557

/-!
# A019558: Coordination sequence for F_4 lattice.

The programs for A019558, the canonical program `A019558.P1028018214492281376` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019558 has offset 0).

The definition of A019558 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A019558.P1028018214492281376

`A022144(3*n)+Δ[A052762(2*n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A019558

/-- `A022144(3*n)+Δ[A052762(2*n)]` -/
def P1028018214492281376.Spec : Prop :=
  ∀ n, P1028018214492281376.a n = A019558 n

theorem P1028018214492281376.correct : P1028018214492281376.Spec := by
  intro n
  simp only [A019558]

end A019558

/-! ## A019558.P15429619077074148262

`A016028(A016813(n))*A022144(n)`
-/

namespace A019558.P15429619077074148262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016028 (A016813 n).toNat * A022144 n

end

end A019558.P15429619077074148262

namespace A019558

/-- `A016028(A016813(n))*A022144(n)` -/
def P15429619077074148262.Spec : Prop :=
  ∀ n, P15429619077074148262.a n = A019558 n

end A019558

/-! ## A019558.P343060094053712338

`A016028(A005408(2*n))*A022144(n)`
-/

namespace A019558.P343060094053712338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016028 (A005408 (2 * n)).toNat * A022144 n

end

end A019558.P343060094053712338

namespace A019558

/-- `A016028(A005408(2*n))*A022144(n)` -/
def P343060094053712338.Spec : Prop :=
  ∀ n, P343060094053712338.a n = A019558 n

end A019558

/-! ## A019558.P15089336877548004426

`A090771(4*n+1)+A000578(A004273(2*n))`
-/

namespace A019558.P15089336877548004426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (4 * n + 1) + A000578 (A004273 (2 * n)).toNat

end

end A019558.P15089336877548004426

namespace A019558

/-- `A090771(4*n+1)+A000578(A004273(2*n))` -/
def P15089336877548004426.Spec : Prop :=
  ∀ n, P15089336877548004426.a n = A019558 n

end A019558

/-! ## A019558.P3126207949545368234

`A008458(A008586(n))+A007531(A008586(n))`
-/

namespace A019558.P3126207949545368234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A008586 n).toNat + A007531 (A008586 n).toNat

end

end A019558.P3126207949545368234

namespace A019558

/-- `A008458(A008586(n))+A007531(A008586(n))` -/
def P3126207949545368234.Spec : Prop :=
  ∀ n, P3126207949545368234.a n = A019558 n

end A019558

/-!
# A019559: Period 5: repeat [4, 4, 6, 6, 6].

The programs for A019559, the canonical program `A019559.P9089828507763916493` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019559 has offset 0).

The definition of A019559 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A019559.anchor (n : ℕ) : A019559 n = [4, 4, 6, 6, 6].getD (n % 5) 0` in `Proof.A019.A019559`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A019559.P9089828507763916493

`4*floor((n+5)/5)+2*floor((n+3)/5)-6*floor(n/5)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019559

/-- `4*floor((n+5)/5)+2*floor((n+3)/5)-6*floor(n/5)` -/
def P9089828507763916493.Spec : Prop :=
  ∀ n, P9089828507763916493.a n = A019559 n

theorem P9089828507763916493.correct : P9089828507763916493.Spec := by
  intro n
  simp only [A019559]

end A019559

/-!
# A019560: Coordination sequence for C_4 lattice.

The programs for A019560, the canonical program `A019560.P6308997098226011224` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019560 has offset 0).

The definition of A019560 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019560.P6308997098226011224

`A008412(2*n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A019560

/-- `A008412(2*n)` -/
def P6308997098226011224.Spec : Prop :=
  ∀ n, P6308997098226011224.a n = A019560 n

theorem P6308997098226011224.correct : P6308997098226011224.Spec := by
  intro n
  simp only [A019560]

end A019560

/-! ## A019560.P8467015054437889984

`A144965(n)+A001386(n)`
-/

namespace A019560.P8467015054437889984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144965 n + A001386 n

end

end A019560.P8467015054437889984

namespace A019560

/-- `A144965(n)+A001386(n)` -/
def P8467015054437889984.Spec : Prop :=
  ∀ n, P8467015054437889984.a n = A019560 n

end A019560

/-! ## A019560.P18005374463764044882

`A035471(n)*A123932(n)`
-/

namespace A019560.P18005374463764044882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035471 n * A123932 n

end

end A019560.P18005374463764044882

namespace A019560

/-- `A035471(n)*A123932(n)` -/
def P18005374463764044882.Spec : Prop :=
  ∀ n, P18005374463764044882.a n = A019560 n

end A019560

/-! ## A019560.P356179710836518336

`A101098(n+1)+A035597(n)`
-/

namespace A019560.P356179710836518336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101098 (n + 1) + A035597 n

end

end A019560.P356179710836518336

namespace A019560

/-- `A101098(n+1)+A035597(n)` -/
def P356179710836518336.Spec : Prop :=
  ∀ n, P356179710836518336.a n = A019560 n

end A019560

/-! ## A019560.P3556890121140741899

`A007900(n)²/(A007900(n)-A061804(n))`
-/

namespace A019560.P3556890121140741899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007900 n ^ 2 : ℚ) / (A007900 n - A061804 n : ℚ)

end

end A019560.P3556890121140741899

namespace A019560

/-- `A007900(n)²/(A007900(n)-A061804(n))` -/
def P3556890121140741899.Spec : Prop :=
  ∀ n, P3556890121140741899.a n = (A019560 n : ℚ)

end A019560

/-! ## A019560.P10362232323386433651

`Δ[(comp[2*(n+1)]²+1)²]/3`
-/

namespace A019560.P10362232323386433651
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n ^ 2 + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 3

end

end A019560.P10362232323386433651

namespace A019560

/-- `Δ[(comp[2*(n+1)]²+1)²]/3` -/
def P10362232323386433651.Spec : Prop :=
  ∀ n, P10362232323386433651.a n = (A019560 n : ℚ)

end A019560

/-! ## A019560.P13446058930518442397

`∑[A115293(2*n)]`
-/

namespace A019560.P13446058930518442397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115293 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019560.P13446058930518442397

namespace A019560

/-- `∑[A115293(2*n)]` -/
def P13446058930518442397.Spec : Prop :=
  ∀ n, P13446058930518442397.a n = A019560 n

end A019560

/-! ## A019560.P7783422317575320531

`A115293(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A019560.P7783422317575320531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A115293 (n + n) + a (n - 1)

end

end A019560.P7783422317575320531

namespace A019560

/-- `A115293(n+n)+a(n-1)` -/
def P7783422317575320531.Spec : Prop :=
  ∀ n, P7783422317575320531.a n = A019560 n

end A019560

/-! ## A019560.P17924477877710894093

`A008412(n+n)%A008412(n+1)²`
-/

namespace A019560.P17924477877710894093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008412 (n + n)) (A008412 (n + 1) ^ 2)

end

end A019560.P17924477877710894093

namespace A019560

/-- `A008412(n+n)%A008412(n+1)²` -/
def P17924477877710894093.Spec : Prop :=
  ∀ n, P17924477877710894093.a n = A019560 n

end A019560

/-! ## A019560.P3485592905154302342

`A143166(2*n)+A008706(2*n)`
-/

namespace A019560.P3485592905154302342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143166 (2 * n) + A008706 (2 * n)

end

end A019560.P3485592905154302342

namespace A019560

/-- `A143166(2*n)+A008706(2*n)` -/
def P3485592905154302342.Spec : Prop :=
  ∀ n, P3485592905154302342.a n = A019560 n

end A019560

/-! ## A019560.P17324144591014074001

`A259110(2*n)+A008458(2*n)`
-/

namespace A019560.P17324144591014074001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259110 (2 * n) + A008458 (2 * n)

end

end A019560.P17324144591014074001

namespace A019560

/-- `A259110(2*n)+A008458(2*n)` -/
def P17324144591014074001.Spec : Prop :=
  ∀ n, P17324144591014074001.a n = A019560 n

end A019560

/-! ## A019560.P16228867707747431656

`A008532(2*n)-A035597(2*n)`
-/

namespace A019560.P16228867707747431656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008532 (2 * n) - A035597 (2 * n)

end

end A019560.P16228867707747431656

namespace A019560

/-- `A008532(2*n)-A035597(2*n)` -/
def P16228867707747431656.Spec : Prop :=
  ∀ n, P16228867707747431656.a n = A019560 n

end A019560

/-! ## A019560.P4091913572831113001

`A008529(2*n)-A061804(2*n)`
-/

namespace A019560.P4091913572831113001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008529 (2 * n) - A061804 (2 * n)

end

end A019560.P4091913572831113001

namespace A019560

/-- `A008529(2*n)-A061804(2*n)` -/
def P4091913572831113001.Spec : Prop :=
  ∀ n, P4091913572831113001.a n = A019560 n

theorem P4091913572831113001.correct : P4091913572831113001.Spec := by
  intro n
  simp only [A019560, Nat.add_sub_cancel, A019560.P4091913572831113001.a, A019560.P6308997098226011224.a, A008412, A008412.P13878766666542366952.a, A008529, A008529.P13531353891507600582.a, A061804, A061804.P16305426185761710400.a, A005899, A005899.P4162979677913820766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A019560

/-! ## A019560.P16043232712007425994

`A289721(2*n)-A004467(2*n)`
-/

namespace A019560.P16043232712007425994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289721 (2 * n) - A004467 (2 * n)

end

end A019560.P16043232712007425994

namespace A019560

/-- `A289721(2*n)-A004467(2*n)` -/
def P16043232712007425994.Spec : Prop :=
  ∀ n, P16043232712007425994.a n = A019560 n

end A019560

/-! ## A019560.P5441119735261483442

`A359096(2*n+1)-A033991(2*n)`
-/

namespace A019560.P5441119735261483442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359096 (2 * n + 1) - A033991 (2 * n)

end

end A019560.P5441119735261483442

namespace A019560

/-- `A359096(2*n+1)-A033991(2*n)` -/
def P5441119735261483442.Spec : Prop :=
  ∀ n, P5441119735261483442.a n = A019560 n

end A019560

/-! ## A019560.P7566549484226776943

`A008574(2*n)+2*A035597(2*n)`
-/

namespace A019560.P7566549484226776943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n) + 2 * A035597 (2 * n)

end

end A019560.P7566549484226776943

namespace A019560

/-- `A008574(2*n)+2*A035597(2*n)` -/
def P7566549484226776943.Spec : Prop :=
  ∀ n, P7566549484226776943.a n = A019560 n

end A019560

/-! ## A019560.P8454784957369433829

`2*A001845(2*n)-A005899(2*n)`
-/

namespace A019560.P8454784957369433829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001845 (2 * n) - A005899 (2 * n)

end

end A019560.P8454784957369433829

namespace A019560

/-- `2*A001845(2*n)-A005899(2*n)` -/
def P8454784957369433829.Spec : Prop :=
  ∀ n, P8454784957369433829.a n = A019560 n

end A019560

/-! ## A019560.P7963490802877034252

`2*A008532(2*n)-A001386(2*n)`
-/

namespace A019560.P7963490802877034252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008532 (2 * n) - A001386 (2 * n)

end

end A019560.P7963490802877034252

namespace A019560

/-- `2*A008532(2*n)-A001386(2*n)` -/
def P7963490802877034252.Spec : Prop :=
  ∀ n, P7963490802877034252.a n = A019560 n

end A019560

/-! ## A019560.P6057900024370362831

`A001386(2*n)-2*A035597(2*n)`
-/

namespace A019560.P6057900024370362831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001386 (2 * n) - 2 * A035597 (2 * n)

end

end A019560.P6057900024370362831

namespace A019560

/-- `A001386(2*n)-2*A035597(2*n)` -/
def P6057900024370362831.Spec : Prop :=
  ∀ n, P6057900024370362831.a n = A019560 n

end A019560

/-!
# A019561: Coordination sequence for C_5 lattice.

The programs for A019561, the canonical program `A019561.P14281502706415574798` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019561 has offset 0).

The definition of A019561 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008413, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A019561.P14281502706415574798

`A008413(2*n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A019561

/-- `A008413(2*n)` -/
def P14281502706415574798.Spec : Prop :=
  ∀ n, P14281502706415574798.a n = A019561 n

theorem P14281502706415574798.correct : P14281502706415574798.Spec := by
  intro n
  simp only [A019561]

end A019561

/-! ## A019561.P46114162896924098

`A010006(n)+n*A019560(n)`
-/

namespace A019561.P46114162896924098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010006 n + (n : ℤ) * A019560 n

end

end A019561.P46114162896924098

namespace A019561

/-- `A010006(n)+n*A019560(n)` -/
def P46114162896924098.Spec : Prop :=
  ∀ n, P46114162896924098.a n = A019561 n

end A019561

/-! ## A019561.P8240393089501029474

`xor(1, xor(1, A008413(n+n)))`
-/

namespace A019561.P8240393089501029474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A008413 (n + n)))

end

end A019561.P8240393089501029474

namespace A019561

/-- `xor(1, xor(1, A008413(n+n)))` -/
def P8240393089501029474.Spec : Prop :=
  ∀ n, P8240393089501029474.a n = A019561 n

end A019561

/-! ## A019561.P14101203453863331037

`A025441(gcd(n, n+1))+A008413(n+n)`
-/

namespace A019561.P14101203453863331037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (Nat.gcd n (n + 1)) + A008413 (n + n)

end

end A019561.P14101203453863331037

namespace A019561

/-- `A025441(gcd(n, n+1))+A008413(n+n)` -/
def P14101203453863331037.Spec : Prop :=
  ∀ n, P14101203453863331037.a n = A019561 n

end A019561

/-! ## A019561.P1657008508672011554

`A187756(2*n)+A005919(2*n)`
-/

namespace A019561.P1657008508672011554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187756 (2 * n) + A005919 (2 * n)

end

end A019561.P1657008508672011554

namespace A019561

/-- `A187756(2*n)+A005919(2*n)` -/
def P1657008508672011554.Spec : Prop :=
  ∀ n, P1657008508672011554.a n = A019561 n

end A019561

/-! ## A019561.P2698826749480164172

`A005899(2*n)+2*A035598(2*n)`
-/

namespace A019561.P2698826749480164172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 (2 * n) + 2 * A035598 (2 * n)

end

end A019561.P2698826749480164172

namespace A019561

/-- `A005899(2*n)+2*A035598(2*n)` -/
def P2698826749480164172.Spec : Prop :=
  ∀ n, P2698826749480164172.a n = A019561 n

end A019561

/-! ## A019561.P15246807597627668491

`2*A001846(2*n)-A008412(2*n)`
-/

namespace A019561.P15246807597627668491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001846 (2 * n) - A008412 (2 * n)

end

end A019561.P15246807597627668491

namespace A019561

/-- `2*A001846(2*n)-A008412(2*n)` -/
def P15246807597627668491.Spec : Prop :=
  ∀ n, P15246807597627668491.a n = A019561 n

end A019561

/-! ## A019561.P1981727861692811850

`∑[A287324(2*n+1)+A287324(2*n)]`
-/

namespace A019561.P1981727861692811850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287324 (2 * n + 1) + A287324 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019561.P1981727861692811850

namespace A019561

/-- `∑[A287324(2*n+1)+A287324(2*n)]` -/
def P1981727861692811850.Spec : Prop :=
  ∀ n, P1981727861692811850.a n = A019561 n

end A019561

/-! ## A019561.P14366679678098046712

`A069038(2*n+1)-A069038(A004273(n))`
-/

namespace A019561.P14366679678098046712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069038 (2 * n + 1) - A069038 (A004273 n).toNat

end

end A019561.P14366679678098046712

namespace A019561

/-- `A069038(2*n+1)-A069038(A004273(n))` -/
def P14366679678098046712.Spec : Prop :=
  ∀ n, P14366679678098046712.a n = A019561 n

end A019561

/-! ## A019561.P1542523787095676018

`A035607(A052905(2*n)+4*n+9)`
-/

namespace A019561.P1542523787095676018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A052905 (2 * n) + (4 * n + 9 : ℤ)).toNat

end

end A019561.P1542523787095676018

namespace A019561

/-- `A035607(A052905(2*n)+4*n+9)` -/
def P1542523787095676018.Spec : Prop :=
  ∀ n, P1542523787095676018.a n = A019561 n

end A019561

/-!
# A019562: Coordination sequence for C_6 lattice.

The programs for A019562, the canonical program `A019562.P12290986405228145388` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019562 has offset 0).

The definition of A019562 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008414, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A019562.P12290986405228145388

`A008414(2*n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A019562

/-- `A008414(2*n)` -/
def P12290986405228145388.Spec : Prop :=
  ∀ n, P12290986405228145388.a n = A019562 n

theorem P12290986405228145388.correct : P12290986405228145388.Spec := by
  intro n
  simp only [A019562]

end A019562

/-! ## A019562.P11073110644723947787

`record[A008414(and(n, n+1))]`
-/

namespace A019562.P11073110644723947787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008414 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019562.P11073110644723947787

namespace A019562

/-- `record[A008414(and(n, n+1))]` -/
def P11073110644723947787.Spec : Prop :=
  ∀ n, P11073110644723947787.a n = A019562 n

end A019562

/-! ## A019562.P16478911907604679209

`xor(2, A008414(n+n)+2)`
-/

namespace A019562.P16478911907604679209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A008414 (n + n) + 2)

end

end A019562.P16478911907604679209

namespace A019562

/-- `xor(2, A008414(n+n)+2)` -/
def P16478911907604679209.Spec : Prop :=
  ∀ n, P16478911907604679209.a n = A019562 n

end A019562

/-! ## A019562.P5063675039689292789

`A305549(n)-A069039(A004277(n)-1)`
-/

namespace A019562.P5063675039689292789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305549 n - A069039 (A004277 n - 1).toNat

end

end A019562.P5063675039689292789

namespace A019562

/-- `A305549(n)-A069039(A004277(n)-1)` -/
def P5063675039689292789.Spec : Prop :=
  ∀ n, P5063675039689292789.a n = A019562 n

end A019562

/-! ## A019562.P5069174263400476153

`Δ[A069039(A004277(n)-1)]`
-/

namespace A019562.P5069174263400476153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069039 (A004277 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A019562.P5069174263400476153

namespace A019562

/-- `Δ[A069039(A004277(n)-1)]` -/
def P5069174263400476153.Spec : Prop :=
  ∀ n, P5069174263400476153.a n = A019562 n

end A019562

/-! ## A019562.P13857129915616880018

`A036453(2*n+1)*A364429(2*n)`
-/

namespace A019562.P13857129915616880018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (2 * n + 1) * A364429 (2 * n)

end

end A019562.P13857129915616880018

namespace A019562

/-- `A036453(2*n+1)*A364429(2*n)` -/
def P13857129915616880018.Spec : Prop :=
  ∀ n, P13857129915616880018.a n = A019562 n

end A019562

/-! ## A019562.P17862034341324341333

`2*A001848(2*n)-A008415(2*n)`
-/

namespace A019562.P17862034341324341333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001848 (2 * n) - A008415 (2 * n)

end

end A019562.P17862034341324341333

namespace A019562

/-- `2*A001848(2*n)-A008415(2*n)` -/
def P17862034341324341333.Spec : Prop :=
  ∀ n, P17862034341324341333.a n = A019562 n

end A019562

/-! ## A019562.P16259313944724306938

`A069039(2*n+1)-A069039(A004273(n))`
-/

namespace A019562.P16259313944724306938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069039 (2 * n + 1) - A069039 (A004273 n).toNat

end

end A019562.P16259313944724306938

namespace A019562

/-- `A069039(2*n+1)-A069039(A004273(n))` -/
def P16259313944724306938.Spec : Prop :=
  ∀ n, P16259313944724306938.a n = A019562 n

end A019562

/-! ## A019562.P6935048115866475674

`A035607(A026054(2*(n+2))-A026054(2*n+3))`
-/

namespace A019562.P6935048115866475674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A026054 (2 * (n + 2)) - A026054 (2 * n + 3)).toNat

end

end A019562.P6935048115866475674

namespace A019562

/-- `A035607(A026054(2*(n+2))-A026054(2*n+3))` -/
def P6935048115866475674.Spec : Prop :=
  ∀ n, P6935048115866475674.a n = A019562 n

end A019562

/-!
# A019563: Coordination sequence for C_7 lattice.

The programs for A019563, the canonical program `A019563.P17268323509037775158` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019563 has offset 0).

The definition of A019563 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A019563.P17268323509037775158

`A008415(2*n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A019563

/-- `A008415(2*n)` -/
def P17268323509037775158.Spec : Prop :=
  ∀ n, P17268323509037775158.a n = A019563 n

theorem P17268323509037775158.correct : P17268323509037775158.Spec := by
  intro n
  simp only [A019563]

end A019563

/-! ## A019563.P7447404743641148433

`record[A099193(or(1, n+1))-A099193(n)]`
-/

namespace A019563.P7447404743641148433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099193 (Nat.lor 1 (n + 1)) - A099193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019563.P7447404743641148433

namespace A019563

/-- `record[A099193(or(1, n+1))-A099193(n)]` -/
def P7447404743641148433.Spec : Prop :=
  ∀ n, P7447404743641148433.a n = A019563 n

end A019563

/-! ## A019563.P10783716435363663602

`2*A001848(2*n)-A008414(2*n)`
-/

namespace A019563.P10783716435363663602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001848 (2 * n) - A008414 (2 * n)

end

end A019563.P10783716435363663602

namespace A019563

/-- `2*A001848(2*n)-A008414(2*n)` -/
def P10783716435363663602.Spec : Prop :=
  ∀ n, P10783716435363663602.a n = A019563 n

end A019563

/-! ## A019563.P4322691964057204716

`2*A001849(2*n)-A008416(2*n)`
-/

namespace A019563.P4322691964057204716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001849 (2 * n) - A008416 (2 * n)

end

end A019563.P4322691964057204716

namespace A019563

/-- `2*A001849(2*n)-A008416(2*n)` -/
def P4322691964057204716.Spec : Prop :=
  ∀ n, P4322691964057204716.a n = A019563 n

end A019563

/-! ## A019563.P11206371307347235549

`A099193(2*n+1)-A099193(A004273(n))`
-/

namespace A019563.P11206371307347235549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099193 (2 * n + 1) - A099193 (A004273 n).toNat

end

end A019563.P11206371307347235549

namespace A019563

/-- `A099193(2*n+1)-A099193(A004273(n))` -/
def P11206371307347235549.Spec : Prop :=
  ∀ n, P11206371307347235549.a n = A019563 n

end A019563

/-! ## A019563.P10914164695779821515

`A035601(2*n+1)-(A035601(2*n)+A008414(2*n))`
-/

namespace A019563.P10914164695779821515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035601 (2 * n + 1) - (A035601 (2 * n) + A008414 (2 * n))

end

end A019563.P10914164695779821515

namespace A019563

/-- `A035601(2*n+1)-(A035601(2*n)+A008414(2*n))` -/
def P10914164695779821515.Spec : Prop :=
  ∀ n, P10914164695779821515.a n = A019563 n

end A019563

/-! ## A019563.P9813714430316951585

`A008415(n+n)%A008415(A277600(n+1))`
-/

namespace A019563.P9813714430316951585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008415 (n + n)) (A008415 (A277600 (n + 1)).toNat)

end

end A019563.P9813714430316951585

namespace A019563

/-- `A008415(n+n)%A008415(A277600(n+1))` -/
def P9813714430316951585.Spec : Prop :=
  ∀ n, P9813714430316951585.a n = A019563 n

end A019563

/-!
# A019564: Coordination sequence for C_8 lattice.

The programs for A019564, the canonical program `A019564.P17251219287643129102` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019564 has offset 0).

The definition of A019564 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008416, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A019564.P17251219287643129102

`A008416(2*n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A019564

/-- `A008416(2*n)` -/
def P17251219287643129102.Spec : Prop :=
  ∀ n, P17251219287643129102.a n = A019564 n

theorem P17251219287643129102.correct : P17251219287643129102.Spec := by
  intro n
  simp only [A019564]

end A019564

/-! ## A019564.P11122291568711061767

`record[gcd(val(n+1, 2), A008416(n))]`
-/

namespace A019564.P11122291568711061767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A008416 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019564.P11122291568711061767

namespace A019564

/-- `record[gcd(val(n+1, 2), A008416(n))]` -/
def P11122291568711061767.Spec : Prop :=
  ∀ n, (P11122291568711061767.a n : ℤ) = A019564 n

end A019564

/-! ## A019564.P10449232606337851678

`A008416(n+n)/A345942(A006530(n+1))`
-/

namespace A019564.P10449232606337851678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008416 (n + n) : ℚ) / (A345942 (A006530 (n + 1)).toNat : ℚ)

end

end A019564.P10449232606337851678

namespace A019564

/-- `A008416(n+n)/A345942(A006530(n+1))` -/
def P10449232606337851678.Spec : Prop :=
  ∀ n, P10449232606337851678.a n = (A019564 n : ℚ)

end A019564

/-! ## A019564.P2957726997121679893

`record[A008416((∑[n]-1)%(n+1))]`
-/

namespace A019564.P2957726997121679893
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008416 (Int.tmod (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019564.P2957726997121679893

namespace A019564

/-- `record[A008416((∑[n]-1)%(n+1))]` -/
def P2957726997121679893.Spec : Prop :=
  ∀ n, P2957726997121679893.a n = A019564 n

end A019564

/-! ## A019564.P11259063538995025709

`A008414(2*n)+2*A035601(2*n)`
-/

namespace A019564.P11259063538995025709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008414 (2 * n) + 2 * A035601 (2 * n)

end

end A019564.P11259063538995025709

namespace A019564

/-- `A008414(2*n)+2*A035601(2*n)` -/
def P11259063538995025709.Spec : Prop :=
  ∀ n, P11259063538995025709.a n = A019564 n

end A019564

/-! ## A019564.P1968031472901789473

`2*A001849(2*n)-A008415(2*n)`
-/

namespace A019564.P1968031472901789473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001849 (2 * n) - A008415 (2 * n)

end

end A019564.P1968031472901789473

namespace A019564

/-- `2*A001849(2*n)-A008415(2*n)` -/
def P1968031472901789473.Spec : Prop :=
  ∀ n, P1968031472901789473.a n = A019564 n

end A019564

/-! ## A019564.P17095427690748974817

`2*A008417(2*n)-A008418(2*n)`
-/

namespace A019564.P17095427690748974817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008417 (2 * n) - A008418 (2 * n)

end

end A019564.P17095427690748974817

namespace A019564

/-- `2*A008417(2*n)-A008418(2*n)` -/
def P17095427690748974817.Spec : Prop :=
  ∀ n, P17095427690748974817.a n = A019564 n

end A019564

/-! ## A019564.P3882986372132979371

`A099195(2*n+1)-A099195(A004273(n))`
-/

namespace A019564.P3882986372132979371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099195 (2 * n + 1) - A099195 (A004273 n).toNat

end

end A019564.P3882986372132979371

namespace A019564

/-- `A099195(2*n+1)-A099195(A004273(n))` -/
def P3882986372132979371.Spec : Prop :=
  ∀ n, P3882986372132979371.a n = A019564 n

end A019564

/-! ## A019564.P3557870004282499860

`A035602(2*n+1)-(A035602(2*n)+A008415(2*n))`
-/

namespace A019564.P3557870004282499860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035602 (2 * n + 1) - (A035602 (2 * n) + A008415 (2 * n))

end

end A019564.P3557870004282499860

namespace A019564

/-- `A035602(2*n+1)-(A035602(2*n)+A008415(2*n))` -/
def P3557870004282499860.Spec : Prop :=
  ∀ n, P3557870004282499860.a n = A019564 n

end A019564

/-! ## A019564.P15765577396800023748

`A008416(n+n)%A008416(A216883(n+1))`
-/

namespace A019564.P15765577396800023748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008416 (n + n)) (A008416 (A216883 (n + 1)).toNat)

end

end A019564.P15765577396800023748

namespace A019564

/-- `A008416(n+n)%A008416(A216883(n+1))` -/
def P15765577396800023748.Spec : Prop :=
  ∀ n, P15765577396800023748.a n = A019564 n

end A019564

/-!
# A019565: The squarefree numbers ordered lexicographically by their prime factorization (with factors written in decreasing order). a(n) = Product_{k in I} prime(k+1), where I is the set of indices of nonzero binary digits in n = Sum_{k in I} 2^k.

The programs for A019565, there is no canonical definition to state claims against.
-/

/-! ## A019565.P17154785560360276254

`A336322(A008578(n+1))`
-/

namespace A019565.P17154785560360276254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336322 (A008578 (n + 1)).toNat

end

end A019565.P17154785560360276254

/-! ## A019565.P7163646855255843327

`A097248(A260443(n))`
-/

namespace A019565.P7163646855255843327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097248 (A260443 n).toNat

end

end A019565.P7163646855255843327

/-! ## A019565.P8515721886046290512

`sqrt(A334110(n))`
-/

namespace A019565.P8515721886046290512
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A334110 n : ℝ)

end

end A019565.P8515721886046290512

/-! ## A019565.P12072459841434321475

`A339809(n)+1`
-/

namespace A019565.P12072459841434321475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 n + 1

end

end A019565.P12072459841434321475

/-! ## A019565.P13842644956040481901

`A365810(A193231(n))`
-/

namespace A019565.P13842644956040481901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365810 (A193231 n).toNat

end

end A019565.P13842644956040481901

/-! ## A019565.P17152884900202935668

`A303760(A303768(n))`
-/

namespace A019565.P17152884900202935668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 (A303768 n).toNat

end

end A019565.P17152884900202935668

/-! ## A019565.P18232083960858307409

`xor(A010684(n), A339809(n))`
-/

namespace A019565.P18232083960858307409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010684 n) (A339809 n)

end

end A019565.P18232083960858307409

/-! ## A019565.P10235869787780207509

`A284003(xor(n, floor(n/2)))`
-/

namespace A019565.P10235869787780207509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284003 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A019565.P10235869787780207509

/-! ## A019565.P2099202507521537390

`A284003(A003188(n))`
-/

namespace A019565.P2099202507521537390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284003 (A003188 n).toNat

end

end A019565.P2099202507521537390

/-! ## A019565.P5509432016139273053

`A302033(A006068(n))`
-/

namespace A019565.P5509432016139273053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302033 (A006068 n).toNat

end

end A019565.P5509432016139273053

/-! ## A019565.P6572379561985368420

`A284003(A286548(n)+n)`
-/

namespace A019565.P6572379561985368420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284003 (A286548 n + (n : ℤ)).toNat

end

end A019565.P6572379561985368420

/-! ## A019565.P15854498704273218576

`A304087(A304084(n))`
-/

namespace A019565.P15854498704273218576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 (A304084 n).toNat

end

end A019565.P15854498704273218576

/-! ## A019565.P4977473653965302278

`A252868(A372060(n)+1)`
-/

namespace A019565.P4977473653965302278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252868 (A372060 n + 1).toNat

end

end A019565.P4977473653965302278

/-! ## A019565.P17769581003604642707

`A303770(A303774(n))`
-/

namespace A019565.P17769581003604642707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303770 (A303774 n).toNat

end

end A019565.P17769581003604642707

/-! ## A019565.P1382669730396992999

`A277006(A048680(n))`
-/

namespace A019565.P1382669730396992999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277006 (A048680 n).toNat

end

end A019565.P1382669730396992999

/-! ## A019565.P11896561671388856601

`gcd(A344530(n), A378631(n+1))`
-/

namespace A019565.P11896561671388856601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A344530 n) (A378631 (n + 1))

end

end A019565.P11896561671388856601

/-! ## A019565.P9530167839063732778

`A304537(A304534(n))`
-/

namespace A019565.P9530167839063732778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304537 (A304534 n).toNat

end

end A019565.P9530167839063732778

/-! ## A019565.P336125145166669921

`A277330(A277711(n))`
-/

namespace A019565.P336125145166669921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277330 (A277711 n).toNat

end

end A019565.P336125145166669921

/-! ## A019565.P9545031982774301058

`A101278(A005836(n+1))`
-/

namespace A019565.P9545031982774301058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101278 (A005836 (n + 1)).toNat

end

end A019565.P9545031982774301058

/-! ## A019565.P2247687690435550510

`A101278(record[A004488(n)/2])`
-/

namespace A019565.P2247687690435550510
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004488 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101278 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A019565.P2247687690435550510

/-!
# A019566: The differences 1-1, 21-12, 321-123, ..., 10987654321-12345678910, 1110987654321-1234567891011, etc.

The programs for A019566, there is no canonical definition to state claims against.
-/

/-! ## A019566.P17434342818742763944

`9*A083449(n+1)`
-/

namespace A019566.P17434342818742763944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A083449 (n + 1)

end

end A019566.P17434342818742763944

/-! ## A019566.P6048929582299802530

`A000422(n+1)-A007908(n+1)`
-/

namespace A019566.P6048929582299802530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000422 (n + 1) - A007908 (n + 1)

end

end A019566.P6048929582299802530

/-! ## A019566.P7879412611597729234

`A000422(n+1)-∑[A078998(n+1)]`
-/

namespace A019566.P7879412611597729234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000422 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019566.P7879412611597729234

/-! ## A019566.P4322070373954929221

`A000422(n+1)+1-A359124(n+1)`
-/

namespace A019566.P4322070373954929221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000422 (n + 1) + (1 - A359124 (n + 1))

end

end A019566.P4322070373954929221

/-! ## A019566.P14022892564536066890

`A052246(n+1)/10-A007908(n+1)`
-/

namespace A019566.P14022892564536066890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052246 (n + 1) : ℚ) / 10 - (A007908 (n + 1) : ℚ)

end

end A019566.P14022892564536066890

/-! ## A019566.P7262389558807681618

`A052246(n+1)/10-∑[A078998(n+1)]`
-/

namespace A019566.P7262389558807681618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078998 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052246 (n + 1) : ℚ) / 10 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A019566.P7262389558807681618

/-! ## A019566.P15966235631389288877

`A000422(n+1)-A252043(A033061(n+1))`
-/

namespace A019566.P15966235631389288877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000422 (n + 1) - A252043 (A033061 (n + 1)).toNat

end

end A019566.P15966235631389288877

/-! ## A019566.P12469356379769294157

`A000422(n+1)-A252043(A058183(n+1))`
-/

namespace A019566.P12469356379769294157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000422 (n + 1) - A252043 (A058183 (n + 1)).toNat

end

end A019566.P12469356379769294157

/-! ## A019566.P3483980938656362003

`A000422(n+1)+A000422(n+1)-A078262(n+1)`
-/

namespace A019566.P3483980938656362003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000422 (n + 1) + (A000422 (n + 1) - A078262 (n + 1))

end

end A019566.P3483980938656362003

/-! ## A019566.P772451895242623040

`A000422(n+1)-A252043(A117804(n+1)+A004216(n+1))`
-/

namespace A019566.P772451895242623040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000422 (n + 1) - A252043 (A117804 (n + 1) + A004216 (n + 1)).toNat

end

end A019566.P772451895242623040

/-!
# A019567: Order of the Mongean shuffle permutation of 2n cards: a(n) is least number m for which either 2^m + 1 or 2^m - 1 is divisible by 4n + 1.

The programs for A019567, there is no canonical definition to state claims against.
-/

/-! ## A019567.P16245362028297762713

`A145787(A000069(n+1))`
-/

namespace A019567.P16245362028297762713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145787 (A000069 (n + 1)).toNat

end

end A019567.P16245362028297762713

/-! ## A019567.P1490645560359936432

`A145787(A004273(n)+1)`
-/

namespace A019567.P1490645560359936432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145787 (A004273 n + 1).toNat

end

end A019567.P1490645560359936432

/-! ## A019567.P495213491990250913

`A145787(A029739(n+1))`
-/

namespace A019567.P495213491990250913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145787 (A029739 (n + 1)).toNat

end

end A019567.P495213491990250913

/-! ## A019567.P6805533987884437722

`A145787(A047236(n+1))`
-/

namespace A019567.P6805533987884437722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145787 (A047236 (n + 1)).toNat

end

end A019567.P6805533987884437722

/-! ## A019567.P6598242310515657433

`A145787(A054684(n+1))`
-/

namespace A019567.P6598242310515657433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145787 (A054684 (n + 1)).toNat

end

end A019567.P6598242310515657433

/-! ## A019567.P12977157119346994799

`A145787(A158705(n+1))`
-/

namespace A019567.P12977157119346994799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145787 (A158705 (n + 1)).toNat

end

end A019567.P12977157119346994799

/-! ## A019567.P2191410509690302952

`A145787(A058992(n+2))`
-/

namespace A019567.P2191410509690302952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145787 (A058992 (n + 2)).toNat

end

end A019567.P2191410509690302952

/-! ## A019567.P12315008424919227832

`A003558(2*n)`
-/

namespace A019567.P12315008424919227832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (2 * n)

end

end A019567.P12315008424919227832

/-! ## A019567.P6445560004877775067

`A145787(Δ[n²])`
-/

namespace A019567.P6445560004877775067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145787 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A019567.P6445560004877775067

/-! ## A019567.P10126509022290546161

`A137605(Δ[n²])+1`
-/

namespace A019567.P10126509022290546161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137605 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A019567.P10126509022290546161

/-! ## A019567.P3146790379327174587

`A057027(A064578(A003558(n+n)))`
-/

namespace A019567.P3146790379327174587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057027 (A064578 (A003558 (n + n)).toNat).toNat

end

end A019567.P3146790379327174587

/-! ## A019567.P14876968222543000302

`A003558(A004277(n))%A004767(n)`
-/

namespace A019567.P14876968222543000302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003558 (A004277 n).toNat) (A004767 n)

end

end A019567.P14876968222543000302

/-! ## A019567.P6639916094305906732

`A145787(A005408(n))%A004767(n)`
-/

namespace A019567.P6639916094305906732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145787 (A005408 n).toNat) (A004767 n)

end

end A019567.P6639916094305906732

/-! ## A019567.P9782942542498916710

`A309786(3*n+n+1)`
-/

namespace A019567.P9782942542498916710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309786 (3 * n + (n + 1))

end

end A019567.P9782942542498916710

/-!
# A019568: a(n) = smallest k >= 1 such that {1^n, 2^n, 3^n, ..., k^n} can be partitioned into two sets with equal sum.

The programs for A019568, there is no canonical definition to state claims against.
-/

/-! ## A019568.P5498143748448775788

`A012265(comp[∑[n-1]]+(n+3)*Δ[n²])`
-/

namespace A019568.P5498143748448775788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (n + 3 : ℤ) * ((f3 (n + 1) : ℤ) - (f3 n : ℤ))).toNat

end

end A019568.P5498143748448775788

/-! ## A019568.P7196383362252121236

`A169989(A294094(n+1))+∑[n+1]`
-/

namespace A019568.P7196383362252121236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169989 (A294094 (n + 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A019568.P7196383362252121236

/-! ## A019568.P475672232110334404

`A244231(A020060(n))+A025747(n)`
-/

namespace A019568.P475672232110334404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244231 (A020060 n).toNat + A025747 n

end

end A019568.P475672232110334404

/-! ## A019568.P15531508104135864883

`A123731(A091867(n)+A002378(n))+1`
-/

namespace A019568.P15531508104135864883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123731 (A091867 n + A002378 n).toNat + 1

end

end A019568.P15531508104135864883

/-! ## A019568.P604982632392837157

`A284656(A056835(n))+A112714(n+1)`
-/

namespace A019568.P604982632392837157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284656 (A056835 n).toNat + A112714 (n + 1)

end

end A019568.P604982632392837157

/-!
# A019569: Number of bar segments in a certain way of representing the integers graphically.

The programs for A019569, there is no canonical definition to state claims against.
-/

/-! ## A019569.P1422219706561174900

`A138033(A312147(n))`
-/

namespace A019569.P1422219706561174900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138033 (A312147 n).toNat

end

end A019569.P1422219706561174900

/-! ## A019569.P9275883871296284468

`A051265(A244668(n+1)+A005899(n))`
-/

namespace A019569.P9275883871296284468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051265 (A244668 (n + 1) + A005899 n).toNat

end

end A019569.P9275883871296284468

/-! ## A019569.P16996010798421160519

`A343607(lcm(A128834(n)+n, A340101(n)))`
-/

namespace A019569.P16996010798421160519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343607 (Int.lcm (A128834 n + (n : ℤ)) (A340101 n))

end

end A019569.P16996010798421160519

/-! ## A019569.P6648350190971822795

`A140361(A325390(n+1)%A059802(n+1))`
-/

namespace A019569.P6648350190971822795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140361 (Int.tmod (A325390 (n + 1)) (A059802 (n + 1))).toNat

end

end A019569.P6648350190971822795

/-! ## A019569.P9019893969169958711

`A001221((A023036(n)-A000007(n))*A006501(n))`
-/

namespace A019569.P9019893969169958711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((A023036 n - A000007 n) * A006501 n).toNat

end

end A019569.P9019893969169958711

/-!
# A019573: Coordination sequence T3 for Zeolite Code SAO.

The programs for A019573, there is no canonical definition to state claims against.
-/

/-! ## A019573.P10605094739091257319

`A086418(A147058(n+1))+A033616(n)`
-/

namespace A019573.P10605094739091257319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086418 (A147058 (n + 1)).toNat + A033616 n

end

end A019573.P10605094739091257319

/-! ## A019573.P10801555366132749596

`∑[∑[A082647(A026551(n))]]`
-/

namespace A019573.P10801555366132749596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082647 (A026551 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019573.P10801555366132749596

/-! ## A019573.P6611741560358176529

`∑[∑[A237271(A064780(n))]]`
-/

namespace A019573.P6611741560358176529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A064780 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019573.P6611741560358176529

/-! ## A019573.P1315134465669888472

`∑[∑[A257071(A062938(n))]]`
-/

namespace A019573.P1315134465669888472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257071 (A062938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019573.P1315134465669888472

/-! ## A019573.P2496044062693403459

`∑[A007150(A076683(n+1))]`
-/

namespace A019573.P2496044062693403459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007150 (A076683 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019573.P2496044062693403459

/-!
# A019575: Place n distinguishable balls in n boxes (in n^n ways); let T(n,k) = number of ways that the maximum in any box is k, for 1 <= k <= n; sequence gives triangle of numbers T(n,k).

The programs for A019575, there is no canonical definition to state claims against.
-/

/-! ## A019575.P11369791984215342716

`A002024(n+1)*A019576(n+1)`
-/

namespace A019575.P11369791984215342716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A019576 (n + 1)

end

end A019575.P11369791984215342716

/-! ## A019575.P746650545014488105

`(A003056(n)+1)*A019576(n+1)`
-/

namespace A019575.P746650545014488105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n + 1) * A019576 (n + 1)

end

end A019575.P746650545014488105

/-! ## A019575.P11482087245779153237

`A019576(n+1)*A123578(n+1)`
-/

namespace A019575.P11482087245779153237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019576 (n + 1) * A123578 (n + 1)

end

end A019575.P11482087245779153237

/-! ## A019575.P2319204935589720250

`A000194(A284907(n+1))*A019576(n+1)`
-/

namespace A019575.P2319204935589720250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A284907 (n + 1)).toNat * A019576 (n + 1)

end

end A019575.P2319204935589720250

/-! ## A019575.P9262273517903274290

`A019576(n+1)*A036042(∑[A008284(n+1)])`
-/

namespace A019575.P9262273517903274290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019576 (n + 1) * A036042 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A019575.P9262273517903274290

/-!
# A019576: Place n distinguishable balls in n boxes (in n^n ways); let f(n,k) = number of ways that max in any box is k, for 1<=k<=n; sequence gives triangle of numbers f(n,k)/n.

The programs for A019576, there is no canonical definition to state claims against.
-/

/-! ## A019576.P6729482124622162450

`A019575(n+1)/∑[A010054(n)]`
-/

namespace A019576.P6729482124622162450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019575 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A019576.P6729482124622162450

/-! ## A019576.P17392133325936615920

`A019575(n+1)/A002024(n+1)`
-/

namespace A019576.P17392133325936615920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019575 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)

end

end A019576.P17392133325936615920

/-! ## A019576.P10011916135850661229

`A019575(n+1)/(A003056(n)+1)`
-/

namespace A019576.P10011916135850661229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019575 (n + 1) : ℚ) / (A003056 n + 1 : ℚ)

end

end A019576.P10011916135850661229

/-! ## A019576.P12903582543839634407

`A019575(n+1)/A003056(A080036(n))`
-/

namespace A019576.P12903582543839634407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019575 (n + 1) : ℚ) / (A003056 (A080036 n).toNat : ℚ)

end

end A019576.P12903582543839634407

/-! ## A019576.P6147420455819524790

`A019575(n+1)/A000196(A217575(n+1))`
-/

namespace A019576.P6147420455819524790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019575 (n + 1) : ℚ) / (A000196 (A217575 (n + 1)).toNat : ℚ)

end

end A019576.P6147420455819524790

/-! ## A019576.P12616735689379787892

`A019575(n+1)/A036042(∑[A008284(n+1)])`
-/

namespace A019576.P12616735689379787892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019575 (n + 1) : ℚ) / (A036042 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ)

end

end A019576.P12616735689379787892

/-!
# A019577: Place n distinguishable balls in n boxes (in n^n ways); let f(n,k) = number of ways that max in any box is k, for 1<=k<=n; sequence gives f(n,2)/n.

The programs for A019577, there is no canonical definition to state claims against.
-/

/-! ## A019577.P9402010085250730938

`n*(A036774(n)+a(n-1))` with `a(0)=0`
-/

namespace A019577.P9402010085250730938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (A036774 n + a (n - 1))

end

end A019577.P9402010085250730938

/-! ## A019577.P2253005457868414738

`A019581(n+1)/(n+1)`
-/

namespace A019577.P2253005457868414738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019581 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A019577.P2253005457868414738

/-! ## A019577.P15295318990234164015

`lcm(n, A019576(A133263(n)))`
-/

namespace A019577.P15295318990234164015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A019576 (A133263 n).toNat)

end

end A019577.P15295318990234164015

/-! ## A019577.P14731610604988726922

`A019576(A133263(n))-A000007(n)`
-/

namespace A019577.P14731610604988726922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019576 (A133263 n).toNat - A000007 n

end

end A019577.P14731610604988726922

/-! ## A019577.P13932158196698823202

`A019576(A133263(n))*A057427(n)`
-/

namespace A019577.P13932158196698823202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019576 (A133263 n).toNat * A057427 n

end

end A019577.P13932158196698823202

/-! ## A019577.P15566690812942235170

`A019576(A133263(n))*A178334(n)`
-/

namespace A019577.P15566690812942235170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019576 (A133263 n).toNat * A178334 n

end

end A019577.P15566690812942235170

/-! ## A019577.P13532048942892835530

`and(A019576(A133263(n)), A057428(n))`
-/

namespace A019577.P13532048942892835530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A019576 (A133263 n).toNat) (A057428 n)

end

end A019577.P13532048942892835530

/-!
# A019578: Place n distinguishable balls in n boxes (in n^n ways); let f(n,k) = number of ways that max in any box is k, for 1<=k<=n; sequence gives f(n,3)/n.

The programs for A019578, there is no canonical definition to state claims against.
-/

/-! ## A019578.P3319586483076171547

`A019576(∑[n+2]+4)`
-/

namespace A019578.P3319586483076171547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019576 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A019578.P3319586483076171547

/-! ## A019578.P11507137331167450332

`gcd(A000038(n), A019576(A167614(n+1)))`
-/

namespace A019578.P11507137331167450332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A019576 (A167614 (n + 1)).toNat)

end

end A019578.P11507137331167450332

/-! ## A019578.P11093804308345084455

`lcm(A008279(n), A019576(A167614(n+1)))`
-/

namespace A019578.P11093804308345084455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008279 n) (A019576 (A167614 (n + 1)).toNat)

end

end A019578.P11093804308345084455

/-! ## A019578.P13612684235853023672

`A033999(n)²*A019576(A167614(n+1))`
-/

namespace A019578.P13612684235853023672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A019576 (A167614 (n + 1)).toNat

end

end A019578.P13612684235853023672

/-! ## A019578.P8024672276642522450

`dr(A087960(n))*A019576(A167614(n+1))`
-/

namespace A019578.P8024672276642522450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A087960 n) : ℤ) * A019576 (A167614 (n + 1)).toNat

end

end A019578.P8024672276642522450

/-! ## A019578.P7687909216186647984

`A007318(C(6, n))*A019576(A167614(n+1))`
-/

namespace A019578.P7687909216186647984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 6 n) * A019576 (A167614 (n + 1)).toNat

end

end A019578.P7687909216186647984

/-! ## A019578.P8725545360290947861

`A008279((n+2+n)/(n+1))*A019576(A167614(n+1))`
-/

namespace A019578.P8725545360290947861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (SequenceMachineLib.roundAway ((n + 2 + n : ℚ) / (n + 1 : ℚ))).toNat * A019576 (A167614 (n + 1)).toNat

end

end A019578.P8725545360290947861

/-! ## A019578.P15293790098868578569

`A019576(A167614(n+1))+1-A001221(A006450(n+1))`
-/

namespace A019578.P15293790098868578569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019576 (A167614 (n + 1)).toNat + 1 - A001221 (A006450 (n + 1)).toNat

end

end A019578.P15293790098868578569

/-!
# A019579: Place n distinguishable balls in n boxes (in n^n ways); let f(n,k) = number of ways that max in any box is k, for 1 <= k <= n; sequence gives f(n,n-2)/n.

The programs for A019579, there is no canonical definition to state claims against.
-/

/-! ## A019579.P7602058083056775764

`A019576(∑[n+3]+1)`
-/

namespace A019579.P7602058083056775764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019576 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A019579.P7602058083056775764

/-!
# A019580: Place n distinguishable balls in n boxes (in n^n ways); let f(n,k) = number of ways that max in any box is k, for 1<=k<=n; sequence gives f(n,4)/n.

The programs for A019580, there is no canonical definition to state claims against.
-/

/-! ## A019580.P3828416307956322868

`A019576(A052905(n)+9)`
-/

namespace A019580.P3828416307956322868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019576 (A052905 n + 9).toNat

end

end A019580.P3828416307956322868

/-! ## A019580.P10877650042376356441

`A019576(A055999(n)+10)`
-/

namespace A019580.P10877650042376356441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019576 (A055999 n + 10).toNat

end

end A019580.P10877650042376356441

/-! ## A019580.P13420675591111400861

`A019576(A167614(n+2)+1)`
-/

namespace A019580.P13420675591111400861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019576 (A167614 (n + 2) + 1).toNat

end

end A019580.P13420675591111400861

/-! ## A019580.P15281424077684425213

`A019576(eq[5, A131818(n+1)])`
-/

namespace A019580.P15281424077684425213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A019580.P15281424077684425213

/-! ## A019580.P6932705756292977321

`A019576(A046691(n+3)-A005408(n))`
-/

namespace A019580.P6932705756292977321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019576 (A046691 (n + 3) - A005408 n).toNat

end

end A019580.P6932705756292977321

/-!
# A019581: Place n distinguishable balls in n boxes (in n^n ways); let f(n,k) = number of ways that max in any box is k, for 1<=k<=n; sequence gives f(n,2).

The programs for A019581, there is no canonical definition to state claims against.
-/

/-! ## A019581.P11995910012374954897

`(n+1)*A019577(n+1)`
-/

namespace A019581.P11995910012374954897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A019577 (n + 1)

end

end A019581.P11995910012374954897

/-! ## A019581.P2684839182440897615

`lcm(n, A019575(A133263(n)))`
-/

namespace A019581.P2684839182440897615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A019575 (A133263 n).toNat)

end

end A019581.P2684839182440897615

/-! ## A019581.P16618006257722835605

`A012244(n+1)-A000142(n+1)`
-/

namespace A019581.P16618006257722835605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012244 (n + 1) - A000142 (n + 1)

end

end A019581.P16618006257722835605

/-! ## A019581.P10348350722248704064

`A019575(A133263(n))-A000007(n)`
-/

namespace A019581.P10348350722248704064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019575 (A133263 n).toNat - A000007 n

end

end A019581.P10348350722248704064

/-! ## A019581.P12297070928723570108

`A019575(A133263(n))*A057427(n)`
-/

namespace A019581.P12297070928723570108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019575 (A133263 n).toNat * A057427 n

end

end A019581.P12297070928723570108

/-! ## A019581.P10385915648813038248

`(A178334(n)+n)*A019576(A133263(n))`
-/

namespace A019581.P10385915648813038248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A178334 n + (n : ℤ)) * A019576 (A133263 n).toNat

end

end A019581.P10385915648813038248

/-! ## A019581.P695817558124556101

`(n-A057428(n))*A019576(A133263(n))`
-/

namespace A019581.P695817558124556101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A057428 n) * A019576 (A133263 n).toNat

end

end A019581.P695817558124556101

/-! ## A019581.P223681289898878279

`(p?[A001951(n)]%2+n)*A019576(A133263(n))`
-/

namespace A019581.P223681289898878279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 2 + (n : ℤ)) * A019576 (A133263 n).toNat

end

end A019581.P223681289898878279

/-! ## A019581.P16679466362477094602

`A012244(n+1)-A098461(n+1)/A002426(n+1)`
-/

namespace A019581.P16679466362477094602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012244 (n + 1) : ℚ) - (A098461 (n + 1) : ℚ) / (A002426 (n + 1) : ℚ)

end

end A019581.P16679466362477094602

/-!
# A019582: a(n) = n*(n - 1)^3/2.

The programs for A019582, the canonical program `A019582.P15270751167170736155` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019582 has offset 0).

The definition of A019582 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n-1)^3/2` (program `A019582.P8715587689350565725`, by `A019582.P8715587689350565725.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A019582.P8715587689350565725

`n*(n-1)^3/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A019582.P8715587689350565725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 1) ^ 3 : ℚ) / 2

end

end A019582.P8715587689350565725

namespace A019582

/-- `n*(n-1)^3/2` -/
def P8715587689350565725.Spec : Prop :=
  ∀ n, P8715587689350565725.a n = (A019582 n : ℚ)

theorem P8715587689350565725.correct : P8715587689350565725.Spec := by
  intro n
  simp only [A019582, Nat.add_sub_cancel, A019582.P8715587689350565725.a, A019582.P15270751167170736155.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A019582

/-! ## A019582.P15270751167170736155

`(1-n)²*C(n, 2)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019582

/-- `(1-n)²*C(n, 2)` -/
def P15270751167170736155.Spec : Prop :=
  ∀ n, P15270751167170736155.a n = A019582 n

theorem P15270751167170736155.correct : P15270751167170736155.Spec := by
  intro n
  simp only [A019582]

end A019582

/-! ## A019582.P14434419470726399644

`floor(lcm(n, (n-1)^3)/2)`
-/

namespace A019582.P14434419470726399644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.lcm (n : ℤ) (((n : ℤ) - 1) ^ 3) : ℚ) / 2⌋

end

end A019582.P14434419470726399644

namespace A019582

/-- `floor(lcm(n, (n-1)^3)/2)` -/
def P14434419470726399644.Spec : Prop :=
  ∀ n, P14434419470726399644.a n = A019582 n

end A019582

/-! ## A019582.P8360185492789676380

`(n-1)*(n-1)*C(n, 2)`
-/

namespace A019582.P8360185492789676380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (((n : ℤ) - 1) * (Nat.choose n 2 : ℤ))

end

end A019582.P8360185492789676380

namespace A019582

/-- `(n-1)*(n-1)*C(n, 2)` -/
def P8360185492789676380.Spec : Prop :=
  ∀ n, P8360185492789676380.a n = A019582 n

theorem P8360185492789676380.correct : P8360185492789676380.Spec := by
  intro n
  simp only [A019582, Nat.add_sub_cancel, A019582.P8360185492789676380.a, A019582.P15270751167170736155.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A019582

/-! ## A019582.P6182897468436305729

`(1-n)²*∑[(n-1)%(n+1)]`
-/

namespace A019582.P6182897468436305729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A019582.P6182897468436305729

namespace A019582

/-- `(1-n)²*∑[(n-1)%(n+1)]` -/
def P6182897468436305729.Spec : Prop :=
  ∀ n, P6182897468436305729.a n = A019582 n

end A019582

/-! ## A019582.P11441488201225216671

`lcm(n-1, (n-∑[n])*(1-n)²)`
-/

namespace A019582.P11441488201225216671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) (((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) * (1 - (n : ℤ)) ^ 2)

end

end A019582.P11441488201225216671

namespace A019582

/-- `lcm(n-1, (n-∑[n])*(1-n)²)` -/
def P11441488201225216671.Spec : Prop :=
  ∀ n, (P11441488201225216671.a n : ℤ) = A019582 n

end A019582

/-! ## A019582.P6636115004243464251

`(∑[gcd(n, 2*n)]-n)*(n-1)²`
-/

namespace A019582.P6636115004243464251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)) * ((n : ℤ) - 1) ^ 2

end

end A019582.P6636115004243464251

namespace A019582

/-- `(∑[gcd(n, 2*n)]-n)*(n-1)²` -/
def P6636115004243464251.Spec : Prop :=
  ∀ n, P6636115004243464251.a n = A019582 n

end A019582

/-! ## A019582.P5771868907564239584

`(1-n)²*∑[a(n-1)+1]` with `a(0)=0, a(1)=0`
-/

namespace A019582.P5771868907564239584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A019582.P5771868907564239584

namespace A019582

/-- `(1-n)²*∑[a(n-1)+1]` -/
def P5771868907564239584.Spec : Prop :=
  ∀ n, P5771868907564239584.a n = A019582 n

end A019582

/-! ## A019582.P2968864570445179033

`(∑[n-1]+and(1, 2*n+1))*(1-n)²`
-/

namespace A019582.P2968864570445179033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + (Nat.land 1 (2 * n + 1) : ℤ)) * (1 - (n : ℤ)) ^ 2

end

end A019582.P2968864570445179033

namespace A019582

/-- `(∑[n-1]+and(1, 2*n+1))*(1-n)²` -/
def P2968864570445179033.Spec : Prop :=
  ∀ n, P2968864570445179033.a n = A019582 n

end A019582

/-! ## A019582.P18150471896089172645

`A161680(n)*(1-n)²`
-/

namespace A019582.P18150471896089172645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n * (1 - (n : ℤ)) ^ 2

end

end A019582.P18150471896089172645

namespace A019582

/-- `A161680(n)*(1-n)²` -/
def P18150471896089172645.Spec : Prop :=
  ∀ n, P18150471896089172645.a n = A019582 n

theorem P18150471896089172645.correct : P18150471896089172645.Spec := by
  intro n
  simp only [A019582, Nat.add_sub_cancel, A019582.P18150471896089172645.a, A019582.P15270751167170736155.a, A161680, A161680.P17206074215489759881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A019582

/-! ## A019582.P9297019681527033542

`n*A060354(n)-∑[n]`
-/

namespace A019582.P9297019681527033542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A060354 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A019582.P9297019681527033542

namespace A019582

/-- `n*A060354(n)-∑[n]` -/
def P9297019681527033542.Spec : Prop :=
  ∀ n, P9297019681527033542.a n = A019582 n

end A019582

/-! ## A019582.P16757930655848790581

`((n+1)²-A034856(n+1))*(1-n)²`
-/

namespace A019582.P16757930655848790581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) - A034856 (n + 1)) * (1 - (n : ℤ)) ^ 2

end

end A019582.P16757930655848790581

namespace A019582

/-- `((n+1)²-A034856(n+1))*(1-n)²` -/
def P16757930655848790581.Spec : Prop :=
  ∀ n, P16757930655848790581.a n = A019582 n

theorem P16757930655848790581.correct : P16757930655848790581.Spec := by
  intro n
  simp only [A019582, Nat.add_sub_cancel, A019582.P16757930655848790581.a, A019582.P15270751167170736155.a, A034856, A034856.P1676305901281367657.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A019582

/-! ## A019582.P3740187014816197623

`A062392(n)-A006597(n)`
-/

namespace A019582.P3740187014816197623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062392 n - A006597 n

end

end A019582.P3740187014816197623

namespace A019582

/-- `A062392(n)-A006597(n)` -/
def P3740187014816197623.Spec : Prop :=
  ∀ n, P3740187014816197623.a n = A019582 n

end A019582

/-! ## A019582.P2490721885451126386

`A071252(n)-A045991(n)`
-/

namespace A019582.P2490721885451126386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071252 n - A045991 n

end

end A019582.P2490721885451126386

namespace A019582

/-- `A071252(n)-A045991(n)` -/
def P2490721885451126386.Spec : Prop :=
  ∀ n, P2490721885451126386.a n = A019582 n

theorem P2490721885451126386.correct : P2490721885451126386.Spec := by
  intro n
  simp only [A019582, Nat.add_sub_cancel, A019582.P2490721885451126386.a, A019582.P15270751167170736155.a, A045991, A045991.P16915764248010155243.a, A071252, A071252.P13937739183146272210.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A019582

/-! ## A019582.P9187499463366521121

`A058919(n)-A158842(n)`
-/

namespace A019582.P9187499463366521121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058919 n - A158842 n

end

end A019582.P9187499463366521121

namespace A019582

/-- `A058919(n)-A158842(n)` -/
def P9187499463366521121.Spec : Prop :=
  ∀ n, P9187499463366521121.a n = A019582 n

end A019582

/-! ## A019582.P16119022636048645927

`A239592(n)-A081423(n)`
-/

namespace A019582.P16119022636048645927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239592 n - A081423 n

end

end A019582.P16119022636048645927

namespace A019582

/-- `A239592(n)-A081423(n)` -/
def P16119022636048645927.Spec : Prop :=
  ∀ n, P16119022636048645927.a n = A019582 n

end A019582

/-! ## A019582.P2085780987291272290

`A212135(n)-A135503(n)`
-/

namespace A019582.P2085780987291272290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212135 n - A135503 n

end

end A019582.P2085780987291272290

namespace A019582

/-- `A212135(n)-A135503(n)` -/
def P2085780987291272290.Spec : Prop :=
  ∀ n, P2085780987291272290.a n = A019582 n

end A019582

/-! ## A019582.P1192652044864168329

`A393441(n)-A081441(n)`
-/

namespace A019582.P1192652044864168329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393441 n - A081441 n

end

end A019582.P1192652044864168329

namespace A019582

/-- `A393441(n)-A081441(n)` -/
def P1192652044864168329.Spec : Prop :=
  ∀ n, P1192652044864168329.a n = A019582 n

end A019582

/-! ## A019582.P9983279163951780810

`gcd(A019583(n), A101384(n))`
-/

namespace A019582.P9983279163951780810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A019583 n) (A101384 n)

end

end A019582.P9983279163951780810

namespace A019582

/-- `gcd(A019583(n), A101384(n))` -/
def P9983279163951780810.Spec : Prop :=
  ∀ n, (P9983279163951780810.a n : ℤ) = A019582 n

end A019582

/-! ## A019582.P10124086283331594147

`A212135(n)-Δ[A050534(n)]`
-/

namespace A019582.P10124086283331594147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212135 n - (f1 (n + 1) - f1 n)

end

end A019582.P10124086283331594147

namespace A019582

/-- `A212135(n)-Δ[A050534(n)]` -/
def P10124086283331594147.Spec : Prop :=
  ∀ n, P10124086283331594147.a n = A019582 n

end A019582

/-!
# A019583: a(n) = n*(n-1)^4/2.

The programs for A019583, the canonical program `A019583.P18156360696424512505` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019583 has offset 0).

The definition of A019583 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n-1)^4/2` (program `A019583.P1899492925356292807`, by `A019583.P1899492925356292807.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A019583.P1899492925356292807

`n*(n-1)^4/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A019583.P1899492925356292807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 1) ^ 4 : ℚ) / 2

end

end A019583.P1899492925356292807

namespace A019583

/-- `n*(n-1)^4/2` -/
def P1899492925356292807.Spec : Prop :=
  ∀ n, P1899492925356292807.a n = (A019583 n : ℚ)

theorem P1899492925356292807.correct : P1899492925356292807.Spec := by
  intro n
  simp only [A019583, Nat.add_sub_cancel, A019583.P1899492925356292807.a, A019583.P18156360696424512505.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A019583

/-! ## A019583.P18156360696424512505

`(n-1)^3*C(n, 2)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019583

/-- `(n-1)^3*C(n, 2)` -/
def P18156360696424512505.Spec : Prop :=
  ∀ n, P18156360696424512505.a n = A019583 n

theorem P18156360696424512505.correct : P18156360696424512505.Spec := by
  intro n
  simp only [A019583]

end A019583

/-! ## A019583.P7922807357254593584

`floor(lcm(n, (1-n)^4)/2)`
-/

namespace A019583.P7922807357254593584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.lcm (n : ℤ) ((1 - (n : ℤ)) ^ 4) : ℚ) / 2⌋

end

end A019583.P7922807357254593584

namespace A019583

/-- `floor(lcm(n, (1-n)^4)/2)` -/
def P7922807357254593584.Spec : Prop :=
  ∀ n, P7922807357254593584.a n = A019583 n

end A019583

/-! ## A019583.P3128052674092621425

`((n-1)²/2)²*lcm(2, 2*n)`
-/

namespace A019583.P3128052674092621425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - 1) ^ 2 : ℚ) / 2) ^ 2 * (Nat.lcm 2 (2 * n) : ℚ)

end

end A019583.P3128052674092621425

namespace A019583

/-- `((n-1)²/2)²*lcm(2, 2*n)` -/
def P3128052674092621425.Spec : Prop :=
  ∀ n, P3128052674092621425.a n = (A019583 n : ℚ)

end A019583

/-! ## A019583.P14640567487629422798

`2*n*((n-1)²/gcd(2, 2*n))²`
-/

namespace A019583.P14640567487629422798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) * ((((n : ℤ) - 1) ^ 2 : ℚ) / (Nat.gcd 2 (2 * n) : ℚ)) ^ 2

end

end A019583.P14640567487629422798

namespace A019583

/-- `2*n*((n-1)²/gcd(2, 2*n))²` -/
def P14640567487629422798.Spec : Prop :=
  ∀ n, P14640567487629422798.a n = (A019583 n : ℚ)

end A019583

/-! ## A019583.P9463903234759164850

`((1-n)²/2)²*and(2*n+1, 2*n)`
-/

namespace A019583.P9463903234759164850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((1 - (n : ℤ)) ^ 2 : ℚ) / 2) ^ 2 * (Nat.land (2 * n + 1) (2 * n) : ℚ)

end

end A019583.P9463903234759164850

namespace A019583

/-- `((1-n)²/2)²*and(2*n+1, 2*n)` -/
def P9463903234759164850.Spec : Prop :=
  ∀ n, P9463903234759164850.a n = (A019583 n : ℚ)

end A019583

/-! ## A019583.P17783871392854115889

`(n-1)*A019582(n)`
-/

namespace A019583.P17783871392854115889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A019582 n

end

end A019583.P17783871392854115889

namespace A019583

/-- `(n-1)*A019582(n)` -/
def P17783871392854115889.Spec : Prop :=
  ∀ n, P17783871392854115889.a n = A019583 n

theorem P17783871392854115889.correct : P17783871392854115889.Spec := by
  intro n
  simp only [A019583, Nat.add_sub_cancel, A019583.P17783871392854115889.a, A019583.P18156360696424512505.a, A019582, A019582.P15270751167170736155.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A019583

/-! ## A019583.P10082758344158478041

`A019582(n)*A023443(n)`
-/

namespace A019583.P10082758344158478041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019582 n * A023443 n

end

end A019583.P10082758344158478041

namespace A019583

/-- `A019582(n)*A023443(n)` -/
def P10082758344158478041.Spec : Prop :=
  ∀ n, P10082758344158478041.a n = A019583 n

theorem P10082758344158478041.correct : P10082758344158478041.Spec := by
  intro n
  simp only [A019583, Nat.add_sub_cancel, A019583.P10082758344158478041.a, A019583.P18156360696424512505.a, A019582, A019582.P15270751167170736155.a, A023443, A023443.P2966051066474347068.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A019583

/-! ## A019583.P6716187970570130147

`-(A019582(n)*A024000(n))`
-/

namespace A019583.P6716187970570130147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A019582 n * A024000 n)

end

end A019583.P6716187970570130147

namespace A019583

/-- `-(A019582(n)*A024000(n))` -/
def P6716187970570130147.Spec : Prop :=
  ∀ n, P6716187970570130147.a n = A019583 n

theorem P6716187970570130147.correct : P6716187970570130147.Spec := by
  intro n
  simp only [A019583, Nat.add_sub_cancel, A019583.P6716187970570130147.a, A019583.P18156360696424512505.a, A019582, A019582.P15270751167170736155.a, A024000, A024000.P8748414335487061084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A019583

/-! ## A019583.P10933347167277960557

`A021003(n)-A344866(n+1)`
-/

namespace A019583.P10933347167277960557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021003 n - A344866 (n + 1)

end

end A019583.P10933347167277960557

namespace A019583

/-- `A021003(n)-A344866(n+1)` -/
def P10933347167277960557.Spec : Prop :=
  ∀ n, P10933347167277960557.a n = A019583 n

theorem P10933347167277960557.correct : P10933347167277960557.Spec := by
  intro n
  simp only [A019583, Nat.add_sub_cancel, A019583.P10933347167277960557.a, A019583.P18156360696424512505.a, A021003, A021003.P1631402243745340027.a, A344866, A344866.P1105936836514059683.a, A071252, A071252.P13937739183146272210.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A019583

/-! ## A019583.P17945039946076675585

`A019584(n)+A019584(n)-A019582(n)`
-/

namespace A019583.P17945039946076675585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019584 n + (A019584 n - A019582 n)

end

end A019583.P17945039946076675585

namespace A019583

/-- `A019584(n)+A019584(n)-A019582(n)` -/
def P17945039946076675585.Spec : Prop :=
  ∀ n, P17945039946076675585.a n = A019583 n

theorem P17945039946076675585.correct : P17945039946076675585.Spec := by
  intro n
  simp only [A019583, Nat.add_sub_cancel, A019583.P17945039946076675585.a, A019583.P18156360696424512505.a, A019582, A019582.P15270751167170736155.a, A019584, A019584.P4058336291644300393.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A019583

/-!
# A019584: a(n) = n^2*(n-1)^3/4.

The programs for A019584, the canonical program `A019584.P4058336291644300393` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019584 has offset 0).

The definition of A019584 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(n-1)^3/4` (program `A019584.P16996877092108699856`, by `A019584.P16996877092108699856.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A019584.P16996877092108699856

`n²*(n-1)^3/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A019584.P16996877092108699856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * ((n : ℤ) - 1) ^ 3 : ℚ) / 4

end

end A019584.P16996877092108699856

namespace A019584

/-- `n²*(n-1)^3/4` -/
def P16996877092108699856.Spec : Prop :=
  ∀ n, P16996877092108699856.a n = (A019584 n : ℚ)

theorem P16996877092108699856.correct : P16996877092108699856.Spec := by
  intro n
  simp only [A019584, Nat.add_sub_cancel, A019584.P16996877092108699856.a, A019584.P4058336291644300393.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A019584

/-! ## A019584.P4058336291644300393

`(n-1)*C(n, 2)²`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019584

/-- `(n-1)*C(n, 2)²` -/
def P4058336291644300393.Spec : Prop :=
  ∀ n, P4058336291644300393.a n = A019584 n

theorem P4058336291644300393.correct : P4058336291644300393.Spec := by
  intro n
  simp only [A019584]

end A019584

/-! ## A019584.P2202666442019907550

`n/2*A019582(n)`
-/

namespace A019584.P2202666442019907550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A019582 n : ℚ)

end

end A019584.P2202666442019907550

namespace A019584

/-- `n/2*A019582(n)` -/
def P2202666442019907550.Spec : Prop :=
  ∀ n, P2202666442019907550.a n = (A019584 n : ℚ)

theorem P2202666442019907550.correct : P2202666442019907550.Spec := by
  intro n
  simp only [A019584, Nat.add_sub_cancel, A019584.P2202666442019907550.a, A019584.P4058336291644300393.a, A019582, A019582.P15270751167170736155.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A019584

/-! ## A019584.P2213988914958985903

`(n-1)*A161680(n)²`
-/

namespace A019584.P2213988914958985903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A161680 n ^ 2

end

end A019584.P2213988914958985903

namespace A019584

/-- `(n-1)*A161680(n)²` -/
def P2213988914958985903.Spec : Prop :=
  ∀ n, P2213988914958985903.a n = A019584 n

end A019584

/-! ## A019584.P2889262709584467043

`abs(C(n, 2)²*A024000(n))`
-/

namespace A019584.P2889262709584467043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose n 2 ^ 2 : ℤ) * A024000 n|

end

end A019584.P2889262709584467043

namespace A019584

/-- `abs(C(n, 2)²*A024000(n))` -/
def P2889262709584467043.Spec : Prop :=
  ∀ n, P2889262709584467043.a n = A019584 n

end A019584

/-! ## A019584.P17269304622667198273

`(n-1)*(n-A000217(n))²`
-/

namespace A019584.P17269304622667198273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((n : ℤ) - A000217 n) ^ 2

end

end A019584.P17269304622667198273

namespace A019584

/-- `(n-1)*(n-A000217(n))²` -/
def P17269304622667198273.Spec : Prop :=
  ∀ n, P17269304622667198273.a n = A019584 n

theorem P17269304622667198273.correct : P17269304622667198273.Spec := by
  intro n
  simp only [A019584, Nat.add_sub_cancel, A019584.P17269304622667198273.a, A019584.P4058336291644300393.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A019584

/-! ## A019584.P8507395171413977227

`(n-1)*A000241(2*n+1)`
-/

namespace A019584.P8507395171413977227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A000241 (2 * n + 1)

end

end A019584.P8507395171413977227

namespace A019584

/-- `(n-1)*A000241(2*n+1)` -/
def P8507395171413977227.Spec : Prop :=
  ∀ n, P8507395171413977227.a n = A019584 n

end A019584

/-! ## A019584.P17112026963229187103

`((n-1)*C(n, 2)*C(n, 2))%A001653(n+1)`
-/

namespace A019584.P17112026963229187103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n : ℤ) - 1) * (Nat.choose n 2 : ℤ) * (Nat.choose n 2 : ℤ)) (A001653 (n + 1))

end

end A019584.P17112026963229187103

namespace A019584

/-- `((n-1)*C(n, 2)*C(n, 2))%A001653(n+1)` -/
def P17112026963229187103.Spec : Prop :=
  ∀ n, P17112026963229187103.a n = A019584 n

end A019584

/-!
# A019586: Vertical para-Fibonacci sequence: takes value i on later (i.e., b_j, j >= 2) terms of i-th Fibonacci sequence defined by b_0 = i, b_1 = [ tau(i+1) ].

The programs for A019586, the canonical program `A019586.P9515353254246126569` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019586 has offset 1).

The definition of A019586 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A019586.P9515353254246126569

`A003603(n+1)-1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A019586

/-- `A003603(n+1)-1` -/
def P9515353254246126569.Spec : Prop :=
  ∀ n, P9515353254246126569.a n = A019586 (n + 1)

theorem P9515353254246126569.correct : P9515353254246126569.Spec := by
  intro n
  simp only [A019586, Nat.add_sub_cancel]

end A019586

/-! ## A019586.P5883899059211836365

`A023443(A003603(n+1))`
-/

namespace A019586.P5883899059211836365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A003603 (n + 1)).toNat

end

end A019586.P5883899059211836365

namespace A019586

/-- `A023443(A003603(n+1))` -/
def P5883899059211836365.Spec : Prop :=
  ∀ n, P5883899059211836365.a n = A019586 (n + 1)

end A019586

/-! ## A019586.P12807270850084029580

`A060144(A348853(n+1))`
-/

namespace A019586.P12807270850084029580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A348853 (n + 1)).toNat

end

end A019586.P12807270850084029580

namespace A019586

/-- `A060144(A348853(n+1))` -/
def P12807270850084029580.Spec : Prop :=
  ∀ n, P12807270850084029580.a n = A019586 (n + 1)

end A019586

/-! ## A019586.P14510409388333003643

`A023444(A003603(n+1)+1)`
-/

namespace A019586.P14510409388333003643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A003603 (n + 1) + 1).toNat

end

end A019586.P14510409388333003643

namespace A019586

/-- `A023444(A003603(n+1)+1)` -/
def P14510409388333003643.Spec : Prop :=
  ∀ n, P14510409388333003643.a n = A019586 (n + 1)

end A019586

/-! ## A019586.P7113935057464699095

`A120873(A026242(n+1))-1`
-/

namespace A019586.P7113935057464699095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120873 (A026242 (n + 1)).toNat - 1

end

end A019586.P7113935057464699095

namespace A019586

/-- `A120873(A026242(n+1))-1` -/
def P7113935057464699095.Spec : Prop :=
  ∀ n, P7113935057464699095.a n = A019586 (n + 1)

end A019586

/-! ## A019586.P14313300027340077743

`A035614(n)-A191360(n+1)`
-/

namespace A019586.P14313300027340077743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035614 n - A191360 (n + 1)

end

end A019586.P14313300027340077743

namespace A019586

/-- `A035614(n)-A191360(n+1)` -/
def P14313300027340077743.Spec : Prop :=
  ∀ n, P14313300027340077743.a n = A019586 (n + 1)

theorem P14313300027340077743.correct : P14313300027340077743.Spec := by
  intro n
  simp only [A019586, Nat.add_sub_cancel, A019586.P14313300027340077743.a, A019586.P9515353254246126569.a, A003603, A003603.P16957953193221149440.a, A035614, A035614.P1531182426394583162.a, A191360, A191360.P15454014504453218478.a, A035612, A035612.P7106491847305260424.a, A022340, A022340.P3334581410869230776.a, A003714, A003714.P565032106299634425.a, A022342, A022342.P1190268710273068250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A019586

/-! ## A019586.P2113372556078942337

`A026242(A348853(n+1)+1)-1`
-/

namespace A019586.P2113372556078942337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026242 (A348853 (n + 1) + 1).toNat - 1

end

end A019586.P2113372556078942337

namespace A019586

/-- `A026242(A348853(n+1)+1)-1` -/
def P2113372556078942337.Spec : Prop :=
  ∀ n, P2113372556078942337.a n = A019586 (n + 1)

end A019586

/-! ## A019586.P7458895174905199806

`A189663(A348853(n+1)+1)-1`
-/

namespace A019586.P7458895174905199806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A348853 (n + 1) + 1).toNat - 1

end

end A019586.P7458895174905199806

namespace A019586

/-- `A189663(A348853(n+1)+1)-1` -/
def P7458895174905199806.Spec : Prop :=
  ∀ n, P7458895174905199806.a n = A019586 (n + 1)

end A019586

/-! ## A019586.P14922251285841094974

`A360485(n+1)-A035612(n+1)`
-/

namespace A019586.P14922251285841094974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360485 (n + 1) - A035612 (n + 1)

end

end A019586.P14922251285841094974

namespace A019586

/-- `A360485(n+1)-A035612(n+1)` -/
def P14922251285841094974.Spec : Prop :=
  ∀ n, P14922251285841094974.a n = A019586 (n + 1)

theorem P14922251285841094974.correct : P14922251285841094974.Spec := by
  intro n
  simp only [A019586, Nat.add_sub_cancel, A019586.P14922251285841094974.a, A019586.P9515353254246126569.a, A003603, A003603.P16957953193221149440.a, A035612, A035612.P7106491847305260424.a, A360485, A360485.P910775861642857530.a, A022340, A022340.P3334581410869230776.a, A003714, A003714.P565032106299634425.a, A022342, A022342.P1190268710273068250.a, A003849, A003849.P15070805603138295355.a, A193564, A193564.P10859496068576138660.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A019586

/-! ## A019586.P9406899467738604979

`(A028310(n)+A003603(n+1))%(n+1)`
-/

namespace A019586.P9406899467738604979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 n + A003603 (n + 1)) (n + 1 : ℤ)

end

end A019586.P9406899467738604979

namespace A019586

/-- `(A028310(n)+A003603(n+1))%(n+1)` -/
def P9406899467738604979.Spec : Prop :=
  ∀ n, P9406899467738604979.a n = A019586 (n + 1)

end A019586

/-! ## A019586.P3928802716124606701

`A326406(A020639(n+2))+A003603(n+1)`
-/

namespace A019586.P3928802716124606701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326406 (A020639 (n + 2)).toNat + A003603 (n + 1)

end

end A019586.P3928802716124606701

namespace A019586

/-- `A326406(A020639(n+2))+A003603(n+1)` -/
def P3928802716124606701.Spec : Prop :=
  ∀ n, P3928802716124606701.a n = A019586 (n + 1)

end A019586

/-! ## A019586.P5322006461662805401

`A348853(n+1)-A005206(A348853(n+1)+1)`
-/

namespace A019586.P5322006461662805401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348853 (n + 1) - A005206 (A348853 (n + 1) + 1).toNat

end

end A019586.P5322006461662805401

namespace A019586

/-- `A348853(n+1)-A005206(A348853(n+1)+1)` -/
def P5322006461662805401.Spec : Prop :=
  ∀ n, P5322006461662805401.a n = A019586 (n + 1)

end A019586

/-! ## A019586.P5282822860945616014

`A134824(n+2)+A003603(n+1)`
-/

namespace A019586.P5282822860945616014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A003603 (n + 1)

end

end A019586.P5282822860945616014

namespace A019586

/-- `A134824(n+2)+A003603(n+1)` -/
def P5282822860945616014.Spec : Prop :=
  ∀ n, P5282822860945616014.a n = A019586 (n + 1)

end A019586

/-! ## A019586.P9307142314921770200

`A073097(A004769(n))+A003603(n+1)`
-/

namespace A019586.P9307142314921770200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 (A004769 n).toNat + A003603 (n + 1)

end

end A019586.P9307142314921770200

namespace A019586

/-- `A073097(A004769(n))+A003603(n+1)` -/
def P9307142314921770200.Spec : Prop :=
  ∀ n, P9307142314921770200.a n = A019586 (n + 1)

end A019586

/-! ## A019586.P1989143032889271

`A225058(4*A003603(n+1))`
-/

namespace A019586.P1989143032889271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225058 (4 * A003603 (n + 1)).toNat

end

end A019586.P1989143032889271

namespace A019586

/-- `A225058(4*A003603(n+1))` -/
def P1989143032889271.Spec : Prop :=
  ∀ n, P1989143032889271.a n = A019586 (n + 1)

end A019586

/-! ## A019586.P16850045909861265627

`A118830(A000040(n+2))+A003603(n+1)`
-/

namespace A019586.P16850045909861265627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (A000040 (n + 2)).toNat + A003603 (n + 1)

end

end A019586.P16850045909861265627

namespace A019586

/-- `A118830(A000040(n+2))+A003603(n+1)` -/
def P16850045909861265627.Spec : Prop :=
  ∀ n, P16850045909861265627.a n = A019586 (n + 1)

end A019586

/-! ## A019586.P6356658686596667697

`A033999(2*n+1)+A003603(n+1)`
-/

namespace A019586.P6356658686596667697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A003603 (n + 1)

end

end A019586.P6356658686596667697

namespace A019586

/-- `A033999(2*n+1)+A003603(n+1)` -/
def P6356658686596667697.Spec : Prop :=
  ∀ n, P6356658686596667697.a n = A019586 (n + 1)

end A019586

/-! ## A019586.P8894350989926594413

`A260148(A163963(2*n+1))+A003603(n+1)`
-/

namespace A019586.P8894350989926594413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260148 (A163963 (2 * n + 1)).toNat + A003603 (n + 1)

end

end A019586.P8894350989926594413

namespace A019586

/-- `A260148(A163963(2*n+1))+A003603(n+1)` -/
def P8894350989926594413.Spec : Prop :=
  ∀ n, P8894350989926594413.a n = A019586 (n + 1)

end A019586

/-! ## A019586.P12857073515877199960

`A048680(A304100(n+1)-1)`
-/

namespace A019586.P12857073515877199960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A304100 (n + 1) - 1).toNat

end

end A019586.P12857073515877199960

namespace A019586

/-- `A048680(A304100(n+1)-1)` -/
def P12857073515877199960.Spec : Prop :=
  ∀ n, P12857073515877199960.a n = A019586 (n + 1)

end A019586

/-! ## A019586.P3053774685120677316

`A107393(p?[A003603(n+1)])+A003603(n+1)`
-/

namespace A019586.P3053774685120677316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A003603 (n + 1)

end

end A019586.P3053774685120677316

namespace A019586

/-- `A107393(p?[A003603(n+1)])+A003603(n+1)` -/
def P3053774685120677316.Spec : Prop :=
  ∀ n, P3053774685120677316.a n = A019586 (n + 1)

end A019586

/-!
# A019587: The left budding sequence: number of i such that 0 < i <= n and 0 < {phi*i} <= {phi*n}, where {} denotes the fractional part and phi = A001622.

The programs for A019587, the canonical program `A019587.P7183734736030190447` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019587 has offset 1).

The definition of A019587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A019587.P8354523917186163377

`(2*∑[ceil(ϕ*(n+1))])%(n+2)+1`
-/

namespace A019587.P8354523917186163377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 2 : ℤ) + 1

end

end A019587.P8354523917186163377

namespace A019587

/-- `(2*∑[ceil(ϕ*(n+1))])%(n+2)+1` -/
def P8354523917186163377.Spec : Prop :=
  ∀ n, P8354523917186163377.a n = A019587 (n + 1)

end A019587

/-! ## A019587.P7788805018781339834

`∑[2*floor(n*ϕ²)+1]%comp[floor(ϕ*n)]`
-/

namespace A019587.P7788805018781339834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋ + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

end

end A019587.P7788805018781339834

namespace A019587

/-- `∑[2*floor(n*ϕ²)+1]%comp[floor(ϕ*n)]` -/
def P7788805018781339834.Spec : Prop :=
  ∀ n, P7788805018781339834.a n = A019587 (n + 1)

end A019587

/-! ## A019587.P4800810166110318763

`A194734(n+1)+1`
-/

namespace A019587.P4800810166110318763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194734 (n + 1) + 1

end

end A019587.P4800810166110318763

namespace A019587

/-- `A194734(n+1)+1` -/
def P4800810166110318763.Spec : Prop :=
  ∀ n, P4800810166110318763.a n = A019587 (n + 1)

theorem P4800810166110318763.correct : P4800810166110318763.Spec := by
  intro n
  simp only [A019587, Nat.add_sub_cancel, A019587.P4800810166110318763.a, A019587.P7183734736030190447.f1, A019587.P7183734736030190447.a, A001468, A001468.P12360075344960480253.a, A026351, A026351.P16838321733923579855.a, A194734, A194734.P3466795351290559112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A019587

/-! ## A019587.P9017035630490939669

`A054067(n+1)-∑[n]`
-/

namespace A019587.P9017035630490939669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054067 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A019587.P9017035630490939669

namespace A019587

/-- `A054067(n+1)-∑[n]` -/
def P9017035630490939669.Spec : Prop :=
  ∀ n, P9017035630490939669.a n = A019587 (n + 1)

theorem P9017035630490939669.correct : P9017035630490939669.Spec := by
  intro n
  simp only [A019587, Nat.add_sub_cancel, A019587.P9017035630490939669.f1, A019587.P9017035630490939669.a, A019587.P7183734736030190447.f1, A019587.P7183734736030190447.a, A001468, A001468.P12360075344960480253.a, A026351, A026351.P16838321733923579855.a, A054067, A054067.P7097243798565487157.f1, A054067.P7097243798565487157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A019587

/-! ## A019587.P2340527727621462965

`1-A194733(n+1)+n`
-/

namespace A019587.P2340527727621462965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194733 (n + 1) + (n : ℤ)

end

end A019587.P2340527727621462965

namespace A019587

/-- `1-A194733(n+1)+n` -/
def P2340527727621462965.Spec : Prop :=
  ∀ n, P2340527727621462965.a n = A019587 (n + 1)

theorem P2340527727621462965.correct : P2340527727621462965.Spec := by
  intro n
  simp only [A019587, Nat.add_sub_cancel, A019587.P2340527727621462965.a, A019587.P7183734736030190447.f1, A019587.P7183734736030190447.a, A001468, A001468.P12360075344960480253.a, A026351, A026351.P16838321733923579855.a, A194733, A194733.P5079887994713995928.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A019587

/-! ## A019587.P3672282429397682683

`2-A019588(n+1)+n`
-/

namespace A019587.P3672282429397682683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A019588 (n + 1) + (n : ℤ)

end

end A019587.P3672282429397682683

namespace A019587

/-- `2-A019588(n+1)+n` -/
def P3672282429397682683.Spec : Prop :=
  ∀ n, P3672282429397682683.a n = A019587 (n + 1)

theorem P3672282429397682683.correct : P3672282429397682683.Spec := by
  intro n
  simp only [A019587, Nat.add_sub_cancel, A019587.P3672282429397682683.a, A019587.P7183734736030190447.f1, A019587.P7183734736030190447.a, A001468, A001468.P12360075344960480253.a, A019588, A019588.P12494804011733207949.a, A026351, A026351.P16838321733923579855.a, A194733, A194733.P5079887994713995928.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A019587

/-! ## A019587.P15038409244957888962

`A026351(n+1)-A019594(n)`
-/

namespace A019587.P15038409244957888962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (n + 1) - A019594 n

end

end A019587.P15038409244957888962

namespace A019587

/-- `A026351(n+1)-A019594(n)` -/
def P15038409244957888962.Spec : Prop :=
  ∀ n, P15038409244957888962.a n = A019587 (n + 1)

end A019587

/-! ## A019587.P7183734736030190447

`∑[A026351(n)-n*A001468(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A019587

/-- `∑[A026351(n)-n*A001468(n)]` -/
def P7183734736030190447.Spec : Prop :=
  ∀ n, P7183734736030190447.a n = A019587 (n + 1)

theorem P7183734736030190447.correct : P7183734736030190447.Spec := by
  intro n
  simp only [A019587, Nat.add_sub_cancel]

end A019587

/-! ## A019587.P9257693350067352155

`A000201(n+1)+1-A019594(n)`
-/

namespace A019587.P9257693350067352155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) + (1 - A019594 n)

end

end A019587.P9257693350067352155

namespace A019587

/-- `A000201(n+1)+1-A019594(n)` -/
def P9257693350067352155.Spec : Prop :=
  ∀ n, P9257693350067352155.a n = A019587 (n + 1)

end A019587

/-! ## A019587.P13804350231580254060

`A019594(A005206(n)+n)-n`
-/

namespace A019587.P13804350231580254060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019594 (A005206 n + (n : ℤ)).toNat - (n : ℤ)

end

end A019587.P13804350231580254060

namespace A019587

/-- `A019594(A005206(n)+n)-n` -/
def P13804350231580254060.Spec : Prop :=
  ∀ n, P13804350231580254060.a n = A019587 (n + 1)

end A019587

/-! ## A019587.P16109370382874959410

`A019588(A000201(n+1))`
-/

namespace A019587.P16109370382874959410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019588 (A000201 (n + 1)).toNat

end

end A019587.P16109370382874959410

namespace A019587

/-- `A019588(A000201(n+1))` -/
def P16109370382874959410.Spec : Prop :=
  ∀ n, P16109370382874959410.a n = A019587 (n + 1)

end A019587

/-! ## A019587.P12129719462600606976

`A019588(A066096(n+1))`
-/

namespace A019587.P12129719462600606976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019588 (A066096 (n + 1)).toNat

end

end A019587.P12129719462600606976

namespace A019587

/-- `A019588(A066096(n+1))` -/
def P12129719462600606976.Spec : Prop :=
  ∀ n, P12129719462600606976.a n = A019587 (n + 1)

end A019587

/-! ## A019587.P6044860456447267580

`A019588(A005206(n)+1+n)`
-/

namespace A019587.P6044860456447267580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019588 (A005206 n + 1 + (n : ℤ)).toNat

end

end A019587.P6044860456447267580

namespace A019587

/-- `A019588(A005206(n)+1+n)` -/
def P6044860456447267580.Spec : Prop :=
  ∀ n, P6044860456447267580.a n = A019587 (n + 1)

end A019587

/-! ## A019587.P17593086003739067703

`A019588(A019446(n+1)+n)`
-/

namespace A019587.P17593086003739067703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019588 (A019446 (n + 1) + (n : ℤ)).toNat

end

end A019587.P17593086003739067703

namespace A019587

/-- `A019588(A019446(n+1)+n)` -/
def P17593086003739067703.Spec : Prop :=
  ∀ n, P17593086003739067703.a n = A019587 (n + 1)

end A019587

/-! ## A019587.P499830647371326119

`A019588(A003622(n+1)-n)`
-/

namespace A019587.P499830647371326119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019588 (A003622 (n + 1) - (n : ℤ)).toNat

end

end A019587.P499830647371326119

namespace A019587

/-- `A019588(A003622(n+1)-n)` -/
def P499830647371326119.Spec : Prop :=
  ∀ n, P499830647371326119.a n = A019587 (n + 1)

end A019587

/-! ## A019587.P998328288223916322

`A295540(A003622(n+1))`
-/

namespace A019587.P998328288223916322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295540 (A003622 (n + 1)).toNat

end

end A019587.P998328288223916322

namespace A019587

/-- `A295540(A003622(n+1))` -/
def P998328288223916322.Spec : Prop :=
  ∀ n, P998328288223916322.a n = A019587 (n + 1)

end A019587

/-! ## A019587.P11658719324702166469

`A295540(A001950(n+1)-1)`
-/

namespace A019587.P11658719324702166469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295540 (A001950 (n + 1) - 1).toNat

end

end A019587.P11658719324702166469

namespace A019587

/-- `A295540(A001950(n+1)-1)` -/
def P11658719324702166469.Spec : Prop :=
  ∀ n, P11658719324702166469.a n = A019587 (n + 1)

end A019587

/-! ## A019587.P796121493284093641

`A295540(A000201(n+1)+n)`
-/

namespace A019587.P796121493284093641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295540 (A000201 (n + 1) + (n : ℤ)).toNat

end

end A019587.P796121493284093641

namespace A019587

/-- `A295540(A000201(n+1)+n)` -/
def P796121493284093641.Spec : Prop :=
  ∀ n, P796121493284093641.a n = A019587 (n + 1)

end A019587

/-! ## A019587.P15872528762540570234

`A295540(record[A002251(n+1)-1])`
-/

namespace A019587.P15872528762540570234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295540 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A019587.P15872528762540570234

namespace A019587

/-- `A295540(record[A002251(n+1)-1])` -/
def P15872528762540570234.Spec : Prop :=
  ∀ n, P15872528762540570234.a n = A019587 (n + 1)

end A019587

/-! ## A019587.P4197834720370165792

`A283969(n+1)-A283968(A001950(n+1))`
-/

namespace A019587.P4197834720370165792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283969 (n + 1) - A283968 (A001950 (n + 1)).toNat

end

end A019587.P4197834720370165792

namespace A019587

/-- `A283969(n+1)-A283968(A001950(n+1))` -/
def P4197834720370165792.Spec : Prop :=
  ∀ n, P4197834720370165792.a n = A019587 (n + 1)

end A019587

/-!
# A019588: The right budding sequence: # of i such that 0 < i <= n and {tau*n} <= {tau*i} < 1, where {} is fractional part.

The programs for A019588, the canonical program `A019588.P12494804011733207949` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019588 has offset 1).

The definition of A019588 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A194733, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A019588.P12494804011733207949

`A194733(n+1)+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A019588

/-- `A194733(n+1)+1` -/
def P12494804011733207949.Spec : Prop :=
  ∀ n, P12494804011733207949.a n = A019588 (n + 1)

theorem P12494804011733207949.correct : P12494804011733207949.Spec := by
  intro n
  simp only [A019588, Nat.add_sub_cancel]

end A019588

/-! ## A019588.P2478855685120670308

`1-A194734(n+1)+n`
-/

namespace A019588.P2478855685120670308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194734 (n + 1) + (n : ℤ)

end

end A019588.P2478855685120670308

namespace A019588

/-- `1-A194734(n+1)+n` -/
def P2478855685120670308.Spec : Prop :=
  ∀ n, P2478855685120670308.a n = A019588 (n + 1)

theorem P2478855685120670308.correct : P2478855685120670308.Spec := by
  intro n
  simp only [A019588, Nat.add_sub_cancel, A019588.P2478855685120670308.a, A019588.P12494804011733207949.a, A194733, A194733.P5079887994713995928.a, A194734, A194734.P3466795351290559112.a, A019587, A019587.P7183734736030190447.f1, A019587.P7183734736030190447.a, A001468, A001468.P12360075344960480253.a, A026351, A026351.P16838321733923579855.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A019588

/-! ## A019588.P12712014220526745531

`2-A019587(n+1)+n`
-/

namespace A019588.P12712014220526745531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A019587 (n + 1) + (n : ℤ)

end

end A019588.P12712014220526745531

namespace A019588

/-- `2-A019587(n+1)+n` -/
def P12712014220526745531.Spec : Prop :=
  ∀ n, P12712014220526745531.a n = A019588 (n + 1)

theorem P12712014220526745531.correct : P12712014220526745531.Spec := by
  intro n
  simp only [A019588, Nat.add_sub_cancel, A019588.P12712014220526745531.a, A019588.P12494804011733207949.a, A019587, A019587.P7183734736030190447.f1, A019587.P7183734736030190447.a, A194733, A194733.P5079887994713995928.a, A001468, A001468.P12360075344960480253.a, A026351, A026351.P16838321733923579855.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A019588

/-! ## A019588.P10713124008520483568

`A019594(n+1)%(n+2)`
-/

namespace A019588.P10713124008520483568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019594 (n + 1)) (n + 2 : ℤ)

end

end A019588.P10713124008520483568

namespace A019588

/-- `A019594(n+1)%(n+2)` -/
def P10713124008520483568.Spec : Prop :=
  ∀ n, P10713124008520483568.a n = A019588 (n + 1)

end A019588

/-! ## A019588.P5130203212520098658

`A019594(n)-A005206(n)`
-/

namespace A019588.P5130203212520098658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019594 n - A005206 n

end

end A019588.P5130203212520098658

namespace A019588

/-- `A019594(n)-A005206(n)` -/
def P5130203212520098658.Spec : Prop :=
  ∀ n, P5130203212520098658.a n = A019588 (n + 1)

end A019588

/-! ## A019588.P6333096247594112094

`A022958(A019587(n+1))+n`
-/

namespace A019588.P6333096247594112094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (A019587 (n + 1)).toNat + (n : ℤ)

end

end A019588.P6333096247594112094

namespace A019588

/-- `A022958(A019587(n+1))+n` -/
def P6333096247594112094.Spec : Prop :=
  ∀ n, P6333096247594112094.a n = A019588 (n + 1)

end A019588

/-! ## A019588.P10861334099618002555

`A019594(n)+1-A019446(n+1)`
-/

namespace A019588.P10861334099618002555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019594 n + (1 - A019446 (n + 1))

end

end A019588.P10861334099618002555

namespace A019588

/-- `A019594(n)+1-A019446(n+1)` -/
def P10861334099618002555.Spec : Prop :=
  ∀ n, P10861334099618002555.a n = A019588 (n + 1)

end A019588

/-! ## A019588.P16267994796666876085

`A000217(n+1)+1-A054067(n+1)`
-/

namespace A019588.P16267994796666876085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + 1 - A054067 (n + 1)

end

end A019588.P16267994796666876085

namespace A019588

/-- `A000217(n+1)+1-A054067(n+1)` -/
def P16267994796666876085.Spec : Prop :=
  ∀ n, P16267994796666876085.a n = A019588 (n + 1)

end A019588

/-! ## A019588.P6215955171899991539

`A000124(n+1)-A054067(n+1)`
-/

namespace A019588.P6215955171899991539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 1) - A054067 (n + 1)

end

end A019588.P6215955171899991539

namespace A019588

/-- `A000124(n+1)-A054067(n+1)` -/
def P6215955171899991539.Spec : Prop :=
  ∀ n, P6215955171899991539.a n = A019588 (n + 1)

end A019588

/-! ## A019588.P6477349980037218662

`A019587(A004956(n+1))`
-/

namespace A019588.P6477349980037218662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019587 (A004956 (n + 1)).toNat

end

end A019588.P6477349980037218662

namespace A019588

/-- `A019587(A004956(n+1))` -/
def P6477349980037218662.Spec : Prop :=
  ∀ n, P6477349980037218662.a n = A019588 (n + 1)

end A019588

/-! ## A019588.P2207940726282357871

`A019587(A026351(n+1))`
-/

namespace A019588.P2207940726282357871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019587 (A026351 (n + 1)).toNat

end

end A019588.P2207940726282357871

namespace A019588

/-- `A019587(A026351(n+1))` -/
def P2207940726282357871.Spec : Prop :=
  ∀ n, P2207940726282357871.a n = A019588 (n + 1)

end A019588

/-! ## A019588.P4253298407363685177

`A019587(Δ[A054067(n+1)])`
-/

namespace A019588.P4253298407363685177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019587 (f1 (n + 1) - f1 n).toNat

end

end A019588.P4253298407363685177

namespace A019588

/-- `A019587(Δ[A054067(n+1)])` -/
def P4253298407363685177.Spec : Prop :=
  ∀ n, P4253298407363685177.a n = A019588 (n + 1)

end A019588

/-! ## A019588.P7555528000324243782

`A019587(A000201(n+1)+1)`
-/

namespace A019588.P7555528000324243782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019587 (A000201 (n + 1) + 1).toNat

end

end A019588.P7555528000324243782

namespace A019588

/-- `A019587(A000201(n+1)+1)` -/
def P7555528000324243782.Spec : Prop :=
  ∀ n, P7555528000324243782.a n = A019588 (n + 1)

end A019588

/-! ## A019588.P17421989195167750529

`A019587(A066096(n+1)+1)`
-/

namespace A019588.P17421989195167750529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019587 (A066096 (n + 1) + 1).toNat

end

end A019588.P17421989195167750529

namespace A019588

/-- `A019587(A066096(n+1)+1)` -/
def P17421989195167750529.Spec : Prop :=
  ∀ n, P17421989195167750529.a n = A019588 (n + 1)

end A019588

/-! ## A019588.P7154002317005313241

`A019587(A005206(n)+2+n)`
-/

namespace A019588.P7154002317005313241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019587 (A005206 n + 2 + (n : ℤ)).toNat

end

end A019588.P7154002317005313241

namespace A019588

/-- `A019587(A005206(n)+2+n)` -/
def P7154002317005313241.Spec : Prop :=
  ∀ n, P7154002317005313241.a n = A019588 (n + 1)

end A019588

/-! ## A019588.P18264272857110031913

`A019587(A019446(n+1)+1+n)`
-/

namespace A019588.P18264272857110031913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019587 (A019446 (n + 1) + 1 + (n : ℤ)).toNat

end

end A019588.P18264272857110031913

namespace A019588

/-- `A019587(A019446(n+1)+1+n)` -/
def P18264272857110031913.Spec : Prop :=
  ∀ n, P18264272857110031913.a n = A019588 (n + 1)

end A019588

/-! ## A019588.P1930630514829477649

`A019587(Δ[A019587(n+1)+A000124(n)])`
-/

namespace A019588.P1930630514829477649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019587 (n + 1) + A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019587 (f1 (n + 1) - f1 n).toNat

end

end A019588.P1930630514829477649

namespace A019588

/-- `A019587(Δ[A019587(n+1)+A000124(n)])` -/
def P1930630514829477649.Spec : Prop :=
  ∀ n, P1930630514829477649.a n = A019588 (n + 1)

end A019588

/-! ## A019588.P9815553169526793589

`A295540(A001950(n+1))`
-/

namespace A019588.P9815553169526793589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295540 (A001950 (n + 1)).toNat

end

end A019588.P9815553169526793589

namespace A019588

/-- `A295540(A001950(n+1))` -/
def P9815553169526793589.Spec : Prop :=
  ∀ n, P9815553169526793589.a n = A019588 (n + 1)

end A019588

/-! ## A019588.P12119701269542274744

`A295540(record[A002251(n+1)])`
-/

namespace A019588.P12119701269542274744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295540 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A019588.P12119701269542274744

namespace A019588

/-- `A295540(record[A002251(n+1)])` -/
def P12119701269542274744.Spec : Prop :=
  ∀ n, P12119701269542274744.a n = A019588 (n + 1)

end A019588

/-! ## A019588.P7785150372265634502

`A295540(A000201(n+1)+n+1)`
-/

namespace A019588.P7785150372265634502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295540 (A000201 (n + 1) + (n + 1 : ℤ)).toNat

end

end A019588.P7785150372265634502

namespace A019588

/-- `A295540(A000201(n+1)+n+1)` -/
def P7785150372265634502.Spec : Prop :=
  ∀ n, P7785150372265634502.a n = A019588 (n + 1)

end A019588

/-!
# A019589: Number of nondecreasing sequences that are differences of two permutations of 1,2,...,n.

The programs for A019589, there is no canonical definition to state claims against.
-/

/-! ## A019589.P1429040876023288456

`round(root(A202293(n), ϕ))`
-/

namespace A019589.P1429040876023288456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A202293 n : ℝ) ^ (1 / Real.goldenRatio))

end

end A019589.P1429040876023288456

/-! ## A019589.P8643826888325007860

`A007878(n^∑{d}[n, and(#², #%3)])`
-/

namespace A019589.P8643826888325007860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007878 (n ^ (∑ d ∈ Nat.divisors (f1 n), Nat.land (d ^ 2) (d % 3)))

end

end A019589.P8643826888325007860

/-!
# A019590: Fermat's Last Theorem: a(n) = 1 if x^n + y^n = z^n has a nontrivial solution in integers, otherwise a(n) = 0.

The programs for A019590, the canonical program `A019590.P10517823757212113743` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019590 has offset 1).

The definition of A019590 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019590.P10517823757212113743

`A000035(A000010(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A019590

/-- `A000035(A000010(n+1))` -/
def P10517823757212113743.Spec : Prop :=
  ∀ n, P10517823757212113743.a n = A019590 (n + 1)

theorem P10517823757212113743.correct : P10517823757212113743.Spec := by
  intro n
  simp only [A019590, Nat.add_sub_cancel]

end A019590

/-!
# A019591: Grundy function of game in which each player has to divide precisely one set of coins into two subsets of different sizes.

The programs for A019591, there is no canonical definition to state claims against.
-/

/-! ## A019591.P3382229544917404031

`and(A000120(A005318(n)), A194507(n+1))`
-/

namespace A019591.P3382229544917404031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000120 (A005318 n).toNat) (A194507 (n + 1))

end

end A019591.P3382229544917404031

/-! ## A019591.P9372264271807084719

`A353351(2*(n+1))-A211987(A034090(n+1))`
-/

namespace A019591.P9372264271807084719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353351 (2 * (n + 1)) - A211987 (A034090 (n + 1)).toNat

end

end A019591.P9372264271807084719

/-! ## A019591.P10662443281279118300

`A076450(n+1)%A005811(A295720(n))`
-/

namespace A019591.P10662443281279118300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076450 (n + 1)) (A005811 (A295720 n).toNat)

end

end A019591.P10662443281279118300

/-! ## A019591.P10658674236548036010

`A003056(A132109(n))%A049627(n)`
-/

namespace A019591.P10658674236548036010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 (A132109 n).toNat) (A049627 n)

end

end A019591.P10658674236548036010

/-! ## A019591.P1051208280759645027

`A146163(n)%A026350(A077168(n))`
-/

namespace A019591.P1051208280759645027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146163 n) (A026350 (A077168 n).toNat)

end

end A019591.P1051208280759645027

/-!
# A019593: From George Gilbert's marks problem: jumping 3 marks at a time (initial positions).

The programs for A019593, there is no canonical definition to state claims against.
-/

/-! ## A019593.P9254250619146769298

`A305733(A049311(n+1))+A005185(n+1)`
-/

namespace A019593.P9254250619146769298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305733 (A049311 (n + 1)).toNat + A005185 (n + 1)

end

end A019593.P9254250619146769298

/-!
# A019594: Conway's "para-budding" sequence.

The programs for A019594, the canonical program `A019594.P5449280343673325443` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019594 has offset 0).

The definition of A019594 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A019594.P5545118482112532628

`A019588(n+1)+A005206(n)`
-/

namespace A019594.P5545118482112532628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019588 (n + 1) + A005206 n

end

end A019594.P5545118482112532628

namespace A019594

/-- `A019588(n+1)+A005206(n)` -/
def P5545118482112532628.Spec : Prop :=
  ∀ n, P5545118482112532628.a n = A019594 n

end A019594

/-! ## A019594.P10704552002119250996

`A194733(n+1)+A019446(n+1)`
-/

namespace A019594.P10704552002119250996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194733 (n + 1) + A019446 (n + 1)

end

end A019594.P10704552002119250996

namespace A019594

/-- `A194733(n+1)+A019446(n+1)` -/
def P10704552002119250996.Spec : Prop :=
  ∀ n, P10704552002119250996.a n = A019594 n

end A019594

/-! ## A019594.P5449280343673325443

`A004956(n+1)-A019587(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A019594

/-- `A004956(n+1)-A019587(n+1)` -/
def P5449280343673325443.Spec : Prop :=
  ∀ n, P5449280343673325443.a n = A019594 n

theorem P5449280343673325443.correct : P5449280343673325443.Spec := by
  intro n
  simp only [A019594]

end A019594

/-! ## A019594.P9624854389253777022

`A026351(n+1)-A019587(n+1)`
-/

namespace A019594.P9624854389253777022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (n + 1) - A019587 (n + 1)

end

end A019594.P9624854389253777022

namespace A019594

/-- `A026351(n+1)-A019587(n+1)` -/
def P9624854389253777022.Spec : Prop :=
  ∀ n, P9624854389253777022.a n = A019594 n

end A019594

/-! ## A019594.P9018518780525507158

`A000201(n+1)-A194734(n+1)`
-/

namespace A019594.P9018518780525507158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) - A194734 (n + 1)

end

end A019594.P9018518780525507158

namespace A019594

/-- `A000201(n+1)-A194734(n+1)` -/
def P9018518780525507158.Spec : Prop :=
  ∀ n, P9018518780525507158.a n = A019594 n

end A019594

/-! ## A019594.P11627701870601949429

`A000201(n+1)+1-A019587(n+1)`
-/

namespace A019594.P11627701870601949429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) + (1 - A019587 (n + 1))

end

end A019594.P11627701870601949429

namespace A019594

/-- `A000201(n+1)+1-A019587(n+1)` -/
def P11627701870601949429.Spec : Prop :=
  ∀ n, P11627701870601949429.a n = A019594 n

end A019594

/-! ## A019594.P5646913465709197237

`A019446(n+1)+A019588(n+1)-1`
-/

namespace A019594.P5646913465709197237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (n + 1) + (A019588 (n + 1) - 1)

end

end A019594.P5646913465709197237

namespace A019594

/-- `A019446(n+1)+A019588(n+1)-1` -/
def P5646913465709197237.Spec : Prop :=
  ∀ n, P5646913465709197237.a n = A019594 n

end A019594

/-! ## A019594.P12917851171583299419

`A019587(A000201(n+1))`
-/

namespace A019594.P12917851171583299419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019587 (A000201 (n + 1)).toNat

end

end A019594.P12917851171583299419

namespace A019594

/-- `A019587(A000201(n+1))` -/
def P12917851171583299419.Spec : Prop :=
  ∀ n, P12917851171583299419.a n = A019594 n

end A019594

/-! ## A019594.P13606160163989942206

`A019587(A066096(n+1))`
-/

namespace A019594.P13606160163989942206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019587 (A066096 (n + 1)).toNat

end

end A019594.P13606160163989942206

namespace A019594

/-- `A019587(A066096(n+1))` -/
def P13606160163989942206.Spec : Prop :=
  ∀ n, P13606160163989942206.a n = A019594 n

end A019594

/-! ## A019594.P9969962219508263526

`A019587(A004956(n+1)-1)`
-/

namespace A019594.P9969962219508263526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019587 (A004956 (n + 1) - 1).toNat

end

end A019594.P9969962219508263526

namespace A019594

/-- `A019587(A004956(n+1)-1)` -/
def P9969962219508263526.Spec : Prop :=
  ∀ n, P9969962219508263526.a n = A019594 n

end A019594

/-! ## A019594.P14313117954795715278

`A019587(A026351(n+1)-1)`
-/

namespace A019594.P14313117954795715278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019587 (A026351 (n + 1) - 1).toNat

end

end A019594.P14313117954795715278

namespace A019594

/-- `A019587(A026351(n+1)-1)` -/
def P14313117954795715278.Spec : Prop :=
  ∀ n, P14313117954795715278.a n = A019594 n

end A019594

/-! ## A019594.P11113962333845540790

`A019587(A005206(n)+1+n)`
-/

namespace A019594.P11113962333845540790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019587 (A005206 n + 1 + (n : ℤ)).toNat

end

end A019594.P11113962333845540790

namespace A019594

/-- `A019587(A005206(n)+1+n)` -/
def P11113962333845540790.Spec : Prop :=
  ∀ n, P11113962333845540790.a n = A019594 n

end A019594

/-! ## A019594.P6784140177016596026

`A019587(A019446(n+1)+n)`
-/

namespace A019594.P6784140177016596026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019587 (A019446 (n + 1) + (n : ℤ)).toNat

end

end A019594.P6784140177016596026

namespace A019594

/-- `A019587(A019446(n+1)+n)` -/
def P6784140177016596026.Spec : Prop :=
  ∀ n, P6784140177016596026.a n = A019594 n

end A019594

/-! ## A019594.P47449928193461197

`A019587((A035336(n+1)-n)/2)`
-/

namespace A019594.P47449928193461197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019587 (SequenceMachineLib.roundAway ((A035336 (n + 1) - (n : ℤ) : ℚ) / 2)).toNat

end

end A019594.P47449928193461197

namespace A019594

/-- `A019587((A035336(n+1)-n)/2)` -/
def P47449928193461197.Spec : Prop :=
  ∀ n, P47449928193461197.a n = A019594 n

end A019594

/-! ## A019594.P17612551965596474739

`A019588(A003622(n+1))`
-/

namespace A019594.P17612551965596474739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019588 (A003622 (n + 1)).toNat

end

end A019594.P17612551965596474739

namespace A019594

/-- `A019588(A003622(n+1))` -/
def P17612551965596474739.Spec : Prop :=
  ∀ n, P17612551965596474739.a n = A019594 n

end A019594

/-! ## A019594.P10960096601872363224

`A019588(A000201(n+1)+n)`
-/

namespace A019594.P10960096601872363224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019588 (A000201 (n + 1) + (n : ℤ)).toNat

end

end A019594.P10960096601872363224

namespace A019594

/-- `A019588(A000201(n+1)+n)` -/
def P10960096601872363224.Spec : Prop :=
  ∀ n, P10960096601872363224.a n = A019594 n

end A019594

/-! ## A019594.P9561694100269930797

`A019588(A066096(n+1)+n)`
-/

namespace A019594.P9561694100269930797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019588 (A066096 (n + 1) + (n : ℤ)).toNat

end

end A019594.P9561694100269930797

namespace A019594

/-- `A019588(A066096(n+1)+n)` -/
def P9561694100269930797.Spec : Prop :=
  ∀ n, P9561694100269930797.a n = A019594 n

end A019594

/-! ## A019594.P9906317981115083235

`A019588(A019446(n+1)+2*n)`
-/

namespace A019594.P9906317981115083235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019588 (A019446 (n + 1) + (2 * n : ℤ)).toNat

end

end A019594.P9906317981115083235

namespace A019594

/-- `A019588(A019446(n+1)+2*n)` -/
def P9906317981115083235.Spec : Prop :=
  ∀ n, P9906317981115083235.a n = A019594 n

end A019594

/-! ## A019594.P11211203384611830851

`A019588(A019446(n+1)+n+n)`
-/

namespace A019594.P11211203384611830851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019588 (A019446 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A019594.P11211203384611830851

namespace A019594

/-- `A019588(A019446(n+1)+n+n)` -/
def P11211203384611830851.Spec : Prop :=
  ∀ n, P11211203384611830851.a n = A019594 n

end A019594

/-! ## A019594.P17320382262081642349

`A019587(A035336(n+1))`
-/

namespace A019594.P17320382262081642349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019587 (A035336 (n + 1)).toNat

end

end A019594.P17320382262081642349

namespace A019594

/-- `A019587(A035336(n+1))` -/
def P17320382262081642349.Spec : Prop :=
  ∀ n, P17320382262081642349.a n = A019594 n

end A019594

/-!
# A019596: From George Gilbert's marks problem: jumping 4 marks at a time (final positions).

The programs for A019596, there is no canonical definition to state claims against.
-/

/-! ## A019596.P6656768954434244237

`A321798(A204114(3*n+1))+A136371(2*n+1)`
-/

namespace A019596.P6656768954434244237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321798 (A204114 (3 * n + 1)).toNat + A136371 (2 * n + 1)

end

end A019596.P6656768954434244237

