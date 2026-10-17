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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B013.C000
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
# A158201: Primes with sum of largest digit and final digit is a prime.

The programs for A158201, there is no canonical definition to state claims against.
-/

/-! ## A158201.P16330172910512486816

`∩[A088136(n+1), A130575(n)]`
-/

namespace A158201.P16330172910512486816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130575 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158201.P16330172910512486816

/-! ## A158201.P5602147506861715091

`p?[eq[12, A227216(A000217(n))]]`
-/

namespace A158201.P5602147506861715091
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227216 (A000217 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A158201.P5602147506861715091

/-!
# A158203: Primes the sum of whose first digit and largest digit is a prime.

The programs for A158203, there is no canonical definition to state claims against.
-/

/-! ## A158203.P17862835371651659723

`∩[A088136(n+1), A138234(n)]`
-/

namespace A158203.P17862835371651659723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138234 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158203.P17862835371651659723

/-! ## A158203.P884039565206303372

`∩[A091367(n+1), A138234(n)]`
-/

namespace A158203.P884039565206303372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138234 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158203.P884039565206303372

/-! ## A158203.P14501998610254326122

`∩[A109981(n+1), A138234(n)]`
-/

namespace A158203.P14501998610254326122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138234 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158203.P14501998610254326122

/-!
# A158204: Terms in A178335 not divisible by 10.

The programs for A158204, there is no canonical definition to state claims against.
-/

/-! ## A158204.P1902400188098327190

`record[7*A222416(A003592(n+1))]`
-/

namespace A158204.P1902400188098327190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A222416 (A003592 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158204.P1902400188098327190

/-! ## A158204.P2614762763836208040

`A008589(∪[2^n, 5^n])`
-/

namespace A158204.P2614762763836208040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n)

end

end A158204.P2614762763836208040

/-! ## A158204.P8467366465105480101

`record[7*A262401(A324926(n+1))]`
-/

namespace A158204.P8467366465105480101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A262401 (A324926 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158204.P8467366465105480101

/-! ## A158204.P9121846639870542293

`record[lcm(7, A004151(A108513(n+1)))]`
-/

namespace A158204.P9121846639870542293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 7 (A004151 (A108513 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158204.P9121846639870542293

/-! ## A158204.P67000536160356580

`∩[A178335(n+1), A238985(n+1)]`
-/

namespace A158204.P67000536160356580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158204.P67000536160356580

/-!
# A158205: Primes with every digit a nonprime and the sum of the digits a prime.

The programs for A158205, the canonical program `A158205.P11181457080727428665` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158205 has offset 1).

The definition of A158205 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158205.P11181457080727428665

`∩[A034844(n+1), A046704(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A158205

/-- `∩[A034844(n+1), A046704(n+1)]` -/
def P11181457080727428665.Spec : Prop :=
  ∀ n, (P11181457080727428665.a n : ℤ) = A158205 (n + 1)

theorem P11181457080727428665.correct : P11181457080727428665.Spec := by
  intro n
  simp only [A158205, Nat.add_sub_cancel]

end A158205

/-! ## A158205.P9659371528151763206

`∩[A034844(n+1), A085564(n+1)]`
-/

namespace A158205.P9659371528151763206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158205.P9659371528151763206

namespace A158205

/-- `∩[A034844(n+1), A085564(n+1)]` -/
def P9659371528151763206.Spec : Prop :=
  ∀ n, (P9659371528151763206.a n : ℤ) = A158205 (n + 1)

end A158205

/-! ## A158205.P7641630389208659888

`∩[A046704(n+1), A084984(n+1)]`
-/

namespace A158205.P7641630389208659888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158205.P7641630389208659888

namespace A158205

/-- `∩[A046704(n+1), A084984(n+1)]` -/
def P7641630389208659888.Spec : Prop :=
  ∀ n, (P7641630389208659888.a n : ℤ) = A158205 (n + 1)

end A158205

/-! ## A158205.P16726106518338414830

`∩[A084984(n+1), A085564(n+1)]`
-/

namespace A158205.P16726106518338414830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158205.P16726106518338414830

namespace A158205

/-- `∩[A084984(n+1), A085564(n+1)]` -/
def P16726106518338414830.Spec : Prop :=
  ∀ n, (P16726106518338414830.a n : ℤ) = A158205 (n + 1)

end A158205

/-! ## A158205.P6649096751816059798

`∩[A085564(n+1), A365472(n+1)]`
-/

namespace A158205.P6649096751816059798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085564 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158205.P6649096751816059798

namespace A158205

/-- `∩[A085564(n+1), A365472(n+1)]` -/
def P6649096751816059798.Spec : Prop :=
  ∀ n, (P6649096751816059798.a n : ℤ) = A158205 (n + 1)

end A158205

/-! ## A158205.P5052951422563119546

`∩[A034844(n+1), A186773(n+1)]`
-/

namespace A158205.P5052951422563119546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158205.P5052951422563119546

namespace A158205

/-- `∩[A034844(n+1), A186773(n+1)]` -/
def P5052951422563119546.Spec : Prop :=
  ∀ n, (P5052951422563119546.a n : ℤ) = A158205 (n + 1)

end A158205

/-! ## A158205.P15710625197613178744

`∩[A028834(n+1), A034844(n+1)]`
-/

namespace A158205.P15710625197613178744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158205.P15710625197613178744

namespace A158205

/-- `∩[A028834(n+1), A034844(n+1)]` -/
def P15710625197613178744.Spec : Prop :=
  ∀ n, (P15710625197613178744.a n : ℤ) = A158205 (n + 1)

end A158205

/-!
# A158206: Number of irreducible numerical semigroups with Frobenius number n; that is, irreducible numerical semigroups for which the largest integer not belonging to them is n.

The programs for A158206, there is no canonical definition to state claims against.
-/

/-! ## A158206.P11496617901420212160

`A342517(A187829(n+1)-A018892(n+1))`
-/

namespace A158206.P11496617901420212160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342517 (A187829 (n + 1) - A018892 (n + 1)).toNat

end

end A158206.P11496617901420212160

/-! ## A158206.P702573942741369666

`A364062(A077168(n))`
-/

namespace A158206.P702573942741369666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364062 (A077168 n).toNat

end

end A158206.P702573942741369666

/-! ## A158206.P12081848882252483035

`A364062(A043319(n+1))`
-/

namespace A158206.P12081848882252483035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364062 (A043319 (n + 1)).toNat

end

end A158206.P12081848882252483035

/-! ## A158206.P13265823636185203779

`A364062(A044916(n+1))`
-/

namespace A158206.P13265823636185203779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364062 (A044916 (n + 1)).toNat

end

end A158206.P13265823636185203779

/-! ## A158206.P1339611959646078700

`A364062(A055646(n+1))`
-/

namespace A158206.P1339611959646078700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364062 (A055646 (n + 1)).toNat

end

end A158206.P1339611959646078700

/-!
# A158207: Denominator of Bernoulli(n, -1/6).

The programs for A158207, the canonical program `A158207.P14410960387144455574` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158207 has offset 0).

The definition of A158207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158207.P5882687374416188978

`A000034(A289207(n))*A158301(n)`
-/

namespace A158207.P5882687374416188978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A289207 n).toNat * A158301 n

end

end A158207.P5882687374416188978

namespace A158207

/-- `A000034(A289207(n))*A158301(n)` -/
def P5882687374416188978.Spec : Prop :=
  ∀ n, P5882687374416188978.a n = A158207 n

end A158207

/-! ## A158207.P14410960387144455574

`A158077(n)/A000034(A289207(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A158207

/-- `A158077(n)/A000034(A289207(n))` -/
def P14410960387144455574.Spec : Prop :=
  ∀ n, P14410960387144455574.a n = (A158207 n : ℚ)

end A158207

/-! ## A158207.P8235548906313558720

`A000034(A233583(n+1))*A158301(n)`
-/

namespace A158207.P8235548906313558720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A233583 (n + 1)).toNat * A158301 n

end

end A158207.P8235548906313558720

namespace A158207

/-- `A000034(A233583(n+1))*A158301(n)` -/
def P8235548906313558720.Spec : Prop :=
  ∀ n, P8235548906313558720.a n = A158207 n

end A158207

/-! ## A158207.P2960458846864120861

`A158077(n)/A000034(A233583(n+1))`
-/

namespace A158207.P2960458846864120861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158077 n : ℚ) / (A000034 (A233583 (n + 1)).toNat : ℚ)

end

end A158207.P2960458846864120861

namespace A158207

/-- `A158077(n)/A000034(A233583(n+1))` -/
def P2960458846864120861.Spec : Prop :=
  ∀ n, P2960458846864120861.a n = (A158207 n : ℚ)

end A158207

/-! ## A158207.P11299304777464979216

`lcm(A000034(n), A158077(n))/A000034(n)`
-/

namespace A158207.P11299304777464979216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000034 n) (A158077 n) : ℚ) / (A000034 n : ℚ)

end

end A158207.P11299304777464979216

namespace A158207

/-- `lcm(A000034(n), A158077(n))/A000034(n)` -/
def P11299304777464979216.Spec : Prop :=
  ∀ n, P11299304777464979216.a n = (A158207 n : ℚ)

end A158207

/-!
# A158209: The number of consecutive prime pairs with 10-gap in n-th century.

The programs for A158209, there is no canonical definition to state claims against.
-/

/-! ## A158209.P12944909536553091140

`A324852(A008533(n))`
-/

namespace A158209.P12944909536553091140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324852 (A008533 n).toNat

end

end A158209.P12944909536553091140

/-! ## A158209.P14202636402912297941

`A299090(A162740(n))`
-/

namespace A158209.P14202636402912297941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299090 (A162740 n).toNat

end

end A158209.P14202636402912297941

/-! ## A158209.P4339679967174459228

`A001221((n²+1)%3*A158439(n+1))`
-/

namespace A158209.P4339679967174459228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((((n ^ 2 + 1) % 3 : ℕ) : ℤ) * A158439 (n + 1)).toNat

end

end A158209.P4339679967174459228

/-! ## A158209.P4706467620862550641

`dr(A331048(A001694(n+1))+n^6)-1`
-/

namespace A158209.P4706467620862550641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A331048 (A001694 (n + 1)).toNat + (n ^ 6 : ℤ)) : ℤ) - 1

end

end A158209.P4706467620862550641

/-! ## A158209.P15513628564356832679

`A001221(lcm(C(n+1, 2), A068397(n+3))+1)`
-/

namespace A158209.P15513628564356832679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (Nat.choose (n + 1) 2 : ℤ) (A068397 (n + 3)) + 1)

end

end A158209.P15513628564356832679

/-!
# A158210: a(n) = omega(n) * (-1)^mu(n), where mu is the Moebius function.

The programs for A158210, the canonical program `A158210.P6541063177668023045` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158210 has offset 1).

The definition of A158210 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A008683, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A158210.P6541063177668023045

`A001221(n+1)*(-1)^A008683(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A158210

/-- `A001221(n+1)*(-1)^A008683(n+1)` -/
def P6541063177668023045.Spec : Prop :=
  ∀ n, P6541063177668023045.a n = (A158210 (n + 1) : ℚ)

end A158210

/-! ## A158210.P9268228284053948996

`∑{e}[n+1, (-#)^A008683(n+1)]`
-/

namespace A158210.P9268228284053948996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p : ℤ) : ℚ) ^ (A008683 (n + 1) : ℤ)

end

end A158210.P9268228284053948996

namespace A158210

/-- `∑{e}[n+1, (-#)^A008683(n+1)]` -/
def P9268228284053948996.Spec : Prop :=
  ∀ n, P9268228284053948996.a n = (A158210 (n + 1) : ℚ)

end A158210

/-! ## A158210.P19897790990860426

`A001221(n+1)-2*A344478(n+1)`
-/

namespace A158210.P19897790990860426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - 2 * A344478 (n + 1)

end

end A158210.P19897790990860426

namespace A158210

/-- `A001221(n+1)-2*A344478(n+1)` -/
def P19897790990860426.Spec : Prop :=
  ∀ n, P19897790990860426.a n = A158210 (n + 1)

end A158210

/-! ## A158210.P233188160216078263

`∑{p}[n+1, A008683(#)^A008683(n+1)]`
-/

namespace A158210.P233188160216078263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (A008683 p : ℚ) ^ (A008683 (n + 1) : ℤ)

end

end A158210.P233188160216078263

namespace A158210

/-- `∑{p}[n+1, A008683(#)^A008683(n+1)]` -/
def P233188160216078263.Spec : Prop :=
  ∀ n, P233188160216078263.a n = (A158210 (n + 1) : ℚ)

end A158210

/-! ## A158210.P12440515435192453144

`A001221(n+1)*A056594(A046523(n+1))`
-/

namespace A158210.P12440515435192453144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A056594 (A046523 (n + 1)).toNat

end

end A158210.P12440515435192453144

namespace A158210

/-- `A001221(n+1)*A056594(A046523(n+1))` -/
def P12440515435192453144.Spec : Prop :=
  ∀ n, P12440515435192453144.a n = A158210 (n + 1)

end A158210

/-! ## A158210.P900046845520994699

`A001221(n+1)*A033999(A300724(n+1))`
-/

namespace A158210.P900046845520994699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A033999 (A300724 (n + 1)).toNat

end

end A158210.P900046845520994699

namespace A158210

/-- `A001221(n+1)*A033999(A300724(n+1))` -/
def P900046845520994699.Spec : Prop :=
  ∀ n, P900046845520994699.a n = A158210 (n + 1)

end A158210

/-! ## A158210.P7225782191822022488

`2*A001221(A285328(n+1))-A001221(n+1)`
-/

namespace A158210.P7225782191822022488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001221 (A285328 (n + 1)).toNat - A001221 (n + 1)

end

end A158210.P7225782191822022488

namespace A158210

/-- `2*A001221(A285328(n+1))-A001221(n+1)` -/
def P7225782191822022488.Spec : Prop :=
  ∀ n, P7225782191822022488.a n = A158210 (n + 1)

end A158210

/-! ## A158210.P16845009890513657265

`A001221(n+1)*A008683(Δ[A013928(n+1)]+1)`
-/

namespace A158210.P16845009890513657265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A008683 (f1 (n + 1) - f1 n + 1).toNat

end

end A158210.P16845009890513657265

namespace A158210

/-- `A001221(n+1)*A008683(Δ[A013928(n+1)]+1)` -/
def P16845009890513657265.Spec : Prop :=
  ∀ n, P16845009890513657265.a n = A158210 (n + 1)

end A158210

/-! ## A158210.P10153009453629765527

`(A008683(n+1)-A076544(n+1))*A001221(n+1)`
-/

namespace A158210.P10153009453629765527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) - A076544 (n + 1)) * A001221 (n + 1)

end

end A158210.P10153009453629765527

namespace A158210

/-- `(A008683(n+1)-A076544(n+1))*A001221(n+1)` -/
def P10153009453629765527.Spec : Prop :=
  ∀ n, P10153009453629765527.a n = A158210 (n + 1)

end A158210

/-! ## A158210.P2319632518005353836

`(A107078(n+1)-A008966(n+1))*A001221(n+1)`
-/

namespace A158210.P2319632518005353836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A107078 (n + 1) - A008966 (n + 1)) * A001221 (n + 1)

end

end A158210.P2319632518005353836

namespace A158210

/-- `(A107078(n+1)-A008966(n+1))*A001221(n+1)` -/
def P2319632518005353836.Spec : Prop :=
  ∀ n, P2319632518005353836.a n = A158210 (n + 1)

end A158210

/-! ## A158210.P17334255205185940911

`A080256(n+1)*A107078(n+1)-A001222(n+1)`
-/

namespace A158210.P17334255205185940911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080256 (n + 1) * A107078 (n + 1) - A001222 (n + 1)

end

end A158210.P17334255205185940911

namespace A158210

/-- `A080256(n+1)*A107078(n+1)-A001222(n+1)` -/
def P17334255205185940911.Spec : Prop :=
  ∀ n, P17334255205185940911.a n = A158210 (n + 1)

end A158210

/-!
# A158212: A quadrisection of A158122: a(n) = A158122(4n).

The programs for A158212, there is no canonical definition to state claims against.
-/

/-! ## A158212.P6308615968176097871

`A158122(4*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A158212.P6308615968176097871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158122 (4 * n)

end

end A158212.P6308615968176097871

/-! ## A158212.P632350488329876267

`ceil(A158122(A008574(n))-acot(n))`
-/

namespace A158212.P632350488329876267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158122 (A008574 n).toNat : ℝ) - SequenceMachineLib.acot (n : ℝ)⌉

end

end A158212.P632350488329876267

/-! ## A158212.P5938943174149809981

`A158122(A008574(n))-A000007(n)`
-/

namespace A158212.P5938943174149809981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158122 (A008574 n).toNat - A000007 n

end

end A158212.P5938943174149809981

/-! ## A158212.P9633910462894028264

`A158122(A008574(n))/A000108(C(2, n+1))`
-/

namespace A158212.P9633910462894028264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158122 (A008574 n).toNat : ℚ) / (A000108 (Nat.choose 2 (n + 1)) : ℚ)

end

end A158212.P9633910462894028264

/-!
# A158213: A quadrisection of A158122: a(n) = A158122(4n+1).

The programs for A158213, there is no canonical definition to state claims against.
-/

/-! ## A158213.P9948689042176784637

`A158122(4*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A158213.P9948689042176784637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158122 (4 * n + 1)

end

end A158213.P9948689042176784637

/-! ## A158213.P768828604294539763

`or(A000038(n), A158122(A016813(n)))`
-/

namespace A158213.P768828604294539763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A158122 (A016813 n).toNat)

end

end A158213.P768828604294539763

/-! ## A158213.P16924824906354764839

`A158122(A016813(n))+A000007(n+1)`
-/

namespace A158213.P16924824906354764839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158122 (A016813 n).toNat + A000007 (n + 1)

end

end A158213.P16924824906354764839

/-! ## A158213.P14839338318227540150

`A158122(A016813(n))+A000038(n+1)`
-/

namespace A158213.P14839338318227540150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158122 (A016813 n).toNat + A000038 (n + 1)

end

end A158213.P14839338318227540150

/-! ## A158213.P10325949005050428106

`A158122(A016813(n))+A076142(n+1)`
-/

namespace A158213.P10325949005050428106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158122 (A016813 n).toNat + A076142 (n + 1)

end

end A158213.P10325949005050428106

/-!
# A158217: Primes whose digit sum is a single-digit prime.

The programs for A158217, there is no canonical definition to state claims against.
-/

/-! ## A158217.P9322090462942860848

`∪[A119890(n+1), A208361(n+1)]`
-/

namespace A158217.P9322090462942860848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A158217.P9322090462942860848

/-! ## A158217.P15860038955795853615

`∩[A070027(n+1), A087143(n+1)]`
-/

namespace A158217.P15860038955795853615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158217.P15860038955795853615

/-! ## A158217.P12008072516554648781

`eq[A003415(n), A174713(A007953(n))]`
-/

namespace A158217.P12008072516554648781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174713 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A158217.P12008072516554648781

/-! ## A158217.P4978487902624241804

`∩[A070026(n+1), A175584(n+1)]`
-/

namespace A158217.P4978487902624241804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158217.P4978487902624241804

/-! ## A158217.P9639908269138686144

`∩[A028834(n+1), A175584(n+1)]`
-/

namespace A158217.P9639908269138686144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158217.P9639908269138686144

/-!
# A158218: a(n) = 169*n^2 - 2*n.

The programs for A158218, the canonical program `A158218.P6081859741299846091` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158218 has offset 1).

The definition of A158218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158218.P6081859741299846091

`∑[Δ[(13*n)²]-2]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A158218

/-- `∑[Δ[(13*n)²]-2]` -/
def P6081859741299846091.Spec : Prop :=
  ∀ n, P6081859741299846091.a n = A158218 (n + 1)

theorem P6081859741299846091.correct : P6081859741299846091.Spec := by
  intro n
  simp only [A158218, Nat.add_sub_cancel]

end A158218

/-! ## A158218.P17505508495985717903

`A157998(n+1)-(n+1)`
-/

namespace A158218.P17505508495985717903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157998 (n + 1) - (n + 1 : ℤ)

end

end A158218.P17505508495985717903

namespace A158218

/-- `A157998(n+1)-(n+1)` -/
def P17505508495985717903.Spec : Prop :=
  ∀ n, P17505508495985717903.a n = A158218 (n + 1)

end A158218

/-! ## A158218.P9976038536615324666

`(n+1)*(A158219(n+1)-1)`
-/

namespace A158218.P9976038536615324666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158219 (n + 1) - 1)

end

end A158218.P9976038536615324666

namespace A158218

/-- `(n+1)*(A158219(n+1)-1)` -/
def P9976038536615324666.Spec : Prop :=
  ∀ n, P9976038536615324666.a n = A158218 (n + 1)

end A158218

/-! ## A158218.P13011628552575469986

`(n+1)*(A158221(n+1)-3)`
-/

namespace A158218.P13011628552575469986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158221 (n + 1) - 3)

end

end A158218.P13011628552575469986

namespace A158218

/-- `(n+1)*(A158221(n+1)-3)` -/
def P13011628552575469986.Spec : Prop :=
  ∀ n, P13011628552575469986.a n = A158218 (n + 1)

end A158218

/-! ## A158218.P7109768162232056553

`A173275(n+1)-3*(n+1)`
-/

namespace A158218.P7109768162232056553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173275 (n + 1) - (3 * (n + 1) : ℤ)

end

end A158218.P7109768162232056553

namespace A158218

/-- `A173275(n+1)-3*(n+1)` -/
def P7109768162232056553.Spec : Prop :=
  ∀ n, P7109768162232056553.a n = A158218 (n + 1)

end A158218

/-! ## A158218.P17845615846749796114

`A158220(n+1)-4*(n+1)`
-/

namespace A158218.P17845615846749796114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158220 (n + 1) - (4 * (n + 1) : ℤ)

end

end A158218.P17845615846749796114

namespace A158218

/-- `A158220(n+1)-4*(n+1)` -/
def P17845615846749796114.Spec : Prop :=
  ∀ n, P17845615846749796114.a n = A158218 (n + 1)

end A158218

/-! ## A158218.P2131597181279467946

`A157514(n+1)+A156635(n+1)`
-/

namespace A158218.P2131597181279467946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157514 (n + 1) + A156635 (n + 1)

end

end A158218.P2131597181279467946

namespace A158218

/-- `A157514(n+1)+A156635(n+1)` -/
def P2131597181279467946.Spec : Prop :=
  ∀ n, P2131597181279467946.a n = A158218 (n + 1)

end A158218

/-! ## A158218.P14909509295273910554

`A008595(n+1)*A008595(n+1)-A005843(n+1)`
-/

namespace A158218.P14909509295273910554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 (n + 1) * A008595 (n + 1) - A005843 (n + 1)

end

end A158218.P14909509295273910554

namespace A158218

/-- `A008595(n+1)*A008595(n+1)-A005843(n+1)` -/
def P14909509295273910554.Spec : Prop :=
  ∀ n, P14909509295273910554.a n = A158218 (n + 1)

end A158218

/-! ## A158218.P7935849555213846349

`A158626(2*(n+1))+n²`
-/

namespace A158218.P7935849555213846349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158626 (2 * (n + 1)) + (n ^ 2 : ℤ)

end

end A158218.P7935849555213846349

namespace A158218

/-- `A158626(2*(n+1))+n²` -/
def P7935849555213846349.Spec : Prop :=
  ∀ n, P7935849555213846349.a n = A158218 (n + 1)

end A158218

/-! ## A158218.P9298597285703764678

`A258589(2*(n+1))²-2*(n+1)`
-/

namespace A158218.P9298597285703764678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258589 (2 * (n + 1)) ^ 2 - (2 * (n + 1) : ℤ)

end

end A158218.P9298597285703764678

namespace A158218

/-- `A258589(2*(n+1))²-2*(n+1)` -/
def P9298597285703764678.Spec : Prop :=
  ∀ n, P9298597285703764678.a n = A158218 (n + 1)

end A158218

/-! ## A158218.P7116277909021700056

`A158220(2*(n+1))%A158220(n+1)`
-/

namespace A158218.P7116277909021700056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158220 (2 * (n + 1))) (A158220 (n + 1))

end

end A158218.P7116277909021700056

namespace A158218

/-- `A158220(2*(n+1))%A158220(n+1)` -/
def P7116277909021700056.Spec : Prop :=
  ∀ n, P7116277909021700056.a n = A158218 (n + 1)

end A158218

/-! ## A158218.P6884293936524962569

`A112653(2*(n+1))²-2*(n+1)`
-/

namespace A158218.P6884293936524962569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112653 (2 * (n + 1)) ^ 2 - (2 * (n + 1) : ℤ)

end

end A158218.P6884293936524962569

namespace A158218

/-- `A112653(2*(n+1))²-2*(n+1)` -/
def P6884293936524962569.Spec : Prop :=
  ∀ n, P6884293936524962569.a n = A158218 (n + 1)

end A158218

/-! ## A158218.P8286770857161462402

`(n+1)*A269100(A269100(n)+1)`
-/

namespace A158218.P8286770857161462402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A269100 (A269100 n + 1).toNat

end

end A158218.P8286770857161462402

namespace A158218

/-- `(n+1)*A269100(A269100(n)+1)` -/
def P8286770857161462402.Spec : Prop :=
  ∀ n, P8286770857161462402.a n = A158218 (n + 1)

end A158218

/-!
# A158219: a(n) = 169*n - 1.

The programs for A158219, the canonical program `A158219.P8675793020936916834` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158219 has offset 1).

The definition of A158219 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158219.P8675793020936916834

`2*a(n-1)-a(n-2)` with `a(0)=168, a(1)=337`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A158219

/-- `2*a(n-1)-a(n-2)` -/
def P8675793020936916834.Spec : Prop :=
  ∀ n, P8675793020936916834.a n = A158219 (n + 1)

theorem P8675793020936916834.correct : P8675793020936916834.Spec := by
  intro n
  simp only [A158219, Nat.add_sub_cancel]

end A158219

/-!
# A158220: a(n) = 169*n^2 + 2*n.

The programs for A158220, the canonical program `A158220.P12380967194980343175` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158220 has offset 1).

The definition of A158220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158220.P12380967194980343175

`∑[Δ[(13*n)²]+2]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A158220

/-- `∑[Δ[(13*n)²]+2]` -/
def P12380967194980343175.Spec : Prop :=
  ∀ n, P12380967194980343175.a n = A158220 (n + 1)

theorem P12380967194980343175.correct : P12380967194980343175.Spec := by
  intro n
  simp only [A158220, Nat.add_sub_cancel]

end A158220

/-! ## A158220.P6225176797581927058

`A173275(n+1)+1+n`
-/

namespace A158220.P6225176797581927058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173275 (n + 1) + 1 + (n : ℤ)

end

end A158220.P6225176797581927058

namespace A158220

/-- `A173275(n+1)+1+n` -/
def P6225176797581927058.Spec : Prop :=
  ∀ n, P6225176797581927058.a n = A158220 (n + 1)

end A158220

/-! ## A158220.P17221534890444544263

`(n+1)*(A158221(n+1)+1)`
-/

namespace A158220.P17221534890444544263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158221 (n + 1) + 1)

end

end A158220.P17221534890444544263

namespace A158220

/-- `(n+1)*(A158221(n+1)+1)` -/
def P17221534890444544263.Spec : Prop :=
  ∀ n, P17221534890444544263.a n = A158220 (n + 1)

end A158220

/-! ## A158220.P12348399797329516948

`A157998(n+1)+3*(n+1)`
-/

namespace A158220.P12348399797329516948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157998 (n + 1) + (3 * (n + 1) : ℤ)

end

end A158220.P12348399797329516948

namespace A158220

/-- `A157998(n+1)+3*(n+1)` -/
def P12348399797329516948.Spec : Prop :=
  ∀ n, P12348399797329516948.a n = A158220 (n + 1)

end A158220

/-! ## A158220.P10427227863950399212

`(n+1)*(A158219(n+1)+3)`
-/

namespace A158220.P10427227863950399212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158219 (n + 1) + 3)

end

end A158220.P10427227863950399212

namespace A158220

/-- `(n+1)*(A158219(n+1)+3)` -/
def P10427227863950399212.Spec : Prop :=
  ∀ n, P10427227863950399212.a n = A158220 (n + 1)

end A158220

/-! ## A158220.P10523570639186882350

`A158218(n+1)+4*(n+1)`
-/

namespace A158220.P10523570639186882350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158218 (n + 1) + (4 * (n + 1) : ℤ)

end

end A158220.P10523570639186882350

namespace A158220

/-- `A158218(n+1)+4*(n+1)` -/
def P10523570639186882350.Spec : Prop :=
  ∀ n, P10523570639186882350.a n = A158220 (n + 1)

end A158220

/-! ## A158220.P10786723688129877255

`A005843(n+1)+A008595(n+1)*A008595(n+1)`
-/

namespace A158220.P10786723688129877255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + A008595 (n + 1) * A008595 (n + 1)

end

end A158220.P10786723688129877255

namespace A158220

/-- `A005843(n+1)+A008595(n+1)*A008595(n+1)` -/
def P10786723688129877255.Spec : Prop :=
  ∀ n, P10786723688129877255.a n = A158220 (n + 1)

end A158220

/-! ## A158220.P15381027876481093775

`A008595(n+1)*A190991(n+1)-A008593(n+1)`
-/

namespace A158220.P15381027876481093775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 (n + 1) * A190991 (n + 1) - A008593 (n + 1)

end

end A158220.P15381027876481093775

namespace A158220

/-- `A008595(n+1)*A190991(n+1)-A008593(n+1)` -/
def P15381027876481093775.Spec : Prop :=
  ∀ n, P15381027876481093775.a n = A158220 (n + 1)

end A158220

/-! ## A158220.P16272884091283403874

`2*(n+1)+A258589(2*(n+1))²`
-/

namespace A158220.P16272884091283403874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + A258589 (2 * (n + 1)) ^ 2

end

end A158220.P16272884091283403874

namespace A158220

/-- `2*(n+1)+A258589(2*(n+1))²` -/
def P16272884091283403874.Spec : Prop :=
  ∀ n, P16272884091283403874.a n = A158220 (n + 1)

end A158220

/-! ## A158220.P5494079632219102286

`2*(n+1)+A112653(2*(n+1))²`
-/

namespace A158220.P5494079632219102286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + A112653 (2 * (n + 1)) ^ 2

end

end A158220.P5494079632219102286

namespace A158220

/-- `2*(n+1)+A112653(2*(n+1))²` -/
def P5494079632219102286.Spec : Prop :=
  ∀ n, P5494079632219102286.a n = A158220 (n + 1)

end A158220

/-! ## A158220.P16497543307810401040

`(n+1)*A153080(A008595(n+1))`
-/

namespace A158220.P16497543307810401040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A153080 (A008595 (n + 1)).toNat

end

end A158220.P16497543307810401040

namespace A158220

/-- `(n+1)*A153080(A008595(n+1))` -/
def P16497543307810401040.Spec : Prop :=
  ∀ n, P16497543307810401040.a n = A158220 (n + 1)

end A158220

/-! ## A158220.P7909931103033100308

`A153080(A176593(2*(n+1)))*(n+1)`
-/

namespace A158220.P7909931103033100308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153080 (A176593 (2 * (n + 1))).toNat * (n + 1 : ℤ)

end

end A158220.P7909931103033100308

namespace A158220

/-- `A153080(A176593(2*(n+1)))*(n+1)` -/
def P7909931103033100308.Spec : Prop :=
  ∀ n, P7909931103033100308.a n = A158220 (n + 1)

end A158220

/-!
# A158221: a(n) = 169n + 1.

The programs for A158221, the canonical program `A158221.P4504856927778256448` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158221 has offset 1).

The definition of A158221 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158221.P4504856927778256448

`2*a(n-1)-a(n-2)` with `a(0)=170, a(1)=339`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A158221

/-- `2*a(n-1)-a(n-2)` -/
def P4504856927778256448.Spec : Prop :=
  ∀ n, P4504856927778256448.a n = A158221 (n + 1)

theorem P4504856927778256448.correct : P4504856927778256448.Spec := by
  intro n
  simp only [A158221, Nat.add_sub_cancel]

end A158221

/-!
# A158222: a(n) = 196*n^2 + 2*n.

The programs for A158222, the canonical program `A158222.P1385835197865250791` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158222 has offset 1).

The definition of A158222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158222.P1385835197865250791

`∑[Δ[(14*n)²]+2]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A158222

/-- `∑[Δ[(14*n)²]+2]` -/
def P1385835197865250791.Spec : Prop :=
  ∀ n, P1385835197865250791.a n = A158222 (n + 1)

theorem P1385835197865250791.correct : P1385835197865250791.Spec := by
  intro n
  simp only [A158222, Nat.add_sub_cancel]

end A158222

/-! ## A158222.P16943324508855300070

`(n+1)*(A158223(n+1)+1)`
-/

namespace A158222.P16943324508855300070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158223 (n + 1) + 1)

end

end A158222.P16943324508855300070

namespace A158222

/-- `(n+1)*(A158223(n+1)+1)` -/
def P16943324508855300070.Spec : Prop :=
  ∀ n, P16943324508855300070.a n = A158222 (n + 1)

end A158222

/-! ## A158222.P4908192250348049689

`A158003(n+1)+3*(n+1)`
-/

namespace A158222.P4908192250348049689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158003 (n + 1) + (3 * (n + 1) : ℤ)

end

end A158222.P4908192250348049689

namespace A158222

/-- `A158003(n+1)+3*(n+1)` -/
def P4908192250348049689.Spec : Prop :=
  ∀ n, P4908192250348049689.a n = A158222 (n + 1)

end A158222

/-! ## A158222.P5016841144776466536

`(n+1)*(A158225(n+1)+3)`
-/

namespace A158222.P5016841144776466536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158225 (n + 1) + 3)

end

end A158222.P5016841144776466536

namespace A158222

/-- `(n+1)*(A158225(n+1)+3)` -/
def P5016841144776466536.Spec : Prop :=
  ∀ n, P5016841144776466536.a n = A158222 (n + 1)

end A158222

/-! ## A158222.P10036180171792968353

`2*(n+1)*A157947(n+1)`
-/

namespace A158222.P10036180171792968353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A157947 (n + 1))

end

end A158222.P10036180171792968353

namespace A158222

/-- `2*(n+1)*A157947(n+1)` -/
def P10036180171792968353.Spec : Prop :=
  ∀ n, P10036180171792968353.a n = A158222 (n + 1)

end A158222

/-! ## A158222.P7249576846975206193

`A158224(n+1)+4*(n+1)`
-/

namespace A158222.P7249576846975206193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158224 (n + 1) + (4 * (n + 1) : ℤ)

end

end A158222.P7249576846975206193

namespace A158222

/-- `A158224(n+1)+4*(n+1)` -/
def P7249576846975206193.Spec : Prop :=
  ∀ n, P7249576846975206193.a n = A158222 (n + 1)

end A158222

/-! ## A158222.P11481255855240725405

`2*(A017270(n+1)-A000217(2*n+1))`
-/

namespace A158222.P11481255855240725405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A017270 (n + 1) - A000217 (2 * n + 1))

end

end A158222.P11481255855240725405

namespace A158222

/-- `2*(A017270(n+1)-A000217(2*n+1))` -/
def P11481255855240725405.Spec : Prop :=
  ∀ n, P11481255855240725405.a n = A158222 (n + 1)

end A158222

/-! ## A158222.P4930503192311850541

`2*(n+1)+A008596(n+1)²`
-/

namespace A158222.P4930503192311850541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + A008596 (n + 1) ^ 2

end

end A158222.P4930503192311850541

namespace A158222

/-- `2*(n+1)+A008596(n+1)²` -/
def P4930503192311850541.Spec : Prop :=
  ∀ n, P4930503192311850541.a n = A158222 (n + 1)

end A158222

/-! ## A158222.P15526313766345336069

`A005843(n+1)+A008596(n+1)*A008596(n+1)`
-/

namespace A158222.P15526313766345336069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + A008596 (n + 1) * A008596 (n + 1)

end

end A158222.P15526313766345336069

namespace A158222

/-- `A005843(n+1)+A008596(n+1)*A008596(n+1)` -/
def P15526313766345336069.Spec : Prop :=
  ∀ n, P15526313766345336069.a n = A158222 (n + 1)

end A158222

/-! ## A158222.P2907401902830835710

`A008598(n+1)+A008596(n+1)*A358053(n+1)`
-/

namespace A158222.P2907401902830835710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008598 (n + 1) + A008596 (n + 1) * A358053 (n + 1)

end

end A158222.P2907401902830835710

namespace A158222

/-- `A008598(n+1)+A008596(n+1)*A358053(n+1)` -/
def P2907401902830835710.Spec : Prop :=
  ∀ n, P2907401902830835710.a n = A158222 (n + 1)

end A158222

/-! ## A158222.P2012157553948026187

`A008596(n+1)*A131877(n+1)-A008594(n+1)`
-/

namespace A158222.P2012157553948026187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008596 (n + 1) * A131877 (n + 1) - A008594 (n + 1)

end

end A158222.P2012157553948026187

namespace A158222

/-- `A008596(n+1)*A131877(n+1)-A008594(n+1)` -/
def P2012157553948026187.Spec : Prop :=
  ∀ n, P2012157553948026187.a n = A158222 (n + 1)

end A158222

/-! ## A158222.P17437193528467314061

`A173141(2*(n+1))`
-/

namespace A158222.P17437193528467314061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173141 (2 * (n + 1))

end

end A158222.P17437193528467314061

namespace A158222

/-- `A173141(2*(n+1))` -/
def P17437193528467314061.Spec : Prop :=
  ∀ n, P17437193528467314061.a n = A158222 (n + 1)

end A158222

/-! ## A158222.P14027199269456375511

`A157365(2*(n+1))-2*(n+1)`
-/

namespace A158222.P14027199269456375511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157365 (2 * (n + 1)) - (2 * (n + 1) : ℤ)

end

end A158222.P14027199269456375511

namespace A158222

/-- `A157365(2*(n+1))-2*(n+1)` -/
def P14027199269456375511.Spec : Prop :=
  ∀ n, P14027199269456375511.a n = A158222 (n + 1)

end A158222

/-! ## A158222.P17862673396574378740

`4*(n+1)+A157923(2*(n+1))`
-/

namespace A158222.P17862673396574378740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) + A157923 (2 * (n + 1))

end

end A158222.P17862673396574378740

namespace A158222

/-- `4*(n+1)+A157923(2*(n+1))` -/
def P17862673396574378740.Spec : Prop :=
  ∀ n, P17862673396574378740.a n = A158222 (n + 1)

end A158222

/-! ## A158222.P3398136374305708439

`2*(n+1)*A158066(2*(n+1))`
-/

namespace A158222.P3398136374305708439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A158066 (2 * (n + 1))

end

end A158222.P3398136374305708439

namespace A158222

/-- `2*(n+1)*A158066(2*(n+1))` -/
def P3398136374305708439.Spec : Prop :=
  ∀ n, P3398136374305708439.a n = A158222 (n + 1)

end A158222

/-! ## A158222.P2178059763442076505

`A158481(2*(n+1))+2*n-5`
-/

namespace A158222.P2178059763442076505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158481 (2 * (n + 1)) + ((2 * n : ℤ) - 5)

end

end A158222.P2178059763442076505

namespace A158222

/-- `A158481(2*(n+1))+2*n-5` -/
def P2178059763442076505.Spec : Prop :=
  ∀ n, P2178059763442076505.a n = A158222 (n + 1)

end A158222

/-! ## A158222.P5327744599047106239

`A158484(2*(n+1))+2*n+9`
-/

namespace A158222.P5327744599047106239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158484 (2 * (n + 1)) + (2 * n + 9 : ℤ)

end

end A158222.P5327744599047106239

namespace A158222

/-- `A158484(2*(n+1))+2*n+9` -/
def P5327744599047106239.Spec : Prop :=
  ∀ n, P5327744599047106239.a n = A158222 (n + 1)

end A158222

/-! ## A158222.P15501923172140837540

`A157919(2*(n+1))-A028387(2*n)`
-/

namespace A158222.P15501923172140837540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157919 (2 * (n + 1)) - A028387 (2 * n)

end

end A158222.P15501923172140837540

namespace A158222

/-- `A157919(2*(n+1))-A028387(2*n)` -/
def P15501923172140837540.Spec : Prop :=
  ∀ n, P15501923172140837540.a n = A158222 (n + 1)

end A158222

/-! ## A158222.P7099460006169100519

`A157919(2*(n+1))+A110331(2*n+1)`
-/

namespace A158222.P7099460006169100519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157919 (2 * (n + 1)) + A110331 (2 * n + 1)

end

end A158222.P7099460006169100519

namespace A158222

/-- `A157919(2*(n+1))+A110331(2*n+1)` -/
def P7099460006169100519.Spec : Prop :=
  ∀ n, P7099460006169100519.a n = A158222 (n + 1)

end A158222

/-!
# A158223: a(n) = 196*n + 1.

The programs for A158223, the canonical program `A158223.P7399403043639864102` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158223 has offset 1).

The definition of A158223 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158223.P7399403043639864102

`2*a(n-1)-a(n-2)` with `a(0)=197, a(1)=393`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158223

/-- `2*a(n-1)-a(n-2)` -/
def P7399403043639864102.Spec : Prop :=
  ∀ n, P7399403043639864102.a n = A158223 (n + 1)

theorem P7399403043639864102.correct : P7399403043639864102.Spec := by
  intro n
  simp only [A158223, Nat.add_sub_cancel]

end A158223

/-!
# A158224: a(n) = 196*n^2 - 2*n.

The programs for A158224, the canonical program `A158224.P3296312501599610147` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158224 has offset 1).

The definition of A158224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158224.P3296312501599610147

`∑[Δ[(14*n)²]-2]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158224

/-- `∑[Δ[(14*n)²]-2]` -/
def P3296312501599610147.Spec : Prop :=
  ∀ n, P3296312501599610147.a n = A158224 (n + 1)

theorem P3296312501599610147.correct : P3296312501599610147.Spec := by
  intro n
  simp only [A158224, Nat.add_sub_cancel]

end A158224

/-! ## A158224.P15049943338887592276

`A158003(n+1)-(n+1)`
-/

namespace A158224.P15049943338887592276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158003 (n + 1) - (n + 1 : ℤ)

end

end A158224.P15049943338887592276

namespace A158224

/-- `A158003(n+1)-(n+1)` -/
def P15049943338887592276.Spec : Prop :=
  ∀ n, P15049943338887592276.a n = A158224 (n + 1)

end A158224

/-! ## A158224.P5392200480527397023

`(n+1)*(A158225(n+1)-1)`
-/

namespace A158224.P5392200480527397023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158225 (n + 1) - 1)

end

end A158224.P5392200480527397023

namespace A158224

/-- `(n+1)*(A158225(n+1)-1)` -/
def P5392200480527397023.Spec : Prop :=
  ∀ n, P5392200480527397023.a n = A158224 (n + 1)

end A158224

/-! ## A158224.P7494288743353805505

`2*(n+1)*A157924(n+1)`
-/

namespace A158224.P7494288743353805505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A157924 (n + 1))

end

end A158224.P7494288743353805505

namespace A158224

/-- `2*(n+1)*A157924(n+1)` -/
def P7494288743353805505.Spec : Prop :=
  ∀ n, P7494288743353805505.a n = A158224 (n + 1)

end A158224

/-! ## A158224.P7971789711916275081

`(n+1)*(A158223(n+1)-3)`
-/

namespace A158224.P7971789711916275081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158223 (n + 1) - 3)

end

end A158224.P7971789711916275081

namespace A158224

/-- `(n+1)*(A158223(n+1)-3)` -/
def P7971789711916275081.Spec : Prop :=
  ∀ n, P7971789711916275081.a n = A158224 (n + 1)

end A158224

/-! ## A158224.P3952249184473181174

`A158222(n+1)-4*(n+1)`
-/

namespace A158224.P3952249184473181174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158222 (n + 1) - (4 * (n + 1) : ℤ)

end

end A158224.P3952249184473181174

namespace A158224

/-- `A158222(n+1)-4*(n+1)` -/
def P3952249184473181174.Spec : Prop :=
  ∀ n, P3952249184473181174.a n = A158224 (n + 1)

end A158224

/-! ## A158224.P7252086617951288374

`A008596(n+1)²-2*(n+1)`
-/

namespace A158224.P7252086617951288374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008596 (n + 1) ^ 2 - (2 * (n + 1) : ℤ)

end

end A158224.P7252086617951288374

namespace A158224

/-- `A008596(n+1)²-2*(n+1)` -/
def P7252086617951288374.Spec : Prop :=
  ∀ n, P7252086617951288374.a n = A158224 (n + 1)

end A158224

/-! ## A158224.P13605283426110603519

`A008596(n+1)*A008596(n+1)-A005843(n+1)`
-/

namespace A158224.P13605283426110603519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008596 (n + 1) * A008596 (n + 1) - A005843 (n + 1)

end

end A158224.P13605283426110603519

namespace A158224

/-- `A008596(n+1)*A008596(n+1)-A005843(n+1)` -/
def P13605283426110603519.Spec : Prop :=
  ∀ n, P13605283426110603519.a n = A158224 (n + 1)

end A158224

/-! ## A158224.P3811327994739653009

`A008596(n+1)*A131877(n+1)-A008598(n+1)`
-/

namespace A158224.P3811327994739653009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008596 (n + 1) * A131877 (n + 1) - A008598 (n + 1)

end

end A158224.P3811327994739653009

namespace A158224

/-- `A008596(n+1)*A131877(n+1)-A008598(n+1)` -/
def P3811327994739653009.Spec : Prop :=
  ∀ n, P3811327994739653009.a n = A158224 (n + 1)

end A158224

/-! ## A158224.P5176260145594141931

`A157923(2*(n+1))`
-/

namespace A158224.P5176260145594141931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157923 (2 * (n + 1))

end

end A158224.P5176260145594141931

namespace A158224

/-- `A157923(2*(n+1))` -/
def P5176260145594141931.Spec : Prop :=
  ∀ n, P5176260145594141931.a n = A158224 (n + 1)

end A158224

/-! ## A158224.P5320176005012662544

`A158484(2*(n+1))+5-2*n`
-/

namespace A158224.P5320176005012662544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158484 (2 * (n + 1)) + (5 - (2 * n : ℤ))

end

end A158224.P5320176005012662544

namespace A158224

/-- `A158484(2*(n+1))+5-2*n` -/
def P5320176005012662544.Spec : Prop :=
  ∀ n, P5320176005012662544.a n = A158224 (n + 1)

end A158224

/-! ## A158224.P16742746490954883777

`A158481(2*(n+1))-(2*n+9)`
-/

namespace A158224.P16742746490954883777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158481 (2 * (n + 1)) - (2 * n + 9 : ℤ)

end

end A158224.P16742746490954883777

namespace A158224

/-- `A158481(2*(n+1))-(2*n+9)` -/
def P16742746490954883777.Spec : Prop :=
  ∀ n, P16742746490954883777.a n = A158224 (n + 1)

end A158224

/-! ## A158224.P6675732283477007198

`(A158066(2*(n+1))-2)*2*(n+1)`
-/

namespace A158224.P6675732283477007198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158066 (2 * (n + 1)) - 2) * (2 * (n + 1) : ℤ)

end

end A158224.P6675732283477007198

namespace A158224

/-- `(A158066(2*(n+1))-2)*2*(n+1)` -/
def P6675732283477007198.Spec : Prop :=
  ∀ n, P6675732283477007198.a n = A158224 (n + 1)

end A158224

/-! ## A158224.P13928155176948899060

`A158222(2*(n+1))%A158222(n+1)`
-/

namespace A158224.P13928155176948899060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158222 (2 * (n + 1))) (A158222 (n + 1))

end

end A158224.P13928155176948899060

namespace A158224

/-- `A158222(2*(n+1))%A158222(n+1)` -/
def P13928155176948899060.Spec : Prop :=
  ∀ n, P13928155176948899060.a n = A158224 (n + 1)

end A158224

/-! ## A158224.P18113236352204726226

`A157919(2*(n+1))-A028387(2*n+1)`
-/

namespace A158224.P18113236352204726226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157919 (2 * (n + 1)) - A028387 (2 * n + 1)

end

end A158224.P18113236352204726226

namespace A158224

/-- `A157919(2*(n+1))-A028387(2*n+1)` -/
def P18113236352204726226.Spec : Prop :=
  ∀ n, P18113236352204726226.a n = A158224 (n + 1)

end A158224

/-! ## A158224.P11314468211582963150

`A158640(2*(n+1))-A144391(2*(n+1))`
-/

namespace A158224.P11314468211582963150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158640 (2 * (n + 1)) - A144391 (2 * (n + 1))

end

end A158224.P11314468211582963150

namespace A158224

/-- `A158640(2*(n+1))-A144391(2*(n+1))` -/
def P11314468211582963150.Spec : Prop :=
  ∀ n, P11314468211582963150.a n = A158224 (n + 1)

end A158224

/-! ## A158224.P13198220488079020454

`A154516(2*(n+1))+A158598(2*(n+1))+1`
-/

namespace A158224.P13198220488079020454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154516 (2 * (n + 1)) + (A158598 (2 * (n + 1)) + 1)

end

end A158224.P13198220488079020454

namespace A158224

/-- `A154516(2*(n+1))+A158598(2*(n+1))+1` -/
def P13198220488079020454.Spec : Prop :=
  ∀ n, P13198220488079020454.a n = A158224 (n + 1)

end A158224

/-! ## A158224.P7609381557632503654

`2*(A158544(2*(n+1))+A000124(2*n+1))`
-/

namespace A158224.P7609381557632503654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A158544 (2 * (n + 1)) + A000124 (2 * n + 1))

end

end A158224.P7609381557632503654

namespace A158224

/-- `2*(A158544(2*(n+1))+A000124(2*n+1))` -/
def P7609381557632503654.Spec : Prop :=
  ∀ n, P7609381557632503654.a n = A158224 (n + 1)

end A158224

/-!
# A158225: a(n) = 196*n - 1.

The programs for A158225, the canonical program `A158225.P11512414152768242869` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158225 has offset 1).

The definition of A158225 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158225.P11512414152768242869

`2*a(n-1)-a(n-2)` with `a(0)=195, a(1)=391`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158225

/-- `2*a(n-1)-a(n-2)` -/
def P11512414152768242869.Spec : Prop :=
  ∀ n, P11512414152768242869.a n = A158225 (n + 1)

theorem P11512414152768242869.correct : P11512414152768242869.Spec := by
  intro n
  simp only [A158225, Nat.add_sub_cancel]

end A158225

/-!
# A158226: a(n) = 225*n^2 - 2*n.

The programs for A158226, the canonical program `A158226.P2252465430527825740` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158226 has offset 1).

The definition of A158226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158226.P2252465430527825740

`∑[Δ[(15*n)²]-2]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158226

/-- `∑[Δ[(15*n)²]-2]` -/
def P2252465430527825740.Spec : Prop :=
  ∀ n, P2252465430527825740.a n = A158226 (n + 1)

theorem P2252465430527825740.correct : P2252465430527825740.Spec := by
  intro n
  simp only [A158226, Nat.add_sub_cancel]

end A158226

/-! ## A158226.P4086943123960631653

`A156813(n+1)-(n+1)`
-/

namespace A158226.P4086943123960631653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156813 (n + 1) - (n + 1 : ℤ)

end

end A158226.P4086943123960631653

namespace A158226

/-- `A156813(n+1)-(n+1)` -/
def P4086943123960631653.Spec : Prop :=
  ∀ n, P4086943123960631653.a n = A158226 (n + 1)

end A158226

/-! ## A158226.P5573373243512121444

`(n+1)*(A158227(n+1)-1)`
-/

namespace A158226.P5573373243512121444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158227 (n + 1) - 1)

end

end A158226.P5573373243512121444

namespace A158226

/-- `(n+1)*(A158227(n+1)-1)` -/
def P5573373243512121444.Spec : Prop :=
  ∀ n, P5573373243512121444.a n = A158226 (n + 1)

end A158226

/-! ## A158226.P2582899425025994919

`A156814(n+1)-3*(n+1)`
-/

namespace A158226.P2582899425025994919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156814 (n + 1) - (3 * (n + 1) : ℤ)

end

end A158226.P2582899425025994919

namespace A158226

/-- `A156814(n+1)-3*(n+1)` -/
def P2582899425025994919.Spec : Prop :=
  ∀ n, P2582899425025994919.a n = A158226 (n + 1)

end A158226

/-! ## A158226.P14937443835649107655

`(n+1)*(A158229(n+1)-3)`
-/

namespace A158226.P14937443835649107655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158229 (n + 1) - 3)

end

end A158226.P14937443835649107655

namespace A158226

/-- `(n+1)*(A158229(n+1)-3)` -/
def P14937443835649107655.Spec : Prop :=
  ∀ n, P14937443835649107655.a n = A158226 (n + 1)

end A158226

/-! ## A158226.P8699916082063686400

`A158228(n+1)-4*(n+1)`
-/

namespace A158226.P8699916082063686400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158228 (n + 1) - (4 * (n + 1) : ℤ)

end

end A158226.P8699916082063686400

namespace A158226

/-- `A158228(n+1)-4*(n+1)` -/
def P8699916082063686400.Spec : Prop :=
  ∀ n, P8699916082063686400.a n = A158226 (n + 1)

end A158226

/-! ## A158226.P14188020833315982233

`A157953(n+1)+A156635(n+1)`
-/

namespace A158226.P14188020833315982233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157953 (n + 1) + A156635 (n + 1)

end

end A158226.P14188020833315982233

namespace A158226

/-- `A157953(n+1)+A156635(n+1)` -/
def P14188020833315982233.Spec : Prop :=
  ∀ n, P14188020833315982233.a n = A158226 (n + 1)

end A158226

/-! ## A158226.P17283298832778596912

`A008597(n+1)²-A004277(n+1)`
-/

namespace A158226.P17283298832778596912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008597 (n + 1) ^ 2 - A004277 (n + 1)

end

end A158226.P17283298832778596912

namespace A158226

/-- `A008597(n+1)²-A004277(n+1)` -/
def P17283298832778596912.Spec : Prop :=
  ∀ n, P17283298832778596912.a n = A158226 (n + 1)

end A158226

/-! ## A158226.P1631422448533110398

`A008597(n+1)²-A005843(n+1)`
-/

namespace A158226.P1631422448533110398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008597 (n + 1) ^ 2 - A005843 (n + 1)

end

end A158226.P1631422448533110398

namespace A158226

/-- `A008597(n+1)²-A005843(n+1)` -/
def P1631422448533110398.Spec : Prop :=
  ∀ n, P1631422448533110398.a n = A158226 (n + 1)

end A158226

/-! ## A158226.P15870814574200293083

`A008591(n+1)*A008607(n+1)-A005843(n+1)`
-/

namespace A158226.P15870814574200293083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (n + 1) * A008607 (n + 1) - A005843 (n + 1)

end

end A158226.P15870814574200293083

namespace A158226

/-- `A008591(n+1)*A008607(n+1)-A005843(n+1)` -/
def P15870814574200293083.Spec : Prop :=
  ∀ n, P15870814574200293083.a n = A158226 (n + 1)

end A158226

/-! ## A158226.P4234448144587480431

`A158658(2*(n+1))+n²`
-/

namespace A158226.P4234448144587480431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158658 (2 * (n + 1)) + (n ^ 2 : ℤ)

end

end A158226.P4234448144587480431

namespace A158226

/-- `A158658(2*(n+1))+n²` -/
def P4234448144587480431.Spec : Prop :=
  ∀ n, P4234448144587480431.a n = A158226 (n + 1)

end A158226

/-! ## A158226.P2901877357003640191

`A158228(2*(n+1))%A158228(n+1)`
-/

namespace A158226.P2901877357003640191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158228 (2 * (n + 1))) (A158228 (n + 1))

end

end A158226.P2901877357003640191

namespace A158226

/-- `A158228(2*(n+1))%A158228(n+1)` -/
def P2901877357003640191.Spec : Prop :=
  ∀ n, P2901877357003640191.a n = A158226 (n + 1)

end A158226

/-! ## A158226.P6366542542863091133

`A157514(3*(n+1))+n+1`
-/

namespace A158226.P6366542542863091133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157514 (3 * (n + 1)) + (n + 1 : ℤ)

end

end A158226.P6366542542863091133

namespace A158226

/-- `A157514(3*(n+1))+n+1` -/
def P6366542542863091133.Spec : Prop :=
  ∀ n, P6366542542863091133.a n = A158226 (n + 1)

end A158226

/-! ## A158226.P14159843583099484793

`(A016897(3*n+2)+1)²-2*(n+1)`
-/

namespace A158226.P14159843583099484793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016897 (3 * n + 2) + 1) ^ 2 - (2 * (n + 1) : ℤ)

end

end A158226.P14159843583099484793

namespace A158226

/-- `(A016897(3*n+2)+1)²-2*(n+1)` -/
def P14159843583099484793.Spec : Prop :=
  ∀ n, P14159843583099484793.a n = A158226 (n + 1)

end A158226

/-! ## A158226.P11797081266616110748

`A158485(4*(n+1))+n²`
-/

namespace A158226.P11797081266616110748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158485 (4 * (n + 1)) + (n ^ 2 : ℤ)

end

end A158226.P11797081266616110748

namespace A158226

/-- `A158485(4*(n+1))+n²` -/
def P11797081266616110748.Spec : Prop :=
  ∀ n, P11797081266616110748.a n = A158226 (n + 1)

end A158226

/-! ## A158226.P7622016933472126421

`A130484(6*(n+1))²-A005843(n+1)`
-/

namespace A158226.P7622016933472126421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130484 (6 * (n + 1)) ^ 2 - A005843 (n + 1)

end

end A158226.P7622016933472126421

namespace A158226

/-- `A130484(6*(n+1))²-A005843(n+1)` -/
def P7622016933472126421.Spec : Prop :=
  ∀ n, P7622016933472126421.a n = A158226 (n + 1)

end A158226

/-! ## A158226.P11503024057475964802

`(A257645(A257645(n))-1)*(n+1)`
-/

namespace A158226.P11503024057475964802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A257645 (A257645 n).toNat - 1) * (n + 1 : ℤ)

end

end A158226.P11503024057475964802

namespace A158226

/-- `(A257645(A257645(n))-1)*(n+1)` -/
def P11503024057475964802.Spec : Prop :=
  ∀ n, P11503024057475964802.a n = A158226 (n + 1)

end A158226

/-!
# A158227: a(n) = 225*n - 1.

The programs for A158227, the canonical program `A158227.P6973232078975703745` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158227 has offset 1).

The definition of A158227 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158227.P6973232078975703745

`2*a(n-1)-a(n-2)` with `a(0)=224, a(1)=449`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158227

/-- `2*a(n-1)-a(n-2)` -/
def P6973232078975703745.Spec : Prop :=
  ∀ n, P6973232078975703745.a n = A158227 (n + 1)

theorem P6973232078975703745.correct : P6973232078975703745.Spec := by
  intro n
  simp only [A158227, Nat.add_sub_cancel]

end A158227

/-!
# A158228: a(n) = 225n^2 + 2n.

The programs for A158228, the canonical program `A158228.P10574601232691787580` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158228 has offset 1).

The definition of A158228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158228.P10574601232691787580

`∑[Δ[(15*n)²]+2]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158228

/-- `∑[Δ[(15*n)²]+2]` -/
def P10574601232691787580.Spec : Prop :=
  ∀ n, P10574601232691787580.a n = A158228 (n + 1)

theorem P10574601232691787580.correct : P10574601232691787580.Spec := by
  intro n
  simp only [A158228, Nat.add_sub_cancel]

end A158228

/-! ## A158228.P14500206842858454915

`A156814(n+1)+1+n`
-/

namespace A158228.P14500206842858454915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156814 (n + 1) + 1 + (n : ℤ)

end

end A158228.P14500206842858454915

namespace A158228

/-- `A156814(n+1)+1+n` -/
def P14500206842858454915.Spec : Prop :=
  ∀ n, P14500206842858454915.a n = A158228 (n + 1)

end A158228

/-! ## A158228.P7854571045297772073

`(n+1)*(A158229(n+1)+1)`
-/

namespace A158228.P7854571045297772073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158229 (n + 1) + 1)

end

end A158228.P7854571045297772073

namespace A158228

/-- `(n+1)*(A158229(n+1)+1)` -/
def P7854571045297772073.Spec : Prop :=
  ∀ n, P7854571045297772073.a n = A158228 (n + 1)

end A158228

/-! ## A158228.P7191665361641135002

`A156813(n+1)+3*(n+1)`
-/

namespace A158228.P7191665361641135002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156813 (n + 1) + (3 * (n + 1) : ℤ)

end

end A158228.P7191665361641135002

namespace A158228

/-- `A156813(n+1)+3*(n+1)` -/
def P7191665361641135002.Spec : Prop :=
  ∀ n, P7191665361641135002.a n = A158228 (n + 1)

end A158228

/-! ## A158228.P7765391876688057178

`(n+1)*(A158227(n+1)+3)`
-/

namespace A158228.P7765391876688057178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158227 (n + 1) + 3)

end

end A158228.P7765391876688057178

namespace A158228

/-- `(n+1)*(A158227(n+1)+3)` -/
def P7765391876688057178.Spec : Prop :=
  ∀ n, P7765391876688057178.a n = A158228 (n + 1)

end A158228

/-! ## A158228.P17190649513717124913

`A158226(n+1)+4*(n+1)`
-/

namespace A158228.P17190649513717124913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158226 (n + 1) + (4 * (n + 1) : ℤ)

end

end A158228.P17190649513717124913

namespace A158228

/-- `A158226(n+1)+4*(n+1)` -/
def P17190649513717124913.Spec : Prop :=
  ∀ n, P17190649513717124913.a n = A158228 (n + 1)

end A158228

/-! ## A158228.P1681288584760291212

`A004277(n+1)+A008597(n+1)²`
-/

namespace A158228.P1681288584760291212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1) + A008597 (n + 1) ^ 2

end

end A158228.P1681288584760291212

namespace A158228

/-- `A004277(n+1)+A008597(n+1)²` -/
def P1681288584760291212.Spec : Prop :=
  ∀ n, P1681288584760291212.a n = A158228 (n + 1)

end A158228

/-! ## A158228.P1137178280284685674

`A005843(n+1)+A008597(n+1)²`
-/

namespace A158228.P1137178280284685674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + A008597 (n + 1) ^ 2

end

end A158228.P1137178280284685674

namespace A158228

/-- `A005843(n+1)+A008597(n+1)²` -/
def P1137178280284685674.Spec : Prop :=
  ∀ n, P1137178280284685674.a n = A158228 (n + 1)

end A158228

/-! ## A158228.P17287391194703731521

`A005843(n+1)+A008591(n+1)*A008607(n+1)`
-/

namespace A158228.P17287391194703731521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + A008591 (n + 1) * A008607 (n + 1)

end

end A158228.P17287391194703731521

namespace A158228

/-- `A005843(n+1)+A008591(n+1)*A008607(n+1)` -/
def P17287391194703731521.Spec : Prop :=
  ∀ n, P17287391194703731521.a n = A158228 (n + 1)

end A158228

/-! ## A158228.P8588484901568351505

`(xor(1, (15*(n+1))²+1+n)+n)%(A173089(n+5)^4)`
-/

namespace A158228.P8588484901568351505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.xor 1 ((15 * (n + 1)) ^ 2 + 1 + n) + n : ℤ) (A173089 (n + 5) ^ 4)

end

end A158228.P8588484901568351505

namespace A158228

/-- `(xor(1, (15*(n+1))²+1+n)+n)%(A173089(n+5)^4)` -/
def P8588484901568351505.Spec : Prop :=
  ∀ n, P8588484901568351505.a n = A158228 (n + 1)

end A158228

/-! ## A158228.P18296092019168043552

`A173089(3*(n+1))-(n+1)`
-/

namespace A158228.P18296092019168043552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173089 (3 * (n + 1)) - (n + 1 : ℤ)

end

end A158228.P18296092019168043552

namespace A158228

/-- `A173089(3*(n+1))-(n+1)` -/
def P18296092019168043552.Spec : Prop :=
  ∀ n, P18296092019168043552.a n = A158228 (n + 1)

end A158228

/-! ## A158228.P9069964882099470712

`A005843(n+1)+A130484(6*(n+1))²`
-/

namespace A158228.P9069964882099470712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + A130484 (6 * (n + 1)) ^ 2

end

end A158228.P9069964882099470712

namespace A158228

/-- `A005843(n+1)+A130484(6*(n+1))²` -/
def P9069964882099470712.Spec : Prop :=
  ∀ n, P9069964882099470712.a n = A158228 (n + 1)

end A158228

/-! ## A158228.P7406442930194922285

`∩[xor(1, (15*(n+1))²+1+n)+n, ∪[xor(1, (15*(n+1))²+1+n)+n, 15*15*(n+1)+1]]`
-/

namespace A158228.P7406442930194922285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((15 * (n + 1)) ^ 2 + 1 + n) + n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((15 * (n + 1)) ^ 2 + 1 + n) + n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 * (15 * (n + 1)) + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = x) ∨ ∃ j, f4 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n

end

end A158228.P7406442930194922285

namespace A158228

/-- `∩[xor(1, (15*(n+1))²+1+n)+n, ∪[xor(1, (15*(n+1))²+1+n)+n, 15*15*(n+1)+1]]` -/
def P7406442930194922285.Spec : Prop :=
  ∀ n, (P7406442930194922285.a n : ℤ) = A158228 (n + 1)

end A158228

/-! ## A158228.P1655985929373204524

`(n+1)*A016873(A008597(A008585(n+1)))`
-/

namespace A158228.P1655985929373204524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A016873 (A008597 (A008585 (n + 1)).toNat).toNat

end

end A158228.P1655985929373204524

namespace A158228

/-- `(n+1)*A016873(A008597(A008585(n+1)))` -/
def P1655985929373204524.Spec : Prop :=
  ∀ n, P1655985929373204524.a n = A158228 (n + 1)

end A158228

/-! ## A158228.P10034965875637570201

`A096367(3*(n+1))%2+(15*(n+1))²+1+n-xor(n, -1)`
-/

namespace A158228.P10034965875637570201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096367 (3 * (n + 1))) 2 + (((15 * (n + 1)) ^ 2 + 1 + n : ℤ) - Int.xor (n : ℤ) (-1))

end

end A158228.P10034965875637570201

namespace A158228

/-- `A096367(3*(n+1))%2+(15*(n+1))²+1+n-xor(n, -1)` -/
def P10034965875637570201.Spec : Prop :=
  ∀ n, P10034965875637570201.a n = A158228 (n + 1)

end A158228

/-!
# A158229: a(n) = 225*n + 1.

The programs for A158229, the canonical program `A158229.P14051922461054792836` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158229 has offset 1).

The definition of A158229 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158229.P14051922461054792836

`2*a(n-1)-a(n-2)` with `a(0)=226, a(1)=451`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158229

/-- `2*a(n-1)-a(n-2)` -/
def P14051922461054792836.Spec : Prop :=
  ∀ n, P14051922461054792836.a n = A158229 (n + 1)

theorem P14051922461054792836.correct : P14051922461054792836.Spec := by
  intro n
  simp only [A158229, Nat.add_sub_cancel]

end A158229

/-!
# A158230: a(n) = 256*n^2 + 2*n.

The programs for A158230, the canonical program `A158230.P12280008345844654479` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158230 has offset 1).

The definition of A158230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158230.P12280008345844654479

`∑[Δ[(16*n)²]+2]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158230

/-- `∑[Δ[(16*n)²]+2]` -/
def P12280008345844654479.Spec : Prop :=
  ∀ n, P12280008345844654479.a n = A158230 (n + 1)

theorem P12280008345844654479.correct : P12280008345844654479.Spec := by
  intro n
  simp only [A158230, Nat.add_sub_cancel]

end A158230

/-! ## A158230.P12171887627530799368

`(n+1)*(A158231(n+1)+1)`
-/

namespace A158230.P12171887627530799368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158231 (n + 1) + 1)

end

end A158230.P12171887627530799368

namespace A158230

/-- `(n+1)*(A158231(n+1)+1)` -/
def P12171887627530799368.Spec : Prop :=
  ∀ n, P12171887627530799368.a n = A158230 (n + 1)

end A158230

/-! ## A158230.P12372449248136904310

`A158010(n+1)+3*(n+1)`
-/

namespace A158230.P12372449248136904310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158010 (n + 1) + (3 * (n + 1) : ℤ)

end

end A158230.P12372449248136904310

namespace A158230

/-- `A158010(n+1)+3*(n+1)` -/
def P12372449248136904310.Spec : Prop :=
  ∀ n, P12372449248136904310.a n = A158230 (n + 1)

end A158230

/-! ## A158230.P6832202719331388453

`(n+1)*(A158250(n+1)+3)`
-/

namespace A158230.P6832202719331388453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158250 (n + 1) + 3)

end

end A158230.P6832202719331388453

namespace A158230

/-- `(n+1)*(A158250(n+1)+3)` -/
def P6832202719331388453.Spec : Prop :=
  ∀ n, P6832202719331388453.a n = A158230 (n + 1)

end A158230

/-! ## A158230.P4832449725835840323

`2*(n+1)*A157951(n+1)`
-/

namespace A158230.P4832449725835840323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A157951 (n + 1))

end

end A158230.P4832449725835840323

namespace A158230

/-- `2*(n+1)*A157951(n+1)` -/
def P4832449725835840323.Spec : Prop :=
  ∀ n, P4832449725835840323.a n = A158230 (n + 1)

end A158230

/-! ## A158230.P9223471190902495173

`A158249(n+1)+4*(n+1)`
-/

namespace A158230.P9223471190902495173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158249 (n + 1) + (4 * (n + 1) : ℤ)

end

end A158230.P9223471190902495173

namespace A158230

/-- `A158249(n+1)+4*(n+1)` -/
def P9223471190902495173.Spec : Prop :=
  ∀ n, P9223471190902495173.a n = A158230 (n + 1)

end A158230

/-! ## A158230.P6280894752942105788

`(A016789(n)-n)*A157951(n+1)`
-/

namespace A158230.P6280894752942105788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016789 n - (n : ℤ)) * A157951 (n + 1)

end

end A158230.P6280894752942105788

namespace A158230

/-- `(A016789(n)-n)*A157951(n+1)` -/
def P6280894752942105788.Spec : Prop :=
  ∀ n, P6280894752942105788.a n = A158230 (n + 1)

end A158230

/-! ## A158230.P13246933130884382683

`2*(n+1)+A008598(n+1)²`
-/

namespace A158230.P13246933130884382683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + A008598 (n + 1) ^ 2

end

end A158230.P13246933130884382683

namespace A158230

/-- `2*(n+1)+A008598(n+1)²` -/
def P13246933130884382683.Spec : Prop :=
  ∀ n, P13246933130884382683.a n = A158230 (n + 1)

end A158230

/-! ## A158230.P2959968713639948038

`A158057(n+1)²-A128470(n+1)`
-/

namespace A158230.P2959968713639948038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 (n + 1) ^ 2 - A128470 (n + 1)

end

end A158230.P2959968713639948038

namespace A158230

/-- `A158057(n+1)²-A128470(n+1)` -/
def P2959968713639948038.Spec : Prop :=
  ∀ n, P2959968713639948038.a n = A158230 (n + 1)

end A158230

/-! ## A158230.P8066248655699982846

`A005843(n+1)+A008598(n+1)*A008598(n+1)`
-/

namespace A158230.P8066248655699982846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + A008598 (n + 1) * A008598 (n + 1)

end

end A158230.P8066248655699982846

namespace A158230

/-- `A005843(n+1)+A008598(n+1)*A008598(n+1)` -/
def P8066248655699982846.Spec : Prop :=
  ∀ n, P8066248655699982846.a n = A158230 (n + 1)

end A158230

/-! ## A158230.P1216478172596341141

`4*(n+1)+A157948(2*(n+1))`
-/

namespace A158230.P1216478172596341141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) + A157948 (2 * (n + 1))

end

end A158230.P1216478172596341141

namespace A158230

/-- `4*(n+1)+A157948(2*(n+1))` -/
def P1216478172596341141.Spec : Prop :=
  ∀ n, P1216478172596341141.a n = A158230 (n + 1)

end A158230

/-! ## A158230.P1079727750283430861

`2*(n+1)*A158071(2*(n+1))`
-/

namespace A158230.P1079727750283430861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A158071 (2 * (n + 1))

end

end A158230.P1079727750283430861

namespace A158230

/-- `2*(n+1)*A158071(2*(n+1))` -/
def P1079727750283430861.Spec : Prop :=
  ∀ n, P1079727750283430861.a n = A158230 (n + 1)

end A158230

/-! ## A158230.P12591280060155406254

`A158684(2*(n+1))+2*n+3`
-/

namespace A158230.P12591280060155406254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158684 (2 * (n + 1)) + (2 * n + 3 : ℤ)

end

end A158230.P12591280060155406254

namespace A158230

/-- `A158684(2*(n+1))+2*n+3` -/
def P12591280060155406254.Spec : Prop :=
  ∀ n, P12591280060155406254.a n = A158230 (n + 1)

end A158230

/-! ## A158230.P4446953875861772682

`A158686(2*(n+1))+2*n+1`
-/

namespace A158230.P4446953875861772682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158686 (2 * (n + 1)) + (2 * n + 1 : ℤ)

end

end A158230.P4446953875861772682

namespace A158230

/-- `A158686(2*(n+1))+2*n+1` -/
def P4446953875861772682.Spec : Prop :=
  ∀ n, P4446953875861772682.a n = A158230 (n + 1)

end A158230

/-! ## A158230.P14172475404594549192

`A004277(n+1)+A008590(A004277(n+1))²`
-/

namespace A158230.P14172475404594549192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1) + A008590 (A004277 (n + 1)).toNat ^ 2

end

end A158230.P14172475404594549192

namespace A158230

/-- `A004277(n+1)+A008590(A004277(n+1))²` -/
def P14172475404594549192.Spec : Prop :=
  ∀ n, P14172475404594549192.a n = A158230 (n + 1)

end A158230

/-! ## A158230.P14781427342512160793

`A004277(n+1)+A008574(A008574(n+1))²`
-/

namespace A158230.P14781427342512160793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1) + A008574 (A008574 (n + 1)).toNat ^ 2

end

end A158230.P14781427342512160793

namespace A158230

/-- `A004277(n+1)+A008574(A008574(n+1))²` -/
def P14781427342512160793.Spec : Prop :=
  ∀ n, P14781427342512160793.a n = A158230 (n + 1)

end A158230

/-! ## A158230.P1628083477929997249

`A005843(n+1)+A008574(A008574(n+1))²`
-/

namespace A158230.P1628083477929997249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + A008574 (A008574 (n + 1)).toNat ^ 2

end

end A158230.P1628083477929997249

namespace A158230

/-- `A005843(n+1)+A008574(A008574(n+1))²` -/
def P1628083477929997249.Spec : Prop :=
  ∀ n, P1628083477929997249.a n = A158230 (n + 1)

end A158230

/-! ## A158230.P10453846227867451732

`A005899(A008590(n+1))+2*n`
-/

namespace A158230.P10453846227867451732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 (A008590 (n + 1)).toNat + (2 * n : ℤ)

end

end A158230.P10453846227867451732

namespace A158230

/-- `A005899(A008590(n+1))+2*n` -/
def P10453846227867451732.Spec : Prop :=
  ∀ n, P10453846227867451732.a n = A158230 (n + 1)

end A158230

/-! ## A158230.P13964567974639841067

`A005899(A022144(n+1))+2*n`
-/

namespace A158230.P13964567974639841067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 (A022144 (n + 1)).toNat + (2 * n : ℤ)

end

end A158230.P13964567974639841067

namespace A158230

/-- `A005899(A022144(n+1))+2*n` -/
def P13964567974639841067.Spec : Prop :=
  ∀ n, P13964567974639841067.a n = A158230 (n + 1)

end A158230

/-!
# A158231: a(n) = 256*n + 1.

The programs for A158231, the canonical program `A158231.P7748342430342853487` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158231 has offset 1).

The definition of A158231 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158231.P7748342430342853487

`2*a(n-1)-a(n-2)` with `a(0)=257, a(1)=513`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158231

/-- `2*a(n-1)-a(n-2)` -/
def P7748342430342853487.Spec : Prop :=
  ∀ n, P7748342430342853487.a n = A158231 (n + 1)

theorem P7748342430342853487.correct : P7748342430342853487.Spec := by
  intro n
  simp only [A158231, Nat.add_sub_cancel]

end A158231

/-!
# A158233: a(n) = A120070(n+1)*A120070(n+2) mod 9.

The programs for A158233, the canonical program `A158233.P11105572687020683918` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158233 has offset 1).

The definition of A158233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158233.P11105572687020683918

`(A120070(n+3)*A120070(n+2))%9`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A158233

/-- `(A120070(n+3)*A120070(n+2))%9` -/
def P11105572687020683918.Spec : Prop :=
  ∀ n, P11105572687020683918.a n = A158233 (n + 1)

theorem P11105572687020683918.correct : P11105572687020683918.Spec := by
  intro n
  simp only [A158233, Nat.add_sub_cancel]

end A158233

/-! ## A158233.P18131162097658267114

`A010878(A120070(n+2)*A120070(n+3))`
-/

namespace A158233.P18131162097658267114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (A120070 (n + 2) * A120070 (n + 3)).toNat

end

end A158233.P18131162097658267114

namespace A158233

/-- `A010878(A120070(n+2)*A120070(n+3))` -/
def P18131162097658267114.Spec : Prop :=
  ∀ n, P18131162097658267114.a n = A158233 (n + 1)

end A158233

/-!
# A158235: Numbers n whose square can be represented as a repdigit number in some base less than n.

The programs for A158235, there is no canonical definition to state claims against.
-/

/-! ## A158235.P12692916624485228556

`sqrt(A326710(n+2))`
-/

namespace A158235.P12692916624485228556
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A326710 (n + 2) : ℝ)

end

end A158235.P12692916624485228556

/-! ## A158235.P16696222416612426140

`∑{d}[root(A326710(n+2), 2), A000010(#)]`
-/

namespace A158235.P16696222416612426140
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A326710 (n + 2) : ℝ) ^ (1 / (2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000010 d

end

end A158235.P16696222416612426140

/-! ## A158235.P887926139627968777

`root(A326710(n+2), 2)*A007318(∑[n])`
-/

namespace A158235.P887926139627968777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A326710 (n + 2) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A158235.P887926139627968777

/-! ## A158235.P9216026087479858571

`root(A326710(n+2), A020639(4*(n+1)))`
-/

namespace A158235.P9216026087479858571
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A326710 (n + 2) : ℝ) ^ (1 / (A020639 (4 * (n + 1)) : ℝ))

end

end A158235.P9216026087479858571

/-! ## A158235.P6735670403188506452

`root(A326710(n+2), 2)*ceil(1/A007318(n))`
-/

namespace A158235.P6735670403188506452
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A326710 (n + 2) : ℝ) ^ (1 / (2 : ℝ)) * (⌈1 / (A007318 n : ℚ)⌉ : ℝ)

end

end A158235.P6735670403188506452

/-!
# A158237: The repdigit for the numbers in A158235.

The programs for A158237, there is no canonical definition to state claims against.
-/

/-! ## A158237.P5366300139616194435

`A158235(n+1)²%A158236(n+1)`
-/

namespace A158237.P5366300139616194435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158235 (n + 1) ^ 2) (A158236 (n + 1))

end

end A158237.P5366300139616194435

/-! ## A158237.P11514167805034897135

`(A158235(n+1)^(2%A158245(n+1)))%A158236(n+1)`
-/

namespace A158237.P11514167805034897135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A158235 (n + 1) : ℚ) ^ (Int.tmod 2 (A158245 (n + 1)) : ℤ))) (A158236 (n + 1))

end

end A158237.P11514167805034897135

/-! ## A158237.P14903878386633738047

`A326710(n+2)%A158236(n+1)`
-/

namespace A158237.P14903878386633738047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326710 (n + 2)) (A158236 (n + 1))

end

end A158237.P14903878386633738047

/-!
# A158238: Primes p such that (p-7)/8 and 8p + 7 are both prime.

The programs for A158238, there is no canonical definition to state claims against.
-/

/-! ## A158238.P6150427311687653915

`8*A023263(n+1)+7`
-/

namespace A158238.P6150427311687653915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A023263 (n + 1) + 7

end

end A158238.P6150427311687653915

/-! ## A158238.P9218154636073803980

`A000118(A023263(n+1))-1`
-/

namespace A158238.P9218154636073803980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (A023263 (n + 1)).toNat - 1

end

end A158238.P9218154636073803980

/-! ## A158238.P5207715825195862383

`A057428(n+1)+A000118(A023263(n+1))`
-/

namespace A158238.P5207715825195862383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A000118 (A023263 (n + 1)).toNat

end

end A158238.P5207715825195862383

/-! ## A158238.P16264248293177875089

`A134824(n+2)+A000118(A023263(n+1))`
-/

namespace A158238.P16264248293177875089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A000118 (A023263 (n + 1)).toNat

end

end A158238.P16264248293177875089

/-! ## A158238.P8705821404656346789

`A033999(A045805(n+1))+A000118(A023263(n+1))`
-/

namespace A158238.P8705821404656346789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A045805 (n + 1)).toNat + A000118 (A023263 (n + 1)).toNat

end

end A158238.P8705821404656346789

/-! ## A158238.P15155226509868287746

`A033999(A176393(n+1))+A000118(A023263(n+1))`
-/

namespace A158238.P15155226509868287746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A176393 (n + 1)).toNat + A000118 (A023263 (n + 1)).toNat

end

end A158238.P15155226509868287746

/-! ## A158238.P790751061573839705

`A062157(A277570(n+1))+A000118(A023263(n+1))`
-/

namespace A158238.P790751061573839705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A277570 (n + 1)).toNat + A000118 (A023263 (n + 1)).toNat

end

end A158238.P790751061573839705

/-! ## A158238.P15374688122017399005

`A318656(A340752(n+1))+A000118(A023263(n+1))`
-/

namespace A158238.P15374688122017399005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318656 (A340752 (n + 1)).toNat + A000118 (A023263 (n + 1)).toNat

end

end A158238.P15374688122017399005

/-! ## A158238.P6269314464974331932

`A318656(A000040(n+2))+A000118(A023263(n+1))`
-/

namespace A158238.P6269314464974331932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318656 (A000040 (n + 2)).toNat + A000118 (A023263 (n + 1)).toNat

end

end A158238.P6269314464974331932

/-! ## A158238.P2565257345841318095

`A004771(A023263(n+1))`
-/

namespace A158238.P2565257345841318095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (A023263 (n + 1)).toNat

end

end A158238.P2565257345841318095

/-!
# A158242: Smallest n-digit number with distinct digits such that every k-digit substring (k <= n) taken from the left is divisible by k (k = 1..n).

The programs for A158242, there is no canonical definition to state claims against.
-/

/-! ## A158242.P7399034823197762140

`A321800(A178501(n))+10*a(n-1)+1+n` with `a(0)=1, a(1)=10`
-/

namespace A158242.P7399034823197762140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  A321800 (A178501 n).toNat + (10 * a (n - 1) + 1) + (n : ℤ)

end

end A158242.P7399034823197762140

/-! ## A158242.P6923660216238586810

`A156609(n+3)+A129308(5^n+1)+10*a(n-1)` with `a(0)=1`
-/

namespace A158242.P6923660216238586810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A156609 (n + 3) + (A129308 (5 ^ n + 1) + 10 * a (n - 1))

end

end A158242.P6923660216238586810

/-!
# A158243: Derangements with at least one 2-cycle.

The programs for A158243, there is no canonical definition to state claims against.
-/

/-! ## A158243.P4616598842214360904

`A000166(n)-A038205(n)`
-/

namespace A158243.P4616598842214360904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n - A038205 n

end

end A158243.P4616598842214360904

/-! ## A158243.P9426388747742187431

`abs(A182386(n))-A038205(n)`
-/

namespace A158243.P9426388747742187431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182386 n| - A038205 n

end

end A158243.P9426388747742187431

/-! ## A158243.P11374539855006523880

`A068106(∑[n])-A038205(n)`
-/

namespace A158243.P11374539855006523880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (∑ j ∈ Finset.range (n + 1), f1 j) - A038205 n

end

end A158243.P11374539855006523880

/-! ## A158243.P9731800728372788769

`A060475(A000096(n))-A038205(n)`
-/

namespace A158243.P9731800728372788769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (A000096 n).toNat - A038205 n

end

end A158243.P9731800728372788769

/-! ## A158243.P1314685044101211436

`A000166(n)-A162974(A002620(n+1))`
-/

namespace A158243.P1314685044101211436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n - A162974 (A002620 (n + 1)).toNat

end

end A158243.P1314685044101211436

/-! ## A158243.P6527433974715802675

`A145877(A238531(n))%A000142(n)`
-/

namespace A158243.P6527433974715802675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145877 (A238531 n).toNat) (A000142 n)

end

end A158243.P6527433974715802675

/-! ## A158243.P16140411378461755622

`A047920(A175631(n+3))-A038205(n)`
-/

namespace A158243.P16140411378461755622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A175631 (n + 3)).toNat - A038205 n

end

end A158243.P16140411378461755622

/-!
# A158245: Primitive numbers in A158235.

The programs for A158245, there is no canonical definition to state claims against.
-/

/-! ## A158245.P15968935620143239211

`A158235(A001912(n+1)^A047010(n))`
-/

namespace A158245.P15968935620143239211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158235 (SequenceMachineLib.roundAway ((A001912 (n + 1) : ℚ) ^ (A047010 n : ℤ))).toNat

end

end A158245.P15968935620143239211

/-! ## A158245.P17467283564831935977

`A158235(A001912(n+1)%A112565(3*(n+1)))`
-/

namespace A158245.P17467283564831935977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158235 (Int.tmod (A001912 (n + 1)) (A112565 (3 * (n + 1)))).toNat

end

end A158245.P17467283564831935977

/-!
# A158248: Composite numbers with primitive root 10.

The programs for A158248, there is no canonical definition to state claims against.
-/

/-! ## A158248.P16314569448541075713

`∩[A001597(n+1), A167797(n+1)]`
-/

namespace A158248.P16314569448541075713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158248.P16314569448541075713

/-! ## A158248.P3952170049970186674

`∩[A001694(n+1), A167797(n+1)]`
-/

namespace A158248.P3952170049970186674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158248.P3952170049970186674

/-! ## A158248.P16392915216145170334

`∩[A025475(n+1), A167797(n+1)]`
-/

namespace A158248.P16392915216145170334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158248.P16392915216145170334

/-! ## A158248.P17372092034338262424

`∩[A057109(n+1), A167797(n+1)]`
-/

namespace A158248.P17372092034338262424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158248.P17372092034338262424

/-! ## A158248.P17274329916170564137

`∩[A062739(n+1), A167797(n+1)]`
-/

namespace A158248.P17274329916170564137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158248.P17274329916170564137

/-!
# A158249: a(n) = 256*n^2 - 2*n.

The programs for A158249, the canonical program `A158249.P3720389428516965242` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158249 has offset 1).

The definition of A158249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158249.P3720389428516965242

`∑[Δ[(16*n)²]-2]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158249

/-- `∑[Δ[(16*n)²]-2]` -/
def P3720389428516965242.Spec : Prop :=
  ∀ n, P3720389428516965242.a n = A158249 (n + 1)

theorem P3720389428516965242.correct : P3720389428516965242.Spec := by
  intro n
  simp only [A158249, Nat.add_sub_cancel]

end A158249

/-! ## A158249.P17820652003584958190

`A158010(n+1)-(n+1)`
-/

namespace A158249.P17820652003584958190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158010 (n + 1) - (n + 1 : ℤ)

end

end A158249.P17820652003584958190

namespace A158249

/-- `A158010(n+1)-(n+1)` -/
def P17820652003584958190.Spec : Prop :=
  ∀ n, P17820652003584958190.a n = A158249 (n + 1)

end A158249

/-! ## A158249.P9883330868877864792

`(n+1)*(A158250(n+1)-1)`
-/

namespace A158249.P9883330868877864792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158250 (n + 1) - 1)

end

end A158249.P9883330868877864792

namespace A158249

/-- `(n+1)*(A158250(n+1)-1)` -/
def P9883330868877864792.Spec : Prop :=
  ∀ n, P9883330868877864792.a n = A158249 (n + 1)

end A158249

/-! ## A158249.P6323603811227944836

`2*(n+1)*A157949(n+1)`
-/

namespace A158249.P6323603811227944836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A157949 (n + 1))

end

end A158249.P6323603811227944836

namespace A158249

/-- `2*(n+1)*A157949(n+1)` -/
def P6323603811227944836.Spec : Prop :=
  ∀ n, P6323603811227944836.a n = A158249 (n + 1)

end A158249

/-! ## A158249.P4475227319343246115

`(n+1)*(A158231(n+1)-3)`
-/

namespace A158249.P4475227319343246115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158231 (n + 1) - 3)

end

end A158249.P4475227319343246115

namespace A158249

/-- `(n+1)*(A158231(n+1)-3)` -/
def P4475227319343246115.Spec : Prop :=
  ∀ n, P4475227319343246115.a n = A158249 (n + 1)

end A158249

/-! ## A158249.P14429783172608374820

`A158230(n+1)-4*(n+1)`
-/

namespace A158249.P14429783172608374820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158230 (n + 1) - (4 * (n + 1) : ℤ)

end

end A158249.P14429783172608374820

namespace A158249

/-- `A158230(n+1)-4*(n+1)` -/
def P14429783172608374820.Spec : Prop :=
  ∀ n, P14429783172608374820.a n = A158249 (n + 1)

end A158249

/-! ## A158249.P1434563641664378873

`A008598(n+1)²-2*(n+1)`
-/

namespace A158249.P1434563641664378873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008598 (n + 1) ^ 2 - (2 * (n + 1) : ℤ)

end

end A158249.P1434563641664378873

namespace A158249

/-- `A008598(n+1)²-2*(n+1)` -/
def P1434563641664378873.Spec : Prop :=
  ∀ n, P1434563641664378873.a n = A158249 (n + 1)

end A158249

/-! ## A158249.P9171105997981680731

`(A158563(n+2)-A244082(n))*A005843(n+1)`
-/

namespace A158249.P9171105997981680731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158563 (n + 2) - A244082 n) * A005843 (n + 1)

end

end A158249.P9171105997981680731

namespace A158249

/-- `(A158563(n+2)-A244082(n))*A005843(n+1)` -/
def P9171105997981680731.Spec : Prop :=
  ∀ n, P9171105997981680731.a n = A158249 (n + 1)

end A158249

/-! ## A158249.P3595335836621654033

`A008598(n+1)*A008598(n+1)-A005843(n+1)`
-/

namespace A158249.P3595335836621654033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008598 (n + 1) * A008598 (n + 1) - A005843 (n + 1)

end

end A158249.P3595335836621654033

namespace A158249

/-- `A008598(n+1)*A008598(n+1)-A005843(n+1)` -/
def P3595335836621654033.Spec : Prop :=
  ∀ n, P3595335836621654033.a n = A158249 (n + 1)

end A158249

/-! ## A158249.P2376779853563445028

`A157948(2*(n+1))`
-/

namespace A158249.P2376779853563445028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157948 (2 * (n + 1))

end

end A158249.P2376779853563445028

namespace A158249

/-- `A157948(2*(n+1))` -/
def P2376779853563445028.Spec : Prop :=
  ∀ n, P2376779853563445028.a n = A158249 (n + 1)

end A158249

/-! ## A158249.P1422458559395186355

`2*(A158563(2*(n+1))-n)`
-/

namespace A158249.P1422458559395186355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A158563 (2 * (n + 1)) - (n : ℤ))

end

end A158249.P1422458559395186355

namespace A158249

/-- `2*(A158563(2*(n+1))-n)` -/
def P1422458559395186355.Spec : Prop :=
  ∀ n, P1422458559395186355.a n = A158249 (n + 1)

end A158249

/-! ## A158249.P4851507342537258384

`A158684(2*(n+1))-Δ[n²]`
-/

namespace A158249.P4851507342537258384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158684 (2 * (n + 1)) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A158249.P4851507342537258384

namespace A158249

/-- `A158684(2*(n+1))-Δ[n²]` -/
def P4851507342537258384.Spec : Prop :=
  ∀ n, P4851507342537258384.a n = A158249 (n + 1)

end A158249

/-! ## A158249.P14184447873126434430

`A158487(2*(n+1))+2*(3-n)`
-/

namespace A158249.P14184447873126434430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158487 (2 * (n + 1)) + 2 * (3 - (n : ℤ))

end

end A158249.P14184447873126434430

namespace A158249

/-- `A158487(2*(n+1))+2*(3-n)` -/
def P14184447873126434430.Spec : Prop :=
  ∀ n, P14184447873126434430.a n = A158249 (n + 1)

end A158249

/-! ## A158249.P14513623406981845605

`A158488(2*(n+1))-2*(n+5)`
-/

namespace A158249.P14513623406981845605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158488 (2 * (n + 1)) - (2 * (n + 5) : ℤ)

end

end A158249.P14513623406981845605

namespace A158249

/-- `A158488(2*(n+1))-2*(n+5)` -/
def P14513623406981845605.Spec : Prop :=
  ∀ n, P14513623406981845605.a n = A158249 (n + 1)

end A158249

/-! ## A158249.P4133207332484366672

`A157913(2*(n+1))+2*(7-n)`
-/

namespace A158249.P4133207332484366672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157913 (2 * (n + 1)) + 2 * (7 - (n : ℤ))

end

end A158249.P4133207332484366672

namespace A158249

/-- `A157913(2*(n+1))+2*(7-n)` -/
def P4133207332484366672.Spec : Prop :=
  ∀ n, P4133207332484366672.a n = A158249 (n + 1)

end A158249

/-! ## A158249.P15814451070565315718

`A158067(2*(n+1))+A005843(n+1)`
-/

namespace A158249.P15814451070565315718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158067 (2 * (n + 1)) + A005843 (n + 1)

end

end A158249.P15814451070565315718

namespace A158249

/-- `A158067(2*(n+1))+A005843(n+1)` -/
def P15814451070565315718.Spec : Prop :=
  ∀ n, P15814451070565315718.a n = A158249 (n + 1)

end A158249

/-! ## A158249.P17837777632929281842

`A158230(2*(n+1))%A158230(n+1)`
-/

namespace A158249.P17837777632929281842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158230 (2 * (n + 1))) (A158230 (n + 1))

end

end A158249.P17837777632929281842

namespace A158249

/-- `A158230(2*(n+1))%A158230(n+1)` -/
def P17837777632929281842.Spec : Prop :=
  ∀ n, P17837777632929281842.a n = A158249 (n + 1)

end A158249

/-! ## A158249.P4612113591608958749

`A257645(2*n+1)+A017150(2*n+1)`
-/

namespace A158249.P4612113591608958749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257645 (2 * n + 1) + A017150 (2 * n + 1)

end

end A158249.P4612113591608958749

namespace A158249

/-- `A257645(2*n+1)+A017150(2*n+1)` -/
def P4612113591608958749.Spec : Prop :=
  ∀ n, P4612113591608958749.a n = A158249 (n + 1)

end A158249

/-! ## A158249.P1522266485241017570

`A158684(2*(n+1))+A001489(2*n)-1`
-/

namespace A158249.P1522266485241017570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158684 (2 * (n + 1)) + A001489 (2 * n) - 1

end

end A158249.P1522266485241017570

namespace A158249

/-- `A158684(2*(n+1))+A001489(2*n)-1` -/
def P1522266485241017570.Spec : Prop :=
  ∀ n, P1522266485241017570.a n = A158249 (n + 1)

end A158249

/-!
# A158250: a(n) = 256*n - 1.

The programs for A158250, the canonical program `A158250.P10313268480840785425` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158250 has offset 1).

The definition of A158250 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158250.P10313268480840785425

`2*a(n-1)-a(n-2)` with `a(0)=255, a(1)=511`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158250

/-- `2*a(n-1)-a(n-2)` -/
def P10313268480840785425.Spec : Prop :=
  ∀ n, P10313268480840785425.a n = A158250 (n + 1)

theorem P10313268480840785425.correct : P10313268480840785425.Spec := by
  intro n
  simp only [A158250, Nat.add_sub_cancel]

end A158250

/-!
# A158251: a(n)=S(S(n)) where S=A054353 gives the partial sums of Kolakoski sequence.

The programs for A158251, the canonical program `A158251.P11747801187545961799` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158251 has offset 1).

The definition of A158251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158251.P11747801187545961799

`∑[A088570(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A158251

/-- `∑[A088570(n+1)]` -/
def P11747801187545961799.Spec : Prop :=
  ∀ n, P11747801187545961799.a n = A158251 (n + 1)

theorem P11747801187545961799.correct : P11747801187545961799.Spec := by
  intro n
  simp only [A158251, Nat.add_sub_cancel]

end A158251

/-! ## A158251.P10956723034093106806

`∑[(n%2+1)*A000002(n+1)]`
-/

namespace A158251.P10956723034093106806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158251.P10956723034093106806

namespace A158251

/-- `∑[(n%2+1)*A000002(n+1)]` -/
def P10956723034093106806.Spec : Prop :=
  ∀ n, P10956723034093106806.a n = A158251 (n + 1)

end A158251

/-! ## A158251.P150072055682146570

`∑[floor(4/gcd(2, n))/A049705(n+1)]`
-/

namespace A158251.P150072055682146570
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊4 / (Nat.gcd 2 n : ℚ)⌋ : ℚ) / (A049705 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158251.P150072055682146570

namespace A158251

/-- `∑[floor(4/gcd(2, n))/A049705(n+1)]` -/
def P150072055682146570.Spec : Prop :=
  ∀ n, P150072055682146570.a n = (A158251 (n + 1) : ℚ)

end A158251

/-! ## A158251.P12747165606965558310

`∑[(or(1, n+1)-n)*(2-char[A013947(n+1)-1])]`
-/

namespace A158251.P12747165606965558310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (n + 1) : ℤ) - (n : ℤ)) * (2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158251.P12747165606965558310

namespace A158251

/-- `∑[(or(1, n+1)-n)*(2-char[A013947(n+1)-1])]` -/
def P12747165606965558310.Spec : Prop :=
  ∀ n, P12747165606965558310.a n = A158251 (n + 1)

end A158251

/-! ## A158251.P10028499280461656230

`∑[A000002(n+1)*A000034(n)]`
-/

namespace A158251.P10028499280461656230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) * A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158251.P10028499280461656230

namespace A158251

/-- `∑[A000002(n+1)*A000034(n)]` -/
def P10028499280461656230.Spec : Prop :=
  ∀ n, P10028499280461656230.a n = A158251 (n + 1)

end A158251

/-! ## A158251.P4752571528352642749

`∑[A010694(n)/A049705(n+1)]`
-/

namespace A158251.P4752571528352642749
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010694 n : ℚ) / (A049705 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158251.P4752571528352642749

namespace A158251

/-- `∑[A010694(n)/A049705(n+1)]` -/
def P4752571528352642749.Spec : Prop :=
  ∀ n, P4752571528352642749.a n = (A158251 (n + 1) : ℚ)

end A158251

/-! ## A158251.P18019698794685606715

`∑[sqrt(A010685(n))*A000002(n+1)]`
-/

namespace A158251.P18019698794685606715
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A010685 n : ℝ) * (A000002 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158251.P18019698794685606715

namespace A158251

/-- `∑[sqrt(A010685(n))*A000002(n+1)]` -/
def P18019698794685606715.Spec : Prop :=
  ∀ n, P18019698794685606715.a n = (A158251 (n + 1) : ℝ)

end A158251

/-! ## A158251.P4089373242209874878

`∑[(A000035(n)+1)*A000002(n+1)]`
-/

namespace A158251.P4089373242209874878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158251.P4089373242209874878

namespace A158251

/-- `∑[(A000035(n)+1)*A000002(n+1)]` -/
def P4089373242209874878.Spec : Prop :=
  ∀ n, P4089373242209874878.a n = A158251 (n + 1)

end A158251

/-! ## A158251.P9412545211440268617

`∑[A000002(n+1)*A040001(n+1)]`
-/

namespace A158251.P9412545211440268617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) * A040001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158251.P9412545211440268617

namespace A158251

/-- `∑[A000002(n+1)*A040001(n+1)]` -/
def P9412545211440268617.Spec : Prop :=
  ∀ n, P9412545211440268617.a n = A158251 (n + 1)

end A158251

/-! ## A158251.P6489047059884163464

`∑[(2-A059841(n))*A000002(n+1)]`
-/

namespace A158251.P6489047059884163464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A059841 n) * A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158251.P6489047059884163464

namespace A158251

/-- `∑[(2-A059841(n))*A000002(n+1)]` -/
def P6489047059884163464.Spec : Prop :=
  ∀ n, P6489047059884163464.a n = A158251 (n + 1)

end A158251

/-! ## A158251.P2674016094212585928

`∑[(2-A078650(n+1))*A000034(n)]`
-/

namespace A158251.P2674016094212585928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A078650 (n + 1)) * A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158251.P2674016094212585928

namespace A158251

/-- `∑[(2-A078650(n+1))*A000034(n)]` -/
def P2674016094212585928.Spec : Prop :=
  ∀ n, P2674016094212585928.a n = A158251 (n + 1)

end A158251

/-! ## A158251.P10791575836997197023

`∑[(3-A049705(n+1))*A000034(n)]`
-/

namespace A158251.P10791575836997197023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A049705 (n + 1)) * A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158251.P10791575836997197023

namespace A158251

/-- `∑[(3-A049705(n+1))*A000034(n)]` -/
def P10791575836997197023.Spec : Prop :=
  ∀ n, P10791575836997197023.a n = A158251 (n + 1)

end A158251

/-! ## A158251.P9937591861733883163

`∑[(A074290(n+1)+A000034(n))*A000034(n)]`
-/

namespace A158251.P9937591861733883163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074290 (n + 1) + A000034 n) * A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158251.P9937591861733883163

namespace A158251

/-- `∑[(A074290(n+1)+A000034(n))*A000034(n)]` -/
def P9937591861733883163.Spec : Prop :=
  ∀ n, P9937591861733883163.a n = A158251 (n + 1)

end A158251

/-! ## A158251.P2926711766469591736

`∑[A000002(n+1)*A000002(A216345(n+1))]`
-/

namespace A158251.P2926711766469591736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) * A000002 (A216345 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158251.P2926711766469591736

namespace A158251

/-- `∑[A000002(n+1)*A000002(A216345(n+1))]` -/
def P2926711766469591736.Spec : Prop :=
  ∀ n, P2926711766469591736.a n = A158251 (n + 1)

end A158251

/-! ## A158251.P8773259335292025329

`A054353(A054353(n+1))`
-/

namespace A158251.P8773259335292025329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (A054353 (n + 1)).toNat

end

end A158251.P8773259335292025329

namespace A158251

/-- `A054353(A054353(n+1))` -/
def P8773259335292025329.Spec : Prop :=
  ∀ n, P8773259335292025329.a n = A158251 (n + 1)

end A158251

/-! ## A158251.P10400636325711517609

`A088570(n+1)+A216345(A216345(n+1))-1`
-/

namespace A158251.P10400636325711517609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088570 (n + 1) + (A216345 (A216345 (n + 1)).toNat - 1)

end

end A158251.P10400636325711517609

namespace A158251

/-- `A088570(n+1)+A216345(A216345(n+1))-1` -/
def P10400636325711517609.Spec : Prop :=
  ∀ n, P10400636325711517609.a n = A158251 (n + 1)

end A158251

/-! ## A158251.P13819790711305416004

`A216345(A216345(n+2))-1`
-/

namespace A158251.P13819790711305416004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (A216345 (n + 2)).toNat - 1

end

end A158251.P13819790711305416004

namespace A158251

/-- `A216345(A216345(n+2))-1` -/
def P13819790711305416004.Spec : Prop :=
  ∀ n, P13819790711305416004.a n = A158251 (n + 1)

end A158251

/-! ## A158251.P16675603052495722007

`∑[abs(Δ[A216345(A216345(n+1))])]`
-/

namespace A158251.P16675603052495722007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (A216345 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158251.P16675603052495722007

namespace A158251

/-- `∑[abs(Δ[A216345(A216345(n+1))])]` -/
def P16675603052495722007.Spec : Prop :=
  ∀ n, P16675603052495722007.a n = A158251 (n + 1)

end A158251

/-! ## A158251.P835501442565000164

`∑[(A123594(n+3)+1)*A000034(n)]`
-/

namespace A158251.P835501442565000164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A123594 (n + 3) + 1) * A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158251.P835501442565000164

namespace A158251

/-- `∑[(A123594(n+3)+1)*A000034(n)]` -/
def P835501442565000164.Spec : Prop :=
  ∀ n, P835501442565000164.a n = A158251 (n + 1)

end A158251

/-!
# A158252: a(n) = 289*n^2 - 2*n.

The programs for A158252, the canonical program `A158252.P12233598263097954569` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158252 has offset 1).

The definition of A158252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158252.P12233598263097954569

`∑[Δ[(17*n)²]-2]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158252

/-- `∑[Δ[(17*n)²]-2]` -/
def P12233598263097954569.Spec : Prop :=
  ∀ n, P12233598263097954569.a n = A158252 (n + 1)

theorem P12233598263097954569.correct : P12233598263097954569.Spec := by
  intro n
  simp only [A158252, Nat.add_sub_cancel]

end A158252

/-! ## A158252.P6371496991466578302

`(n+1)*(A158253(n+1)-1)`
-/

namespace A158252.P6371496991466578302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158253 (n + 1) - 1)

end

end A158252.P6371496991466578302

namespace A158252

/-- `(n+1)*(A158253(n+1)-1)` -/
def P6371496991466578302.Spec : Prop :=
  ∀ n, P6371496991466578302.a n = A158252 (n + 1)

end A158252

/-! ## A158252.P14446535676095720234

`(n+1)*(A158255(n+1)-3)`
-/

namespace A158252.P14446535676095720234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158255 (n + 1) - 3)

end

end A158252.P14446535676095720234

namespace A158252

/-- `(n+1)*(A158255(n+1)-3)` -/
def P14446535676095720234.Spec : Prop :=
  ∀ n, P14446535676095720234.a n = A158252 (n + 1)

end A158252

/-! ## A158252.P10552419648222937585

`A158254(n+1)-4*(n+1)`
-/

namespace A158252.P10552419648222937585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158254 (n + 1) - (4 * (n + 1) : ℤ)

end

end A158252.P10552419648222937585

namespace A158252

/-- `A158254(n+1)-4*(n+1)` -/
def P10552419648222937585.Spec : Prop :=
  ∀ n, P10552419648222937585.a n = A158252 (n + 1)

end A158252

/-! ## A158252.P4925847196124940499

`(n+1)*(A157997(n+1)+n)`
-/

namespace A158252.P4925847196124940499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A157997 (n + 1) + (n : ℤ))

end

end A158252.P4925847196124940499

namespace A158252

/-- `(n+1)*(A157997(n+1)+n)` -/
def P4925847196124940499.Spec : Prop :=
  ∀ n, P4925847196124940499.a n = A158252 (n + 1)

end A158252

/-! ## A158252.P15817584186298656877

`(n+1)²+2*A156635(n+1)`
-/

namespace A158252.P15817584186298656877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + 2 * A156635 (n + 1)

end

end A158252.P15817584186298656877

namespace A158252

/-- `(n+1)²+2*A156635(n+1)` -/
def P15817584186298656877.Spec : Prop :=
  ∀ n, P15817584186298656877.a n = A158252 (n + 1)

end A158252

/-! ## A158252.P1993607964690080347

`(n+1)*(A157990(n+1)+n-2)`
-/

namespace A158252.P1993607964690080347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A157990 (n + 1) + ((n : ℤ) - 2))

end

end A158252.P1993607964690080347

namespace A158252

/-- `(n+1)*(A157990(n+1)+n-2)` -/
def P1993607964690080347.Spec : Prop :=
  ∀ n, P1993607964690080347.a n = A158252 (n + 1)

end A158252

/-! ## A158252.P3299894653300515958

`A157948(n+1)+A156813(n+1)`
-/

namespace A158252.P3299894653300515958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157948 (n + 1) + A156813 (n + 1)

end

end A158252.P3299894653300515958

namespace A158252

/-- `A157948(n+1)+A156813(n+1)` -/
def P3299894653300515958.Spec : Prop :=
  ∀ n, P3299894653300515958.a n = A158252 (n + 1)

end A158252

/-! ## A158252.P7842772213160246499

`A008599(n+1)²-A005843(n+1)`
-/

namespace A158252.P7842772213160246499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008599 (n + 1) ^ 2 - A005843 (n + 1)

end

end A158252.P7842772213160246499

namespace A158252

/-- `A008599(n+1)²-A005843(n+1)` -/
def P7842772213160246499.Spec : Prop :=
  ∀ n, P7842772213160246499.a n = A158252 (n + 1)

end A158252

/-! ## A158252.P14135797544816541189

`A158738(2*(n+1))+n²`
-/

namespace A158252.P14135797544816541189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158738 (2 * (n + 1)) + (n ^ 2 : ℤ)

end

end A158252.P14135797544816541189

namespace A158252

/-- `A158738(2*(n+1))+n²` -/
def P14135797544816541189.Spec : Prop :=
  ∀ n, P14135797544816541189.a n = A158252 (n + 1)

end A158252

/-! ## A158252.P14098983505266917610

`A158254(2*(n+1))%A158254(n+1)`
-/

namespace A158252.P14098983505266917610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158254 (2 * (n + 1))) (A158254 (n + 1))

end

end A158252.P14098983505266917610

namespace A158252

/-- `A158254(2*(n+1))%A158254(n+1)` -/
def P14098983505266917610.Spec : Prop :=
  ∀ n, P14098983505266917610.a n = A158252 (n + 1)

end A158252

/-! ## A158252.P13104113517476180184

`A157910(4*(n+1))+n²`
-/

namespace A158252.P13104113517476180184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157910 (4 * (n + 1)) + (n ^ 2 : ℤ)

end

end A158252.P13104113517476180184

namespace A158252

/-- `A157910(4*(n+1))+n²` -/
def P13104113517476180184.Spec : Prop :=
  ∀ n, P13104113517476180184.a n = A158252 (n + 1)

end A158252

/-! ## A158252.P17817634981961936213

`A195605(12*n+11)+n²`
-/

namespace A158252.P17817634981961936213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195605 (12 * n + 11) + (n ^ 2 : ℤ)

end

end A158252.P17817634981961936213

namespace A158252

/-- `A195605(12*n+11)+n²` -/
def P17817634981961936213.Spec : Prop :=
  ∀ n, P17817634981961936213.a n = A158252 (n + 1)

end A158252

/-! ## A158252.P10854876308299534753

`A098603(n+1)+A000384(A008594(n+1))`
-/

namespace A158252.P10854876308299534753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098603 (n + 1) + A000384 (A008594 (n + 1)).toNat

end

end A158252.P10854876308299534753

namespace A158252

/-- `A098603(n+1)+A000384(A008594(n+1))` -/
def P10854876308299534753.Spec : Prop :=
  ∀ n, P10854876308299534753.a n = A158252 (n + 1)

end A158252

/-! ## A158252.P12528830730604220844

`A074148(A017653(2*n+1))+n²`
-/

namespace A158252.P12528830730604220844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074148 (A017653 (2 * n + 1)).toNat + (n ^ 2 : ℤ)

end

end A158252.P12528830730604220844

namespace A158252

/-- `A074148(A017653(2*n+1))+n²` -/
def P12528830730604220844.Spec : Prop :=
  ∀ n, P12528830730604220844.a n = A158252 (n + 1)

end A158252

/-! ## A158252.P7542593729038201768

`A326658(A017641(2*n+1))+n²`
-/

namespace A158252.P7542593729038201768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326658 (A017641 (2 * n + 1)).toNat + (n ^ 2 : ℤ)

end

end A158252.P7542593729038201768

namespace A158252

/-- `A326658(A017641(2*n+1))+n²` -/
def P7542593729038201768.Spec : Prop :=
  ∀ n, P7542593729038201768.a n = A158252 (n + 1)

end A158252

/-! ## A158252.P4934370659490832515

`A157997((n+1)²)+n²`
-/

namespace A158252.P4934370659490832515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157997 ((n + 1) ^ 2) + (n ^ 2 : ℤ)

end

end A158252.P4934370659490832515

namespace A158252

/-- `A157997((n+1)²)+n²` -/
def P4934370659490832515.Spec : Prop :=
  ∀ n, P4934370659490832515.a n = A158252 (n + 1)

end A158252

/-!
# A158253: a(n) = 289*n - 1.

The programs for A158253, the canonical program `A158253.P16688884234757578636` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158253 has offset 1).

The definition of A158253 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158253.P16688884234757578636

`2*a(n-1)-a(n-2)` with `a(0)=288, a(1)=577`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158253

/-- `2*a(n-1)-a(n-2)` -/
def P16688884234757578636.Spec : Prop :=
  ∀ n, P16688884234757578636.a n = A158253 (n + 1)

theorem P16688884234757578636.correct : P16688884234757578636.Spec := by
  intro n
  simp only [A158253, Nat.add_sub_cancel]

end A158253

/-!
# A158254: a(n) = 289n^2 + 2n.

The programs for A158254, the canonical program `A158254.P1430645245986903205` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158254 has offset 1).

The definition of A158254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158254.P1430645245986903205

`∑[Δ[(17*n)²]+2]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158254

/-- `∑[Δ[(17*n)²]+2]` -/
def P1430645245986903205.Spec : Prop :=
  ∀ n, P1430645245986903205.a n = A158254 (n + 1)

theorem P1430645245986903205.correct : P1430645245986903205.Spec := by
  intro n
  simp only [A158254, Nat.add_sub_cancel]

end A158254

/-! ## A158254.P3660606566802010484

`(n+1)*(A158255(n+1)+1)`
-/

namespace A158254.P3660606566802010484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158255 (n + 1) + 1)

end

end A158254.P3660606566802010484

namespace A158254

/-- `(n+1)*(A158255(n+1)+1)` -/
def P3660606566802010484.Spec : Prop :=
  ∀ n, P3660606566802010484.a n = A158254 (n + 1)

end A158254

/-! ## A158254.P13339798439105780676

`(n+1)*(A158253(n+1)+3)`
-/

namespace A158254.P13339798439105780676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158253 (n + 1) + 3)

end

end A158254.P13339798439105780676

namespace A158254

/-- `(n+1)*(A158253(n+1)+3)` -/
def P13339798439105780676.Spec : Prop :=
  ∀ n, P13339798439105780676.a n = A158254 (n + 1)

end A158254

/-! ## A158254.P3779518638601649793

`A158252(n+1)+4*(n+1)`
-/

namespace A158254.P3779518638601649793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158252 (n + 1) + (4 * (n + 1) : ℤ)

end

end A158254.P3779518638601649793

namespace A158254

/-- `A158252(n+1)+4*(n+1)` -/
def P3779518638601649793.Spec : Prop :=
  ∀ n, P3779518638601649793.a n = A158254 (n + 1)

end A158254

/-! ## A158254.P9467069037965395859

`(n+1)*(A157990(n+1)+n+2)`
-/

namespace A158254.P9467069037965395859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A157990 (n + 1) + (n + 2 : ℤ))

end

end A158254.P9467069037965395859

namespace A158254

/-- `(n+1)*(A157990(n+1)+n+2)` -/
def P9467069037965395859.Spec : Prop :=
  ∀ n, P9467069037965395859.a n = A158254 (n + 1)

end A158254

/-! ## A158254.P12531616071394925622

`(n+1)*(A157997(n+1)+n+4)`
-/

namespace A158254.P12531616071394925622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A157997 (n + 1) + (n + 4 : ℤ))

end

end A158254.P12531616071394925622

namespace A158254

/-- `(n+1)*(A157997(n+1)+n+4)` -/
def P12531616071394925622.Spec : Prop :=
  ∀ n, P12531616071394925622.a n = A158254 (n + 1)

end A158254

/-! ## A158254.P1992919539468069497

`2*(n+1)+(A239129(n+1)-n)*(A239129(n+1)-n)`
-/

namespace A158254.P1992919539468069497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + (A239129 (n + 1) - (n : ℤ)) * (A239129 (n + 1) - (n : ℤ))

end

end A158254.P1992919539468069497

namespace A158254

/-- `2*(n+1)+(A239129(n+1)-n)*(A239129(n+1)-n)` -/
def P1992919539468069497.Spec : Prop :=
  ∀ n, P1992919539468069497.a n = A158254 (n + 1)

end A158254

/-! ## A158254.P11521223282417787348

`A005843(n+1)+A008599(n+1)²`
-/

namespace A158254.P11521223282417787348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + A008599 (n + 1) ^ 2

end

end A158254.P11521223282417787348

namespace A158254

/-- `A005843(n+1)+A008599(n+1)²` -/
def P11521223282417787348.Spec : Prop :=
  ∀ n, P11521223282417787348.a n = A158254 (n + 1)

end A158254

/-! ## A158254.P6578268996743450770

`A008601(n+1)+A008599(n+1)*A361692(n+1)`
-/

namespace A158254.P6578268996743450770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008601 (n + 1) + A008599 (n + 1) * A361692 (n + 1)

end

end A158254.P6578268996743450770

namespace A158254

/-- `A008601(n+1)+A008599(n+1)*A361692(n+1)` -/
def P6578268996743450770.Spec : Prop :=
  ∀ n, P6578268996743450770.a n = A158254 (n + 1)

end A158254

/-! ## A158254.P8055691680712519374

`A158738(2*(n+1))+(n+2)²`
-/

namespace A158254.P8055691680712519374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158738 (2 * (n + 1)) + ((n + 2) ^ 2 : ℤ)

end

end A158254.P8055691680712519374

namespace A158254

/-- `A158738(2*(n+1))+(n+2)²` -/
def P8055691680712519374.Spec : Prop :=
  ∀ n, P8055691680712519374.a n = A158254 (n + 1)

end A158254

/-! ## A158254.P14585465383815918785

`A157997((n+1)²)+(n+2)²`
-/

namespace A158254.P14585465383815918785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157997 ((n + 1) ^ 2) + ((n + 2) ^ 2 : ℤ)

end

end A158254.P14585465383815918785

namespace A158254

/-- `A157997((n+1)²)+(n+2)²` -/
def P14585465383815918785.Spec : Prop :=
  ∀ n, P14585465383815918785.a n = A158254 (n + 1)

end A158254

/-!
# A158255: a(n) = 289n + 1.

The programs for A158255, the canonical program `A158255.P2776031614797970469` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158255 has offset 1).

The definition of A158255 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158255.P2776031614797970469

`2*a(n-1)-a(n-2)` with `a(0)=290, a(1)=579`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158255

/-- `2*a(n-1)-a(n-2)` -/
def P2776031614797970469.Spec : Prop :=
  ∀ n, P2776031614797970469.a n = A158255 (n + 1)

theorem P2776031614797970469.correct : P2776031614797970469.Spec := by
  intro n
  simp only [A158255, Nat.add_sub_cancel]

end A158255

/-!
# A158257: G.f.: A(x) = exp(Sum_{n>=1} Lucas(n)*L(n)*x^n/n) such that Sum_{n>=1} L(n)*x^n/n = log(1+x*A(x)) where L(n) = A158258(n) and Lucas(n) = A000204(n).

The programs for A158257, there is no canonical definition to state claims against.
-/

/-! ## A158257.P18135064438840867967

`A339619(A022406(n))`
-/

namespace A158257.P18135064438840867967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339619 (A022406 n).toNat

end

end A158257.P18135064438840867967

/-! ## A158257.P2637586807295290516

`A337681(A334272(n))+A001858(n)`
-/

namespace A158257.P2637586807295290516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337681 (A334272 n).toNat + A001858 n

end

end A158257.P2637586807295290516

/-!
# A158258: L.g.f.: exp(Sum_{n>=1} a(n)*x^n/n) = 1 + x*exp(Sum_{n>=1} Lucas(n)*a(n)*x^n/n) where Lucas(n) = A000204(n).

The programs for A158258, there is no canonical definition to state claims against.
-/

/-! ## A158258.P5759028308702445001

`A312693(A107239(n)²)`
-/

namespace A158258.P5759028308702445001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312693 (A107239 n ^ 2).toNat

end

end A158258.P5759028308702445001

/-! ## A158258.P4688200107562911258

`A018252(A185329(∑[5*n]+1)+1)`
-/

namespace A158258.P4688200107562911258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A185329 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1).toNat

end

end A158258.P4688200107562911258

/-!
# A158259: L.g.f.: exp(Sum_{n>=1} a(n)*x^n/n) = 1 + x*exp(Sum_{n>=1} C(2n-1,n)*a(n)*x^n/n) where C(2n-1,n) = A001700(n-1).

The programs for A158259, there is no canonical definition to state claims against.
-/

/-! ## A158259.P7232467720631539967

`A036467(∑[ceil(n/3)]^n)`
-/

namespace A158259.P7232467720631539967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036467 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ n).toNat

end

end A158259.P7232467720631539967

/-!
# A158260: a(n) = coefficient of x^n in the [2^(n-2)]-th iteration of x+x^2 for n>=2.

The programs for A158260, there is no canonical definition to state claims against.
-/

/-! ## A158260.P1184131686219551168

`A158264(∑[A048943(n+1)])`
-/

namespace A158260.P1184131686219551168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A158260.P1184131686219551168

/-!
# A158261: a(n) = coefficient of x^n in the (2^(n-1))-th iteration of x+x^2 for n>=1.

The programs for A158261, there is no canonical definition to state claims against.
-/

/-! ## A158261.P9687879898443339778

`A158264(A301202(n))`
-/

namespace A158261.P9687879898443339778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158264 (A301202 n).toNat

end

end A158261.P9687879898443339778

/-! ## A158261.P8149442379378537458

`A158264(A007077(n+1))`
-/

namespace A158261.P8149442379378537458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158264 (A007077 (n + 1)).toNat

end

end A158261.P8149442379378537458

/-!
# A158262: a(n) = coefficient of x^n in the (2^n)-th iteration of x+x^2 for n>=1.

The programs for A158262, there is no canonical definition to state claims against.
-/

/-! ## A158262.P13806686550173873767

`A158264(A238410(n+2))`
-/

namespace A158262.P13806686550173873767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158264 (A238410 (n + 2)).toNat

end

end A158262.P13806686550173873767

/-!
# A158263: a(n) = coefficient of x^n in the (2^(n+1))-th iteration of x+x^2 for n>=1.

The programs for A158263, there is no canonical definition to state claims against.
-/

/-! ## A158263.P1172890022862503619

`A158264(A301202(n+1)-1)`
-/

namespace A158263.P1172890022862503619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158264 (A301202 (n + 1) - 1).toNat

end

end A158263.P1172890022862503619

/-!
# A158264: Table where row n lists the coefficients in the (2^n)-th iteration of x+x^2 for n>=0, read by antidiagonals not including trailing zeros in rows.

The programs for A158264, there is no canonical definition to state claims against.
-/

/-! ## A158264.P14516668667167459943

`A211956(A018676(n+1)*A023506(3*n+2))`
-/

namespace A158264.P14516668667167459943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211956 (A018676 (n + 1) * A023506 (3 * n + 2)).toNat

end

end A158264.P14516668667167459943

/-!
# A158265: G.f.: A(x) = exp( Sum_{n>=1} 2*sigma(n,n+1)*x^n/n ).

The programs for A158265, there is no canonical definition to state claims against.
-/

/-! ## A158265.P11296336605962514777

`A106249(2*∑[(n+1)^n])-n`
-/

namespace A158265.P11296336605962514777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (2 * (∑ j ∈ Finset.range (n + 1), f1 j)) - (n : ℤ)

end

end A158265.P11296336605962514777

/-!
# A158266: G.f.: A(x) = exp( Sum_{n>=1} C(2n-1,n)^2*x^n/n ).

The programs for A158266, there is no canonical definition to state claims against.
-/

/-! ## A158266.P15073058595870858052

`A365690(2*n)-A023533(A259385(n+5))`
-/

namespace A158266.P15073058595870858052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365690 (2 * n) - A023533 (A259385 (n + 5)).toNat

end

end A158266.P15073058595870858052

/-! ## A158266.P2985928520111507969

`A365690(2*n)-A369640(A259384(2*(n+1)))`
-/

namespace A158266.P2985928520111507969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365690 (2 * n) - A369640 (A259384 (2 * (n + 1))).toNat

end

end A158266.P2985928520111507969

/-!
# A158267: Inverse Euler transform of A156305.

The programs for A158267, there is no canonical definition to state claims against.
-/

/-! ## A158267.P1600501587629737876

`A102981(2^n)%216`
-/

namespace A158267.P1600501587629737876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102981 (2 ^ n)) 216

end

end A158267.P1600501587629737876

/-!
# A158271: a(n) = 324n^2 + 2n.

The programs for A158271, the canonical program `A158271.P7255326812305057115` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158271 has offset 1).

The definition of A158271 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158271.P7255326812305057115

`∑[Δ[(18*n)²]+2]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158271

/-- `∑[Δ[(18*n)²]+2]` -/
def P7255326812305057115.Spec : Prop :=
  ∀ n, P7255326812305057115.a n = A158271 (n + 1)

theorem P7255326812305057115.correct : P7255326812305057115.Spec := by
  intro n
  simp only [A158271, Nat.add_sub_cancel]

end A158271

/-! ## A158271.P9152822284789284410

`(n+1)*(A158272(n+1)+1)`
-/

namespace A158271.P9152822284789284410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158272 (n + 1) + 1)

end

end A158271.P9152822284789284410

namespace A158271

/-- `(n+1)*(A158272(n+1)+1)` -/
def P9152822284789284410.Spec : Prop :=
  ∀ n, P9152822284789284410.a n = A158271 (n + 1)

end A158271

/-! ## A158271.P15582800142926838077

`(n+1)*(A158306(n+1)+3)`
-/

namespace A158271.P15582800142926838077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158306 (n + 1) + 3)

end

end A158271.P15582800142926838077

namespace A158271

/-- `(n+1)*(A158306(n+1)+3)` -/
def P15582800142926838077.Spec : Prop :=
  ∀ n, P15582800142926838077.a n = A158271 (n + 1)

end A158271

/-! ## A158271.P5244042761769856601

`2*(n+1)*A157952(n+1)`
-/

namespace A158271.P5244042761769856601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A157952 (n + 1))

end

end A158271.P5244042761769856601

namespace A158271

/-- `2*(n+1)*A157952(n+1)` -/
def P5244042761769856601.Spec : Prop :=
  ∀ n, P5244042761769856601.a n = A158271 (n + 1)

end A158271

/-! ## A158271.P18123427631179631093

`A158305(n+1)+4*(n+1)`
-/

namespace A158271.P18123427631179631093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158305 (n + 1) + (4 * (n + 1) : ℤ)

end

end A158271.P18123427631179631093

namespace A158271

/-- `A158305(n+1)+4*(n+1)` -/
def P18123427631179631093.Spec : Prop :=
  ∀ n, P18123427631179631093.a n = A158271 (n + 1)

end A158271

/-! ## A158271.P16445699978373218014

`Δ[A002378(n)]+Δ[A001504(n)]²`
-/

namespace A158271.P16445699978373218014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n) ^ 2

end

end A158271.P16445699978373218014

namespace A158271

/-- `Δ[A002378(n)]+Δ[A001504(n)]²` -/
def P16445699978373218014.Spec : Prop :=
  ∀ n, P16445699978373218014.a n = A158271 (n + 1)

end A158271

/-! ## A158271.P9900892912663388118

`A005843(n+1)+A008591(n+1)*A044102(n+1)`
-/

namespace A158271.P9900892912663388118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + A008591 (n + 1) * A044102 (n + 1)

end

end A158271.P9900892912663388118

namespace A158271

/-- `A005843(n+1)+A008591(n+1)*A044102(n+1)` -/
def P9900892912663388118.Spec : Prop :=
  ∀ n, P9900892912663388118.a n = A158271 (n + 1)

end A158271

/-! ## A158271.P13756313631643499834

`A177099(2*(n+1))-2*(n+1)`
-/

namespace A158271.P13756313631643499834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177099 (2 * (n + 1)) - (2 * (n + 1) : ℤ)

end

end A158271.P13756313631643499834

namespace A158271

/-- `A177099(2*(n+1))-2*(n+1)` -/
def P13756313631643499834.Spec : Prop :=
  ∀ n, P13756313631643499834.a n = A158271 (n + 1)

end A158271

/-! ## A158271.P5866107328746099830

`2*A158123(2*(n+1))*(n+1)`
-/

namespace A158271.P5866107328746099830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A158123 (2 * (n + 1)) * (n + 1 : ℤ))

end

end A158271.P5866107328746099830

namespace A158271

/-- `2*A158123(2*(n+1))*(n+1)` -/
def P5866107328746099830.Spec : Prop :=
  ∀ n, P5866107328746099830.a n = A158271 (n + 1)

end A158271

/-! ## A158271.P11262025661026056327

`A157923(2*(n+1))+2*A157474(2*(n+1))`
-/

namespace A158271.P11262025661026056327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157923 (2 * (n + 1)) + 2 * A157474 (2 * (n + 1))

end

end A158271.P11262025661026056327

namespace A158271

/-- `A157923(2*(n+1))+2*A157474(2*(n+1))` -/
def P11262025661026056327.Spec : Prop :=
  ∀ n, P11262025661026056327.a n = A158271 (n + 1)

end A158271

/-! ## A158271.P12002336621969045367

`A157953(2*(n+1))-2*A001478(2*(n+1))`
-/

namespace A158271.P12002336621969045367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157953 (2 * (n + 1)) - 2 * A001478 (2 * (n + 1))

end

end A158271.P12002336621969045367

namespace A158271

/-- `A157953(2*(n+1))-2*A001478(2*(n+1))` -/
def P12002336621969045367.Spec : Prop :=
  ∀ n, P12002336621969045367.a n = A158271 (n + 1)

end A158271

/-! ## A158271.P17300416073701484048

`A005843(n+1)+A008591(A005843(n+1))²`
-/

namespace A158271.P17300416073701484048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + A008591 (A005843 (n + 1)).toNat ^ 2

end

end A158271.P17300416073701484048

namespace A158271

/-- `A005843(n+1)+A008591(A005843(n+1))²` -/
def P17300416073701484048.Spec : Prop :=
  ∀ n, P17300416073701484048.a n = A158271 (n + 1)

end A158271

/-! ## A158271.P1580911888525574328

`A157324(3*(n+1))-(n+1)`
-/

namespace A158271.P1580911888525574328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157324 (3 * (n + 1)) - (n + 1 : ℤ)

end

end A158271.P1580911888525574328

namespace A158271

/-- `A157324(3*(n+1))-(n+1)` -/
def P1580911888525574328.Spec : Prop :=
  ∀ n, P1580911888525574328.a n = A158271 (n + 1)

end A158271

/-! ## A158271.P12262971146415501515

`A016910(3*(n+1))+n+2+n`
-/

namespace A158271.P12262971146415501515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016910 (3 * (n + 1)) + (n + 2 : ℤ) + (n : ℤ)

end

end A158271.P12262971146415501515

namespace A158271

/-- `A016910(3*(n+1))+n+2+n` -/
def P12262971146415501515.Spec : Prop :=
  ∀ n, P12262971146415501515.a n = A158271 (n + 1)

end A158271

/-! ## A158271.P56651031216014456

`A144396(n+1)+A136017(3*(n+1))`
-/

namespace A158271.P56651031216014456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1) + A136017 (3 * (n + 1))

end

end A158271.P56651031216014456

namespace A158271

/-- `A144396(n+1)+A136017(3*(n+1))` -/
def P56651031216014456.Spec : Prop :=
  ∀ n, P56651031216014456.a n = A158271 (n + 1)

end A158271

/-! ## A158271.P5397855168786491586

`A005843(n+1)+A008458(A008486(n+1))²`
-/

namespace A158271.P5397855168786491586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + A008458 (A008486 (n + 1)).toNat ^ 2

end

end A158271.P5397855168786491586

namespace A158271

/-- `A005843(n+1)+A008458(A008486(n+1))²` -/
def P5397855168786491586.Spec : Prop :=
  ∀ n, P5397855168786491586.a n = A158271 (n + 1)

end A158271

/-! ## A158271.P16448942457455738738

`A010002(6*(n+1))+2*n`
-/

namespace A158271.P16448942457455738738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010002 (6 * (n + 1)) + (2 * n : ℤ)

end

end A158271.P16448942457455738738

namespace A158271

/-- `A010002(6*(n+1))+2*n` -/
def P16448942457455738738.Spec : Prop :=
  ∀ n, P16448942457455738738.a n = A158271 (n + 1)

end A158271

/-! ## A158271.P12163324927375560531

`A132355(A008594(n+1))+A008596(n+1)`
-/

namespace A158271.P12163324927375560531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132355 (A008594 (n + 1)).toNat + A008596 (n + 1)

end

end A158271.P12163324927375560531

namespace A158271

/-- `A132355(A008594(n+1))+A008596(n+1)` -/
def P12163324927375560531.Spec : Prop :=
  ∀ n, P12163324927375560531.a n = A158271 (n + 1)

end A158271

/-!
# A158272: a(n) = 324*n + 1.

The programs for A158272, the canonical program `A158272.P620311874258824495` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158272 has offset 1).

The definition of A158272 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158272.P620311874258824495

`2*a(n-1)-a(n-2)` with `a(0)=325, a(1)=649`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158272

/-- `2*a(n-1)-a(n-2)` -/
def P620311874258824495.Spec : Prop :=
  ∀ n, P620311874258824495.a n = A158272 (n + 1)

theorem P620311874258824495.correct : P620311874258824495.Spec := by
  intro n
  simp only [A158272, Nat.add_sub_cancel]

end A158272

/-!
# A158273: Indices of single-digit numbers in A061049.

The programs for A158273, there is no canonical definition to state claims against.
-/

/-! ## A158273.P1314294890506275147

`lt[A061049(n+8), 10]+8`
-/

namespace A158273.P1314294890506275147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061049 (n + 8)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 8

end

end A158273.P1314294890506275147

/-! ## A158273.P13813496351692959728

`A020744(record[A187221(n)])`
-/

namespace A158273.P13813496351692959728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A158273.P13813496351692959728

/-! ## A158273.P18239548538489218521

`A005843(record[A187221(n)+4])`
-/

namespace A158273.P18239548538489218521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187221 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A158273.P18239548538489218521

/-!
# A158274: Numerators of antiharmonic means of divisors of n.

The programs for A158274, the canonical program `A158274.P13631845985388570536` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158274 has offset 1).

The definition of A158274 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158274.P13631845985388570536

`∑{d}[n+1, #²]/gcd(∑{d}[n+1, #²], ∑{d}[n+1, #])`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158274

/-- `∑{d}[n+1, #²]/gcd(∑{d}[n+1, #²], ∑{d}[n+1, #])` -/
def P13631845985388570536.Spec : Prop :=
  ∀ n, P13631845985388570536.a n = (A158274 (n + 1) : ℚ)

end A158274

/-! ## A158274.P15631916042115907704

`A001157(n+1)/A179931(n+1)`
-/

namespace A158274.P15631916042115907704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) : ℚ) / (A179931 (n + 1) : ℚ)

end

end A158274.P15631916042115907704

namespace A158274

/-- `A001157(n+1)/A179931(n+1)` -/
def P15631916042115907704.Spec : Prop :=
  ∀ n, P15631916042115907704.a n = (A158274 (n + 1) : ℚ)

end A158274

/-! ## A158274.P16163662255737434765

`A001157(n+1)/A000203(n+1)*A158275(n+1)`
-/

namespace A158274.P16163662255737434765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A158275 (n + 1) : ℚ)

end

end A158274.P16163662255737434765

namespace A158274

/-- `A001157(n+1)/A000203(n+1)*A158275(n+1)` -/
def P16163662255737434765.Spec : Prop :=
  ∀ n, P16163662255737434765.a n = (A158274 (n + 1) : ℚ)

end A158274

/-! ## A158274.P15021517223264927497

`A001157(n+1)/gcd(A001157(n+1), A074400(n+1))`
-/

namespace A158274.P15021517223264927497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) : ℚ) / (Int.gcd (A001157 (n + 1)) (A074400 (n + 1)) : ℚ)

end

end A158274.P15021517223264927497

namespace A158274

/-- `A001157(n+1)/gcd(A001157(n+1), A074400(n+1))` -/
def P15021517223264927497.Spec : Prop :=
  ∀ n, P15021517223264927497.a n = (A158274 (n + 1) : ℚ)

end A158274

/-! ## A158274.P12643456821715639747

`A320917(n+1)/gcd(A001158(n+1), A320917(n+1))`
-/

namespace A158274.P12643456821715639747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320917 (n + 1) : ℚ) / (Int.gcd (A001158 (n + 1)) (A320917 (n + 1)) : ℚ)

end

end A158274.P12643456821715639747

namespace A158274

/-- `A320917(n+1)/gcd(A001158(n+1), A320917(n+1))` -/
def P12643456821715639747.Spec : Prop :=
  ∀ n, P12643456821715639747.a n = (A158274 (n + 1) : ℚ)

end A158274

/-! ## A158274.P2219477832720152349

`A389074(A064549(n+1))`
-/

namespace A158274.P2219477832720152349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389074 (A064549 (n + 1)).toNat

end

end A158274.P2219477832720152349

namespace A158274

/-- `A389074(A064549(n+1))` -/
def P2219477832720152349.Spec : Prop :=
  ∀ n, P2219477832720152349.a n = A158274 (n + 1)

end A158274

/-! ## A158274.P7247190909724417089

`A204272(n+1)/gcd(A204271(n+1), A204272(n+1))`
-/

namespace A158274.P7247190909724417089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204272 (n + 1) : ℚ) / (Int.gcd (A204271 (n + 1)) (A204272 (n + 1)) : ℚ)

end

end A158274.P7247190909724417089

namespace A158274

/-- `A204272(n+1)/gcd(A204271(n+1), A204272(n+1))` -/
def P7247190909724417089.Spec : Prop :=
  ∀ n, P7247190909724417089.a n = (A158274 (n + 1) : ℚ)

end A158274

/-!
# A158275: Denominators of antiharmonic means of divisors of n.

The programs for A158275, the canonical program `A158275.P7501874898225500758` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158275 has offset 1).

The definition of A158275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158275.P7501874898225500758

`A000203(n+1)/A179931(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A158275

/-- `A000203(n+1)/A179931(n+1)` -/
def P7501874898225500758.Spec : Prop :=
  ∀ n, P7501874898225500758.a n = (A158275 (n + 1) : ℚ)

end A158275

/-! ## A158275.P7913842417236248709

`A000203(n+1)/A001157(n+1)*A158274(n+1)`
-/

namespace A158275.P7913842417236248709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A001157 (n + 1) : ℚ) * (A158274 (n + 1) : ℚ)

end

end A158275.P7913842417236248709

namespace A158275

/-- `A000203(n+1)/A001157(n+1)*A158274(n+1)` -/
def P7913842417236248709.Spec : Prop :=
  ∀ n, P7913842417236248709.a n = (A158275 (n + 1) : ℚ)

end A158275

/-! ## A158275.P13733975505819052357

`A072861(n+1)*A158274(n+1)/A379812(n+1)`
-/

namespace A158275.P13733975505819052357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072861 (n + 1) * A158274 (n + 1) : ℚ) / (A379812 (n + 1) : ℚ)

end

end A158275.P13733975505819052357

namespace A158275

/-- `A072861(n+1)*A158274(n+1)/A379812(n+1)` -/
def P13733975505819052357.Spec : Prop :=
  ∀ n, P13733975505819052357.a n = (A158275 (n + 1) : ℚ)

end A158275

/-! ## A158275.P7002200415607305274

`A001158(n+1)/gcd(A001158(n+1), A320917(n+1))`
-/

namespace A158275.P7002200415607305274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001158 (n + 1) : ℚ) / (Int.gcd (A001158 (n + 1)) (A320917 (n + 1)) : ℚ)

end

end A158275.P7002200415607305274

namespace A158275

/-- `A001158(n+1)/gcd(A001158(n+1), A320917(n+1))` -/
def P7002200415607305274.Spec : Prop :=
  ∀ n, P7002200415607305274.a n = (A158275 (n + 1) : ℚ)

end A158275

/-! ## A158275.P4534604753796259316

`lcm(A001157(n+1), A143348(n+1))/A001157(n+1)`
-/

namespace A158275.P4534604753796259316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A001157 (n + 1)) (A143348 (n + 1)) : ℚ) / (A001157 (n + 1) : ℚ)

end

end A158275.P4534604753796259316

namespace A158275

/-- `lcm(A001157(n+1), A143348(n+1))/A001157(n+1)` -/
def P4534604753796259316.Spec : Prop :=
  ∀ n, P4534604753796259316.a n = (A158275 (n + 1) : ℚ)

end A158275

/-! ## A158275.P4565923642829065058

`A008619(A002659(n+1))/A179931(n+1)`
-/

namespace A158275.P4565923642829065058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (A002659 (n + 1)).toNat : ℚ) / (A179931 (n + 1) : ℚ)

end

end A158275.P4565923642829065058

namespace A158275

/-- `A008619(A002659(n+1))/A179931(n+1)` -/
def P4565923642829065058.Spec : Prop :=
  ∀ n, P4565923642829065058.a n = (A158275 (n + 1) : ℚ)

end A158275

/-! ## A158275.P10562345492582775999

`A389075(A064549(n+1))`
-/

namespace A158275.P10562345492582775999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389075 (A064549 (n + 1)).toNat

end

end A158275.P10562345492582775999

namespace A158275

/-- `A389075(A064549(n+1))` -/
def P10562345492582775999.Spec : Prop :=
  ∀ n, P10562345492582775999.a n = A158275 (n + 1)

end A158275

/-! ## A158275.P117158710061925275

`A204271(n+1)/gcd(A204271(n+1), A204272(n+1))`
-/

namespace A158275.P117158710061925275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204271 (n + 1) : ℚ) / (Int.gcd (A204271 (n + 1)) (A204272 (n + 1)) : ℚ)

end

end A158275.P117158710061925275

namespace A158275

/-- `A204271(n+1)/gcd(A204271(n+1), A204272(n+1))` -/
def P117158710061925275.Spec : Prop :=
  ∀ n, P117158710061925275.a n = (A158275 (n + 1) : ℚ)

end A158275

/-! ## A158275.P5938239470702596985

`A048250(n+1)/A323159((n+1)*A007947(n+1))`
-/

namespace A158275.P5938239470702596985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A323159 ((n + 1 : ℤ) * A007947 (n + 1)).toNat : ℚ)

end

end A158275.P5938239470702596985

namespace A158275

/-- `A048250(n+1)/A323159((n+1)*A007947(n+1))` -/
def P5938239470702596985.Spec : Prop :=
  ∀ n, P5938239470702596985.a n = (A158275 (n + 1) : ℚ)

end A158275

/-!
# A158276: Numbers k such that sigma_1(k) does not divide sigma_2(k).

The programs for A158276, the canonical program `A158276.P14399586062103638570` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158276 has offset 1).

The definition of A158276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9825 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158276.P15668067952183683418

`comp[A020487(n+1)-1]+1`
-/

namespace A158276.P15668067952183683418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A158276.P15668067952183683418

namespace A158276

/-- `comp[A020487(n+1)-1]+1` -/
def P15668067952183683418.Spec : Prop :=
  ∀ n, (P15668067952183683418.a n : ℤ) = A158276 (n + 1)

end A158276

/-! ## A158276.P17972040828003509288

`comp[∪[A020487(n+1), A029987(n+1)]]`
-/

namespace A158276.P17972040828003509288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029987 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A158276.P17972040828003509288

namespace A158276

/-- `comp[∪[A020487(n+1), A029987(n+1)]]` -/
def P17972040828003509288.Spec : Prop :=
  ∀ n, (P17972040828003509288.a n : ℤ) = A158276 (n + 1)

end A158276

/-! ## A158276.P14399586062103638570

`lt[1, A158275(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A158276

/-- `lt[1, A158275(n+1)]+1` -/
def P14399586062103638570.Spec : Prop :=
  ∀ n, (P14399586062103638570.a n : ℤ) = A158276 (n + 1)

theorem P14399586062103638570.correct : P14399586062103638570.Spec := by
  intro n
  simp only [A158276, Nat.add_sub_cancel]

end A158276

/-! ## A158276.P9570364760926322016

`comp[A015918(n)*A020487(n+1)]`
-/

namespace A158276.P9570364760926322016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015918 n * A020487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A158276.P9570364760926322016

namespace A158276

/-- `comp[A015918(n)*A020487(n+1)]` -/
def P9570364760926322016.Spec : Prop :=
  ∀ n, (P9570364760926322016.a n : ℤ) = A158276 (n + 1)

end A158276

/-! ## A158276.P14258233779318494375

`∪[A028757(n+1), A266347(n+1)]`
-/

namespace A158276.P14258233779318494375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A158276.P14258233779318494375

namespace A158276

/-- `∪[A028757(n+1), A266347(n+1)]` -/
def P14258233779318494375.Spec : Prop :=
  ∀ n, (P14258233779318494375.a n : ℤ) = A158276 (n + 1)

end A158276

/-!
# A158277: The lesser of twin prime pairs with each prime in a different century.

The programs for A158277, the canonical program `A158277.P9504864579204883764` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158277 has offset 1).

The definition of A158277 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158277.P9504864579204883764

`∩[A060229(n+1), A095995(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A158277

/-- `∩[A060229(n+1), A095995(n+1)]` -/
def P9504864579204883764.Spec : Prop :=
  ∀ n, (P9504864579204883764.a n : ℤ) = A158277 (n + 1)

theorem P9504864579204883764.correct : P9504864579204883764.Spec := by
  intro n
  simp only [A158277, Nat.add_sub_cancel]

end A158277

/-! ## A158277.P10354055469571140093

`∩[A071698(n+1), A095995(n+1)]`
-/

namespace A158277.P10354055469571140093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158277.P10354055469571140093

namespace A158277

/-- `∩[A071698(n+1), A095995(n+1)]` -/
def P10354055469571140093.Spec : Prop :=
  ∀ n, (P10354055469571140093.a n : ℤ) = A158277 (n + 1)

end A158277

/-! ## A158277.P14481300642600068529

`∩[A071698(n+1), A141946(n+1)]`
-/

namespace A158277.P14481300642600068529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158277.P14481300642600068529

namespace A158277

/-- `∩[A071698(n+1), A141946(n+1)]` -/
def P14481300642600068529.Spec : Prop :=
  ∀ n, (P14481300642600068529.a n : ℤ) = A158277 (n + 1)

end A158277

/-! ## A158277.P13576438090474123175

`∩[A047078(n+1), A095995(n+1)]`
-/

namespace A158277.P13576438090474123175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158277.P13576438090474123175

namespace A158277

/-- `∩[A047078(n+1), A095995(n+1)]` -/
def P13576438090474123175.Spec : Prop :=
  ∀ n, (P13576438090474123175.a n : ℤ) = A158277 (n + 1)

end A158277

/-! ## A158277.P16360926579681236060

`∩[A061368(n+1), A095995(n+1)]`
-/

namespace A158277.P16360926579681236060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158277.P16360926579681236060

namespace A158277

/-- `∩[A061368(n+1), A095995(n+1)]` -/
def P16360926579681236060.Spec : Prop :=
  ∀ n, (P16360926579681236060.a n : ℤ) = A158277 (n + 1)

end A158277

/-! ## A158277.P15049360028718370289

`∩[A060229(n+1), A383978(n+1)]`
-/

namespace A158277.P15049360028718370289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158277.P15049360028718370289

namespace A158277

/-- `∩[A060229(n+1), A383978(n+1)]` -/
def P15049360028718370289.Spec : Prop :=
  ∀ n, (P15049360028718370289.a n : ℤ) = A158277 (n + 1)

end A158277

/-! ## A158277.P2838876088891891670

`∩[A095995(n+1), A087693(n)]`
-/

namespace A158277.P2838876088891891670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087693 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158277.P2838876088891891670

namespace A158277

/-- `∩[A095995(n+1), A087693(n)]` -/
def P2838876088891891670.Spec : Prop :=
  ∀ n, (P2838876088891891670.a n : ℤ) = A158277 (n + 1)

end A158277

/-! ## A158277.P9960590056096840368

`∩[A001359(n+1), A095995(n+1)]`
-/

namespace A158277.P9960590056096840368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158277.P9960590056096840368

namespace A158277

/-- `∩[A001359(n+1), A095995(n+1)]` -/
def P9960590056096840368.Spec : Prop :=
  ∀ n, (P9960590056096840368.a n : ℤ) = A158277 (n + 1)

end A158277

/-! ## A158277.P2819064861574850622

`∩[A095995(n+1), A111166(n+1)]`
-/

namespace A158277.P2819064861574850622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158277.P2819064861574850622

namespace A158277

/-- `∩[A095995(n+1), A111166(n+1)]` -/
def P2819064861574850622.Spec : Prop :=
  ∀ n, (P2819064861574850622.a n : ℤ) = A158277 (n + 1)

end A158277

/-! ## A158277.P10414926167385352273

`∩[A054799(n+1), A095995(n+1)]`
-/

namespace A158277.P10414926167385352273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158277.P10414926167385352273

namespace A158277

/-- `∩[A054799(n+1), A095995(n+1)]` -/
def P10414926167385352273.Spec : Prop :=
  ∀ n, (P10414926167385352273.a n : ℤ) = A158277 (n + 1)

end A158277

/-! ## A158277.P5462039224221371298

`∩[A063700(n+1), A095995(n+1)]`
-/

namespace A158277.P5462039224221371298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158277.P5462039224221371298

namespace A158277

/-- `∩[A063700(n+1), A095995(n+1)]` -/
def P5462039224221371298.Spec : Prop :=
  ∀ n, (P5462039224221371298.a n : ℤ) = A158277 (n + 1)

end A158277

/-! ## A158277.P10118850529005416219

`∩[A063693(n+1), A095995(n+1)]`
-/

namespace A158277.P10118850529005416219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158277.P10118850529005416219

namespace A158277

/-- `∩[A063693(n+1), A095995(n+1)]` -/
def P10118850529005416219.Spec : Prop :=
  ∀ n, (P10118850529005416219.a n : ℤ) = A158277 (n + 1)

end A158277

/-! ## A158277.P13676643323548433632

`∩[A095995(n+1), A378983(n+1)]`
-/

namespace A158277.P13676643323548433632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158277.P13676643323548433632

namespace A158277

/-- `∩[A095995(n+1), A378983(n+1)]` -/
def P13676643323548433632.Spec : Prop :=
  ∀ n, (P13676643323548433632.a n : ℤ) = A158277 (n + 1)

end A158277

/-! ## A158277.P9217195796924915765

`∩[A073534(n+1), A095995(n+1)]`
-/

namespace A158277.P9217195796924915765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158277.P9217195796924915765

namespace A158277

/-- `∩[A073534(n+1), A095995(n+1)]` -/
def P9217195796924915765.Spec : Prop :=
  ∀ n, (P9217195796924915765.a n : ℤ) = A158277 (n + 1)

end A158277

/-! ## A158277.P8220021083150018319

`∩[A095995(n+1), A280590(n+1)]`
-/

namespace A158277.P8220021083150018319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158277.P8220021083150018319

namespace A158277

/-- `∩[A095995(n+1), A280590(n+1)]` -/
def P8220021083150018319.Spec : Prop :=
  ∀ n, (P8220021083150018319.a n : ℤ) = A158277 (n + 1)

end A158277

/-! ## A158277.P9790911297936642118

`p?[p?[10*10*n+1]-2]`
-/

namespace A158277.P9790911297936642118
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (10 * n) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158277.P9790911297936642118

namespace A158277

/-- `p?[p?[10*10*n+1]-2]` -/
def P9790911297936642118.Spec : Prop :=
  ∀ n, P9790911297936642118.a n = A158277 (n + 1)

end A158277

/-! ## A158277.P5518233420030027120

`p?[A062800(n+1)-2]`
-/

namespace A158277.P5518233420030027120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062800 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158277.P5518233420030027120

namespace A158277

/-- `p?[A062800(n+1)-2]` -/
def P5518233420030027120.Spec : Prop :=
  ∀ n, P5518233420030027120.a n = A158277 (n + 1)

end A158277

/-! ## A158277.P16448473634500779006

`p?[A158128(A166457(n+1))-2]`
-/

namespace A158277.P16448473634500779006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (A166457 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158277.P16448473634500779006

namespace A158277

/-- `p?[A158128(A166457(n+1))-2]` -/
def P16448473634500779006.Spec : Prop :=
  ∀ n, P16448473634500779006.a n = A158277 (n + 1)

end A158277

/-! ## A158277.P2598300575567946934

`p?[A158128(A102546(n+1)/10)-2]`
-/

namespace A158277.P2598300575567946934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (SequenceMachineLib.roundAway ((A102546 (n + 1) : ℚ) / 10)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158277.P2598300575567946934

namespace A158277

/-- `p?[A158128(A102546(n+1)/10)-2]` -/
def P2598300575567946934.Spec : Prop :=
  ∀ n, P2598300575567946934.a n = A158277 (n + 1)

end A158277

/-! ## A158277.P3015769904945550396

`∩[A141881(n+1)-2, A172469(n+1)]`
-/

namespace A158277.P3015769904945550396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158277.P3015769904945550396

namespace A158277

/-- `∩[A141881(n+1)-2, A172469(n+1)]` -/
def P3015769904945550396.Spec : Prop :=
  ∀ n, (P3015769904945550396.a n : ℤ) = A158277 (n + 1)

end A158277

/-!
# A158278: Number of symmetric numerical semigroups with Frobenius number 2*n-1; that is, symmetric numerical semigroups for which the largest integer not belonging to them is 2*n-1.

The programs for A158278, there is no canonical definition to state claims against.
-/

/-! ## A158278.P16138838468897238187

`A158206(2*n+1)`
-/

namespace A158278.P16138838468897238187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158206 (2 * n + 1)

end

end A158278.P16138838468897238187

/-! ## A158278.P11305712743491149703

`or(char[15], A158206(xor(1, 2*n)))`
-/

namespace A158278.P11305712743491149703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A158206 (Nat.xor 1 (2 * n)))

end

end A158278.P11305712743491149703

/-! ## A158278.P12139500968537783756

`and(-1, A158206(A105356(n+1)))`
-/

namespace A158278.P12139500968537783756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A158206 (A105356 (n + 1)).toNat)

end

end A158278.P12139500968537783756

/-!
# A158279: Number of pseudo-symmetric numerical semigroups with Frobenius number 2*n; that is, pseudo-symmetric numerical semigroups for which the largest integer not belonging to them is 2*n.

The programs for A158279, there is no canonical definition to state claims against.
-/

/-! ## A158279.P17948570470578745368

`A158206(2*(n+1))`
-/

namespace A158279.P17948570470578745368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158206 (2 * (n + 1))

end

end A158279.P17948570470578745368

/-! ## A158279.P11011310695534868170

`A158206(n+2+n)+char[21]`
-/

namespace A158279.P11011310695534868170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158206 (n + 2 + n) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A158279.P11011310695534868170

/-! ## A158279.P5125509094859651699

`and(-1, A158206(A004271(n+3)))`
-/

namespace A158279.P5125509094859651699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A158206 (A004271 (n + 3)).toNat)

end

end A158279.P5125509094859651699

/-! ## A158279.P9927040478536607414

`∑{d}[A158206(n+2+n), A000010(#)]`
-/

namespace A158279.P9927040478536607414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158206 (n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A158279.P9927040478536607414

/-! ## A158279.P430120713364605005

`∏{d}[A158206(n+2+n), A014963(#)]`
-/

namespace A158279.P430120713364605005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158206 (n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A158279.P430120713364605005

/-!
# A158280: Octosection: A145511(8n+4) or A145501(8n+4).

The programs for A158280, the canonical program `A158280.P10487180928719056174` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158280 has offset 0).

The definition of A158280 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158280.P13348115101740910567

`A145511(8*n+4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A158280.P13348115101740910567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145511 (8 * n + 4)

end

end A158280.P13348115101740910567

namespace A158280

/-- `A145511(8*n+4)` -/
def P13348115101740910567.Spec : Prop :=
  ∀ n, P13348115101740910567.a n = A158280 n

end A158280

/-! ## A158280.P8570374792438723162

`A145501(8*n+4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A158280.P8570374792438723162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145501 (8 * n + 4)

end

end A158280.P8570374792438723162

namespace A158280

/-- `A145501(8*n+4)` -/
def P8570374792438723162.Spec : Prop :=
  ∀ n, P8570374792438723162.a n = A158280 n

end A158280

/-! ## A158280.P17054454989252141515

`7*A158315(n)`
-/

namespace A158280.P17054454989252141515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A158315 n

end

end A158280.P17054454989252141515

namespace A158280

/-- `7*A158315(n)` -/
def P17054454989252141515.Spec : Prop :=
  ∀ n, P17054454989252141515.a n = A158280 n

end A158280

/-! ## A158280.P1974344693584609790

`A145399(4*n+2)`
-/

namespace A158280.P1974344693584609790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145399 (4 * n + 2)

end

end A158280.P1974344693584609790

namespace A158280

/-- `A145399(4*n+2)` -/
def P1974344693584609790.Spec : Prop :=
  ∀ n, P1974344693584609790.a n = A158280 n

end A158280

/-! ## A158280.P2001117305817451091

`7*A288571(Δ[n²])`
-/

namespace A158280.P2001117305817451091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A288571 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A158280.P2001117305817451091

namespace A158280

/-- `7*A288571(Δ[n²])` -/
def P2001117305817451091.Spec : Prop :=
  ∀ n, P2001117305817451091.a n = A158280 n

end A158280

/-! ## A158280.P10487180928719056174

`7*A133700(2*n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A158280

/-- `7*A133700(2*n+1)` -/
def P10487180928719056174.Spec : Prop :=
  ∀ n, P10487180928719056174.a n = A158280 n

theorem P10487180928719056174.correct : P10487180928719056174.Spec := by
  intro n
  simp only [A158280]

end A158280

/-! ## A158280.P3814203335504426722

`7*A369100(2*n+1)`
-/

namespace A158280.P3814203335504426722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A369100 (2 * n + 1)

end

end A158280.P3814203335504426722

namespace A158280

/-- `7*A369100(2*n+1)` -/
def P3814203335504426722.Spec : Prop :=
  ∀ n, P3814203335504426722.a n = A158280 n

end A158280

/-! ## A158280.P12107663757449254434

`7*∑{d}[Δ[n²], A000005(#)]`
-/

namespace A158280.P12107663757449254434
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (∑ d ∈ Nat.divisors (f1 n).natAbs, A000005 d)

end

end A158280.P12107663757449254434

namespace A158280

/-- `7*∑{d}[Δ[n²], A000005(#)]` -/
def P12107663757449254434.Spec : Prop :=
  ∀ n, P12107663757449254434.a n = A158280 n

end A158280

/-! ## A158280.P11069113395064989605

`A008589(A158315(n))`
-/

namespace A158280.P11069113395064989605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (A158315 n).toNat

end

end A158280.P11069113395064989605

namespace A158280

/-- `A008589(A158315(n))` -/
def P11069113395064989605.Spec : Prop :=
  ∀ n, P11069113395064989605.a n = A158280 n

end A158280

/-! ## A158280.P8770635343673362348

`7*A007425(2*n+1)`
-/

namespace A158280.P8770635343673362348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A007425 (2 * n + 1)

end

end A158280.P8770635343673362348

namespace A158280

/-- `7*A007425(2*n+1)` -/
def P8770635343673362348.Spec : Prop :=
  ∀ n, P8770635343673362348.a n = A158280 n

end A158280

/-! ## A158280.P11857562952998690691

`7*A145444(2*n+1)`
-/

namespace A158280.P11857562952998690691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A145444 (2 * n + 1)

end

end A158280.P11857562952998690691

namespace A158280

/-- `7*A145444(2*n+1)` -/
def P11857562952998690691.Spec : Prop :=
  ∀ n, P11857562952998690691.a n = A158280 n

end A158280

/-! ## A158280.P14619431242058304300

`∑{d}[2*n+1, 7*A001227(#)]`
-/

namespace A158280.P14619431242058304300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), 7 * A001227 d

end

end A158280.P14619431242058304300

namespace A158280

/-- `∑{d}[2*n+1, 7*A001227(#)]` -/
def P14619431242058304300.Spec : Prop :=
  ∀ n, P14619431242058304300.a n = A158280 n

end A158280

/-!
# A158281: Prime numbers p such that prime = abs(smallest digit of p - sum of all the other digits of p).

The programs for A158281, there is no canonical definition to state claims against.
-/

/-! ## A158281.P2269579418974730070

`A115261(n+1)-A115251(A230398(n+1))`
-/

namespace A158281.P2269579418974730070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115261 (n + 1) - A115251 (A230398 (n + 1)).toNat

end

end A158281.P2269579418974730070

/-!
# A158283: Prime numbers p such that 1 = abs(final digit of p - sum of all the other digits of p).

The programs for A158283, there is no canonical definition to state claims against.
-/

/-! ## A158283.P7321481119264527472

`A156979(lt[A156982(3*n+2), A156992(2*n+3)])`
-/

namespace A158283.P7321481119264527472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156982 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156992 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156979 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A158283.P7321481119264527472

/-! ## A158283.P4694023829459210109

`A156979(lt[A185284(3*n), A343097(2*(n+1))])`
-/

namespace A158283.P4694023829459210109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156979 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A158283.P4694023829459210109

/-! ## A158283.P214863208185044469

`A156979(lt[A265828(n), A181281(2*n+3)])`
-/

namespace A158283.P214863208185044469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265828 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181281 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156979 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A158283.P214863208185044469

/-! ## A158283.P18254454183718662021

`A156979(lt[A319629(n), A325012(2*n+3)])`
-/

namespace A158283.P18254454183718662021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319629 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325012 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156979 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A158283.P18254454183718662021

/-!
# A158284: List of pairs p, p+2 where p is prime and p and p+2 contain the same number of prime digits.

The programs for A158284, there is no canonical definition to state claims against.
-/

/-! ## A158284.P6265984514118894139

`A228354(n+2)+A020985(A286437(n+3))`
-/

namespace A158284.P6265984514118894139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228354 (n + 2) + A020985 (A286437 (n + 3)).toNat

end

end A158284.P6265984514118894139

/-!
# A158287: Composite RMS numbers: composite numbers c such that root mean square of divisors of c is an integer.

The programs for A158287, there is no canonical definition to state claims against.
-/

/-! ## A158287.P3573602269324428664

`A057427(A111125(n))*A140480(n+5)`
-/

namespace A158287.P3573602269324428664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A111125 n).toNat * A140480 (n + 5)

end

end A158287.P3573602269324428664

/-! ## A158287.P4742093897247687996

`or(A047999(A126316(n)), A140480(n+5))`
-/

namespace A158287.P4742093897247687996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A047999 (A126316 n).toNat) (A140480 (n + 5))

end

end A158287.P4742093897247687996

/-! ## A158287.P4849793446743970805

`A140480(n+5)+A000007(A128305(n+1))`
-/

namespace A158287.P4849793446743970805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140480 (n + 5) + A000007 (A128305 (n + 1)).toNat

end

end A158287.P4849793446743970805

/-!
# A158289: Period 18 zigzag sequence: repeat [0,1,2,3,4,5,6,7,8,9,8,7,6,5,4,3,2,1].

The programs for A158289, the canonical program `A158289.P1530236483260211445` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158289 has offset 0).

The definition of A158289 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158289.P1530236483260211445

`abs(n-18*round(n/18))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158289

/-- `abs(n-18*round(n/18))` -/
def P1530236483260211445.Spec : Prop :=
  ∀ n, P1530236483260211445.a n = A158289 n

theorem P1530236483260211445.correct : P1530236483260211445.Spec := by
  intro n
  simp only [A158289]

end A158289

/-!
# A158290: Primes in which a digit is square of another digit.

The programs for A158290, there is no canonical definition to state claims against.
-/

/-! ## A158290.P5495817294380512548

`record[A090302(A090298(n+1)+10)]`
-/

namespace A158290.P5495817294380512548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090302 (A090298 (n + 1) + 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158290.P5495817294380512548

/-! ## A158290.P4076374733141434290

`record[A090302(A090298(n+4))]`
-/

namespace A158290.P4076374733141434290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090302 (A090298 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158290.P4076374733141434290

/-! ## A158290.P6942383852333883166

`A000040(lt[A037273(2*(n+1)), A000196(n)])`
-/

namespace A158290.P6942383852333883166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037273 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A158290.P6942383852333883166

/-! ## A158290.P15363909326414125822

`∩[A000040(n+1), A359908(A050435(n+1))]`
-/

namespace A158290.P15363909326414125822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359908 (A050435 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158290.P15363909326414125822

/-! ## A158290.P8692738428549392468

`∩[A028781(n+1), A229947(n+1)]`
-/

namespace A158290.P8692738428549392468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158290.P8692738428549392468

/-!
# A158291: The number of numerical sets S with atom monoid A(S) equal to {0,n+1,n+2,n+3,n+4,...}.

The programs for A158291, there is no canonical definition to state claims against.
-/

/-! ## A158291.P6895383295325426872

`∪[2*A164048(n+1), A164048(n+1)]`
-/

namespace A158291.P6895383295325426872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A158291.P6895383295325426872

/-! ## A158291.P6137736340923308916

`∪[A164048(n+1), A005843(A164048(n+1))]`
-/

namespace A158291.P6137736340923308916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A164048 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A158291.P6137736340923308916

/-! ## A158291.P2714045688922505984

`A108611(A144520(n))+A005418(n+1)`
-/

namespace A158291.P2714045688922505984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A144520 n).toNat + A005418 (n + 1)

end

end A158291.P2714045688922505984

/-! ## A158291.P13908694985783003524

`A023416(A146145(n+1))+A005418(n+1)`
-/

namespace A158291.P13908694985783003524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A146145 (n + 1)).toNat + A005418 (n + 1)

end

end A158291.P13908694985783003524

/-! ## A158291.P16748498166758293112

`A113979(n+1)+A108611(A144520(n))+A077957(n)`
-/

namespace A158291.P16748498166758293112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113979 (n + 1) + (A108611 (A144520 n).toNat + A077957 n)

end

end A158291.P16748498166758293112

/-!
# A158292: Numbers k where the sum of all of its divisors != sqrt(k) exceeds the sum of all the divisors of m != sqrt(m) for all m < k.

The programs for A158292, there is no canonical definition to state claims against.
-/

/-! ## A158292.P16458897632923776779

`lt[A008615(A037015(n+1)), A076078(n+1)]+1`
-/

namespace A158292.P16458897632923776779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A037015 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A158292.P16458897632923776779

/-! ## A158292.P2926868382675250785

`lt[A324757(n), A045716(A326842(n))]`
-/

namespace A158292.P2926868382675250785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324757 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045716 (A326842 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158292.P2926868382675250785

/-! ## A158292.P10153419239462256234

`lt[A365312(n)², A194803(n)]`
-/

namespace A158292.P10153419239462256234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365312 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194803 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158292.P10153419239462256234

/-! ## A158292.P9444997410552588540

`lt[A327779(n), A013645(A326842(n))]`
-/

namespace A158292.P9444997410552588540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327779 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013645 (A326842 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158292.P9444997410552588540

/-! ## A158292.P3038263988327048760

`lt[A103205(A098743(n)), A103372(n+1)]`
-/

namespace A158292.P3038263988327048760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103205 (A098743 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103372 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158292.P3038263988327048760

/-!
# A158293: Primes whose digit sum is a multiple of 10.

The programs for A158293, there is no canonical definition to state claims against.
-/

/-! ## A158293.P17790155306214242785

`p?[A094677(n+1)]`
-/

namespace A158293.P17790155306214242785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158293.P17790155306214242785

/-! ## A158293.P3257415046792633640

`record[A006530(A218292(n+1))]`
-/

namespace A158293.P3257415046792633640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A218292 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158293.P3257415046792633640

/-! ## A158293.P5009222319701314115

`filter[A094677(n+1), A010051(#)]`
-/

namespace A158293.P5009222319701314115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A158293.P5009222319701314115

/-! ## A158293.P11688661434912673089

`filter[A094677(n+1), A080339(#)]`
-/

namespace A158293.P11688661434912673089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A158293.P11688661434912673089

/-!
# A158294: Averages of squares of divisors of numbers in A020486 (i.e., numbers m with property that average of squares of divisors is an integer: sigma_0(m) divides sigma_2(m)).

The programs for A158294, the canonical program `A158294.P15557251001047675323` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158294 has offset 1).

The definition of A158294 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5955 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158294.P15557251001047675323

`A158299(A020486(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A158294

/-- `A158299(A020486(n+1))` -/
def P15557251001047675323.Spec : Prop :=
  ∀ n, P15557251001047675323.a n = A158294 (n + 1)

theorem P15557251001047675323.correct : P15557251001047675323.Spec := by
  intro n
  simp only [A158294, Nat.add_sub_cancel]

end A158294

/-! ## A158294.P13139227027844795541

`A158299(eq[1, A158298(n+1)]+1)`
-/

namespace A158294.P13139227027844795541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158299 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A158294.P13139227027844795541

namespace A158294

/-- `A158299(eq[1, A158298(n+1)]+1)` -/
def P13139227027844795541.Spec : Prop :=
  ∀ n, P13139227027844795541.a n = A158294 (n + 1)

end A158294

/-! ## A158294.P2375208479288568764

`A158299(record[(n+1)/A158298(n+1)])`
-/

namespace A158294.P2375208479288568764
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A158298 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158299 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A158294.P2375208479288568764

namespace A158294

/-- `A158299(record[(n+1)/A158298(n+1)])` -/
def P2375208479288568764.Spec : Prop :=
  ∀ n, P2375208479288568764.a n = A158294 (n + 1)

end A158294

/-! ## A158294.P1668484244326191891

`A158299(record[n+1-∑{d}[A158298(n+1), A055671(#)]])`
-/

namespace A158294.P1668484244326191891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158298 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ d ∈ Nat.divisors (f2 n).natAbs, A055671 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158299 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A158294.P1668484244326191891

namespace A158294

/-- `A158299(record[n+1-∑{d}[A158298(n+1), A055671(#)]])` -/
def P1668484244326191891.Spec : Prop :=
  ∀ n, P1668484244326191891.a n = A158294 (n + 1)

end A158294

/-! ## A158294.P5744100678673444948

`A158299(record[gcd(n+1, A001157(n+1)%A000005(n+1))])`
-/

namespace A158294.P5744100678673444948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (A001157 (n + 1)) (A000005 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158299 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A158294.P5744100678673444948

namespace A158294

/-- `A158299(record[gcd(n+1, A001157(n+1)%A000005(n+1))])` -/
def P5744100678673444948.Spec : Prop :=
  ∀ n, P5744100678673444948.a n = A158294 (n + 1)

end A158294

/-!
# A158295: Primes p such that p^3-p-+1 are twin primes.

The programs for A158295, there is no canonical definition to state claims against.
-/

/-! ## A158295.P9922896948076454323

`∩[A236168(n+1), A236478(n+1)]`
-/

namespace A158295.P9922896948076454323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158295.P9922896948076454323

/-! ## A158295.P17246464341739717989

`∩[A236168(n+1), A236524(n+1)]`
-/

namespace A158295.P17246464341739717989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158295.P17246464341739717989

/-! ## A158295.P8553932276191780151

`∩[A236478(n+1), A236524(n+1)]`
-/

namespace A158295.P8553932276191780151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158295.P8553932276191780151

/-! ## A158295.P15578361161135677525

`p?[A236524(n+1)]`
-/

namespace A158295.P15578361161135677525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158295.P15578361161135677525

/-! ## A158295.P7922631975356161302

`p?[record[A236524(A324343(n))]]`
-/

namespace A158295.P7922631975356161302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236524 (A324343 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158295.P7922631975356161302

/-! ## A158295.P9242517717755814843

`∩[A064739(n+1), A236524(n+1)]`
-/

namespace A158295.P9242517717755814843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158295.P9242517717755814843

/-! ## A158295.P2093329427102404294

`record[A020639(A236524(n+2))]`
-/

namespace A158295.P2093329427102404294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A236524 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158295.P2093329427102404294

/-! ## A158295.P16394904823731755810

`filter[A236524(n+1), A010051(#)]`
-/

namespace A158295.P16394904823731755810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A158295.P16394904823731755810

/-!
# A158296: Primes p such that 12*p^2 -+ 1 are twin primes.

The programs for A158296, there is no canonical definition to state claims against.
-/

/-! ## A158296.P13982288423379322354

`p?[A154331(n+1)]`
-/

namespace A158296.P13982288423379322354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158296.P13982288423379322354

/-! ## A158296.P4606351388586714652

`record[p?[A154331(A052938(n))]]`
-/

namespace A158296.P4606351388586714652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154331 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158296.P4606351388586714652

/-! ## A158296.P6932523745526646508

`p?[A033999(n)*A154331(A052938(n))]`
-/

namespace A158296.P6932523745526646508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A154331 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158296.P6932523745526646508

/-! ## A158296.P4086118055600673482

`∩[A045417(n+1), A154331(n+1)]`
-/

namespace A158296.P4086118055600673482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158296.P4086118055600673482

/-! ## A158296.P5199051739744562228

`∩[A045426(n+1), A154331(n+1)]`
-/

namespace A158296.P5199051739744562228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158296.P5199051739744562228

/-! ## A158296.P4838924137041255254

`∩[A045320(n+1), A154331(n+1)]`
-/

namespace A158296.P4838924137041255254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158296.P4838924137041255254

/-! ## A158296.P10027491885472065095

`∩[A045334(n+1), A154331(n+1)]`
-/

namespace A158296.P10027491885472065095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158296.P10027491885472065095

/-! ## A158296.P1454922992770587950

`∩[A045393(n+1), A154331(n+1)]`
-/

namespace A158296.P1454922992770587950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158296.P1454922992770587950

/-! ## A158296.P8852333727122818254

`∩[A045402(n+1), A154331(n+1)]`
-/

namespace A158296.P8852333727122818254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158296.P8852333727122818254

/-! ## A158296.P2870927962414157254

`∩[A049545(n+1), A154331(n+1)]`
-/

namespace A158296.P2870927962414157254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158296.P2870927962414157254

/-! ## A158296.P10983052993539702854

`∩[A000040(n+1), A154331(n+1)]`
-/

namespace A158296.P10983052993539702854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158296.P10983052993539702854

/-! ## A158296.P7951012666235745464

`∩[A004139(n+1), A154331(n+1)]`
-/

namespace A158296.P7951012666235745464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158296.P7951012666235745464

/-! ## A158296.P14828863881268309224

`∩[A045319(n+1), A154331(n+1)]`
-/

namespace A158296.P14828863881268309224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158296.P14828863881268309224

/-! ## A158296.P9627328349097784242

`∩[A065091(n+1), A154331(n+1)]`
-/

namespace A158296.P9627328349097784242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158296.P9627328349097784242

/-! ## A158296.P2075935316241447433

`∩[A065396(n+1), A154331(n+1)]`
-/

namespace A158296.P2075935316241447433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158296.P2075935316241447433

/-! ## A158296.P9848595904197001647

`∩[A154331(n+1), A182140(n+1)]`
-/

namespace A158296.P9848595904197001647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158296.P9848595904197001647

/-! ## A158296.P16275345697084922284

`∩[A154331(n+1), A182986(n+1)]`
-/

namespace A158296.P16275345697084922284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158296.P16275345697084922284

/-! ## A158296.P12854935591558558379

`∩[A154331(n+1), A268391(n+1)]`
-/

namespace A158296.P12854935591558558379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158296.P12854935591558558379

/-! ## A158296.P17291164122682947749

`filter[A154331(n+1), A010051(#)]`
-/

namespace A158296.P17291164122682947749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A158296.P17291164122682947749

/-!
# A158298: Denominators of averages of squares of the divisors of n.

The programs for A158298, the canonical program `A158298.P6478602718411475898` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158298 has offset 1).

The definition of A158298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158298.P6478602718411475898

`lcm(∑{d}[n+1, #²], ∏{e}[n+1, #+1])/∑{d}[n+1, #²]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158298

/-- `lcm(∑{d}[n+1, #²], ∏{e}[n+1, #+1])/∑{d}[n+1, #²]` -/
def P6478602718411475898.Spec : Prop :=
  ∀ n, P6478602718411475898.a n = (A158298 (n + 1) : ℚ)

end A158298

/-! ## A158298.P5569219067792508387

`∏{e}[n+1, #+1]/gcd(∑{d}[n+1, #²], ∏{e}[n+1, #+1])`
-/

namespace A158298.P5569219067792508387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / (Nat.gcd (∑ d ∈ Nat.divisors (f2 n), d ^ 2) (∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)) : ℚ)

end

end A158298.P5569219067792508387

namespace A158298

/-- `∏{e}[n+1, #+1]/gcd(∑{d}[n+1, #²], ∏{e}[n+1, #+1])` -/
def P5569219067792508387.Spec : Prop :=
  ∀ n, P5569219067792508387.a n = (A158298 (n + 1) : ℚ)

end A158298

/-! ## A158298.P18230145317302197869

`A000005(n+1)/A001157(n+1)*A158299(n+1)`
-/

namespace A158298.P18230145317302197869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A001157 (n + 1) : ℚ) * (A158299 (n + 1) : ℚ)

end

end A158298.P18230145317302197869

namespace A158298

/-- `A000005(n+1)/A001157(n+1)*A158299(n+1)` -/
def P18230145317302197869.Spec : Prop :=
  ∀ n, P18230145317302197869.a n = (A158298 (n + 1) : ℚ)

end A158298

/-! ## A158298.P348822767564052379

`A038040(n+1)*A158299(n+1)/A328259(n+1)`
-/

namespace A158298.P348822767564052379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) * A158299 (n + 1) : ℚ) / (A328259 (n + 1) : ℚ)

end

end A158298.P348822767564052379

namespace A158298

/-- `A038040(n+1)*A158299(n+1)/A328259(n+1)` -/
def P348822767564052379.Spec : Prop :=
  ∀ n, P348822767564052379.a n = (A158298 (n + 1) : ℚ)

end A158298

/-! ## A158298.P5630166010087131997

`A203847(n+1)/gcd(A203847(n+1), A203849(n+1))`
-/

namespace A158298.P5630166010087131997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203847 (n + 1) : ℚ) / (Int.gcd (A203847 (n + 1)) (A203849 (n + 1)) : ℚ)

end

end A158298.P5630166010087131997

namespace A158298

/-- `A203847(n+1)/gcd(A203847(n+1), A203849(n+1))` -/
def P5630166010087131997.Spec : Prop :=
  ∀ n, P5630166010087131997.a n = (A158298 (n + 1) : ℚ)

end A158298

/-! ## A158298.P13658429220280890470

`A204270(n+1)/gcd(A204270(n+1), A204272(n+1))`
-/

namespace A158298.P13658429220280890470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204270 (n + 1) : ℚ) / (Int.gcd (A204270 (n + 1)) (A204272 (n + 1)) : ℚ)

end

end A158298.P13658429220280890470

namespace A158298

/-- `A204270(n+1)/gcd(A204270(n+1), A204272(n+1))` -/
def P13658429220280890470.Spec : Prop :=
  ∀ n, P13658429220280890470.a n = (A158298 (n + 1) : ℚ)

end A158298

/-!
# A158299: Numerators of averages of squares of the divisors of n.

The programs for A158299, the canonical program `A158299.P14078010460539491531` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158299 has offset 1).

The definition of A158299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158299.P11115197911657086307

`A001157(n+1)/A000005(n+1)*A158298(n+1)`
-/

namespace A158299.P11115197911657086307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ) * (A158298 (n + 1) : ℚ)

end

end A158299.P11115197911657086307

namespace A158299

/-- `A001157(n+1)/A000005(n+1)*A158298(n+1)` -/
def P11115197911657086307.Spec : Prop :=
  ∀ n, P11115197911657086307.a n = (A158299 (n + 1) : ℚ)

end A158299

/-! ## A158299.P14078010460539491531

`A001157(n+1)/gcd(A001157(n+1), A062011(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A158299

/-- `A001157(n+1)/gcd(A001157(n+1), A062011(n+1))` -/
def P14078010460539491531.Spec : Prop :=
  ∀ n, P14078010460539491531.a n = (A158299 (n + 1) : ℚ)

end A158299

/-! ## A158299.P5489713800304870613

`lcm(A038040(n+1), A328259(n+1))/A038040(n+1)`
-/

namespace A158299.P5489713800304870613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A038040 (n + 1)) (A328259 (n + 1)) : ℚ) / (A038040 (n + 1) : ℚ)

end

end A158299.P5489713800304870613

namespace A158299

/-- `lcm(A038040(n+1), A328259(n+1))/A038040(n+1)` -/
def P5489713800304870613.Spec : Prop :=
  ∀ n, P5489713800304870613.a n = (A158299 (n + 1) : ℚ)

end A158299

/-! ## A158299.P14661871880085981986

`A203849(n+1)/gcd(A203847(n+1), A203849(n+1))`
-/

namespace A158299.P14661871880085981986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203849 (n + 1) : ℚ) / (Int.gcd (A203847 (n + 1)) (A203849 (n + 1)) : ℚ)

end

end A158299.P14661871880085981986

namespace A158299

/-- `A203849(n+1)/gcd(A203847(n+1), A203849(n+1))` -/
def P14661871880085981986.Spec : Prop :=
  ∀ n, P14661871880085981986.a n = (A158299 (n + 1) : ℚ)

end A158299

/-! ## A158299.P16030856089932989237

`A204272(n+1)/gcd(A204270(n+1), A204272(n+1))`
-/

namespace A158299.P16030856089932989237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204272 (n + 1) : ℚ) / (Int.gcd (A204270 (n + 1)) (A204272 (n + 1)) : ℚ)

end

end A158299.P16030856089932989237

namespace A158299

/-- `A204272(n+1)/gcd(A204270(n+1), A204272(n+1))` -/
def P16030856089932989237.Spec : Prop :=
  ∀ n, P16030856089932989237.a n = (A158299 (n + 1) : ℚ)

end A158299

