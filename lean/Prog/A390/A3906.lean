import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C014
import Seq.B000.C015
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
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
import Seq.B012.C000
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
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A390603: Number of closed binary operations on n labeled elements satisfying (xy)z = xy identically.

The programs for A390603, there is no canonical definition to state claims against.
-/

/-! ## A390603.P1559070563334818943

`A237667(A048121(n+2))`
-/

namespace A390603.P1559070563334818943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237667 (A048121 (n + 2)).toNat

end

end A390603.P1559070563334818943

/-!
# A390608: a(n) = phi(n) * omega(n).

The programs for A390608, the canonical program `A390608.P15575497196567576275` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390608 has offset 1).

The definition of A390608 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390608.P12812220481231006642

`A122411(n+1)-A116512(n+1)`
-/

namespace A390608.P12812220481231006642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122411 (n + 1) - A116512 (n + 1)

end

end A390608.P12812220481231006642

namespace A390608

/-- `A122411(n+1)-A116512(n+1)` -/
def P12812220481231006642.Spec : Prop :=
  ∀ n, P12812220481231006642.a n = A390608 (n + 1)

end A390608

/-! ## A390608.P15575497196567576275

`A000010(n+1)*A001221(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A390608

/-- `A000010(n+1)*A001221(n+1)` -/
def P15575497196567576275.Spec : Prop :=
  ∀ n, P15575497196567576275.a n = A390608 (n + 1)

theorem P15575497196567576275.correct : P15575497196567576275.Spec := by
  intro n
  simp only [A390608, Nat.add_sub_cancel]

end A390608

/-! ## A390608.P851373419793364684

`A000010(n+1)*A001222(A007947(n+1))`
-/

namespace A390608.P851373419793364684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A001222 (A007947 (n + 1)).toNat

end

end A390608.P851373419793364684

namespace A390608

/-- `A000010(n+1)*A001222(A007947(n+1))` -/
def P851373419793364684.Spec : Prop :=
  ∀ n, P851373419793364684.a n = A390608 (n + 1)

end A390608

/-! ## A390608.P6918582272324225781

`A000010(n+1)*A001222(A034444(n+1))`
-/

namespace A390608.P6918582272324225781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A001222 (A034444 (n + 1)).toNat

end

end A390608.P6918582272324225781

namespace A390608

/-- `A000010(n+1)*A001222(A034444(n+1))` -/
def P6918582272324225781.Spec : Prop :=
  ∀ n, P6918582272324225781.a n = A390608 (n + 1)

end A390608

/-! ## A390608.P96463089644094901

`(A002088(n+1)-A002088(n))*A001221(n+1)`
-/

namespace A390608.P96463089644094901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002088 (n + 1) - A002088 n) * A001221 (n + 1)

end

end A390608.P96463089644094901

namespace A390608

/-- `(A002088(n+1)-A002088(n))*A001221(n+1)` -/
def P96463089644094901.Spec : Prop :=
  ∀ n, P96463089644094901.a n = A390608 (n + 1)

end A390608

/-! ## A390608.P16022958602329973700

`(A048865(n+1)+A048864(n+1))*A001221(n+1)`
-/

namespace A390608.P16022958602329973700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048865 (n + 1) + A048864 (n + 1)) * A001221 (n + 1)

end

end A390608.P16022958602329973700

namespace A390608

/-- `(A048865(n+1)+A048864(n+1))*A001221(n+1)` -/
def P16022958602329973700.Spec : Prop :=
  ∀ n, P16022958602329973700.a n = A390608 (n + 1)

end A390608

/-! ## A390608.P10872485168013347717

`(A179179(n+1)+A001221(n+1))*A001221(n+1)`
-/

namespace A390608.P10872485168013347717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A179179 (n + 1) + A001221 (n + 1)) * A001221 (n + 1)

end

end A390608.P10872485168013347717

namespace A390608

/-- `(A179179(n+1)+A001221(n+1))*A001221(n+1)` -/
def P10872485168013347717.Spec : Prop :=
  ∀ n, P10872485168013347717.a n = A390608 (n + 1)

end A390608

/-! ## A390608.P13231422327364593566

`(A057859(n+1)-A000010(n+1))*A000010(n+1)`
-/

namespace A390608.P13231422327364593566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057859 (n + 1) - A000010 (n + 1)) * A000010 (n + 1)

end

end A390608.P13231422327364593566

namespace A390608

/-- `(A057859(n+1)-A000010(n+1))*A000010(n+1)` -/
def P13231422327364593566.Spec : Prop :=
  ∀ n, P13231422327364593566.a n = A390608 (n + 1)

end A390608

/-! ## A390608.P4273383491633225269

`(A057859(n+1)-A001221(n+1))*A001221(n+1)`
-/

namespace A390608.P4273383491633225269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057859 (n + 1) - A001221 (n + 1)) * A001221 (n + 1)

end

end A390608.P4273383491633225269

namespace A390608

/-- `(A057859(n+1)-A001221(n+1))*A001221(n+1)` -/
def P4273383491633225269.Spec : Prop :=
  ∀ n, P4273383491633225269.a n = A390608 (n + 1)

end A390608

/-! ## A390608.P15602838541639913277

`(A065387(n+1)-A000203(n+1))*A001221(n+1)`
-/

namespace A390608.P15602838541639913277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065387 (n + 1) - A000203 (n + 1)) * A001221 (n + 1)

end

end A390608.P15602838541639913277

namespace A390608

/-- `(A065387(n+1)-A000203(n+1))*A001221(n+1)` -/
def P15602838541639913277.Spec : Prop :=
  ∀ n, P15602838541639913277.a n = A390608 (n + 1)

end A390608

/-! ## A390608.P3860796901219115002

`(A000010(n+1)-A179179(n+1))*A000010(n+1)`
-/

namespace A390608.P3860796901219115002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) - A179179 (n + 1)) * A000010 (n + 1)

end

end A390608.P3860796901219115002

namespace A390608

/-- `(A000010(n+1)-A179179(n+1))*A000010(n+1)` -/
def P3860796901219115002.Spec : Prop :=
  ∀ n, P3860796901219115002.a n = A390608 (n + 1)

end A390608

/-! ## A390608.P16560208530660795251

`A001221(n+1)*A003557(n+1)*A173557(n+1)`
-/

namespace A390608.P16560208530660795251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A003557 (n + 1) * A173557 (n + 1)

end

end A390608.P16560208530660795251

namespace A390608

/-- `A001221(n+1)*A003557(n+1)*A173557(n+1)` -/
def P16560208530660795251.Spec : Prop :=
  ∀ n, P16560208530660795251.a n = A390608 (n + 1)

end A390608

/-! ## A390608.P9525648173981937877

`A140584(n+1)-(n+1)`
-/

namespace A390608.P9525648173981937877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140584 (n + 1) - (n + 1 : ℤ)

end

end A390608.P9525648173981937877

namespace A390608

/-- `A140584(n+1)-(n+1)` -/
def P9525648173981937877.Spec : Prop :=
  ∀ n, P9525648173981937877.a n = A390608 (n + 1)

end A390608

/-! ## A390608.P10235534127879139036

`A347104((n+1)²)/(n+1)`
-/

namespace A390608.P10235534127879139036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347104 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A390608.P10235534127879139036

namespace A390608

/-- `A347104((n+1)²)/(n+1)` -/
def P10235534127879139036.Spec : Prop :=
  ∀ n, P10235534127879139036.a n = (A390608 (n + 1) : ℚ)

end A390608

/-!
# A390609: Irregular triangle read by rows: T(n,k) is the sum of noncomposite numbers in the k-th 2-dense sublist of divisors of n, with n >= 1, k >= 1.

The programs for A390609, there is no canonical definition to state claims against.
-/

/-! ## A390609.P1503831080540534724

`A384149(n+1)-A390610(n+1)`
-/

namespace A390609.P1503831080540534724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384149 (n + 1) - A390610 (n + 1)

end

end A390609.P1503831080540534724

/-!
# A390610: Irregular triangle read by rows: T(n,k) is the sum of composite numbers in the k-th 2-dense sublist of divisors of n, with n >= 1, k >= 1.

The programs for A390610, there is no canonical definition to state claims against.
-/

/-! ## A390610.P13051449797647783379

`A384149(n+1)-A390609(n+1)`
-/

namespace A390610.P13051449797647783379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384149 (n + 1) - A390609 (n + 1)

end

end A390610.P13051449797647783379

/-!
# A390611: E.g.f. A(x) satisfies A(x) = 1 + x*exp(x^3)*A(x)^3.

The programs for A390611, there is no canonical definition to state claims against.
-/

/-! ## A390611.P16658509936520516286

`A000593(A006150(n))`
-/

namespace A390611.P16658509936520516286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A006150 n).toNat

end

end A390611.P16658509936520516286

/-!
# A390612: a(n) = Sum_{k=0..n} (k+1) * 2^k * binomial(k,n-k)^2.

The programs for A390612, there is no canonical definition to state claims against.
-/

/-! ## A390612.P7920384068351886787

`A004001(A030192(n)+n)`
-/

namespace A390612.P7920384068351886787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A030192 n + (n : ℤ)).toNat

end

end A390612.P7920384068351886787

/-!
# A390613: Numbers that are the sum of three consecutive primes and also the sum of three consecutive composites.

The programs for A390613, the canonical program `A390613.P13768311840881029602` is in `Seq.B007.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390613 has offset 1).

The definition of A390613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 507 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390613.P13768311840881029602

`∩[A034961(n+1), A166039(n+1)]`

The canonical program, it is in `Seq.B007.C002`.
-/

namespace A390613

/-- `∩[A034961(n+1), A166039(n+1)]` -/
def P13768311840881029602.Spec : Prop :=
  ∀ n, (P13768311840881029602.a n : ℤ) = A390613 (n + 1)

theorem P13768311840881029602.correct : P13768311840881029602.Spec := by
  intro n
  simp only [A390613, Nat.add_sub_cancel]

end A390613

/-!
# A390614: a(n) = Kronecker symbol (-35/n) = (n/35).

The programs for A390614, the canonical program `A390614.P12437563007930374621` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390614 has offset 0).

The definition of A390614 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175629, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390614.P12437563007930374621

`A080891(n)*A175629(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A390614

/-- `A080891(n)*A175629(n)` -/
def P12437563007930374621.Spec : Prop :=
  ∀ n, P12437563007930374621.a n = A390614 n

theorem P12437563007930374621.correct : P12437563007930374621.Spec := by
  intro n
  simp only [A390614]

end A390614

/-!
# A390615: a(n) = Kronecker symbol (28/n).

The programs for A390615, there is no canonical definition to state claims against.
-/

/-! ## A390615.P5793949625256908757

`A101455(n)*A175629(n)`
-/

namespace A390615.P5793949625256908757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 n * A175629 n

end

end A390615.P5793949625256908757

/-!
# A390616: Sum of depths of leaves in a complete ternary tree with n nodes.

The programs for A390616, there is no canonical definition to state claims against.
-/

/-! ## A390616.P15833569833255858488

`A392681(∑[n+1]+2)`
-/

namespace A390616.P15833569833255858488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392681 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A390616.P15833569833255858488

/-!
# A390620: Number of free polynars with n cells.

The programs for A390620, there is no canonical definition to state claims against.
-/

/-! ## A390620.P16721800948221531681

`A055253(ceil(exp(n)²))`
-/

namespace A390620.P16721800948221531681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055253 ⌈Real.exp (n : ℝ) ^ 2⌉.toNat

end

end A390620.P16721800948221531681

/-!
# A390621: Number of one-sided polynars with n cells.

The programs for A390621, there is no canonical definition to state claims against.
-/

/-! ## A390621.P12622514651007141352

`A131232(A103959(n+1)+A101556(n))`
-/

namespace A390621.P12622514651007141352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131232 (A103959 (n + 1) + A101556 n).toNat

end

end A390621.P12622514651007141352

/-!
# A390622: Number of fixed polynars with n cells.

The programs for A390622, there is no canonical definition to state claims against.
-/

/-! ## A390622.P18279742688742757595

`A396643(n+1)+A001168(n+1)`
-/

namespace A390622.P18279742688742757595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396643 (n + 1) + A001168 (n + 1)

end

end A390622.P18279742688742757595

/-!
# A390623: Cluster series for percolation on the cells of the Cairo tiling.

The programs for A390623, there is no canonical definition to state claims against.
-/

/-! ## A390623.P15178756471685588008

`A174995(A000079(n))+A027336(3*n+2)`
-/

namespace A390623.P15178756471685588008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174995 (A000079 n).toNat + A027336 (3 * n + 2)

end

end A390623.P15178756471685588008

/-! ## A390623.P2275608559090519496

`A111439(A371974(3*n)+A078842(2*n))`
-/

namespace A390623.P2275608559090519496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (A371974 (3 * n) + A078842 (2 * n)).toNat

end

end A390623.P2275608559090519496

/-!
# A390626: Numbers k such that the symmetric representation of sigma, SRS(k), and SRS(2k), both considered as lists of the sizes of their parts, have the same number of parts.

The programs for A390626, there is no canonical definition to state claims against.
-/

/-! ## A390626.P4100560494106533706

`∪[A074726(n+1), A390628(n+1)]`
-/

namespace A390626.P4100560494106533706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390626.P4100560494106533706

/-! ## A390626.P6552028160318322778

`∪[A078596(n+1), A390628(n+1)]`
-/

namespace A390626.P6552028160318322778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390626.P6552028160318322778

/-! ## A390626.P7950115477349718434

`∪[A085129(n+1), A390628(n+1)]`
-/

namespace A390626.P7950115477349718434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390626.P7950115477349718434

/-! ## A390626.P8233567339710059045

`∪[A097620(n+1), A390628(n+1)]`
-/

namespace A390626.P8233567339710059045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390626.P8233567339710059045

/-! ## A390626.P14754460238577931191

`eq[A237271(2*(n+1)), A237271(n+1)]+1`
-/

namespace A390626.P14754460238577931191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A390626.P14754460238577931191

/-!
# A390627: Numbers k such that the symmetric representation of sigma, SRS(k), and SRS(2k), both considered as lists of the sizes of their parts, have the same number of parts and SRS(2k) is an integer parts-multiple of SRS(k).

The programs for A390627, there is no canonical definition to state claims against.
-/

/-! ## A390627.P4299209581120826225

`∩[2*n+1, A390628(n+1)]`
-/

namespace A390627.P4299209581120826225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390627.P4299209581120826225

/-! ## A390627.P1591781203399394941

`filter[A390628(n+1), A000035(#)]`
-/

namespace A390627.P1591781203399394941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A390627.P1591781203399394941

/-! ## A390627.P10372395478898230277

`filter[A390628(n+1), A354354(#)]`
-/

namespace A390627.P10372395478898230277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A390627.P10372395478898230277

/-! ## A390627.P16591280661141122337

`filter[A390628(n+1), A374134(#)]`
-/

namespace A390627.P16591280661141122337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A390627.P16591280661141122337

/-! ## A390627.P10256267581505892022

`∩[A390628(n+1), A004273(n)]`
-/

namespace A390627.P10256267581505892022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390627.P10256267581505892022

/-! ## A390627.P6941916977446454210

`∩[A390628(n+1), A060747(n)]`
-/

namespace A390627.P6941916977446454210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390627.P6941916977446454210

/-!
# A390639: Numbers k such that the sum of k and twice the sum of its prime factors, counted with multiplicity, is prime.

The programs for A390639, there is no canonical definition to state claims against.
-/

/-! ## A390639.P714985584334018696

`filter[A100819(n+1), A376451(#)]`
-/

namespace A390639.P714985584334018696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A376451 (f1 j).toNat = 1) n)

end

end A390639.P714985584334018696

/-! ## A390639.P335588050165518440

`filter[A046446(n+2), A376451(#)]`
-/

namespace A390639.P335588050165518440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046446 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A376451 (f1 j).toNat = 1) n)

end

end A390639.P335588050165518440

/-! ## A390639.P16176202687704406062

`A082686(lt[A278071(3*n+1), A061205(n)])`
-/

namespace A390639.P16176202687704406062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278071 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A390639.P16176202687704406062

/-! ## A390639.P9710294441466772084

`A082686(lt[A278071(3*n+1), A139598(n)])`
-/

namespace A390639.P9710294441466772084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278071 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A390639.P9710294441466772084

/-! ## A390639.P11069236124171548394

`A082686(lt[A278071(3*n+1), A361363(n+1)])`
-/

namespace A390639.P11069236124171548394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278071 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A390639.P11069236124171548394

/-!
# A390641: Numbers k such that the sum of k and 3 times the sum of its prime factors, counted with multiplicity, is prime.

The programs for A390641, there is no canonical definition to state claims against.
-/

/-! ## A390641.P1139135289820781711

`A335075(n+4)-A333229(A238586(3*(n+1)))`
-/

namespace A390641.P1139135289820781711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335075 (n + 4) - A333229 (A238586 (3 * (n + 1))).toNat

end

end A390641.P1139135289820781711

/-!
# A390642: a(n) is the smallest integer k such that the number of sums a(i) + a(j) <= k for i <= j < n is less than k - n + 1.

The programs for A390642, there is no canonical definition to state claims against.
-/

/-! ## A390642.P16391882462591132968

`∑[∑[A035185(A182994(n+4))]]`
-/

namespace A390642.P16391882462591132968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (A182994 (n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390642.P16391882462591132968

/-! ## A390642.P4573032210172372084

`A083544(A084576(n+1))`
-/

namespace A390642.P4573032210172372084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083544 (A084576 (n + 1)).toNat

end

end A390642.P4573032210172372084

/-! ## A390642.P6514930871977561614

`∑[∑[A126760(A111983(n))]]`
-/

namespace A390642.P6514930871977561614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A111983 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390642.P6514930871977561614

/-! ## A390642.P15805319040006467403

`∑[A134841(A000217(n))-A002262(n)]`
-/

namespace A390642.P15805319040006467403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134841 (A000217 n).toNat - A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390642.P15805319040006467403

/-! ## A390642.P7449365770351079753

`∑[A201052(A201052(n+1)^A003056(n))]`
-/

namespace A390642.P7449365770351079753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201052 (SequenceMachineLib.roundAway ((A201052 (n + 1) : ℚ) ^ (A003056 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390642.P7449365770351079753

/-!
# A390647: E.g.f. A(x) satisfies A(x) = 1 + x^2*exp(x)*A(x)^3.

The programs for A390647, there is no canonical definition to state claims against.
-/

/-! ## A390647.P14145736561508105108

`A066099(A208210(n))*A371115(n)`
-/

namespace A390647.P14145736561508105108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A208210 n).toNat * A371115 n

end

end A390647.P14145736561508105108

/-! ## A390647.P2552576617705303127

`A083063(n)*A124769(A003418(n+1))`
-/

namespace A390647.P2552576617705303127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083063 n * A124769 (A003418 (n + 1)).toNat

end

end A390647.P2552576617705303127

/-!
# A390650: Number of tic-tac-toe positions after n plays.

The programs for A390650, there is no canonical definition to state claims against.
-/

/-! ## A390650.P53266004474819121

`A365272(A248851(n))`
-/

namespace A390650.P53266004474819121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365272 (A248851 n).toNat

end

end A390650.P53266004474819121

/-!
# A390653: a(n) is the number of n-celled fixed polyominoes with at least 180 degree rotational symmetry about the center of a square in the lattice.

The programs for A390653, there is no canonical definition to state claims against.
-/

/-! ## A390653.P1869339555677846351

`4*A351615(n+1)+2*A351190(n+1)+2*A351159(n+1)+2*A351142(n+1)+A351127(n+1)`
-/

namespace A390653.P1869339555677846351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A351615 (n + 1) + 2 * A351190 (n + 1) + 2 * A351159 (n + 1) + 2 * A351142 (n + 1) + A351127 (n + 1)

end

end A390653.P1869339555677846351

/-!
# A390654: a(n) is the number of 2n-celled fixed polyominoes with at least 180 degree rotational symmetry about the midpoint of a horizontal edge of a square in the lattice.

The programs for A390654, there is no canonical definition to state claims against.
-/

/-! ## A390654.P15969273069035225819

`2*A234008(n+1)+A346799(n+1)`
-/

namespace A390654.P15969273069035225819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A234008 (n + 1) + A346799 (n + 1)

end

end A390654.P15969273069035225819

/-! ## A390654.P9380458527664692444

`A234010(n+1)+A234008(n+1)`
-/

namespace A390654.P9380458527664692444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234010 (n + 1) + A234008 (n + 1)

end

end A390654.P9380458527664692444

/-!
# A390655: a(n) is the number of 2n-celled fixed polyominoes with at least 180 degree rotational symmetry about a vertex of a square in the lattice.

The programs for A390655, there is no canonical definition to state claims against.
-/

/-! ## A390655.P14263827746469830145

`A194165(A176678(n+1))`
-/

namespace A390655.P14263827746469830145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194165 (A176678 (n + 1)).toNat

end

end A390655.P14263827746469830145

/-! ## A390655.P1850107473297517898

`A007581(n)-A187730(A133294(n))`
-/

namespace A390655.P1850107473297517898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 n - A187730 (A133294 n).toNat

end

end A390655.P1850107473297517898

/-! ## A390655.P10465154958012925454

`A007581(n)-A124770(A386451(n))`
-/

namespace A390655.P10465154958012925454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 n - A124770 (A386451 n).toNat

end

end A390655.P10465154958012925454

/-!
# A390656: G.f. A(x) satisfies A(x) = 1 / ((1 - x) * (1 - 2 * x * (1 + x) * A(x^2))).

The programs for A390656, there is no canonical definition to state claims against.
-/

/-! ## A390656.P17445271519018387463

`A165640(A189734(n+2))`
-/

namespace A390656.P17445271519018387463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165640 (A189734 (n + 2)).toNat

end

end A390656.P17445271519018387463

/-! ## A390656.P11593207282180197417

`A008612(A083694(n+2)-A083694(n))`
-/

namespace A390656.P11593207282180197417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A083694 (n + 2) - A083694 n).toNat

end

end A390656.P11593207282180197417

/-!
# A390657: G.f. A(x) satisfies A(x) = 1 / ((1 - x) * (1 - 2 * x * (1 + x + x^2) * A(x^3))).

The programs for A390657, there is no canonical definition to state claims against.
-/

/-! ## A390657.P3943634142986144006

`A265384(A099036(n+1))`
-/

namespace A390657.P3943634142986144006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265384 (A099036 (n + 1)).toNat

end

end A390657.P3943634142986144006

/-! ## A390657.P8525804671288798892

`∑[A038567(∑[A015585(n)])]`
-/

namespace A390657.P8525804671288798892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015585 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390657.P8525804671288798892

/-!
# A390658: G.f. A(x) satisfies A(x) = 1 / ((1 - x) * (1 - 2 * x * (1 + x + x^2 + x^3) * A(x^4))).

The programs for A390658, there is no canonical definition to state claims against.
-/

/-! ## A390658.P13836328287784447880

`A376556(A376544(n))+A000244(n)`
-/

namespace A390658.P13836328287784447880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376556 (A376544 n).toNat + A000244 n

end

end A390658.P13836328287784447880

/-! ## A390658.P5255013614235433841

`or(3^n, A343652(∑[2^n]))`
-/

namespace A390658.P5255013614235433841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (3 ^ n : ℤ) (A343652 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A390658.P5255013614235433841

/-!
# A390659: G.f. A(x) satisfies A(x) = 1 / ((1 - x) * (1 - 2 * x * A(x^2))).

The programs for A390659, there is no canonical definition to state claims against.
-/

/-! ## A390659.P9364570875660533754

`A340282(A278554(n))+A099511(n)`
-/

namespace A390659.P9364570875660533754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340282 (A278554 n).toNat + A099511 n

end

end A390659.P9364570875660533754

/-! ## A390659.P3205613474556189994

`A106317(A018104(n))`
-/

namespace A390659.P3205613474556189994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106317 (A018104 n).toNat

end

end A390659.P3205613474556189994

/-!
# A390660: G.f. A(x) satisfies A(x) = 1 / ((1 - x) * (1 - 2 * x * A(x^3))).

The programs for A390660, there is no canonical definition to state claims against.
-/

/-! ## A390660.P16854520825176562376

`A087834(A200052(n+1))`
-/

namespace A390660.P16854520825176562376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087834 (A200052 (n + 1)).toNat

end

end A390660.P16854520825176562376

/-! ## A390660.P2303934089605019074

`A080605(A000110(n)*A324701(n+1))`
-/

namespace A390660.P2303934089605019074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080605 (A000110 n * A324701 (n + 1)).toNat

end

end A390660.P2303934089605019074

/-! ## A390660.P12706858636022585635

`or(A046933(2*n+3), A331873(A334636(n+1)))`
-/

namespace A390660.P12706858636022585635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046933 (2 * n + 3)) (A331873 (A334636 (n + 1)).toNat)

end

end A390660.P12706858636022585635

/-!
# A390661: G.f. A(x) satisfies A(x) = 1 / ((1 - x) * (1 - 2 * x * A(x^4))).

The programs for A390661, there is no canonical definition to state claims against.
-/

/-! ## A390661.P7627253110026389494

`A357980(A109880(n+1))`
-/

namespace A390661.P7627253110026389494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357980 (A109880 (n + 1)).toNat

end

end A390661.P7627253110026389494

/-! ## A390661.P16597820609631817762

`A305462(A261203(n+1))`
-/

namespace A390661.P16597820609631817762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305462 (A261203 (n + 1)).toNat

end

end A390661.P16597820609631817762

/-! ## A390661.P14434507294886186111

`A305462(A262968(n+1))`
-/

namespace A390661.P14434507294886186111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305462 (A262968 (n + 1)).toNat

end

end A390661.P14434507294886186111

/-!
# A390662: a(n) = Sum_{k=0..floor(2*n/7)} binomial(k+1,2*n-7*k).

The programs for A390662, the canonical program `A390662.P1734761915132612640` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390662 has offset 0).

The definition of A390662 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390662.P1734761915132612640

`2*a(n-4)+a(n-7)-a(n-8)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=2, a(5)=0, a(6)=0, a(7)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A390662

/-- `2*a(n-4)+a(n-7)-a(n-8)` -/
def P1734761915132612640.Spec : Prop :=
  ∀ n, P1734761915132612640.a n = A390662 n

theorem P1734761915132612640.correct : P1734761915132612640.Spec := by
  intro n
  simp only [A390662]

end A390662

/-! ## A390662.P5807559402077699832

`A017857(2*n+7)`
-/

namespace A390662.P5807559402077699832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017857 (2 * n + 7)

end

end A390662.P5807559402077699832

namespace A390662

/-- `A017857(2*n+7)` -/
def P5807559402077699832.Spec : Prop :=
  ∀ n, P5807559402077699832.a n = A390662 n

end A390662

/-!
# A390663: The sum of the divisors of the smallest cube divisible by n.

The programs for A390663, the canonical program `A390663.P5509345383207779074` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390663 has offset 1).

The definition of A390663 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390663.P5509345383207779074

`A000203(A053149(n+1))`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A390663

/-- `A000203(A053149(n+1))` -/
def P5509345383207779074.Spec : Prop :=
  ∀ n, P5509345383207779074.a n = A390663 (n + 1)

theorem P5509345383207779074.correct : P5509345383207779074.Spec := by
  intro n
  simp only [A390663, Nat.add_sub_cancel]

end A390663

/-! ## A390663.P11880903397316194057

`A175926(A019555(n+1))`
-/

namespace A390663.P11880903397316194057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175926 (A019555 (n + 1)).toNat

end

end A390663.P11880903397316194057

namespace A390663

/-- `A175926(A019555(n+1))` -/
def P11880903397316194057.Spec : Prop :=
  ∀ n, P11880903397316194057.a n = A390663 (n + 1)

end A390663

/-! ## A390663.P17616363763935806074

`A000203(A019555(n+1)^3)`
-/

namespace A390663.P17616363763935806074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A019555 (n + 1) ^ 3).toNat

end

end A390663.P17616363763935806074

namespace A390663

/-- `A000203(A019555(n+1)^3)` -/
def P17616363763935806074.Spec : Prop :=
  ∀ n, P17616363763935806074.a n = A390663 (n + 1)

end A390663

/-! ## A390663.P5080801009828281389

`A000203((n+1)*A048798(n+1))`
-/

namespace A390663.P5080801009828281389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 1 : ℤ) * A048798 (n + 1)).toNat

end

end A390663.P5080801009828281389

namespace A390663

/-- `A000203((n+1)*A048798(n+1))` -/
def P5080801009828281389.Spec : Prop :=
  ∀ n, P5080801009828281389.a n = A390663 (n + 1)

end A390663

/-!
# A390664: The sum of the divisors of the smallest number whose cube is divisible by n.

The programs for A390664, the canonical program `A390664.P3533360465850192597` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390664 has offset 1).

The definition of A390664 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019555, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390664.P3533360465850192597

`A000203(A019555(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A390664

/-- `A000203(A019555(n+1))` -/
def P3533360465850192597.Spec : Prop :=
  ∀ n, P3533360465850192597.a n = A390664 (n + 1)

theorem P3533360465850192597.correct : P3533360465850192597.Spec := by
  intro n
  simp only [A390664, Nat.add_sub_cancel]

end A390664

/-! ## A390664.P11642171690756816906

`A000203(A254733(n+1)-(n+1))`
-/

namespace A390664.P11642171690756816906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A254733 (n + 1) - (n + 1 : ℤ)).toNat

end

end A390664.P11642171690756816906

namespace A390664

/-- `A000203(A254733(n+1)-(n+1))` -/
def P11642171690756816906.Spec : Prop :=
  ∀ n, P11642171690756816906.a n = A390664 (n + 1)

end A390664

/-! ## A390664.P9762504719661023881

`A365347(A019555((n+1)²))`
-/

namespace A390664.P9762504719661023881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365347 (A019555 ((n + 1) ^ 2)).toNat

end

end A390664.P9762504719661023881

namespace A390664

/-- `A365347(A019555((n+1)²))` -/
def P9762504719661023881.Spec : Prop :=
  ∀ n, P9762504719661023881.a n = A390664 (n + 1)

end A390664

/-! ## A390664.P9712410102999364696

`A365347(A019555(n+1)*A019555(n+1))`
-/

namespace A390664.P9712410102999364696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365347 (A019555 (n + 1) * A019555 (n + 1)).toNat

end

end A390664.P9712410102999364696

namespace A390664

/-- `A365347(A019555(n+1)*A019555(n+1))` -/
def P9712410102999364696.Spec : Prop :=
  ∀ n, P9712410102999364696.a n = A390664 (n + 1)

end A390664

/-!
# A390665: The sum of the unitary divisors of the smallest cube divisible by n.

The programs for A390665, the canonical program `A390665.P2218711322630550871` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390665 has offset 1).

The definition of A390665 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A053149, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390665.P2218711322630550871

`A034448(A053149(n+1))`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A390665

/-- `A034448(A053149(n+1))` -/
def P2218711322630550871.Spec : Prop :=
  ∀ n, P2218711322630550871.a n = A390665 (n + 1)

theorem P2218711322630550871.correct : P2218711322630550871.Spec := by
  intro n
  simp only [A390665, Nat.add_sub_cancel]

end A390665

/-! ## A390665.P6081076433370388835

`A034677(A019555(n+1))`
-/

namespace A390665.P6081076433370388835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034677 (A019555 (n + 1)).toNat

end

end A390665.P6081076433370388835

namespace A390665

/-- `A034677(A019555(n+1))` -/
def P6081076433370388835.Spec : Prop :=
  ∀ n, P6081076433370388835.a n = A390665 (n + 1)

end A390665

/-!
# A390666: The sum of the unitary divisors of the smallest number whose cube is divisible by n.

The programs for A390666, the canonical program `A390666.P9669294390730205384` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390666 has offset 1).

The definition of A390666 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019555, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390666.P9669294390730205384

`A034448(A019555(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A390666

/-- `A034448(A019555(n+1))` -/
def P9669294390730205384.Spec : Prop :=
  ∀ n, P9669294390730205384.a n = A390666 (n + 1)

theorem P9669294390730205384.correct : P9669294390730205384.Spec := by
  intro n
  simp only [A390666, Nat.add_sub_cancel]

end A390666

/-! ## A390666.P14387774220674840360

`A034448(A254733(n+1)-(n+1))`
-/

namespace A390666.P14387774220674840360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A254733 (n + 1) - (n + 1 : ℤ)).toNat

end

end A390666.P14387774220674840360

namespace A390666

/-- `A034448(A254733(n+1)-(n+1))` -/
def P14387774220674840360.Spec : Prop :=
  ∀ n, P14387774220674840360.a n = A390666 (n + 1)

end A390666

/-! ## A390666.P8302906041198760583

`A365481(A019555((n+1)²))`
-/

namespace A390666.P8302906041198760583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365481 (A019555 ((n + 1) ^ 2)).toNat

end

end A390666.P8302906041198760583

namespace A390666

/-- `A365481(A019555((n+1)²))` -/
def P8302906041198760583.Spec : Prop :=
  ∀ n, P8302906041198760583.a n = A390666 (n + 1)

end A390666

/-! ## A390666.P2123206581597761293

`A255554(A390664(n+1))`
-/

namespace A390666.P2123206581597761293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255554 (A390664 (n + 1)).toNat

end

end A390666.P2123206581597761293

namespace A390666

/-- `A255554(A390664(n+1))` -/
def P2123206581597761293.Spec : Prop :=
  ∀ n, P2123206581597761293.a n = A390666 (n + 1)

end A390666

/-! ## A390666.P16988420364222817967

`A335446(∏{e}[n+1, #!])+∏{p}[n+1, #+1]`
-/

namespace A390666.P16988420364222817967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335446 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p)) + ((∏ p ∈ Nat.primeFactors (f2 n), (p + 1) : ℕ) : ℤ)

end

end A390666.P16988420364222817967

namespace A390666

/-- `A335446(∏{e}[n+1, #!])+∏{p}[n+1, #+1]` -/
def P16988420364222817967.Spec : Prop :=
  ∀ n, P16988420364222817967.a n = A390666 (n + 1)

end A390666

/-!
# A390667: Row sums of A390433.

The programs for A390667, there is no canonical definition to state claims against.
-/

/-! ## A390667.P4540928288257676887

`A026741(A014466(n)*A128918(n))`
-/

namespace A390667.P4540928288257676887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A014466 n * A128918 n).toNat

end

end A390667.P4540928288257676887

/-!
# A390670: Triangle read by rows: T(n,k) is the number of irreducible words covering the alphabet [n] such that the maximal cardinality of C is k, where C is a subset of the alphabet such that all letters in C appear in weakly increasing order within the word.

The programs for A390670, there is no canonical definition to state claims against.
-/

/-! ## A390670.P1904853666478248161

`A195152(A187557(n))`
-/

namespace A390670.P1904853666478248161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195152 (A187557 n).toNat

end

end A390670.P1904853666478248161

/-! ## A390670.P6972929022720979922

`A241186(A185411(n))`
-/

namespace A390670.P6972929022720979922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241186 (A185411 n).toNat

end

end A390670.P6972929022720979922

/-! ## A390670.P12041595197016754856

`A319951(A048994(n)²)`
-/

namespace A390670.P12041595197016754856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A048994 n ^ 2).toNat

end

end A390670.P12041595197016754856

/-! ## A390670.P10573013939056404143

`A319951(A132393(n)²)`
-/

namespace A390670.P10573013939056404143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A132393 n ^ 2).toNat

end

end A390670.P10573013939056404143

/-! ## A390670.P11784321950865959258

`A178696(A222061(n+1))`
-/

namespace A390670.P11784321950865959258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178696 (A222061 (n + 1)).toNat

end

end A390670.P11784321950865959258

/-!
# A390672: Nonzero Dyck natural numbers encoded as binary integers.

The programs for A390672, there is no canonical definition to state claims against.
-/

/-! ## A390672.P14772213036979201896

`A063171(A072644(A001791(n+1)))`
-/

namespace A390672.P14772213036979201896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063171 (A072644 (A001791 (n + 1)).toNat).toNat

end

end A390672.P14772213036979201896

/-!
# A390673: Numbers k such that the k-th composition in standard order has all distinct first sums.

The programs for A390673, there is no canonical definition to state claims against.
-/

/-! ## A390673.P8891052512014120916

`∩[A335513(n+1), A374249(n+1)]`
-/

namespace A390673.P8891052512014120916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390673.P8891052512014120916

/-! ## A390673.P10573977067177762606

`∩[A335513(n+1), A351290(n+1)]`
-/

namespace A390673.P10573977067177762606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390673.P10573977067177762606

/-! ## A390673.P2445267662508250058

`lt[A333627(n), A000961(A124771(n))]`
-/

namespace A390673.P2445267662508250058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A124771 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A390673.P2445267662508250058

/-! ## A390673.P17838968872271330393

`lt[A376345(A333939(n)), A333939(2*n+1)]`
-/

namespace A390673.P17838968872271330393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376345 (A333939 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333939 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A390673.P17838968872271330393

/-! ## A390673.P1365501445479895676

`lt[A129760(A333939(n)), A095684(3*n+1)]`
-/

namespace A390673.P1365501445479895676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A333939 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095684 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A390673.P1365501445479895676

/-!
# A390674: Numbers k > 0 such that the k-th composition in standard order has all equal first sums.

The programs for A390674, there is no canonical definition to state claims against.
-/

/-! ## A390674.P11982128756642923424

`lt[A124770(A390568(n)), A000120(n)]`
-/

namespace A390674.P11982128756642923424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124770 (A390568 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A390674.P11982128756642923424

/-! ## A390674.P16483050226929146403

`eq[A357621(n)+1, A357622(2*n)]`
-/

namespace A390674.P16483050226929146403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357621 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357622 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A390674.P16483050226929146403

/-! ## A390674.P12841257404280137093

`eq[A015526(n), A354579(n)]`
-/

namespace A390674.P12841257404280137093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354579 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A390674.P12841257404280137093

/-! ## A390674.P12836986685651418325

`eq[A015600(n), A354579(n)]`
-/

namespace A390674.P12836986685651418325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015600 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354579 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A390674.P12836986685651418325

/-! ## A390674.P1128043769015020629

`eq[A015748(n), A354579(n)]`
-/

namespace A390674.P1128043769015020629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015748 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354579 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A390674.P1128043769015020629

/-!
# A390675: Number of integer compositions whose first sums are the (2n)-th composition in standard order.

The programs for A390675, there is no canonical definition to state claims against.
-/

/-! ## A390675.P8486153641486883332

`A391642(2*(n+1))`
-/

namespace A390675.P8486153641486883332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391642 (2 * (n + 1))

end

end A390675.P8486153641486883332

/-! ## A390675.P12427022797543209069

`C(A333767(2*(n+1)), A243834(n+4)+1)`
-/

namespace A390675.P12427022797543209069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A333767 (2 * (n + 1))).toNat (A243834 (n + 4) + 1).toNat

end

end A390675.P12427022797543209069

/-! ## A390675.P11642070208726699483

`A333767(2*(n+1))-A354926(A007318(n))`
-/

namespace A390675.P11642070208726699483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333767 (2 * (n + 1)) - A354926 (A007318 n).toNat

end

end A390675.P11642070208726699483

/-! ## A390675.P11830456513438530573

`A333768(2*(n+1))-A115579(A003963(n+1))`
-/

namespace A390675.P11830456513438530573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333768 (2 * (n + 1)) - A115579 (A003963 (n + 1)).toNat

end

end A390675.P11830456513438530573

/-! ## A390675.P6393186650506760877

`C(A333767(2*(n+1)), A000700(A204116(n+1)))`
-/

namespace A390675.P6393186650506760877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A333767 (2 * (n + 1))).toNat (A000700 (A204116 (n + 1)).toNat).toNat

end

end A390675.P6393186650506760877

/-!
# A390676: Numbers k such that there exists a composition whose first sums are the k-th composition in standard order.

The programs for A390676, there is no canonical definition to state claims against.
-/

/-! ## A390676.P17881928993499634259

`filter[A333223(n+1), A085405(#)]`
-/

namespace A390676.P17881928993499634259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A085405 (f1 j).toNat = 1) n)

end

end A390676.P17881928993499634259

/-! ## A390676.P10517334643907642715

`filter[A334967(n+1), A085405(#)]`
-/

namespace A390676.P10517334643907642715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A085405 (f1 j).toNat = 1) n)

end

end A390676.P10517334643907642715

/-! ## A390676.P12989099271807737678

`∩[A333223(n+1), A022340(n)]`
-/

namespace A390676.P12989099271807737678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022340 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390676.P12989099271807737678

/-! ## A390676.P17755673649188710635

`∩[A334967(n+1), A022340(n)]`
-/

namespace A390676.P17755673649188710635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022340 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390676.P17755673649188710635

/-! ## A390676.P15070095636523143946

`∩[2*A003714(n), A334967(n+1)]`
-/

namespace A390676.P15070095636523143946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003714 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390676.P15070095636523143946

/-!
# A390677: Numbers k such that there is no integer composition whose first sums are the k-th composition in standard order.

The programs for A390677, there is no canonical definition to state claims against.
-/

/-! ## A390677.P13480561667771933596

`comp[A390568(n)]`
-/

namespace A390677.P13480561667771933596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390568 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A390677.P13480561667771933596

/-! ## A390677.P3464116490536428749

`comp[A390676(n+1)]`
-/

namespace A390677.P3464116490536428749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A390677.P3464116490536428749

/-! ## A390677.P10931177355447861950

`eq[0, A391642(n+1)]+1`
-/

namespace A390677.P10931177355447861950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391642 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A390677.P10931177355447861950

/-! ## A390677.P11663133872002794818

`lt[A391621(n+1), 3]+1`
-/

namespace A390677.P11663133872002794818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391621 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A390677.P11663133872002794818

/-! ## A390677.P7501463476280203201

`record[n-A391642(n+2)]+2`
-/

namespace A390677.P7501463476280203201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A391642 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2

end

end A390677.P7501463476280203201

/-! ## A390677.P5184305944284666724

`comp[lcm(xor(n, 3*n), A206487(n+1))]`
-/

namespace A390677.P5184305944284666724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.xor n (3 * n) : ℤ) (A206487 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A390677.P5184305944284666724

/-! ## A390677.P12636878788440478516

`lt[A085405(n), A000009(A050326(2*n+1))]`
-/

namespace A390677.P12636878788440478516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085405 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A050326 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A390677.P12636878788440478516

/-! ## A390677.P487625952425016335

`comp[xor(n, 3*n)]%Δ[A214196(2*n+1)]`
-/

namespace A390677.P487625952425016335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214196 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (f2 (n + 1) - f2 n)

end

end A390677.P487625952425016335

/-! ## A390677.P17103743490346052771

`comp[xor(n, 3*n)]*A020985(A270804(3*n+4))`
-/

namespace A390677.P17103743490346052771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (3 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) * A020985 (A270804 (3 * n + 4)).toNat

end

end A390677.P17103743490346052771

/-! ## A390677.P4131924094103900513

`A008966(A337080(n+1))+comp[or(n, 2*n)-n]`
-/

namespace A390677.P4131924094103900513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (2 * n) : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A337080 (n + 1)).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A390677.P4131924094103900513

/-!
# A390681: a(n) = Sum_{k=0..floor(n/2)} (-1)^k * binomial(3*n-2*k-3,n-2*k).

The programs for A390681, there is no canonical definition to state claims against.
-/

/-! ## A390681.P125687486809537607

`A358639(n^3+1)`
-/

namespace A390681.P125687486809537607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358639 (n ^ 3 + 1)

end

end A390681.P125687486809537607

/-!
# A390682: a(n) = Sum_{k=0..floor(n/2)} (-1)^k * binomial(4*n-2*k-3,n-2*k).

The programs for A390682, there is no canonical definition to state claims against.
-/

/-! ## A390682.P10202546515458095884

`A175363(A140986(n))`
-/

namespace A390682.P10202546515458095884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175363 (A140986 n).toNat

end

end A390682.P10202546515458095884

/-!
# A390683: a(n) = Sum_{k=0..floor(n/2)} (-1)^k * binomial(2*n-2*k-2,n-2*k).

The programs for A390683, there is no canonical definition to state claims against.
-/

/-! ## A390683.P6725803448398660872

`A118404(∑[4*n])`
-/

namespace A390683.P6725803448398660872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118404 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A390683.P6725803448398660872

/-! ## A390683.P8212412336754937029

`A118404(A046092(n))+A000007(n+2)`
-/

namespace A390683.P8212412336754937029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118404 (A046092 n).toNat + A000007 (n + 2)

end

end A390683.P8212412336754937029

/-! ## A390683.P12277690042058628674

`A349462(A210109(n+1)+A008651(n))`
-/

namespace A390683.P12277690042058628674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349462 (A210109 (n + 1) + A008651 n).toNat

end

end A390683.P12277690042058628674

/-!
# A390684: a(n) = Sum_{k=0..floor(n/2)} (-1)^k * binomial(3*n-2*k-2,n-2*k).

The programs for A390684, there is no canonical definition to state claims against.
-/

/-! ## A390684.P5774587090707599292

`A099796(A026641(n))`
-/

namespace A390684.P5774587090707599292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099796 (A026641 n).toNat

end

end A390684.P5774587090707599292

/-!
# A390685: a(n) = Sum_{k=0..floor(n/2)} (-1)^k * binomial(4*n-2*k-2,n-2*k).

The programs for A390685, there is no canonical definition to state claims against.
-/

/-! ## A390685.P1421129131538420202

`A118404(A139277(n))`
-/

namespace A390685.P1421129131538420202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118404 (A139277 n).toNat

end

end A390685.P1421129131538420202

/-!
# A390686: a(n) = Sum_{k=0..floor(n/2)} (-1)^k * binomial(3*n-2*k,n-2*k).

The programs for A390686, there is no canonical definition to state claims against.
-/

/-! ## A390686.P6769401313450587918

`A026514(A001037(3*n)+n)`
-/

namespace A390686.P6769401313450587918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026514 (A001037 (3 * n) + (n : ℤ)).toNat

end

end A390686.P6769401313450587918

/-!
# A390688: a(n) = Sum_{k=0..floor(2*n/9)} binomial(k+1,2*n-9*k).

The programs for A390688, the canonical program `A390688.P17025428225401514792` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390688 has offset 0).

The definition of A390688 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390688.P17025428225401514792

`2*a(n-5)+a(n-9)-a(n-10)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=2, a(6)=0, a(7)=0, a(8)=0, a(9)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A390688

/-- `2*a(n-5)+a(n-9)-a(n-10)` -/
def P17025428225401514792.Spec : Prop :=
  ∀ n, P17025428225401514792.a n = A390688 n

theorem P17025428225401514792.correct : P17025428225401514792.Spec := by
  intro n
  simp only [A390688]

end A390688

/-! ## A390688.P12299232806115542547

`A017877(2*n+9)`
-/

namespace A390688.P12299232806115542547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017877 (2 * n + 9)

end

end A390688.P12299232806115542547

namespace A390688

/-- `A017877(2*n+9)` -/
def P12299232806115542547.Spec : Prop :=
  ∀ n, P12299232806115542547.a n = A390688 n

end A390688

/-!
# A390689: The sum of the divisors of n that are sums of 2 squares (A001481).

The programs for A390689, the canonical program `A390689.P12018629016533748003` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390689 has offset 1).

The definition of A390689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390689.P12018629016533748003

`∑{d}[n+1, #*A229062(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A390689

/-- `∑{d}[n+1, #*A229062(#)]` -/
def P12018629016533748003.Spec : Prop :=
  ∀ n, P12018629016533748003.a n = A390689 (n + 1)

theorem P12018629016533748003.correct : P12018629016533748003.Spec := by
  intro n
  simp only [A390689, Nat.add_sub_cancel]

end A390689

/-! ## A390689.P13256894229905492693

`∑{d}[n+1, A119972(#)*A324893((n+1)/#)]`
-/

namespace A390689.P13256894229905492693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A119972 d * A324893 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390689.P13256894229905492693

namespace A390689

/-- `∑{d}[n+1, A119972(#)*A324893((n+1)/#)]` -/
def P13256894229905492693.Spec : Prop :=
  ∀ n, P13256894229905492693.a n = A390689 (n + 1)

end A390689

/-!
# A390690: The sum of the divisors of n that are Loeschian numbers (A003136).

The programs for A390690, the canonical program `A390690.P17610099573045072712` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390690 has offset 1).

The definition of A390690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390690.P17610099573045072712

`∑{d}[n+1, #*A353816(#)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A390690

/-- `∑{d}[n+1, #*A353816(#)]` -/
def P17610099573045072712.Spec : Prop :=
  ∀ n, P17610099573045072712.a n = A390690 (n + 1)

theorem P17610099573045072712.correct : P17610099573045072712.Spec := by
  intro n
  simp only [A390690, Nat.add_sub_cancel]

end A390690

/-!
# A390691: The largest divisor of n that is a Loeschian number (A003136).

The programs for A390691, the canonical program `A390691.P14711029984836863784` is in `Seq.B011.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390691 has offset 1).

The definition of A390691 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A390692, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390691.P14711029984836863784

`(n+1)/A390692(n+1)`

The canonical program, it is in `Seq.B011.C001`.
-/

namespace A390691

/-- `(n+1)/A390692(n+1)` -/
def P14711029984836863784.Spec : Prop :=
  ∀ n, P14711029984836863784.a n = (A390691 (n + 1) : ℚ)

end A390691

/-! ## A390691.P5668891424065813565

`(n+1)²/A390694(n+1)`
-/

namespace A390691.P5668891424065813565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A390694 (n + 1) : ℚ)

end

end A390691.P5668891424065813565

namespace A390691

/-- `(n+1)²/A390694(n+1)` -/
def P5668891424065813565.Spec : Prop :=
  ∀ n, P5668891424065813565.a n = (A390691 (n + 1) : ℚ)

end A390691

/-! ## A390691.P8746630371271987841

`A390694(A000290(n+1)/A390694(n+1))`
-/

namespace A390691.P8746630371271987841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390694 (SequenceMachineLib.roundAway ((A000290 (n + 1) : ℚ) / (A390694 (n + 1) : ℚ))).toNat

end

end A390691.P8746630371271987841

namespace A390691

/-- `A390694(A000290(n+1)/A390694(n+1))` -/
def P8746630371271987841.Spec : Prop :=
  ∀ n, P8746630371271987841.a n = A390691 (n + 1)

end A390691

/-! ## A390691.P633979649026809330

`gcd(A014682(A007239(n+1)), A255407(n+1))`
-/

namespace A390691.P633979649026809330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014682 (A007239 (n + 1)).toNat) (A255407 (n + 1))

end

end A390691.P633979649026809330

namespace A390691

/-- `gcd(A014682(A007239(n+1)), A255407(n+1))` -/
def P633979649026809330.Spec : Prop :=
  ∀ n, (P633979649026809330.a n : ℤ) = A390691 (n + 1)

end A390691

/-! ## A390691.P4367153952974361991

`gcd(A001615(A240620(n+1)), A349164(n+1))`
-/

namespace A390691.P4367153952974361991
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001615 (A240620 (n + 1)).toNat) (A349164 (n + 1))

end

end A390691.P4367153952974361991

namespace A390691

/-- `gcd(A001615(A240620(n+1)), A349164(n+1))` -/
def P4367153952974361991.Spec : Prop :=
  ∀ n, (P4367153952974361991.a n : ℤ) = A390691 (n + 1)

end A390691

/-!
# A390692: a(n) is the smallest positive integer such that a(n) * n is a Loeschian number (A003136).

The programs for A390692, the canonical program `A390692.P5551387115142065116` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390692 has offset 1).

The definition of A390692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390692.P15639746003478031283

`(n+1)/A390691(n+1)`
-/

namespace A390692.P15639746003478031283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A390691 (n + 1) : ℚ)

end

end A390692.P15639746003478031283

namespace A390692

/-- `(n+1)/A390691(n+1)` -/
def P15639746003478031283.Spec : Prop :=
  ∀ n, P15639746003478031283.a n = (A390692 (n + 1) : ℚ)

end A390692

/-! ## A390692.P7212015095118969192

`A390694(n+1)/(n+1)`
-/

namespace A390692.P7212015095118969192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390694 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A390692.P7212015095118969192

namespace A390692

/-- `A390694(n+1)/(n+1)` -/
def P7212015095118969192.Spec : Prop :=
  ∀ n, P7212015095118969192.a n = (A390692 (n + 1) : ℚ)

end A390692

/-! ## A390692.P5551387115142065116

`A343430(A007913(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A390692

/-- `A343430(A007913(n+1))` -/
def P5551387115142065116.Spec : Prop :=
  ∀ n, P5551387115142065116.a n = A390692 (n + 1)

theorem P5551387115142065116.correct : P5551387115142065116.Spec := by
  intro n
  simp only [A390692, Nat.add_sub_cancel]

end A390692

/-! ## A390692.P2089304774776714783

`A007913((n+1)*A390691(n+1))`
-/

namespace A390692.P2089304774776714783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 1 : ℤ) * A390691 (n + 1)).toNat

end

end A390692.P2089304774776714783

namespace A390692

/-- `A007913((n+1)*A390691(n+1))` -/
def P2089304774776714783.Spec : Prop :=
  ∀ n, P2089304774776714783.a n = A390692 (n + 1)

end A390692

/-! ## A390692.P1641334196334331098

`gcd((n+1)/4^val(n+1, 4), A007088(A108951(n+1)))`
-/

namespace A390692.P1641334196334331098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℚ))) (A007088 (A108951 (n + 1)).toNat)

end

end A390692.P1641334196334331098

namespace A390692

/-- `gcd((n+1)/4^val(n+1, 4), A007088(A108951(n+1)))` -/
def P1641334196334331098.Spec : Prop :=
  ∀ n, (P1641334196334331098.a n : ℤ) = A390692 (n + 1)

end A390692

/-!
# A390693: The smallest multiple of n that is the sum of 2 squares (A001481).

The programs for A390693, the canonical program `A390693.P1105766320151799112` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390693 has offset 1).

The definition of A390693 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363340, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390693.P1105766320151799112

`(n+1)*A363340(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A390693

/-- `(n+1)*A363340(n+1)` -/
def P1105766320151799112.Spec : Prop :=
  ∀ n, P1105766320151799112.a n = A390693 (n + 1)

theorem P1105766320151799112.correct : P1105766320151799112.Spec := by
  intro n
  simp only [A390693, Nat.add_sub_cancel]

end A390693

/-! ## A390693.P8166776056024382220

`(n+1)²/A371015(n+1)`
-/

namespace A390693.P8166776056024382220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A371015 (n + 1) : ℚ)

end

end A390693.P8166776056024382220

namespace A390693

/-- `(n+1)²/A371015(n+1)` -/
def P8166776056024382220.Spec : Prop :=
  ∀ n, P8166776056024382220.a n = (A390693 (n + 1) : ℚ)

end A390693

/-! ## A390693.P14063144588586602082

`(n+1)*A097706(A364900(n))`
-/

namespace A390693.P14063144588586602082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A097706 (A364900 n).toNat

end

end A390693.P14063144588586602082

namespace A390693

/-- `(n+1)*A097706(A364900(n))` -/
def P14063144588586602082.Spec : Prop :=
  ∀ n, P14063144588586602082.a n = A390693 (n + 1)

end A390693

/-! ## A390693.P16977887962925251087

`(n+1)*A245474(A097706(n+1))`
-/

namespace A390693.P16977887962925251087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A245474 (A097706 (n + 1)).toNat

end

end A390693.P16977887962925251087

namespace A390693

/-- `(n+1)*A245474(A097706(n+1))` -/
def P16977887962925251087.Spec : Prop :=
  ∀ n, P16977887962925251087.a n = A390693 (n + 1)

end A390693

/-! ## A390693.P9526639868487861410

`(n+1)*A170819(A245474(n+1))`
-/

namespace A390693.P9526639868487861410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A170819 (A245474 (n + 1)).toNat

end

end A390693.P9526639868487861410

namespace A390693

/-- `(n+1)*A170819(A245474(n+1))` -/
def P9526639868487861410.Spec : Prop :=
  ∀ n, P9526639868487861410.a n = A390693 (n + 1)

end A390693

/-! ## A390693.P17728705379847287941

`A371015((n+1)*A170819(n+1))`
-/

namespace A390693.P17728705379847287941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371015 ((n + 1 : ℤ) * A170819 (n + 1)).toNat

end

end A390693.P17728705379847287941

namespace A390693

/-- `A371015((n+1)*A170819(n+1))` -/
def P17728705379847287941.Spec : Prop :=
  ∀ n, P17728705379847287941.a n = A390693 (n + 1)

end A390693

/-! ## A390693.P5117670874417880073

`(n+1)*A000265(A302690(n+1))`
-/

namespace A390693.P5117670874417880073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000265 (A302690 (n + 1)).toNat

end

end A390693.P5117670874417880073

namespace A390693

/-- `(n+1)*A000265(A302690(n+1))` -/
def P5117670874417880073.Spec : Prop :=
  ∀ n, P5117670874417880073.a n = A390693 (n + 1)

end A390693

/-! ## A390693.P220987245201498207

`A064680((n+1)*A109043(A302690(n+1)))`
-/

namespace A390693.P220987245201498207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 ((n + 1 : ℤ) * A109043 (A302690 (n + 1)).toNat).toNat

end

end A390693.P220987245201498207

namespace A390693

/-- `A064680((n+1)*A109043(A302690(n+1)))` -/
def P220987245201498207.Spec : Prop :=
  ∀ n, P220987245201498207.a n = A390693 (n + 1)

end A390693

/-!
# A390694: The smallest multiple of n that is a Loeschian number (A003136).

The programs for A390694, the canonical program `A390694.P8682946174690617644` is in `Seq.B011.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390694 has offset 1).

The definition of A390694 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A390692, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390694.P8682946174690617644

`(n+1)*A390692(n+1)`

The canonical program, it is in `Seq.B011.C001`.
-/

namespace A390694

/-- `(n+1)*A390692(n+1)` -/
def P8682946174690617644.Spec : Prop :=
  ∀ n, P8682946174690617644.a n = A390694 (n + 1)

theorem P8682946174690617644.correct : P8682946174690617644.Spec := by
  intro n
  simp only [A390694, Nat.add_sub_cancel]

end A390694

/-! ## A390694.P13160240654559109601

`(n+1)²/A390691(n+1)`
-/

namespace A390694.P13160240654559109601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A390691 (n + 1) : ℚ)

end

end A390694.P13160240654559109601

namespace A390694

/-- `(n+1)²/A390691(n+1)` -/
def P13160240654559109601.Spec : Prop :=
  ∀ n, P13160240654559109601.a n = (A390694 (n + 1) : ℚ)

end A390694

/-! ## A390694.P7521279552218453806

`A390691(A000290(n+1)/A390691(n+1))`
-/

namespace A390694.P7521279552218453806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390691 (SequenceMachineLib.roundAway ((A000290 (n + 1) : ℚ) / (A390691 (n + 1) : ℚ))).toNat

end

end A390694.P7521279552218453806

namespace A390694

/-- `A390691(A000290(n+1)/A390691(n+1))` -/
def P7521279552218453806.Spec : Prop :=
  ∀ n, P7521279552218453806.a n = A390694 (n + 1)

end A390694

/-! ## A390694.P3946894227838014316

`A390691(A000982(2*n+2)/A390691(n+1))`
-/

namespace A390694.P3946894227838014316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390691 (SequenceMachineLib.roundAway ((A000982 (2 * n + 2) : ℚ) / (A390691 (n + 1) : ℚ))).toNat

end

end A390694.P3946894227838014316

namespace A390694

/-- `A390691(A000982(2*n+2)/A390691(n+1))` -/
def P3946894227838014316.Spec : Prop :=
  ∀ n, P3946894227838014316.a n = A390694 (n + 1)

end A390694

/-!
# A390696: a(n) = floor(n * log_10(2^64)).

The programs for A390696, there is no canonical definition to state claims against.
-/

/-! ## A390696.P4040574889470536130

`A215145(n)-A130260(A179744(n))`
-/

namespace A390696.P4040574889470536130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215145 n - A130260 (A179744 n).toNat

end

end A390696.P4040574889470536130

/-! ## A390696.P13513936076779357555

`A076826(A053544(n+1))+A008601(n)`
-/

namespace A390696.P13513936076779357555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 (A053544 (n + 1)).toNat + A008601 n

end

end A390696.P13513936076779357555

/-! ## A390696.P15021873010263113225

`A185117(A000142(n))+19*n`
-/

namespace A390696.P15021873010263113225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185117 (A000142 n).toNat + (19 * n : ℤ)

end

end A390696.P15021873010263113225

/-! ## A390696.P8248092124861087488

`∩[A151979(n+1), A233473(n)]`
-/

namespace A390696.P8248092124861087488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233473 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390696.P8248092124861087488

/-!
# A390697: Primes k for which the concatenation, in ascending order, of all prime digit permutations, yields a prime.

The programs for A390697, there is no canonical definition to state claims against.
-/

/-! ## A390697.P3780648979878256989

`A065070(A391021(n+1))`
-/

namespace A390697.P3780648979878256989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065070 (A391021 (n + 1)).toNat

end

end A390697.P3780648979878256989

/-! ## A390697.P2605104931440694454

`A391021(A076084(n+1))`
-/

namespace A390697.P2605104931440694454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391021 (A076084 (n + 1)).toNat

end

end A390697.P2605104931440694454

/-! ## A390697.P5982800641487562097

`A391021(A151764(n+1))`
-/

namespace A390697.P5982800641487562097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391021 (A151764 (n + 1)).toNat

end

end A390697.P5982800641487562097

/-! ## A390697.P18291311701379727957

`∩[A000040(n+1), A391021(n+1)]`
-/

namespace A390697.P18291311701379727957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390697.P18291311701379727957

/-! ## A390697.P16955442939015684604

`∩[A000430(n+1), A391021(n+1)]`
-/

namespace A390697.P16955442939015684604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390697.P16955442939015684604

