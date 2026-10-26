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
import Seq.B000.C012
import Seq.B000.C013
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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
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
import Seq.B002.C006
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A156100: G.f.: A(x) = exp( Sum_{n>=1} (1 + 2^n*x)^n * x^n/n ).

The programs for A156100, there is no canonical definition to state claims against.
-/

/-! ## A156100.P11215014977772581490

`A187185(or(1, A103480(n)²))`
-/

namespace A156100.P11215014977772581490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (Int.lor 1 (A103480 n ^ 2)).toNat

end

end A156100.P11215014977772581490

/-! ## A156100.P4130438137659202828

`A187185(A103480(n)²)+char[5]`
-/

namespace A156100.P4130438137659202828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (A103480 n ^ 2).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A156100.P4130438137659202828

/-! ## A156100.P11191637309054776605

`and(-A003961(n+1), A333362(n+1))`
-/

namespace A156100.P11191637309054776605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A003961 (n + 1)) (A333362 (n + 1))

end

end A156100.P11191637309054776605

/-!
# A156101: L.g.f.: A(x) = Sum_{n>=1} a(n)*x^n/n = Sum_{n>=1} (1 + 2^n*x)^n*x^n/n .

The programs for A156101, there is no canonical definition to state claims against.
-/

/-! ## A156101.P15352863952980507816

`(n+1)*A305237(2*n+1)-n`
-/

namespace A156101.P15352863952980507816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A305237 (2 * n + 1) - (n : ℤ)

end

end A156101.P15352863952980507816

/-!
# A156102: 2^(n+1)*P_n(1/2) (see A155100).

The programs for A156102, there is no canonical definition to state claims against.
-/

/-! ## A156102.P9438522653901715508

`A194640(or(A096655(n), A149440(n)))`
-/

namespace A156102.P9438522653901715508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (Int.lor (A096655 n) (A149440 n)).toNat

end

end A156102.P9438522653901715508

/-! ## A156102.P13794959720917252033

`A276207(A338327(n)+A001157(n+1))`
-/

namespace A156102.P13794959720917252033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276207 (A338327 n + A001157 (n + 1)).toNat

end

end A156102.P13794959720917252033

/-!
# A156103: P_{2n+1}(sqrt(3)) (see A155100).

The programs for A156103, there is no canonical definition to state claims against.
-/

/-! ## A156103.P2890394609809662585

`record[A003462(n+1)*A009006(n)]`
-/

namespace A156103.P2890394609809662585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (n + 1) * A009006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156103.P2890394609809662585

/-!
# A156104: Primes p such that p+36 is also prime.

The programs for A156104, the canonical program `A156104.P4633343175007743095` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156104 has offset 1).

The definition of A156104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156104.P4633343175007743095

`p?[A065091(n+1)+36]-36`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A156104

/-- `p?[A065091(n+1)+36]-36` -/
def P4633343175007743095.Spec : Prop :=
  ∀ n, P4633343175007743095.a n = A156104 (n + 1)

theorem P4633343175007743095.correct : P4633343175007743095.Spec := by
  intro n
  simp only [A156104, Nat.add_sub_cancel]

end A156104

/-! ## A156104.P2429984364200946713

`p?[A004139(n+1)-36]`
-/

namespace A156104.P2429984364200946713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1) - 36

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156104.P2429984364200946713

namespace A156104

/-- `p?[A004139(n+1)-36]` -/
def P2429984364200946713.Spec : Prop :=
  ∀ n, P2429984364200946713.a n = A156104 (n + 1)

end A156104

/-! ## A156104.P11389905082505532623

`p?[A008578(n+2)+36]-36`
-/

namespace A156104.P11389905082505532623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + 36

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 36

end

end A156104.P11389905082505532623

namespace A156104

/-- `p?[A008578(n+2)+36]-36` -/
def P11389905082505532623.Spec : Prop :=
  ∀ n, P11389905082505532623.a n = A156104 (n + 1)

end A156104

/-! ## A156104.P3749573038948618298

`p?[p?[2*n+1]-36]`
-/

namespace A156104.P3749573038948618298
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 36

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156104.P3749573038948618298

namespace A156104

/-- `p?[p?[2*n+1]-36]` -/
def P3749573038948618298.Spec : Prop :=
  ∀ n, P3749573038948618298.a n = A156104 (n + 1)

end A156104

/-! ## A156104.P4723911667514248685

`p?[A045319(n+1)-A040006(n)²]`
-/

namespace A156104.P4723911667514248685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1) - A040006 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156104.P4723911667514248685

namespace A156104

/-- `p?[A045319(n+1)-A040006(n)²]` -/
def P4723911667514248685.Spec : Prop :=
  ∀ n, P4723911667514248685.a n = A156104 (n + 1)

end A156104

/-! ## A156104.P6625072603315289691

`p?[A040976(n+1)-34]`
-/

namespace A156104.P6625072603315289691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156104.P6625072603315289691

namespace A156104

/-- `p?[A040976(n+1)-34]` -/
def P6625072603315289691.Spec : Prop :=
  ∀ n, P6625072603315289691.a n = A156104 (n + 1)

end A156104

/-! ## A156104.P4359270078327770443

`p?[A006093(n+1)-35]`
-/

namespace A156104.P4359270078327770443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - 35

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156104.P4359270078327770443

namespace A156104

/-- `p?[A006093(n+1)-35]` -/
def P4359270078327770443.Spec : Prop :=
  ∀ n, P4359270078327770443.a n = A156104 (n + 1)

end A156104

/-! ## A156104.P13900922649399954137

`p?[A000040(n+1)-36]`
-/

namespace A156104.P13900922649399954137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 36

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156104.P13900922649399954137

namespace A156104

/-- `p?[A000040(n+1)-36]` -/
def P13900922649399954137.Spec : Prop :=
  ∀ n, P13900922649399954137.a n = A156104 (n + 1)

end A156104

/-! ## A156104.P7390445922919210127

`p?[A008864(n+1)-37]`
-/

namespace A156104.P7390445922919210127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 37

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156104.P7390445922919210127

namespace A156104

/-- `p?[A008864(n+1)-37]` -/
def P7390445922919210127.Spec : Prop :=
  ∀ n, P7390445922919210127.a n = A156104 (n + 1)

end A156104

/-! ## A156104.P6961358477128102023

`p?[record[A000010(n+1)]-35]`
-/

namespace A156104.P6961358477128102023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 35

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156104.P6961358477128102023

namespace A156104

/-- `p?[record[A000010(n+1)]-35]` -/
def P6961358477128102023.Spec : Prop :=
  ∀ n, P6961358477128102023.a n = A156104 (n + 1)

end A156104

/-! ## A156104.P2281915312903805395

`p?[A023478(p?[2*n+1])]`
-/

namespace A156104.P2281915312903805395
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023478 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156104.P2281915312903805395

namespace A156104

/-- `p?[A023478(p?[2*n+1])]` -/
def P2281915312903805395.Spec : Prop :=
  ∀ n, P2281915312903805395.a n = A156104 (n + 1)

end A156104

/-! ## A156104.P14054187269025513954

`p?[eq[2, A303809(n+1)]-35]`
-/

namespace A156104.P14054187269025513954
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303809 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - 35

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156104.P14054187269025513954

namespace A156104

/-- `p?[eq[2, A303809(n+1)]-35]` -/
def P14054187269025513954.Spec : Prop :=
  ∀ n, P14054187269025513954.a n = A156104 (n + 1)

end A156104

/-! ## A156104.P1430860717813786197

`p?[A023478(A000040(n+1))]`
-/

namespace A156104.P1430860717813786197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023478 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156104.P1430860717813786197

namespace A156104

/-- `p?[A023478(A000040(n+1))]` -/
def P1430860717813786197.Spec : Prop :=
  ∀ n, P1430860717813786197.a n = A156104 (n + 1)

end A156104

/-! ## A156104.P10755568974808508032

`p?[A023478(A006005(n+1))]`
-/

namespace A156104.P10755568974808508032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023478 (A006005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156104.P10755568974808508032

namespace A156104

/-- `p?[A023478(A006005(n+1))]` -/
def P10755568974808508032.Spec : Prop :=
  ∀ n, P10755568974808508032.a n = A156104 (n + 1)

end A156104

/-! ## A156104.P13648234919321430819

`p?[A023480(A000040(n+1)+2)]`
-/

namespace A156104.P13648234919321430819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023480 (A000040 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156104.P13648234919321430819

namespace A156104

/-- `p?[A023480(A000040(n+1)+2)]` -/
def P13648234919321430819.Spec : Prop :=
  ∀ n, P13648234919321430819.a n = A156104 (n + 1)

end A156104

/-!
# A156105: Primes p such that p + 72 is also prime.

The programs for A156105, the canonical program `A156105.P3542555850603369814` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156105 has offset 1).

The definition of A156105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2547 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156105.P3542555850603369814

`p?[p?[2*n+1]-72]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A156105

/-- `p?[p?[2*n+1]-72]` -/
def P3542555850603369814.Spec : Prop :=
  ∀ n, P3542555850603369814.a n = A156105 (n + 1)

theorem P3542555850603369814.correct : P3542555850603369814.Spec := by
  intro n
  simp only [A156105, Nat.add_sub_cancel]

end A156105

/-! ## A156105.P7195644014054507824

`p?[Δ[A007504(n)]-72]`
-/

namespace A156105.P7195644014054507824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 72

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156105.P7195644014054507824

namespace A156105

/-- `p?[Δ[A007504(n)]-72]` -/
def P7195644014054507824.Spec : Prop :=
  ∀ n, P7195644014054507824.a n = A156105 (n + 1)

end A156105

/-! ## A156105.P12436096301197246124

`p?[A006093(n+1)-71]`
-/

namespace A156105.P12436096301197246124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - 71

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156105.P12436096301197246124

namespace A156105

/-- `p?[A006093(n+1)-71]` -/
def P12436096301197246124.Spec : Prop :=
  ∀ n, P12436096301197246124.a n = A156105 (n + 1)

end A156105

/-! ## A156105.P9170971431121504660

`p?[A000040(n+1)-72]`
-/

namespace A156105.P9170971431121504660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 72

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156105.P9170971431121504660

namespace A156105

/-- `p?[A000040(n+1)-72]` -/
def P9170971431121504660.Spec : Prop :=
  ∀ n, P9170971431121504660.a n = A156105 (n + 1)

end A156105

/-! ## A156105.P11137908459071981294

`p?[A008578(n+1)-72]`
-/

namespace A156105.P11137908459071981294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - 72

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156105.P11137908459071981294

namespace A156105

/-- `p?[A008578(n+1)-72]` -/
def P11137908459071981294.Spec : Prop :=
  ∀ n, P11137908459071981294.a n = A156105 (n + 1)

end A156105

/-! ## A156105.P4237080205122783834

`p?[A065091(n+1)-72]`
-/

namespace A156105.P4237080205122783834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - 72

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156105.P4237080205122783834

namespace A156105

/-- `p?[A065091(n+1)-72]` -/
def P4237080205122783834.Spec : Prop :=
  ∀ n, P4237080205122783834.a n = A156105 (n + 1)

end A156105

/-! ## A156105.P2863282225802669248

`p?[A008864(n+1)-73]`
-/

namespace A156105.P2863282225802669248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 73

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156105.P2863282225802669248

namespace A156105

/-- `p?[A008864(n+1)-73]` -/
def P2863282225802669248.Spec : Prop :=
  ∀ n, P2863282225802669248.a n = A156105 (n + 1)

end A156105

/-! ## A156105.P1594980422929424997

`p?[A006530(lt[n, A006530(n+2)]+2)-72]`
-/

namespace A156105.P1594980422929424997
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 2) - 72

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156105.P1594980422929424997

namespace A156105

/-- `p?[A006530(lt[n, A006530(n+2)]+2)-72]` -/
def P1594980422929424997.Spec : Prop :=
  ∀ n, P1594980422929424997.a n = A156105 (n + 1)

end A156105

/-! ## A156105.P295966480657021061

`record[p?[n-A040971(A000005(n+1)²)]]`
-/

namespace A156105.P295966480657021061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A040971 (A000005 (n + 1) ^ 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156105.P295966480657021061

namespace A156105

/-- `record[p?[n-A040971(A000005(n+1)²)]]` -/
def P295966480657021061.Spec : Prop :=
  ∀ n, P295966480657021061.a n = A156105 (n + 1)

end A156105

/-! ## A156105.P8212150541439727184

`record[p?[n%A014963(n+72)]]`
-/

namespace A156105.P8212150541439727184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A014963 (n + 72))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156105.P8212150541439727184

namespace A156105

/-- `record[p?[n%A014963(n+72)]]` -/
def P8212150541439727184.Spec : Prop :=
  ∀ n, P8212150541439727184.a n = A156105 (n + 1)

end A156105

/-! ## A156105.P6316798734003274001

`p?[A014963(lt[n, A014963(n+2)]+2)-72]`
-/

namespace A156105.P6316798734003274001
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 2) - 72

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156105.P6316798734003274001

namespace A156105

/-- `p?[A014963(lt[n, A014963(n+2)]+2)-72]` -/
def P6316798734003274001.Spec : Prop :=
  ∀ n, P6316798734003274001.a n = A156105 (n + 1)

end A156105

/-!
# A156106: Expansion of F(1/3,2/3;1/2;27*x/2) / F(1/3,-1/3;-1/2;27*x/2).

The programs for A156106, there is no canonical definition to state claims against.
-/

/-! ## A156106.P15703000335292150236

`A111546(n)-A264668(A295182(n+1))`
-/

namespace A156106.P15703000335292150236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111546 n - A264668 (A295182 (n + 1)).toNat

end

end A156106.P15703000335292150236

/-!
# A156107: Primes p such that p + 144 is also prime.

The programs for A156107, there is no canonical definition to state claims against.
-/

/-! ## A156107.P8964456715371640273

`p?[A004139(n+1)-A124512(A342659(n+1))]`
-/

namespace A156107.P8964456715371640273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1) - A124512 (A342659 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156107.P8964456715371640273

/-! ## A156107.P433682093201603046

`record[p?[n-71*A018892(n+2)]]`
-/

namespace A156107.P433682093201603046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 71 * A018892 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156107.P433682093201603046

/-! ## A156107.P17275585707066151303

`p?[n+1-A239050(A091570(n+1)+1)²]`
-/

namespace A156107.P17275585707066151303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A239050 (A091570 (n + 1) + 1).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156107.P17275585707066151303

/-! ## A156107.P9370407196377471942

`p?[n+1-A000045(A000005(18*(n+1)))]`
-/

namespace A156107.P9370407196377471942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000045 (A000005 (18 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156107.P9370407196377471942

/-! ## A156107.P6617203711762499587

`p?[n-A037074(A000203(n+1)-n+1)]`
-/

namespace A156107.P6617203711762499587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A037074 (A000203 (n + 1) - (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156107.P6617203711762499587

/-!
# A156109: Primes p such that p+18 and p+36 are both prime.

The programs for A156109, there is no canonical definition to state claims against.
-/

/-! ## A156109.P16483229337850312794

`A161723(n+1)-18`
-/

namespace A156109.P16483229337850312794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161723 (n + 1) - 18

end

end A156109.P16483229337850312794

/-! ## A156109.P2237429427658295473

`p?[A156104(n+1)+18]-18`
-/

namespace A156109.P2237429427658295473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156104 (n + 1) + 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 18

end

end A156109.P2237429427658295473

/-! ## A156109.P15143907692760161473

`p?[A153418(n+1)-18]`
-/

namespace A156109.P15143907692760161473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153418 (n + 1) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156109.P15143907692760161473

/-! ## A156109.P12814704375372956347

`p?[A087678(n+1)-27]`
-/

namespace A156109.P12814704375372956347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087678 (n + 1) - 27

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156109.P12814704375372956347

/-! ## A156109.P17344325636400029348

`p?[2*A088769(n+1)-27]`
-/

namespace A156109.P17344325636400029348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088769 (n + 1) - 27

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156109.P17344325636400029348

/-! ## A156109.P18367657608013201235

`∩[A153418(n+1), A156104(n+1)]`
-/

namespace A156109.P18367657608013201235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153418 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156109.P18367657608013201235

/-! ## A156109.P7971929051957264643

`record[A006530(A156104(n+1)+18)]-18`
-/

namespace A156109.P7971929051957264643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A156104 (n + 1) + 18).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 18

end

end A156109.P7971929051957264643

/-! ## A156109.P9892032165853705850

`record[A020639(A156104(n+1)+18)]-18`
-/

namespace A156109.P9892032165853705850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A156104 (n + 1) + 18).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 18

end

end A156109.P9892032165853705850

/-! ## A156109.P10924771594033705687

`p?[A004273(A088769(n+1))-26]`
-/

namespace A156109.P10924771594033705687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A088769 (n + 1)).toNat - 26

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156109.P10924771594033705687

/-! ## A156109.P12087454762749883178

`p?[A156328(2*(n+2))-36]`
-/

namespace A156109.P12087454762749883178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156328 (2 * (n + 2)) - 36

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156109.P12087454762749883178

/-! ## A156109.P11896696420277066570

`A023460(A161723(n+1))`
-/

namespace A156109.P11896696420277066570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023460 (A161723 (n + 1)).toNat

end

end A156109.P11896696420277066570

/-! ## A156109.P17504054844548815926

`record[A014963(A156104(n+1)+18)]-18`
-/

namespace A156109.P17504054844548815926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A156104 (n + 1) + 18).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 18

end

end A156109.P17504054844548815926

/-!
# A156110: Primes p such that p+18 and p+72 are both prime.

The programs for A156110, there is no canonical definition to state claims against.
-/

/-! ## A156110.P4015475867392554147

`∩[A153418(n+1), A156105(n+1)]`
-/

namespace A156110.P4015475867392554147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153418 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156110.P4015475867392554147

/-! ## A156110.P7757193435609709581

`∩[p?[A006093(n+1)-71], A153418(n+1)]`
-/

namespace A156110.P7757193435609709581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - 71

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A156110.P7757193435609709581

/-! ## A156110.P3671269088418492043

`∩[p?[A000040(n+1)-72], A153418(n+1)]`
-/

namespace A156110.P3671269088418492043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 72

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A156110.P3671269088418492043

/-! ## A156110.P7238321953502466017

`∩[p?[A008578(n+1)-72], A153418(n+1)]`
-/

namespace A156110.P7238321953502466017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - 72

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A156110.P7238321953502466017

/-! ## A156110.P938811365705057139

`∩[p?[A008864(n+1)-73], A153418(n+1)]`
-/

namespace A156110.P938811365705057139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 73

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A156110.P938811365705057139

/-! ## A156110.P16493590580667987309

`∩[A156328(2*n+1), A156105(n+1)]`
-/

namespace A156110.P16493590580667987309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156328 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156110.P16493590580667987309

/-!
# A156111: Primes p such that p+18 and p+144 are both prime.

The programs for A156111, there is no canonical definition to state claims against.
-/

/-! ## A156111.P18388085833081009777

`∩[A153418(n+1), A156107(n+1)]`
-/

namespace A156111.P18388085833081009777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153418 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156111.P18388085833081009777

/-! ## A156111.P4449404177608184911

`∩[A087678(n+1)-9, A156107(n+1)]`
-/

namespace A156111.P4449404177608184911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087678 (n + 1) - 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156111.P4449404177608184911

/-! ## A156111.P16986859309676513493

`∩[2*A088769(n+1)-9, A156107(n+1)]`
-/

namespace A156111.P16986859309676513493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088769 (n + 1) - 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156111.P16986859309676513493

/-! ## A156111.P6147124723303268251

`∩[A156328(2*n+1), A156107(n+1)]`
-/

namespace A156111.P6147124723303268251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156328 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156111.P6147124723303268251

/-! ## A156111.P12289826950331247525

`∩[A023460(A004139(n+1)), A156107(n+1)]`
-/

namespace A156111.P12289826950331247525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023460 (A004139 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156111.P12289826950331247525

/-! ## A156111.P11080419554990097398

`∩[A023451(A087678(n+1)), A156107(n+1)]`
-/

namespace A156111.P11080419554990097398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023451 (A087678 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156111.P11080419554990097398

/-!
# A156112: Primes p such that p+36 and p+72 are both prime.

The programs for A156112, the canonical program `A156112.P4814909740814716344` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156112 has offset 1).

The definition of A156112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1823 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156112.P4814909740814716344

`p?[A156104(n+1)-36]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A156112

/-- `p?[A156104(n+1)-36]` -/
def P4814909740814716344.Spec : Prop :=
  ∀ n, P4814909740814716344.a n = A156112 (n + 1)

theorem P4814909740814716344.correct : P4814909740814716344.Spec := by
  intro n
  simp only [A156112, Nat.add_sub_cancel]

end A156112

/-! ## A156112.P14401281537646150457

`∩[A156104(n+1), A156105(n+1)]`
-/

namespace A156112.P14401281537646150457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156112.P14401281537646150457

namespace A156112

/-- `∩[A156104(n+1), A156105(n+1)]` -/
def P14401281537646150457.Spec : Prop :=
  ∀ n, (P14401281537646150457.a n : ℤ) = A156112 (n + 1)

end A156112

/-! ## A156112.P3131880507994262779

`p?[p?[p?[2*n+1]-36]-36]`
-/

namespace A156112.P3131880507994262779
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 36

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 36

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156112.P3131880507994262779

namespace A156112

/-- `p?[p?[p?[2*n+1]-36]-36]` -/
def P3131880507994262779.Spec : Prop :=
  ∀ n, P3131880507994262779.a n = A156112 (n + 1)

end A156112

/-! ## A156112.P7421209520091548538

`p?[p?[A000040(n+1)-36]-36]`
-/

namespace A156112.P7421209520091548538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 36

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 36

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156112.P7421209520091548538

namespace A156112

/-- `p?[p?[A000040(n+1)-36]-36]` -/
def P7421209520091548538.Spec : Prop :=
  ∀ n, P7421209520091548538.a n = A156112 (n + 1)

end A156112

/-! ## A156112.P3366810031298223730

`p?[p?[A006005(n+1)-36]-36]`
-/

namespace A156112.P3366810031298223730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) - 36

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 36

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156112.P3366810031298223730

namespace A156112

/-- `p?[p?[A006005(n+1)-36]-36]` -/
def P3366810031298223730.Spec : Prop :=
  ∀ n, P3366810031298223730.a n = A156112 (n + 1)

end A156112

/-! ## A156112.P1145278750132518902

`p?[A023478(A156104(n+1))]`
-/

namespace A156112.P1145278750132518902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023478 (A156104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156112.P1145278750132518902

namespace A156112

/-- `p?[A023478(A156104(n+1))]` -/
def P1145278750132518902.Spec : Prop :=
  ∀ n, P1145278750132518902.a n = A156112 (n + 1)

end A156112

/-! ## A156112.P15323019643060233055

`p?[A023478(p?[A000040(n+1)-36])]`
-/

namespace A156112.P15323019643060233055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 36

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023478 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156112.P15323019643060233055

namespace A156112

/-- `p?[A023478(p?[A000040(n+1)-36])]` -/
def P15323019643060233055.Spec : Prop :=
  ∀ n, P15323019643060233055.a n = A156112 (n + 1)

end A156112

/-! ## A156112.P15742790158126196575

`p?[A023478(p?[A006005(n+1)-36])]`
-/

namespace A156112.P15742790158126196575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) - 36

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023478 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156112.P15742790158126196575

namespace A156112

/-- `p?[A023478(p?[A006005(n+1)-36])]` -/
def P15742790158126196575.Spec : Prop :=
  ∀ n, P15742790158126196575.a n = A156112 (n + 1)

end A156112

/-!
# A156113: Seven-digit primes that begin with 1 followed by permutations of digits 2 to 7.

The programs for A156113, there is no canonical definition to state claims against.
-/

/-! ## A156113.P1520202995167652564

`A216444(n+5)`
-/

namespace A156113.P1520202995167652564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216444 (n + 5)

end

end A156113.P1520202995167652564

/-! ## A156113.P12707522743862241274

`A177119(n+74)`
-/

namespace A156113.P12707522743862241274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177119 (n + 74)

end

end A156113.P12707522743862241274

/-! ## A156113.P12018664473374716115

`or(1, A216444(2*n-(n-5)))`
-/

namespace A156113.P12018664473374716115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A216444 ((2 * n : ℤ) - ((n : ℤ) - 5)).toNat)

end

end A156113.P12018664473374716115

/-! ## A156113.P4770414965467824666

`∩[A178477(n+1), A225567(n+1)]`
-/

namespace A156113.P4770414965467824666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156113.P4770414965467824666

/-!
# A156114: Primes followed by at least five consecutive primes as closely as possible.

The programs for A156114, there is no canonical definition to state claims against.
-/

/-! ## A156114.P2529920845355254932

`A065091(lt[A296095(n+1), A299403(n+1)]+1)`
-/

namespace A156114.P2529920845355254932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A156114.P2529920845355254932

/-!
# A156119: Primes formed by rearranging five consecutive decimal digits (avoiding leading 0).

The programs for A156119, there is no canonical definition to state claims against.
-/

/-! ## A156119.P10063228203085073579

`A177119(n+22)`
-/

namespace A156119.P10063228203085073579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177119 (n + 22)

end

end A156119.P10063228203085073579

/-!
# A156120: Primes that are the concatenation of k and k-1 for some k, where the concatenation of k-2 and k-3 is also prime.

The programs for A156120, there is no canonical definition to state claims against.
-/

/-! ## A156120.P13548484722791411402

`p?[A127423(A054211(n+1)+2)]`
-/

namespace A156120.P13548484722791411402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127423 (A054211 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156120.P13548484722791411402

/-!
# A156121: First prime of a pair, formed by concatenating n, n+1, the second prime (not shown) formed by concatenating n+2, n+3.

The programs for A156121, there is no canonical definition to state claims against.
-/

/-! ## A156121.P7745404858975184837

`A030458(eq[2, A030457(n+2)-A030457(n+1)]+1)`
-/

namespace A156121.P7745404858975184837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030457 (n + 2) - A030457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030458 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A156121.P7745404858975184837

/-! ## A156121.P7993987198208629230

`A256176(Δ[n²])`
-/

namespace A156121.P7993987198208629230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256176 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A156121.P7993987198208629230

/-! ## A156121.P859017842054656031

`or(1, A256176(2*n+1))`
-/

namespace A156121.P859017842054656031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A256176 (2 * n + 1))

end

end A156121.P859017842054656031

/-! ## A156121.P7303092095306355336

`record[(-1)^n*A256176(n+1)]`
-/

namespace A156121.P7303092095306355336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A256176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156121.P7303092095306355336

/-! ## A156121.P15440278432703844576

`record[A256176(n*and(1, n+1)+1)]`
-/

namespace A156121.P15440278432703844576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256176 (n * Nat.land 1 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156121.P15440278432703844576

/-! ## A156121.P7763786162031024138

`record[A256176(A000265(n+1))]`
-/

namespace A156121.P7763786162031024138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256176 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156121.P7763786162031024138

/-! ## A156121.P4077483417961352509

`record[A256176(n+1)/A000034(n)]`
-/

namespace A156121.P4077483417961352509
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256176 (n + 1) : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156121.P4077483417961352509

/-! ## A156121.P7828319936455039059

`record[A256176(n+1)/A006519(n+1)]`
-/

namespace A156121.P7828319936455039059
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256176 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156121.P7828319936455039059

/-! ## A156121.P9905266641011261596

`A256176(n+1+n)^A007318(∑[n])`
-/

namespace A156121.P9905266641011261596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256176 (n + 1 + n) : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A156121.P9905266641011261596

/-! ## A156121.P4553979079257294935

`A020639(2*(n+1))+A256176(2*n+1)-2`
-/

namespace A156121.P4553979079257294935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1)) + (A256176 (2 * n + 1) - 2)

end

end A156121.P4553979079257294935

/-!
# A156123: Primes p such that p+36 and p+144 are both prime.

The programs for A156123, there is no canonical definition to state claims against.
-/

/-! ## A156123.P9244224347713640308

`∩[A156104(n+1), A156107(n+1)]`
-/

namespace A156123.P9244224347713640308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156123.P9244224347713640308

/-! ## A156123.P3147000507880599641

`∩[p?[A004139(n+1)-36], A156107(n+1)]`
-/

namespace A156123.P3147000507880599641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1) - 36

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A156123.P3147000507880599641

/-! ## A156123.P15207519305030182889

`∩[p?[A065091(n+1)+36]-36, A156107(n+1)]`
-/

namespace A156123.P15207519305030182889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + 36

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 36

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A156123.P15207519305030182889

/-! ## A156123.P16921975457000631363

`∩[p?[A040976(n+1)-34], A156107(n+1)]`
-/

namespace A156123.P16921975457000631363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - 34

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A156123.P16921975457000631363

/-! ## A156123.P11083699137951388283

`∩[p?[A006093(n+1)-35], A156107(n+1)]`
-/

namespace A156123.P11083699137951388283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - 35

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A156123.P11083699137951388283

/-! ## A156123.P18181222175281053025

`∩[p?[A000040(n+1)-36], A156107(n+1)]`
-/

namespace A156123.P18181222175281053025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 36

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A156123.P18181222175281053025

/-!
# A156124: Primes p, such that p+72 and p+144 are both prime.

The programs for A156124, the canonical program `A156124.P5510944569090822694` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156124 has offset 1).

The definition of A156124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1837 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156124.P5510944569090822694

`p?[A156105(n+1)-72]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A156124

/-- `p?[A156105(n+1)-72]` -/
def P5510944569090822694.Spec : Prop :=
  ∀ n, P5510944569090822694.a n = A156124 (n + 1)

theorem P5510944569090822694.correct : P5510944569090822694.Spec := by
  intro n
  simp only [A156124, Nat.add_sub_cancel]

end A156124

/-! ## A156124.P11556345647194579413

`∩[A156105(n+1), A156107(n+1)]`
-/

namespace A156124.P11556345647194579413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156124.P11556345647194579413

namespace A156124

/-- `∩[A156105(n+1), A156107(n+1)]` -/
def P11556345647194579413.Spec : Prop :=
  ∀ n, (P11556345647194579413.a n : ℤ) = A156124 (n + 1)

end A156124

/-! ## A156124.P12163399396952904758

`p?[p?[A173064(n+3)-67]-72]`
-/

namespace A156124.P12163399396952904758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173064 (n + 3) - 67

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 72

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156124.P12163399396952904758

namespace A156124

/-- `p?[p?[A173064(n+3)-67]-72]` -/
def P12163399396952904758.Spec : Prop :=
  ∀ n, P12163399396952904758.a n = A156124 (n + 1)

end A156124

/-! ## A156124.P15195935998134243821

`p?[p?[A000040(n+1)-72]-72]`
-/

namespace A156124.P15195935998134243821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 72

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 72

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156124.P15195935998134243821

namespace A156124

/-- `p?[p?[A000040(n+1)-72]-72]` -/
def P15195935998134243821.Spec : Prop :=
  ∀ n, P15195935998134243821.a n = A156124 (n + 1)

end A156124

/-! ## A156124.P5955490065609889765

`p?[p?[A004139(n+1)-72]-72]`
-/

namespace A156124.P5955490065609889765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1) - 72

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 72

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156124.P5955490065609889765

namespace A156124

/-- `p?[p?[A004139(n+1)-72]-72]` -/
def P5955490065609889765.Spec : Prop :=
  ∀ n, P5955490065609889765.a n = A156124 (n + 1)

end A156124

/-! ## A156124.P14717858632659740928

`p?[p?[A045319(n+1)-72]-72]`
-/

namespace A156124.P14717858632659740928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1) - 72

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 72

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156124.P14717858632659740928

namespace A156124

/-- `p?[p?[A045319(n+1)-72]-72]` -/
def P14717858632659740928.Spec : Prop :=
  ∀ n, P14717858632659740928.a n = A156124 (n + 1)

end A156124

/-! ## A156124.P14097179805776186793

`p?[p?[A065091(n+1)-72]-72]`
-/

namespace A156124.P14097179805776186793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - 72

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 72

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156124.P14097179805776186793

namespace A156124

/-- `p?[p?[A065091(n+1)-72]-72]` -/
def P14097179805776186793.Spec : Prop :=
  ∀ n, P14097179805776186793.a n = A156124 (n + 1)

end A156124

/-! ## A156124.P4371277650611435459

`p?[p?[A175787(n+1)-72]-72]`
-/

namespace A156124.P4371277650611435459
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1) - 72

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 72

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156124.P4371277650611435459

namespace A156124

/-- `p?[p?[A175787(n+1)-72]-72]` -/
def P4371277650611435459.Spec : Prop :=
  ∀ n, P4371277650611435459.a n = A156124 (n + 1)

end A156124

/-! ## A156124.P12162339240537990522

`p?[p?[A008864(n+1)-73]-72]`
-/

namespace A156124.P12162339240537990522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 73

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 72

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156124.P12162339240537990522

namespace A156124

/-- `p?[p?[A008864(n+1)-73]-72]` -/
def P12162339240537990522.Spec : Prop :=
  ∀ n, P12162339240537990522.a n = A156124 (n + 1)

end A156124

/-! ## A156124.P6745151270247244703

`p?[p?[A158611(n+1)-72]-72]`
-/

namespace A156124.P6745151270247244703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1) - 72

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 72

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156124.P6745151270247244703

namespace A156124

/-- `p?[p?[A158611(n+1)-72]-72]` -/
def P6745151270247244703.Spec : Prop :=
  ∀ n, P6745151270247244703.a n = A156124 (n + 1)

end A156124

/-!
# A156125: a(n) = 10^n*C(2n,n)/C(n+3,3).

The programs for A156125, the canonical program `A156125.P3794830085695596017` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156125 has offset 0).

The definition of A156125 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156125.P3794830085695596017

`10^(n-1)*A007272(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A156125

/-- `10^(n-1)*A007272(n)` -/
def P3794830085695596017.Spec : Prop :=
  ∀ n, P3794830085695596017.a n = (A156125 n : ℚ)

end A156125

/-! ## A156125.P15447152039890771317

`10^n*C(2*n, n)/C(n+3, 3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156125.P15447152039890771317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n * Nat.choose (2 * n) n : ℚ) / (Nat.choose (n + 3) 3 : ℚ)

end

end A156125.P15447152039890771317

namespace A156125

/-- `10^n*C(2*n, n)/C(n+3, 3)` -/
def P15447152039890771317.Spec : Prop :=
  ∀ n, P15447152039890771317.a n = (A156125 n : ℚ)

end A156125

/-! ## A156125.P11649045094201092579

`6*10^n*A000108(n)/((n+2)*(n+3))`
-/

namespace A156125.P11649045094201092579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * 10 ^ n : ℤ) * A000108 n : ℚ) / ((n + 2) * (n + 3) : ℚ)

end

end A156125.P11649045094201092579

namespace A156125

/-- `6*10^n*A000108(n)/((n+2)*(n+3))` -/
def P11649045094201092579.Spec : Prop :=
  ∀ n, P11649045094201092579.a n = (A156125 n : ℚ)

end A156125

/-! ## A156125.P6079577771924398722

`A000984(n)/∑[∑[n+1]]*A011557(n)`
-/

namespace A156125.P6079577771924398722
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * (A011557 n : ℚ)

end

end A156125.P6079577771924398722

namespace A156125

/-- `A000984(n)/∑[∑[n+1]]*A011557(n)` -/
def P6079577771924398722.Spec : Prop :=
  ∀ n, P6079577771924398722.a n = (A156125 n : ℚ)

end A156125

/-! ## A156125.P11074415473791747866

`A068555(A167614(n+2))/2*10^(n-1)`
-/

namespace A156125.P11074415473791747866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068555 (A167614 (n + 2)).toNat : ℚ) / 2 * (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A156125.P11074415473791747866

namespace A156125

/-- `A068555(A167614(n+2))/2*10^(n-1)` -/
def P11074415473791747866.Spec : Prop :=
  ∀ n, P11074415473791747866.a n = (A156125 n : ℚ)

end A156125

/-! ## A156125.P9425795755314165001

`A000984(n)*A011557(n)/A000292(n+1)`
-/

namespace A156125.P9425795755314165001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n * A011557 n : ℚ) / (A000292 (n + 1) : ℚ)

end

end A156125.P9425795755314165001

namespace A156125

/-- `A000984(n)*A011557(n)/A000292(n+1)` -/
def P9425795755314165001.Spec : Prop :=
  ∀ n, P9425795755314165001.a n = (A156125 n : ℚ)

end A156125

/-!
# A156126: Sequence related to Hankel transform of super-ballot numbers.

The programs for A156126, the canonical program `A156126.P11692458190761597945` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156126 has offset 0).

The definition of A156126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156126.P11692458190761597945

`C(record[a(n-2)+2], 3)` with `a(0)=3, a(1)=7`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A156126

/-- `C(record[a(n-2)+2], 3)` -/
def P11692458190761597945.Spec : Prop :=
  ∀ n, (P11692458190761597945.a n : ℤ) = A156126 n

theorem P11692458190761597945.correct : P11692458190761597945.Spec := by
  intro n
  simp only [A156126]

end A156126

/-! ## A156126.P3697706430492182322

`C(2*n+5, 3%(n+3))`
-/

namespace A156126.P3697706430492182322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 5) (3 % (n + 3))

end

end A156126.P3697706430492182322

namespace A156126

/-- `C(2*n+5, 3%(n+3))` -/
def P3697706430492182322.Spec : Prop :=
  ∀ n, (P3697706430492182322.a n : ℤ) = A156126 n

end A156126

/-! ## A156126.P15775304435338561827

`C(2*ceil(sqrt(∑[2*n]))+3, 3)`
-/

namespace A156126.P15775304435338561827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ + 3).toNat 3

end

end A156126.P15775304435338561827

namespace A156126

/-- `C(2*ceil(sqrt(∑[2*n]))+3, 3)` -/
def P15775304435338561827.Spec : Prop :=
  ∀ n, (P15775304435338561827.a n : ℤ) = A156126 n

end A156126

/-! ## A156126.P2502856430709358484

`Δ[∑[(2*n+1)²]+a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A156126.P2502856430709358484
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A156126.P2502856430709358484

namespace A156126

/-- `Δ[∑[(2*n+1)²]+a(n-1)]` -/
def P2502856430709358484.Spec : Prop :=
  ∀ n, P2502856430709358484.a n = A156126 n

end A156126

/-! ## A156126.P14530389195067736079

`A000447(ceil(sqrt(∑[2*n]))+1)`
-/

namespace A156126.P14530389195067736079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 (⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ + 1).toNat

end

end A156126.P14530389195067736079

namespace A156126

/-- `A000447(ceil(sqrt(∑[2*n]))+1)` -/
def P14530389195067736079.Spec : Prop :=
  ∀ n, P14530389195067736079.a n = A156126 n

end A156126

/-! ## A156126.P6857489454420673778

`record[C(2*(n+1-A028242(n))+3, 3)]`
-/

namespace A156126.P6857489454420673778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * ((n + 1 : ℤ) - A028242 n) + 3).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156126.P6857489454420673778

namespace A156126

/-- `record[C(2*(n+1-A028242(n))+3, 3)]` -/
def P6857489454420673778.Spec : Prop :=
  ∀ n, (P6857489454420673778.a n : ℤ) = A156126 n

end A156126

/-! ## A156126.P8408906002111092382

`record[C(2*A028242(n+1)+3, 3)]`
-/

namespace A156126.P8408906002111092382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A028242 (n + 1) + 3).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156126.P8408906002111092382

namespace A156126

/-- `record[C(2*A028242(n+1)+3, 3)]` -/
def P8408906002111092382.Spec : Prop :=
  ∀ n, (P8408906002111092382.a n : ℤ) = A156126 n

end A156126

/-! ## A156126.P6784731224127006272

`A000292(2*n+1)+A062545(n)²`
-/

namespace A156126.P6784731224127006272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (2 * n + 1) + A062545 n ^ 2

end

end A156126.P6784731224127006272

namespace A156126

/-- `A000292(2*n+1)+A062545(n)²` -/
def P6784731224127006272.Spec : Prop :=
  ∀ n, P6784731224127006272.a n = A156126 n

end A156126

/-! ## A156126.P8371457789489642587

`A212767(2*n+1)+A062545(n)²`
-/

namespace A156126.P8371457789489642587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212767 (2 * n + 1) + A062545 n ^ 2

end

end A156126.P8371457789489642587

namespace A156126

/-- `A212767(2*n+1)+A062545(n)²` -/
def P8371457789489642587.Spec : Prop :=
  ∀ n, P8371457789489642587.a n = A156126 n

end A156126

/-! ## A156126.P9354597748114852329

`1-A057428(n)*A062748(2*n+1)`
-/

namespace A156126.P9354597748114852329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057428 n * A062748 (2 * n + 1)

end

end A156126.P9354597748114852329

namespace A156126

/-- `1-A057428(n)*A062748(2*n+1)` -/
def P9354597748114852329.Spec : Prop :=
  ∀ n, P9354597748114852329.a n = A156126 n

end A156126

/-! ## A156126.P2672047617622331091

`A035597(A266977(2*n))-A266977(2*n)`
-/

namespace A156126.P2672047617622331091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035597 (A266977 (2 * n)).toNat - A266977 (2 * n)

end

end A156126.P2672047617622331091

namespace A156126

/-- `A035597(A266977(2*n))-A266977(2*n)` -/
def P2672047617622331091.Spec : Prop :=
  ∀ n, P2672047617622331091.a n = A156126 n

end A156126

/-! ## A156126.P11582352798558468948

`A000292(Δ[(abs(1-n)+2)*(n+1)])`
-/

namespace A156126.P11582352798558468948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (|1 - (n : ℤ)| + 2) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (f1 (n + 1) - f1 n).toNat

end

end A156126.P11582352798558468948

namespace A156126

/-- `A000292(Δ[(abs(1-n)+2)*(n+1)])` -/
def P11582352798558468948.Spec : Prop :=
  ∀ n, P11582352798558468948.a n = A156126 n

end A156126

/-! ## A156126.P14429795431215011171

`A212767(A062545(n))`
-/

namespace A156126.P14429795431215011171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212767 (A062545 n).toNat

end

end A156126.P14429795431215011171

namespace A156126

/-- `A212767(A062545(n))` -/
def P14429795431215011171.Spec : Prop :=
  ∀ n, P14429795431215011171.a n = A156126 n

end A156126

/-! ## A156126.P11436296271304228511

`A190718(A273782(n))`
-/

namespace A156126.P11436296271304228511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190718 (A273782 n).toNat

end

end A156126.P11436296271304228511

namespace A156126

/-- `A190718(A273782(n))` -/
def P11436296271304228511.Spec : Prop :=
  ∀ n, P11436296271304228511.a n = A156126 n

end A156126

/-! ## A156126.P11449303987731385774

`A103219(A253145(n))`
-/

namespace A156126.P11449303987731385774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103219 (A253145 n).toNat

end

end A156126.P11449303987731385774

namespace A156126

/-- `A103219(A253145(n))` -/
def P11449303987731385774.Spec : Prop :=
  ∀ n, P11449303987731385774.a n = A156126 n

end A156126

/-! ## A156126.P18137545071741147779

`A122366(A167614(n+1))`
-/

namespace A156126.P18137545071741147779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122366 (A167614 (n + 1)).toNat

end

end A156126.P18137545071741147779

namespace A156126

/-- `A122366(A167614(n+1))` -/
def P18137545071741147779.Spec : Prop :=
  ∀ n, P18137545071741147779.a n = A156126 n

end A156126

/-! ## A156126.P5655193275141846332

`A111418(A046691(n+1))`
-/

namespace A156126.P5655193275141846332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111418 (A046691 (n + 1)).toNat

end

end A156126.P5655193275141846332

namespace A156126

/-- `A111418(A046691(n+1))` -/
def P5655193275141846332.Spec : Prop :=
  ∀ n, P5655193275141846332.a n = A156126 n

end A156126

/-! ## A156126.P6403164576664955819

`A111418(A000124(n+1)+2*n)`
-/

namespace A156126.P6403164576664955819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111418 (A000124 (n + 1) + (2 * n : ℤ)).toNat

end

end A156126.P6403164576664955819

namespace A156126

/-- `A111418(A000124(n+1)+2*n)` -/
def P6403164576664955819.Spec : Prop :=
  ∀ n, P6403164576664955819.a n = A156126 n

end A156126

/-!
# A156127: a(n) = 7*2^n - 3.

The programs for A156127, the canonical program `A156127.P15965805001650796563` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156127 has offset 0).

The definition of A156127 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*2^n-3` (program `A156127.P15965805001650796563`, by `A156127.P15965805001650796563.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156127.P15965805001650796563

`7*2^n-3`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A156127

/-- `7*2^n-3` -/
def P15965805001650796563.Spec : Prop :=
  ∀ n, P15965805001650796563.a n = A156127 n

theorem P15965805001650796563.correct : P15965805001650796563.Spec := by
  intro n
  simp only [A156127]

end A156127

/-! ## A156127.P1424192248138555874

`ogf((4-x)/(1-3x+2x^2))`
-/

namespace A156127.P1424192248138555874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -1] [1, -3, 2] n

end

end A156127.P1424192248138555874

namespace A156127

/-- `ogf((4-x)/(1-3x+2x^2))` -/
def P1424192248138555874.Spec : Prop :=
  ∀ n, P1424192248138555874.a n = A156127 n

end A156127

/-! ## A156127.P676087529607382127

`∑[2*a(n-1)]` with `a(0)=4, a(1)=7`
-/

namespace A156127.P676087529607382127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 7] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156127.P676087529607382127

namespace A156127

/-- `∑[2*a(n-1)]` -/
def P676087529607382127.Spec : Prop :=
  ∀ n, (P676087529607382127.a n : ℤ) = A156127 n

end A156127

/-! ## A156127.P16541492309299505794

`abs(2*a(n-1)+3)` with `a(0)=4`
-/

namespace A156127.P16541492309299505794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  2 * a (n - 1) + 3

end

end A156127.P16541492309299505794

namespace A156127

/-- `abs(2*a(n-1)+3)` -/
def P16541492309299505794.Spec : Prop :=
  ∀ n, (P16541492309299505794.a n : ℤ) = A156127 n

theorem P16541492309299505794.correct : P16541492309299505794.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A156127, Nat.add_sub_cancel, A156127.P16541492309299505794.a, A156127.P15965805001650796563.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A156127, Nat.add_sub_cancel, A156127.P16541492309299505794.a, A156127.P15965805001650796563.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A156127

/-! ## A156127.P2567365436924347622

`floor(2*(a(n-1)+ϕ))` with `a(0)=4`
-/

namespace A156127.P2567365436924347622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌊2 * ((a (n - 1) : ℝ) + Real.goldenRatio)⌋

end

end A156127.P2567365436924347622

namespace A156127

/-- `floor(2*(a(n-1)+ϕ))` -/
def P2567365436924347622.Spec : Prop :=
  ∀ n, P2567365436924347622.a n = A156127 n

end A156127

/-! ## A156127.P3103828037133374778

`round(2*(a(n-1)+ϕ))` with `a(0)=4`
-/

namespace A156127.P3103828037133374778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  SequenceMachineLib.roundAway (2 * ((a (n - 1) : ℝ) + Real.goldenRatio))

end

end A156127.P3103828037133374778

namespace A156127

/-- `round(2*(a(n-1)+ϕ))` -/
def P3103828037133374778.Spec : Prop :=
  ∀ n, P3103828037133374778.a n = A156127 n

end A156127

/-! ## A156127.P9655514996044844077

`2*(a(n-1)+3/2)` with `a(0)=4`
-/

namespace A156127.P9655514996044844077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  2 * (a (n - 1) + (3 : ℚ) / 2)

end

end A156127.P9655514996044844077

namespace A156127

/-- `2*(a(n-1)+3/2)` -/
def P9655514996044844077.Spec : Prop :=
  ∀ n, P9655514996044844077.a n = (A156127 n : ℚ)

theorem P9655514996044844077.correct : P9655514996044844077.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A156127, Nat.add_sub_cancel, A156127.P9655514996044844077.a, A156127.P15965805001650796563.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A156127, Nat.add_sub_cancel, A156127.P9655514996044844077.a, A156127.P15965805001650796563.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A156127

/-! ## A156127.P6163299634735497819

`or(1, 2*(a(n-1)+1))` with `a(0)=4`
-/

namespace A156127.P6163299634735497819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.lor 1 (2 * (a (n - 1) + 1))

end

end A156127.P6163299634735497819

namespace A156127

/-- `or(1, 2*(a(n-1)+1))` -/
def P6163299634735497819.Spec : Prop :=
  ∀ n, (P6163299634735497819.a n : ℤ) = A156127 n

end A156127

/-! ## A156127.P1415218501916390540

`xor(1, 2*(a(n-1)+1))` with `a(0)=4`
-/

namespace A156127.P1415218501916390540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.xor 1 (2 * (a (n - 1) + 1))

end

end A156127.P1415218501916390540

namespace A156127

/-- `xor(1, 2*(a(n-1)+1))` -/
def P1415218501916390540.Spec : Prop :=
  ∀ n, (P1415218501916390540.a n : ℤ) = A156127 n

end A156127

/-! ## A156127.P12079603982954278685

`record[2*a(n-2)+3]` with `a(0)=4, a(1)=0`
-/

namespace A156127.P12079603982954278685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 0] fun n f1 =>
  2 * f1 (n - 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156127.P12079603982954278685

namespace A156127

/-- `record[2*a(n-2)+3]` -/
def P12079603982954278685.Spec : Prop :=
  ∀ n, (P12079603982954278685.a n : ℤ) = A156127 n

end A156127

/-! ## A156127.P10783627475560592265

`ceil(ϕ²+2*a(n-1))` with `a(0)=4`
-/

namespace A156127.P10783627475560592265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌈Real.goldenRatio ^ 2 + (2 * a (n - 1) : ℝ)⌉

end

end A156127.P10783627475560592265

namespace A156127

/-- `ceil(ϕ²+2*a(n-1))` -/
def P10783627475560592265.Spec : Prop :=
  ∀ n, P10783627475560592265.a n = A156127 n

end A156127

/-! ## A156127.P12591374248391035955

`2*(2-(1/2-a(n-1)))` with `a(0)=4`
-/

namespace A156127.P12591374248391035955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  2 * (2 - ((1 : ℚ) / 2 - a (n - 1)))

end

end A156127.P12591374248391035955

namespace A156127

/-- `2*(2-(1/2-a(n-1)))` -/
def P12591374248391035955.Spec : Prop :=
  ∀ n, P12591374248391035955.a n = (A156127 n : ℚ)

theorem P12591374248391035955.correct : P12591374248391035955.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A156127, Nat.add_sub_cancel, A156127.P12591374248391035955.a, A156127.P15965805001650796563.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A156127, Nat.add_sub_cancel, A156127.P12591374248391035955.a, A156127.P15965805001650796563.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A156127

/-! ## A156127.P3366771370438135752

`abs(a(n-1)+a(n-1)+3)` with `a(0)=4`
-/

namespace A156127.P3366771370438135752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + (a (n - 1) + 3)

end

end A156127.P3366771370438135752

namespace A156127

/-- `abs(a(n-1)+a(n-1)+3)` -/
def P3366771370438135752.Spec : Prop :=
  ∀ n, (P3366771370438135752.a n : ℤ) = A156127 n

theorem P3366771370438135752.correct : P3366771370438135752.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A156127, Nat.add_sub_cancel, A156127.P3366771370438135752.a, A156127.P15965805001650796563.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A156127, Nat.add_sub_cancel, A156127.P3366771370438135752.a, A156127.P15965805001650796563.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A156127

/-! ## A156127.P13079712704582366616

`floor(a(n-1)+a(n-1)+3)` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A156127.P13079712704582366616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + (a (n - 1) + 3)

end

end A156127.P13079712704582366616

namespace A156127

/-- `floor(a(n-1)+a(n-1)+3)` -/
def P13079712704582366616.Spec : Prop :=
  ∀ n, (P13079712704582366616.a n : ℤ) = A156127 n

theorem P13079712704582366616.correct : P13079712704582366616.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A156127, Nat.add_sub_cancel, A156127.P13079712704582366616.a, A156127.P15965805001650796563.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A156127, Nat.add_sub_cancel, A156127.P13079712704582366616.a, A156127.P15965805001650796563.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A156127

/-! ## A156127.P10326993851861203512

`ceil(a(n-1)+a(n-1)+3)` with `a(0)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A156127.P10326993851861203512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + (a (n - 1) + 3)

end

end A156127.P10326993851861203512

namespace A156127

/-- `ceil(a(n-1)+a(n-1)+3)` -/
def P10326993851861203512.Spec : Prop :=
  ∀ n, (P10326993851861203512.a n : ℤ) = A156127 n

theorem P10326993851861203512.correct : P10326993851861203512.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A156127, Nat.add_sub_cancel, A156127.P10326993851861203512.a, A156127.P15965805001650796563.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A156127, Nat.add_sub_cancel, A156127.P10326993851861203512.a, A156127.P15965805001650796563.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A156127

/-! ## A156127.P13105482521512671565

`round(a(n-1)+a(n-1)+3)` with `a(0)=4`

`round` is left out, it is the identity on integers.
-/

namespace A156127.P13105482521512671565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + (a (n - 1) + 3)

end

end A156127.P13105482521512671565

namespace A156127

/-- `round(a(n-1)+a(n-1)+3)` -/
def P13105482521512671565.Spec : Prop :=
  ∀ n, (P13105482521512671565.a n : ℤ) = A156127 n

theorem P13105482521512671565.correct : P13105482521512671565.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A156127, Nat.add_sub_cancel, A156127.P13105482521512671565.a, A156127.P15965805001650796563.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A156127, Nat.add_sub_cancel, A156127.P13105482521512671565.a, A156127.P15965805001650796563.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A156127

/-! ## A156127.P1831586426076269619

`or(1, a(n-1)+a(n-1)+2)` with `a(0)=4`
-/

namespace A156127.P1831586426076269619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.lor 1 (a (n - 1) + (a (n - 1) + 2))

end

end A156127.P1831586426076269619

namespace A156127

/-- `or(1, a(n-1)+a(n-1)+2)` -/
def P1831586426076269619.Spec : Prop :=
  ∀ n, (P1831586426076269619.a n : ℤ) = A156127 n

end A156127

/-! ## A156127.P273891946920323206

`xor(1, a(n-1)+a(n-1)+2)` with `a(0)=4`
-/

namespace A156127.P273891946920323206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.xor 1 (a (n - 1) + (a (n - 1) + 2))

end

end A156127.P273891946920323206

namespace A156127

/-- `xor(1, a(n-1)+a(n-1)+2)` -/
def P273891946920323206.Spec : Prop :=
  ∀ n, (P273891946920323206.a n : ℤ) = A156127 n

end A156127

/-! ## A156127.P9403749979928745374

`record[a(n-2)+a(n-2)+3]` with `a(0)=4, a(1)=0`
-/

namespace A156127.P9403749979928745374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 0] fun n f1 =>
  f1 (n - 2) + (f1 (n - 2) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156127.P9403749979928745374

namespace A156127

/-- `record[a(n-2)+a(n-2)+3]` -/
def P9403749979928745374.Spec : Prop :=
  ∀ n, (P9403749979928745374.a n : ℤ) = A156127 n

end A156127

/-! ## A156127.P9107125465969296974

`(2*a(n-1)+3)*gcd(3, a(n-1))` with `a(0)=4`
-/

namespace A156127.P9107125465969296974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  (2 * a (n - 1) + 3) * Nat.gcd 3 (a (n - 1))

end

end A156127.P9107125465969296974

namespace A156127

/-- `(2*a(n-1)+3)*gcd(3, a(n-1))` -/
def P9107125465969296974.Spec : Prop :=
  ∀ n, (P9107125465969296974.a n : ℤ) = A156127 n

end A156127

/-!
# A156128: a(n) = 6^n * Catalan(n).

The programs for A156128, the canonical program `A156128.P4488118802743694307` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156128 has offset 0).

The definition of A156128 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n*A000108(n)` (program `A156128.P4488118802743694307`, by `A156128.P4488118802743694307.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156128.P4488118802743694307

`6^n*A000108(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A156128

/-- `6^n*A000108(n)` -/
def P4488118802743694307.Spec : Prop :=
  ∀ n, P4488118802743694307.a n = A156128 n

theorem P4488118802743694307.correct : P4488118802743694307.Spec := by
  intro n
  simp only [A156128]

end A156128

/-! ## A156128.P8881686188864492732

`C(2*n, n)/(n+1)*6^n`
-/

namespace A156128.P8881686188864492732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (6 ^ n : ℚ)

end

end A156128.P8881686188864492732

namespace A156128

/-- `C(2*n, n)/(n+1)*6^n` -/
def P8881686188864492732.Spec : Prop :=
  ∀ n, P8881686188864492732.a n = (A156128 n : ℚ)

end A156128

/-! ## A156128.P4989387274082487295

`6*(4-6/(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A156128.P4989387274082487295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  6 * ((4 - 6 / (n + 1 : ℚ)) * a (n - 1))

end

end A156128.P4989387274082487295

namespace A156128

/-- `6*(4-6/(n+1))*a(n-1)` -/
def P4989387274082487295.Spec : Prop :=
  ∀ n, P4989387274082487295.a n = (A156128 n : ℚ)

end A156128

/-! ## A156128.P10712400818460679686

`2^n*A005159(n)`
-/

namespace A156128.P10712400818460679686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A005159 n

end

end A156128.P10712400818460679686

namespace A156128

/-- `2^n*A005159(n)` -/
def P10712400818460679686.Spec : Prop :=
  ∀ n, P10712400818460679686.a n = A156128 n

end A156128

/-! ## A156128.P6319968334577253364

`abs(6^n*A168491(n))`
-/

namespace A156128.P6319968334577253364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(6 ^ n : ℤ) * A168491 n|

end

end A156128.P6319968334577253364

namespace A156128

/-- `abs(6^n*A168491(n))` -/
def P6319968334577253364.Spec : Prop :=
  ∀ n, P6319968334577253364.a n = A156128 n

end A156128

/-! ## A156128.P1898553668357734696

`6^n*A120588(n+1)`
-/

namespace A156128.P1898553668357734696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * A120588 (n + 1)

end

end A156128.P1898553668357734696

namespace A156128

/-- `6^n*A120588(n+1)` -/
def P1898553668357734696.Spec : Prop :=
  ∀ n, P1898553668357734696.a n = A156128 n

end A156128

/-! ## A156128.P8519321345676109671

`(A120304(n)+2)*6^n`
-/

namespace A156128.P8519321345676109671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A120304 n + 2) * (6 ^ n : ℤ)

end

end A156128.P8519321345676109671

namespace A156128

/-- `(A120304(n)+2)*6^n` -/
def P8519321345676109671.Spec : Prop :=
  ∀ n, P8519321345676109671.a n = A156128 n

theorem P8519321345676109671.correct : P8519321345676109671.Spec := by
  intro n
  simp only [A156128, Nat.add_sub_cancel, A156128.P8519321345676109671.a, A156128.P4488118802743694307.a, A000108, A000108.P17551949696095299361.a, A120304, A120304.P16195813583233364787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156128

/-! ## A156128.P4071830280808395022

`6^n*A028303(2*n)`
-/

namespace A156128.P4071830280808395022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * A028303 (2 * n)

end

end A156128.P4071830280808395022

namespace A156128

/-- `6^n*A028303(2*n)` -/
def P4071830280808395022.Spec : Prop :=
  ∀ n, P4071830280808395022.a n = A156128 n

end A156128

/-! ## A156128.P18435419150554723740

`6^n*A028304(2*n)`
-/

namespace A156128.P18435419150554723740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * A028304 (2 * n)

end

end A156128.P18435419150554723740

namespace A156128

/-- `6^n*A028304(2*n)` -/
def P18435419150554723740.Spec : Prop :=
  ∀ n, P18435419150554723740.a n = A156128 n

end A156128

/-! ## A156128.P14870632884148830742

`A000108(n)*A000400(n)`
-/

namespace A156128.P14870632884148830742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000400 n

end

end A156128.P14870632884148830742

namespace A156128

/-- `A000108(n)*A000400(n)` -/
def P14870632884148830742.Spec : Prop :=
  ∀ n, P14870632884148830742.a n = A156128 n

theorem P14870632884148830742.correct : P14870632884148830742.Spec := by
  intro n
  simp only [A156128, Nat.add_sub_cancel, A156128.P14870632884148830742.a, A156128.P4488118802743694307.a, A000108, A000108.P17551949696095299361.a, A000400, A000400.P10889281521385558416.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156128

/-!
# A156129: Q_n(2) (see A104035).

The programs for A156129, there is no canonical definition to state claims against.
-/

/-! ## A156129.P1165590587530791173

`A005364(n)-A025444(A005346(n+1))`
-/

namespace A156129.P1165590587530791173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005364 n - A025444 (A005346 (n + 1)).toNat

end

end A156129.P1165590587530791173

/-!
# A156131: Q_n(3) (see A104035).

The programs for A156131, there is no canonical definition to state claims against.
-/

/-! ## A156131.P3042791507123888833

`A163241(A335838(n²))`
-/

namespace A156131.P3042791507123888833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A335838 (n ^ 2)).toNat

end

end A156131.P3042791507123888833

/-!
# A156134: Q_2n(sqrt(2)) (see A104035).

The programs for A156134, there is no canonical definition to state claims against.
-/

/-! ## A156134.P13521148010858626625

`A395232(∑[n+1]+n)`
-/

namespace A156134.P13521148010858626625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395232 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A156134.P13521148010858626625

/-!
# A156135: Denominator coefficients of infinite over the Fibonacci sequence: p(x,n)=(1 - x)*Sum[Fibonacci[k]^n*x^k, {k, 0, Infinity}]; t(n,m)=Coefficients(Numerator(p(x,n)).

The programs for A156135, there is no canonical definition to state claims against.
-/

/-! ## A156135.P3787054954470869848

`A020639(A082526(n))-A055396(n+1)`
-/

namespace A156135.P3787054954470869848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A082526 n).toNat - A055396 (n + 1)

end

end A156135.P3787054954470869848

/-! ## A156135.P18348777754258050183

`xor(A056594(n), A349670(A196590(n+1)))`
-/

namespace A156135.P18348777754258050183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A056594 n) (A349670 (A196590 (n + 1)).toNat)

end

end A156135.P18348777754258050183

/-! ## A156135.P1283574241704174777

`A005171(n+1)-A124737(A117776(n+1))`
-/

namespace A156135.P1283574241704174777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) - A124737 (A117776 (n + 1)).toNat

end

end A156135.P1283574241704174777

/-! ## A156135.P1076813255350812432

`A106494(n+1)-A106490(A356703(n+1))`
-/

namespace A156135.P1076813255350812432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106494 (n + 1) - A106490 (A356703 (n + 1)).toNat

end

end A156135.P1076813255350812432

/-! ## A156135.P16655733544584588458

`A185437(A292790(n+1))-A289508(n+1)`
-/

namespace A156135.P16655733544584588458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185437 (A292790 (n + 1)).toNat - A289508 (n + 1)

end

end A156135.P16655733544584588458

/-!
# A156136: A triangle of polynomial coefficients related to Mittag-Leffler polynomials: p(x,n)=Sum[Binomial[n, k]*Binomial[n - 1, n - k]*2^k*x^k, {k, 0, n}]/(2*x).

The programs for A156136, there is no canonical definition to state claims against.
-/

/-! ## A156136.P15506075020188838224

`C(row(n), col(n))*C(row(n)+1, col(n)+1)*2^col(n)`
-/

namespace A156136.P15506075020188838224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) * Nat.choose (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n + 1) * 2 ^ SequenceMachineLib.triCol n

end

end A156136.P15506075020188838224

/-! ## A156136.P14284562432510427473

`2^(n-C(∑[char[∑[n]]], 2))*A103371(n)`
-/

namespace A156136.P14284562432510427473
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) * (A103371 n : ℚ)

end

end A156136.P14284562432510427473

/-! ## A156136.P2787305794824337077

`(C(comp[∑[n]]-n, 2)-n)*A114687(n+1)`
-/

namespace A156136.P2787305794824337077
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A114687 (n + 1)

end

end A156136.P2787305794824337077

/-! ## A156136.P14759970340700734004

`A013609(n)*A135278(n)`
-/

namespace A156136.P14759970340700734004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A135278 n

end

end A156136.P14759970340700734004

/-! ## A156136.P7447556299671357092

`A059268(n)*A103371(n)`
-/

namespace A156136.P7447556299671357092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A103371 n

end

end A156136.P7447556299671357092

/-! ## A156136.P1510196120318522950

`A007318(n)*A193862(n)`
-/

namespace A156136.P1510196120318522950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A193862 n

end

end A156136.P1510196120318522950

/-! ## A156136.P16563315803685306134

`A124927(n)*A133341(n)`
-/

namespace A156136.P16563315803685306134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 n * A133341 n

end

end A156136.P16563315803685306134

/-! ## A156136.P5858303856738427729

`A007318(comp[∑[n]])*A013609(n)`
-/

namespace A156136.P5858303856738427729
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A013609 n

end

end A156136.P5858303856738427729

/-! ## A156136.P6136629186254024334

`A007318(n)*A082137(comp[∑[n]])`
-/

namespace A156136.P6136629186254024334
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A082137 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A156136.P6136629186254024334

/-! ## A156136.P8040595209862753154

`abs(A007318(n)/2*A185342(n))`
-/

namespace A156136.P8040595209862753154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A007318 n : ℚ) / 2 * (A185342 n : ℚ)|

end

end A156136.P8040595209862753154

/-!
# A156137: A recursive triangle sequence: A(n,k)=k^2*(A(n - 1, k - 1) + A(n - 1, k)).

The programs for A156137, there is no canonical definition to state claims against.
-/

/-! ## A156137.P18357746633270464126

`dr(A094776(n+1))^A004247(n)`
-/

namespace A156137.P18357746633270464126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A094776 (n + 1)) : ℚ) ^ (A004247 n : ℤ)

end

end A156137.P18357746633270464126

/-! ## A156137.P2909900733319492731

`A010888(A001790(n))^A048720(n)`
-/

namespace A156137.P2909900733319492731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010888 (A001790 n).toNat : ℚ) ^ (A048720 n : ℤ)

end

end A156137.P2909900733319492731

/-! ## A156137.P17393427697047865835

`A010888(A088218(n))^A048720(n)`
-/

namespace A156137.P17393427697047865835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010888 (A088218 n).toNat : ℚ) ^ (A048720 n : ℤ)

end

end A156137.P17393427697047865835

/-! ## A156137.P4810573755852734737

`A120258(n)^A001222(A034999(n))`
-/

namespace A156137.P4810573755852734737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120258 n : ℚ) ^ (A001222 (A034999 n).toNat : ℤ)

end

end A156137.P4810573755852734737

/-! ## A156137.P8606446987410793823

`A142589(n)^A001222(A034999(n))`
-/

namespace A156137.P8606446987410793823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142589 n : ℚ) ^ (A001222 (A034999 n).toNat : ℤ)

end

end A156137.P8606446987410793823

/-!
# A156139: Triangle T(n,k) = (2*n-k-1)*T(n-1,k-1) + (k+1)*T(n-1,k), with T(n,1) = T(n,n) = 1, 1 <= k <= n, read by rows.

The programs for A156139, there is no canonical definition to state claims against.
-/

/-! ## A156139.P16685300177603838691

`A231405(A141690(n)-A201637(n))`
-/

namespace A156139.P16685300177603838691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231405 (A141690 n - A201637 n).toNat

end

end A156139.P16685300177603838691

/-! ## A156139.P4540913899104556738

`A060187(n+1)+A048142(A327859(n))`
-/

namespace A156139.P4540913899104556738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) + A048142 (A327859 n).toNat

end

end A156139.P4540913899104556738

/-! ## A156139.P13471625766346105884

`A321936(A269505(n+1))+A174527(n)`
-/

namespace A156139.P13471625766346105884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 (A269505 (n + 1)).toNat + A174527 n

end

end A156139.P13471625766346105884

/-! ## A156139.P16098552632238903798

`xor(A036853(A079474(n+1)), A174527(n))`
-/

namespace A156139.P16098552632238903798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A036853 (A079474 (n + 1)).toNat) (A174527 n)

end

end A156139.P16098552632238903798

/-!
# A156140: Accumulation of Stern's diatomic series: a(0)=-1, a(1)=0, and a(n+1) = (2e(n)+1)*a(n) - a(n-1) for n > 1, where e(n) is the highest power of 2 dividing n.

The programs for A156140, there is no canonical definition to state claims against.
-/

/-! ## A156140.P10553030294304289958

`A321154(n)+A002487(n)`
-/

namespace A156140.P10553030294304289958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321154 n + A002487 n

end

end A156140.P10553030294304289958

/-! ## A156140.P5030534985932737877

`A321154(n)+n-A284013(n)`
-/

namespace A156140.P5030534985932737877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321154 n + ((n : ℤ) - A284013 n)

end

end A156140.P5030534985932737877

/-! ## A156140.P16894337130219631758

`A321154(n)+∑{d}[n, A317839(#)]`
-/

namespace A156140.P16894337130219631758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321154 n + ∑ d ∈ Nat.divisors (f1 n), A317839 d

end

end A156140.P16894337130219631758

/-! ## A156140.P6797105047162625616

`A321154(n)+A126606(n+1)/2`
-/

namespace A156140.P6797105047162625616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321154 n : ℚ) + (A126606 (n + 1) : ℚ) / 2

end

end A156140.P6797105047162625616

/-! ## A156140.P2097480736400436810

`A321154(n)+n-∑{d}[n, A317841(#)]`
-/

namespace A156140.P2097480736400436810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321154 n + ((n : ℤ) - ∑ d ∈ Nat.divisors (f1 n), A317841 d)

end

end A156140.P2097480736400436810

/-! ## A156140.P11031936249218683819

`A283976(n)+A321154(n)+A283978(n)`
-/

namespace A156140.P11031936249218683819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 n + (A321154 n + A283978 n)

end

end A156140.P11031936249218683819

/-! ## A156140.P8501556102397958514

`A324337(xor(n, 2*n))+A321154(n)`
-/

namespace A156140.P8501556102397958514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (Nat.xor n (2 * n)) + A321154 n

end

end A156140.P8501556102397958514

/-! ## A156140.P16487182421582722547

`A321154(2*n)`
-/

namespace A156140.P16487182421582722547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321154 (2 * n)

end

end A156140.P16487182421582722547

/-!
# A156141: Triangle T(n,k) = A008517(n,k+1)+A008517(n,n+1-k) read by rows.

The programs for A156141, there is no canonical definition to state claims against.
-/

/-! ## A156141.P11754210080233390948

`A288874(n)+A201637(n)`
-/

namespace A156141.P11754210080233390948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 n + A201637 n

end

end A156141.P11754210080233390948

/-! ## A156141.P1273809436600152401

`A340556(ceil(acot(n)+n))+A288874(n)`
-/

namespace A156141.P1273809436600152401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340556 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat + A288874 n

end

end A156141.P1273809436600152401

/-! ## A156141.P4640489545082255165

`A288874(n)+A340556(n+1)+floor(acot(n))`
-/

namespace A156141.P4640489545082255165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 n + (A340556 (n + 1) + ⌊SequenceMachineLib.acot (n : ℝ)⌋)

end

end A156141.P4640489545082255165

/-! ## A156141.P5076888452979547154

`A201637(∑[2*n]%comp[∑[n]])+A201637(n)`
-/

namespace A156141.P5076888452979547154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201637 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) + A201637 n

end

end A156141.P5076888452979547154

/-! ## A156141.P2442611209663906908

`A340556((n+1)%(2*n+1))+A288874(n)`
-/

namespace A156141.P2442611209663906908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340556 ((n + 1) % (2 * n + 1)) + A288874 n

end

end A156141.P2442611209663906908

/-!
# A156142: P_n(1) + Q_n(1) (see A155100 and A104035), defining Q_{-1} = 0.

The programs for A156142, there is no canonical definition to state claims against.
-/

/-! ## A156142.P855177419968597441

`A262869(∑[A000203(n!)]+n+1)`
-/

namespace A156142.P855177419968597441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)).toNat

end

end A156142.P855177419968597441

/-! ## A156142.P8996708165682374717

`A008611(A342086(n+1)+A178887(n))`
-/

namespace A156142.P8996708165682374717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A342086 (n + 1) + A178887 n).toNat

end

end A156142.P8996708165682374717

/-!
# A156143: P_n(1)*Q_n(1) (see A155100 and A104035), defining Q_{-1} = 0.

The programs for A156143, there is no canonical definition to state claims against.
-/

/-! ## A156143.P11236785369487630101

`A000831(n)*A001586(n)`
-/

namespace A156143.P11236785369487630101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000831 n * A001586 n

end

end A156143.P11236785369487630101

/-! ## A156143.P6342787936038886815

`A000111(n)*A079858(n)`
-/

namespace A156143.P6342787936038886815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n * A079858 n

end

end A156143.P6342787936038886815

/-! ## A156143.P13743265663444638792

`abs(A079858(n)*A346838(n))`
-/

namespace A156143.P13743265663444638792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A079858 n * A346838 n|

end

end A156143.P13743265663444638792

/-! ## A156143.P16323805435624025199

`(A057427(n)+1)*A218260(n)`
-/

namespace A156143.P16323805435624025199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A218260 n

end

end A156143.P16323805435624025199

/-!
# A156144: Number of partitions of n into parts having in decimal representation the same digital root as n has.

The programs for A156144, there is no canonical definition to state claims against.
-/

/-! ## A156144.P17190080046907388954

`A000045(A088696(n+1)^A079684(n))`
-/

namespace A156144.P17190080046907388954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((A088696 (n + 1) : ℚ) ^ (A079684 n : ℤ))).toNat

end

end A156144.P17190080046907388954

/-! ## A156144.P3053703338916000216

`A114749(A088696(n+1)^A079684(n))`
-/

namespace A156144.P3053703338916000216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114749 (SequenceMachineLib.roundAway ((A088696 (n + 1) : ℚ) ^ (A079684 n : ℤ))).toNat

end

end A156144.P3053703338916000216

/-! ## A156144.P1246748962002080485

`A304709(A088696(n+1)^A079684(n))`
-/

namespace A156144.P1246748962002080485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304709 (SequenceMachineLib.roundAway ((A088696 (n + 1) : ℚ) ^ (A079684 n : ℤ))).toNat

end

end A156144.P1246748962002080485

/-! ## A156144.P17750855032845667294

`A243987(A331856(A008621(n))^A032741(n))`
-/

namespace A156144.P17750855032845667294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243987 (SequenceMachineLib.roundAway ((A331856 (A008621 n).toNat : ℚ) ^ (A032741 n : ℤ))).toNat

end

end A156144.P17750855032845667294

/-! ## A156144.P1586910187597484462

`A115571(A115574(2*n+5)*A351006(n))`
-/

namespace A156144.P1586910187597484462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115571 (A115574 (2 * n + 5) * A351006 n).toNat

end

end A156144.P1586910187597484462

/-!
# A156145: Number of partitions of 9*n-8 into parts having in decimal representation digital root 1.

The programs for A156145, there is no canonical definition to state claims against.
-/

/-! ## A156145.P1024598593514704798

`record[A156144(n+1)]`
-/

namespace A156145.P1024598593514704798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156145.P1024598593514704798

/-! ## A156145.P14585166464119128790

`A116371(9*n+1)`
-/

namespace A156145.P14585166464119128790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116371 (9 * n + 1)

end

end A156145.P14585166464119128790

/-! ## A156145.P1458575973448857588

`A156144(9*n+1)`
-/

namespace A156145.P1458575973448857588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156144 (9 * n + 1)

end

end A156145.P1458575973448857588

/-! ## A156145.P17212228786683539097

`record[A116371(n+1)/dr(n+1)]`
-/

namespace A156145.P17212228786683539097
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116371 (n + 1) : ℚ) / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156145.P17212228786683539097

/-! ## A156145.P8000396687878324997

`or(char[2], A116371(A017173(n)))`
-/

namespace A156145.P8000396687878324997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A116371 (A017173 n).toNat)

end

end A156145.P8000396687878324997

/-!
# A156147: a(n+1) = round( c(n)/2 ), where c(n) is the concatenation of all preceding terms a(1)...a(n) and a(1)=1.

The programs for A156147, there is no canonical definition to state claims against.
-/

/-! ## A156147.P15776292007961825457

`A156146(∑[n]+1)`
-/

namespace A156147.P15776292007961825457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156146 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A156147.P15776292007961825457

/-! ## A156147.P10636683157085075417

`or(A156146(A000124(n)), A214263(n))`
-/

namespace A156147.P10636683157085075417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A156146 (A000124 n).toNat) (A214263 n)

end

end A156147.P10636683157085075417

/-! ## A156147.P2536630357531230119

`A156146(A000124(n))+and(2, A022144(n))`
-/

namespace A156147.P2536630357531230119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156146 (A000124 n).toNat + Int.land 2 (A022144 n)

end

end A156147.P2536630357531230119

/-! ## A156147.P16150303195827343031

`A000005(gcd(n, n+1))*A156146(A000124(n))`
-/

namespace A156147.P16150303195827343031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd n (n + 1)) * A156146 (A000124 n).toNat

end

end A156147.P16150303195827343031

/-! ## A156147.P13871333934617882470

`A014963(A315173(n))*A156146(A000124(n))`
-/

namespace A156147.P13871333934617882470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A315173 n).toNat * A156146 (A000124 n).toNat

end

end A156147.P13871333934617882470

/-!
# A156152: Primes p such that p = 2 (mod pi(p)), where pi(p) = A000720(p) is the prime counting function.

The programs for A156152, there is no canonical definition to state claims against.
-/

/-! ## A156152.P10915858459638128635

`A000040(A023144(n+1))`
-/

namespace A156152.P10915858459638128635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A023144 (n + 1)).toNat

end

end A156152.P10915858459638128635

/-! ## A156152.P11117527623316236642

`A008578(A023144(n+1)+1)`
-/

namespace A156152.P11117527623316236642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A023144 (n + 1) + 1).toNat

end

end A156152.P11117527623316236642

/-!
# A156153: Primes p such that p == 2 (mod pi(p)) and pi(p) is prime.

The programs for A156153, there is no canonical definition to state claims against.
-/

/-! ## A156153.P10777718715357675918

`A156152(record[or(2, n)])`
-/

namespace A156153.P10777718715357675918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156152 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A156153.P10777718715357675918

/-!
# A156154: Primes p such that prime(p)=2 (mod p), where prime(p)=A000040(p) is the p-th prime.

The programs for A156154, there is no canonical definition to state claims against.
-/

/-! ## A156154.P3573616706381825709

`A023144(record[or(2, n)])`
-/

namespace A156154.P3573616706381825709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023144 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A156154.P3573616706381825709

/-!
# A156156: a(n) = 6*a(n-1)-a(n-2) for n > 2; a(1) = 13, a(2) = 53.

The programs for A156156, the canonical program `A156156.P7302660216699322512` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156156 has offset 1).

The definition of A156156 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)` (program `A156156.P7302660216699322512`, by `A156156.P7302660216699322512.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156156.P7302660216699322512

`6*a(n-1)-a(n-2)` with `a(0)=13, a(1)=53`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A156156

/-- `6*a(n-1)-a(n-2)` -/
def P7302660216699322512.Spec : Prop :=
  ∀ n, P7302660216699322512.a n = A156156 (n + 1)

theorem P7302660216699322512.correct : P7302660216699322512.Spec := by
  intro n
  simp only [A156156, Nat.add_sub_cancel]

end A156156

/-! ## A156156.P5765307140383679937

`ogf((13-25x)/(1-6x+x^2))`
-/

namespace A156156.P5765307140383679937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [13, -25] [1, -6, 1] n

end

end A156156.P5765307140383679937

namespace A156156

/-- `ogf((13-25x)/(1-6x+x^2))` -/
def P5765307140383679937.Spec : Prop :=
  ∀ n, P5765307140383679937.a n = A156156 (n + 1)

end A156156

/-! ## A156156.P17569380323704833662

`A155923(3*n+1)`
-/

namespace A156156.P17569380323704833662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155923 (3 * n + 1)

end

end A156156.P17569380323704833662

namespace A156156

/-- `A155923(3*n+1)` -/
def P17569380323704833662.Spec : Prop :=
  ∀ n, P17569380323704833662.a n = A156156 (n + 1)

end A156156

/-! ## A156156.P3278327071651535678

`A156570(n+1)-4*A001541(n)`
-/

namespace A156156.P3278327071651535678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156570 (n + 1) - 4 * A001541 n

end

end A156156.P3278327071651535678

namespace A156156

/-- `A156570(n+1)-4*A001541(n)` -/
def P3278327071651535678.Spec : Prop :=
  ∀ n, P3278327071651535678.a n = A156156 (n + 1)

end A156156

/-! ## A156156.P8972946535427346166

`Δ[A221174(2*n)+A006452(2*n+1)]`
-/

namespace A156156.P8972946535427346166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221174 (2 * n) + A006452 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156156.P8972946535427346166

namespace A156156

/-- `Δ[A221174(2*n)+A006452(2*n+1)]` -/
def P8972946535427346166.Spec : Prop :=
  ∀ n, P8972946535427346166.a n = A156156 (n + 1)

end A156156

/-! ## A156156.P4452904788608077102

`Δ[A000129(2*(n+1))]-A221173(2*n)`
-/

namespace A156156.P4452904788608077102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A221173 (2 * n)

end

end A156156.P4452904788608077102

namespace A156156

/-- `Δ[A000129(2*(n+1))]-A221173(2*n)` -/
def P4452904788608077102.Spec : Prop :=
  ∀ n, P4452904788608077102.a n = A156156 (n + 1)

end A156156

/-! ## A156156.P4139725005841859015

`A221172(2*n+1)+2*A277369(2*n)`
-/

namespace A156156.P4139725005841859015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 (2 * n + 1) + 2 * A277369 (2 * n)

end

end A156156.P4139725005841859015

namespace A156156

/-- `A221172(2*n+1)+2*A277369(2*n)` -/
def P4139725005841859015.Spec : Prop :=
  ∀ n, P4139725005841859015.a n = A156156 (n + 1)

end A156156

/-! ## A156156.P10728979702488044897

`A163271(A005843(n+2))-A221173(2*n)`
-/

namespace A156156.P10728979702488044897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163271 (A005843 (n + 2)).toNat - A221173 (2 * n)

end

end A156156.P10728979702488044897

namespace A156156

/-- `A163271(A005843(n+2))-A221173(2*n)` -/
def P10728979702488044897.Spec : Prop :=
  ∀ n, P10728979702488044897.a n = A156156 (n + 1)

end A156156

/-! ## A156156.P4600286070979849780

`A156570(n+1)-A003499(n)-A003499(n)`
-/

namespace A156156.P4600286070979849780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156570 (n + 1) - A003499 n - A003499 n

end

end A156156.P4600286070979849780

namespace A156156

/-- `A156570(n+1)-A003499(n)-A003499(n)` -/
def P4600286070979849780.Spec : Prop :=
  ∀ n, P4600286070979849780.a n = A156156 (n + 1)

end A156156

/-! ## A156156.P14816683615028957967

`A221172(2*n+1)+A266507(n+1)-A221172(2*n)`
-/

namespace A156156.P14816683615028957967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 (2 * n + 1) + (A266507 (n + 1) - A221172 (2 * n))

end

end A156156.P14816683615028957967

namespace A156156

/-- `A221172(2*n+1)+A266507(n+1)-A221172(2*n)` -/
def P14816683615028957967.Spec : Prop :=
  ∀ n, P14816683615028957967.a n = A156156 (n + 1)

end A156156

/-! ## A156156.P12907644870820741467

`A048654(2*n+1)+A048697(2*n+1)-A048697(2*n)`
-/

namespace A156156.P12907644870820741467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 (2 * n + 1) + (A048697 (2 * n + 1) - A048697 (2 * n))

end

end A156156.P12907644870820741467

namespace A156156

/-- `A048654(2*n+1)+A048697(2*n+1)-A048697(2*n)` -/
def P12907644870820741467.Spec : Prop :=
  ∀ n, P12907644870820741467.a n = A156156 (n + 1)

end A156156

/-! ## A156156.P18397303670212925994

`A048654(2*n+1)+A221175(2*n+1)+A221172(2*n+1)`
-/

namespace A156156.P18397303670212925994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 (2 * n + 1) + (A221175 (2 * n + 1) + A221172 (2 * n + 1))

end

end A156156.P18397303670212925994

namespace A156156

/-- `A048654(2*n+1)+A221175(2*n+1)+A221172(2*n+1)` -/
def P18397303670212925994.Spec : Prop :=
  ∀ n, P18397303670212925994.a n = A156156 (n + 1)

end A156156

/-!
# A156157: a(n) = 6*a(n-1)-a(n-2) for n > 2; a(1) = 17, a(2) = 85.

The programs for A156157, the canonical program `A156157.P164992060268564159` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156157 has offset 1).

The definition of A156157 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)` (program `A156157.P164992060268564159`, by `A156157.P164992060268564159.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156157.P164992060268564159

`6*a(n-1)-a(n-2)` with `a(0)=17, a(1)=85`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A156157

/-- `6*a(n-1)-a(n-2)` -/
def P164992060268564159.Spec : Prop :=
  ∀ n, P164992060268564159.a n = A156157 (n + 1)

theorem P164992060268564159.correct : P164992060268564159.Spec := by
  intro n
  simp only [A156157, Nat.add_sub_cancel]

end A156157

/-! ## A156157.P2040746219152795287

`((2+sqrt(2))*(3-2*sqrt(2))^(n+1)+(2-sqrt(2))*(3+2*sqrt(2))^(n+1))*17/4`
-/

namespace A156157.P2040746219152795287
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (2 : ℝ)) * (3 - 2 * Real.sqrt (2 : ℝ)) ^ (n + 1) + (2 - Real.sqrt (2 : ℝ)) * (3 + 2 * Real.sqrt (2 : ℝ)) ^ (n + 1)) * 17 / 4

end

end A156157.P2040746219152795287

namespace A156157

/-- `((2+sqrt(2))*(3-2*sqrt(2))^(n+1)+(2-sqrt(2))*(3+2*sqrt(2))^(n+1))*17/4` -/
def P2040746219152795287.Spec : Prop :=
  ∀ n, P2040746219152795287.a n = (A156157 (n + 1) : ℝ)

theorem P2040746219152795287.correct : P2040746219152795287.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A156157, Nat.add_sub_cancel, A156157.P2040746219152795287.a, A156157.P164992060268564159.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A156157, Nat.add_sub_cancel, A156157.P2040746219152795287.a, A156157.P164992060268564159.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A156157

/-! ## A156157.P4152211831682205921

`ogf((17-17x)/(1-6x+x^2))`
-/

namespace A156157.P4152211831682205921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [17, -17] [1, -6, 1] n

end

end A156157.P4152211831682205921

namespace A156157

/-- `ogf((17-17x)/(1-6x+x^2))` -/
def P4152211831682205921.Spec : Prop :=
  ∀ n, P4152211831682205921.a n = A156157 (n + 1)

end A156157

/-! ## A156157.P3995561702244575622

`Δ[17*A001109(n)]`
-/

namespace A156157.P3995561702244575622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A001109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156157.P3995561702244575622

namespace A156157

/-- `Δ[17*A001109(n)]` -/
def P3995561702244575622.Spec : Prop :=
  ∀ n, P3995561702244575622.a n = A156157 (n + 1)

end A156157

/-! ## A156157.P12709556508865053838

`record[17*A077985(n)]`
-/

namespace A156157.P12709556508865053838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A077985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156157.P12709556508865053838

namespace A156157

/-- `record[17*A077985(n)]` -/
def P12709556508865053838.Spec : Prop :=
  ∀ n, P12709556508865053838.a n = A156157 (n + 1)

end A156157

/-! ## A156157.P16812804801489489033

`record[17*A215936(n)]`
-/

namespace A156157.P16812804801489489033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A215936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156157.P16812804801489489033

namespace A156157

/-- `record[17*A215936(n)]` -/
def P16812804801489489033.Spec : Prop :=
  ∀ n, P16812804801489489033.a n = A156157 (n + 1)

end A156157

/-! ## A156157.P13823327247328627244

`A155923(3*n+2)`
-/

namespace A156157.P13823327247328627244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155923 (3 * n + 2)

end

end A156157.P13823327247328627244

namespace A156157

/-- `A155923(3*n+2)` -/
def P13823327247328627244.Spec : Prop :=
  ∀ n, P13823327247328627244.a n = A156157 (n + 1)

end A156157

/-! ## A156157.P12245959816567403867

`17*A001653(n+1)`
-/

namespace A156157.P12245959816567403867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A001653 (n + 1)

end

end A156157.P12245959816567403867

namespace A156157

/-- `17*A001653(n+1)` -/
def P12245959816567403867.Spec : Prop :=
  ∀ n, P12245959816567403867.a n = A156157 (n + 1)

end A156157

/-! ## A156157.P2494357789433507239

`17*A000129(2*n+1)`
-/

namespace A156157.P2494357789433507239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A000129 (2 * n + 1)

end

end A156157.P2494357789433507239

namespace A156157

/-- `17*A000129(2*n+1)` -/
def P2494357789433507239.Spec : Prop :=
  ∀ n, P2494357789433507239.a n = A156157 (n + 1)

end A156157

/-! ## A156157.P6954253370162051016

`lcm(17, A000129(n+1+n))`
-/

namespace A156157.P6954253370162051016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 17 (A000129 (n + 1 + n))

end

end A156157.P6954253370162051016

namespace A156157

/-- `lcm(17, A000129(n+1+n))` -/
def P6954253370162051016.Spec : Prop :=
  ∀ n, (P6954253370162051016.a n : ℤ) = A156157 (n + 1)

end A156157

/-! ## A156157.P3336767849093482547

`A221172(2*n+1)+Δ[A048694(2*n)]`
-/

namespace A156157.P3336767849093482547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048694 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A156157.P3336767849093482547

namespace A156157

/-- `A221172(2*n+1)+Δ[A048694(2*n)]` -/
def P3336767849093482547.Spec : Prop :=
  ∀ n, P3336767849093482547.a n = A156157 (n + 1)

end A156157

/-! ## A156157.P3758458779169435339

`A221175(2*n+1)+A048655(2*(n+1))`
-/

namespace A156157.P3758458779169435339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221175 (2 * n + 1) + A048655 (2 * (n + 1))

end

end A156157.P3758458779169435339

namespace A156157

/-- `A221175(2*n+1)+A048655(2*(n+1))` -/
def P3758458779169435339.Spec : Prop :=
  ∀ n, P3758458779169435339.a n = A156157 (n + 1)

end A156157

/-! ## A156157.P11222616646151851408

`2*A048696(2*n+1)-A048654(2*n)`
-/

namespace A156157.P11222616646151851408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048696 (2 * n + 1) - A048654 (2 * n)

end

end A156157.P11222616646151851408

namespace A156157

/-- `2*A048696(2*n+1)-A048654(2*n)` -/
def P11222616646151851408.Spec : Prop :=
  ∀ n, P11222616646151851408.a n = A156157 (n + 1)

end A156157

/-! ## A156157.P11327455214237307925

`Δ[A221172(2*n)+∑[A221172(2*n+1)]]`
-/

namespace A156157.P11327455214237307925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 (2 * n) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156157.P11327455214237307925

namespace A156157

/-- `Δ[A221172(2*n)+∑[A221172(2*n+1)]]` -/
def P11327455214237307925.Spec : Prop :=
  ∀ n, P11327455214237307925.a n = A156157 (n + 1)

end A156157

/-! ## A156157.P16375655661249007667

`A221172(2*n+1)+2*A048694(2*n+1)`
-/

namespace A156157.P16375655661249007667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 (2 * n + 1) + 2 * A048694 (2 * n + 1)

end

end A156157.P16375655661249007667

namespace A156157

/-- `A221172(2*n+1)+2*A048694(2*n+1)` -/
def P16375655661249007667.Spec : Prop :=
  ∀ n, P16375655661249007667.a n = A156157 (n + 1)

end A156157

/-! ## A156157.P9524357589887949466

`Δ[A164541(n)+A164541(n)-A077413(n)]`
-/

namespace A156157.P9524357589887949466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164541 n + (A164541 n - A077413 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156157.P9524357589887949466

namespace A156157

/-- `Δ[A164541(n)+A164541(n)-A077413(n)]` -/
def P9524357589887949466.Spec : Prop :=
  ∀ n, P9524357589887949466.a n = A156157 (n + 1)

end A156157

/-! ## A156157.P6727519701042063026

`Δ[2*A164541(n)-A077413(n)]`
-/

namespace A156157.P6727519701042063026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164541 n - A077413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156157.P6727519701042063026

namespace A156157

/-- `Δ[2*A164541(n)-A077413(n)]` -/
def P6727519701042063026.Spec : Prop :=
  ∀ n, P6727519701042063026.a n = A156157 (n + 1)

end A156157

/-! ## A156157.P3845342566421968731

`Δ[A275796(n)]-2*A075848(n)`
-/

namespace A156157.P3845342566421968731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275796 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A075848 n

end

end A156157.P3845342566421968731

namespace A156157

/-- `Δ[A275796(n)]-2*A075848(n)` -/
def P3845342566421968731.Spec : Prop :=
  ∀ n, P3845342566421968731.a n = A156157 (n + 1)

end A156157

/-!
# A156158: a(n) = 6*a(n-1) - a(n-2) for n > 2; a(1) = 25, a(2) = 137.

The programs for A156158, the canonical program `A156158.P12621306167592216467` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156158 has offset 1).

The definition of A156158 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)` (program `A156158.P12621306167592216467`, by `A156158.P12621306167592216467.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156158.P12621306167592216467

`6*a(n-1)-a(n-2)` with `a(0)=25, a(1)=137`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A156158

/-- `6*a(n-1)-a(n-2)` -/
def P12621306167592216467.Spec : Prop :=
  ∀ n, P12621306167592216467.a n = A156158 (n + 1)

theorem P12621306167592216467.correct : P12621306167592216467.Spec := by
  intro n
  simp only [A156158, Nat.add_sub_cancel]

end A156158

/-! ## A156158.P7847193354047351067

`ogf((25-13x)/(1-6x+x^2))`
-/

namespace A156158.P7847193354047351067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [25, -13] [1, -6, 1] n

end

end A156158.P7847193354047351067

namespace A156158

/-- `ogf((25-13x)/(1-6x+x^2))` -/
def P7847193354047351067.Spec : Prop :=
  ∀ n, P7847193354047351067.a n = A156158 (n + 1)

end A156158

/-! ## A156158.P16579277035746478991

`A117472(Δ[n²])`
-/

namespace A156158.P16579277035746478991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117472 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A156158.P16579277035746478991

namespace A156158

/-- `A117472(Δ[n²])` -/
def P16579277035746478991.Spec : Prop :=
  ∀ n, P16579277035746478991.a n = A156158 (n + 1)

end A156158

/-! ## A156158.P14592371098563470955

`A155923(3*(n+1))`
-/

namespace A156158.P14592371098563470955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155923 (3 * (n + 1))

end

end A156158.P14592371098563470955

namespace A156158

/-- `A155923(3*(n+1))` -/
def P14592371098563470955.Spec : Prop :=
  ∀ n, P14592371098563470955.a n = A156158 (n + 1)

end A156158

/-! ## A156158.P5059292147196814559

`or(1, A117472(2*n+1))`
-/

namespace A156158.P5059292147196814559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A117472 (2 * n + 1))

end

end A156158.P5059292147196814559

namespace A156158

/-- `or(1, A117472(2*n+1))` -/
def P5059292147196814559.Spec : Prop :=
  ∀ n, P5059292147196814559.a n = A156158 (n + 1)

end A156158

/-! ## A156158.P2993582032472799382

`record[A117472(A000265(n+1))]`
-/

namespace A156158.P2993582032472799382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117472 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156158.P2993582032472799382

namespace A156158

/-- `record[A117472(A000265(n+1))]` -/
def P2993582032472799382.Spec : Prop :=
  ∀ n, P2993582032472799382.a n = A156158 (n + 1)

end A156158

/-! ## A156158.P6091572423797602403

`Δ[A164541(n)+A077413(n)]`
-/

namespace A156158.P6091572423797602403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164541 n + A077413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156158.P6091572423797602403

namespace A156158

/-- `Δ[A164541(n)+A077413(n)]` -/
def P6091572423797602403.Spec : Prop :=
  ∀ n, P6091572423797602403.a n = A156158 (n + 1)

end A156158

/-! ## A156158.P9814834173884544263

`Δ[A275796(n)+A081554(n)]`
-/

namespace A156158.P9814834173884544263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275796 n + A081554 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156158.P9814834173884544263

namespace A156158

/-- `Δ[A275796(n)+A081554(n)]` -/
def P9814834173884544263.Spec : Prop :=
  ∀ n, P9814834173884544263.a n = A156158 (n + 1)

end A156158

/-! ## A156158.P7460823108952129904

`A001542(n)+5*A101386(n)`
-/

namespace A156158.P7460823108952129904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 n + 5 * A101386 n

end

end A156158.P7460823108952129904

namespace A156158

/-- `A001542(n)+5*A101386(n)` -/
def P7460823108952129904.Spec : Prop :=
  ∀ n, P7460823108952129904.a n = A156158 (n + 1)

end A156158

/-! ## A156158.P1225731717679895074

`Δ[A276602(n+1)+A253811(n)]`
-/

namespace A156158.P1225731717679895074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276602 (n + 1) + A253811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156158.P1225731717679895074

namespace A156158

/-- `Δ[A276602(n+1)+A253811(n)]` -/
def P1225731717679895074.Spec : Prop :=
  ∀ n, P1225731717679895074.a n = A156158 (n + 1)

end A156158

/-! ## A156158.P7210815935750716222

`Δ[A221172(n+1)*A048694(n)]`
-/

namespace A156158.P7210815935750716222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 (n + 1) * A048694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156158.P7210815935750716222

namespace A156158

/-- `Δ[A221172(n+1)*A048694(n)]` -/
def P7210815935750716222.Spec : Prop :=
  ∀ n, P7210815935750716222.a n = A156158 (n + 1)

end A156158

/-! ## A156158.P2419777437337672906

`A001542(n)+Δ[A154149(2*n+1)]`
-/

namespace A156158.P2419777437337672906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154149 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 n + (f1 (n + 1) - f1 n)

end

end A156158.P2419777437337672906

namespace A156158

/-- `A001542(n)+Δ[A154149(2*n+1)]` -/
def P2419777437337672906.Spec : Prop :=
  ∀ n, P2419777437337672906.a n = A156158 (n + 1)

end A156158

/-! ## A156158.P1715485751803821738

`A276599(2*(n+2))-A276602(n+1)`
-/

namespace A156158.P1715485751803821738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276599 (2 * (n + 2)) - A276602 (n + 1)

end

end A156158.P1715485751803821738

namespace A156158

/-- `A276599(2*(n+2))-A276602(n+1)` -/
def P1715485751803821738.Spec : Prop :=
  ∀ n, P1715485751803821738.a n = A156158 (n + 1)

end A156158

/-! ## A156158.P18265830939456245944

`Δ[(A048694(n)-A221172(n))*A048694(n)]`
-/

namespace A156158.P18265830939456245944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048694 n - A221172 n) * A048694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156158.P18265830939456245944

namespace A156158

/-- `Δ[(A048694(n)-A221172(n))*A048694(n)]` -/
def P18265830939456245944.Spec : Prop :=
  ∀ n, P18265830939456245944.a n = A156158 (n + 1)

end A156158

/-! ## A156158.P6546479619845375894

`A038762(n)+A253811(n+1)+A038762(n)`
-/

namespace A156158.P6546479619845375894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038762 n + (A253811 (n + 1) + A038762 n)

end

end A156158.P6546479619845375894

namespace A156158

/-- `A038762(n)+A253811(n+1)+A038762(n)` -/
def P6546479619845375894.Spec : Prop :=
  ∀ n, P6546479619845375894.a n = A156158 (n + 1)

end A156158

/-! ## A156158.P4145772890759046071

`A001109(n+1)+A275794(n+1)+A275793(n)`
-/

namespace A156158.P4145772890759046071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 (n + 1) + (A275794 (n + 1) + A275793 n)

end

end A156158.P4145772890759046071

namespace A156158

/-- `A001109(n+1)+A275794(n+1)+A275793(n)` -/
def P4145772890759046071.Spec : Prop :=
  ∀ n, P4145772890759046071.a n = A156158 (n + 1)

end A156158

/-!
# A156159: Squares of the form k^2+(k+17)^2 with integer k.

The programs for A156159, the canonical program `A156159.P14802451819547333670` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156159 has offset 1).

The definition of A156159 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156159.P14802451819547333670

`A155923(n+1)²`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A156159

/-- `A155923(n+1)²` -/
def P14802451819547333670.Spec : Prop :=
  ∀ n, P14802451819547333670.a n = A156159 (n + 1)

theorem P14802451819547333670.correct : P14802451819547333670.Spec := by
  intro n
  simp only [A156159, Nat.add_sub_cancel]

end A156159

/-! ## A156159.P15446024449288469456

`A155923(n+1)^A000034(or(65, n))`
-/

namespace A156159.P15446024449288469456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155923 (n + 1) : ℚ) ^ (A000034 (Nat.lor 65 n) : ℤ)

end

end A156159.P15446024449288469456

namespace A156159

/-- `A155923(n+1)^A000034(or(65, n))` -/
def P15446024449288469456.Spec : Prop :=
  ∀ n, P15446024449288469456.a n = (A156159 (n + 1) : ℚ)

end A156159

/-! ## A156159.P16796362570417275742

`(A106527(n+2)-A106528(n+2))²`
-/

namespace A156159.P16796362570417275742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A106527 (n + 2) - A106528 (n + 2)) ^ 2

end

end A156159.P16796362570417275742

namespace A156159

/-- `(A106527(n+2)-A106528(n+2))²` -/
def P16796362570417275742.Spec : Prop :=
  ∀ n, P16796362570417275742.a n = A156159 (n + 1)

end A156159

/-! ## A156159.P15544947327652720483

`A155923(n+1)^A020639(A027709(n+1))`
-/

namespace A156159.P15544947327652720483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155923 (n + 1) : ℚ) ^ (A020639 (A027709 (n + 1)).toNat : ℤ)

end

end A156159.P15544947327652720483

namespace A156159

/-- `A155923(n+1)^A020639(A027709(n+1))` -/
def P15544947327652720483.Spec : Prop :=
  ∀ n, P15544947327652720483.a n = (A156159 (n + 1) : ℚ)

end A156159

/-! ## A156159.P6984081858849208766

`A155923(n+1)^A020639(A072568(n+1))`
-/

namespace A156159.P6984081858849208766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155923 (n + 1) : ℚ) ^ (A020639 (A072568 (n + 1)).toNat : ℤ)

end

end A156159.P6984081858849208766

namespace A156159

/-- `A155923(n+1)^A020639(A072568(n+1))` -/
def P6984081858849208766.Spec : Prop :=
  ∀ n, P6984081858849208766.a n = (A156159 (n + 1) : ℚ)

end A156159

/-! ## A156159.P987392482543447947

`A155923(n+1)^A000005(A155882(n+1))`
-/

namespace A156159.P987392482543447947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155923 (n + 1) : ℚ) ^ (A000005 (A155882 (n + 1)).toNat : ℤ)

end

end A156159.P987392482543447947

namespace A156159

/-- `A155923(n+1)^A000005(A155882(n+1))` -/
def P987392482543447947.Spec : Prop :=
  ∀ n, P987392482543447947.a n = (A156159 (n + 1) : ℚ)

end A156159

/-! ## A156159.P16230649241862728374

`A155923(n+1)^A000005(A155913(n+1))`
-/

namespace A156159.P16230649241862728374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155923 (n + 1) : ℚ) ^ (A000005 (A155913 (n + 1)).toNat : ℤ)

end

end A156159.P16230649241862728374

namespace A156159

/-- `A155923(n+1)^A000005(A155913(n+1))` -/
def P16230649241862728374.Spec : Prop :=
  ∀ n, P16230649241862728374.a n = (A156159 (n + 1) : ℚ)

end A156159

/-! ## A156159.P1567648077065821623

`A155923(n+1)^A020639(A017377(n)-1)`
-/

namespace A156159.P1567648077065821623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155923 (n + 1) : ℚ) ^ (A020639 (A017377 n - 1).toNat : ℤ)

end

end A156159.P1567648077065821623

namespace A156159

/-- `A155923(n+1)^A020639(A017377(n)-1)` -/
def P1567648077065821623.Spec : Prop :=
  ∀ n, P1567648077065821623.a n = (A156159 (n + 1) : ℚ)

end A156159

/-! ## A156159.P14244604133282034914

`A155923(n+1)^A020639(A005843(n+3))`
-/

namespace A156159.P14244604133282034914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155923 (n + 1) : ℚ) ^ (A020639 (A005843 (n + 3)).toNat : ℤ)

end

end A156159.P14244604133282034914

namespace A156159

/-- `A155923(n+1)^A020639(A005843(n+3))` -/
def P14244604133282034914.Spec : Prop :=
  ∀ n, P14244604133282034914.a n = (A156159 (n + 1) : ℚ)

end A156159

/-!
# A156160: a(n) = 34*a(n-1)-a(n-2)-2312 for n > 2; a(1)=169, a(2)=2809.

The programs for A156160, there is no canonical definition to state claims against.
-/

/-! ## A156160.P10371199104719810210

`A156156(n+1)²`
-/

namespace A156160.P10371199104719810210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156156 (n + 1) ^ 2

end

end A156160.P10371199104719810210

/-! ## A156160.P7112018014394914330

`A156159(3*n+1)`
-/

namespace A156160.P7112018014394914330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156159 (3 * n + 1)

end

end A156160.P7112018014394914330

/-! ## A156160.P8655313260632762375

`A155923(2*n+1+n)²`
-/

namespace A156160.P8655313260632762375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155923 (2 * n + 1 + n) ^ 2

end

end A156160.P8655313260632762375

/-! ## A156160.P16808418559449986260

`A156156(A000027(n+1))^2`
-/

namespace A156160.P16808418559449986260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156156 (A000027 (n + 1)).toNat ^ 2

end

end A156160.P16808418559449986260

/-! ## A156160.P15392864641540513562

`Δ[A221174(2*n)+A006452(2*n+1)]²`
-/

namespace A156160.P15392864641540513562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221174 (2 * n) + A006452 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A156160.P15392864641540513562

/-! ## A156160.P13351451479907327092

`A156156(A000027(n+1))*A156156(n+1)`
-/

namespace A156160.P13351451479907327092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156156 (A000027 (n + 1)).toNat * A156156 (n + 1)

end

end A156160.P13351451479907327092

/-! ## A156160.P9535823301651802935

`A156156(n+1)^A000005(A000040(n+1))`
-/

namespace A156160.P9535823301651802935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156156 (n + 1) : ℚ) ^ (A000005 (A000040 (n + 1)).toNat : ℤ)

end

end A156160.P9535823301651802935

/-! ## A156160.P6420660468248296165

`A156156(n+1)^A000005(A002476(n+1))`
-/

namespace A156160.P6420660468248296165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156156 (n + 1) : ℚ) ^ (A000005 (A002476 (n + 1)).toNat : ℤ)

end

end A156160.P6420660468248296165

/-! ## A156160.P12473377448027976200

`A156156(n+1)^A000005(A108546(n+1))`
-/

namespace A156160.P12473377448027976200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156156 (n + 1) : ℚ) ^ (A000005 (A108546 (n + 1)).toNat : ℤ)

end

end A156160.P12473377448027976200

/-!
# A156161: a(n) = 34*a(n-1)-a(n-2)-2312 for n > 2; a(1)=289, a(2)=7225.

The programs for A156161, there is no canonical definition to state claims against.
-/

/-! ## A156161.P13676131495006464534

`A156157(n+1)²`
-/

namespace A156161.P13676131495006464534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156157 (n + 1) ^ 2

end

end A156161.P13676131495006464534

/-! ## A156161.P1808452385700842927

`A156159(3*n+2)`
-/

namespace A156161.P1808452385700842927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156159 (3 * n + 2)

end

end A156161.P1808452385700842927

/-! ## A156161.P7072487022044535102

`Δ[17*A001109(n)]²`
-/

namespace A156161.P7072487022044535102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A001109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A156161.P7072487022044535102

/-! ## A156161.P15665546590547305432

`A155923(3*n+2)²`
-/

namespace A156161.P15665546590547305432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155923 (3 * n + 2) ^ 2

end

end A156161.P15665546590547305432

/-! ## A156161.P5292709260250300663

`(17*A001653(n+1))²`
-/

namespace A156161.P5292709260250300663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (17 * A001653 (n + 1)) ^ 2

end

end A156161.P5292709260250300663

/-! ## A156161.P17638026036804535495

`(17*A000129(2*n+1))²`
-/

namespace A156161.P17638026036804535495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (17 * A000129 (2 * n + 1)) ^ 2

end

end A156161.P17638026036804535495

/-! ## A156161.P8808990790948427368

`(17*A001653(n+1))^A020639(2*(n+1))`
-/

namespace A156161.P8808990790948427368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (17 * A001653 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A156161.P8808990790948427368

/-! ## A156161.P2836717784630595153

`A156157(n+1)^A020639(A017617(n))`
-/

namespace A156161.P2836717784630595153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156157 (n + 1) : ℚ) ^ (A020639 (A017617 n).toNat : ℤ)

end

end A156161.P2836717784630595153

/-! ## A156161.P15481877249158691200

`A156157(n+1)^A000005(A341634(n))`
-/

namespace A156161.P15481877249158691200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156157 (n + 1) : ℚ) ^ (A000005 (A341634 n).toNat : ℤ)

end

end A156161.P15481877249158691200

/-! ## A156161.P6249991497657288757

`A156157(n+1)^A001222(A001358(n+1))`
-/

namespace A156161.P6249991497657288757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156157 (n + 1) : ℚ) ^ (A001222 (A001358 (n + 1)).toNat : ℤ)

end

end A156161.P6249991497657288757

/-!
# A156162: a(n) = 34*a(n-1)-a(n-2)-2312 for n > 2; a(1)=625, a(2)=18769.

The programs for A156162, there is no canonical definition to state claims against.
-/

/-! ## A156162.P17259630852176597525

`A156158(n+1)²`
-/

namespace A156162.P17259630852176597525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156158 (n + 1) ^ 2

end

end A156162.P17259630852176597525

/-! ## A156162.P10284661498493598974

`A117472(Δ[n²])²`
-/

namespace A156162.P10284661498493598974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117472 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A156162.P10284661498493598974

/-! ## A156162.P2556773525336146268

`A156159(3*(n+1))`
-/

namespace A156162.P2556773525336146268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156159 (3 * (n + 1))

end

end A156162.P2556773525336146268

/-! ## A156162.P2496146794400012589

`A155923(3*(n+1))²`
-/

namespace A156162.P2496146794400012589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155923 (3 * (n + 1)) ^ 2

end

end A156162.P2496146794400012589

/-! ## A156162.P11670845584475700986

`record[A117472(A000265(n+1))²]`
-/

namespace A156162.P11670845584475700986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117472 (A000265 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156162.P11670845584475700986

/-! ## A156162.P254850308839852803

`Δ[A164541(n)+A077413(n)]²`
-/

namespace A156162.P254850308839852803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164541 n + A077413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A156162.P254850308839852803

/-! ## A156162.P11830057155856585329

`Δ[A275796(n)+A081554(n)]²`
-/

namespace A156162.P11830057155856585329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275796 n + A081554 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A156162.P11830057155856585329

/-! ## A156162.P2128078712916696113

`Δ[A276602(n+1)+A253811(n)]²`
-/

namespace A156162.P2128078712916696113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276602 (n + 1) + A253811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A156162.P2128078712916696113

/-! ## A156162.P9774234233368750988

`A117472(2*n+1)*A117472(2*n+1)`
-/

namespace A156162.P9774234233368750988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117472 (2 * n + 1) * A117472 (2 * n + 1)

end

end A156162.P9774234233368750988

/-!
# A156166: Numbers k > 0 such that (10^(k+2) + 666)*10^k + 1 is prime.

The programs for A156166, there is no canonical definition to state claims against.
-/

/-! ## A156166.P3172030885733683228

`A232448(n+1)+1`
-/

namespace A156166.P3172030885733683228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232448 (n + 1) + 1

end

end A156166.P3172030885733683228

/-! ## A156166.P7854383082263168700

`abs(A232448(A291769(n))-A321800(n))`
-/

namespace A156166.P7854383082263168700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A232448 (A291769 n).toNat - A321800 n|

end

end A156166.P7854383082263168700

/-! ## A156166.P13437024490161721612

`record[A232448(A134478(n))-A321800(n)]`
-/

namespace A156166.P13437024490161721612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232448 (A134478 n).toNat - A321800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156166.P13437024490161721612

/-! ## A156166.P1869185793854204697

`record[A232448(A193739(n))-A321800(n)]`
-/

namespace A156166.P1869185793854204697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232448 (A193739 n).toNat - A321800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156166.P1869185793854204697

/-! ## A156166.P2441183932895540048

`record[A232448(A324346(n))-A321800(n)]`
-/

namespace A156166.P2441183932895540048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232448 (A324346 n).toNat - A321800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156166.P2441183932895540048

/-!
# A156168: 

The programs for A156168, there is no canonical definition to state claims against.
-/

/-! ## A156168.P13359117277480019593

`A002437(2*n)`
-/

namespace A156168.P13359117277480019593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002437 (2 * n)

end

end A156168.P13359117277480019593

/-! ## A156168.P15335962952507841785

`A156172(2*n)/2`
-/

namespace A156168.P15335962952507841785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156172 (2 * n) : ℚ) / 2

end

end A156168.P15335962952507841785

/-! ## A156168.P10074170136156533577

`record[A002437(n)/(-1)^n]`
-/

namespace A156168.P10074170136156533577
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002437 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156168.P10074170136156533577

/-!
# A156169: 

The programs for A156169, there is no canonical definition to state claims against.
-/

/-! ## A156169.P890743167150071888

`A002437(Δ[n²])`
-/

namespace A156169.P890743167150071888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002437 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A156169.P890743167150071888

/-! ## A156169.P12754816151242945719

`A156172(2*n+1)/2`
-/

namespace A156169.P12754816151242945719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156172 (2 * n + 1) : ℚ) / 2

end

end A156169.P12754816151242945719

/-! ## A156169.P1944908345926399335

`record[A002437((n+1)/2^val(n+1, 2))]`
-/

namespace A156169.P1944908345926399335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002437 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156169.P1944908345926399335

/-! ## A156169.P15930980143980040115

`record[A002437(Δ[A001318(n)])]`
-/

namespace A156169.P15930980143980040115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002437 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156169.P15930980143980040115

/-! ## A156169.P14404556745622122952

`A002437(2*n+1)-A000122(A006530(n+6))`
-/

namespace A156169.P14404556745622122952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002437 (2 * n + 1) - A000122 (A006530 (n + 6)).toNat

end

end A156169.P14404556745622122952

/-!
# A156170: G.f.: exp( Sum_{n>=1} [Sum_{k>=1} k^n*x^k]^n/n ), a power series in x with integer coefficients.

The programs for A156170, there is no canonical definition to state claims against.
-/

/-! ## A156170.P13128233445994071525

`A277890(A000670(n))+A141199(n)`
-/

namespace A156170.P13128233445994071525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277890 (A000670 n).toNat + A141199 n

end

end A156170.P13128233445994071525

/-! ## A156170.P12051757412421546373

`A317805((n+1)^n+n+3)`
-/

namespace A156170.P12051757412421546373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317805 ((n + 1) ^ n + (n + 3))

end

end A156170.P12051757412421546373

/-!
# A156171: G.f.: A(x) = exp( Sum_{n>=1} x^n/(1 - 2^n*x)^n / n ), a power series in x with integer coefficients.

The programs for A156171, there is no canonical definition to state claims against.
-/

/-! ## A156171.P11428516093901338327

`A332340(xor(n%2, ∑[n]))`
-/

namespace A156171.P11428516093901338327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332340 (Nat.xor (n % 2) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A156171.P11428516093901338327

/-! ## A156171.P16718892741979592277

`∑[A102824(a(n-1)+n)]` with `a(0)=1, a(1)=0`
-/

namespace A156171.P16718892741979592277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A102824 (f1 (n - 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156171.P16718892741979592277

/-!
# A156172: Twice A002437.

The programs for A156172, there is no canonical definition to state claims against.
-/

/-! ## A156172.P15539960206593275064

`2*A002437(n)`
-/

namespace A156172.P15539960206593275064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002437 n

end

end A156172.P15539960206593275064

/-! ## A156172.P17440396673704818742

`3*A002438(n+1)-A000364(n)`
-/

namespace A156172.P17440396673704818742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002438 (n + 1) - A000364 n

end

end A156172.P17440396673704818742

/-! ## A156172.P14594857173673296051

`(A046717(2*n+1)+1)*A000111(2*n)`
-/

namespace A156172.P14594857173673296051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046717 (2 * n + 1) + 1) * A000111 (2 * n)

end

end A156172.P14594857173673296051

/-! ## A156172.P7113068050800683933

`(A046717(2*n+1)+1)*A346838(2*n)`
-/

namespace A156172.P7113068050800683933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046717 (2 * n + 1) + 1) * A346838 (2 * n)

end

end A156172.P7113068050800683933

/-! ## A156172.P13040789934793966384

`2*A015518(2*n+1)*A000111(2*n)`
-/

namespace A156172.P13040789934793966384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A015518 (2 * n + 1) * A000111 (2 * n)

end

end A156172.P13040789934793966384

/-!
# A156173: A q-factorial type triangle sequence: t(n,m)=Product[Sum[(m + 1)^i, {i, 0, k - 1}], {k, 1, n}].

The programs for A156173, there is no canonical definition to state claims against.
-/

/-! ## A156173.P5100253514041508623

`record[A324985(A105950(n))]`
-/

namespace A156173.P5100253514041508623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324985 (A105950 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156173.P5100253514041508623

/-! ## A156173.P6944250498207445051

`A115756(A014916(n+1)-A270890(2*n+1))`
-/

namespace A156173.P6944250498207445051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115756 (A014916 (n + 1) - A270890 (2 * n + 1)).toNat

end

end A156173.P6944250498207445051

/-!
# A156174: Period 5: repeat [1,-1,1,-1,0].

The programs for A156174, the canonical program `A156174.P14265002136869172753` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156174 has offset 0).

The definition of A156174 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156174.P14265002136869172753

`(-1)^n*A099443(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A156174

/-- `(-1)^n*A099443(n)` -/
def P14265002136869172753.Spec : Prop :=
  ∀ n, P14265002136869172753.a n = A156174 n

theorem P14265002136869172753.correct : P14265002136869172753.Spec := by
  intro n
  simp only [A156174]

end A156174

/-!
# A156175: 

The programs for A156175, there is no canonical definition to state claims against.
-/

/-! ## A156175.P7408581784842222777

`A002439(2*n)`
-/

namespace A156175.P7408581784842222777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002439 (2 * n)

end

end A156175.P7408581784842222777

/-! ## A156175.P12851622289424175534

`A000191(2*n)/2`
-/

namespace A156175.P12851622289424175534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000191 (2 * n) : ℚ) / 2

end

end A156175.P12851622289424175534

/-! ## A156175.P10852858176510420846

`record[-A156187(2*n+1)]`
-/

namespace A156175.P10852858176510420846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A156187 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156175.P10852858176510420846

/-! ## A156175.P14903268716223262012

`record[A002439(n)/(-1)^n]`
-/

namespace A156175.P14903268716223262012
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002439 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156175.P14903268716223262012

/-! ## A156175.P4266116305032957302

`record[(n+1)%2*A202696((n+1)*(2*n+3))]`
-/

namespace A156175.P4266116305032957302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 2 : ℕ) : ℤ) * A202696 ((n + 1) * (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156175.P4266116305032957302

/-!
# A156176: 

The programs for A156176, there is no canonical definition to state claims against.
-/

/-! ## A156176.P16152372828910164092

`A002439(Δ[n²])`
-/

namespace A156176.P16152372828910164092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002439 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A156176.P16152372828910164092

/-! ## A156176.P15945920581367388202

`A156187(4*n+3)`
-/

namespace A156176.P15945920581367388202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156187 (4 * n + 3)

end

end A156176.P15945920581367388202

/-! ## A156176.P642580738147077086

`record[A002439(n^(n%2))]`
-/

namespace A156176.P642580738147077086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002439 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156176.P642580738147077086

/-! ## A156176.P3221429661491551798

`A000191(2*n+1)/2`
-/

namespace A156176.P3221429661491551798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000191 (2 * n + 1) : ℚ) / 2

end

end A156176.P3221429661491551798

/-! ## A156176.P11793476648935373802

`record[A002439(lcm(2, n+2)/2)]`
-/

namespace A156176.P11793476648935373802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002439 (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 2) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156176.P11793476648935373802

/-!
# A156177: 

The programs for A156177, there is no canonical definition to state claims against.
-/

/-! ## A156177.P17248884176930903127

`A000436(2*n)`
-/

namespace A156177.P17248884176930903127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000436 (2 * n)

end

end A156177.P17248884176930903127

/-! ## A156177.P8107865657809772733

`A000810(4*n)`
-/

namespace A156177.P8107865657809772733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000810 (4 * n)

end

end A156177.P8107865657809772733

/-! ## A156177.P2648538290204801401

`A007289(4*n)`
-/

namespace A156177.P2648538290204801401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007289 (4 * n)

end

end A156177.P2648538290204801401

/-! ## A156177.P13141713555930299704

`record[A000436(ceil(sqrt(n))²-n)]`
-/

namespace A156177.P13141713555930299704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000436 (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156177.P13141713555930299704

/-!
# A156178: 

The programs for A156178, there is no canonical definition to state claims against.
-/

/-! ## A156178.P17305274022016216299

`A000436(Δ[n²])`
-/

namespace A156178.P17305274022016216299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000436 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A156178.P17305274022016216299

/-! ## A156178.P10084272372171948212

`A000810(4*n+2)`
-/

namespace A156178.P10084272372171948212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000810 (4 * n + 2)

end

end A156178.P10084272372171948212

/-! ## A156178.P15541120298740440076

`A007289(Δ[2*n²])`
-/

namespace A156178.P15541120298740440076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007289 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A156178.P15541120298740440076

/-! ## A156178.P8339864904999301517

`A000436(2*n+1)+char[31]`
-/

namespace A156178.P8339864904999301517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000436 (2 * n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A156178.P8339864904999301517

/-! ## A156178.P10450448544692113176

`record[A000436(ceil(sqrt(n))²-n+1)]`
-/

namespace A156178.P10450448544692113176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000436 (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156178.P10450448544692113176

/-!
# A156180: Denominator of Euler(n,1/3).

The programs for A156180, the canonical program `A156180.P18108637510188202284` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156180 has offset 0).

The definition of A156180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156180.P18446286330659047505

`2^val(n+1, 2)*3^n`
-/

namespace A156180.P18446286330659047505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2 * 3 ^ n

end

end A156180.P18446286330659047505

namespace A156180

/-- `2^val(n+1, 2)*3^n` -/
def P18446286330659047505.Spec : Prop :=
  ∀ n, (P18446286330659047505.a n : ℤ) = A156180 n

end A156180

/-! ## A156180.P12493712226629802276

`lcm(2^val(n+1, 2), 3^n)`
-/

namespace A156180.P12493712226629802276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 ^ SequenceMachineLib.valuation (n + 1) 2) (3 ^ n)

end

end A156180.P12493712226629802276

namespace A156180

/-- `lcm(2^val(n+1, 2), 3^n)` -/
def P12493712226629802276.Spec : Prop :=
  ∀ n, (P12493712226629802276.a n : ℤ) = A156180 n

end A156180

/-! ## A156180.P18108637510188202284

`3^n*(or(n, n+1)-n)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A156180

/-- `3^n*(or(n, n+1)-n)` -/
def P18108637510188202284.Spec : Prop :=
  ∀ n, P18108637510188202284.a n = A156180 n

theorem P18108637510188202284.correct : P18108637510188202284.Spec := by
  intro n
  simp only [A156180]

end A156180

/-! ## A156180.P13144790775247411631

`3^n*and(n+1, -(n+1))`
-/

namespace A156180.P13144790775247411631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

end

end A156180.P13144790775247411631

namespace A156180

/-- `3^n*and(n+1, -(n+1))` -/
def P13144790775247411631.Spec : Prop :=
  ∀ n, P13144790775247411631.a n = A156180 n

end A156180

/-! ## A156180.P4747087931732391968

`abs(3^n*Δ[xor(n, floor(n/2))])`
-/

namespace A156180.P4747087931732391968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n : ℤ) * (f1 (n + 1) - f1 n)|

end

end A156180.P4747087931732391968

namespace A156180

/-- `abs(3^n*Δ[xor(n, floor(n/2))])` -/
def P4747087931732391968.Spec : Prop :=
  ∀ n, P4747087931732391968.a n = A156180 n

end A156180

/-! ## A156180.P10404919934426629187

`2/ratio[2*a(and(n, n-1))]*3^n` with `a(0)=30`
-/

namespace A156180.P10404919934426629187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [30] fun n f1 =>
  2 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ)) * (3 ^ n : ℚ)

end

end A156180.P10404919934426629187

namespace A156180

/-- `2/ratio[2*a(and(n, n-1))]*3^n` -/
def P10404919934426629187.Spec : Prop :=
  ∀ n, P10404919934426629187.a n = (A156180 n : ℚ)

end A156180

/-! ## A156180.P10317421159029475010

`3^n*A006519(n+1)`
-/

namespace A156180.P10317421159029475010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A006519 (n + 1)

end

end A156180.P10317421159029475010

namespace A156180

/-- `3^n*A006519(n+1)` -/
def P10317421159029475010.Spec : Prop :=
  ∀ n, P10317421159029475010.a n = A156180 n

end A156180

/-! ## A156180.P6413682213299552257

`(A135481(n)+1)*3^n`
-/

namespace A156180.P6413682213299552257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135481 n + 1) * (3 ^ n : ℤ)

end

end A156180.P6413682213299552257

namespace A156180

/-- `(A135481(n)+1)*3^n` -/
def P6413682213299552257.Spec : Prop :=
  ∀ n, P6413682213299552257.a n = A156180 n

end A156180

/-! ## A156180.P5534536351056644664

`2^A007814(n+1)*3^n`
-/

namespace A156180.P5534536351056644664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007814 (n + 1) : ℤ) * (3 ^ n : ℚ)

end

end A156180.P5534536351056644664

namespace A156180

/-- `2^A007814(n+1)*3^n` -/
def P5534536351056644664.Spec : Prop :=
  ∀ n, P5534536351056644664.a n = (A156180 n : ℚ)

end A156180

/-! ## A156180.P1963804517582708873

`gcd(n+1, 2^n)*A000244(n)`
-/

namespace A156180.P1963804517582708873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 1) (2 ^ n) : ℤ) * A000244 n

end

end A156180.P1963804517582708873

namespace A156180

/-- `gcd(n+1, 2^n)*A000244(n)` -/
def P1963804517582708873.Spec : Prop :=
  ∀ n, P1963804517582708873.a n = A156180 n

end A156180

/-! ## A156180.P1452010301892905168

`and(n+1, -(n+1))*Δ[A003462(n)]`
-/

namespace A156180.P1452010301892905168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) * (f1 (n + 1) - f1 n)

end

end A156180.P1452010301892905168

namespace A156180

/-- `and(n+1, -(n+1))*Δ[A003462(n)]` -/
def P1452010301892905168.Spec : Prop :=
  ∀ n, P1452010301892905168.a n = A156180 n

end A156180

/-! ## A156180.P12451069010423555105

`A118827(n+1)*A352779(n)`
-/

namespace A156180.P12451069010423555105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118827 (n + 1) * A352779 n

end

end A156180.P12451069010423555105

namespace A156180

/-- `A118827(n+1)*A352779(n)` -/
def P12451069010423555105.Spec : Prop :=
  ∀ n, P12451069010423555105.a n = A156180 n

end A156180

/-! ## A156180.P10758154055768227359

`lcm(A000244(n), A006519(n+1))`
-/

namespace A156180.P10758154055768227359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000244 n) (A006519 (n + 1))

end

end A156180.P10758154055768227359

namespace A156180

/-- `lcm(A000244(n), A006519(n+1))` -/
def P10758154055768227359.Spec : Prop :=
  ∀ n, (P10758154055768227359.a n : ℤ) = A156180 n

end A156180

/-! ## A156180.P7584889643859196600

`lcm(A055975(n+1), A352779(n))`
-/

namespace A156180.P7584889643859196600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A055975 (n + 1)) (A352779 n)

end

end A156180.P7584889643859196600

namespace A156180

/-- `lcm(A055975(n+1), A352779(n))` -/
def P7584889643859196600.Spec : Prop :=
  ∀ n, (P7584889643859196600.a n : ℤ) = A156180 n

end A156180

/-! ## A156180.P16743770988111944519

`A006519(n+1)*A017913(2*n)`
-/

namespace A156180.P16743770988111944519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A017913 (2 * n)

end

end A156180.P16743770988111944519

namespace A156180

/-- `A006519(n+1)*A017913(2*n)` -/
def P16743770988111944519.Spec : Prop :=
  ∀ n, P16743770988111944519.a n = A156180 n

end A156180

/-! ## A156180.P10657395353024222634

`A006519(n+1)*A038754(2*n)`
-/

namespace A156180.P10657395353024222634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A038754 (2 * n)

end

end A156180.P10657395353024222634

namespace A156180

/-- `A006519(n+1)*A038754(2*n)` -/
def P10657395353024222634.Spec : Prop :=
  ∀ n, P10657395353024222634.a n = A156180 n

end A156180

/-! ## A156180.P3808223645044597316

`A000244(n)*A135517(3*n+2)`
-/

namespace A156180.P3808223645044597316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A135517 (3 * n + 2)

end

end A156180.P3808223645044597316

namespace A156180

/-- `A000244(n)*A135517(3*n+2)` -/
def P3808223645044597316.Spec : Prop :=
  ∀ n, P3808223645044597316.a n = A156180 n

end A156180

/-! ## A156180.P5195968205850495752

`A000079(A007814(n+1))*A000244(n)`
-/

namespace A156180.P5195968205850495752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A007814 (n + 1)).toNat * A000244 n

end

end A156180.P5195968205850495752

namespace A156180

/-- `A000079(A007814(n+1))*A000244(n)` -/
def P5195968205850495752.Spec : Prop :=
  ∀ n, P5195968205850495752.a n = A156180 n

end A156180

/-! ## A156180.P9225220928314472149

`A000244(n)*A065331(A038502(n+1))`
-/

namespace A156180.P9225220928314472149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A065331 (A038502 (n + 1)).toNat

end

end A156180.P9225220928314472149

namespace A156180

/-- `A000244(n)*A065331(A038502(n+1))` -/
def P9225220928314472149.Spec : Prop :=
  ∀ n, P9225220928314472149.a n = A156180 n

end A156180

/-! ## A156180.P9713838663423866204

`A025192(n+1)/A001316(n+1)*A001316(n)`
-/

namespace A156180.P9713838663423866204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025192 (n + 1) : ℚ) / (A001316 (n + 1) : ℚ) * (A001316 n : ℚ)

end

end A156180.P9713838663423866204

namespace A156180

/-- `A025192(n+1)/A001316(n+1)*A001316(n)` -/
def P9713838663423866204.Spec : Prop :=
  ∀ n, P9713838663423866204.a n = (A156180 n : ℚ)

end A156180

/-!
# A156181: Number of solutions to e(1)*1 + e(2)*2 + ... + e(n)*n = e(-1)*1 + e(-2)*2 + ... + e(-n)*n, where e(j) are from {-1,0,1}, j=-n,...,n.

The programs for A156181, there is no canonical definition to state claims against.
-/

/-! ## A156181.P17358500599913411033

`A223743(Δ[n²])/3`
-/

namespace A156181.P17358500599913411033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223743 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A156181.P17358500599913411033

/-! ## A156181.P8882975695121261241

`floor(A223743(2*n+1)/3)`
-/

namespace A156181.P8882975695121261241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A223743 (2 * n + 1) : ℚ) / 3⌋

end

end A156181.P8882975695121261241

/-! ## A156181.P9555436728732430378

`record[A223743(n+1)/A049479(n+2)]`
-/

namespace A156181.P9555436728732430378
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223743 (n + 1) : ℚ) / (A049479 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156181.P9555436728732430378

/-! ## A156181.P15567182439114830364

`A245134(A000096(2*n+1))/3`
-/

namespace A156181.P15567182439114830364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245134 (A000096 (2 * n + 1)).toNat : ℚ) / 3

end

end A156181.P15567182439114830364

/-! ## A156181.P12239622559055765981

`floor(A245134(A000096(Δ[n²-n]+1))/3)`
-/

namespace A156181.P12239622559055765981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A245134 (A000096 (f1 (n + 1) - f1 n + 1).toNat).toNat : ℚ) / 3⌋

end

end A156181.P12239622559055765981

/-!
# A156183: Denominator of Euler(n, 1/5).

The programs for A156183, the canonical program `A156183.P1263954839755317994` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156183 has offset 0).

The definition of A156183 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156183.P4522970085608686905

`2^val(n+1, 2)*5^n`
-/

namespace A156183.P4522970085608686905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2 * 5 ^ n

end

end A156183.P4522970085608686905

namespace A156183

/-- `2^val(n+1, 2)*5^n` -/
def P4522970085608686905.Spec : Prop :=
  ∀ n, (P4522970085608686905.a n : ℤ) = A156183 n

end A156183

/-! ## A156183.P7195879590786017161

`lcm(2^val(n+1, 2), 5^n)`
-/

namespace A156183.P7195879590786017161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 ^ SequenceMachineLib.valuation (n + 1) 2) (5 ^ n)

end

end A156183.P7195879590786017161

namespace A156183

/-- `lcm(2^val(n+1, 2), 5^n)` -/
def P7195879590786017161.Spec : Prop :=
  ∀ n, (P7195879590786017161.a n : ℤ) = A156183 n

end A156183

/-! ## A156183.P1263954839755317994

`(or(n, n+1)-n)*5^n`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A156183

/-- `(or(n, n+1)-n)*5^n` -/
def P1263954839755317994.Spec : Prop :=
  ∀ n, P1263954839755317994.a n = A156183 n

theorem P1263954839755317994.correct : P1263954839755317994.Spec := by
  intro n
  simp only [A156183]

end A156183

/-! ## A156183.P17238325812635804272

`5^n*and(n+1, -(n+1))`
-/

namespace A156183.P17238325812635804272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

end

end A156183.P17238325812635804272

namespace A156183

/-- `5^n*and(n+1, -(n+1))` -/
def P17238325812635804272.Spec : Prop :=
  ∀ n, P17238325812635804272.a n = A156183 n

end A156183

/-! ## A156183.P8701004478924035523

`abs(5^n*Δ[xor(n, floor(n/2))])`
-/

namespace A156183.P8701004478924035523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 ^ n : ℤ) * (f1 (n + 1) - f1 n)|

end

end A156183.P8701004478924035523

namespace A156183

/-- `abs(5^n*Δ[xor(n, floor(n/2))])` -/
def P8701004478924035523.Spec : Prop :=
  ∀ n, P8701004478924035523.a n = A156183 n

end A156183

/-! ## A156183.P10361360641076917374

`5^n*gcd(13*(n+1), 2^n)`
-/

namespace A156183.P10361360641076917374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n * Nat.gcd (13 * (n + 1)) (2 ^ n)

end

end A156183.P10361360641076917374

namespace A156183

/-- `5^n*gcd(13*(n+1), 2^n)` -/
def P10361360641076917374.Spec : Prop :=
  ∀ n, (P10361360641076917374.a n : ℤ) = A156183 n

end A156183

/-! ## A156183.P1612137702990761600

`5^n*A006519(n+1)`
-/

namespace A156183.P1612137702990761600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A006519 (n + 1)

end

end A156183.P1612137702990761600

namespace A156183

/-- `5^n*A006519(n+1)` -/
def P1612137702990761600.Spec : Prop :=
  ∀ n, P1612137702990761600.a n = A156183 n

end A156183

/-! ## A156183.P3907157865513902852

`2^A007814(n+1)*5^n`
-/

namespace A156183.P3907157865513902852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007814 (n + 1) : ℤ) * (5 ^ n : ℚ)

end

end A156183.P3907157865513902852

namespace A156183

/-- `2^A007814(n+1)*5^n` -/
def P3907157865513902852.Spec : Prop :=
  ∀ n, P3907157865513902852.a n = (A156183 n : ℚ)

end A156183

/-! ## A156183.P14348981785102149797

`(n+1)%(xor(n, n+1)+1)*A000351(n)`
-/

namespace A156183.P14348981785102149797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % (Nat.xor n (n + 1) + 1) : ℕ) : ℤ) * A000351 n

end

end A156183.P14348981785102149797

namespace A156183

/-- `(n+1)%(xor(n, n+1)+1)*A000351(n)` -/
def P14348981785102149797.Spec : Prop :=
  ∀ n, P14348981785102149797.a n = A156183 n

end A156183

/-!
# A156184: A generalized recursion triangle sequence : m=1; t(n,k)=(k + m - 1)*t(n - 1, k, m) + (m*n - k + 1 - m)*t(n - 1, k - 1, m).

The programs for A156184, there is no canonical definition to state claims against.
-/

/-! ## A156184.P11587102495977331007

`A319159(A302998(n))`
-/

namespace A156184.P11587102495977331007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319159 (A302998 n).toNat

end

end A156184.P11587102495977331007

/-! ## A156184.P7166912913014463244

`A080221(2^A014473(n))`
-/

namespace A156184.P7166912913014463244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080221 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A014473 n : ℤ))).toNat

end

end A156184.P7166912913014463244

/-! ## A156184.P1901127058946920040

`A080221(2^A007318(n)/2)`
-/

namespace A156184.P1901127058946920040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080221 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A007318 n : ℤ) / 2)).toNat

end

end A156184.P1901127058946920040

/-! ## A156184.P14097961215582989363

`A100862(A100862(n))*A194910(A100862(n))`
-/

namespace A156184.P14097961215582989363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100862 (A100862 n).toNat * A194910 (A100862 n).toNat

end

end A156184.P14097961215582989363

/-! ## A156184.P180745141403744696

`A092741(A088925(n))`
-/

namespace A156184.P180745141403744696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092741 (A088925 n).toNat

end

end A156184.P180745141403744696

/-!
# A156185: Numerator of Euler(n, 2/5).

The programs for A156185, there is no canonical definition to state claims against.
-/

/-! ## A156185.P16235379940306685793

`A098419(A358607(n))-A122794(n+1)`
-/

namespace A156185.P16235379940306685793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098419 (A358607 n).toNat - A122794 (n + 1)

end

end A156185.P16235379940306685793

/-!
# A156187: Numerator of Euler(n, 1/6).

The programs for A156187, there is no canonical definition to state claims against.
-/

/-! ## A156187.P16077807232403484329

`-(A225147(n)/A000034(n))`
-/

namespace A156187.P16077807232403484329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A225147 n : ℚ) / (A000034 n : ℚ))

end

end A156187.P16077807232403484329

/-! ## A156187.P7435606398171580242

`char[A000096(n+11)]-A225147(n)/A000034(n)`
-/

namespace A156187.P7435606398171580242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 11)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) - (A225147 n : ℚ) / (A000034 n : ℚ)

end

end A156187.P7435606398171580242

/-! ## A156187.P10513946016135867859

`A008683(A036331(n+1))-A225147(n)/A000034(n)`
-/

namespace A156187.P10513946016135867859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A036331 (n + 1)).toNat : ℚ) - (A225147 n : ℚ) / (A000034 n : ℚ)

end

end A156187.P10513946016135867859

/-! ## A156187.P9295439197794554894

`A005171(A020639(n+2))-A225147(n)/A000034(n)`
-/

namespace A156187.P9295439197794554894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005171 (A020639 (n + 2)).toNat : ℚ) - (A225147 n : ℚ) / (A000034 n : ℚ)

end

end A156187.P9295439197794554894

/-! ## A156187.P1314755660486461355

`A008683(A107426(n+1))/A000034(n)*A225147(n)`
-/

namespace A156187.P1314755660486461355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A107426 (n + 1)).toNat : ℚ) / (A000034 n : ℚ) * (A225147 n : ℚ)

end

end A156187.P1314755660486461355

/-! ## A156187.P2243703882711808733

`A008683(A215153(n+1))/A000034(n)*A225147(n)`
-/

namespace A156187.P2243703882711808733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A215153 (n + 1)).toNat : ℚ) / (A000034 n : ℚ) * (A225147 n : ℚ)

end

end A156187.P2243703882711808733

/-! ## A156187.P15123113408444227692

`A008683(A215161(n+1))/A000034(n)*A225147(n)`
-/

namespace A156187.P15123113408444227692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A215161 (n + 1)).toNat : ℚ) / (A000034 n : ℚ) * (A225147 n : ℚ)

end

end A156187.P15123113408444227692

/-! ## A156187.P9018688700949316493

`A008683(A215163(n+1))/A000034(n)*A225147(n)`
-/

namespace A156187.P9018688700949316493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A215163 (n + 1)).toNat : ℚ) / (A000034 n : ℚ) * (A225147 n : ℚ)

end

end A156187.P9018688700949316493

/-! ## A156187.P12747841530659348931

`A008683(A089439(n+2))/A000034(n)*A225147(n)`
-/

namespace A156187.P12747841530659348931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A089439 (n + 2)).toNat : ℚ) / (A000034 n : ℚ) * (A225147 n : ℚ)

end

end A156187.P12747841530659348931

/-!
# A156188: Triangle: m=5; e(n,k,n)=(k + m - 1)*e(n - 1, k, m) + (m*n - k + 1 - m)*e(n - 1, k - 1, m); t(n,k)=e(n,k,m)+e(n,n-k,m).

The programs for A156188, there is no canonical definition to state claims against.
-/

/-! ## A156188.P11934526109496162432

`A245170(A191100(n+1))+A173005(n)`
-/

namespace A156188.P11934526109496162432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245170 (A191100 (n + 1)).toNat + A173005 n

end

end A156188.P11934526109496162432

/-! ## A156188.P4102740034001795695

`A276051(A288324(2*n)+A001263(n+1))`
-/

namespace A156188.P4102740034001795695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276051 (A288324 (2 * n) + A001263 (n + 1)).toNat

end

end A156188.P4102740034001795695

/-!
# A156189: Denominator of Euler(n, 1/6).

The programs for A156189, the canonical program `A156189.P16930052046040875316` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156189 has offset 0).

The definition of A156189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156189.P16930052046040875316

`36*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A156189

/-- `36*a(n-2)` -/
def P16930052046040875316.Spec : Prop :=
  ∀ n, (P16930052046040875316.a n : ℤ) = A156189 n

theorem P16930052046040875316.correct : P16930052046040875316.Spec := by
  intro n
  simp only [A156189]

end A156189

/-! ## A156189.P11704087847578674433

`6^n/(n%2+1)`
-/

namespace A156189.P11704087847578674433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)

end

end A156189.P11704087847578674433

namespace A156189

/-- `6^n/(n%2+1)` -/
def P11704087847578674433.Spec : Prop :=
  ∀ n, P11704087847578674433.a n = (A156189 n : ℚ)

end A156189

/-! ## A156189.P13189591268630661354

`6^n/gcd(2, n+1)`
-/

namespace A156189.P13189591268630661354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

end

end A156189.P13189591268630661354

namespace A156189

/-- `6^n/gcd(2, n+1)` -/
def P13189591268630661354.Spec : Prop :=
  ∀ n, P13189591268630661354.a n = (A156189 n : ℚ)

end A156189

/-! ## A156189.P5213909680228602229

`6^n/(and(1, n)+1)`
-/

namespace A156189.P5213909680228602229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℚ) / (Nat.land 1 n + 1 : ℚ)

end

end A156189.P5213909680228602229

namespace A156189

/-- `6^n/(and(1, n)+1)` -/
def P5213909680228602229.Spec : Prop :=
  ∀ n, P5213909680228602229.a n = (A156189 n : ℚ)

end A156189

/-! ## A156189.P6946648811351648654

`6^n/(5^n)%3`
-/

namespace A156189.P6946648811351648654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℚ) / ((5 ^ n % 3 : ℕ) : ℚ)

end

end A156189.P6946648811351648654

namespace A156189

/-- `6^n/(5^n)%3` -/
def P6946648811351648654.Spec : Prop :=
  ∀ n, P6946648811351648654.a n = (A156189 n : ℚ)

end A156189

/-! ## A156189.P1111384511382671403

`6^n/2^and(1, n)`
-/

namespace A156189.P1111384511382671403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℚ) / (2 ^ Nat.land 1 n : ℚ)

end

end A156189.P1111384511382671403

namespace A156189

/-- `6^n/2^and(1, n)` -/
def P1111384511382671403.Spec : Prop :=
  ∀ n, P1111384511382671403.a n = (A156189 n : ℚ)

end A156189

/-! ## A156189.P5611669936375998013

`2^and(n, -2)*3^n`
-/

namespace A156189.P5611669936375998013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.land (n : ℤ) (-2) : ℤ) * (3 ^ n : ℚ)

end

end A156189.P5611669936375998013

namespace A156189

/-- `2^and(n, -2)*3^n` -/
def P5611669936375998013.Spec : Prop :=
  ∀ n, P5611669936375998013.a n = (A156189 n : ℚ)

end A156189

/-! ## A156189.P15555896957788929067

`3^n*4^floor(n/2)`
-/

namespace A156189.P15555896957788929067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) * (4 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A156189.P15555896957788929067

namespace A156189

/-- `3^n*4^floor(n/2)` -/
def P15555896957788929067.Spec : Prop :=
  ∀ n, P15555896957788929067.a n = (A156189 n : ℚ)

end A156189

/-! ## A156189.P6532360961671800616

`a(n-2)/(1/6)²` with `a(0)=1, a(1)=3`
-/

namespace A156189.P6532360961671800616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) / ((1 : ℚ) / 6) ^ 2

end

end A156189.P6532360961671800616

namespace A156189

/-- `a(n-2)/(1/6)²` -/
def P6532360961671800616.Spec : Prop :=
  ∀ n, P6532360961671800616.a n = (A156189 n : ℚ)

end A156189

/-! ## A156189.P3631315392941483404

`∏[∏[1/a(n-1)]]` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A156189.P3631315392941483404
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 3, 4] fun n f2 =>
  1 / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A156189.P3631315392941483404

namespace A156189

/-- `∏[∏[1/a(n-1)]]` -/
def P3631315392941483404.Spec : Prop :=
  ∀ n, P3631315392941483404.a n = (A156189 n : ℚ)

end A156189

/-! ## A156189.P4201974677952747733

`∏[A267924(n)%15]`
-/

namespace A156189.P4201974677952747733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267924 n) 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A156189.P4201974677952747733

namespace A156189

/-- `∏[A267924(n)%15]` -/
def P4201974677952747733.Spec : Prop :=
  ∀ n, P4201974677952747733.a n = A156189 n

end A156189

/-! ## A156189.P3127492919776646560

`∏[A287462(a(n-1))]` with `a(0)=1`
-/

namespace A156189.P3127492919776646560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A287462 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A156189.P3127492919776646560

namespace A156189

/-- `∏[A287462(a(n-1))]` -/
def P3127492919776646560.Spec : Prop :=
  ∀ n, P3127492919776646560.a n = A156189 n

end A156189

/-! ## A156189.P15082388954574288803

`6^n/A176895(2*n)`
-/

namespace A156189.P15082388954574288803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℚ) / (A176895 (2 * n) : ℚ)

end

end A156189.P15082388954574288803

namespace A156189

/-- `6^n/A176895(2*n)` -/
def P15082388954574288803.Spec : Prop :=
  ∀ n, P15082388954574288803.a n = (A156189 n : ℚ)

end A156189

/-! ## A156189.P17323209511713540161

`A026532(A042963(n+1))`
-/

namespace A156189.P17323209511713540161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026532 (A042963 (n + 1)).toNat

end

end A156189.P17323209511713540161

namespace A156189

/-- `A026532(A042963(n+1))` -/
def P17323209511713540161.Spec : Prop :=
  ∀ n, P17323209511713540161.a n = A156189 n

end A156189

/-! ## A156189.P3990337591150185288

`A026532(A109613(n)+n)`
-/

namespace A156189.P3990337591150185288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026532 (A109613 n + (n : ℤ)).toNat

end

end A156189.P3990337591150185288

namespace A156189

/-- `A026532(A109613(n)+n)` -/
def P3990337591150185288.Spec : Prop :=
  ∀ n, P3990337591150185288.a n = A156189 n

end A156189

/-! ## A156189.P11689988333662952452

`A000400(n)/A000034(n)`
-/

namespace A156189.P11689988333662952452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000400 n : ℚ) / (A000034 n : ℚ)

end

end A156189.P11689988333662952452

namespace A156189

/-- `A000400(n)/A000034(n)` -/
def P11689988333662952452.Spec : Prop :=
  ∀ n, P11689988333662952452.a n = (A156189 n : ℚ)

end A156189

/-! ## A156189.P10261575495898401607

`lcm(A000244(n), A084221(n))`
-/

namespace A156189.P10261575495898401607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000244 n) (A084221 n)

end

end A156189.P10261575495898401607

namespace A156189

/-- `lcm(A000244(n), A084221(n))` -/
def P10261575495898401607.Spec : Prop :=
  ∀ n, (P10261575495898401607.a n : ℤ) = A156189 n

end A156189

/-! ## A156189.P6145801347015850531

`lcm(A027334(n), A164111(n))`
-/

namespace A156189.P6145801347015850531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027334 n) (A164111 n)

end

end A156189.P6145801347015850531

namespace A156189

/-- `lcm(A027334(n), A164111(n))` -/
def P6145801347015850531.Spec : Prop :=
  ∀ n, (P6145801347015850531.a n : ℤ) = A156189 n

end A156189

/-! ## A156189.P58191295706696577

`lcm(A130505(n), A213173(n))`
-/

namespace A156189.P58191295706696577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A130505 n) (A213173 n)

end

end A156189.P58191295706696577

namespace A156189

/-- `lcm(A130505(n), A213173(n))` -/
def P58191295706696577.Spec : Prop :=
  ∀ n, (P58191295706696577.a n : ℤ) = A156189 n

end A156189

/-! ## A156189.P2823513865712443457

`lcm(A282022(n), A352779(n))`
-/

namespace A156189.P2823513865712443457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A282022 n) (A352779 n)

end

end A156189.P2823513865712443457

namespace A156189

/-- `lcm(A282022(n), A352779(n))` -/
def P2823513865712443457.Spec : Prop :=
  ∀ n, (P2823513865712443457.a n : ℤ) = A156189 n

end A156189

/-!
# A156190: Number of divisors d of n! such that d-1 is prime.

The programs for A156190, there is no canonical definition to state claims against.
-/

/-! ## A156190.P10899321026307957779

`A000070(n)-A374515(round(2^(n-2)))`
-/

namespace A156190.P10899321026307957779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n - A374515 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))).toNat

end

end A156190.P10899321026307957779

/-! ## A156190.P4475586691126290599

`A259361(A004523(n)*A158172(n+1))`
-/

namespace A156190.P4475586691126290599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A004523 n * A158172 (n + 1)).toNat

end

end A156190.P4475586691126290599

/-!
# A156192: Denominator of Euler(n, 1/7).

The programs for A156192, the canonical program `A156192.P9898348395149871227` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156192 has offset 0).

The definition of A156192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156192.P9446552327200194495

`2^val(n+1, 2)*7^n`
-/

namespace A156192.P9446552327200194495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2 * 7 ^ n

end

end A156192.P9446552327200194495

namespace A156192

/-- `2^val(n+1, 2)*7^n` -/
def P9446552327200194495.Spec : Prop :=
  ∀ n, (P9446552327200194495.a n : ℤ) = A156192 n

end A156192

/-! ## A156192.P1318009037546029982

`lcm(2^val(n+1, 2), 7^n)`
-/

namespace A156192.P1318009037546029982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 ^ SequenceMachineLib.valuation (n + 1) 2) (7 ^ n)

end

end A156192.P1318009037546029982

namespace A156192

/-- `lcm(2^val(n+1, 2), 7^n)` -/
def P1318009037546029982.Spec : Prop :=
  ∀ n, (P1318009037546029982.a n : ℤ) = A156192 n

end A156192

/-! ## A156192.P9898348395149871227

`(or(n, n+1)-n)*7^n`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A156192

/-- `(or(n, n+1)-n)*7^n` -/
def P9898348395149871227.Spec : Prop :=
  ∀ n, P9898348395149871227.a n = A156192 n

theorem P9898348395149871227.correct : P9898348395149871227.Spec := by
  intro n
  simp only [A156192]

end A156192

/-! ## A156192.P12928453670873477015

`7^n*and(n+1, -(n+1))`
-/

namespace A156192.P12928453670873477015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

end

end A156192.P12928453670873477015

namespace A156192

/-- `7^n*and(n+1, -(n+1))` -/
def P12928453670873477015.Spec : Prop :=
  ∀ n, P12928453670873477015.a n = A156192 n

end A156192

/-! ## A156192.P2712301973690621727

`∑{d}[n+1, lcm(2, #)/2]/∑{d}[n+1, #*#%2]*7^n`
-/

namespace A156192.P2712301973690621727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (Nat.lcm 2 d : ℚ) / 2) / ((∑ d ∈ Nat.divisors (f2 n), d * (d % 2) : ℕ) : ℚ) * (7 ^ n : ℚ)

end

end A156192.P2712301973690621727

namespace A156192

/-- `∑{d}[n+1, lcm(2, #)/2]/∑{d}[n+1, #*#%2]*7^n` -/
def P2712301973690621727.Spec : Prop :=
  ∀ n, P2712301973690621727.a n = (A156192 n : ℚ)

end A156192

/-! ## A156192.P5724914106096710629

`7^n*A006519(n+1)`
-/

namespace A156192.P5724914106096710629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * A006519 (n + 1)

end

end A156192.P5724914106096710629

namespace A156192

/-- `7^n*A006519(n+1)` -/
def P5724914106096710629.Spec : Prop :=
  ∀ n, P5724914106096710629.a n = A156192 n

end A156192

/-! ## A156192.P12529808957354317205

`7^n/2*A171977(n+1)`
-/

namespace A156192.P12529808957354317205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℚ) / 2 * (A171977 (n + 1) : ℚ)

end

end A156192.P12529808957354317205

namespace A156192

/-- `7^n/2*A171977(n+1)` -/
def P12529808957354317205.Spec : Prop :=
  ∀ n, P12529808957354317205.a n = (A156192 n : ℚ)

end A156192

/-! ## A156192.P4082968892591949605

`2^A007814(n+1)*7^n`
-/

namespace A156192.P4082968892591949605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007814 (n + 1) : ℤ) * (7 ^ n : ℚ)

end

end A156192.P4082968892591949605

namespace A156192

/-- `2^A007814(n+1)*7^n` -/
def P4082968892591949605.Spec : Prop :=
  ∀ n, P4082968892591949605.a n = (A156192 n : ℚ)

end A156192

/-! ## A156192.P16748830418626211853

`and(n+1, -(n+1))*A000420(n)`
-/

namespace A156192.P16748830418626211853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) * A000420 n

end

end A156192.P16748830418626211853

namespace A156192

/-- `and(n+1, -(n+1))*A000420(n)` -/
def P16748830418626211853.Spec : Prop :=
  ∀ n, P16748830418626211853.a n = A156192 n

end A156192

/-! ## A156192.P8838944316916644733

`lcm(Δ[A003188(n)], A000420(n))`
-/

namespace A156192.P8838944316916644733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A000420 n)

end

end A156192.P8838944316916644733

namespace A156192

/-- `lcm(Δ[A003188(n)], A000420(n))` -/
def P8838944316916644733.Spec : Prop :=
  ∀ n, (P8838944316916644733.a n : ℤ) = A156192 n

end A156192

/-! ## A156192.P7954524633308371147

`A006519(n+1)*A017927(2*n)`
-/

namespace A156192.P7954524633308371147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A017927 (2 * n)

end

end A156192.P7954524633308371147

namespace A156192

/-- `A006519(n+1)*A017927(2*n)` -/
def P7954524633308371147.Spec : Prop :=
  ∀ n, P7954524633308371147.a n = A156192 n

end A156192

/-! ## A156192.P6693551969605553254

`7^n*A011782(A001511(n+1))`
-/

namespace A156192.P6693551969605553254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * A011782 (A001511 (n + 1)).toNat

end

end A156192.P6693551969605553254

namespace A156192

/-- `7^n*A011782(A001511(n+1))` -/
def P6693551969605553254.Spec : Prop :=
  ∀ n, P6693551969605553254.a n = A156192 n

end A156192

/-! ## A156192.P12958569607635811172

`7^n*A065331(A038502(n+1))`
-/

namespace A156192.P12958569607635811172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * A065331 (A038502 (n + 1)).toNat

end

end A156192.P12958569607635811172

namespace A156192

/-- `7^n*A065331(A038502(n+1))` -/
def P12958569607635811172.Spec : Prop :=
  ∀ n, P12958569607635811172.a n = A156192 n

end A156192

/-!
# A156194: Period 12: 1,2,7,1,7,2,1,1,4,2,4,1 repeated.

The programs for A156194, the canonical program `A156194.P5026369920537377381` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156194 has offset 0).

The definition of A156194 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156194.P5026369920537377381

`A156095(n)%9`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A156194

/-- `A156095(n)%9` -/
def P5026369920537377381.Spec : Prop :=
  ∀ n, P5026369920537377381.a n = A156194 n

theorem P5026369920537377381.correct : P5026369920537377381.Spec := by
  intro n
  simp only [A156194]

end A156194

/-!
# A156195: a(2n+2) = 6*a(2n+1), a(2n+1) = 6*a(2n) - 5^n*A000108(n), a(0)=1.

The programs for A156195, there is no canonical definition to state claims against.
-/

/-! ## A156195.P17304170557166055122

`A317492(A120304(n)+2)*A360051(n)`
-/

namespace A156195.P17304170557166055122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317492 (A120304 n + 2).toNat * A360051 n

end

end A156195.P17304170557166055122

/-!
# A156197: T(n,k) = A009766(n,k) + A009766(n,n-k), triangle read by rows.

The programs for A156197, the canonical program `A156197.P18100667484286716162` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156197 has offset 0).

The definition of A156197 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156197.P18100667484286716162

`A009766(n)+abs(A171567(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A156197

/-- `A009766(n)+abs(A171567(n))` -/
def P18100667484286716162.Spec : Prop :=
  ∀ n, P18100667484286716162.a n = A156197 n

theorem P18100667484286716162.correct : P18100667484286716162.Spec := by
  intro n
  simp only [A156197]

end A156197

/-! ## A156197.P16655752236482546478

`A033184(n+1)+A009766(n)`
-/

namespace A156197.P16655752236482546478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033184 (n + 1) + A009766 n

end

end A156197.P16655752236482546478

namespace A156197

/-- `A033184(n+1)+A009766(n)` -/
def P16655752236482546478.Spec : Prop :=
  ∀ n, P16655752236482546478.a n = A156197 n

end A156197

/-! ## A156197.P13985860086760975667

`A106566(comp[∑[n]])+A009766(n)`
-/

namespace A156197.P13985860086760975667
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A009766 n

end

end A156197.P13985860086760975667

namespace A156197

/-- `A106566(comp[∑[n]])+A009766(n)` -/
def P13985860086760975667.Spec : Prop :=
  ∀ n, P13985860086760975667.a n = A156197 n

end A156197

/-! ## A156197.P89562116967896245

`A009766(n)+A009766(A061579(n))`
-/

namespace A156197.P89562116967896245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 n + A009766 (A061579 n).toNat

end

end A156197.P89562116967896245

namespace A156197

/-- `A009766(n)+A009766(A061579(n))` -/
def P89562116967896245.Spec : Prop :=
  ∀ n, P89562116967896245.a n = A156197 n

end A156197

/-! ## A156197.P9954202363116012158

`A130020(comp[∑[n-1]])+A033184(n+1)`
-/

namespace A156197.P9954202363116012158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130020 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + A033184 (n + 1)

end

end A156197.P9954202363116012158

namespace A156197

/-- `A130020(comp[∑[n-1]])+A033184(n+1)` -/
def P9954202363116012158.Spec : Prop :=
  ∀ n, P9954202363116012158.a n = A156197 n

end A156197

/-! ## A156197.P16374841493484528736

`A059365(comp[∑[n]])+A009766(n)`
-/

namespace A156197.P16374841493484528736
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059365 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A009766 n

end

end A156197.P16374841493484528736

namespace A156197

/-- `A059365(comp[∑[n]])+A009766(n)` -/
def P16374841493484528736.Spec : Prop :=
  ∀ n, P16374841493484528736.a n = A156197 n

end A156197

/-! ## A156197.P11051531985144471164

`A118344(A245300(n))+A033184(n+1)`
-/

namespace A156197.P11051531985144471164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118344 (A245300 n).toNat + A033184 (n + 1)

end

end A156197.P11051531985144471164

namespace A156197

/-- `A118344(A245300(n))+A033184(n+1)` -/
def P11051531985144471164.Spec : Prop :=
  ∀ n, P11051531985144471164.a n = A156197 n

end A156197

/-! ## A156197.P18104428110039608201

`A290252(A089633(n))+A033184(n+1)`
-/

namespace A156197.P18104428110039608201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (A089633 n).toNat + A033184 (n + 1)

end

end A156197.P18104428110039608201

namespace A156197

/-- `A290252(A089633(n))+A033184(n+1)` -/
def P18104428110039608201.Spec : Prop :=
  ∀ n, P18104428110039608201.a n = A156197 n

end A156197

/-! ## A156197.P16275853582307127977

`A009766(n)+∑{d}[A171567(n), A000010(#)]`
-/

namespace A156197.P16275853582307127977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 n + ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A156197.P16275853582307127977

namespace A156197

/-- `A009766(n)+∑{d}[A171567(n), A000010(#)]` -/
def P16275853582307127977.Spec : Prop :=
  ∀ n, P16275853582307127977.a n = A156197 n

end A156197

/-!
# A156198: a(n) = 2*a(n-1)+3 with n>1, a(1)=8.

The programs for A156198, the canonical program `A156198.P14406568813309390949` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156198 has offset 1).

The definition of A156198 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+3` (program `A156198.P14406568813309390949`, by `A156198.P14406568813309390949.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156198.P5619088286350918139

`11*2^n-3`
-/

namespace A156198.P5619088286350918139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * 2 ^ n : ℤ) - 3

end

end A156198.P5619088286350918139

namespace A156198

/-- `11*2^n-3` -/
def P5619088286350918139.Spec : Prop :=
  ∀ n, P5619088286350918139.a n = A156198 (n + 1)

theorem P5619088286350918139.correct : P5619088286350918139.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A156198, Nat.add_sub_cancel, A156198.P5619088286350918139.a, A156198.P14406568813309390949.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A156198, Nat.add_sub_cancel, A156198.P5619088286350918139.a, A156198.P14406568813309390949.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A156198

/-! ## A156198.P14406568813309390949

`2*a(n-1)+3` with `a(0)=8`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A156198

/-- `2*a(n-1)+3` -/
def P14406568813309390949.Spec : Prop :=
  ∀ n, (P14406568813309390949.a n : ℤ) = A156198 (n + 1)

theorem P14406568813309390949.correct : P14406568813309390949.Spec := by
  intro n
  simp only [A156198, Nat.add_sub_cancel]

end A156198

/-! ## A156198.P15264769559439229060

`ogf((8-5x)/(1-3x+2x^2))`
-/

namespace A156198.P15264769559439229060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -5] [1, -3, 2] n

end

end A156198.P15264769559439229060

namespace A156198

/-- `ogf((8-5x)/(1-3x+2x^2))` -/
def P15264769559439229060.Spec : Prop :=
  ∀ n, P15264769559439229060.a n = A156198 (n + 1)

end A156198

/-! ## A156198.P13289763669241175990

`∑[2*a(n-1)]` with `a(0)=8, a(1)=11`
-/

namespace A156198.P13289763669241175990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 11] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156198.P13289763669241175990

namespace A156198

/-- `∑[2*a(n-1)]` -/
def P13289763669241175990.Spec : Prop :=
  ∀ n, (P13289763669241175990.a n : ℤ) = A156198 (n + 1)

end A156198

/-! ## A156198.P12988776501695303666

`∑[a(n-1)+a(n-1)]` with `a(0)=8, a(1)=11`
-/

namespace A156198.P12988776501695303666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 11] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156198.P12988776501695303666

namespace A156198

/-- `∑[a(n-1)+a(n-1)]` -/
def P12988776501695303666.Spec : Prop :=
  ∀ n, (P12988776501695303666.a n : ℤ) = A156198 (n + 1)

end A156198

/-! ## A156198.P15671549246543894616

`floor(a(n-1)+a(n-1)+3)` with `a(0)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A156198.P15671549246543894616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + (a (n - 1) + 3)

end

end A156198.P15671549246543894616

namespace A156198

/-- `floor(a(n-1)+a(n-1)+3)` -/
def P15671549246543894616.Spec : Prop :=
  ∀ n, (P15671549246543894616.a n : ℤ) = A156198 (n + 1)

theorem P15671549246543894616.correct : P15671549246543894616.Spec := by
  intro n
  simp only [A156198, Nat.add_sub_cancel, A156198.P15671549246543894616.a, A156198.P14406568813309390949.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A156198

/-! ## A156198.P8743192901059978282

`abs(2-A086225(n))`
-/

namespace A156198.P8743192901059978282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A086225 n|

end

end A156198.P8743192901059978282

namespace A156198

/-- `abs(2-A086225(n))` -/
def P8743192901059978282.Spec : Prop :=
  ∀ n, P8743192901059978282.a n = A156198 (n + 1)

end A156198

/-! ## A156198.P3703914690681494175

`abs(3-A005015(n))`
-/

namespace A156198.P3703914690681494175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A005015 n|

end

end A156198.P3703914690681494175

namespace A156198

/-- `abs(3-A005015(n))` -/
def P3703914690681494175.Spec : Prop :=
  ∀ n, P3703914690681494175.a n = A156198 (n + 1)

end A156198

/-! ## A156198.P1443128772204960006

`abs(4-A083683(n))`
-/

namespace A156198.P1443128772204960006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - A083683 n|

end

end A156198.P1443128772204960006

namespace A156198

/-- `abs(4-A083683(n))` -/
def P1443128772204960006.Spec : Prop :=
  ∀ n, P1443128772204960006.a n = A156198 (n + 1)

end A156198

/-! ## A156198.P16546191699559136221

`xor(A081808(n+1), A156127(n))`
-/

namespace A156198.P16546191699559136221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A081808 (n + 1)) (A156127 n)

end

end A156198.P16546191699559136221

namespace A156198

/-- `xor(A081808(n+1), A156127(n))` -/
def P16546191699559136221.Spec : Prop :=
  ∀ n, P16546191699559136221.a n = A156198 (n + 1)

end A156198

/-! ## A156198.P12462738221531958982

`Δ[A051669(n)+n]`
-/

namespace A156198.P12462738221531958982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051669 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156198.P12462738221531958982

namespace A156198

/-- `Δ[A051669(n)+n]` -/
def P12462738221531958982.Spec : Prop :=
  ∀ n, P12462738221531958982.a n = A156198 (n + 1)

theorem P12462738221531958982.correct : P12462738221531958982.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A156198, Nat.add_sub_cancel, A156198.P12462738221531958982.f1, A156198.P12462738221531958982.a, A156198.P14406568813309390949.a, A051669, A051669.P500712326000610760.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A156198, Nat.add_sub_cancel, A156198.P12462738221531958982.f1, A156198.P12462738221531958982.a, A156198.P14406568813309390949.a, A051669, A051669.P500712326000610760.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A156198

/-! ## A156198.P8042050601468789585

`Δ[A169831(n)+A016116(A005843(n))]`
-/

namespace A156198.P8042050601468789585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169831 n + A016116 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156198.P8042050601468789585

namespace A156198

/-- `Δ[A169831(n)+A016116(A005843(n))]` -/
def P8042050601468789585.Spec : Prop :=
  ∀ n, P8042050601468789585.a n = A156198 (n + 1)

end A156198

/-! ## A156198.P17481137666571513966

`A171390(n+1)%A168596(n)`
-/

namespace A156198.P17481137666571513966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171390 (n + 1)) (A168596 n)

end

end A156198.P17481137666571513966

namespace A156198

/-- `A171390(n+1)%A168596(n)` -/
def P17481137666571513966.Spec : Prop :=
  ∀ n, P17481137666571513966.a n = A156198 (n + 1)

end A156198

/-! ## A156198.P6182388279117774285

`Δ[A082694((n+1)²+1)]`
-/

namespace A156198.P6182388279117774285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082694 ((n + 1) ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156198.P6182388279117774285

namespace A156198

/-- `Δ[A082694((n+1)²+1)]` -/
def P6182388279117774285.Spec : Prop :=
  ∀ n, P6182388279117774285.a n = A156198 (n + 1)

end A156198

/-!
# A156199: Period 12: repeat 1, 1, 4, 2, 4, 1, 1, 2, 7, 1, 7, 2 .

The programs for A156199, the canonical program `A156199.P14114707682023428273` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156199 has offset 0).

The definition of A156199 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156199.P14114707682023428273

`A156194(n+6)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A156199

/-- `A156194(n+6)` -/
def P14114707682023428273.Spec : Prop :=
  ∀ n, P14114707682023428273.a n = A156199 n

theorem P14114707682023428273.correct : P14114707682023428273.Spec := by
  intro n
  simp only [A156199]

end A156199

