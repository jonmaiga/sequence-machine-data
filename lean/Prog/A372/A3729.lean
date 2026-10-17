import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.B012.C000
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
import Seq.Opaque.C026

/-!
# A372900: Numbers k that divide the k-th term of Narayana's cows sequence.

The programs for A372900, there is no canonical definition to state claims against.
-/

/-! ## A372900.P10860420141240103833

`A193586(A266932(n+1))`
-/

namespace A372900.P10860420141240103833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193586 (A266932 (n + 1)).toNat

end

end A372900.P10860420141240103833

/-!
# A372901: Numbers k that divide the k-th central Delannoy number.

The programs for A372901, there is no canonical definition to state claims against.
-/

/-! ## A372901.P2609740881362247320

`∩[A014854(n+1), A030310(n+1)]`
-/

namespace A372901.P2609740881362247320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372901.P2609740881362247320

/-! ## A372901.P4335661129350784955

`∩[A014854(n+1), A039109(n+1)]`
-/

namespace A372901.P4335661129350784955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372901.P4335661129350784955

/-! ## A372901.P10905643603001075589

`∩[A014854(n+1), A335962(n+1)]`
-/

namespace A372901.P10905643603001075589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372901.P10905643603001075589

/-!
# A372902: Numbers k that divide the k-th large Schröder number.

The programs for A372902, there is no canonical definition to state claims against.
-/

/-! ## A372902.P6122901348303436329

`A317805(A123660(n)-A007949(n+1))`
-/

namespace A372902.P6122901348303436329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317805 (A123660 (n + 35) - A007949 (n + 1)).toNat

end

end A372902.P6122901348303436329

/-! ## A372902.P112748180647935000

`A317805(A123660(n)-A010060(n+2))`
-/

namespace A372902.P112748180647935000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317805 (A123660 (n + 35) - A010060 (n + 2)).toNat

end

end A372902.P112748180647935000

/-!
# A372903: Numbers k that divide the k-th little Schroeder number.

The programs for A372903, there is no canonical definition to state claims against.
-/

/-! ## A372903.P17026070044563686659

`filter[A372902(n+1), A373157(#)]`
-/

namespace A372903.P17026070044563686659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A372903.P17026070044563686659

/-! ## A372903.P13998094379471760336

`filter[A372902(n+1), A379952(#)]`
-/

namespace A372903.P13998094379471760336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A372903.P13998094379471760336

/-! ## A372903.P8040033096976670363

`filter[A372902(n+1), A035263(#)]`
-/

namespace A372903.P8040033096976670363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A372903.P8040033096976670363

/-! ## A372903.P4769827618117001874

`filter[A372902(n+1), A152822(#)]`
-/

namespace A372903.P4769827618117001874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A372903.P4769827618117001874

/-!
# A372904: Numbers k that divide the k-th central trinomial coefficient.

The programs for A372904, there is no canonical definition to state claims against.
-/

/-! ## A372904.P4933744829921871340

`filter[A266969(n+1), A373157(#)]`
-/

namespace A372904.P4933744829921871340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A372904.P4933744829921871340

/-! ## A372904.P3130533419228450098

`filter[A266969(n+1), A374134(#)]`
-/

namespace A372904.P3130533419228450098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A372904.P3130533419228450098

/-! ## A372904.P17153081569185680535

`filter[A266969(n+1), A379952(#)]`
-/

namespace A372904.P17153081569185680535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A372904.P17153081569185680535

/-! ## A372904.P16442330809260514272

`filter[A266969(n+1), A035263(#)]`
-/

namespace A372904.P16442330809260514272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A372904.P16442330809260514272

/-! ## A372904.P7566881323289864988

`filter[A266969(n+1), A152822(#)]`
-/

namespace A372904.P7566881323289864988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A372904.P7566881323289864988

/-!
# A372905: Number of solutions for A330279 (numbers k such that x^k == k (mod k + 1) has multiple solutions for 0 <= x < k).

The programs for A372905, there is no canonical definition to state claims against.
-/

/-! ## A372905.P6062292142011399979

`A348259(A039772(n+1))`
-/

namespace A372905.P6062292142011399979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348259 (A039772 (n + 1)).toNat

end

end A372905.P6062292142011399979

/-! ## A372905.P5678703887000369058

`A348259(∩[A039769(n+1), A020744(n)])`
-/

namespace A372905.P5678703887000369058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348259 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A372905.P5678703887000369058

/-! ## A372905.P17822671197360852055

`A348259(∩[A181780(n+1), A005843(n)])`
-/

namespace A372905.P17822671197360852055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348259 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A372905.P17822671197360852055

/-! ## A372905.P9164197301683680455

`A348259(∩[A181780(n+1), A020739(n)])`
-/

namespace A372905.P9164197301683680455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348259 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A372905.P9164197301683680455

/-! ## A372905.P657525239624255030

`A348259(∩[A181780(n+1), A020744(n)])`
-/

namespace A372905.P657525239624255030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348259 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A372905.P657525239624255030

/-! ## A372905.P12651693906562115397

`A348259(∩[A280199(n+5), A004275(n)])`
-/

namespace A372905.P12651693906562115397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280199 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348259 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A372905.P12651693906562115397

/-! ## A372905.P2579521871903481421

`A348259(∩[A280199(n+5), A020744(n)])`
-/

namespace A372905.P2579521871903481421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280199 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348259 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A372905.P2579521871903481421

/-! ## A372905.P10474638848585576258

`A348259(∩[A280199(n+5), A103517(n)])`
-/

namespace A372905.P10474638848585576258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280199 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348259 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A372905.P10474638848585576258

/-! ## A372905.P11371907935503577769

`A348259(∩[A181780(n+1), A139270(n+1)])`
-/

namespace A372905.P11371907935503577769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139270 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348259 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A372905.P11371907935503577769

/-! ## A372905.P3369264308023783548

`A348259(∩[A181780(n+1), A282671(n+1)])`
-/

namespace A372905.P3369264308023783548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282671 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348259 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A372905.P3369264308023783548

/-!
# A372917: a(n) is the number of distinct rectangles with area n whose vertices lie on points of a unit square grid.

The programs for A372917, the canonical program `A372917.P15567507182924479113` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372917 has offset 1).

The definition of A372917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372917.P15567507182924479113

`∑{d}[n+1, A353629(#)*A371014((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A372917

/-- `∑{d}[n+1, A353629(#)*A371014((n+1)/#)]` -/
def P15567507182924479113.Spec : Prop :=
  ∀ n, P15567507182924479113.a n = A372917 (n + 1)

theorem P15567507182924479113.correct : P15567507182924479113.Spec := by
  intro n
  simp only [A372917, Nat.add_sub_cancel]

end A372917

/-! ## A372917.P16082279698999886158

`A329313(A059886(n+1)+n)`
-/

namespace A372917.P16082279698999886158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 (A059886 (n + 1) + (n : ℤ)).toNat

end

end A372917.P16082279698999886158

namespace A372917

/-- `A329313(A059886(n+1)+n)` -/
def P16082279698999886158.Spec : Prop :=
  ∀ n, P16082279698999886158.a n = A372917 (n + 1)

end A372917

/-! ## A372917.P17141352577331402161

`A338939(n+1)+A001055(A077168(n))`
-/

namespace A372917.P17141352577331402161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338939 (n + 1) + A001055 (A077168 n).toNat

end

end A372917.P17141352577331402161

namespace A372917

/-- `A338939(n+1)+A001055(A077168(n))` -/
def P17141352577331402161.Spec : Prop :=
  ∀ n, P17141352577331402161.a n = A372917 (n + 1)

end A372917

/-! ## A372917.P5625676290520487083

`A002487(n+2)-A046080(A061978(n+1))`
-/

namespace A372917.P5625676290520487083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 2) - A046080 (A061978 (n + 1)).toNat

end

end A372917.P5625676290520487083

namespace A372917

/-- `A002487(n+2)-A046080(A061978(n+1))` -/
def P5625676290520487083.Spec : Prop :=
  ∀ n, P5625676290520487083.a n = A372917 (n + 1)

end A372917

/-! ## A372917.P10813324493782305385

`∑{e}[A045828(A287784(3*n+2))+n+1, #]`
-/

namespace A372917.P10813324493782305385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045828 (A287784 (3 * n + 2)).toNat + (n : ℤ) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A372917.P10813324493782305385

namespace A372917

/-- `∑{e}[A045828(A287784(3*n+2))+n+1, #]` -/
def P10813324493782305385.Spec : Prop :=
  ∀ n, (P10813324493782305385.a n : ℤ) = A372917 (n + 1)

end A372917

/-!
# A372918: a(n) = Sum_{k=1..n} gcd(k^3,n^2).

The programs for A372918, there is no canonical definition to state claims against.
-/

/-! ## A372918.P9287764533774081374

`A372882((n+1)²)/(n+1)`
-/

namespace A372918.P9287764533774081374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372882 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A372918.P9287764533774081374

/-!
# A372920: Total number of n-colorings of all graphs on n labeled nodes.

The programs for A372920, there is no canonical definition to state claims against.
-/

/-! ## A372920.P4556148718983735497

`A322280(∑[4*n])`
-/

namespace A372920.P4556148718983735497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322280 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A372920.P4556148718983735497

/-! ## A372920.P16519094553332459458

`or(n, A322280(A046092(n)))`
-/

namespace A372920.P16519094553332459458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A322280 (A046092 n).toNat)

end

end A372920.P16519094553332459458

/-!
# A372923: Number of diagonalized cyclic diagonal Latin squares of order 2n+1 with the first row in order.

The programs for A372923, there is no canonical definition to state claims against.
-/

/-! ## A372923.P6191614431042127367

`A054582(2^n-(1-2*a(n-1)))` with `a(0)=1, a(1)=0`
-/

namespace A372923.P6191614431042127367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A054582 ((2 ^ n : ℤ) - (1 - 2 * a (n - 1))).toNat

end

end A372923.P6191614431042127367

/-!
# A372924: a(n) = (sum_digits(n^3)-n)/3.

The programs for A372924, the canonical program `A372924.P2536163758219034350` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372924 has offset 0).

The definition of A372924 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004164, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A372924.P2536163758219034350

`(A004164(n)-n)/3`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A372924

/-- `(A004164(n)-n)/3` -/
def P2536163758219034350.Spec : Prop :=
  ∀ n, P2536163758219034350.a n = (A372924 n : ℚ)

end A372924

/-! ## A372924.P17330145133600688663

`(∑{digits}[n^3, #]-n)/3`
-/

namespace A372924.P17330145133600688663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ) : ℚ) / 3

end

end A372924.P17330145133600688663

namespace A372924

/-- `(∑{digits}[n^3, #]-n)/3` -/
def P17330145133600688663.Spec : Prop :=
  ∀ n, P17330145133600688663.a n = (A372924 n : ℚ)

end A372924

/-! ## A372924.P332845910162827111

`A008611(A004164(n))-A008611(n)`
-/

namespace A372924.P332845910162827111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A004164 n).toNat - A008611 n

end

end A372924.P332845910162827111

namespace A372924

/-- `A008611(A004164(n))-A008611(n)` -/
def P332845910162827111.Spec : Prop :=
  ∀ n, P332845910162827111.a n = A372924 n

end A372924

/-! ## A372924.P16482819934587765884

`A008620(A004164(n))-A008620(n)`
-/

namespace A372924.P16482819934587765884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A004164 n).toNat - A008620 n

end

end A372924.P16482819934587765884

namespace A372924

/-- `A008620(A004164(n))-A008620(n)` -/
def P16482819934587765884.Spec : Prop :=
  ∀ n, P16482819934587765884.a n = A372924 n

end A372924

/-!
# A372926: a(n) = Sum_{1 <= x_1, x_2 <= n} gcd(x_1, x_2, n)^4.

The programs for A372926, the canonical program `A372926.P16726162444183078941` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372926 has offset 1).

The definition of A372926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372926.P16726162444183078941

`∑{d}[n+1, A001159(#)*A321322((n+1)/#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A372926

/-- `∑{d}[n+1, A001159(#)*A321322((n+1)/#)]` -/
def P16726162444183078941.Spec : Prop :=
  ∀ n, P16726162444183078941.a n = A372926 (n + 1)

theorem P16726162444183078941.correct : P16726162444183078941.Spec := by
  intro n
  simp only [A372926, Nat.add_sub_cancel]

end A372926

/-! ## A372926.P5755236899741676923

`∑{d}[n+1, A002618(#)*A343498((n+1)/#)]`
-/

namespace A372926.P5755236899741676923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A343498 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372926.P5755236899741676923

namespace A372926

/-- `∑{d}[n+1, A002618(#)*A343498((n+1)/#)]` -/
def P5755236899741676923.Spec : Prop :=
  ∀ n, P5755236899741676923.a n = A372926 (n + 1)

end A372926

/-! ## A372926.P12153102482161297834

`∑{d}[n+1, A084218(#)*A338164((n+1)/#)]`
-/

namespace A372926.P12153102482161297834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A084218 d * A338164 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372926.P12153102482161297834

namespace A372926

/-- `∑{d}[n+1, A084218(#)*A338164((n+1)/#)]` -/
def P12153102482161297834.Spec : Prop :=
  ∀ n, P12153102482161297834.a n = A372926 (n + 1)

end A372926

/-! ## A372926.P9395621171111331645

`∑{d}[n+1, A189393(#)*A368743((n+1)/#)]`
-/

namespace A372926.P9395621171111331645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A189393 d * A368743 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372926.P9395621171111331645

namespace A372926

/-- `∑{d}[n+1, A189393(#)*A368743((n+1)/#)]` -/
def P9395621171111331645.Spec : Prop :=
  ∀ n, P9395621171111331645.a n = A372926 (n + 1)

end A372926

/-! ## A372926.P17125793849578282830

`∑{d}[n+1, A341772(#)*A372952((n+1)/#)]`
-/

namespace A372926.P17125793849578282830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341772 d * A372952 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372926.P17125793849578282830

namespace A372926

/-- `∑{d}[n+1, A341772(#)*A372952((n+1)/#)]` -/
def P17125793849578282830.Spec : Prop :=
  ∀ n, P17125793849578282830.a n = A372926 (n + 1)

end A372926

/-! ## A372926.P6675801136239168939

`∑{d}[n+1, A360428(#)*A379833((n+1)/#)]`
-/

namespace A372926.P6675801136239168939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A360428 d * A379833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372926.P6675801136239168939

namespace A372926

/-- `∑{d}[n+1, A360428(#)*A379833((n+1)/#)]` -/
def P6675801136239168939.Spec : Prop :=
  ∀ n, P6675801136239168939.a n = A372926 (n + 1)

end A372926

/-!
# A372927: a(n) = Sum_{1 <= x_1, x_2 <= n} gcd(x_1, x_2, n)^5.

The programs for A372927, the canonical program `A372927.P10339266634366157161` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372927 has offset 1).

The definition of A372927 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372927.P10339266634366157161

`∑{d}[n+1, A001160(#)*A321322((n+1)/#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A372927

/-- `∑{d}[n+1, A001160(#)*A321322((n+1)/#)]` -/
def P10339266634366157161.Spec : Prop :=
  ∀ n, P10339266634366157161.a n = A372927 (n + 1)

theorem P10339266634366157161.correct : P10339266634366157161.Spec := by
  intro n
  simp only [A372927, Nat.add_sub_cancel]

end A372927

/-! ## A372927.P6895990973598049057

`∑{d}[n+1, A002618(#)*A343499((n+1)/#)]`
-/

namespace A372927.P6895990973598049057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A343499 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372927.P6895990973598049057

namespace A372927

/-- `∑{d}[n+1, A002618(#)*A343499((n+1)/#)]` -/
def P6895990973598049057.Spec : Prop :=
  ∀ n, P6895990973598049057.a n = A372927 (n + 1)

end A372927

/-! ## A372927.P2656102476833769529

`∑{d}[n+1, A115224(#)*A360428((n+1)/#)]`
-/

namespace A372927.P2656102476833769529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A115224 d * A360428 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372927.P2656102476833769529

namespace A372927

/-- `∑{d}[n+1, A115224(#)*A360428((n+1)/#)]` -/
def P2656102476833769529.Spec : Prop :=
  ∀ n, P2656102476833769529.a n = A372927 (n + 1)

end A372927

/-! ## A372927.P4466256149761512584

`∑{d}[n+1, A238533(#)*A372926((n+1)/#)]`
-/

namespace A372927.P4466256149761512584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A238533 d * A372926 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372927.P4466256149761512584

namespace A372927

/-- `∑{d}[n+1, A238533(#)*A372926((n+1)/#)]` -/
def P4466256149761512584.Spec : Prop :=
  ∀ n, P4466256149761512584.a n = A372927 (n + 1)

end A372927

/-! ## A372927.P17183914666686191829

`∑{d}[n+1, A338164(#)*A372962((n+1)/#)]`
-/

namespace A372927.P17183914666686191829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A338164 d * A372962 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372927.P17183914666686191829

namespace A372927

/-- `∑{d}[n+1, A338164(#)*A372962((n+1)/#)]` -/
def P17183914666686191829.Spec : Prop :=
  ∀ n, P17183914666686191829.a n = A372927 (n + 1)

end A372927

/-! ## A372927.P3113122069088945705

`∑{d}[n+1, A341772(#)*A372961((n+1)/#)]`
-/

namespace A372927.P3113122069088945705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341772 d * A372961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372927.P3113122069088945705

namespace A372927

/-- `∑{d}[n+1, A341772(#)*A372961((n+1)/#)]` -/
def P3113122069088945705.Spec : Prop :=
  ∀ n, P3113122069088945705.a n = A372927 (n + 1)

end A372927

/-!
# A372928: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} gcd(x_1, x_2, x_3, n)^3.

The programs for A372928, the canonical program `A372928.P5952424482190733790` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372928 has offset 1).

The definition of A372928 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372928.P5952424482190733790

`∑{d}[n+1, A338165(#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A372928

/-- `∑{d}[n+1, A338165(#)]` -/
def P5952424482190733790.Spec : Prop :=
  ∀ n, P5952424482190733790.a n = A372928 (n + 1)

theorem P5952424482190733790.correct : P5952424482190733790.Spec := by
  intro n
  simp only [A372928, Nat.add_sub_cancel]

end A372928

/-! ## A372928.P17299420364368271244

`∑{d}[n+1, A000056(#)*A343497((n+1)/#)]`
-/

namespace A372928.P17299420364368271244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000056 d * A343497 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372928.P17299420364368271244

namespace A372928

/-- `∑{d}[n+1, A000056(#)*A343497((n+1)/#)]` -/
def P17299420364368271244.Spec : Prop :=
  ∀ n, P17299420364368271244.a n = A372928 (n + 1)

end A372928

/-! ## A372928.P9046492735819806121

`∑{d}[n+1, A008683(#)*A386012((n+1)/#)]`
-/

namespace A372928.P9046492735819806121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A386012 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372928.P9046492735819806121

namespace A372928

/-- `∑{d}[n+1, A008683(#)*A386012((n+1)/#)]` -/
def P9046492735819806121.Spec : Prop :=
  ∀ n, P9046492735819806121.a n = A372928 (n + 1)

end A372928

/-! ## A372928.P15540649872516403825

`∑{d}[n+1, A053191(#)*A368743((n+1)/#)]`
-/

namespace A372928.P15540649872516403825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053191 d * A368743 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372928.P15540649872516403825

namespace A372928

/-- `∑{d}[n+1, A053191(#)*A368743((n+1)/#)]` -/
def P15540649872516403825.Spec : Prop :=
  ∀ n, P15540649872516403825.a n = A372928 (n + 1)

end A372928

/-! ## A372928.P11749370625775372245

`∑{d}[n+1, A341772(#)*A373060((n+1)/#)]`
-/

namespace A372928.P11749370625775372245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341772 d * A373060 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372928.P11749370625775372245

namespace A372928

/-- `∑{d}[n+1, A341772(#)*A373060((n+1)/#)]` -/
def P11749370625775372245.Spec : Prop :=
  ∀ n, P11749370625775372245.a n = A372928 (n + 1)

end A372928

/-! ## A372928.P5761352523097417865

`A372938(C(n+3, n+1)+n+1)`
-/

namespace A372928.P5761352523097417865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372938 (Nat.choose (n + 3) (n + 1) + n + 1)

end

end A372928.P5761352523097417865

namespace A372928

/-- `A372938(C(n+3, n+1)+n+1)` -/
def P5761352523097417865.Spec : Prop :=
  ∀ n, P5761352523097417865.a n = A372928 (n + 1)

end A372928

/-! ## A372928.P7663310155352839923

`A372938(A034856(n+2))`
-/

namespace A372928.P7663310155352839923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372938 (A034856 (n + 2)).toNat

end

end A372928.P7663310155352839923

namespace A372928

/-- `A372938(A034856(n+2))` -/
def P7663310155352839923.Spec : Prop :=
  ∀ n, P7663310155352839923.a n = A372928 (n + 1)

end A372928

/-!
# A372929: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} gcd(x_1, x_2, x_3, n)^4.

The programs for A372929, the canonical program `A372929.P17628262349535249383` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372929 has offset 1).

The definition of A372929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372929.P6954057744500531096

`∑{d}[n+1, A000056(#)*A343498((n+1)/#)]`
-/

namespace A372929.P6954057744500531096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000056 d * A343498 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372929.P6954057744500531096

namespace A372929

/-- `∑{d}[n+1, A000056(#)*A343498((n+1)/#)]` -/
def P6954057744500531096.Spec : Prop :=
  ∀ n, P6954057744500531096.a n = A372929 (n + 1)

end A372929

/-! ## A372929.P17628262349535249383

`∑{d}[n+1, A068970(#)*A338165((n+1)/#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A372929

/-- `∑{d}[n+1, A068970(#)*A338165((n+1)/#)]` -/
def P17628262349535249383.Spec : Prop :=
  ∀ n, P17628262349535249383.a n = A372929 (n + 1)

theorem P17628262349535249383.correct : P17628262349535249383.Spec := by
  intro n
  simp only [A372929, Nat.add_sub_cancel]

end A372929

/-! ## A372929.P8444481485193223319

`∑{d}[n+1, A053191(#)*A372926((n+1)/#)]`
-/

namespace A372929.P8444481485193223319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053191 d * A372926 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372929.P8444481485193223319

namespace A372929

/-- `∑{d}[n+1, A053191(#)*A372926((n+1)/#)]` -/
def P8444481485193223319.Spec : Prop :=
  ∀ n, P8444481485193223319.a n = A372929 (n + 1)

end A372929

/-! ## A372929.P9566912486465050346

`∑{d}[n+1, A189393(#)*A372928((n+1)/#)]`
-/

namespace A372929.P9566912486465050346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A189393 d * A372928 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372929.P9566912486465050346

namespace A372929

/-- `∑{d}[n+1, A189393(#)*A372928((n+1)/#)]` -/
def P9566912486465050346.Spec : Prop :=
  ∀ n, P9566912486465050346.a n = A372929 (n + 1)

end A372929

/-! ## A372929.P10840402048387920494

`∑{d}[n+1, A338164(#)*A371492((n+1)/#)]`
-/

namespace A372929.P10840402048387920494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A338164 d * A371492 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372929.P10840402048387920494

namespace A372929

/-- `∑{d}[n+1, A338164(#)*A371492((n+1)/#)]` -/
def P10840402048387920494.Spec : Prop :=
  ∀ n, P10840402048387920494.a n = A372929 (n + 1)

end A372929

/-! ## A372929.P7618147813181506869

`∑{d}[n+1, A368743(#)*A379833((n+1)/#)]`
-/

namespace A372929.P7618147813181506869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A368743 d * A379833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372929.P7618147813181506869

namespace A372929

/-- `∑{d}[n+1, A368743(#)*A379833((n+1)/#)]` -/
def P7618147813181506869.Spec : Prop :=
  ∀ n, P7618147813181506869.a n = A372929 (n + 1)

end A372929

/-!
# A372930: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} gcd(x_1, x_2, x_3, n)^5.

The programs for A372930, the canonical program `A372930.P5262437990481401182` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372930 has offset 1).

The definition of A372930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372930.P12206197520052415616

`∑{d}[n+1, A000056(#)*A343499((n+1)/#)]`
-/

namespace A372930.P12206197520052415616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000056 d * A343499 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372930.P12206197520052415616

namespace A372930

/-- `∑{d}[n+1, A000056(#)*A343499((n+1)/#)]` -/
def P12206197520052415616.Spec : Prop :=
  ∀ n, P12206197520052415616.a n = A372930 (n + 1)

end A372930

/-! ## A372930.P5262437990481401182

`∑{d}[n+1, A053191(#)*A372927((n+1)/#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A372930

/-- `∑{d}[n+1, A053191(#)*A372927((n+1)/#)]` -/
def P5262437990481401182.Spec : Prop :=
  ∀ n, P5262437990481401182.a n = A372930 (n + 1)

theorem P5262437990481401182.correct : P5262437990481401182.Spec := by
  intro n
  simp only [A372930, Nat.add_sub_cancel]

end A372930

/-! ## A372930.P15126007487358012075

`∑{d}[n+1, A115224(#)*A368743((n+1)/#)]`
-/

namespace A372930.P15126007487358012075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A115224 d * A368743 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372930.P15126007487358012075

namespace A372930

/-- `∑{d}[n+1, A115224(#)*A368743((n+1)/#)]` -/
def P15126007487358012075.Spec : Prop :=
  ∀ n, P15126007487358012075.a n = A372930 (n + 1)

end A372930

/-! ## A372930.P8765333549352909391

`∑{d}[n+1, A238533(#)*A372929((n+1)/#)]`
-/

namespace A372930.P8765333549352909391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A238533 d * A372929 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372930.P8765333549352909391

namespace A372930

/-- `∑{d}[n+1, A238533(#)*A372929((n+1)/#)]` -/
def P8765333549352909391.Spec : Prop :=
  ∀ n, P8765333549352909391.a n = A372930 (n + 1)

end A372930

/-! ## A372930.P9352578190531707433

`∑{d}[n+1, A338165(#)*A372950((n+1)/#)]`
-/

namespace A372930.P9352578190531707433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A338165 d * A372950 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372930.P9352578190531707433

namespace A372930

/-- `∑{d}[n+1, A338165(#)*A372950((n+1)/#)]` -/
def P9352578190531707433.Spec : Prop :=
  ∀ n, P9352578190531707433.a n = A372930 (n + 1)

end A372930

/-!
# A372931: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4 <= n} gcd(x_1, x_2, x_3, x_4, n)^4.

The programs for A372931, the canonical program `A372931.P12025526412560099198` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372931 has offset 1).

The definition of A372931 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372931.P3823492059483821071

`∑{d}[n+1, A008683(#)*A386013((n+1)/#)]`
-/

namespace A372931.P3823492059483821071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A386013 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372931.P3823492059483821071

namespace A372931

/-- `∑{d}[n+1, A008683(#)*A386013((n+1)/#)]` -/
def P3823492059483821071.Spec : Prop :=
  ∀ n, P3823492059483821071.a n = A372931 (n + 1)

end A372931

/-! ## A372931.P12025526412560099198

`∑{d}[n+1, A189393(#)*A372929((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A372931

/-- `∑{d}[n+1, A189393(#)*A372929((n+1)/#)]` -/
def P12025526412560099198.Spec : Prop :=
  ∀ n, P12025526412560099198.a n = A372931 (n + 1)

theorem P12025526412560099198.correct : P12025526412560099198.Spec := by
  intro n
  simp only [A372931, Nat.add_sub_cancel]

end A372931

/-! ## A372931.P14177264576090378700

`∑{d}[n+1, A372926(#)*A379833((n+1)/#)]`
-/

namespace A372931.P14177264576090378700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A372926 d * A379833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372931.P14177264576090378700

namespace A372931

/-- `∑{d}[n+1, A372926(#)*A379833((n+1)/#)]` -/
def P14177264576090378700.Spec : Prop :=
  ∀ n, P14177264576090378700.a n = A372931 (n + 1)

end A372931

/-! ## A372931.P17540212597165154636

`A372938(∑[n+4]+3)`
-/

namespace A372931.P17540212597165154636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372938 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A372931.P17540212597165154636

namespace A372931

/-- `A372938(∑[n+4]+3)` -/
def P17540212597165154636.Spec : Prop :=
  ∀ n, P17540212597165154636.a n = A372931 (n + 1)

end A372931

/-!
# A372932: a(n) is the numerator of the expected number of restarts in the procedure described in A372422 if repeated until a single person has been selected.

The programs for A372932, there is no canonical definition to state claims against.
-/

/-! ## A372932.P3032135928382662351

`A329629(A057507(n+3))-(n+2)`
-/

namespace A372932.P3032135928382662351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329629 (A057507 (n + 3)).toNat - (n + 2 : ℤ)

end

end A372932.P3032135928382662351

/-!
# A372933: Records in A071961, divided by 2.

The programs for A372933, there is no canonical definition to state claims against.
-/

/-! ## A372933.P9031681578948226019

`record[n*A046073(abs(1-n)+1)]`
-/

namespace A372933.P9031681578948226019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A046073 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A372933.P9031681578948226019

/-! ## A372933.P7511985206521877969

`record[floor(A000010(A028982(n+1))/2)]`
-/

namespace A372933.P7511985206521877969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (A028982 (n + 1)).toNat : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A372933.P7511985206521877969

/-! ## A372933.P4409178370003030047

`record[A071961(n)/2]`
-/

namespace A372933.P4409178370003030047
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071961 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A372933.P4409178370003030047

/-! ## A372933.P14908984010538550815

`A026741(record[A071961(n)])`
-/

namespace A372933.P14908984010538550815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A372933.P14908984010538550815

/-! ## A372933.P2159922451616531220

`A071961(A372934(n+1))/2`
-/

namespace A372933.P2159922451616531220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071961 (A372934 (n + 1)).toNat : ℚ) / 2

end

end A372933.P2159922451616531220

/-!
# A372937: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4 <= n} gcd(x_1, x_2, x_3, x_4, n)^5.

The programs for A372937, the canonical program `A372937.P5162355273622128373` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372937 has offset 1).

The definition of A372937 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372937.P18253500600744580005

`∑{d}[n+1, A115224(#)*A372926((n+1)/#)]`
-/

namespace A372937.P18253500600744580005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A115224 d * A372926 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372937.P18253500600744580005

namespace A372937

/-- `∑{d}[n+1, A115224(#)*A372926((n+1)/#)]` -/
def P18253500600744580005.Spec : Prop :=
  ∀ n, P18253500600744580005.a n = A372937 (n + 1)

end A372937

/-! ## A372937.P5162355273622128373

`∑{d}[n+1, A189393(#)*A372930((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A372937

/-- `∑{d}[n+1, A189393(#)*A372930((n+1)/#)]` -/
def P5162355273622128373.Spec : Prop :=
  ∀ n, P5162355273622128373.a n = A372937 (n + 1)

theorem P5162355273622128373.correct : P5162355273622128373.Spec := by
  intro n
  simp only [A372937, Nat.add_sub_cancel]

end A372937

/-! ## A372937.P5888393508777669652

`∑{d}[n+1, A238533(#)*A372931((n+1)/#)]`
-/

namespace A372937.P5888393508777669652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A238533 d * A372931 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372937.P5888393508777669652

namespace A372937

/-- `∑{d}[n+1, A238533(#)*A372931((n+1)/#)]` -/
def P5888393508777669652.Spec : Prop :=
  ∀ n, P5888393508777669652.a n = A372937 (n + 1)

end A372937

/-! ## A372937.P15942203340937989243

`∑{d}[n+1, A372927(#)*A379833((n+1)/#)]`
-/

namespace A372937.P15942203340937989243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A372927 d * A379833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372937.P15942203340937989243

namespace A372937

/-- `∑{d}[n+1, A372927(#)*A379833((n+1)/#)]` -/
def P15942203340937989243.Spec : Prop :=
  ∀ n, P15942203340937989243.a n = A372937 (n + 1)

end A372937

/-!
# A372939: a(n) = Sum_{1 <= x_1, x_2, ... , x_n <= n} gcd(x_1, x_2, ... , x_n, n)^n.

The programs for A372939, there is no canonical definition to state claims against.
-/

/-! ## A372939.P6710506175411114095

`A372938((n+1)²+n²)`
-/

namespace A372939.P6710506175411114095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372938 ((n + 1) ^ 2 + n ^ 2)

end

end A372939.P6710506175411114095

/-!
# A372940: Numbers k that divide the k-th Franel number.

The programs for A372940, there is no canonical definition to state claims against.
-/

/-! ## A372940.P1459542177745502165

`A071203(8*A005649(n))`
-/

namespace A372940.P1459542177745502165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071203 (8 * A005649 n).toNat

end

end A372940.P1459542177745502165

/-!
# A372941: Numbers k that divide the k-th Domb number.

The programs for A372941, there is no canonical definition to state claims against.
-/

/-! ## A372941.P5100944554669753297

`2*A239062(a(n-1)²)` with `a(0)=1`
-/

namespace A372941.P5100944554669753297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A239062 (a (n - 1) ^ 2).toNat

end

end A372941.P5100944554669753297

/-! ## A372941.P17933868650577664790

`A365541(and(-3, 2^n)+3%comp[∑[n]]+n)`
-/

namespace A372941.P17933868650577664790
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365541 (Int.land (-3) (2 ^ n : ℤ) + ((3 % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n : ℕ) : ℤ)).toNat

end

end A372941.P17933868650577664790

/-!
# A372943: Numbers k that divide the k-th Apéry number (A005258).

The programs for A372943, there is no canonical definition to state claims against.
-/

/-! ## A372943.P2644869035980026413

`record[A246674(A290689(n+1))]`
-/

namespace A372943.P2644869035980026413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246674 (A290689 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A372943.P2644869035980026413

/-!
# A372944: Numbers k that divide the k-th tangent (or "zag") number.

The programs for A372944, there is no canonical definition to state claims against.
-/

/-! ## A372944.P9388246417486056762

`∩[A394543(n+1), A048715(n)]`
-/

namespace A372944.P9388246417486056762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048715 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372944.P9388246417486056762

/-! ## A372944.P9887004733467779199

`record[gcd(A169629(n+1), A185081(n))]`
-/

namespace A372944.P9887004733467779199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A169629 (n + 1)) (A185081 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A372944.P9887004733467779199

/-! ## A372944.P16211494741692285331

`∩[A045577(n+1), A112886(n+1)]`
-/

namespace A372944.P16211494741692285331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372944.P16211494741692285331

/-! ## A372944.P9886432496826214618

`∩[A045577(n+1), A229303(n+1)]`
-/

namespace A372944.P9886432496826214618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372944.P9886432496826214618

/-! ## A372944.P3334154075050431988

`∩[A045577(n+1), A229829(n+1)]`
-/

namespace A372944.P3334154075050431988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372944.P3334154075050431988

/-!
# A372946: Numbers k that divide the k-th NSW number.

The programs for A372946, there is no canonical definition to state claims against.
-/

/-! ## A372946.P4192966937615636792

`A255281(A008545(n)-A087960(n))`
-/

namespace A372946.P4192966937615636792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255281 (A008545 n - A087960 n).toNat

end

end A372946.P4192966937615636792

/-!
# A372947: Decimal expansion of Sum_{k >= 0} (10^5*A196563(k) - A196564(k)/10^5)/10^k.

The programs for A372947, there is no canonical definition to state claims against.
-/

/-! ## A372947.P7067866901028738073

`and(A094270(n+1), A384582(A131575(n)))`
-/

namespace A372947.P7067866901028738073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094270 (n + 1)) (A384582 (A131575 n).toNat)

end

end A372947.P7067866901028738073

/-!
# A372949: a(n) = 2*f(2*n)/(f(n)*f(n+2)) where f = A003266.

The programs for A372949, there is no canonical definition to state claims against.
-/

/-! ## A372949.P2376289447382661644

`A000720(A322782(n)+A308864(n))`
-/

namespace A372949.P2376289447382661644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A322782 n + A308864 n).toNat

end

end A372949.P2376289447382661644

/-!
# A372950: a(n) = Sum_{1 <= x_1, x_2 <= n} ( n/gcd(x_1, x_2, n) )^3.

The programs for A372950, the canonical program `A372950.P9193589771118210262` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372950 has offset 1).

The definition of A372950 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372950.P11044347172525881992

`∑{d}[n+1, #*A379833(#)]`
-/

namespace A372950.P11044347172525881992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A379833 d

end

end A372950.P11044347172525881992

namespace A372950

/-- `∑{d}[n+1, #*A379833(#)]` -/
def P11044347172525881992.Spec : Prop :=
  ∀ n, P11044347172525881992.a n = A372950 (n + 1)

end A372950

/-! ## A372950.P9193589771118210262

`∑{d}[n+1, A068970(#)*A238533((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A372950

/-- `∑{d}[n+1, A068970(#)*A238533((n+1)/#)]` -/
def P9193589771118210262.Spec : Prop :=
  ∀ n, P9193589771118210262.a n = A372950 (n + 1)

theorem P9193589771118210262.correct : P9193589771118210262.Spec := by
  intro n
  simp only [A372950, Nat.add_sub_cancel]

end A372950

/-! ## A372950.P1304261474064561924

`∑{d}[n+1, A001160(#)*A334659((n+1)/#)]`
-/

namespace A372950.P1304261474064561924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001160 d * A334659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372950.P1304261474064561924

namespace A372950

/-- `∑{d}[n+1, A001160(#)*A334659((n+1)/#)]` -/
def P1304261474064561924.Spec : Prop :=
  ∀ n, P1304261474064561924.a n = A372950 (n + 1)

end A372950

/-! ## A372950.P2756397277325930424

`∑{d}[n+1, A189393(#)*A372965((n+1)/#)]`
-/

namespace A372950.P2756397277325930424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A189393 d * A372965 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372950.P2756397277325930424

namespace A372950

/-- `∑{d}[n+1, A189393(#)*A372965((n+1)/#)]` -/
def P2756397277325930424.Spec : Prop :=
  ∀ n, P2756397277325930424.a n = A372950 (n + 1)

end A372950

/-!
# A372952: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} n/gcd(x_1, x_2, x_3, n).

The programs for A372952, the canonical program `A372952.P4451000173128610054` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372952 has offset 1).

The definition of A372952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372952.P4451000173128610054

`∑{d}[n+1, #*A059376(#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A372952

/-- `∑{d}[n+1, #*A059376(#)]` -/
def P4451000173128610054.Spec : Prop :=
  ∀ n, P4451000173128610054.a n = A372952 (n + 1)

theorem P4451000173128610054.correct : P4451000173128610054.Spec := by
  intro n
  simp only [A372952, Nat.add_sub_cancel]

end A372952

/-! ## A372952.P10907959059219675842

`∑{d}[n+1, A001159(#)*A055615((n+1)/#)]`
-/

namespace A372952.P10907959059219675842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001159 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372952.P10907959059219675842

namespace A372952

/-- `∑{d}[n+1, A001159(#)*A055615((n+1)/#)]` -/
def P10907959059219675842.Spec : Prop :=
  ∀ n, P10907959059219675842.a n = A372952 (n + 1)

end A372952

/-! ## A372952.P18051981448162373117

`∑{d}[n+1, A000056(#)*A068970((n+1)/#)]`
-/

namespace A372952.P18051981448162373117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000056 d * A068970 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372952.P18051981448162373117

namespace A372952

/-- `∑{d}[n+1, A000056(#)*A068970((n+1)/#)]` -/
def P18051981448162373117.Spec : Prop :=
  ∀ n, P18051981448162373117.a n = A372952 (n + 1)

end A372952

/-! ## A372952.P16322823945164892319

`∑{d}[n+1, A002618(#)*A084218((n+1)/#)]`
-/

namespace A372952.P16322823945164892319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A084218 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372952.P16322823945164892319

namespace A372952

/-- `∑{d}[n+1, A002618(#)*A084218((n+1)/#)]` -/
def P16322823945164892319.Spec : Prop :=
  ∀ n, P16322823945164892319.a n = A372952 (n + 1)

end A372952

/-! ## A372952.P5525959381433299782

`∑{d}[n+1, A059377(#)*A130054((n+1)/#)]`
-/

namespace A372952.P5525959381433299782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059377 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372952.P5525959381433299782

namespace A372952

/-- `∑{d}[n+1, A059377(#)*A130054((n+1)/#)]` -/
def P5525959381433299782.Spec : Prop :=
  ∀ n, P5525959381433299782.a n = A372952 (n + 1)

end A372952

/-! ## A372952.P3427265076569954430

`∑{d}[n+1, A027848(#)*A328722((n+1)/#)]`
-/

namespace A372952.P3427265076569954430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A027848 d * A328722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372952.P3427265076569954430

namespace A372952

/-- `∑{d}[n+1, A027848(#)*A328722((n+1)/#)]` -/
def P3427265076569954430.Spec : Prop :=
  ∀ n, P3427265076569954430.a n = A372952 (n + 1)

end A372952

/-! ## A372952.P13512047326915756047

`∑{d}[n+1, A057660(#)*A379833((n+1)/#)]`
-/

namespace A372952.P13512047326915756047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057660 d * A379833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372952.P13512047326915756047

namespace A372952

/-- `∑{d}[n+1, A057660(#)*A379833((n+1)/#)]` -/
def P13512047326915756047.Spec : Prop :=
  ∀ n, P13512047326915756047.a n = A372952 (n + 1)

end A372952

/-! ## A372952.P1980927341733190529

`∑{d}[n+1, A189393(#)*A350156((n+1)/#)]`
-/

namespace A372952.P1980927341733190529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A189393 d * A350156 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372952.P1980927341733190529

namespace A372952

/-- `∑{d}[n+1, A189393(#)*A350156((n+1)/#)]` -/
def P1980927341733190529.Spec : Prop :=
  ∀ n, P1980927341733190529.a n = A372952 (n + 1)

end A372952

/-! ## A372952.P6356113927428823585

`∑{d}[n+1, A284900(#)*A349343((n+1)/#)]`
-/

namespace A372952.P6356113927428823585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A284900 d * A349343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372952.P6356113927428823585

namespace A372952

/-- `∑{d}[n+1, A284900(#)*A349343((n+1)/#)]` -/
def P6356113927428823585.Spec : Prop :=
  ∀ n, P6356113927428823585.a n = A372952 (n + 1)

end A372952

/-! ## A372952.P1496619493089703702

`∑{d}[n+1, A328641(#)*A343498((n+1)/#)]`
-/

namespace A372952.P1496619493089703702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328641 d * A343498 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372952.P1496619493089703702

namespace A372952

/-- `∑{d}[n+1, A328641(#)*A343498((n+1)/#)]` -/
def P1496619493089703702.Spec : Prop :=
  ∀ n, P1496619493089703702.a n = A372952 (n + 1)

end A372952

/-!
# A372953: Orders of finite fields where -1 is a square.

The programs for A372953, there is no canonical definition to state claims against.
-/

/-! ## A372953.P11097316091222392210

`record[A344005(n+1)^(floor((n-1)/2)%2)]+1`
-/

namespace A372953.P11097316091222392210
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344005 (n + 1) : ℚ) ^ (Int.tmod ⌊((n : ℤ) - 1 : ℚ) / 2⌋ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A372953.P11097316091222392210

/-! ## A372953.P5426127718642684746

`eq[A066882(n), A112347(n)]`
-/

namespace A372953.P5426127718642684746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112347 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372953.P5426127718642684746

/-! ## A372953.P5163778479233001843

`eq[A112347(n), A284463(n)]`
-/

namespace A372953.P5163778479233001843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112347 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372953.P5163778479233001843

/-! ## A372953.P6229532469825119798

`eq[A285110(n), A327641(n)]`
-/

namespace A372953.P6229532469825119798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285110 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372953.P6229532469825119798

/-! ## A372953.P3887891839018572462

`record[A371015(A246655(n+1))]`
-/

namespace A372953.P3887891839018572462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371015 (A246655 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A372953.P3887891839018572462

/-! ## A372953.P1161112197446238187

`record[A119972(A000961(n+2))]`
-/

namespace A372953.P1161112197446238187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119972 (A000961 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A372953.P1161112197446238187

/-! ## A372953.P5367837657493488206

`record[A034699(A245226(n+2))]`
-/

namespace A372953.P5367837657493488206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A245226 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A372953.P5367837657493488206

/-! ## A372953.P6354325528959398785

`filter[A004773(n+1), A069513(#)]`
-/

namespace A372953.P6354325528959398785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A372953.P6354325528959398785

/-! ## A372953.P10623742140841819761

`filter[A091072(n+1), A069513(#)]`
-/

namespace A372953.P10623742140841819761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A372953.P10623742140841819761

/-! ## A372953.P17180754631793121859

`filter[A104401(n+1), A069513(#)]`
-/

namespace A372953.P17180754631793121859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A372953.P17180754631793121859

/-!
# A372956: G.f. A(x) satisfies A(x)^5 = A(x^5) / (1 - 5*x)^5 with A(0)=1.

The programs for A372956, there is no canonical definition to state claims against.
-/

/-! ## A372956.P12957654598035621593

`A083590(n)%A181770(n+4)`
-/

namespace A372956.P12957654598035621593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083590 n) (A181770 (n + 4))

end

end A372956.P12957654598035621593

/-! ## A372956.P1984814608689658366

`A083590(n)+A000007(A000108(n))`
-/

namespace A372956.P1984814608689658366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083590 n + A000007 (A000108 n).toNat

end

end A372956.P1984814608689658366

/-! ## A372956.P1094741229672551690

`A083590(n)+A000007(A133494(n))`
-/

namespace A372956.P1094741229672551690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083590 n + A000007 (A133494 n).toNat

end

end A372956.P1094741229672551690

/-! ## A372956.P15305468001310381891

`A156659(A007716(n))+A083590(n)`
-/

namespace A372956.P15305468001310381891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156659 (A007716 n).toNat + A083590 n

end

end A372956.P15305468001310381891

/-! ## A372956.P1693489648490928515

`A212619(A238014(n))+A083590(n)`
-/

namespace A372956.P1693489648490928515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212619 (A238014 n).toNat + A083590 n

end

end A372956.P1693489648490928515

/-!
# A372957: G.f. A(x) satisfies A(x)^2 = A(x^2) / (1 - 2*x)^2 with A(0)=1.

The programs for A372957, there is no canonical definition to state claims against.
-/

/-! ## A372957.P12472629345694612435

`A244414(A094537(n+2)-A337605(n))`
-/

namespace A372957.P12472629345694612435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244414 (A094537 (n + 2) - A337605 n).toNat

end

end A372957.P12472629345694612435

/-! ## A372957.P9171059281082522935

`A004525(A094536(n+2))`
-/

namespace A372957.P9171059281082522935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A094536 (n + 2)).toNat

end

end A372957.P9171059281082522935

/-! ## A372957.P16074874312998513574

`filter[A094537(n), A228039(#)]`
-/

namespace A372957.P16074874312998513574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228039 (f1 j).toNat = 1) n)

end

end A372957.P16074874312998513574

/-! ## A372957.P7596756439465690385

`A004526(A094536(n+2)+1)`
-/

namespace A372957.P7596756439465690385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A094536 (n + 2) + 1).toNat

end

end A372957.P7596756439465690385

/-! ## A372957.P348100545245639130

`filter[A094537(n+2), A071374(#)]`
-/

namespace A372957.P348100545245639130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094537 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071374 (f1 j).toNat = 1) n)

end

end A372957.P348100545245639130

/-!
# A372960: Concatenation of the exponents in the prime factorization of 2*n-1.

The programs for A372960, there is no canonical definition to state claims against.
-/

/-! ## A372960.P12085288956738774090

`A037916(2*n+1)`
-/

namespace A372960.P12085288956738774090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037916 (2 * n + 1)

end

end A372960.P12085288956738774090

/-! ## A372960.P10586795199382825829

`lcm(1-and(2, n), A037916(Δ[n²]))`
-/

namespace A372960.P10586795199382825829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A037916 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A372960.P10586795199382825829

/-! ## A372960.P6834826018463744597

`lcm(A037916(Δ[n²]), A057077(n))`
-/

namespace A372960.P6834826018463744597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A037916 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (A057077 n)

end

end A372960.P6834826018463744597

/-! ## A372960.P4041662154337830073

`A037916(A005408(n))*A054977(n)`
-/

namespace A372960.P4041662154337830073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037916 (A005408 n).toNat * A054977 n

end

end A372960.P4041662154337830073

/-! ## A372960.P4238532309876193804

`lcm(A033999(n), A037916(A005408(n)))`
-/

namespace A372960.P4238532309876193804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A037916 (A005408 n).toNat)

end

end A372960.P4238532309876193804

/-! ## A372960.P324425843153486897

`A037916(Δ[n²])%A032654(n+1)`
-/

namespace A372960.P324425843153486897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037916 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (A032654 (n + 1))

end

end A372960.P324425843153486897

/-!
# A372961: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4 <= n} n/gcd(x_1, x_2, x_3, x_4, n).

The programs for A372961, the canonical program `A372961.P11821419121523241170` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372961 has offset 1).

The definition of A372961 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372961.P11821419121523241170

`∑{d}[n+1, #*A059377(#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A372961

/-- `∑{d}[n+1, #*A059377(#)]` -/
def P11821419121523241170.Spec : Prop :=
  ∀ n, P11821419121523241170.a n = A372961 (n + 1)

theorem P11821419121523241170.correct : P11821419121523241170.Spec := by
  intro n
  simp only [A372961, Nat.add_sub_cancel]

end A372961

/-! ## A372961.P9453112114806062243

`∑{d}[n+1, A001160(#)*A055615((n+1)/#)]`
-/

namespace A372961.P9453112114806062243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001160 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372961.P9453112114806062243

namespace A372961

/-- `∑{d}[n+1, A001160(#)*A055615((n+1)/#)]` -/
def P9453112114806062243.Spec : Prop :=
  ∀ n, P9453112114806062243.a n = A372961 (n + 1)

end A372961

/-! ## A372961.P2787369734713743704

`∑{d}[n+1, A057660(#)*A115224((n+1)/#)]`
-/

namespace A372961.P2787369734713743704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057660 d * A115224 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372961.P2787369734713743704

namespace A372961

/-- `∑{d}[n+1, A057660(#)*A115224((n+1)/#)]` -/
def P2787369734713743704.Spec : Prop :=
  ∀ n, P2787369734713743704.a n = A372961 (n + 1)

end A372961

/-! ## A372961.P1660944945806328155

`∑{d}[n+1, A059378(#)*A130054((n+1)/#)]`
-/

namespace A372961.P1660944945806328155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059378 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372961.P1660944945806328155

namespace A372961

/-- `∑{d}[n+1, A059378(#)*A130054((n+1)/#)]` -/
def P1660944945806328155.Spec : Prop :=
  ∀ n, P1660944945806328155.a n = A372961 (n + 1)

end A372961

/-! ## A372961.P14357779750048482073

`∑{d}[n+1, A000056(#)*A372950((n+1)/#)]`
-/

namespace A372961.P14357779750048482073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000056 d * A372950 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372961.P14357779750048482073

namespace A372961

/-- `∑{d}[n+1, A000056(#)*A372950((n+1)/#)]` -/
def P14357779750048482073.Spec : Prop :=
  ∀ n, P14357779750048482073.a n = A372961 (n + 1)

end A372961

/-! ## A372961.P2539925057213984798

`∑{d}[n+1, A002618(#)*A372962((n+1)/#)]`
-/

namespace A372961.P2539925057213984798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A372962 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372961.P2539925057213984798

namespace A372961

/-- `∑{d}[n+1, A002618(#)*A372962((n+1)/#)]` -/
def P2539925057213984798.Spec : Prop :=
  ∀ n, P2539925057213984798.a n = A372961 (n + 1)

end A372961

/-! ## A372961.P10471063311437913134

`∑{d}[n+1, A096960(#)*A349341((n+1)/#)]`
-/

namespace A372961.P10471063311437913134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A096960 d * A349341 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372961.P10471063311437913134

namespace A372961

/-- `∑{d}[n+1, A096960(#)*A349341((n+1)/#)]` -/
def P10471063311437913134.Spec : Prop :=
  ∀ n, P10471063311437913134.a n = A372961 (n + 1)

end A372961

/-! ## A372961.P16874477876307374668

`∑{d}[n+1, A238533(#)*A372952((n+1)/#)]`
-/

namespace A372961.P16874477876307374668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A238533 d * A372952 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372961.P16874477876307374668

namespace A372961

/-- `∑{d}[n+1, A238533(#)*A372952((n+1)/#)]` -/
def P16874477876307374668.Spec : Prop :=
  ∀ n, P16874477876307374668.a n = A372961 (n + 1)

end A372961

/-! ## A372961.P17258744068776692980

`∑{d}[n+1, A284926(#)*A349343((n+1)/#)]`
-/

namespace A372961.P17258744068776692980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A284926 d * A349343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372961.P17258744068776692980

namespace A372961

/-- `∑{d}[n+1, A284926(#)*A349343((n+1)/#)]` -/
def P17258744068776692980.Spec : Prop :=
  ∀ n, P17258744068776692980.a n = A372961 (n + 1)

end A372961

/-! ## A372961.P10841718724620919948

`∑{d}[n+1, A328641(#)*A343499((n+1)/#)]`
-/

namespace A372961.P10841718724620919948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328641 d * A343499 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372961.P10841718724620919948

namespace A372961

/-- `∑{d}[n+1, A328641(#)*A343499((n+1)/#)]` -/
def P10841718724620919948.Spec : Prop :=
  ∀ n, P10841718724620919948.a n = A372961 (n + 1)

end A372961

/-!
# A372962: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} ( n/gcd(x_1, x_2, x_3, n) )^2.

The programs for A372962, the canonical program `A372962.P14331124591361525302` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372962 has offset 1).

The definition of A372962 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372962.P1004320549059299149

`∑{d}[n+1, A115224(#)]`
-/

namespace A372962.P1004320549059299149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A115224 d

end

end A372962.P1004320549059299149

namespace A372962

/-- `∑{d}[n+1, A115224(#)]` -/
def P1004320549059299149.Spec : Prop :=
  ∀ n, P1004320549059299149.a n = A372962 (n + 1)

end A372962

/-! ## A372962.P14331124591361525302

`∑{d}[n+1, A084218(#)*A238533((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A372962

/-- `∑{d}[n+1, A084218(#)*A238533((n+1)/#)]` -/
def P14331124591361525302.Spec : Prop :=
  ∀ n, P14331124591361525302.a n = A372962 (n + 1)

theorem P14331124591361525302.correct : P14331124591361525302.Spec := by
  intro n
  simp only [A372962, Nat.add_sub_cancel]

end A372962

/-! ## A372962.P4410572611897150191

`∑{d}[n+1, A001160(#)*A334657((n+1)/#)]`
-/

namespace A372962.P4410572611897150191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001160 d * A334657 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372962.P4410572611897150191

namespace A372962

/-- `∑{d}[n+1, A001160(#)*A334657((n+1)/#)]` -/
def P4410572611897150191.Spec : Prop :=
  ∀ n, P4410572611897150191.a n = A372962 (n + 1)

end A372962

/-! ## A372962.P771112444088282580

`∑{d}[n+1, A053191(#)*A372950((n+1)/#)]`
-/

namespace A372962.P771112444088282580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053191 d * A372950 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372962.P771112444088282580

namespace A372962

/-- `∑{d}[n+1, A053191(#)*A372950((n+1)/#)]` -/
def P771112444088282580.Spec : Prop :=
  ∀ n, P771112444088282580.a n = A372962 (n + 1)

end A372962

/-! ## A372962.P3274284840335994617

`∑{d}[n+1, A372965(#)*A379833((n+1)/#)]`
-/

namespace A372962.P3274284840335994617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A372965 d * A379833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372962.P3274284840335994617

namespace A372962

/-- `∑{d}[n+1, A372965(#)*A379833((n+1)/#)]` -/
def P3274284840335994617.Spec : Prop :=
  ∀ n, P3274284840335994617.a n = A372962 (n + 1)

end A372962

/-!
# A372963: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4 <= n} ( n/gcd(x_1, x_2, x_3, x_4, n) )^2.

The programs for A372963, the canonical program `A372963.P12207039363107687182` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372963 has offset 1).

The definition of A372963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372963.P4732278654251124351

`∑{d}[n+1, A053191(#)*A084220((n+1)/#)]`
-/

namespace A372963.P4732278654251124351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053191 d * A084220 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372963.P4732278654251124351

namespace A372963

/-- `∑{d}[n+1, A053191(#)*A084220((n+1)/#)]` -/
def P4732278654251124351.Spec : Prop :=
  ∀ n, P4732278654251124351.a n = A372963 (n + 1)

end A372963

/-! ## A372963.P12207039363107687182

`∑{d}[n+1, A013954(#)*A334657((n+1)/#)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A372963

/-- `∑{d}[n+1, A013954(#)*A334657((n+1)/#)]` -/
def P12207039363107687182.Spec : Prop :=
  ∀ n, P12207039363107687182.a n = A372963 (n + 1)

theorem P12207039363107687182.correct : P12207039363107687182.Spec := by
  intro n
  simp only [A372963, Nat.add_sub_cancel]

end A372963

/-! ## A372963.P17009889465868199950

`∑{d}[n+1, A306411(#)*A372962((n+1)/#)]`
-/

namespace A372963.P17009889465868199950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A306411 d * A372962 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372963.P17009889465868199950

namespace A372963

/-- `∑{d}[n+1, A306411(#)*A372962((n+1)/#)]` -/
def P17009889465868199950.Spec : Prop :=
  ∀ n, P17009889465868199950.a n = A372963 (n + 1)

end A372963

/-!
# A372964: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4 <= n} ( n/gcd(x_1, x_2, x_3, x_4, n) )^3.

The programs for A372964, the canonical program `A372964.P15124062222904903698` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372964 has offset 1).

The definition of A372964 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372964.P9360121535928983011

`∑{d}[n+1, A084220(#)*A239442((n+1)/#)]`
-/

namespace A372964.P9360121535928983011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A084220 d * A239442 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372964.P9360121535928983011

namespace A372964

/-- `∑{d}[n+1, A084220(#)*A239442((n+1)/#)]` -/
def P9360121535928983011.Spec : Prop :=
  ∀ n, P9360121535928983011.a n = A372964 (n + 1)

end A372964

/-! ## A372964.P15124062222904903698

`∑{d}[n+1, A013955(#)*A334659((n+1)/#)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A372964

/-- `∑{d}[n+1, A013955(#)*A334659((n+1)/#)]` -/
def P15124062222904903698.Spec : Prop :=
  ∀ n, P15124062222904903698.a n = A372964 (n + 1)

theorem P15124062222904903698.correct : P15124062222904903698.Spec := by
  intro n
  simp only [A372964, Nat.add_sub_cancel]

end A372964

/-! ## A372964.P1804837941348126082

`A306936((n+1)²)/2`
-/

namespace A372964.P1804837941348126082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306936 ((n + 1) ^ 2) : ℚ) / 2

end

end A372964.P1804837941348126082

namespace A372964

/-- `A306936((n+1)²)/2` -/
def P1804837941348126082.Spec : Prop :=
  ∀ n, P1804837941348126082.a n = (A372964 (n + 1) : ℚ)

end A372964

/-!
# A372965: a(n) = Sum_{k = 1..n} ( n/gcd(k, n) )^4.

The programs for A372965, the canonical program `A372965.P15064860381763423356` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372965 has offset 1).

The definition of A372965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372965.P15064860381763423356

`∑{d}[n+1, A238533(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A372965

/-- `∑{d}[n+1, A238533(#)]` -/
def P15064860381763423356.Spec : Prop :=
  ∀ n, P15064860381763423356.a n = A372965 (n + 1)

theorem P15064860381763423356.correct : P15064860381763423356.Spec := by
  intro n
  simp only [A372965, Nat.add_sub_cancel]

end A372965

/-! ## A372965.P6982403499640077958

`∑{d}[n+1, #*A189393(#)]`
-/

namespace A372965.P6982403499640077958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A189393 d

end

end A372965.P6982403499640077958

namespace A372965

/-- `∑{d}[n+1, #*A189393(#)]` -/
def P6982403499640077958.Spec : Prop :=
  ∀ n, P6982403499640077958.a n = A372965 (n + 1)

end A372965

/-! ## A372965.P14255708326593959794

`∑{d}[n+1, A001160(#)*A334660((n+1)/#)]`
-/

namespace A372965.P14255708326593959794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001160 d * A334660 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372965.P14255708326593959794

namespace A372965

/-- `∑{d}[n+1, A001160(#)*A334660((n+1)/#)]` -/
def P14255708326593959794.Spec : Prop :=
  ∀ n, P14255708326593959794.a n = A372965 (n + 1)

end A372965

/-!
# A372966: a(n) = sigma_8(n^2)/sigma_4(n^2).

The programs for A372966, the canonical program `A372966.P8129046423810305656` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372966 has offset 1).

The definition of A372966 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372966.P8129046423810305656

`∑{d}[n+1, A013956(#)*A334660((n+1)/#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A372966

/-- `∑{d}[n+1, A013956(#)*A334660((n+1)/#)]` -/
def P8129046423810305656.Spec : Prop :=
  ∀ n, P8129046423810305656.a n = A372966 (n + 1)

theorem P8129046423810305656.correct : P8129046423810305656.Spec := by
  intro n
  simp only [A372966, Nat.add_sub_cancel]

end A372966

/-!
# A372967: Number of compositions of 2n into 2n nonnegative parts such that their xor-sum is zero.

The programs for A372967, there is no canonical definition to state claims against.
-/

/-! ## A372967.P6729829542629629470

`A088218(2*n)-A372871(2*n)`
-/

namespace A372967.P6729829542629629470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (2 * n) - A372871 (2 * n)

end

end A372967.P6729829542629629470

/-!
# A372968: Square array T(n,k), n >= 1, k >= 1, read by antidiagonals, where T(n,k) = Sum_{1 <= x_1, x_2, ..., x_k <= n} n/gcd(x_1, x_2, ..., x_k, n).

The programs for A372968, there is no canonical definition to state claims against.
-/

/-! ## A372968.P5851731271801442941

`A355413(A321163(n+1))`
-/

namespace A372968.P5851731271801442941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355413 (A321163 (n + 1)).toNat

end

end A372968.P5851731271801442941

/-! ## A372968.P15075499986681674374

`or(A023532(A001006(n)), A321163(n+1))`
-/

namespace A372968.P15075499986681674374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023532 (A001006 n).toNat) (A321163 (n + 1))

end

end A372968.P15075499986681674374

/-! ## A372968.P15780908168961369633

`or(A023532(A001333(n)), A321163(n+1))`
-/

namespace A372968.P15780908168961369633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023532 (A001333 n).toNat) (A321163 (n + 1))

end

end A372968.P15780908168961369633

/-! ## A372968.P14910994196199796033

`or(A037291(A000041(n)), A321163(n+1))`
-/

namespace A372968.P14910994196199796033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037291 (A000041 n).toNat) (A321163 (n + 1))

end

end A372968.P14910994196199796033

/-! ## A372968.P6967227545133374301

`or(A002260(A066991(n+1)), A056242(n+1))`
-/

namespace A372968.P6967227545133374301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002260 (A066991 (n + 1)).toNat) (A056242 (n + 1))

end

end A372968.P6967227545133374301

/-!
# A372969: a(n) = Sum_{1 <= x_1, x_2, ... , x_n <= n} n/gcd(x_1, x_2, ... , x_n, n).

The programs for A372969, there is no canonical definition to state claims against.
-/

/-! ## A372969.P9295813528520519556

`A372968((n+1)²+n²)`
-/

namespace A372969.P9295813528520519556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372968 ((n + 1) ^ 2 + n ^ 2)

end

end A372969.P9295813528520519556

/-!
# A372970: a(1)=1, then a(n) = floor(n/max(a(n-1),a(floor(n/2)))).

The programs for A372970, there is no canonical definition to state claims against.
-/

/-! ## A372970.P1203962636678579550

`xor(A045778(3*(n+1)), A102683(A000051(n)))`
-/

namespace A372970.P1203962636678579550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A045778 (3 * (n + 1))) (A102683 (A000051 n).toNat)

end

end A372970.P1203962636678579550

/-! ## A372970.P16716234378960663643

`A304486(A321700(n+2))`
-/

namespace A372970.P16716234378960663643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304486 (A321700 (n + 2)).toNat

end

end A372970.P16716234378960663643

/-! ## A372970.P2410099460216796253

`A001222(lcm(3, A282264(n+2)))`
-/

namespace A372970.P2410099460216796253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm 3 (A282264 (n + 2)))

end

end A372970.P2410099460216796253

/-! ## A372970.P14770050767983671865

`A185214(A243607(n+1))%A331400(n+1)`
-/

namespace A372970.P14770050767983671865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185214 (A243607 (n + 1)).toNat) (A331400 (n + 1))

end

end A372970.P14770050767983671865

/-! ## A372970.P5909744798590010401

`A069288(A355911(3*n+2)*A367226(n+3))`
-/

namespace A372970.P5909744798590010401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069288 (A355911 (3 * n + 2) * A367226 (n + 3)).toNat

end

end A372970.P5909744798590010401

/-!
# A372973: Triangle read by rows: the exponential almost-Riordan array ( 1/(1-x) | 1/(1-x), log(1/(1-x)) ).

The programs for A372973, there is no canonical definition to state claims against.
-/

/-! ## A372973.P4025454843464178786

`A132393(A066182(n+1)+A010054(n))`
-/

namespace A372973.P4025454843464178786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (A066182 (n + 1) + A010054 n).toNat

end

end A372973.P4025454843464178786

/-! ## A372973.P13980249414322154091

`abs(Δ[A358694(n)])`
-/

namespace A372973.P13980249414322154091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A372973.P13980249414322154091

/-!
# A372976: Number of minimum edge covers in the n-double cone graph.

The programs for A372976, the canonical program `A372976.P10248344891737826652` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372976 has offset 0).

The definition of A372976 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A372976.P10248344891737826652

`n*(2+2*(-1)^n+3*n)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A372976

/-- `n*(2+2*(-1)^n+3*n)` -/
def P10248344891737826652.Spec : Prop :=
  ∀ n, P10248344891737826652.a n = A372976 n

theorem P10248344891737826652.correct : P10248344891737826652.Spec := by
  intro n
  simp only [A372976]

end A372976

/-! ## A372976.P9155880354789336432

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=3, a(2)=20, a(3)=27, a(4)=64`
-/

namespace A372976.P9155880354789336432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 20, 27, 64] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A372976.P9155880354789336432

namespace A372976

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P9155880354789336432.Spec : Prop :=
  ∀ n, P9155880354789336432.a n = A372976 n

end A372976

/-! ## A372976.P1194909605458792775

`2*n*2*or(1, n)-n²`
-/

namespace A372976.P1194909605458792775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n * (2 * Nat.lor 1 n) : ℤ) - (n ^ 2 : ℤ)

end

end A372976.P1194909605458792775

namespace A372976

/-- `2*n*2*or(1, n)-n²` -/
def P1194909605458792775.Spec : Prop :=
  ∀ n, P1194909605458792775.a n = A372976 n

end A372976

/-! ## A372976.P506657912013235148

`A195817(n)+A049450(n)`
-/

namespace A372976.P506657912013235148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195817 n + A049450 n

end

end A372976.P506657912013235148

namespace A372976

/-- `A195817(n)+A049450(n)` -/
def P506657912013235148.Spec : Prop :=
  ∀ n, P506657912013235148.a n = A372976 n

end A372976

/-! ## A372976.P14980740308702240384

`A047238(n+1)*A109613(n)+n`
-/

namespace A372976.P14980740308702240384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047238 (n + 1) * A109613 n + (n : ℤ)

end

end A372976.P14980740308702240384

namespace A372976

/-- `A047238(n+1)*A109613(n)+n` -/
def P14980740308702240384.Spec : Prop :=
  ∀ n, P14980740308702240384.a n = A372976 n

end A372976

/-! ## A372976.P3007756831908393066

`A266074(A042948(n))+n²`
-/

namespace A372976.P3007756831908393066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266074 (A042948 n).toNat + (n ^ 2 : ℤ)

end

end A372976.P3007756831908393066

namespace A372976

/-- `A266074(A042948(n))+n²` -/
def P3007756831908393066.Spec : Prop :=
  ∀ n, P3007756831908393066.a n = A372976 n

end A372976

/-! ## A372976.P1961780888895066293

`A067060(2*(n+1))²-A137224(2*n+1)`
-/

namespace A372976.P1961780888895066293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067060 (2 * (n + 1)) ^ 2 - A137224 (2 * n + 1)

end

end A372976.P1961780888895066293

namespace A372976

/-- `A067060(2*(n+1))²-A137224(2*n+1)` -/
def P1961780888895066293.Spec : Prop :=
  ∀ n, P1961780888895066293.a n = A372976 n

end A372976

/-!
# A372977: Number of vertices among all distinct circles that can be constructed from the 4 vertices and the equally spaced 4*n points placed on the sides of a square, using only a compass.

The programs for A372977, there is no canonical definition to state claims against.
-/

/-! ## A372977.P6738313438300833661

`A372979(n)-A372978(n)+1`
-/

namespace A372977.P6738313438300833661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372979 n - A372978 n + 1

end

end A372977.P6738313438300833661

/-!
# A372978: Number of regions among all distinct circles that can be constructed from the 4 vertices and the equally spaced 4*n points placed on the sides of a square, using only a compass.

The programs for A372978, there is no canonical definition to state claims against.
-/

/-! ## A372978.P9971748197798163371

`A372979(n)-A372977(n)+1`
-/

namespace A372978.P9971748197798163371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372979 n - A372977 n + 1

end

end A372978.P9971748197798163371

/-!
# A372979: Number of edges among all distinct circles that can be constructed from the 4 vertices and the equally spaced 4*n points placed on the sides of a square, using only a compass.

The programs for A372979, there is no canonical definition to state claims against.
-/

/-! ## A372979.P3657280110721345578

`A372977(n)+A372978(n)-1`
-/

namespace A372979.P3657280110721345578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372977 n + A372978 n - 1

end

end A372979.P3657280110721345578

/-!
# A372981: Number of distinct circles that can be constructed from the 4 vertices and the equally spaced 4*n points placed on the sides of a square, using only a compass.

The programs for A372981, there is no canonical definition to state claims against.
-/

/-! ## A372981.P2012604920482587654

`4*A304711(A301061(n))`
-/

namespace A372981.P2012604920482587654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A304711 (A301061 n).toNat

end

end A372981.P2012604920482587654

/-! ## A372981.P6957354326778548206

`A008590(A212959(n)+A051118(n))`
-/

namespace A372981.P6957354326778548206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A212959 n + A051118 n).toNat

end

end A372981.P6957354326778548206

/-!
# A372982: a(n) = floor((a(n-1)+a(n-2)+n)/(a(n-3)+1)), where a(1)=1, a(2)=2, a(3)=3.

The programs for A372982, there is no canonical definition to state claims against.
-/

/-! ## A372982.P7966141254723360289

`A372983(n+1)-ceil(A372983(n+1)/(n+1))+1`
-/

namespace A372982.P7966141254723360289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372983 (n + 1) - ⌈(A372983 (n + 1) : ℚ) / (n + 1 : ℚ)⌉ + 1

end

end A372982.P7966141254723360289

/-! ## A372982.P6169560712363224151

`A372983(n+1)-A010815(A291941(n+3))`
-/

namespace A372982.P6169560712363224151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372983 (n + 1) - A010815 (A291941 (n + 3)).toNat

end

end A372982.P6169560712363224151

/-! ## A372982.P465845670231127197

`A372983(n+1)-A378357(A007607(2*n+1))`
-/

namespace A372982.P465845670231127197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372983 (n + 1) - A378357 (A007607 (2 * n + 1)).toNat

end

end A372982.P465845670231127197

/-! ## A372982.P17136240597532635443

`A372983(n+1)-A010051(A045891(n))`
-/

namespace A372982.P17136240597532635443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372983 (n + 1) - A010051 (A045891 n).toNat

end

end A372982.P17136240597532635443

/-!
# A372983: a(n) = floor((a(n-1)+a(n-2)+n)/(a(n-3)+1)), with a(1)=1, a(2)=2, a(3)=4.

The programs for A372983, there is no canonical definition to state claims against.
-/

/-! ## A372983.P5658993206112451636

`A372982(n+1)-A121373(A000961(n+3))`
-/

namespace A372983.P5658993206112451636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372982 (n + 1) - A121373 (A000961 (n + 3)).toNat

end

end A372983.P5658993206112451636

/-! ## A372983.P1679504580360311879

`A372982(n+1)+A010054(A242064(n+4))`
-/

namespace A372983.P1679504580360311879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372982 (n + 1) + A010054 (A242064 (n + 4)).toNat

end

end A372983.P1679504580360311879

/-! ## A372983.P2393716005138433517

`A372982(n+1)+A010051(A045891(n))`
-/

namespace A372983.P2393716005138433517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372982 (n + 1) + A010051 (A045891 n).toNat

end

end A372983.P2393716005138433517

/-!
# A372985: a(n) = floor((a(n-1)+a(n-2)+n)/a(n-2)), with a(1)=1, a(2)=2.

The programs for A372985, the canonical program `A372985.P11086074446600455006` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372985 has offset 1).

The definition of A372985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372985.P11086074446600455006

`floor((a(n-1)+n+1)/a(n-2))+1` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A372985

/-- `floor((a(n-1)+n+1)/a(n-2))+1` -/
def P11086074446600455006.Spec : Prop :=
  ∀ n, P11086074446600455006.a n = A372985 (n + 1)

theorem P11086074446600455006.correct : P11086074446600455006.Spec := by
  intro n
  simp only [A372985, Nat.add_sub_cancel]

end A372985

/-!
# A372986: a(n) = (2*n)!/a(n-1), with a(0)=1.

The programs for A372986, the canonical program `A372986.P6394167589226336916` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372986 has offset 0).

The definition of A372986 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A372986.P6394167589226336916

`(2*n)!/a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A372986

/-- `(2*n)!/a(n-1)` -/
def P6394167589226336916.Spec : Prop :=
  ∀ n, P6394167589226336916.a n = (A372986 n : ℚ)

end A372986

/-! ## A372986.P10019841238463745978

`2*C(2*n, 2)*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A372986.P10019841238463745978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (Nat.choose (2 * n) 2 * a (n - 2))

end

end A372986.P10019841238463745978

namespace A372986

/-- `2*C(2*n, 2)*a(n-2)` -/
def P10019841238463745978.Spec : Prop :=
  ∀ n, (P10019841238463745978.a n : ℤ) = A372986 n

end A372986

/-! ## A372986.P2786791887746569961

`(4*n-2)*n*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A372986.P2786791887746569961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((4 * n : ℤ) - 2) * ((n : ℤ) * a (n - 2))

end

end A372986.P2786791887746569961

namespace A372986

/-- `(4*n-2)*n*a(n-2)` -/
def P2786791887746569961.Spec : Prop :=
  ∀ n, P2786791887746569961.a n = A372986 n

end A372986

/-! ## A372986.P16189850563831347179

`A214916(2*n)`
-/

namespace A372986.P16189850563831347179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214916 (2 * n)

end

end A372986.P16189850563831347179

namespace A372986

/-- `A214916(2*n)` -/
def P16189850563831347179.Spec : Prop :=
  ∀ n, P16189850563831347179.a n = A372986 n

end A372986

/-! ## A372986.P13237423084993772246

`A007662(2*n)*A235136(n)`
-/

namespace A372986.P13237423084993772246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007662 (2 * n) * A235136 n

end

end A372986.P13237423084993772246

namespace A372986

/-- `A007662(2*n)*A235136(n)` -/
def P13237423084993772246.Spec : Prop :=
  ∀ n, P13237423084993772246.a n = A372986 n

end A372986

/-!
# A372987: a(n) = (2*n)!/(n!*a(n-1)), with a(0)=1.

The programs for A372987, the canonical program `A372987.P1720451886314360438` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372987 has offset 0).

The definition of A372987 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A372987.P1720451886314360438

`(2*n)!/(n!*a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A372987

/-- `(2*n)!/(n!*a(n-1))` -/
def P1720451886314360438.Spec : Prop :=
  ∀ n, P1720451886314360438.a n = (A372987 n : ℚ)

end A372987

/-! ## A372987.P9709516528383910241

`(4*n-2)*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A372987.P9709516528383910241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((4 * n : ℤ) - 2) * a (n - 2)

end

end A372987.P9709516528383910241

namespace A372987

/-- `(4*n-2)*a(n-2)` -/
def P9709516528383910241.Spec : Prop :=
  ∀ n, P9709516528383910241.a n = A372987 n

end A372987

/-! ## A372987.P14477598987476729254

`∏[a(n-2)+4/a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A372987.P14477598987476729254
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + 4 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A372987.P14477598987476729254

namespace A372987

/-- `∏[a(n-2)+4/a(n-1)]` -/
def P14477598987476729254.Spec : Prop :=
  ∀ n, P14477598987476729254.a n = (A372987 n : ℚ)

end A372987

/-! ## A372987.P13986554364740333799

`A114800(A130824(n))`
-/

namespace A372987.P13986554364740333799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114800 (A130824 n).toNat

end

end A372987.P13986554364740333799

namespace A372987

/-- `A114800(A130824(n))` -/
def P13986554364740333799.Spec : Prop :=
  ∀ n, P13986554364740333799.a n = A372987 n

end A372987

/-! ## A372987.P13956592615888475353

`A114800(A111284(n+1))`
-/

namespace A372987.P13956592615888475353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114800 (A111284 (n + 1)).toNat

end

end A372987.P13956592615888475353

namespace A372987

/-- `A114800(A111284(n+1))` -/
def P13956592615888475353.Spec : Prop :=
  ∀ n, P13956592615888475353.a n = A372987 n

end A372987

/-! ## A372987.P13883937359451193428

`A060546(n)*A235136(n)`
-/

namespace A372987.P13883937359451193428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n * A235136 n

end

end A372987.P13883937359451193428

namespace A372987

/-- `A060546(n)*A235136(n)` -/
def P13883937359451193428.Spec : Prop :=
  ∀ n, P13883937359451193428.a n = A372987 n

end A372987

/-! ## A372987.P11587983703422446511

`A214916(2*n)/A006882(n)`
-/

namespace A372987.P11587983703422446511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214916 (2 * n) : ℚ) / (A006882 n : ℚ)

end

end A372987.P11587983703422446511

namespace A372987

/-- `A214916(2*n)/A006882(n)` -/
def P11587983703422446511.Spec : Prop :=
  ∀ n, P11587983703422446511.a n = (A372987 n : ℚ)

end A372987

/-!
# A372988: a(n) = (2n)!/(n!*a(n-2)), with a(0) = 1, a(1) = 1.

The programs for A372988, the canonical program `A372988.P65379519845233318` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372988 has offset 0).

The definition of A372988 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A372988.P65379519845233318

`(2*n)!/(n!*a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A372988

/-- `(2*n)!/(n!*a(n-2))` -/
def P65379519845233318.Spec : Prop :=
  ∀ n, P65379519845233318.a n = (A372988 n : ℚ)

end A372988

/-! ## A372988.P4219027117090614051

`A001813(n)/a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A372988.P4219027117090614051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A001813 n : ℚ) / a (n - 2)

end

end A372988.P4219027117090614051

namespace A372988

/-- `A001813(n)/a(n-2)` -/
def P4219027117090614051.Spec : Prop :=
  ∀ n, P4219027117090614051.a n = (A372988 n : ℚ)

end A372988

/-!
# A372989: a(n) = floor((2*n)!/(n!^2*a(n-1))), with a(0)=1.

The programs for A372989, the canonical program `A372989.P9378337607874675842` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372989 has offset 0).

The definition of A372989 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((2*n)!/(n!²*a(n-1)))` (program `A372989.P9378337607874675842`, by `A372989.P9378337607874675842.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A372989.P9378337607874675842

`floor((2*n)!/(n!²*a(n-1)))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A372989

/-- `floor((2*n)!/(n!²*a(n-1)))` -/
def P9378337607874675842.Spec : Prop :=
  ∀ n, P9378337607874675842.a n = A372989 n

theorem P9378337607874675842.correct : P9378337607874675842.Spec := by
  intro n
  simp only [A372989]

end A372989

/-! ## A372989.P7550958641357331473

`floor(A000984(n)/a(n-1))` with `a(0)=1`
-/

namespace A372989.P7550958641357331473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(A000984 n : ℚ) / (a (n - 1) : ℚ)⌋

end

end A372989.P7550958641357331473

namespace A372989

/-- `floor(A000984(n)/a(n-1))` -/
def P7550958641357331473.Spec : Prop :=
  ∀ n, P7550958641357331473.a n = A372989 n

end A372989

/-! ## A372989.P11033455683364677184

`floor(record[A126869(n)]/a(n-1))` with `a(0)=1`
-/

namespace A372989.P11033455683364677184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (a (n - 1) : ℚ)⌋

end

end A372989.P11033455683364677184

namespace A372989

/-- `floor(record[A126869(n)]/a(n-1))` -/
def P11033455683364677184.Spec : Prop :=
  ∀ n, P11033455683364677184.a n = A372989 n

end A372989

/-! ## A372989.P5918393649889979191

`floor(C(2*n, n)/a(n-1))` with `a(0)=1`
-/

namespace A372989.P5918393649889979191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(Nat.choose (2 * n) n : ℚ) / (a (n - 1) : ℚ)⌋

end

end A372989.P5918393649889979191

namespace A372989

/-- `floor(C(2*n, n)/a(n-1))` -/
def P5918393649889979191.Spec : Prop :=
  ∀ n, P5918393649889979191.a n = A372989 n

end A372989

/-! ## A372989.P16434265911025602677

`A082447(A149925(n))`
-/

namespace A372989.P16434265911025602677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A149925 n).toNat

end

end A372989.P16434265911025602677

namespace A372989

/-- `A082447(A149925(n))` -/
def P16434265911025602677.Spec : Prop :=
  ∀ n, P16434265911025602677.a n = A372989 n

end A372989

/-!
# A372990: a(n) = floor((3*n)!/(n!^3*a(n-1))), where a(0)=1.

The programs for A372990, the canonical program `A372990.P10240798189660020005` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372990 has offset 0).

The definition of A372990 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((3*n)!/(n!^3*a(n-1)))` (program `A372990.P10240798189660020005`, by `A372990.P10240798189660020005.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A372990.P10240798189660020005

`floor((3*n)!/(n!^3*a(n-1)))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A372990

/-- `floor((3*n)!/(n!^3*a(n-1)))` -/
def P10240798189660020005.Spec : Prop :=
  ∀ n, P10240798189660020005.a n = A372990 n

theorem P10240798189660020005.correct : P10240798189660020005.Spec := by
  intro n
  simp only [A372990]

end A372990

/-! ## A372990.P14137482627951635441

`floor(A006480(n)/a(n-1))` with `a(0)=1`
-/

namespace A372990.P14137482627951635441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(A006480 n : ℚ) / (a (n - 1) : ℚ)⌋

end

end A372990.P14137482627951635441

namespace A372990

/-- `floor(A006480(n)/a(n-1))` -/
def P14137482627951635441.Spec : Prop :=
  ∀ n, P14137482627951635441.a n = A372990 n

end A372990

/-!
# A372991: a(n) = (2n)!/(a(n-1)*a(n-2)), where a(0)=1, a(1) = 1.

The programs for A372991, the canonical program `A372991.P15309020975094392842` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372991 has offset 0).

The definition of A372991 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A372991.P15309020975094392842

`(2*n)!/(a(n-1)*a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A372991

/-- `(2*n)!/(a(n-1)*a(n-2))` -/
def P15309020975094392842.Spec : Prop :=
  ∀ n, P15309020975094392842.a n = (A372991 n : ℚ)

end A372991

/-! ## A372991.P17208121589291516594

`2*n*(2*n-1)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=24`
-/

namespace A372991.P17208121589291516594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 24] fun n a =>
  2 * ((n : ℤ) * (((2 * n : ℤ) - 1) * a (n - 3)))

end

end A372991.P17208121589291516594

namespace A372991

/-- `2*n*(2*n-1)*a(n-3)` -/
def P17208121589291516594.Spec : Prop :=
  ∀ n, P17208121589291516594.a n = A372991 n

end A372991

/-!
# A372993: a(n) = n! a(n-1) / a(n-2), where a(0) = 1, a(1) = 1.

The programs for A372993, there is no canonical definition to state claims against.
-/

/-! ## A372993.P1088902133182063697

`a(n-1)/a(n-2)*n!` with `a(0)=1, a(1)=1`
-/

namespace A372993.P1088902133182063697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) / a (n - 2) * (Nat.factorial n : ℚ)

end

end A372993.P1088902133182063697

/-! ## A372993.P5667198495814411161

`∏[n*a(n-1)/a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A372993.P5667198495814411161
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n : ℚ) * (f1 (n - 1) / f1 (n - 2))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A372993.P5667198495814411161

/-! ## A372993.P15253045996352351977

`A028310(A000142(n))*A145103(n)`
-/

namespace A372993.P15253045996352351977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A000142 n).toNat * A145103 n

end

end A372993.P15253045996352351977

/-!
# A372994: a(n) = n! a(n-1) / a(n-2), where a(0) = 1, a(1) = 2.

The programs for A372994, there is no canonical definition to state claims against.
-/

/-! ## A372994.P9696250452095327703

`a(n-1)!` with `a(0)=1, a(1)=2, a(2)=4, a(3)=12, a(4)=72, a(5)=720`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372994.P9696250452095327703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 12, 72, 720] fun n a =>
  Nat.factorial (a (n - 1))

end

end A372994.P9696250452095327703

/-! ## A372994.P8487068330287796375

`A000142(n)/a(n-2)*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A372994.P8487068330287796375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (A000142 n : ℚ) / a (n - 2) * a (n - 1)

end

end A372994.P8487068330287796375

/-! ## A372994.P694585929916731214

`∏[∏{p}[record[A292436(2*(n+1))], #]]`
-/

namespace A372994.P694585929916731214
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292436 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A372994.P694585929916731214

/-!
# A372995: a(n) = n! / (a(n-1) a(n-2) a(n-3)), where a(0) = a(1) = a(2) = 1.

The programs for A372995, the canonical program `A372995.P8236050801106851051` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372995 has offset 0).

The definition of A372995 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A372995.P8236050801106851051

`n!/(a(n-1)*a(n-2)*a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A372995

/-- `n!/(a(n-1)*a(n-2)*a(n-3))` -/
def P8236050801106851051.Spec : Prop :=
  ∀ n, P8236050801106851051.a n = (A372995 n : ℚ)

end A372995

/-! ## A372995.P12702050589478344992

`n*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=6`
-/

namespace A372995.P12702050589478344992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 6] fun n a =>
  n * a (n - 4)

end

end A372995.P12702050589478344992

namespace A372995

/-- `n*a(n-4)` -/
def P12702050589478344992.Spec : Prop :=
  ∀ n, (P12702050589478344992.a n : ℤ) = A372995 n

end A372995

/-!
# A372998: a(n) = Sum_{k=1..n} sigma( (n/gcd(k,n))^3 ).

The programs for A372998, there is no canonical definition to state claims against.
-/

/-! ## A372998.P6814673367244853745

`A351602(n+1)-A004198(A114217(n+1))`
-/

namespace A372998.P6814673367244853745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351602 (n + 1) - A004198 (A114217 (n + 1)).toNat

end

end A372998.P6814673367244853745

/-! ## A372998.P209526599970418320

`A351602(n+1)-A325189(A208894(n+1))`
-/

namespace A372998.P209526599970418320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351602 (n + 1) - A325189 (A208894 (n + 1)).toNat

end

end A372998.P209526599970418320

