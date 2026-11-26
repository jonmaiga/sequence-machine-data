import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A258800: The number of zeroless decimal numbers whose digital sum is n.

The programs for A258800, the canonical program `A258800.P8487063404344478155` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258800 has offset 0).

The definition of A258800 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A258800.P8487063404344478155

`ogf((x+x^2+x^3+x^4+x^5+x^6+x^7+x^8+x^9)/(1-x-x^2-x^3-x^4-x^5-x^6-x^7-x^8-x^9))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A258800

/-- `ogf((x+x^2+x^3+x^4+x^5+x^6+x^7+x^8+x^9)/(1-x-x^2-x^3-x^4-x^5-x^6-x^7-x^8-x^9))` -/
def P8487063404344478155.Spec : Prop :=
  ∀ n, P8487063404344478155.a n = A258800 n

theorem P8487063404344478155.correct : P8487063404344478155.Spec := by
  intro n
  simp only [A258800]

end A258800

/-! ## A258800.P17833942906926953180

`record[A104144(n)+char[1]]`
-/

namespace A258800.P17833942906926953180
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104144 n + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258800.P17833942906926953180

namespace A258800

/-- `record[A104144(n)+char[1]]` -/
def P17833942906926953180.Spec : Prop :=
  ∀ n, P17833942906926953180.a n = A258800 n

end A258800

/-! ## A258800.P4314728627104415466

`record[A104144(floor(2*xor(1, n)/10))]`
-/

namespace A258800.P4314728627104415466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104144 ⌊(2 * Nat.xor 1 n : ℚ) / 10⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258800.P4314728627104415466

namespace A258800

/-- `record[A104144(floor(2*xor(1, n)/10))]` -/
def P4314728627104415466.Spec : Prop :=
  ∀ n, P4314728627104415466.a n = A258800 n

end A258800

/-! ## A258800.P16922177543574134736

`record[A104144(floor(n/(xor(n, n+1)+1)))]`
-/

namespace A258800.P16922177543574134736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104144 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258800.P16922177543574134736

namespace A258800

/-- `record[A104144(floor(n/(xor(n, n+1)+1)))]` -/
def P16922177543574134736.Spec : Prop :=
  ∀ n, P16922177543574134736.a n = A258800 n

end A258800

/-! ## A258800.P2209109295431500077

`record[A104144(A005599(n))]`
-/

namespace A258800.P2209109295431500077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104144 (A005599 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258800.P2209109295431500077

namespace A258800

/-- `record[A104144(A005599(n))]` -/
def P2209109295431500077.Spec : Prop :=
  ∀ n, P2209109295431500077.a n = A258800 n

end A258800

/-! ## A258800.P3699844080379082998

`record[A104144(A008611(n))]`
-/

namespace A258800.P3699844080379082998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104144 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258800.P3699844080379082998

namespace A258800

/-- `record[A104144(A008611(n))]` -/
def P3699844080379082998.Spec : Prop :=
  ∀ n, P3699844080379082998.a n = A258800 n

end A258800

/-! ## A258800.P14869507341005823488

`record[A104144(A008612(n))]`
-/

namespace A258800.P14869507341005823488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104144 (A008612 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258800.P14869507341005823488

namespace A258800

/-- `record[A104144(A008612(n))]` -/
def P14869507341005823488.Spec : Prop :=
  ∀ n, P14869507341005823488.a n = A258800 n

end A258800

/-! ## A258800.P16758439301966125316

`record[A104144(A008615(n))]`
-/

namespace A258800.P16758439301966125316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104144 (A008615 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258800.P16758439301966125316

namespace A258800

/-- `record[A104144(A008615(n))]` -/
def P16758439301966125316.Spec : Prop :=
  ∀ n, P16758439301966125316.a n = A258800 n

end A258800

/-! ## A258800.P10099904022453526992

`A104144(A171892(n+2))`
-/

namespace A258800.P10099904022453526992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104144 (A171892 (n + 2)).toNat

end

end A258800.P10099904022453526992

namespace A258800

/-- `A104144(A171892(n+2))` -/
def P10099904022453526992.Spec : Prop :=
  ∀ n, P10099904022453526992.a n = A258800 n

end A258800

/-! ## A258800.P1724407211988615415

`record[A104144(A003963(n+1))]`
-/

namespace A258800.P1724407211988615415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104144 (A003963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258800.P1724407211988615415

namespace A258800

/-- `record[A104144(A003963(n+1))]` -/
def P1724407211988615415.Spec : Prop :=
  ∀ n, P1724407211988615415.a n = A258800 n

end A258800

/-! ## A258800.P12658272249328086712

`record[A104144(A243055(n+1))]`
-/

namespace A258800.P12658272249328086712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104144 (A243055 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258800.P12658272249328086712

namespace A258800

/-- `record[A104144(A243055(n+1))]` -/
def P12658272249328086712.Spec : Prop :=
  ∀ n, P12658272249328086712.a n = A258800 n

end A258800

/-! ## A258800.P506271322827665803

`A104144(n+8)%A000079(n)`
-/

namespace A258800.P506271322827665803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104144 (n + 8)) (A000079 n)

end

end A258800.P506271322827665803

namespace A258800

/-- `A104144(n+8)%A000079(n)` -/
def P506271322827665803.Spec : Prop :=
  ∀ n, P506271322827665803.a n = A258800 n

end A258800

/-! ## A258800.P2750177854587744630

`record[A104144(A004788(n))]`
-/

namespace A258800.P2750177854587744630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104144 (A004788 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258800.P2750177854587744630

namespace A258800

/-- `record[A104144(A004788(n))]` -/
def P2750177854587744630.Spec : Prop :=
  ∀ n, P2750177854587744630.a n = A258800 n

end A258800

/-! ## A258800.P15424005403402194788

`record[A104144(A003056(lcm(2, n)))]`
-/

namespace A258800.P15424005403402194788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104144 (A003056 (Nat.lcm 2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258800.P15424005403402194788

namespace A258800

/-- `record[A104144(A003056(lcm(2, n)))]` -/
def P15424005403402194788.Spec : Prop :=
  ∀ n, P15424005403402194788.a n = A258800 n

end A258800

/-!
# A258801: Carmichael numbers divisible by 3.

The programs for A258801, there is no canonical definition to state claims against.
-/

/-! ## A258801.P15248138277527770127

`record[A002997(n+1)^(3/A141710(n+1))]`
-/

namespace A258801.P15248138277527770127
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002997 (n + 1) : ℝ) ^ (3 / (A141710 (n + 1) : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258801.P15248138277527770127

/-! ## A258801.P1034060324453851582

`∩[A002997(n+1), A306451(n+1)]`
-/

namespace A258801.P1034060324453851582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258801.P1034060324453851582

/-! ## A258801.P11462499336837584429

`∩[A097130(n+1), A306451(n+1)]`
-/

namespace A258801.P11462499336837584429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258801.P11462499336837584429

/-! ## A258801.P5555497867315358623

`∩[A110889(n+1), A306451(n+1)]`
-/

namespace A258801.P5555497867315358623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258801.P5555497867315358623

/-! ## A258801.P7457875853396523668

`∩[A205947(n+1), A306451(n+1)]`
-/

namespace A258801.P7457875853396523668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258801.P7457875853396523668

/-!
# A258804: a(n) = gpf(a(n-3))*gpf(a(n-2)) + gpf(a(n-1)), with a(1)=a(2)=1 and a(3)=2 and where gpf(n) is the greatest prime dividing n, A006530(n).

The programs for A258804, the canonical program `A258804.P12085481562996696336` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258804 has offset 1).

The definition of A258804 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A258804.P12085481562996696336

`A006530(a(n-3))*A006530(a(n-2))+A006530(a(n-1))` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A258804

/-- `A006530(a(n-3))*A006530(a(n-2))+A006530(a(n-1))` -/
def P12085481562996696336.Spec : Prop :=
  ∀ n, P12085481562996696336.a n = A258804 (n + 1)

theorem P12085481562996696336.correct : P12085481562996696336.Spec := by
  intro n
  simp only [A258804, Nat.add_sub_cancel]

end A258804

/-! ## A258804.P534227717513254516

`A341355(A289158(n))+A234933(n)`
-/

namespace A258804.P534227717513254516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341355 (A289158 n).toNat + A234933 n

end

end A258804.P534227717513254516

namespace A258804

/-- `A341355(A289158(n))+A234933(n)` -/
def P534227717513254516.Spec : Prop :=
  ∀ n, P534227717513254516.a n = A258804 (n + 1)

end A258804

/-!
# A258805: Primes of the form k^8 + 1.

The programs for A258805, the canonical program `A258805.P7731878302652635393` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258805 has offset 1).

The definition of A258805 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258805.P7731878302652635393

`A006314(n+1)^8+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A258805

/-- `A006314(n+1)^8+1` -/
def P7731878302652635393.Spec : Prop :=
  ∀ n, P7731878302652635393.a n = A258805 (n + 1)

theorem P7731878302652635393.correct : P7731878302652635393.Spec := by
  intro n
  simp only [A258805, Nat.add_sub_cancel]

end A258805

/-! ## A258805.P7383549890916721358

`A060890(A006314(n+1))`
-/

namespace A258805.P7383549890916721358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060890 (A006314 (n + 1)).toNat

end

end A258805.P7383549890916721358

namespace A258805

/-- `A060890(A006314(n+1))` -/
def P7383549890916721358.Spec : Prop :=
  ∀ n, P7383549890916721358.a n = A258805 (n + 1)

end A258805

/-!
# A258806: a(n) = n^7 + 1.

The programs for A258806, the canonical program `A258806.P6095875049815832673` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258806 has offset 0).

The definition of A258806 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^7+1` (program `A258806.P6095875049815832673`, by `A258806.P6095875049815832673.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A258806.P6095875049815832673

`n^7+1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A258806

/-- `n^7+1` -/
def P6095875049815832673.Spec : Prop :=
  ∀ n, (P6095875049815832673.a n : ℤ) = A258806 n

theorem P6095875049815832673.correct : P6095875049815832673.Spec := by
  intro n
  simp only [A258806]

end A258806

/-!
# A258807: a(n) = n^5 - 1.

The programs for A258807, the canonical program `A258807.P3833737994083168200` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258807 has offset 1).

The definition of A258807 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^5-1` (program `A258807.P3833737994083168200`, by `A258807.P3833737994083168200.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A258807.P3833737994083168200

`(n+1)^5-1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A258807

/-- `(n+1)^5-1` -/
def P3833737994083168200.Spec : Prop :=
  ∀ n, P3833737994083168200.a n = A258807 (n + 1)

theorem P3833737994083168200.correct : P3833737994083168200.Spec := by
  intro n
  simp only [A258807, Nat.add_sub_cancel]

end A258807

/-! ## A258807.P1184636660191480650

`ogf((31x+56x^2+36x^3-4x^4+x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A258807.P1184636660191480650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 31, 56, 36, -4, 1] [1, -6, 15, -20, 15, -6, 1] n

end

end A258807.P1184636660191480650

namespace A258807

/-- `ogf((31x+56x^2+36x^3-4x^4+x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P1184636660191480650.Spec : Prop :=
  ∀ n, P1184636660191480650.a n = A258807 (n + 1)

end A258807

/-! ## A258807.P4745520467318935170

`-A024003(n+1)`
-/

namespace A258807.P4745520467318935170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A024003 (n + 1)

end

end A258807.P4745520467318935170

namespace A258807

/-- `-A024003(n+1)` -/
def P4745520467318935170.Spec : Prop :=
  ∀ n, P4745520467318935170.a n = A258807 (n + 1)

theorem P4745520467318935170.correct : P4745520467318935170.Spec := by
  intro n
  simp only [A258807, Nat.add_sub_cancel, A258807.P4745520467318935170.a, A258807.P3833737994083168200.a, A024003, A024003.P9184774219160180946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258807

/-! ## A258807.P16843907007658724775

`xor(xor(n, -1)^5, -1)`
-/

namespace A258807.P16843907007658724775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.xor (n : ℤ) (-1) ^ 5) (-1)

end

end A258807.P16843907007658724775

namespace A258807

/-- `xor(xor(n, -1)^5, -1)` -/
def P16843907007658724775.Spec : Prop :=
  ∀ n, P16843907007658724775.a n = A258807 (n + 1)

end A258807

/-! ## A258807.P16774068449093747291

`record[abs((1-n)^5)-1]`
-/

namespace A258807.P16774068449093747291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - (n : ℤ)) ^ 5| - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258807.P16774068449093747291

namespace A258807

/-- `record[abs((1-n)^5)-1]` -/
def P16774068449093747291.Spec : Prop :=
  ∀ n, P16774068449093747291.a n = A258807 (n + 1)

end A258807

/-! ## A258807.P9405787536041323697

`floor(cot(1/(n+1)^5))`
-/

namespace A258807.P9405787536041323697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (1 / ((n + 1) ^ 5 : ℚ) : ℝ)⌋

end

end A258807.P9405787536041323697

namespace A258807

/-- `floor(cot(1/(n+1)^5))` -/
def P9405787536041323697.Spec : Prop :=
  ∀ n, P9405787536041323697.a n = A258807 (n + 1)

end A258807

/-! ## A258807.P10556483466516908670

`lcm(n, (-(n+1))^5+1)`
-/

namespace A258807.P10556483466516908670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((-(n + 1 : ℤ)) ^ 5 + 1)

end

end A258807.P10556483466516908670

namespace A258807

/-- `lcm(n, (-(n+1))^5+1)` -/
def P10556483466516908670.Spec : Prop :=
  ∀ n, (P10556483466516908670.a n : ℤ) = A258807 (n + 1)

end A258807

/-! ## A258807.P13363380579264304510

`Δ[n*n²²]+a(n-1)` with `a(0)=0`
-/

namespace A258807.P13363380579264304510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + a (n - 1)

end

end A258807.P13363380579264304510

namespace A258807

/-- `Δ[n*n²²]+a(n-1)` -/
def P13363380579264304510.Spec : Prop :=
  ∀ n, P13363380579264304510.a n = A258807 (n + 1)

theorem P13363380579264304510.correct : P13363380579264304510.Spec := by
  intro n
  induction n with
  | zero => simp [A258807, A258807.P13363380579264304510.f1, A258807.P13363380579264304510.a, A258807.P3833737994083168200.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A258807, Nat.add_sub_cancel, A258807.P13363380579264304510.f1, A258807.P13363380579264304510.a, A258807.P3833737994083168200.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A258807

/-! ## A258807.P7348765685946271019

`(n+1)*∑[a(n-1)+2]²-1` with `a(0)=1`
-/

namespace A258807.P7348765685946271019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - 1

end

end A258807.P7348765685946271019

namespace A258807

/-- `(n+1)*∑[a(n-1)+2]²-1` -/
def P7348765685946271019.Spec : Prop :=
  ∀ n, P7348765685946271019.a n = A258807 (n + 1)

end A258807

/-! ## A258807.P4196891931289618961

`floor(sqrt(A123867(n+1)))`
-/

namespace A258807.P4196891931289618961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A123867 (n + 1))

end

end A258807.P4196891931289618961

namespace A258807

/-- `floor(sqrt(A123867(n+1)))` -/
def P4196891931289618961.Spec : Prop :=
  ∀ n, P4196891931289618961.a n = A258807 (n + 1)

end A258807

/-! ## A258807.P17804795729889448969

`floor(sqrt(A196291(n+1)))`
-/

namespace A258807.P17804795729889448969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A196291 (n + 1))

end

end A258807.P17804795729889448969

namespace A258807

/-- `floor(sqrt(A196291(n+1)))` -/
def P17804795729889448969.Spec : Prop :=
  ∀ n, P17804795729889448969.a n = A258807 (n + 1)

end A258807

/-! ## A258807.P4681601900770121574

`A131473(n+1)/(n+1)`
-/

namespace A258807.P4681601900770121574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131473 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A258807.P4681601900770121574

namespace A258807

/-- `A131473(n+1)/(n+1)` -/
def P4681601900770121574.Spec : Prop :=
  ∀ n, P4681601900770121574.a n = (A258807 (n + 1) : ℚ)

end A258807

/-! ## A258807.P16016162040693125180

`(A123866(n+1)-n)/(n+1)`
-/

namespace A258807.P16016162040693125180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123866 (n + 1) - (n : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A258807.P16016162040693125180

namespace A258807

/-- `(A123866(n+1)-n)/(n+1)` -/
def P16016162040693125180.Spec : Prop :=
  ∀ n, P16016162040693125180.a n = (A258807 (n + 1) : ℚ)

theorem P16016162040693125180.correct : P16016162040693125180.Spec := by
  intro n
  simp only [A258807, Nat.add_sub_cancel, A258807.P16016162040693125180.a, A258807.P3833737994083168200.a, A123866, A123866.P11621378827014358143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258807

/-! ## A258807.P6160293529618283156

`A258812(n+1)%A053700(n+1)`
-/

namespace A258807.P6160293529618283156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258812 (n + 1)) (A053700 (n + 1))

end

end A258807.P6160293529618283156

namespace A258807

/-- `A258812(n+1)%A053700(n+1)` -/
def P6160293529618283156.Spec : Prop :=
  ∀ n, P6160293529618283156.a n = A258807 (n + 1)

end A258807

/-! ## A258807.P10025275887511494762

`(A239442(n+1)-A002618(n+1))/A002618(n+1)`
-/

namespace A258807.P10025275887511494762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239442 (n + 1) - A002618 (n + 1) : ℚ) / (A002618 (n + 1) : ℚ)

end

end A258807.P10025275887511494762

namespace A258807

/-- `(A239442(n+1)-A002618(n+1))/A002618(n+1)` -/
def P10025275887511494762.Spec : Prop :=
  ∀ n, P10025275887511494762.a n = (A258807 (n + 1) : ℚ)

end A258807

/-! ## A258807.P5885211837555950315

`(A168661(n+1)-A168029(n+1))/A167963(n+1)`
-/

namespace A258807.P5885211837555950315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168661 (n + 1) - A168029 (n + 1) : ℚ) / (A167963 (n + 1) : ℚ)

end

end A258807.P5885211837555950315

namespace A258807

/-- `(A168661(n+1)-A168029(n+1))/A167963(n+1)` -/
def P5885211837555950315.Spec : Prop :=
  ∀ n, P5885211837555950315.a n = (A258807 (n + 1) : ℚ)

end A258807

/-! ## A258807.P3504471459074579305

`abs(A024003(n+1))`
-/

namespace A258807.P3504471459074579305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024003 (n + 1)|

end

end A258807.P3504471459074579305

namespace A258807

/-- `abs(A024003(n+1))` -/
def P3504471459074579305.Spec : Prop :=
  ∀ n, P3504471459074579305.a n = A258807 (n + 1)

end A258807

/-! ## A258807.P5921970392857687674

`Δ[A000539(n)-n]`
-/

namespace A258807.P5921970392857687674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258807.P5921970392857687674

namespace A258807

/-- `Δ[A000539(n)-n]` -/
def P5921970392857687674.Spec : Prop :=
  ∀ n, P5921970392857687674.a n = A258807 (n + 1)

end A258807

/-! ## A258807.P6645765129446172734

`n*A053699(n+1)`
-/

namespace A258807.P6645765129446172734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A053699 (n + 1)

end

end A258807.P6645765129446172734

namespace A258807

/-- `n*A053699(n+1)` -/
def P6645765129446172734.Spec : Prop :=
  ∀ n, P6645765129446172734.a n = A258807 (n + 1)

theorem P6645765129446172734.correct : P6645765129446172734.Spec := by
  intro n
  simp only [A258807, Nat.add_sub_cancel, A258807.P6645765129446172734.a, A258807.P3833737994083168200.a, A053699, A053699.P12401549741545410249.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258807

/-! ## A258807.P7941887878075353758

`floor(sqrt(A218133(n+1)))`
-/

namespace A258807.P7941887878075353758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A218133 (n + 1))

end

end A258807.P7941887878075353758

namespace A258807

/-- `floor(sqrt(A218133(n+1)))` -/
def P7941887878075353758.Spec : Prop :=
  ∀ n, P7941887878075353758.a n = A258807 (n + 1)

end A258807

/-!
# A258808: a(n) = n^7 - 1.

The programs for A258808, the canonical program `A258808.P6415706604125814936` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258808 has offset 1).

The definition of A258808 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^7-1` (program `A258808.P6415706604125814936`, by `A258808.P6415706604125814936.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A258808.P6415706604125814936

`(n+1)^7-1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A258808

/-- `(n+1)^7-1` -/
def P6415706604125814936.Spec : Prop :=
  ∀ n, P6415706604125814936.a n = A258808 (n + 1)

theorem P6415706604125814936.correct : P6415706604125814936.Spec := by
  intro n
  simp only [A258808, Nat.add_sub_cancel]

end A258808

/-! ## A258808.P17012495699740489910

`n*A053716(n+1)`
-/

namespace A258808.P17012495699740489910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A053716 (n + 1)

end

end A258808.P17012495699740489910

namespace A258808

/-- `n*A053716(n+1)` -/
def P17012495699740489910.Spec : Prop :=
  ∀ n, P17012495699740489910.a n = A258808 (n + 1)

theorem P17012495699740489910.correct : P17012495699740489910.Spec := by
  intro n
  simp only [A258808, Nat.add_sub_cancel, A258808.P17012495699740489910.a, A258808.P6415706604125814936.a, A053716, A053716.P6668910890302128601.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258808

/-! ## A258808.P5648813271368061166

`-A024005(n+1)`
-/

namespace A258808.P5648813271368061166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A024005 (n + 1)

end

end A258808.P5648813271368061166

namespace A258808

/-- `-A024005(n+1)` -/
def P5648813271368061166.Spec : Prop :=
  ∀ n, P5648813271368061166.a n = A258808 (n + 1)

theorem P5648813271368061166.correct : P5648813271368061166.Spec := by
  intro n
  simp only [A258808, Nat.add_sub_cancel, A258808.P5648813271368061166.a, A258808.P6415706604125814936.a, A024005, A024005.P8923362675459539356.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258808

/-! ## A258808.P8878104567430506907

`floor(cot((n+1)^-7))`
-/

namespace A258808.P8878104567430506907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot ((n + 1 : ℚ) ^ (-7 : ℤ) : ℝ)⌋

end

end A258808.P8878104567430506907

namespace A258808

/-- `floor(cot((n+1)^-7))` -/
def P8878104567430506907.Spec : Prop :=
  ∀ n, P8878104567430506907.a n = A258808 (n + 1)

end A258808

/-! ## A258808.P9682684922446795308

`xor(-(n+1)^7, -1)`
-/

namespace A258808.P9682684922446795308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-((n + 1) ^ 7 : ℤ)) (-1)

end

end A258808.P9682684922446795308

namespace A258808

/-- `xor(-(n+1)^7, -1)` -/
def P9682684922446795308.Spec : Prop :=
  ∀ n, P9682684922446795308.a n = A258808 (n + 1)

end A258808

/-! ## A258808.P14134367587119523470

`record[abs((1-n)^7)-1]`
-/

namespace A258808.P14134367587119523470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - (n : ℤ)) ^ 7| - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258808.P14134367587119523470

namespace A258808

/-- `record[abs((1-n)^7)-1]` -/
def P14134367587119523470.Spec : Prop :=
  ∀ n, P14134367587119523470.a n = A258808 (n + 1)

end A258808

/-! ## A258808.P519625623740248271

`A195859(n+1)/(n+1)`
-/

namespace A258808.P519625623740248271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195859 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A258808.P519625623740248271

namespace A258808

/-- `A195859(n+1)/(n+1)` -/
def P519625623740248271.Spec : Prop :=
  ∀ n, P519625623740248271.a n = (A258808 (n + 1) : ℚ)

end A258808

/-! ## A258808.P7971846293410559160

`floor(A258809(n+1)/(n+1))`
-/

namespace A258808.P7971846293410559160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A258809 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A258808.P7971846293410559160

namespace A258808

/-- `floor(A258809(n+1)/(n+1))` -/
def P7971846293410559160.Spec : Prop :=
  ∀ n, P7971846293410559160.a n = A258808 (n + 1)

end A258808

/-! ## A258808.P7109765216158871261

`n*((n+1)*A053700(n+1)+1)`
-/

namespace A258808.P7109765216158871261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n + 1 : ℤ) * A053700 (n + 1) + 1)

end

end A258808.P7109765216158871261

namespace A258808

/-- `n*((n+1)*A053700(n+1)+1)` -/
def P7109765216158871261.Spec : Prop :=
  ∀ n, P7109765216158871261.a n = A258808 (n + 1)

theorem P7109765216158871261.correct : P7109765216158871261.Spec := by
  intro n
  simp only [A258808, Nat.add_sub_cancel, A258808.P7109765216158871261.a, A258808.P6415706604125814936.a, A053700, A053700.P8220208722035167033.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258808

/-! ## A258808.P16375372105664070855

`(A001017(n+1)-(n+1)²)/(n+1)²`
-/

namespace A258808.P16375372105664070855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001017 (n + 1) - ((n + 1) ^ 2 : ℤ) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A258808.P16375372105664070855

namespace A258808

/-- `(A001017(n+1)-(n+1)²)/(n+1)²` -/
def P16375372105664070855.Spec : Prop :=
  ∀ n, P16375372105664070855.a n = (A258808 (n + 1) : ℚ)

end A258808

/-! ## A258808.P3789287911881916048

`(A239443(n+1)-A002618(n+1))/A002618(n+1)`
-/

namespace A258808.P3789287911881916048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239443 (n + 1) - A002618 (n + 1) : ℚ) / (A002618 (n + 1) : ℚ)

end

end A258808.P3789287911881916048

namespace A258808

/-- `(A239443(n+1)-A002618(n+1))/A002618(n+1)` -/
def P3789287911881916048.Spec : Prop :=
  ∀ n, P3789287911881916048.a n = (A258808 (n + 1) : ℚ)

end A258808

/-! ## A258808.P9807148638603378165

`(A306412(n+1)-A000010(n+1))/A000010(n+1)`
-/

namespace A258808.P9807148638603378165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306412 (n + 1) - A000010 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A258808.P9807148638603378165

namespace A258808

/-- `(A306412(n+1)-A000010(n+1))/A000010(n+1)` -/
def P9807148638603378165.Spec : Prop :=
  ∀ n, P9807148638603378165.a n = (A258808 (n + 1) : ℚ)

end A258808

/-! ## A258808.P10307599919240248972

`abs(A024005(n+1))`
-/

namespace A258808.P10307599919240248972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024005 (n + 1)|

end

end A258808.P10307599919240248972

namespace A258808

/-- `abs(A024005(n+1))` -/
def P10307599919240248972.Spec : Prop :=
  ∀ n, P10307599919240248972.a n = A258808 (n + 1)

end A258808

/-! ## A258808.P6241258458798539736

`Δ[A000541(n)-n]`
-/

namespace A258808.P6241258458798539736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000541 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258808.P6241258458798539736

namespace A258808

/-- `Δ[A000541(n)-n]` -/
def P6241258458798539736.Spec : Prop :=
  ∀ n, P6241258458798539736.a n = A258808 (n + 1)

end A258808

/-! ## A258808.P8775340015709830011

`Δ[∑[A001015(n)]-n]`
-/

namespace A258808.P8775340015709830011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258808.P8775340015709830011

namespace A258808

/-- `Δ[∑[A001015(n)]-n]` -/
def P8775340015709830011.Spec : Prop :=
  ∀ n, P8775340015709830011.a n = A258808 (n + 1)

end A258808

/-! ## A258808.P12765996252330528208

`abs(1-A001015(n+1))`
-/

namespace A258808.P12765996252330528208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A001015 (n + 1)|

end

end A258808.P12765996252330528208

namespace A258808

/-- `abs(1-A001015(n+1))` -/
def P12765996252330528208.Spec : Prop :=
  ∀ n, P12765996252330528208.a n = A258808 (n + 1)

end A258808

/-! ## A258808.P6695591878528042114

`n*(A228290(n+1)+1)`
-/

namespace A258808.P6695591878528042114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A228290 (n + 1) + 1)

end

end A258808.P6695591878528042114

namespace A258808

/-- `n*(A228290(n+1)+1)` -/
def P6695591878528042114.Spec : Prop :=
  ∀ n, P6695591878528042114.a n = A258808 (n + 1)

theorem P6695591878528042114.correct : P6695591878528042114.Spec := by
  intro n
  simp only [A258808, Nat.add_sub_cancel, A258808.P6695591878528042114.a, A258808.P6415706604125814936.a, A228290, A228290.P10265878406130030480.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258808

/-! ## A258808.P16161835350947673652

`n/(n+1)*A228291(n+1)`
-/

namespace A258808.P16161835350947673652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 1 : ℚ) * (A228291 (n + 1) : ℚ)

end

end A258808.P16161835350947673652

namespace A258808

/-- `n/(n+1)*A228291(n+1)` -/
def P16161835350947673652.Spec : Prop :=
  ∀ n, P16161835350947673652.a n = (A258808 (n + 1) : ℚ)

end A258808

/-! ## A258808.P8903081522535945663

`(A001016(n+1)-(n+1))/(n+1)`
-/

namespace A258808.P8903081522535945663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001016 (n + 1) - (n + 1 : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A258808.P8903081522535945663

namespace A258808

/-- `(A001016(n+1)-(n+1))/(n+1)` -/
def P8903081522535945663.Spec : Prop :=
  ∀ n, P8903081522535945663.a n = (A258808 (n + 1) : ℚ)

end A258808

/-! ## A258808.P15725485411350520784

`(A060890(n+1)-(n+2))/(n+1)`
-/

namespace A258808.P15725485411350520784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060890 (n + 1) - (n + 2 : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A258808.P15725485411350520784

namespace A258808

/-- `(A060890(n+1)-(n+2))/(n+1)` -/
def P15725485411350520784.Spec : Prop :=
  ∀ n, P15725485411350520784.a n = (A258808 (n + 1) : ℚ)

theorem P15725485411350520784.correct : P15725485411350520784.Spec := by
  intro n
  simp only [A258808, Nat.add_sub_cancel, A258808.P15725485411350520784.a, A258808.P6415706604125814936.a, A060890, A060890.P12762543378779748885.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258808

/-!
# A258809: a(n) = n^8 - 1.

The programs for A258809, the canonical program `A258809.P14956886538832011338` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258809 has offset 1).

The definition of A258809 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^8-1` (program `A258809.P14956886538832011338`, by `A258809.P14956886538832011338.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A258809.P14956886538832011338

`(n+1)^8-1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A258809

/-- `(n+1)^8-1` -/
def P14956886538832011338.Spec : Prop :=
  ∀ n, P14956886538832011338.a n = A258809 (n + 1)

theorem P14956886538832011338.correct : P14956886538832011338.Spec := by
  intro n
  simp only [A258809, Nat.add_sub_cancel]

end A258809

/-! ## A258809.P1309899050556151633

`-A024006(n+1)`
-/

namespace A258809.P1309899050556151633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A024006 (n + 1)

end

end A258809.P1309899050556151633

namespace A258809

/-- `-A024006(n+1)` -/
def P1309899050556151633.Spec : Prop :=
  ∀ n, P1309899050556151633.a n = A258809 (n + 1)

theorem P1309899050556151633.correct : P1309899050556151633.Spec := by
  intro n
  simp only [A258809, Nat.add_sub_cancel, A258809.P1309899050556151633.a, A258809.P14956886538832011338.a, A024006, A024006.P17069346260229546843.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258809

/-! ## A258809.P3687289397039989955

`record[(1-n)^8-1]`
-/

namespace A258809.P3687289397039989955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 8 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258809.P3687289397039989955

namespace A258809

/-- `record[(1-n)^8-1]` -/
def P3687289397039989955.Spec : Prop :=
  ∀ n, P3687289397039989955.a n = A258809 (n + 1)

end A258809

/-! ## A258809.P321472311152643084

`abs(1-xor(n, -1)^8)`
-/

namespace A258809.P321472311152643084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - Int.xor (n : ℤ) (-1) ^ 8|

end

end A258809.P321472311152643084

namespace A258809

/-- `abs(1-xor(n, -1)^8)` -/
def P321472311152643084.Spec : Prop :=
  ∀ n, P321472311152643084.a n = A258809 (n + 1)

end A258809

/-! ## A258809.P7381687654312184434

`xor(-1, -(n+1)^8)`
-/

namespace A258809.P7381687654312184434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-((n + 1) ^ 8 : ℤ))

end

end A258809.P7381687654312184434

namespace A258809

/-- `xor(-1, -(n+1)^8)` -/
def P7381687654312184434.Spec : Prop :=
  ∀ n, P7381687654312184434.a n = A258809 (n + 1)

end A258809

/-! ## A258809.P10888192194603003743

`floor(cot((n+1)^-4)²)`
-/

namespace A258809.P10888192194603003743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot ((n + 1 : ℚ) ^ (-4 : ℤ) : ℝ) ^ 2⌋

end

end A258809.P10888192194603003743

namespace A258809

/-- `floor(cot((n+1)^-4)²)` -/
def P10888192194603003743.Spec : Prop :=
  ∀ n, P10888192194603003743.a n = A258809 (n + 1)

end A258809

/-! ## A258809.P1218540444965939013

`round(cot((n+1)^-4)²)`
-/

namespace A258809.P1218540444965939013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot ((n + 1 : ℚ) ^ (-4 : ℤ) : ℝ) ^ 2)

end

end A258809.P1218540444965939013

namespace A258809

/-- `round(cot((n+1)^-4)²)` -/
def P1218540444965939013.Spec : Prop :=
  ∀ n, P1218540444965939013.a n = A258809 (n + 1)

end A258809

/-! ## A258809.P13800423342639624260

`cot(asin((n+1)^-4))²`
-/

namespace A258809.P13800423342639624260
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (Real.arcsin ((n + 1 : ℚ) ^ (-4 : ℤ) : ℝ)) ^ 2

end

end A258809.P13800423342639624260

namespace A258809

/-- `cot(asin((n+1)^-4))²` -/
def P13800423342639624260.Spec : Prop :=
  ∀ n, P13800423342639624260.a n = (A258809 (n + 1) : ℝ)

end A258809

/-! ## A258809.P7177936224491678805

`lcm(n, 1-(n+1)²²²)`
-/

namespace A258809.P7177936224491678805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (1 - ((((n + 1) ^ 2) ^ 2) ^ 2 : ℤ))

end

end A258809.P7177936224491678805

namespace A258809

/-- `lcm(n, 1-(n+1)²²²)` -/
def P7177936224491678805.Spec : Prop :=
  ∀ n, (P7177936224491678805.a n : ℤ) = A258809 (n + 1)

end A258809

/-! ## A258809.P14840434066534885710

`abs(1-record[(1-n)²²²])`
-/

namespace A258809.P14840434066534885710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - (n : ℤ)) ^ 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A258809.P14840434066534885710

namespace A258809

/-- `abs(1-record[(1-n)²²²])` -/
def P14840434066534885710.Spec : Prop :=
  ∀ n, P14840434066534885710.a n = A258809 (n + 1)

end A258809

/-! ## A258809.P14556588924704953820

`ceil(record[(1-n)²²²-ϕ])`
-/

namespace A258809.P14556588924704953820
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((((1 - (n : ℤ)) ^ 2) ^ 2) ^ 2 : ℝ) - Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A258809.P14556588924704953820

namespace A258809

/-- `ceil(record[(1-n)²²²-ϕ])` -/
def P14556588924704953820.Spec : Prop :=
  ∀ n, P14556588924704953820.a n = A258809 (n + 1)

end A258809

/-! ## A258809.P25585136753529877

`Δ[n²²²]+a(n-1)` with `a(0)=0`
-/

namespace A258809.P25585136753529877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + a (n - 1)

end

end A258809.P25585136753529877

namespace A258809

/-- `Δ[n²²²]+a(n-1)` -/
def P25585136753529877.Spec : Prop :=
  ∀ n, P25585136753529877.a n = A258809 (n + 1)

theorem P25585136753529877.correct : P25585136753529877.Spec := by
  intro n
  induction n with
  | zero => simp [A258809, A258809.P25585136753529877.f1, A258809.P25585136753529877.a, A258809.P14956886538832011338.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A258809, Nat.add_sub_cancel, A258809.P25585136753529877.f1, A258809.P25585136753529877.a, A258809.P14956886538832011338.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A258809

/-! ## A258809.P7256017363910960875

`∑[a(n-1)+2]²²-1` with `a(0)=1`
-/

namespace A258809.P7256017363910960875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2 : ℕ) : ℤ) - 1

end

end A258809.P7256017363910960875

namespace A258809

/-- `∑[a(n-1)+2]²²-1` -/
def P7256017363910960875.Spec : Prop :=
  ∀ n, P7256017363910960875.a n = A258809 (n + 1)

end A258809

/-! ## A258809.P14765431459989386132

`gcd(n+1, a(n-1))²²²-1` with `a(0)=0`
-/

namespace A258809.P14765431459989386132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (((Int.gcd (n + 1 : ℤ) (a (n - 1)) ^ 2) ^ 2) ^ 2 : ℤ) - 1

end

end A258809.P14765431459989386132

namespace A258809

/-- `gcd(n+1, a(n-1))²²²-1` -/
def P14765431459989386132.Spec : Prop :=
  ∀ n, P14765431459989386132.a n = A258809 (n + 1)

end A258809

/-! ## A258809.P2908278975423912718

`A196289(n+1)/(n+1)`
-/

namespace A258809.P2908278975423912718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196289 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A258809.P2908278975423912718

namespace A258809

/-- `A196289(n+1)/(n+1)` -/
def P2908278975423912718.Spec : Prop :=
  ∀ n, P2908278975423912718.a n = (A258809 (n + 1) : ℚ)

end A258809

/-! ## A258809.P13315042854247188544

`abs(1-A000290(n+1)²²)`
-/

namespace A258809.P13315042854247188544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A000290 (n + 1) ^ 2) ^ 2|

end

end A258809.P13315042854247188544

namespace A258809

/-- `abs(1-A000290(n+1)²²)` -/
def P13315042854247188544.Spec : Prop :=
  ∀ n, P13315042854247188544.a n = A258809 (n + 1)

end A258809

/-! ## A258809.P17051631169338820105

`(A258810(n+1)-n)/(n+1)`
-/

namespace A258809.P17051631169338820105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258810 (n + 1) - (n : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A258809.P17051631169338820105

namespace A258809

/-- `(A258810(n+1)-n)/(n+1)` -/
def P17051631169338820105.Spec : Prop :=
  ∀ n, P17051631169338820105.a n = (A258809 (n + 1) : ℚ)

theorem P17051631169338820105.correct : P17051631169338820105.Spec := by
  intro n
  simp only [A258809, Nat.add_sub_cancel, A258809.P17051631169338820105.a, A258809.P14956886538832011338.a, A258810, A258810.P14322939412107731444.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258809

/-! ## A258809.P7714361175480176512

`(A001017(n+1)-(n+1))/(n+1)`
-/

namespace A258809.P7714361175480176512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001017 (n + 1) - (n + 1 : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A258809.P7714361175480176512

namespace A258809

/-- `(A001017(n+1)-(n+1))/(n+1)` -/
def P7714361175480176512.Spec : Prop :=
  ∀ n, P7714361175480176512.a n = (A258809 (n + 1) : ℚ)

end A258809

/-! ## A258809.P3098249511024445234

`(A123865(n+1)+2)*A123865(n+1)`
-/

namespace A258809.P3098249511024445234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A123865 (n + 1) + 2) * A123865 (n + 1)

end

end A258809.P3098249511024445234

namespace A258809

/-- `(A123865(n+1)+2)*A123865(n+1)` -/
def P3098249511024445234.Spec : Prop :=
  ∀ n, P3098249511024445234.a n = A258809 (n + 1)

theorem P3098249511024445234.correct : P3098249511024445234.Spec := by
  intro n
  simp only [A258809, Nat.add_sub_cancel, A258809.P3098249511024445234.a, A258809.P14956886538832011338.a, A123865, A123865.P509384507853173445.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258809

/-! ## A258809.P11168083543452235345

`(A239443(n+1)-A000010(n+1))/A000010(n+1)`
-/

namespace A258809.P11168083543452235345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239443 (n + 1) - A000010 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A258809.P11168083543452235345

namespace A258809

/-- `(A239443(n+1)-A000010(n+1))/A000010(n+1)` -/
def P11168083543452235345.Spec : Prop :=
  ∀ n, P11168083543452235345.a n = (A258809 (n + 1) : ℚ)

end A258809

/-!
# A258810: a(n) = n^9 - 1.

The programs for A258810, the canonical program `A258810.P14322939412107731444` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258810 has offset 1).

The definition of A258810 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^9-1` (program `A258810.P14322939412107731444`, by `A258810.P14322939412107731444.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A258810.P14322939412107731444

`(n+1)^9-1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A258810

/-- `(n+1)^9-1` -/
def P14322939412107731444.Spec : Prop :=
  ∀ n, P14322939412107731444.a n = A258810 (n + 1)

theorem P14322939412107731444.correct : P14322939412107731444.Spec := by
  intro n
  simp only [A258810, Nat.add_sub_cancel]

end A258810

/-! ## A258810.P10165072415264802472

`floor(cot((n+1)^-9))`
-/

namespace A258810.P10165072415264802472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot ((n + 1 : ℚ) ^ (-9 : ℤ) : ℝ)⌋

end

end A258810.P10165072415264802472

namespace A258810

/-- `floor(cot((n+1)^-9))` -/
def P10165072415264802472.Spec : Prop :=
  ∀ n, P10165072415264802472.a n = A258810 (n + 1)

end A258810

/-! ## A258810.P8615546183171939097

`xor(-1, -(n+1)^9)`
-/

namespace A258810.P8615546183171939097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-((n + 1) ^ 9 : ℤ))

end

end A258810.P8615546183171939097

namespace A258810

/-- `xor(-1, -(n+1)^9)` -/
def P8615546183171939097.Spec : Prop :=
  ∀ n, P8615546183171939097.a n = A258810 (n + 1)

end A258810

/-! ## A258810.P6130184398909607386

`record[abs((1-n)^9)-1]`
-/

namespace A258810.P6130184398909607386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - (n : ℤ)) ^ 9| - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258810.P6130184398909607386

namespace A258810

/-- `record[abs((1-n)^9)-1]` -/
def P6130184398909607386.Spec : Prop :=
  ∀ n, P6130184398909607386.a n = A258810 (n + 1)

end A258810

/-! ## A258810.P8168940273906848729

`∑{#}[8, (1+n)^#]*n`
-/

namespace A258810.P8168940273906848729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ k ∈ Finset.range (f1 n + 1), (1 + n) ^ k) * n

end

end A258810.P8168940273906848729

namespace A258810

/-- `∑{#}[8, (1+n)^#]*n` -/
def P8168940273906848729.Spec : Prop :=
  ∀ n, (P8168940273906848729.a n : ℤ) = A258810 (n + 1)

end A258810

/-! ## A258810.P10278528851223039935

`Δ[∑[A001017(n)]-n]`
-/

namespace A258810.P10278528851223039935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258810.P10278528851223039935

namespace A258810

/-- `Δ[∑[A001017(n)]-n]` -/
def P10278528851223039935.Spec : Prop :=
  ∀ n, P10278528851223039935.a n = A258810 (n + 1)

end A258810

/-! ## A258810.P13492323781133275755

`A196291(n+1)/(n+1)`
-/

namespace A258810.P13492323781133275755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196291 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A258810.P13492323781133275755

namespace A258810

/-- `A196291(n+1)/(n+1)` -/
def P13492323781133275755.Spec : Prop :=
  ∀ n, P13492323781133275755.a n = (A258810 (n + 1) : ℚ)

end A258810

/-! ## A258810.P14606981496668139345

`floor(A123867(n+1)/(n+1))`
-/

namespace A258810.P14606981496668139345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A123867 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A258810.P14606981496668139345

namespace A258810

/-- `floor(A123867(n+1)/(n+1))` -/
def P14606981496668139345.Spec : Prop :=
  ∀ n, P14606981496668139345.a n = A258810 (n + 1)

end A258810

/-! ## A258810.P5761710490711695559

`(A170802(n+1)-A168119(n+1))/A168119(n+1)`
-/

namespace A258810.P5761710490711695559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170802 (n + 1) - A168119 (n + 1) : ℚ) / (A168119 (n + 1) : ℚ)

end

end A258810.P5761710490711695559

namespace A258810

/-- `(A170802(n+1)-A168119(n+1))/A168119(n+1)` -/
def P5761710490711695559.Spec : Prop :=
  ∀ n, P5761710490711695559.a n = (A258810 (n + 1) : ℚ)

end A258810

/-! ## A258810.P6168807731161855433

`abs(A024007(n+1))`
-/

namespace A258810.P6168807731161855433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024007 (n + 1)|

end

end A258810.P6168807731161855433

namespace A258810

/-- `abs(A024007(n+1))` -/
def P6168807731161855433.Spec : Prop :=
  ∀ n, P6168807731161855433.a n = A258810 (n + 1)

end A258810

/-! ## A258810.P8795237914120162885

`Δ[-∑[A024007(n)]]`
-/

namespace A258810.P8795237914120162885
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024007 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258810.P8795237914120162885

namespace A258810

/-- `Δ[-∑[A024007(n)]]` -/
def P8795237914120162885.Spec : Prop :=
  ∀ n, P8795237914120162885.a n = A258810 (n + 1)

end A258810

/-! ## A258810.P8757370059208818840

`n*A102909(n+1)`
-/

namespace A258810.P8757370059208818840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A102909 (n + 1)

end

end A258810.P8757370059208818840

namespace A258810

/-- `n*A102909(n+1)` -/
def P8757370059208818840.Spec : Prop :=
  ∀ n, P8757370059208818840.a n = A258810 (n + 1)

end A258810

/-! ## A258810.P6507188495015357129

`n*(A228292(n+1)+1)`
-/

namespace A258810.P6507188495015357129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A228292 (n + 1) + 1)

end

end A258810.P6507188495015357129

namespace A258810

/-- `n*(A228292(n+1)+1)` -/
def P6507188495015357129.Spec : Prop :=
  ∀ n, P6507188495015357129.a n = A258810 (n + 1)

end A258810

/-! ## A258810.P9890033667135510871

`n/(n+1)*A228293(n+1)`
-/

namespace A258810.P9890033667135510871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 1 : ℚ) * (A228293 (n + 1) : ℚ)

end

end A258810.P9890033667135510871

namespace A258810

/-- `n/(n+1)*A228293(n+1)` -/
def P9890033667135510871.Spec : Prop :=
  ∀ n, P9890033667135510871.a n = (A258810 (n + 1) : ℚ)

end A258810

/-! ## A258810.P4820939540626948419

`(A000578(n+1)-1)*A060883(n+1)`
-/

namespace A258810.P4820939540626948419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (n + 1) - 1) * A060883 (n + 1)

end

end A258810.P4820939540626948419

namespace A258810

/-- `(A000578(n+1)-1)*A060883(n+1)` -/
def P4820939540626948419.Spec : Prop :=
  ∀ n, P4820939540626948419.a n = A258810 (n + 1)

theorem P4820939540626948419.correct : P4820939540626948419.Spec := by
  intro n
  simp only [A258810, Nat.add_sub_cancel, A258810.P4820939540626948419.a, A258810.P14322939412107731444.a, A000578, A000578.P12162961755414704816.a, A060883, A060883.P9775535391316657163.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258810

/-! ## A258810.P11675131631640181840

`n*(A053717(n+1)+A001016(n+1))`
-/

namespace A258810.P11675131631640181840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A053717 (n + 1) + A001016 (n + 1))

end

end A258810.P11675131631640181840

namespace A258810

/-- `n*(A053717(n+1)+A001016(n+1))` -/
def P11675131631640181840.Spec : Prop :=
  ∀ n, P11675131631640181840.a n = A258810 (n + 1)

theorem P11675131631640181840.correct : P11675131631640181840.Spec := by
  intro n
  simp only [A258810, Nat.add_sub_cancel, A258810.P11675131631640181840.a, A258810.P14322939412107731444.a, A001016, A001016.P10257285112668202493.a, A053717, A053717.P5334508227328252156.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258810

/-! ## A258810.P17029509785751544531

`n*(A228293(n+1)+A024007(n+1))`
-/

namespace A258810.P17029509785751544531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A228293 (n + 1) + A024007 (n + 1))

end

end A258810.P17029509785751544531

namespace A258810

/-- `n*(A228293(n+1)+A024007(n+1))` -/
def P17029509785751544531.Spec : Prop :=
  ∀ n, P17029509785751544531.a n = A258810 (n + 1)

end A258810

/-! ## A258810.P3091803799182041062

`n*(A228291(n+1)+A060890(n+1))`
-/

namespace A258810.P3091803799182041062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A228291 (n + 1) + A060890 (n + 1))

end

end A258810.P3091803799182041062

namespace A258810

/-- `n*(A228291(n+1)+A060890(n+1))` -/
def P3091803799182041062.Spec : Prop :=
  ∀ n, P3091803799182041062.a n = A258810 (n + 1)

end A258810

/-! ## A258810.P12529643061851114063

`(A008456(n+1)-A000578(n+1))/A000578(n+1)`
-/

namespace A258810.P12529643061851114063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008456 (n + 1) - A000578 (n + 1) : ℚ) / (A000578 (n + 1) : ℚ)

end

end A258810.P12529643061851114063

namespace A258810

/-- `(A008456(n+1)-A000578(n+1))/A000578(n+1)` -/
def P12529643061851114063.Spec : Prop :=
  ∀ n, P12529643061851114063.a n = (A258810 (n + 1) : ℚ)

end A258810

/-! ## A258810.P2000551433771548776

`(A010802(n+1)-A000584(n+1))/A000584(n+1)`
-/

namespace A258810.P2000551433771548776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010802 (n + 1) - A000584 (n + 1) : ℚ) / (A000584 (n + 1) : ℚ)

end

end A258810.P2000551433771548776

namespace A258810

/-- `(A010802(n+1)-A000584(n+1))/A000584(n+1)` -/
def P2000551433771548776.Spec : Prop :=
  ∀ n, P2000551433771548776.a n = (A258810 (n + 1) : ℚ)

end A258810

/-!
# A258811: Least prime p with p+2 prime such that n = (q+1)/(p+1) for some prime q with q+2 also prime.

The programs for A258811, there is no canonical definition to state claims against.
-/

/-! ## A258811.P15706429749512555565

`A185145(1+n)-1`
-/

namespace A258811.P15706429749512555565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185145 (1 + n) - 1

end

end A258811.P15706429749512555565

/-! ## A258811.P13509566182083885180

`-1+A185145(n+1)`
-/

namespace A258811.P13509566182083885180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A185145 (n + 1)

end

end A258811.P13509566182083885180

/-! ## A258811.P5692337997387953090

`A002374(A185145(n+1))`
-/

namespace A258811.P5692337997387953090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002374 (A185145 (n + 1)).toNat

end

end A258811.P5692337997387953090

/-! ## A258811.P9994985575120340960

`A090104(A258836(n+1))`
-/

namespace A258811.P9994985575120340960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090104 (A258836 (n + 1)).toNat

end

end A258811.P9994985575120340960

/-!
# A258812: a(n) = n^11 - 1.

The programs for A258812, the canonical program `A258812.P3864260496835893678` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258812 has offset 1).

The definition of A258812 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^11-1` (program `A258812.P3864260496835893678`, by `A258812.P3864260496835893678.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A258812.P3864260496835893678

`(n+1)^11-1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A258812

/-- `(n+1)^11-1` -/
def P3864260496835893678.Spec : Prop :=
  ∀ n, P3864260496835893678.a n = A258812 (n + 1)

theorem P3864260496835893678.correct : P3864260496835893678.Spec := by
  intro n
  simp only [A258812, Nat.add_sub_cancel]

end A258812

/-! ## A258812.P6671004696898168000

`-A024009(n+1)`
-/

namespace A258812.P6671004696898168000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A024009 (n + 1)

end

end A258812.P6671004696898168000

namespace A258812

/-- `-A024009(n+1)` -/
def P6671004696898168000.Spec : Prop :=
  ∀ n, P6671004696898168000.a n = A258812 (n + 1)

theorem P6671004696898168000.correct : P6671004696898168000.Spec := by
  intro n
  simp only [A258812, Nat.add_sub_cancel, A258812.P6671004696898168000.a, A258812.P3864260496835893678.a, A024009, A024009.P3068937921533904823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258812

/-! ## A258812.P12574050255339181768

`abs(xor(n, -1)^11+1)`
-/

namespace A258812.P12574050255339181768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-1) ^ 11 + 1|

end

end A258812.P12574050255339181768

namespace A258812

/-- `abs(xor(n, -1)^11+1)` -/
def P12574050255339181768.Spec : Prop :=
  ∀ n, P12574050255339181768.a n = A258812 (n + 1)

end A258812

/-! ## A258812.P16898600388691941308

`xor(-1, -(n+1)^11)`
-/

namespace A258812.P16898600388691941308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-((n + 1) ^ 11 : ℤ))

end

end A258812.P16898600388691941308

namespace A258812

/-- `xor(-1, -(n+1)^11)` -/
def P16898600388691941308.Spec : Prop :=
  ∀ n, P16898600388691941308.a n = A258812 (n + 1)

end A258812

/-! ## A258812.P16807501118598271426

`record[abs(1-n)^11-1]`
-/

namespace A258812.P16807501118598271426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| ^ 11 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258812.P16807501118598271426

namespace A258812

/-- `record[abs(1-n)^11-1]` -/
def P16807501118598271426.Spec : Prop :=
  ∀ n, P16807501118598271426.a n = A258812 (n + 1)

end A258812

/-! ## A258812.P14419975339238769733

`∑{#}[10, (n+1)^#]*n`
-/

namespace A258812.P14419975339238769733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ k ∈ Finset.range (f1 n + 1), (n + 1) ^ k) * n

end

end A258812.P14419975339238769733

namespace A258812

/-- `∑{#}[10, (n+1)^#]*n` -/
def P14419975339238769733.Spec : Prop :=
  ∀ n, (P14419975339238769733.a n : ℤ) = A258812 (n + 1)

end A258812

/-! ## A258812.P4608583411013200029

`lcm(n, (-(n+1))^11+1)`
-/

namespace A258812.P4608583411013200029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((-(n + 1 : ℤ)) ^ 11 + 1)

end

end A258812.P4608583411013200029

namespace A258812

/-- `lcm(n, (-(n+1))^11+1)` -/
def P4608583411013200029.Spec : Prop :=
  ∀ n, (P4608583411013200029.a n : ℤ) = A258812 (n + 1)

end A258812

/-! ## A258812.P6690914628659021503

`floor(A123868(n+1)/(n+1))`
-/

namespace A258812.P6690914628659021503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A123868 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A258812.P6690914628659021503

namespace A258812

/-- `floor(A123868(n+1)/(n+1))` -/
def P6690914628659021503.Spec : Prop :=
  ∀ n, P6690914628659021503.a n = A258812 (n + 1)

end A258812

/-! ## A258812.P5000822417228232866

`abs(A024009(n+1))`
-/

namespace A258812.P5000822417228232866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024009 (n + 1)|

end

end A258812.P5000822417228232866

namespace A258812

/-- `abs(A024009(n+1))` -/
def P5000822417228232866.Spec : Prop :=
  ∀ n, P5000822417228232866.a n = A258812 (n + 1)

end A258812

/-! ## A258812.P10540184896062364706

`Δ[-∑[A024009(n)]]`
-/

namespace A258812.P10540184896062364706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024009 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258812.P10540184896062364706

namespace A258812

/-- `Δ[-∑[A024009(n)]]` -/
def P10540184896062364706.Spec : Prop :=
  ∀ n, P10540184896062364706.a n = A258812 (n + 1)

end A258812

/-! ## A258812.P1115411650794106721

`n*A060885(n+1)`
-/

namespace A258812.P1115411650794106721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A060885 (n + 1)

end

end A258812.P1115411650794106721

namespace A258812

/-- `n*A060885(n+1)` -/
def P1115411650794106721.Spec : Prop :=
  ∀ n, P1115411650794106721.a n = A258812 (n + 1)

end A258812

/-! ## A258812.P16122420583022665494

`abs(1-A008455(n+1))`
-/

namespace A258812.P16122420583022665494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A008455 (n + 1)|

end

end A258812.P16122420583022665494

namespace A258812

/-- `abs(1-A008455(n+1))` -/
def P16122420583022665494.Spec : Prop :=
  ∀ n, P16122420583022665494.a n = A258812 (n + 1)

end A258812

/-! ## A258812.P4695575271851199285

`n*(A228294(n+1)+1)`
-/

namespace A258812.P4695575271851199285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A228294 (n + 1) + 1)

end

end A258812.P4695575271851199285

namespace A258812

/-- `n*(A228294(n+1)+1)` -/
def P4695575271851199285.Spec : Prop :=
  ∀ n, P4695575271851199285.a n = A258812 (n + 1)

end A258812

/-! ## A258812.P9717877963932439225

`(A010801(n+1)-(n+1)²)/(n+1)²`
-/

namespace A258812.P9717877963932439225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010801 (n + 1) - ((n + 1) ^ 2 : ℤ) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A258812.P9717877963932439225

namespace A258812

/-- `(A010801(n+1)-(n+1)²)/(n+1)²` -/
def P9717877963932439225.Spec : Prop :=
  ∀ n, P9717877963932439225.a n = (A258812 (n + 1) : ℚ)

end A258812

/-! ## A258812.P11036741734340290392

`A024009(n+1)*A057428(n)`
-/

namespace A258812.P11036741734340290392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024009 (n + 1) * A057428 n

end

end A258812.P11036741734340290392

namespace A258812

/-- `A024009(n+1)*A057428(n)` -/
def P11036741734340290392.Spec : Prop :=
  ∀ n, P11036741734340290392.a n = A258812 (n + 1)

end A258812

/-! ## A258812.P15391440263166050333

`n*(A103623(n+1)+A008454(n+1))`
-/

namespace A258812.P15391440263166050333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A103623 (n + 1) + A008454 (n + 1))

end

end A258812.P15391440263166050333

namespace A258812

/-- `n*(A103623(n+1)+A008454(n+1))` -/
def P15391440263166050333.Spec : Prop :=
  ∀ n, P15391440263166050333.a n = A258812 (n + 1)

theorem P15391440263166050333.correct : P15391440263166050333.Spec := by
  intro n
  simp only [A258812, Nat.add_sub_cancel, A258812.P15391440263166050333.a, A258812.P3864260496835893678.a, A008454, A008454.P6486498320967950731.a, A103623, A103623.P4185738790634728714.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258812

/-!
# A258817: a(n) = (!0 + !1 +... + !(n-1)) mod n.

The programs for A258817, there is no canonical definition to state claims against.
-/

/-! ## A258817.P1402518177900772214

`A173184(n)%(n+1)`
-/

namespace A258817.P1402518177900772214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173184 n) (n + 1 : ℤ)

end

end A258817.P1402518177900772214

/-! ## A258817.P17573183276312387198

`∑[A000166(n)]%(n+1)`
-/

namespace A258817.P17573183276312387198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A258817.P17573183276312387198

/-! ## A258817.P7043996482174636310

`∑[abs(A182386(n))]%(n+1)`
-/

namespace A258817.P7043996482174636310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182386 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A258817.P7043996482174636310

/-! ## A258817.P8958462524401627678

`∑[A008290(∑[n])]%(n+1)`
-/

namespace A258817.P8958462524401627678
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A258817.P8958462524401627678

/-! ## A258817.P11147412687366106948

`∑[A068106(∑[n])]%(n+1)`
-/

namespace A258817.P11147412687366106948
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A258817.P11147412687366106948

/-! ## A258817.P11394560824740881736

`∑[A060475(A000096(n))]%(n+1)`
-/

namespace A258817.P11394560824740881736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (A000096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A258817.P11394560824740881736

/-! ## A258817.P1247257587999794505

`∑[A216779(n)+A216778(n)]%(n+1)`
-/

namespace A258817.P1247257587999794505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216779 n + A216778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A258817.P1247257587999794505

/-! ## A258817.P10375858238079904048

`∑[A002741(n+1)+A002741(n)]%(n+1)`
-/

namespace A258817.P10375858238079904048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002741 (n + 1) + A002741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A258817.P10375858238079904048

/-! ## A258817.P1825590352870759441

`∑[∑[A000255(n)]]%(n+1)`
-/

namespace A258817.P1825590352870759441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000255 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A258817.P1825590352870759441

/-! ## A258817.P4267698573200823217

`∑[A000142(n)-A002467(n)]%(n+1)`
-/

namespace A258817.P4267698573200823217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A002467 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A258817.P4267698573200823217

/-!
# A258818: a(n) = (!0 + !1 + ... + !(p-1)) mod p, where p = prime(n).

The programs for A258818, there is no canonical definition to state claims against.
-/

/-! ## A258818.P4674794498714215333

`A258817(p?[comp[n²]])`
-/

namespace A258818.P4674794498714215333
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258817 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A258818.P4674794498714215333

/-!
# A258820: Reversed rows of A178252 presented as diagonals of an irregular triangle.

The programs for A258820, there is no canonical definition to state claims against.
-/

/-! ## A258820.P1051590077873519905

`A011973(n)/gcd(A011973(n), A122197(n+1))`
-/

namespace A258820.P1051590077873519905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011973 n : ℚ) / (Int.gcd (A011973 n) (A122197 (n + 1)) : ℚ)

end

end A258820.P1051590077873519905

/-! ## A258820.P17097060366037945930

`A178252(A056536(n+1))`
-/

namespace A258820.P17097060366037945930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178252 (A056536 (n + 1)).toNat

end

end A258820.P17097060366037945930

/-! ## A258820.P1063273189043948899

`gcd(A180185(n), A289632(n+2))`
-/

namespace A258820.P1063273189043948899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A180185 n) (A289632 (n + 2))

end

end A258820.P1063273189043948899

/-! ## A258820.P10701877359096516209

`gcd(A011973(n), A317016(A049068(n+1)))`
-/

namespace A258820.P10701877359096516209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A011973 n) (A317016 (A049068 (n + 1)).toNat)

end

end A258820.P10701877359096516209

/-!
# A258822: Number of times that k iterations of n under the '3x+1' map yield k for some k.

The programs for A258822, there is no canonical definition to state claims against.
-/

/-! ## A258822.P4662801266039295258

`A366247(A270339(n+3)-A047486(n+1))`
-/

namespace A258822.P4662801266039295258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366247 (A270339 (n + 3) - A047486 (n + 1)).toNat

end

end A258822.P4662801266039295258

/-! ## A258822.P4124410637351834425

`A050700(A160573(n))%A225332(3*(n+1))`
-/

namespace A258822.P4124410637351834425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050700 (A160573 n).toNat) (A225332 (3 * (n + 1)))

end

end A258822.P4124410637351834425

/-!
# A258823: Numbers m such that k iterations of m under the '3x+1' map yield k for some k.

The programs for A258823, there is no canonical definition to state claims against.
-/

/-! ## A258823.P7289687786261344013

`lt[0, A258822(n+1)]+1`
-/

namespace A258823.P7289687786261344013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258822 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A258823.P7289687786261344013

/-! ## A258823.P562836712845890616

`eq[1, A000010(a(A258822(n)))]` with `a(0)=3`
-/

namespace A258823.P562836712845890616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A258822 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258823.P562836712845890616

/-! ## A258823.P5667299853051514583

`eq[1, A000045(a(A258822(n)))]` with `a(0)=3`
-/

namespace A258823.P5667299853051514583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A258822 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258823.P5667299853051514583

/-! ## A258823.P6919096248166026248

`eq[2, A000005(a(A258822(n)))]` with `a(0)=4`
-/

namespace A258823.P6919096248166026248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A000005 (f2 (A258822 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258823.P6919096248166026248

/-! ## A258823.P9036681276291799010

`lt[2, A000203(a(A258822(n)))]` with `a(0)=1, a(1)=2`
-/

namespace A258823.P9036681276291799010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  A000203 (f2 (A258822 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A258823.P9036681276291799010

/-!
# A258825: a(n) = Number of times the k-th term is equal to k in the modified Collatz trajectory of n, when counting the initial term n as the term zero: n, A014682(n), A014682(A014682(n)), ...

The programs for A258825, there is no canonical definition to state claims against.
-/

/-! ## A258825.P17253350855844277461

`A258769(∑[2-xor(1, a(n-1))])` with `a(0)=2`
-/

namespace A258825.P17253350855844277461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  2 - Int.xor 1 (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258769 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A258825.P17253350855844277461

/-!
# A258826: Numbers m such that k iterations of m under the modified Collatz function yield k for some k.

The programs for A258826, there is no canonical definition to state claims against.
-/

/-! ## A258826.P3117647868631892620

`lt[0, A258825(n+1)]+1`
-/

namespace A258826.P3117647868631892620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258825 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A258826.P3117647868631892620

/-! ## A258826.P17230251688824516926

`lt[0, A258825(A028310(n))]`
-/

namespace A258826.P17230251688824516926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258825 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A258826.P17230251688824516926

/-! ## A258826.P13214528135831871897

`1-A001489(record[n^A258825(n+1)])`
-/

namespace A258826.P13214528135831871897
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A258825 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A258826.P13214528135831871897

/-! ## A258826.P17263262281855403949

`A008619(2*record[n^A258825(n+1)])`
-/

namespace A258826.P17263262281855403949
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A258825 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway (2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A258826.P17263262281855403949

/-! ## A258826.P12257513833644772867

`A008611(3*record[n^A258825(n+1)])`
-/

namespace A258826.P12257513833644772867
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A258825 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (SequenceMachineLib.roundAway (3 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A258826.P12257513833644772867

/-!
# A258827: Smallest m such that A258767(m) = n.

The programs for A258827, there is no canonical definition to state claims against.
-/

/-! ## A258827.P16311982442444915334

`fo[A258767(n+1)-1]+1`
-/

namespace A258827.P16311982442444915334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258767 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A258827.P16311982442444915334

/-!
# A258829: Number T(n,k) of permutations p of [n] such that the up-down signature of 0,p has nonnegative partial sums with a maximal value of k; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A258829, there is no canonical definition to state claims against.
-/

/-! ## A258829.P3180816394251215401

`A345913(A064045(n)+1)`
-/

namespace A258829.P3180816394251215401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345913 (A064045 n + 1).toNat

end

end A258829.P3180816394251215401

/-! ## A258829.P12153527351768286386

`A358997(A266861(n+2))`
-/

namespace A258829.P12153527351768286386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358997 (A266861 (n + 2)).toNat

end

end A258829.P12153527351768286386

/-! ## A258829.P3189262794192075386

`A108611(6*A064045(n))`
-/

namespace A258829.P3189262794192075386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (6 * A064045 n).toNat

end

end A258829.P3189262794192075386

/-! ## A258829.P8039248717042129337

`A347520(A064045(n)+n)-n`
-/

namespace A258829.P8039248717042129337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (A064045 n + (n : ℤ)).toNat - (n : ℤ)

end

end A258829.P8039248717042129337

/-! ## A258829.P3711214141636956334

`A084269(n+1)-A124761(A308292(n))`
-/

namespace A258829.P3711214141636956334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084269 (n + 1) - A124761 (A308292 n).toNat

end

end A258829.P3711214141636956334

/-!
# A258830: Number of permutations p of [n] such that the up-down signature of 0,p has nonnegative partial sums.

The programs for A258830, there is no canonical definition to state claims against.
-/

/-! ## A258830.P2966166761763750300

`A262163(∑[4*n])`
-/

namespace A258830.P2966166761763750300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262163 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A258830.P2966166761763750300

/-!
# A258831: Expansion of (psi(-x^3) * f(-x, x^2))^2 in powers of x where psi(), f(,) are Ramanujan theta functions.

The programs for A258831, the canonical program `A258831.P9209545369141060216` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258831 has offset 0).

The definition of A258831 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A258831.P9209545369141060216

`(-1)^n*A098098(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A258831

/-- `(-1)^n*A098098(n)` -/
def P9209545369141060216.Spec : Prop :=
  ∀ n, P9209545369141060216.a n = A258831 n

theorem P9209545369141060216.correct : P9209545369141060216.Spec := by
  intro n
  simp only [A258831]

end A258831

/-! ## A258831.P10626426271644824923

`(-1)^n*A000203(6*n+5)/6`
-/

namespace A258831.P10626426271644824923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n * A000203 (6 * n + 5) : ℚ) / 6

end

end A258831.P10626426271644824923

namespace A258831

/-- `(-1)^n*A000203(6*n+5)/6` -/
def P10626426271644824923.Spec : Prop :=
  ∀ n, P10626426271644824923.a n = (A258831 n : ℚ)

end A258831

/-! ## A258831.P5670935860704941398

`A208435(2*n+1)`
-/

namespace A258831.P5670935860704941398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208435 (2 * n + 1)

end

end A258831.P5670935860704941398

namespace A258831

/-- `A208435(2*n+1)` -/
def P5670935860704941398.Spec : Prop :=
  ∀ n, P5670935860704941398.a n = A258831 n

end A258831

/-! ## A258831.P5139346288908013112

`A208457(2*n+1)`
-/

namespace A258831.P5139346288908013112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208457 (2 * n + 1)

end

end A258831.P5139346288908013112

namespace A258831

/-- `A208457(2*n+1)` -/
def P5139346288908013112.Spec : Prop :=
  ∀ n, P5139346288908013112.a n = A258831 n

end A258831

/-! ## A258831.P17568280333559799943

`∑{d}[6*(n+1)-1, #]/6*(-1)^n`
-/

namespace A258831.P17568280333559799943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (n + 1) : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℚ) / 6 * ((-1) ^ n : ℚ)

end

end A258831.P17568280333559799943

namespace A258831

/-- `∑{d}[6*(n+1)-1, #]/6*(-1)^n` -/
def P17568280333559799943.Spec : Prop :=
  ∀ n, P17568280333559799943.a n = (A258831 n : ℚ)

end A258831

/-! ## A258831.P9204673525200278588

`2*∑{d}[6*n+5, #]/12*(-1)^n`
-/

namespace A258831.P9204673525200278588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ d ∈ Nat.divisors (f1 n), d) : ℕ) : ℚ) / 12 * ((-1) ^ n : ℚ)

end

end A258831.P9204673525200278588

namespace A258831

/-- `2*∑{d}[6*n+5, #]/12*(-1)^n` -/
def P9204673525200278588.Spec : Prop :=
  ∀ n, P9204673525200278588.a n = (A258831 n : ℚ)

end A258831

/-! ## A258831.P2126573505400360124

`A098098(n)*A033999(n)`
-/

namespace A258831.P2126573505400360124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098098 n * A033999 n

end

end A258831.P2126573505400360124

namespace A258831

/-- `A098098(n)*A033999(n)` -/
def P2126573505400360124.Spec : Prop :=
  ∀ n, P2126573505400360124.a n = A258831 n

theorem P2126573505400360124.correct : P2126573505400360124.Spec := by
  intro n
  simp only [A258831, Nat.add_sub_cancel, A258831.P2126573505400360124.a, A258831.P9209545369141060216.a, A033999, A033999.P17703899380244199787.a, A098098, A098098.P10093377580239662932.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258831

/-! ## A258831.P2916551601002554831

`A033686(n)*A098098(n)/A134079(n)`
-/

namespace A258831.P2916551601002554831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033686 n * A098098 n : ℚ) / (A134079 n : ℚ)

end

end A258831.P2916551601002554831

namespace A258831

/-- `A033686(n)*A098098(n)/A134079(n)` -/
def P2916551601002554831.Spec : Prop :=
  ∀ n, P2916551601002554831.a n = (A258831 n : ℚ)

end A258831

/-! ## A258831.P14606060897160275188

`A098098(n)*A118271(n)/A214456(n)`
-/

namespace A258831.P14606060897160275188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098098 n * A118271 n : ℚ) / (A214456 n : ℚ)

end

end A258831.P14606060897160275188

namespace A258831

/-- `A098098(n)*A118271(n)/A214456(n)` -/
def P14606060897160275188.Spec : Prop :=
  ∀ n, P14606060897160275188.a n = (A258831 n : ℚ)

end A258831

/-! ## A258831.P11500962810893991857

`A098098(n)*A131943(n)/A226139(n)`
-/

namespace A258831.P11500962810893991857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098098 n * A131943 n : ℚ) / (A226139 n : ℚ)

end

end A258831.P11500962810893991857

namespace A258831

/-- `A098098(n)*A131943(n)/A226139(n)` -/
def P11500962810893991857.Spec : Prop :=
  ∀ n, P11500962810893991857.a n = (A258831 n : ℚ)

end A258831

/-! ## A258831.P4306346198093004705

`-(A010892(3*(n+1))*A098098(n))`
-/

namespace A258831.P4306346198093004705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A010892 (3 * (n + 1)) * A098098 n)

end

end A258831.P4306346198093004705

namespace A258831

/-- `-(A010892(3*(n+1))*A098098(n))` -/
def P4306346198093004705.Spec : Prop :=
  ∀ n, P4306346198093004705.a n = A258831 n

end A258831

/-! ## A258831.P5955689294633910933

`∑{#}[n, A258832(#)*A258832(n-#)]`
-/

namespace A258831.P5955689294633910933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A258832 k * A258832 (n - k)

end

end A258831.P5955689294633910933

namespace A258831

/-- `∑{#}[n, A258832(#)*A258832(n-#)]` -/
def P5955689294633910933.Spec : Prop :=
  ∀ n, P5955689294633910933.a n = A258831 n

end A258831

/-!
# A258832: Expansion of psi(-x^3) * f(-x, x^2) in powers of x where psi(), f(,) are Ramanujan theta functions.

The programs for A258832, the canonical program `A258832.P14663651183616388296` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258832 has offset 0).

The definition of A258832 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A258832.P14663651183616388296

`(-1)^n*A121444(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A258832

/-- `(-1)^n*A121444(n)` -/
def P14663651183616388296.Spec : Prop :=
  ∀ n, P14663651183616388296.a n = A258832 n

theorem P14663651183616388296.correct : P14663651183616388296.Spec := by
  intro n
  simp only [A258832]

end A258832

/-! ## A258832.P3244551575501110221

`A121444(n)/(-1)^n`
-/

namespace A258832.P3244551575501110221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121444 n : ℚ) / ((-1) ^ n : ℚ)

end

end A258832.P3244551575501110221

namespace A258832

/-- `A121444(n)/(-1)^n` -/
def P3244551575501110221.Spec : Prop :=
  ∀ n, P3244551575501110221.a n = (A258832 n : ℚ)

end A258832

/-! ## A258832.P18037550027459069864

`A121444(n)*A033999(n)`
-/

namespace A258832.P18037550027459069864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121444 n * A033999 n

end

end A258832.P18037550027459069864

namespace A258832

/-- `A121444(n)*A033999(n)` -/
def P18037550027459069864.Spec : Prop :=
  ∀ n, P18037550027459069864.a n = A258832 n

theorem P18037550027459069864.correct : P18037550027459069864.Spec := by
  intro n
  simp only [A258832, Nat.add_sub_cancel, A258832.P18037550027459069864.a, A258832.P14663651183616388296.a, A033999, A033999.P17703899380244199787.a, A121444, A121444.P10718778416213000801.a, A052343, A052343.P15911122501402458117.a, A008441, A008441.P257068461411472066.a, A002654, A002654.P11574922253888480122.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A258832

/-! ## A258832.P6858002772156432526

`A098098(n)*A121444(n)/A258831(n)`
-/

namespace A258832.P6858002772156432526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098098 n * A121444 n : ℚ) / (A258831 n : ℚ)

end

end A258832.P6858002772156432526

namespace A258832

/-- `A098098(n)*A121444(n)/A258831(n)` -/
def P6858002772156432526.Spec : Prop :=
  ∀ n, P6858002772156432526.a n = (A258832 n : ℚ)

end A258832

/-! ## A258832.P3064887983820204261

`(-1)^n*A052343(3*n+1)`
-/

namespace A258832.P3064887983820204261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A052343 (3 * n + 1)

end

end A258832.P3064887983820204261

namespace A258832

/-- `(-1)^n*A052343(3*n+1)` -/
def P3064887983820204261.Spec : Prop :=
  ∀ n, P3064887983820204261.a n = A258832 n

end A258832

/-! ## A258832.P5422003811725704107

`A208955(3*n+1)/2`
-/

namespace A258832.P5422003811725704107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208955 (3 * n + 1) : ℚ) / 2

end

end A258832.P5422003811725704107

namespace A258832

/-- `A208955(3*n+1)/2` -/
def P5422003811725704107.Spec : Prop :=
  ∀ n, P5422003811725704107.a n = (A258832 n : ℚ)

end A258832

/-! ## A258832.P6693646304979345825

`floor((1-A134343(3*n+1))/2)`
-/

namespace A258832.P6693646304979345825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 - A134343 (3 * n + 1) : ℚ) / 2⌋

end

end A258832.P6693646304979345825

namespace A258832

/-- `floor((1-A134343(3*n+1))/2)` -/
def P6693646304979345825.Spec : Prop :=
  ∀ n, P6693646304979345825.a n = A258832 n

end A258832

/-!
# A258833: Nonhomogeneous Beatty sequence: ceiling((n + 1/4)*sqrt(2)).

The programs for A258833, the canonical program `A258833.P1360120148370152390` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258833 has offset 0).

The definition of A258833 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1/4)*sqrt(2))` (program `A258833.P1360120148370152390`, by `A258833.P1360120148370152390.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A258833.P1360120148370152390

`ceil((n+1/4)*sqrt(2))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A258833

/-- `ceil((n+1/4)*sqrt(2))` -/
def P1360120148370152390.Spec : Prop :=
  ∀ n, P1360120148370152390.a n = A258833 n

theorem P1360120148370152390.correct : P1360120148370152390.Spec := by
  intro n
  simp only [A258833]

end A258833

/-! ## A258833.P14338339789848563905

`floor(sqrt(C(Δ[n²], 2)))+1`
-/

namespace A258833.P14338339789848563905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2) + 1

end

end A258833.P14338339789848563905

namespace A258833

/-- `floor(sqrt(C(Δ[n²], 2)))+1` -/
def P14338339789848563905.Spec : Prop :=
  ∀ n, (P14338339789848563905.a n : ℤ) = A258833 n

end A258833

/-! ## A258833.P12952955456869244440

`floor(sqrt(lcm(n, Δ[n²])))+1`
-/

namespace A258833.P12952955456869244440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (Int.lcm (n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) + 1

end

end A258833.P12952955456869244440

namespace A258833

/-- `floor(sqrt(lcm(n, Δ[n²])))+1` -/
def P12952955456869244440.Spec : Prop :=
  ∀ n, (P12952955456869244440.a n : ℤ) = A258833 n

end A258833

/-! ## A258833.P8845941327658234689

`floor(root(C(Δ[n²], 2), 2))+1`
-/

namespace A258833.P8845941327658234689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2 : ℝ) ^ (1 / (2 : ℝ))⌋ + 1

end

end A258833.P8845941327658234689

namespace A258833

/-- `floor(root(C(Δ[n²], 2), 2))+1` -/
def P8845941327658234689.Spec : Prop :=
  ∀ n, P8845941327658234689.a n = A258833 n

end A258833

/-! ## A258833.P8228199127299672101

`floor(sqrt(record[xor(1, n)]*n))+1`
-/

namespace A258833.P8228199127299672101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * n) + 1

end

end A258833.P8228199127299672101

namespace A258833

/-- `floor(sqrt(record[xor(1, n)]*n))+1` -/
def P8228199127299672101.Spec : Prop :=
  ∀ n, (P8228199127299672101.a n : ℤ) = A258833 n

end A258833

/-! ## A258833.P15894540495691589198

`1+floor(sqrt(C(1+2*n, 2)))`
-/

namespace A258833.P15894540495691589198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + Nat.sqrt (Nat.choose (1 + 2 * n) 2)

end

end A258833.P15894540495691589198

namespace A258833

/-- `1+floor(sqrt(C(1+2*n, 2)))` -/
def P15894540495691589198.Spec : Prop :=
  ∀ n, (P15894540495691589198.a n : ℤ) = A258833 n

end A258833

/-! ## A258833.P4627719541513056427

`floor((n*record[xor(1, n)])^(1/2))+1`
-/

namespace A258833.P4627719541513056427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋ + 1

end

end A258833.P4627719541513056427

namespace A258833

/-- `floor((n*record[xor(1, n)])^(1/2))+1` -/
def P4627719541513056427.Spec : Prop :=
  ∀ n, P4627719541513056427.a n = A258833 n

end A258833

/-! ## A258833.P11066777272713657383

`comp[A258834(n)]`
-/

namespace A258833.P11066777272713657383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258834 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A258833.P11066777272713657383

namespace A258833

/-- `comp[A258834(n)]` -/
def P11066777272713657383.Spec : Prop :=
  ∀ n, (P11066777272713657383.a n : ℤ) = A258833 n

end A258833

/-! ## A258833.P13050739877380387580

`floor(sqrt(A000217(2*n)))+1`
-/

namespace A258833.P13050739877380387580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000217 (2 * n)) + 1

end

end A258833.P13050739877380387580

namespace A258833

/-- `floor(sqrt(A000217(2*n)))+1` -/
def P13050739877380387580.Spec : Prop :=
  ∀ n, P13050739877380387580.a n = A258833 n

end A258833

/-! ## A258833.P1041117268273029637

`A000027(floor(sqrt(n*(2*n+1)))+1)`
-/

namespace A258833.P1041117268273029637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Nat.sqrt (n * (2 * n + 1)) + 1)

end

end A258833.P1041117268273029637

namespace A258833

/-- `A000027(floor(sqrt(n*(2*n+1)))+1)` -/
def P1041117268273029637.Spec : Prop :=
  ∀ n, P1041117268273029637.a n = A258833 n

end A258833

/-! ## A258833.P10405675274084031415

`round(sqrt(A081946(2*(n+1))))`
-/

namespace A258833.P10405675274084031415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A081946 (2 * (n + 1)) : ℝ))

end

end A258833.P10405675274084031415

namespace A258833

/-- `round(sqrt(A081946(2*(n+1))))` -/
def P10405675274084031415.Spec : Prop :=
  ∀ n, P10405675274084031415.a n = A258833 n

end A258833

/-! ## A258833.P9401507967179873648

`sqrt(A065737(2*n+1))+1`
-/

namespace A258833.P9401507967179873648
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065737 (2 * n + 1) : ℝ) + 1

end

end A258833.P9401507967179873648

namespace A258833

/-- `sqrt(A065737(2*n+1))+1` -/
def P9401507967179873648.Spec : Prop :=
  ∀ n, P9401507967179873648.a n = (A258833 n : ℝ)

end A258833

/-! ## A258833.P12068608391475907838

`floor(sqrt(A161680(2*n+1)))+1`
-/

namespace A258833.P12068608391475907838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A161680 (2 * n + 1)) + 1

end

end A258833.P12068608391475907838

namespace A258833

/-- `floor(sqrt(A161680(2*n+1)))+1` -/
def P12068608391475907838.Spec : Prop :=
  ∀ n, P12068608391475907838.a n = A258833 n

end A258833

/-! ## A258833.P9548673632018445898

`ceil(sqrt(A054074(2*(n+1))))-1`
-/

namespace A258833.P9548673632018445898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A054074 (2 * (n + 1)) : ℝ)⌉ - 1

end

end A258833.P9548673632018445898

namespace A258833

/-- `ceil(sqrt(A054074(2*(n+1))))-1` -/
def P9548673632018445898.Spec : Prop :=
  ∀ n, P9548673632018445898.a n = A258833 n

end A258833

/-! ## A258833.P1268146964008263202

`A036715(2*n)-A036713(2*n)`
-/

namespace A258833.P1268146964008263202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036715 (2 * n) - A036713 (2 * n)

end

end A258833.P1268146964008263202

namespace A258833

/-- `A036715(2*n)-A036713(2*n)` -/
def P1268146964008263202.Spec : Prop :=
  ∀ n, P1268146964008263202.a n = A258833 n

end A258833

/-! ## A258833.P7238587262022645468

`A036709(2*n)-2*A036713(2*n)`
-/

namespace A258833.P7238587262022645468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036709 (2 * n) - 2 * A036713 (2 * n)

end

end A258833.P7238587262022645468

namespace A258833

/-- `A036709(2*n)-2*A036713(2*n)` -/
def P7238587262022645468.Spec : Prop :=
  ∀ n, P7238587262022645468.a n = A258833 n

end A258833

/-! ## A258833.P5536731553538086144

`2*A036715(2*n)-A036709(2*n)`
-/

namespace A258833.P5536731553538086144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036715 (2 * n) - A036709 (2 * n)

end

end A258833.P5536731553538086144

namespace A258833

/-- `2*A036715(2*n)-A036709(2*n)` -/
def P5536731553538086144.Spec : Prop :=
  ∀ n, P5536731553538086144.a n = A258833 n

end A258833

/-! ## A258833.P6432086036689099135

`A004526(A001953(2*n))+1`
-/

namespace A258833.P6432086036689099135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001953 (2 * n)).toNat + 1

end

end A258833.P6432086036689099135

namespace A258833

/-- `A004526(A001953(2*n))+1` -/
def P6432086036689099135.Spec : Prop :=
  ∀ n, P6432086036689099135.a n = A258833 n

end A258833

/-! ## A258833.P17663032916215201858

`A110654(A001953(2*n)+1)`
-/

namespace A258833.P17663032916215201858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A001953 (2 * n) + 1).toNat

end

end A258833.P17663032916215201858

namespace A258833

/-- `A110654(A001953(2*n)+1)` -/
def P17663032916215201858.Spec : Prop :=
  ∀ n, P17663032916215201858.a n = A258833 n

end A258833

/-! ## A258833.P1241471418314521765

`A004526(A136119(2*n+1)+1)`
-/

namespace A258833.P1241471418314521765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A136119 (2 * n + 1) + 1).toNat

end

end A258833.P1241471418314521765

namespace A258833

/-- `A004526(A136119(2*n+1)+1)` -/
def P1241471418314521765.Spec : Prop :=
  ∀ n, P1241471418314521765.a n = A258833 n

end A258833

/-!
# A258834: Nonhomogeneous Beatty sequence: a(n) = ceiling((n - 1/4)*(2 + sqrt(2))).

The programs for A258834, the canonical program `A258834.P4439762410531105847` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258834 has offset 0).

The definition of A258834 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n-1/4)*(2+sqrt(2)))` (program `A258834.P4439762410531105847`, by `A258834.P4439762410531105847.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A258834.P4439762410531105847

`ceil((n-1/4)*(2+sqrt(2)))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A258834

/-- `ceil((n-1/4)*(2+sqrt(2)))` -/
def P4439762410531105847.Spec : Prop :=
  ∀ n, P4439762410531105847.a n = A258834 n

theorem P4439762410531105847.correct : P4439762410531105847.Spec := by
  intro n
  simp only [A258834]

end A258834

/-! ## A258834.P13446866876789702200

`round(sqrt(C(2*n, 2)))+2*n`
-/

namespace A258834.P13446866876789702200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Nat.choose (2 * n) 2 : ℝ)) + (2 * n : ℤ)

end

end A258834.P13446866876789702200

namespace A258834

/-- `round(sqrt(C(2*n, 2)))+2*n` -/
def P13446866876789702200.Spec : Prop :=
  ∀ n, P13446866876789702200.a n = A258834 n

end A258834

/-! ## A258834.P3254189818746078926

`comp[floor(sqrt(C(2*n+1, 2)))+1]`
-/

namespace A258834.P3254189818746078926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (Nat.choose (2 * n + 1) 2) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A258834.P3254189818746078926

namespace A258834

/-- `comp[floor(sqrt(C(2*n+1, 2)))+1]` -/
def P3254189818746078926.Spec : Prop :=
  ∀ n, (P3254189818746078926.a n : ℤ) = A258834 n

end A258834

/-! ## A258834.P11302771533287732641

`round(sqrt(A000384(n)))+2*n`
-/

namespace A258834.P11302771533287732641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A000384 n : ℝ)) + (2 * n : ℤ)

end

end A258834.P11302771533287732641

namespace A258834

/-- `round(sqrt(A000384(n)))+2*n` -/
def P11302771533287732641.Spec : Prop :=
  ∀ n, P11302771533287732641.a n = A258834 n

end A258834

/-! ## A258834.P7191641906455687631

`round(A005843(n)+sqrt(A000384(n)))`
-/

namespace A258834.P7191641906455687631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005843 n : ℝ) + Real.sqrt (A000384 n : ℝ))

end

end A258834.P7191641906455687631

namespace A258834

/-- `round(A005843(n)+sqrt(A000384(n)))` -/
def P7191641906455687631.Spec : Prop :=
  ∀ n, P7191641906455687631.a n = A258834 n

end A258834

/-! ## A258834.P6726792069280983216

`record[A257175(n)+A014681(n)]`
-/

namespace A258834.P6726792069280983216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257175 n + A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258834.P6726792069280983216

namespace A258834

/-- `record[A257175(n)+A014681(n)]` -/
def P6726792069280983216.Spec : Prop :=
  ∀ n, P6726792069280983216.a n = A258834 n

end A258834

/-! ## A258834.P8142033537249518429

`A257175(A004273(n))+2*n`
-/

namespace A258834.P8142033537249518429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257175 (A004273 n).toNat + (2 * n : ℤ)

end

end A258834.P8142033537249518429

namespace A258834

/-- `A257175(A004273(n))+2*n` -/
def P8142033537249518429.Spec : Prop :=
  ∀ n, P8142033537249518429.a n = A258834 n

end A258834

/-! ## A258834.P17080210183942872950

`A257175(A014681(2*n))+2*n`
-/

namespace A258834.P17080210183942872950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257175 (A014681 (2 * n)).toNat + (2 * n : ℤ)

end

end A258834.P17080210183942872950

namespace A258834

/-- `A257175(A014681(2*n))+2*n` -/
def P17080210183942872950.Spec : Prop :=
  ∀ n, P17080210183942872950.a n = A258834 n

end A258834

/-! ## A258834.P1593918420763442966

`comp[A258833(n)]`
-/

namespace A258834.P1593918420763442966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258833 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A258834.P1593918420763442966

namespace A258834

/-- `comp[A258833(n)]` -/
def P1593918420763442966.Spec : Prop :=
  ∀ n, (P1593918420763442966.a n : ℤ) = A258834 n

end A258834

/-! ## A258834.P9408477926497706955

`comp[ceil(sqrt(A000124(2*n)))]`
-/

namespace A258834.P9408477926497706955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000124 (2 * n) : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A258834.P9408477926497706955

namespace A258834

/-- `comp[ceil(sqrt(A000124(2*n)))]` -/
def P9408477926497706955.Spec : Prop :=
  ∀ n, (P9408477926497706955.a n : ℤ) = A258834 n

end A258834

/-! ## A258834.P7476126364790295767

`record[A000035(n)*A008619(A001954(n))]`
-/

namespace A258834.P7476126364790295767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A008619 (A001954 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258834.P7476126364790295767

namespace A258834

/-- `record[A000035(n)*A008619(A001954(n))]` -/
def P7476126364790295767.Spec : Prop :=
  ∀ n, P7476126364790295767.a n = A258834 n

end A258834

/-! ## A258834.P8498363716726532723

`A183138(A064437(A064437(2*n+1)))`
-/

namespace A258834.P8498363716726532723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183138 (A064437 (A064437 (2 * n + 1)).toNat).toNat

end

end A258834.P8498363716726532723

namespace A258834

/-- `A183138(A064437(A064437(2*n+1)))` -/
def P8498363716726532723.Spec : Prop :=
  ∀ n, P8498363716726532723.a n = A258834 n

end A258834

/-!
# A258835: Expansion of psi(x)^3 * psi(x^4) in powers of x where psi() is a Ramanujan theta function.

The programs for A258835, the canonical program `A258835.P18240519772885468394` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258835 has offset 0).

The definition of A258835 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A258835.P18240519772885468394

`A000203(8*n+7)/8`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A258835

/-- `A000203(8*n+7)/8` -/
def P18240519772885468394.Spec : Prop :=
  ∀ n, P18240519772885468394.a n = (A258835 n : ℚ)

end A258835

/-! ## A258835.P10771073191693712499

`floor(∑{d}[8*n+7, (n+1)/#])`
-/

namespace A258835.P10771073191693712499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ)⌋

end

end A258835.P10771073191693712499

namespace A258835

/-- `floor(∑{d}[8*n+7, (n+1)/#])` -/
def P10771073191693712499.Spec : Prop :=
  ∀ n, P10771073191693712499.a n = A258835 n

end A258835

/-! ## A258835.P16507228485442886641

`A097723(Δ[n²])/2`
-/

namespace A258835.P16507228485442886641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097723 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A258835.P16507228485442886641

namespace A258835

/-- `A097723(Δ[n²])/2` -/
def P16507228485442886641.Spec : Prop :=
  ∀ n, P16507228485442886641.a n = (A258835 n : ℚ)

end A258835

/-! ## A258835.P7930715859050244005

`A008438(A004767(n))/8`
-/

namespace A258835.P7930715859050244005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008438 (A004767 n).toNat : ℚ) / 8

end

end A258835.P7930715859050244005

namespace A258835

/-- `A008438(A004767(n))/8` -/
def P7930715859050244005.Spec : Prop :=
  ∀ n, P7930715859050244005.a n = (A258835 n : ℚ)

end A258835

/-! ## A258835.P14260555027119888174

`A117358(∑{d}[A004771(n), #])`
-/

namespace A258835.P14260555027119888174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A258835.P14260555027119888174

namespace A258835

/-- `A117358(∑{d}[A004771(n), #])` -/
def P14260555027119888174.Spec : Prop :=
  ∀ n, P14260555027119888174.a n = A258835 n

end A258835

/-! ## A258835.P5286540892412246260

`A002265(A239053(2*(n+1))/2)`
-/

namespace A258835.P5286540892412246260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (SequenceMachineLib.roundAway ((A239053 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A258835.P5286540892412246260

namespace A258835

/-- `A002265(A239053(2*(n+1))/2)` -/
def P5286540892412246260.Spec : Prop :=
  ∀ n, P5286540892412246260.a n = A258835 n

end A258835

/-! ## A258835.P9125017480126742032

`A000593(8*n+7)/8`
-/

namespace A258835.P9125017480126742032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000593 (8 * n + 7) : ℚ) / 8

end

end A258835.P9125017480126742032

namespace A258835

/-- `A000593(8*n+7)/8` -/
def P9125017480126742032.Spec : Prop :=
  ∀ n, P9125017480126742032.a n = (A258835 n : ℚ)

end A258835

/-!
# A258836: Least practical number q with q-1 and q+1 twin prime such that n = q'/q for some practical number q' with q'-1 and q'+1 twin prime.

The programs for A258836, there is no canonical definition to state claims against.
-/

/-! ## A258836.P11122193808495655577

`A185145(A184955(n)+A080684(n+1))`
-/

namespace A258836.P11122193808495655577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185145 (A184955 n + A080684 (n + 1)).toNat

end

end A258836.P11122193808495655577

/-! ## A258836.P8715411774394723187

`A007318(C(A221755(n+1), n))*A185145(n+1)`
-/

namespace A258836.P8715411774394723187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (A221755 (n + 1)).toNat n) * A185145 (n + 1)

end

end A258836.P8715411774394723187

/-! ## A258836.P2646034608265040375

`A185145(n+1)`
-/

namespace A258836.P2646034608265040375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185145 (n + 1)

end

end A258836.P2646034608265040375

/-!
# A258837: a(n) = 1 - n^2.

The programs for A258837, the canonical program `A258837.P16350684666179390251` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258837 has offset 0).

The definition of A258837 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1-n²` (program `A258837.P16350684666179390251`, by `A258837.P16350684666179390251.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A258837.P16350684666179390251

`1-n²`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A258837

/-- `1-n²` -/
def P16350684666179390251.Spec : Prop :=
  ∀ n, P16350684666179390251.a n = A258837 n

theorem P16350684666179390251.correct : P16350684666179390251.Spec := by
  intro n
  simp only [A258837]

end A258837

/-!
# A258838: Practical numbers q with q-1 and q+1 twin primes: "Sandwiches of the second kind".

The programs for A258838, there is no canonical definition to state claims against.
-/

/-! ## A258838.P3252597890216418354

`p?[A260698(n+1)-1]+1`
-/

namespace A258838.P3252597890216418354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260698 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A258838.P3252597890216418354

/-! ## A258838.P6059295923615830953

`∩[A014574(1+n), A260698(n+1)]`
-/

namespace A258838.P6059295923615830953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258838.P6059295923615830953

/-! ## A258838.P3685057910145669936

`∩[A056853(n+1), A260698(n+1)]`
-/

namespace A258838.P3685057910145669936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258838.P3685057910145669936

/-! ## A258838.P15056697981743771587

`∩[A217259(n+1), A260698(n+1)]`
-/

namespace A258838.P15056697981743771587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258838.P15056697981743771587

/-! ## A258838.P1617366095857775724

`p?[A225223(n+1)+2]-1`
-/

namespace A258838.P1617366095857775724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225223 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A258838.P1617366095857775724

/-! ## A258838.P6508300541571934784

`∩[A225223(n+1)+1, A260698(n+1)]`
-/

namespace A258838.P6508300541571934784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225223 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258838.P6508300541571934784

/-! ## A258838.P4705859096882797505

`∩[A072570(n+1), A260698(n+1)]`
-/

namespace A258838.P4705859096882797505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258838.P4705859096882797505

/-! ## A258838.P13469723219305321126

`∩[A072568(n+1), A260698(n+1)]`
-/

namespace A258838.P13469723219305321126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258838.P13469723219305321126

/-! ## A258838.P15226777920881214469

`∩[A008864(n+1), A260698(n+1)]`
-/

namespace A258838.P15226777920881214469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258838.P15226777920881214469

/-! ## A258838.P13380479995695810573

`∩[A024675(n+1), A260698(n+1)]`
-/

namespace A258838.P13380479995695810573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258838.P13380479995695810573

/-! ## A258838.P16539756408898985158

`∩[A260698(n+1), A076083(n+2)]`
-/

namespace A258838.P16539756408898985158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076083 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258838.P16539756408898985158

/-! ## A258838.P7594740703288636172

`∩[A260698(n+1), A280469(n+1)]`
-/

namespace A258838.P7594740703288636172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258838.P7594740703288636172

/-! ## A258838.P17120766339979023417

`∩[A061715(n+1), A260698(n+1)]`
-/

namespace A258838.P17120766339979023417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258838.P17120766339979023417

/-! ## A258838.P1016925853433507270

`A000010(p?[A225223(n+1)+2])`
-/

namespace A258838.P1016925853433507270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225223 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A258838.P1016925853433507270

/-! ## A258838.P1331045099825315299

`record[A020639(A225223(n+1)+2)-1]`
-/

namespace A258838.P1331045099825315299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A225223 (n + 1) + 2).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258838.P1331045099825315299

/-! ## A258838.P5847685697204294610

`∩[A145025(n+1), A260698(n+1)]`
-/

namespace A258838.P5847685697204294610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258838.P5847685697204294610

/-! ## A258838.P15397560122997634408

`∩[A074998(n+1), A260698(n+1)]`
-/

namespace A258838.P15397560122997634408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258838.P15397560122997634408

/-! ## A258838.P3081872158378059395

`∩[A074997(n+1), A260698(n+1)]`
-/

namespace A258838.P3081872158378059395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258838.P3081872158378059395

/-! ## A258838.P17899174656715335680

`∩[A260698(n+1), A280383(n+1)]`
-/

namespace A258838.P17899174656715335680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258838.P17899174656715335680

/-! ## A258838.P14181757240273664064

`∩[A005153(n+1), A014574(n+1)]`
-/

namespace A258838.P14181757240273664064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258838.P14181757240273664064

/-!
# A258840: a(n) is the least integer k such that there are n values of i <= k for which gpf(i^2 + 1) = gpf(k^2 + 1), where gpf(x) is the greatest prime factor of x.

The programs for A258840, there is no canonical definition to state claims against.
-/

/-! ## A258840.P2227448292789064377

`A173561(A028980(n+1))`
-/

namespace A258840.P2227448292789064377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173561 (A028980 (n + 1)).toNat

end

end A258840.P2227448292789064377

/-! ## A258840.P18319128845892122786

`A008618(Δ[A116872(n+1)²])`
-/

namespace A258840.P18319128845892122786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116872 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (f1 (n + 1) - f1 n).toNat

end

end A258840.P18319128845892122786

/-!
# A258844: Numbers k with the property that it is possible to write the base 2 expansion of k as concat(a_2,b_2), with a_2>0 and b_2>0 such that, converting a_2 and b_2 to base 10 as a and b, we have (a+b)^2 = k.

The programs for A258844, there is no canonical definition to state claims against.
-/

/-! ## A258844.P4461426206263210184

`lt[A300831(n+1), A323989(3*n+5)]²`
-/

namespace A258844.P4461426206263210184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323989 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A258844.P4461426206263210184

/-! ## A258844.P2623343988453503242

`eq[A143844(A089860(n)), A348928(n+1)]²`
-/

namespace A258844.P2623343988453503242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143844 (A089860 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348928 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A258844.P2623343988453503242

/-! ## A258844.P1990017898124196939

`A000290(lt[A300831(n+1), A323989(3*n+5)])`
-/

namespace A258844.P1990017898124196939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323989 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A258844.P1990017898124196939

/-!
# A258845: The pi-based arithmetic derivative of n!.

The programs for A258845, there is no canonical definition to state claims against.
-/

/-! ## A258845.P9628165854002361097

`A258851(n!)`
-/

namespace A258845.P9628165854002361097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (Nat.factorial n)

end

end A258845.P9628165854002361097

/-! ## A258845.P10352413672344761584

`A258851(A000142(n))`
-/

namespace A258845.P10352413672344761584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (A000142 n).toNat

end

end A258845.P10352413672344761584

/-!
# A258846: The pi-based arithmetic derivative of n^n.

The programs for A258846, there is no canonical definition to state claims against.
-/

/-! ## A258846.P8241736698728096648

`n^n*A258851(n)`
-/

namespace A258846.P8241736698728096648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A258851 n

end

end A258846.P8241736698728096648

/-! ## A258846.P16056137850927292247

`A258997(C(n+n+1, 2)+n)`
-/

namespace A258846.P16056137850927292247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258997 (Nat.choose (n + n + 1) 2 + n)

end

end A258846.P16056137850927292247

/-! ## A258846.P6050466101171932770

`n^n*Δ[A258864(abs(1-n))]`
-/

namespace A258846.P6050466101171932770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258864 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A258846.P6050466101171932770

/-! ## A258846.P9208380881871603027

`n^n*A258852(A258861(n))`
-/

namespace A258846.P9208380881871603027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A258852 (A258861 n).toNat

end

end A258846.P9208380881871603027

/-! ## A258846.P7799244737148840648

`Δ[A258864(abs(1-n))]*A000312(n)`
-/

namespace A258846.P7799244737148840648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258864 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000312 n

end

end A258846.P7799244737148840648

/-! ## A258846.P569260549091905201

`n^n*A258852(record[A014963(n+1)])`
-/

namespace A258846.P569260549091905201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A258852 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A258846.P569260549091905201

/-! ## A258846.P4446236498684678768

`(∑[A258863(n)]-A258863(n))*n^n`
-/

namespace A258846.P4446236498684678768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - A258863 n) * (n ^ n : ℤ)

end

end A258846.P4446236498684678768

/-! ## A258846.P17272137155501152070

`n*n^abs(1-n)*A258852(A008578(n+1))`
-/

namespace A258846.P17272137155501152070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n : ℚ) ^ (|1 - (n : ℤ)| : ℤ) * (A258852 (A008578 (n + 1)).toNat : ℚ))

end

end A258846.P17272137155501152070

/-! ## A258846.P3249458520069941424

`A000312(n)*A258852(record[A006530(n+1)])`
-/

namespace A258846.P3249458520069941424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n * A258852 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A258846.P3249458520069941424

/-!
# A258847: Sum of the k-th pi-based arithmetic derivative of n-k for k=0..n.

The programs for A258847, there is no canonical definition to state claims against.
-/

/-! ## A258847.P17596803675388863401

`A045888(A000244(n))+A004274(n)`
-/

namespace A258847.P17596803675388863401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045888 (A000244 n).toNat + A004274 n

end

end A258847.P17596803675388863401

/-! ## A258847.P15326992113777500778

`A359683(n)-A195825(A126791(n))`
-/

namespace A258847.P15326992113777500778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359683 n - A195825 (A126791 n).toNat

end

end A258847.P15326992113777500778

/-! ## A258847.P9382426965759109770

`eq[A007088(A321396(2*(n+2))), A077267(2*n)]`
-/

namespace A258847.P9382426965759109770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A321396 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258847.P9382426965759109770

/-!
# A258848: The n-th pi-based arithmetic derivative of 2^3.

The programs for A258848, there is no canonical definition to state claims against.
-/

/-! ## A258848.P13329305696181872777

`record[A258850(n+44)]`
-/

namespace A258848.P13329305696181872777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258850 (n + 44)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258848.P13329305696181872777

/-! ## A258848.P8124867490200219035

`A258850(A000124(n+8)+7)`
-/

namespace A258848.P8124867490200219035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258850 (A000124 (n + 8) + 7).toNat

end

end A258848.P8124867490200219035

/-! ## A258848.P4844134328264678005

`A258851(a(n-1))` with `a(0)=8`
-/

namespace A258848.P4844134328264678005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A258851 (a (n - 1)).toNat

end

end A258848.P4844134328264678005

/-!
# A258849: The n-th pi-based arithmetic derivative of n.

The programs for A258849, there is no canonical definition to state claims against.
-/

/-! ## A258849.P13817329883776232049

`A258850(C(n+n+1, 2)+n)`
-/

namespace A258849.P13817329883776232049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258850 (Nat.choose (n + n + 1) 2 + n)

end

end A258849.P13817329883776232049

/-! ## A258849.P9141280550513425151

`A258850(∑[4*n])`
-/

namespace A258849.P9141280550513425151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258850 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A258849.P9141280550513425151

/-! ## A258849.P995564288038847845

`A258851(A258850(2*n²))`
-/

namespace A258849.P995564288038847845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (A258850 (2 * n ^ 2)).toNat

end

end A258849.P995564288038847845

/-!
# A258850: A(n,k) = k-th pi-based arithmetic derivative of n; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A258850, there is no canonical definition to state claims against.
-/

/-! ## A258850.P5483999453689996779

`A306680(n)-A297323(A322308(n))`
-/

namespace A258850.P5483999453689996779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306680 n - A297323 (A322308 n).toNat

end

end A258850.P5483999453689996779

/-! ## A258850.P10322105261331636859

`A002262(n)+A125005(A326323(n))-A261684(n)`
-/

namespace A258850.P10322105261331636859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (A125005 (A326323 n).toNat - A261684 n)

end

end A258850.P10322105261331636859

/-! ## A258850.P403245147869354577

`A306680(n)-1`
-/

namespace A258850.P403245147869354577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306680 n - 1

end

end A258850.P403245147869354577

/-! ## A258850.P7574713993018878042

`A249511(n+1)%A306680(n)`
-/

namespace A258850.P7574713993018878042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249511 (n + 1)) (A306680 n)

end

end A258850.P7574713993018878042

/-! ## A258850.P10772336784892698182

`A278932(n+1)%A306680(n)`
-/

namespace A258850.P10772336784892698182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278932 (n + 1)) (A306680 n)

end

end A258850.P10772336784892698182

/-!
# A258851: The pi-based arithmetic derivative of n: a(p) = pi(p) for p prime, a(u*v) = a(u)*v + u*a(v), where pi = A000720.

The programs for A258851, there is no canonical definition to state claims against.
-/

/-! ## A258851.P15991629287833355378

`Δ[A258864(abs(1-n))]`
-/

namespace A258851.P15991629287833355378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258864 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258851.P15991629287833355378

/-! ## A258851.P7441461084463051560

`∑[A258863(abs(1-n))]-1`
-/

namespace A258851.P7441461084463051560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258863 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A258851.P7441461084463051560

/-! ## A258851.P9228540144895965096

`A258863(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A258851.P9228540144895965096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A258863 (n - 1) + a (n - 1)

end

end A258851.P9228540144895965096

/-! ## A258851.P5723022719963024100

`Δ[A258864(n)]-A258863(n)`
-/

namespace A258851.P5723022719963024100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A258863 n

end

end A258851.P5723022719963024100

/-! ## A258851.P14627554231640504176

`A258852(A258861(n))`
-/

namespace A258851.P14627554231640504176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258852 (A258861 n).toNat

end

end A258851.P14627554231640504176

/-! ## A258851.P243411932285749136

`A258853(A258862(n))`
-/

namespace A258851.P243411932285749136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258853 (A258862 n).toNat

end

end A258851.P243411932285749136

/-! ## A258851.P18370154133390378519

`A258997(∑[n+1]+n)`
-/

namespace A258851.P18370154133390378519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258997 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A258851.P18370154133390378519

/-!
# A258852: Second pi-based arithmetic derivative of n.

The programs for A258852, there is no canonical definition to state claims against.
-/

/-! ## A258852.P8319870483763981321

`A258851(A258851(n))`
-/

namespace A258852.P8319870483763981321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (A258851 n).toNat

end

end A258852.P8319870483763981321

/-! ## A258852.P7958750060000686136

`A258853(A258861(n))`
-/

namespace A258852.P7958750060000686136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258853 (A258861 n).toNat

end

end A258852.P7958750060000686136

/-! ## A258852.P7568493531503859485

`A258854(A258862(n))`
-/

namespace A258852.P7568493531503859485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258854 (A258862 n).toNat

end

end A258852.P7568493531503859485

/-! ## A258852.P6468338492169363435

`A258855(A258995(n))`
-/

namespace A258852.P6468338492169363435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258855 (A258995 n).toNat

end

end A258852.P6468338492169363435

/-! ## A258852.P6372372422421486217

`A258850(∑[n+3])`
-/

namespace A258852.P6372372422421486217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258850 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A258852.P6372372422421486217

/-!
# A258853: Third pi-based arithmetic derivative of n.

The programs for A258853, there is no canonical definition to state claims against.
-/

/-! ## A258853.P1685450031364263102

`A258852(A258851(n))`
-/

namespace A258853.P1685450031364263102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258852 (A258851 n).toNat

end

end A258853.P1685450031364263102

/-! ## A258853.P17403045296536675833

`A258854(A258861(n))`
-/

namespace A258853.P17403045296536675833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258854 (A258861 n).toNat

end

end A258853.P17403045296536675833

/-! ## A258853.P15764540787295245356

`A258851(A258851(A258851(A000720(A008578(n+1)))))`
-/

namespace A258853.P15764540787295245356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (A258851 (A258851 (A000720 (A008578 (n + 1)).toNat).toNat).toNat).toNat

end

end A258853.P15764540787295245356

/-! ## A258853.P15065390979474527290

`A258855(A258862(n))`
-/

namespace A258853.P15065390979474527290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258855 (A258862 n).toNat

end

end A258853.P15065390979474527290

/-! ## A258853.P13103949743784586031

`A258856(A258995(n))`
-/

namespace A258853.P13103949743784586031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258856 (A258995 n).toNat

end

end A258853.P13103949743784586031

/-!
# A258854: Fourth pi-based arithmetic derivative of n.

The programs for A258854, there is no canonical definition to state claims against.
-/

/-! ## A258854.P14372820155586863260

`A258853(A258851(n))`
-/

namespace A258854.P14372820155586863260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258853 (A258851 n).toNat

end

end A258854.P14372820155586863260

/-! ## A258854.P12756504038087906871

`A258855(A258861(n))`
-/

namespace A258854.P12756504038087906871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258855 (A258861 n).toNat

end

end A258854.P12756504038087906871

/-! ## A258854.P2249309393974759386

`A258852(A258852(n))`
-/

namespace A258854.P2249309393974759386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258852 (A258852 n).toNat

end

end A258854.P2249309393974759386

/-! ## A258854.P7175010234497710621

`A258856(A258862(n))`
-/

namespace A258854.P7175010234497710621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258856 (A258862 n).toNat

end

end A258854.P7175010234497710621

/-! ## A258854.P4042464582926837861

`A258851(A258855(A000040(A008578(n+1))))`
-/

namespace A258854.P4042464582926837861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (A258855 (A000040 (A008578 (n + 1)).toNat).toNat).toNat

end

end A258854.P4042464582926837861

/-!
# A258855: Fifth pi-based arithmetic derivative of n.

The programs for A258855, there is no canonical definition to state claims against.
-/

/-! ## A258855.P2002107476075989813

`A258854(A258851(n))`
-/

namespace A258855.P2002107476075989813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258854 (A258851 n).toNat

end

end A258855.P2002107476075989813

/-! ## A258855.P12370719568811811823

`A258856(A258861(n))`
-/

namespace A258855.P12370719568811811823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258856 (A258861 n).toNat

end

end A258855.P12370719568811811823

/-! ## A258855.P6407742114348106247

`A258853(A258852(n))`
-/

namespace A258855.P6407742114348106247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258853 (A258852 n).toNat

end

end A258855.P6407742114348106247

/-! ## A258855.P8832716967805363473

`A258857(A258862(n))`
-/

namespace A258855.P8832716967805363473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258857 (A258862 n).toNat

end

end A258855.P8832716967805363473

/-! ## A258855.P16614229812053808292

`A258851(A258851(A258853(n)))`
-/

namespace A258855.P16614229812053808292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (A258851 (A258853 n).toNat).toNat

end

end A258855.P16614229812053808292

/-!
# A258856: Sixth pi-based arithmetic derivative of n.

The programs for A258856, there is no canonical definition to state claims against.
-/

/-! ## A258856.P17562235647032749814

`A258855(A258851(n))`
-/

namespace A258856.P17562235647032749814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258855 (A258851 n).toNat

end

end A258856.P17562235647032749814

/-! ## A258856.P3167132375755727022

`A258857(A258861(n))`
-/

namespace A258856.P3167132375755727022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258857 (A258861 n).toNat

end

end A258856.P3167132375755727022

/-! ## A258856.P3102675402159429811

`A258854(A258852(n))`
-/

namespace A258856.P3102675402159429811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258854 (A258852 n).toNat

end

end A258856.P3102675402159429811

/-! ## A258856.P6938136144533191292

`A258853(A258853(n))`
-/

namespace A258856.P6938136144533191292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258853 (A258853 n).toNat

end

end A258856.P6938136144533191292

/-! ## A258856.P4279270469779818788

`A258858(A258862(n))`
-/

namespace A258856.P4279270469779818788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258858 (A258862 n).toNat

end

end A258856.P4279270469779818788

/-!
# A258857: Seventh pi-based arithmetic derivative of n.

The programs for A258857, there is no canonical definition to state claims against.
-/

/-! ## A258857.P3702792357080176187

`A258856(A258851(n))`
-/

namespace A258857.P3702792357080176187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258856 (A258851 n).toNat

end

end A258857.P3702792357080176187

/-! ## A258857.P6770019787079271785

`A258858(A258861(n))`
-/

namespace A258857.P6770019787079271785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258858 (A258861 n).toNat

end

end A258857.P6770019787079271785

/-! ## A258857.P18390477660902927257

`A258855(A258852(n))`
-/

namespace A258857.P18390477660902927257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258855 (A258852 n).toNat

end

end A258857.P18390477660902927257

/-! ## A258857.P13295148361791210228

`A258854(A258853(n))`
-/

namespace A258857.P13295148361791210228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258854 (A258853 n).toNat

end

end A258857.P13295148361791210228

/-! ## A258857.P10748090208235229780

`A258859(A258862(n))`
-/

namespace A258857.P10748090208235229780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258859 (A258862 n).toNat

end

end A258857.P10748090208235229780

/-!
# A258858: Eighth pi-based arithmetic derivative of n.

The programs for A258858, there is no canonical definition to state claims against.
-/

/-! ## A258858.P14411611893471210347

`A258857(A258851(n))`
-/

namespace A258858.P14411611893471210347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258857 (A258851 n).toNat

end

end A258858.P14411611893471210347

/-! ## A258858.P14876639348978813153

`A258859(A258861(n))`
-/

namespace A258858.P14876639348978813153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258859 (A258861 n).toNat

end

end A258858.P14876639348978813153

/-! ## A258858.P7382667183859716541

`A258856(A258852(n))`
-/

namespace A258858.P7382667183859716541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258856 (A258852 n).toNat

end

end A258858.P7382667183859716541

/-! ## A258858.P9182885201800814575

`A258855(A258853(n))`
-/

namespace A258858.P9182885201800814575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258855 (A258853 n).toNat

end

end A258858.P9182885201800814575

/-! ## A258858.P7399778318218409627

`A258860(A258862(n))`
-/

namespace A258858.P7399778318218409627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258860 (A258862 n).toNat

end

end A258858.P7399778318218409627

/-! ## A258858.P13504425024697297298

`A258854(A258854(n))`
-/

namespace A258858.P13504425024697297298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258854 (A258854 n).toNat

end

end A258858.P13504425024697297298

/-!
# A258859: Ninth pi-based arithmetic derivative of n.

The programs for A258859, there is no canonical definition to state claims against.
-/

/-! ## A258859.P6309536226507437410

`A258858(A258851(n))`
-/

namespace A258859.P6309536226507437410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258858 (A258851 n).toNat

end

end A258859.P6309536226507437410

/-! ## A258859.P18015237313913512387

`A258860(A258861(n))`
-/

namespace A258859.P18015237313913512387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258860 (A258861 n).toNat

end

end A258859.P18015237313913512387

/-! ## A258859.P57430712569601136

`A258857(A258852(n))`
-/

namespace A258859.P57430712569601136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258857 (A258852 n).toNat

end

end A258859.P57430712569601136

/-! ## A258859.P8522013244941775923

`A258856(A258853(n))`
-/

namespace A258859.P8522013244941775923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258856 (A258853 n).toNat

end

end A258859.P8522013244941775923

/-! ## A258859.P2528632173457732624

`A258855(A258854(n))`
-/

namespace A258859.P2528632173457732624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258855 (A258854 n).toNat

end

end A258859.P2528632173457732624

/-!
# A258860: Tenth pi-based arithmetic derivative of n.

The programs for A258860, there is no canonical definition to state claims against.
-/

/-! ## A258860.P5267861834632575191

`A258859(A258851(n))`
-/

namespace A258860.P5267861834632575191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258859 (A258851 n).toNat

end

end A258860.P5267861834632575191

/-! ## A258860.P15189265869951420819

`A258858(A258852(n))`
-/

namespace A258860.P15189265869951420819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258858 (A258852 n).toNat

end

end A258860.P15189265869951420819

/-! ## A258860.P5771217124360491277

`A258857(A258853(n))`
-/

namespace A258860.P5771217124360491277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258857 (A258853 n).toNat

end

end A258860.P5771217124360491277

/-! ## A258860.P16904003020239294412

`A258856(A258854(n))`
-/

namespace A258860.P16904003020239294412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258856 (A258854 n).toNat

end

end A258860.P16904003020239294412

/-! ## A258860.P13039438039016230281

`A258855(A258855(n))`
-/

namespace A258860.P13039438039016230281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258855 (A258855 n).toNat

end

end A258860.P13039438039016230281

/-!
# A258861: The pi-based antiderivative of n: the least m such that A258851(m) equals n.

The programs for A258861, there is no canonical definition to state claims against.
-/

/-! ## A258861.P10443165028453932227

`A259153(∑[A259154(n)]-A259154(n))`
-/

namespace A258861.P10443165028453932227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (∑ j ∈ Finset.range (n + 1), f1 j - A259154 n).toNat

end

end A258861.P10443165028453932227

/-! ## A258861.P7678638853252587155

`fo[A258851(n)]`
-/

namespace A258861.P7678638853252587155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A258861.P7678638853252587155

/-! ## A258861.P9822468197801102807

`A258851(A258862(n)%A105600(n))`
-/

namespace A258861.P9822468197801102807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (Int.tmod (A258862 n) (A105600 n)).toNat

end

end A258861.P9822468197801102807

/-! ## A258861.P1997247119019328090

`A259016(∑[n+2]-1)`
-/

namespace A258861.P1997247119019328090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259016 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A258861.P1997247119019328090

/-!
# A258862: Second pi-based antiderivative of n: the least m such that A258851^2(m) equals n.

The programs for A258862, there is no canonical definition to state claims against.
-/

/-! ## A258862.P7746909672835844348

`fo[A258852(n)]`
-/

namespace A258862.P7746909672835844348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A258862.P7746909672835844348

/-! ## A258862.P4778927715728727655

`fo[A258851(A258851(n))]`
-/

namespace A258862.P4778927715728727655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (A258851 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A258862.P4778927715728727655

/-! ## A258862.P1688354986026424002

`A258861(A258861(n))`
-/

namespace A258862.P1688354986026424002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258861 (A258861 n).toNat

end

end A258862.P1688354986026424002

/-! ## A258862.P7476570105080773179

`A259016(∑[n+3])`
-/

namespace A258862.P7476570105080773179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259016 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A258862.P7476570105080773179

/-!
# A258863: First differences of the pi-based arithmetic derivative sequence A258851.

The programs for A258863, there is no canonical definition to state claims against.
-/

/-! ## A258863.P15416992841545110835

`A258851(n+1)-A258851(n)`
-/

namespace A258863.P15416992841545110835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (n + 1) - A258851 n

end

end A258863.P15416992841545110835

/-! ## A258863.P8833623316048511387

`Δ[A258851(n)]`
-/

namespace A258863.P8833623316048511387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258863.P8833623316048511387

/-! ## A258863.P13700129662114697002

`Δ[Δ[A258864(abs(1-n))]]`
-/

namespace A258863.P13700129662114697002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258864 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258863.P13700129662114697002

/-! ## A258863.P6642329989411490246

`Δ[A258864(n)]-A258852(A258861(n))`
-/

namespace A258863.P6642329989411490246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A258852 (A258861 n).toNat

end

end A258863.P6642329989411490246

/-! ## A258863.P4071533943461758155

`Δ[A258864(n)]-A258852(A008578(n+1))`
-/

namespace A258863.P4071533943461758155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A258852 (A008578 (n + 1)).toNat

end

end A258863.P4071533943461758155

/-! ## A258863.P5844837330826577691

`Δ[A258852(A258861(n))]`
-/

namespace A258863.P5844837330826577691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258852 (A258861 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258863.P5844837330826577691

/-! ## A258863.P8124298793854292021

`Δ[A258852(A008578(n+1))]`
-/

namespace A258863.P8124298793854292021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258852 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258863.P8124298793854292021

/-! ## A258863.P4018372034898254306

`Δ[A258852(A182986(n+1))]`
-/

namespace A258863.P4018372034898254306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258852 (A182986 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258863.P4018372034898254306

/-! ## A258863.P2680930497276524582

`Δ[A258852(A158611(n+2))]`
-/

namespace A258863.P2680930497276524582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258852 (A158611 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258863.P2680930497276524582

/-! ## A258863.P9733822156528486045

`Δ[A258852(record[A014963(n+1)])]`
-/

namespace A258863.P9733822156528486045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258852 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258863.P9733822156528486045

/-! ## A258863.P17559271407434971293

`Δ[A258852(record[A089026(n+1)])]`
-/

namespace A258863.P17559271407434971293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258852 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258863.P17559271407434971293

/-! ## A258863.P6760144585885231725

`Δ[A258853(A258862(n))]`
-/

namespace A258863.P6760144585885231725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258853 (A258862 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258863.P6760144585885231725

/-!
# A258864: Partial sums of the pi-based arithmetic derivative sequence A258851.

The programs for A258864, there is no canonical definition to state claims against.
-/

/-! ## A258864.P8179176974360420923

`∑[A258851(n)]`
-/

namespace A258864.P8179176974360420923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258864.P8179176974360420923

/-! ## A258864.P11246741505956765211

`∑[A258863(n-1)+a(n-1)]` with `a(0)=0`
-/

namespace A258864.P11246741505956765211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A258863 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258864.P11246741505956765211

/-! ## A258864.P4640161547944490544

`∑[∑[A258863(n)]-A258863(n)]`
-/

namespace A258864.P4640161547944490544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258863 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A258863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258864.P4640161547944490544

/-! ## A258864.P5140138860262276826

`A258851(A000038(n)+n)+a(n-1)` with `a(0)=0`
-/

namespace A258864.P5140138860262276826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A258851 (A000038 n + (n : ℤ)).toNat + a (n - 1)

end

end A258864.P5140138860262276826

/-! ## A258864.P14554319651566692236

`A258851(A065033(n+n))+a(n-1)` with `a(0)=0`
-/

namespace A258864.P14554319651566692236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A258851 (A065033 (n + n)).toNat + a (n - 1)

end

end A258864.P14554319651566692236

/-! ## A258864.P5373931423277024557

`∑[A258852(A258861(n))]`
-/

namespace A258864.P5373931423277024557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258852 (A258861 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258864.P5373931423277024557

/-! ## A258864.P14285060736578308387

`∑[A258852(A008578(n+1))]`
-/

namespace A258864.P14285060736578308387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258852 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258864.P14285060736578308387

/-! ## A258864.P18435953339574060044

`∑[A258852(A182986(n+1))]`
-/

namespace A258864.P18435953339574060044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258852 (A182986 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258864.P18435953339574060044

/-! ## A258864.P8443948541892954753

`∑[A258852(A158611(n+2))]`
-/

namespace A258864.P8443948541892954753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258852 (A158611 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258864.P8443948541892954753

/-! ## A258864.P2357486093586249971

`∑[A258852(record[A014963(n+1)])]`
-/

namespace A258864.P2357486093586249971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258852 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258864.P2357486093586249971

/-! ## A258864.P18014075758509191168

`∑[A258852(record[A089026(n+1)])]`
-/

namespace A258864.P18014075758509191168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258852 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258864.P18014075758509191168

/-! ## A258864.P4615520485095248844

`∑[A258852(record[(n+1)*A010051(n+1)])]`
-/

namespace A258864.P4615520485095248844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010051 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258852 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258864.P4615520485095248844

/-! ## A258864.P12736847693146150520

`∑[A258853(A258862(n))]`
-/

namespace A258864.P12736847693146150520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258853 (A258862 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258864.P12736847693146150520

/-!
# A258865: Numbers that are a sum of the cubes of three primes.

The programs for A258865, there is no canonical definition to state claims against.
-/

/-! ## A258865.P488486465194150585

`∩[A078130(n+1), A302360(n+1)]`
-/

namespace A258865.P488486465194150585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258865.P488486465194150585

/-!
# A258867: Positions n where A185653(n) = 0.

The programs for A258867, the canonical program `A258867.P13721071682918196558` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258867 has offset 1).

The definition of A258867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2580 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258867.P13721071682918196558

`eq[0, A113407(n)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A258867

/-- `eq[0, A113407(n)]` -/
def P13721071682918196558.Spec : Prop :=
  ∀ n, (P13721071682918196558.a n : ℤ) = A258867 (n + 1)

theorem P13721071682918196558.correct : P13721071682918196558.Spec := by
  intro n
  simp only [A258867, Nat.add_sub_cancel]

end A258867

/-! ## A258867.P9258615493112993253

`eq[0, A185653(n)]`
-/

namespace A258867.P9258615493112993253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258867.P9258615493112993253

namespace A258867

/-- `eq[0, A185653(n)]` -/
def P9258615493112993253.Spec : Prop :=
  ∀ n, (P9258615493112993253.a n : ℤ) = A258867 (n + 1)

end A258867

/-! ## A258867.P15766251794296221607

`eq[0, A215598(n)]`
-/

namespace A258867.P15766251794296221607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215598 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258867.P15766251794296221607

namespace A258867

/-- `eq[0, A215598(n)]` -/
def P15766251794296221607.Spec : Prop :=
  ∀ n, (P15766251794296221607.a n : ℤ) = A258867 (n + 1)

end A258867

/-! ## A258867.P8536532802165200461

`eq[0, A226192(n)]`
-/

namespace A258867.P8536532802165200461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226192 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258867.P8536532802165200461

namespace A258867

/-- `eq[0, A226192(n)]` -/
def P8536532802165200461.Spec : Prop :=
  ∀ n, (P8536532802165200461.a n : ℤ) = A258867 (n + 1)

end A258867

/-! ## A258867.P11516627853230817160

`eq[0, A259790(n)]`
-/

namespace A258867.P11516627853230817160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259790 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258867.P11516627853230817160

namespace A258867

/-- `eq[0, A259790(n)]` -/
def P11516627853230817160.Spec : Prop :=
  ∀ n, (P11516627853230817160.a n : ℤ) = A258867 (n + 1)

end A258867

/-! ## A258867.P7715183257337296160

`eq[0, A000729(2*n)]`
-/

namespace A258867.P7715183257337296160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000729 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258867.P7715183257337296160

namespace A258867

/-- `eq[0, A000729(2*n)]` -/
def P7715183257337296160.Spec : Prop :=
  ∀ n, (P7715183257337296160.a n : ℤ) = A258867 (n + 1)

end A258867

/-! ## A258867.P9247854201463669982

`eq[0, A002171(2*n)]`
-/

namespace A258867.P9247854201463669982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002171 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258867.P9247854201463669982

namespace A258867

/-- `eq[0, A002171(2*n)]` -/
def P9247854201463669982.Spec : Prop :=
  ∀ n, (P9247854201463669982.a n : ℤ) = A258867 (n + 1)

end A258867

/-! ## A258867.P11321436962044441680

`eq[0, A004020(2*n)]`
-/

namespace A258867.P11321436962044441680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004020 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258867.P11321436962044441680

namespace A258867

/-- `eq[0, A004020(2*n)]` -/
def P11321436962044441680.Spec : Prop :=
  ∀ n, (P11321436962044441680.a n : ℤ) = A258867 (n + 1)

end A258867

/-! ## A258867.P2444141260139115002

`eq[0, A005883(2*n)]`
-/

namespace A258867.P2444141260139115002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005883 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258867.P2444141260139115002

namespace A258867

/-- `eq[0, A005883(2*n)]` -/
def P2444141260139115002.Spec : Prop :=
  ∀ n, (P2444141260139115002.a n : ℤ) = A258867 (n + 1)

end A258867

/-! ## A258867.P11163104899657049730

`eq[0, A008441(2*n)]`
-/

namespace A258867.P11163104899657049730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258867.P11163104899657049730

namespace A258867

/-- `eq[0, A008441(2*n)]` -/
def P11163104899657049730.Spec : Prop :=
  ∀ n, (P11163104899657049730.a n : ℤ) = A258867 (n + 1)

end A258867

/-! ## A258867.P10677015794555949807

`eq[0, A052343(2*n)]`
-/

namespace A258867.P10677015794555949807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258867.P10677015794555949807

namespace A258867

/-- `eq[0, A052343(2*n)]` -/
def P10677015794555949807.Spec : Prop :=
  ∀ n, (P10677015794555949807.a n : ℤ) = A258867 (n + 1)

end A258867

/-! ## A258867.P7468513051239555311

`eq[0, A122190(2*n)]`
-/

namespace A258867.P7468513051239555311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122190 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258867.P7468513051239555311

namespace A258867

/-- `eq[0, A122190(2*n)]` -/
def P7468513051239555311.Spec : Prop :=
  ∀ n, (P7468513051239555311.a n : ℤ) = A258867 (n + 1)

end A258867

/-! ## A258867.P10438497653012396617

`eq[0, A134343(2*n)]`
-/

namespace A258867.P10438497653012396617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134343 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258867.P10438497653012396617

namespace A258867

/-- `eq[0, A134343(2*n)]` -/
def P10438497653012396617.Spec : Prop :=
  ∀ n, (P10438497653012396617.a n : ℤ) = A258867 (n + 1)

end A258867

/-! ## A258867.P6659512120164962285

`eq[0, A138515(2*n)]`
-/

namespace A258867.P6659512120164962285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138515 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258867.P6659512120164962285

namespace A258867

/-- `eq[0, A138515(2*n)]` -/
def P6659512120164962285.Spec : Prop :=
  ∀ n, (P6659512120164962285.a n : ℤ) = A258867 (n + 1)

end A258867

/-! ## A258867.P11471872592781028175

`eq[0, A209941(2*n)]`
-/

namespace A258867.P11471872592781028175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209941 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258867.P11471872592781028175

namespace A258867

/-- `eq[0, A209941(2*n)]` -/
def P11471872592781028175.Spec : Prop :=
  ∀ n, (P11471872592781028175.a n : ℤ) = A258867 (n + 1)

end A258867

/-! ## A258867.P162707632191360190

`eq[0, A209942(2*n)]`
-/

namespace A258867.P162707632191360190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209942 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258867.P162707632191360190

namespace A258867

/-- `eq[0, A209942(2*n)]` -/
def P162707632191360190.Spec : Prop :=
  ∀ n, (P162707632191360190.a n : ℤ) = A258867 (n + 1)

end A258867

/-! ## A258867.P7194502659307936379

`eq[0, A214316(2*n)]`
-/

namespace A258867.P7194502659307936379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214316 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258867.P7194502659307936379

namespace A258867

/-- `eq[0, A214316(2*n)]` -/
def P7194502659307936379.Spec : Prop :=
  ∀ n, (P7194502659307936379.a n : ℤ) = A258867 (n + 1)

end A258867

/-! ## A258867.P8724011090632727449

`eq[0, A215472(2*n)]`
-/

namespace A258867.P8724011090632727449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215472 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258867.P8724011090632727449

namespace A258867

/-- `eq[0, A215472(2*n)]` -/
def P8724011090632727449.Spec : Prop :=
  ∀ n, (P8724011090632727449.a n : ℤ) = A258867 (n + 1)

end A258867

/-! ## A258867.P11868466948660932304

`eq[0, A215597(2*n)]`
-/

namespace A258867.P11868466948660932304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215597 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258867.P11868466948660932304

namespace A258867

/-- `eq[0, A215597(2*n)]` -/
def P11868466948660932304.Spec : Prop :=
  ∀ n, (P11868466948660932304.a n : ℤ) = A258867 (n + 1)

end A258867

/-! ## A258867.P9623046016964238840

`eq[0, A215601(2*n)]`
-/

namespace A258867.P9623046016964238840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215601 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258867.P9623046016964238840

namespace A258867

/-- `eq[0, A215601(2*n)]` -/
def P9623046016964238840.Spec : Prop :=
  ∀ n, (P9623046016964238840.a n : ℤ) = A258867 (n + 1)

end A258867

/-!
# A258868: a(n) is the smallest integer >= a(n-1) such that prime(n)*2^a(n)-1 is a prime number.

The programs for A258868, there is no canonical definition to state claims against.
-/

/-! ## A258868.P13512234881630087534

`∑[A351176(a(n-1))]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=3`
-/

namespace A258868.P13512234881630087534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 3] fun n f1 =>
  A351176 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258868.P13512234881630087534

/-! ## A258868.P13198497281132869426

`A118053(A080190(n))`
-/

namespace A258868.P13198497281132869426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118053 (A080190 n).toNat

end

end A258868.P13198497281132869426

/-!
# A258869: Expansion of 1 to the basis 1.880000478655... (A127583).

The programs for A258869, the canonical program `A258869.P16397166111495603221` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258869 has offset 1).

The definition of A258869 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A258869.P16397166111495603221

`ogf((1+x+x^2+x^5-x^15)/(1-x^7))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A258869

/-- `ogf((1+x+x^2+x^5-x^15)/(1-x^7))` -/
def P16397166111495603221.Spec : Prop :=
  ∀ n, P16397166111495603221.a n = A258869 (n + 1)

theorem P16397166111495603221.correct : P16397166111495603221.Spec := by
  intro n
  simp only [A258869, Nat.add_sub_cancel]

end A258869

/-!
# A258872: E.g.f.: (1/x) * Series_Reversion( -x + 2*x*exp(-x) ).

The programs for A258872, there is no canonical definition to state claims against.
-/

/-! ## A258872.P9589179248786766021

`A259062(n+1)/(n+1)`
-/

namespace A258872.P9589179248786766021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259062 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A258872.P9589179248786766021

/-!
# A258873: E.g.f.: exp( Sum_{n>=1} x^(3*n) / n^3 ) = Sum_{n>=0} a(n) * x^(3*n) / (3*n)!.

The programs for A258873, there is no canonical definition to state claims against.
-/

/-! ## A258873.P2011452495021390570

`A006480(n)*A193436(n)`
-/

namespace A258873.P2011452495021390570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006480 n * A193436 n

end

end A258873.P2011452495021390570

/-! ## A258873.P13035902804789152715

`A104684(A046092(n))*A193436(n)`
-/

namespace A258873.P13035902804789152715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104684 (A046092 n).toNat * A193436 n

end

end A258873.P13035902804789152715

/-!
# A258875: a(1) = a(2) = a(3) = 1; for n > 3, a(n) = ceiling((a(n-1) + a(n-2) + a(n-3))/2).

The programs for A258875, the canonical program `A258875.P6634172135621833953` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258875 has offset 1).

The definition of A258875 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((a(n-1)+a(n-2)+a(n-3))/2)` (program `A258875.P6634172135621833953`, by `A258875.P6634172135621833953.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A258875.P6634172135621833953

`ceil((a(n-1)+a(n-2)+a(n-3))/2)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=2, a(5)=3`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A258875

/-- `ceil((a(n-1)+a(n-2)+a(n-3))/2)` -/
def P6634172135621833953.Spec : Prop :=
  ∀ n, P6634172135621833953.a n = A258875 (n + 1)

theorem P6634172135621833953.correct : P6634172135621833953.Spec := by
  intro n
  simp only [A258875, Nat.add_sub_cancel]

end A258875

/-! ## A258875.P10523970504675044085

`round((a(n-1)+a(n-2)+a(n-3))/2)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A258875.P10523970504675044085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) + (a (n - 2) + a (n - 3)) : ℚ) / 2)

end

end A258875.P10523970504675044085

namespace A258875

/-- `round((a(n-1)+a(n-2)+a(n-3))/2)` -/
def P10523970504675044085.Spec : Prop :=
  ∀ n, P10523970504675044085.a n = A258875 (n + 1)

end A258875

/-! ## A258875.P6079642499337640043

`A180234(n+5)-1`
-/

namespace A258875.P6079642499337640043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180234 (n + 5) - 1

end

end A258875.P6079642499337640043

namespace A258875

/-- `A180234(n+5)-1` -/
def P6079642499337640043.Spec : Prop :=
  ∀ n, P6079642499337640043.a n = A258875 (n + 1)

end A258875

/-! ## A258875.P3124723750913338640

`∑[abs(Δ[A180234(n+4)])]`
-/

namespace A258875.P3124723750913338640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180234 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258875.P3124723750913338640

namespace A258875

/-- `∑[abs(Δ[A180234(n+4)])]` -/
def P3124723750913338640.Spec : Prop :=
  ∀ n, P3124723750913338640.a n = A258875 (n + 1)

end A258875

/-! ## A258875.P10801047796309239361

`A056556(A213710(n))`
-/

namespace A258875.P10801047796309239361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A213710 n).toNat

end

end A258875.P10801047796309239361

namespace A258875

/-- `A056556(A213710(n))` -/
def P10801047796309239361.Spec : Prop :=
  ∀ n, P10801047796309239361.a n = A258875 (n + 1)

end A258875

/-!
# A258876: Integers k such that both k and prime(k) have the same digital root.

The programs for A258876, the canonical program `A258876.P5938820012190541234` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258876 has offset 1).

The definition of A258876 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258876.P5938820012190541234

`eq[8, dr(A162177(n+1))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A258876

/-- `eq[8, dr(A162177(n+1))]` -/
def P5938820012190541234.Spec : Prop :=
  ∀ n, (P5938820012190541234.a n : ℤ) = A258876 (n + 1)

theorem P5938820012190541234.correct : P5938820012190541234.Spec := by
  intro n
  simp only [A258876, Nat.add_sub_cancel]

end A258876

/-! ## A258876.P11099306614655574276

`eq[1, dr(n-A028815(n))]`
-/

namespace A258876.P11099306614655574276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((n : ℤ) - A028815 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258876.P11099306614655574276

namespace A258876

/-- `eq[1, dr(n-A028815(n))]` -/
def P11099306614655574276.Spec : Prop :=
  ∀ n, (P11099306614655574276.a n : ℤ) = A258876 (n + 1)

end A258876

/-! ## A258876.P4145032518900526216

`eq[dr(A008578(n+1)), dr(n)]`
-/

namespace A258876.P4145032518900526216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A008578 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258876.P4145032518900526216

namespace A258876

/-- `eq[dr(A008578(n+1)), dr(n)]` -/
def P4145032518900526216.Spec : Prop :=
  ∀ n, (P4145032518900526216.a n : ℤ) = A258876 (n + 1)

end A258876

/-! ## A258876.P2503147222605309783

`eq[dr(A175787(n+1)), dr(n)]`
-/

namespace A258876.P2503147222605309783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A175787 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258876.P2503147222605309783

namespace A258876

/-- `eq[dr(A175787(n+1)), dr(n)]` -/
def P2503147222605309783.Spec : Prop :=
  ∀ n, (P2503147222605309783.a n : ℤ) = A258876 (n + 1)

end A258876

/-! ## A258876.P5885320997804627240

`eq[dr(n+1), dr(A000040(n+1))]+1`
-/

namespace A258876.P5885320997804627240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000040 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A258876.P5885320997804627240

namespace A258876

/-- `eq[dr(n+1), dr(A000040(n+1))]+1` -/
def P5885320997804627240.Spec : Prop :=
  ∀ n, (P5885320997804627240.a n : ℤ) = A258876 (n + 1)

end A258876

/-! ## A258876.P14592740462502514869

`A000720(A258877(n+1))`
-/

namespace A258876.P14592740462502514869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A258877 (n + 1)).toNat

end

end A258876.P14592740462502514869

namespace A258876

/-- `A000720(A258877(n+1))` -/
def P14592740462502514869.Spec : Prop :=
  ∀ n, P14592740462502514869.a n = A258876 (n + 1)

end A258876

/-! ## A258876.P4514171527025215958

`eq[1, A177274(A008578(n+1)-n)]`
-/

namespace A258876.P4514171527025215958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177274 (A008578 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258876.P4514171527025215958

namespace A258876

/-- `eq[1, A177274(A008578(n+1)-n)]` -/
def P4514171527025215958.Spec : Prop :=
  ∀ n, (P4514171527025215958.a n : ℤ) = A258876 (n + 1)

end A258876

/-! ## A258876.P13521685745770903401

`eq[A010878(A008578(n+1)), A010878(n)]`
-/

namespace A258876.P13521685745770903401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (A008578 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258876.P13521685745770903401

namespace A258876

/-- `eq[A010878(A008578(n+1)), A010878(n)]` -/
def P13521685745770903401.Spec : Prop :=
  ∀ n, (P13521685745770903401.a n : ℤ) = A258876 (n + 1)

end A258876

/-! ## A258876.P10227361892530154129

`eq[A010888(A008578(n+1)), A010888(n)]`
-/

namespace A258876.P10227361892530154129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A008578 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258876.P10227361892530154129

namespace A258876

/-- `eq[A010888(A008578(n+1)), A010888(n)]` -/
def P10227361892530154129.Spec : Prop :=
  ∀ n, (P10227361892530154129.a n : ℤ) = A258876 (n + 1)

end A258876

/-! ## A258876.P17789563458753964338

`eq[A177274(A008578(n+1)), A177274(n)]`
-/

namespace A258876.P17789563458753964338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177274 (A008578 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177274 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258876.P17789563458753964338

namespace A258876

/-- `eq[A177274(A008578(n+1)), A177274(n)]` -/
def P17789563458753964338.Spec : Prop :=
  ∀ n, (P17789563458753964338.a n : ℤ) = A258876 (n + 1)

end A258876

/-!
# A258877: Primes p=prime(m) such that both p and m have the same digital root.

The programs for A258877, the canonical program `A258877.P7623926527182171937` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258877 has offset 1).

The definition of A258877 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258876, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A258877.P7623926527182171937

`A000040(A258876(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A258877

/-- `A000040(A258876(n+1))` -/
def P7623926527182171937.Spec : Prop :=
  ∀ n, P7623926527182171937.a n = A258877 (n + 1)

theorem P7623926527182171937.correct : P7623926527182171937.Spec := by
  intro n
  simp only [A258877, Nat.add_sub_cancel]

end A258877

/-! ## A258877.P18210102816969555133

`A008578(A258876(1+n)+1)`
-/

namespace A258877.P18210102816969555133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A258876 (1 + n) + 1).toNat

end

end A258877.P18210102816969555133

namespace A258877

/-- `A008578(A258876(1+n)+1)` -/
def P18210102816969555133.Spec : Prop :=
  ∀ n, P18210102816969555133.a n = A258877 (n + 1)

end A258877

/-! ## A258877.P9714208520348043964

`A175787(A258876(1+n)+1)`
-/

namespace A258877.P9714208520348043964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A258876 (1 + n) + 1).toNat

end

end A258877.P9714208520348043964

namespace A258877

/-- `A175787(A258876(1+n)+1)` -/
def P9714208520348043964.Spec : Prop :=
  ∀ n, P9714208520348043964.a n = A258877 (n + 1)

end A258877

/-! ## A258877.P6359514094241667304

`p?[A018252(9*(n+1))+1]`
-/

namespace A258877.P6359514094241667304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (9 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258877.P6359514094241667304

namespace A258877

/-- `p?[A018252(9*(n+1))+1]` -/
def P6359514094241667304.Spec : Prop :=
  ∀ n, P6359514094241667304.a n = A258877 (n + 1)

end A258877

/-! ## A258877.P4659270831273060152

`p?[A072668(9*(n+1))]`
-/

namespace A258877.P4659270831273060152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (9 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258877.P4659270831273060152

namespace A258877

/-- `p?[A072668(9*(n+1))]` -/
def P4659270831273060152.Spec : Prop :=
  ∀ n, P4659270831273060152.a n = A258877 (n + 1)

end A258877

/-! ## A258877.P14111162900438121695

`p?[A166460(9*n+1)]`
-/

namespace A258877.P14111162900438121695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166460 (9 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258877.P14111162900438121695

namespace A258877

/-- `p?[A166460(9*n+1)]` -/
def P14111162900438121695.Spec : Prop :=
  ∀ n, P14111162900438121695.a n = A258877 (n + 1)

end A258877

/-! ## A258877.P7794733168472016075

`p?[A060462(A008591(n)+1)]`
-/

namespace A258877.P7794733168472016075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (A008591 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258877.P7794733168472016075

namespace A258877

/-- `p?[A060462(A008591(n)+1)]` -/
def P7794733168472016075.Spec : Prop :=
  ∀ n, P7794733168472016075.a n = A258877 (n + 1)

end A258877

/-!
# A258879: Numbers k such that k is the average of four consecutive primes k-7, k-1, k+1 and k+7.

The programs for A258879, there is no canonical definition to state claims against.
-/

/-! ## A258879.P15109033120458358677

`A078854(n+1)+7`
-/

namespace A258879.P15109033120458358677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078854 (n + 1) + 7

end

end A258879.P15109033120458358677

/-! ## A258879.P6234323759421263978

`A140565(4*n+6)+1`
-/

namespace A258879.P6234323759421263978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140565 (4 * n + 6) + 1

end

end A258879.P6234323759421263978

/-! ## A258879.P4520848404835448949

`7+A140565(A004766(n+1))+0`
-/

namespace A258879.P4520848404835448949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 + (A140565 (A004766 (n + 1)).toNat + 0)

end

end A258879.P4520848404835448949

/-! ## A258879.P18195170138216999237

`or(1, A140565(A004767(1+n)))-1`
-/

namespace A258879.P18195170138216999237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A140565 (A004767 (1 + n)).toNat) - 1

end

end A258879.P18195170138216999237

/-! ## A258879.P10937252400216565102

`∩[A087697(n+1), A235483(n+1)]`
-/

namespace A258879.P10937252400216565102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258879.P10937252400216565102

/-! ## A258879.P9919641577498972901

`p?[A049437(n+1)-6]+7`
-/

namespace A258879.P9919641577498972901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049437 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 7

end

end A258879.P9919641577498972901

/-! ## A258879.P11183821279050551197

`∩[A078499(n+1), A244066(n+1)]`
-/

namespace A258879.P11183821279050551197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258879.P11183821279050551197

/-! ## A258879.P9582786314767863942

`∩[A078499(n+1), A256753(n+1)]`
-/

namespace A258879.P9582786314767863942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258879.P9582786314767863942

/-! ## A258879.P16359405598079373039

`∩[A130038(n+1), A256753(n+1)]`
-/

namespace A258879.P16359405598079373039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258879.P16359405598079373039

/-!
# A258881: a(n) = n + the sum of the squared digits of n.

The programs for A258881, there is no canonical definition to state claims against.
-/

/-! ## A258881.P8503531211630923886

`∑{digits}[n, #²]+n`
-/

namespace A258881.P8503531211630923886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2).sum + n

end

end A258881.P8503531211630923886

/-! ## A258881.P888474599912789632

`log(∏{digits}[n, exp(#²)])+n`
-/

namespace A258881.P888474599912789632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.exp (x ^ 2 : ℝ)).prod + (n : ℝ)

end

end A258881.P888474599912789632

/-! ## A258881.P3226007272571794154

`log2(∏{digits}[n, 2^#²])+n`
-/

namespace A258881.P3226007272571794154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x ^ 2).prod : ℕ) : ℝ) + (n : ℝ)

end

end A258881.P3226007272571794154

/-! ## A258881.P4722309529147291205

`val(∏{digits}[n, 2^#²], 2)+n`
-/

namespace A258881.P4722309529147291205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x ^ 2).prod 2 + n

end

end A258881.P4722309529147291205

/-! ## A258881.P5369133788429288667

`floor(∑{digits}[n, #^(4/2)]+n)`
-/

namespace A258881.P5369133788429288667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℝ) ^ ((4 : ℚ) / 2 : ℝ)).sum + (n : ℝ)⌋

end

end A258881.P5369133788429288667

/-! ## A258881.P11804982231695377337

`ceil(∑{digits}[n, #^(4/2)])+n`
-/

namespace A258881.P11804982231695377337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℝ) ^ ((4 : ℚ) / 2 : ℝ)).sum⌉ + (n : ℤ)

end

end A258881.P11804982231695377337

/-! ## A258881.P12593464640782674586

`round(∑{digits}[n, #^(4/2)]+n)`
-/

namespace A258881.P12593464640782674586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℝ) ^ ((4 : ℚ) / 2 : ℝ)).sum + (n : ℝ))

end

end A258881.P12593464640782674586

/-! ## A258881.P7048003817894035271

`2*n-(n-∑{digits}[n, #²])`
-/

namespace A258881.P7048003817894035271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2).sum : ℕ) : ℤ))

end

end A258881.P7048003817894035271

/-! ## A258881.P2814017242223309422

`2*n+∑{digits}[n, #^(4/2)]-n`
-/

namespace A258881.P2814017242223309422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n : ℝ) + (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℝ) ^ ((4 : ℚ) / 2 : ℝ)).sum - (n : ℝ))

end

end A258881.P2814017242223309422

/-! ## A258881.P13547834719937233307

`A003132(n)+n`
-/

namespace A258881.P13547834719937233307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n + (n : ℤ)

end

end A258881.P13547834719937233307

/-!
# A258882: Primitive weird numbers of the form 2^k*p*q with k > 0 and where p < q are odd primes.

The programs for A258882, there is no canonical definition to state claims against.
-/

/-! ## A258882.P11599162145239000911

`filter[A002975(n+1), A356163(#)]`
-/

namespace A258882.P11599162145239000911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A258882.P11599162145239000911

/-! ## A258882.P5478985078072168109

`filter[A006037(n+1), A356163(#)]`
-/

namespace A258882.P5478985078072168109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A258882.P5478985078072168109

/-! ## A258882.P3530695599706338346

`filter[A002975(n+1), A340370(#)]`
-/

namespace A258882.P3530695599706338346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A258882.P3530695599706338346

/-!
# A258883: Primitive weird numbers (PWN) of the form 2^k*p*q*r with k > 0 and where p < q < r are odd primes.

The programs for A258883, there is no canonical definition to state claims against.
-/

/-! ## A258883.P11984581779125784556

`A258401(A111853(n+1)+A043320(n+1))`
-/

namespace A258883.P11984581779125784556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258401 (A111853 (n + 1) + A043320 (n + 1)).toNat

end

end A258883.P11984581779125784556

/-! ## A258883.P17343424754602852955

`A258401(∑[A348444(round(ϕ^(n+2)))])`
-/

namespace A258883.P17343424754602852955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348444 (SequenceMachineLib.roundAway (Real.goldenRatio ^ (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258401 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A258883.P17343424754602852955

/-! ## A258883.P5675781609028276330

`A258401(A062399(n+1))`
-/

namespace A258883.P5675781609028276330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258401 (A062399 (n + 1)).toNat

end

end A258883.P5675781609028276330

/-! ## A258883.P11959406219092270752

`A258401(A002998(n+1))`
-/

namespace A258883.P11959406219092270752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258401 (A002998 (n + 1)).toNat

end

end A258883.P11959406219092270752

/-!
# A258886: Number of (n+2)X(n+2) 0..1 arrays with no 3x3 subblock diagonal sum less than the antidiagonal sum or central row sum less than the central column sum.

The programs for A258886, there is no canonical definition to state claims against.
-/

/-! ## A258886.P916816369554595447

`A258894(∑[4*n]+1)`
-/

namespace A258886.P916816369554595447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258894 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A258886.P916816369554595447

/-! ## A258886.P14609265795671839829

`record[gcd(A114327(n), A258894(n+1))]`
-/

namespace A258886.P14609265795671839829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A258894 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258886.P14609265795671839829

/-! ## A258886.P11720685800198143732

`record[A258894(A003602((n+1)²))]`
-/

namespace A258886.P11720685800198143732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258894 (A003602 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258886.P11720685800198143732

/-! ## A258886.P2120753134701172827

`record[A258894(A057979(n²+2))]`
-/

namespace A258886.P2120753134701172827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258894 (A057979 (n ^ 2 + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258886.P2120753134701172827

/-!
# A258887: Number of (n+2)X(1+2) 0..1 arrays with no 3x3 subblock diagonal sum less than the antidiagonal sum or central row sum less than the central column sum.

The programs for A258887, there is no canonical definition to state claims against.
-/

/-! ## A258887.P2583868336618759429

`A258894(1+∑[n])`
-/

namespace A258887.P2583868336618759429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258894 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A258887.P2583868336618759429

/-! ## A258887.P3600975078059815892

`record[A258894(1+n)]`
-/

namespace A258887.P3600975078059815892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258894 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258887.P3600975078059815892

/-!
# A258888: Number of (n+2)X(2+2) 0..1 arrays with no 3x3 subblock diagonal sum less than the antidiagonal sum or central row sum less than the central column sum.

The programs for A258888, there is no canonical definition to state claims against.
-/

/-! ## A258888.P8581883567644096902

`A258894(∑[n+1]+2)`
-/

namespace A258888.P8581883567644096902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258894 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A258888.P8581883567644096902

/-! ## A258888.P12174037450877895991

`record[A258894(A133263(A028242(n)))]`
-/

namespace A258888.P12174037450877895991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258894 (A133263 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258888.P12174037450877895991

/-!
# A258889: Number of (n+2)X(3+2) 0..1 arrays with no 3x3 subblock diagonal sum less than the antidiagonal sum or central row sum less than the central column sum.

The programs for A258889, there is no canonical definition to state claims against.
-/

/-! ## A258889.P13012566959418455337

`A258894(∑[n+2]+4)`
-/

namespace A258889.P13012566959418455337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258894 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A258889.P13012566959418455337

/-!
# A258890: Number of (n+2) X (4+2) 0..1 arrays with no 3 x 3 subblock diagonal sum less than the antidiagonal sum or central row sum less than the central column sum.

The programs for A258890, there is no canonical definition to state claims against.
-/

/-! ## A258890.P18391126100416964302

`A258894(A374004(n+1))`
-/

namespace A258890.P18391126100416964302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258894 (A374004 (n + 1)).toNat

end

end A258890.P18391126100416964302

/-! ## A258890.P10878689832786655407

`A258894(∑[n+4]+3)`
-/

namespace A258890.P10878689832786655407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258894 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A258890.P10878689832786655407

/-!
# A258891: Number of (n+2) X (5+2) 0..1 arrays with no 3 x 3 subblock diagonal sum less than the antidiagonal sum or central row sum less than the central column sum.

The programs for A258891, there is no canonical definition to state claims against.
-/

/-! ## A258891.P11799685890832766749

`A258894(A374005(n+1))`
-/

namespace A258891.P11799685890832766749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258894 (A374005 (n + 1)).toNat

end

end A258891.P11799685890832766749

/-! ## A258891.P14830639425627810831

`A258894(∑[n+5]+6)`
-/

namespace A258891.P14830639425627810831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258894 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A258891.P14830639425627810831

/-!
# A258892: Number of (n+2) X (6+2) 0..1 arrays with no 3 x 3 subblock diagonal sum less than the antidiagonal sum or central row sum less than the central column sum.

The programs for A258892, there is no canonical definition to state claims against.
-/

/-! ## A258892.P17476813331790002694

`A258894(A374007(n+1))`
-/

namespace A258892.P17476813331790002694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258894 (A374007 (n + 1)).toNat

end

end A258892.P17476813331790002694

/-! ## A258892.P1574602790472132058

`A258894((n+4)²-∑[n+1]+1)`
-/

namespace A258892.P1574602790472132058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258894 (((n + 4) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A258892.P1574602790472132058

/-!
# A258893: Number of (n+2) X (7+2) 0..1 arrays with no 3 X 3 subblock diagonal sum less than the antidiagonal sum or central row sum less than the central column sum.

The programs for A258893, there is no canonical definition to state claims against.
-/

/-! ## A258893.P4934472259819459670

`A258894(A374008(n+1))`
-/

namespace A258893.P4934472259819459670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258894 (A374008 (n + 1)).toNat

end

end A258893.P4934472259819459670

/-!
# A258896: Divisorial primes p of the form p = 1 + k^2 where k^2 = Product_{d|k} d= A007955(k) for some k.

The programs for A258896, there is no canonical definition to state claims against.
-/

/-! ## A258896.P11788320785744141215

`1+A259021(1+n)²`
-/

namespace A258896.P11788320785744141215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A259021 (1 + n) ^ 2

end

end A258896.P11788320785744141215

/-! ## A258896.P532235606428866093

`A259021(n+1)^2+1`
-/

namespace A258896.P532235606428866093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259021 (n + 1) ^ 2 + 1

end

end A258896.P532235606428866093

/-! ## A258896.P13814739353225609446

`A052292(n%a(n-1)+1)` with `a(0)=2`
-/

namespace A258896.P13814739353225609446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A052292 (Int.tmod (n : ℤ) (a (n - 1)) + 1).toNat

end

end A258896.P13814739353225609446

/-! ## A258896.P17429961820618521327

`A052292(n+1)%A027775(n)`
-/

namespace A258896.P17429961820618521327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052292 (n + 1)) (A027775 (n + 14))

end

end A258896.P17429961820618521327

/-! ## A258896.P1545218635032963650

`∩[A089195(n+1), A258455(n+1)]`
-/

namespace A258896.P1545218635032963650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258896.P1545218635032963650

/-! ## A258896.P14900773756710962067

`∩[A118369(n+1), A207574(n+1)]²+1`
-/

namespace A258896.P14900773756710962067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2 + 1

end

end A258896.P14900773756710962067

/-! ## A258896.P6592791398386874131

`∩[A207574(n+1), A268752(n+1)]²+1`
-/

namespace A258896.P6592791398386874131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2 + 1

end

end A258896.P6592791398386874131

/-! ## A258896.P3424239971862171934

`∩[A005574(n+1), A207574(n+1)]²+1`
-/

namespace A258896.P3424239971862171934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2 + 1

end

end A258896.P3424239971862171934

/-! ## A258896.P14989555591293277313

`∩[A088686(n+1), A118369(n+1)]²+1`
-/

namespace A258896.P14989555591293277313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2 + 1

end

end A258896.P14989555591293277313

/-! ## A258896.P2047814765776009122

`∩[A005574(n+1), A007422(n+1)]²+1`
-/

namespace A258896.P2047814765776009122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2 + 1

end

end A258896.P2047814765776009122

/-! ## A258896.P14264097889634587653

`∩[A007422(n+1), A118369(n+1)]²+1`
-/

namespace A258896.P14264097889634587653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2 + 1

end

end A258896.P14264097889634587653

/-! ## A258896.P9417863399889139804

`∩[A007422(n+1), A268752(n+1)]²+1`
-/

namespace A258896.P9417863399889139804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2 + 1

end

end A258896.P9417863399889139804

/-! ## A258896.P9459976824648152389

`∩[A085155(n+1), A118369(n+1)]²+1`
-/

namespace A258896.P9459976824648152389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2 + 1

end

end A258896.P9459976824648152389

/-! ## A258896.P18016449381306372584

`A336319(A052291(n+1))²+1`
-/

namespace A258896.P18016449381306372584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336319 (A052291 (n + 1)).toNat ^ 2 + 1

end

end A258896.P18016449381306372584

/-! ## A258896.P3713991157156324265

`A002522(A259021(n+1))`
-/

namespace A258896.P3713991157156324265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A259021 (n + 1)).toNat

end

end A258896.P3713991157156324265

/-!
# A258897: Divisorial primes p such that p-1 = Product_{d|k} d for some k < sqrt(p-1).

The programs for A258897, there is no canonical definition to state claims against.
-/

/-! ## A258897.P11506944505678886840

`∩[A258455(n+1), A002523(A005843(n))]`
-/

namespace A258897.P11506944505678886840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 (A005843 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258897.P11506944505678886840

/-! ## A258897.P1558310490581738188

`∩[A258455(n+1), A053786(A005843(n+4))]`
-/

namespace A258897.P1558310490581738188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053786 (A005843 (n + 4)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258897.P1558310490581738188

/-!
# A258898: a(1)=a(2)=1, a(n) = ceiling(e*a(n-1) - a(n-2)) for n>2.

The programs for A258898, the canonical program `A258898.P13901727413232309560` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258898 has offset 1).

The definition of A258898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 281 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258898.P13901727413232309560

`ceil(e*a(n-1)-a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A258898

/-- `ceil(e*a(n-1)-a(n-2))` -/
def P13901727413232309560.Spec : Prop :=
  ∀ n, P13901727413232309560.a n = A258898 (n + 1)

theorem P13901727413232309560.correct : P13901727413232309560.Spec := by
  intro n
  simp only [A258898, Nat.add_sub_cancel]

end A258898

/-! ## A258898.P10983293438984960664

`record[A157905(n)]-record[A053602(n)]`
-/

namespace A258898.P10983293438984960664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157905 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A258898.P10983293438984960664

namespace A258898

/-- `record[A157905(n)]-record[A053602(n)]` -/
def P10983293438984960664.Spec : Prop :=
  ∀ n, P10983293438984960664.a n = A258898 (n + 1)

end A258898

/-! ## A258898.P7620152448593599736

`A241920(A371798(n))`
-/

namespace A258898.P7620152448593599736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241920 (A371798 n).toNat

end

end A258898.P7620152448593599736

namespace A258898

/-- `A241920(A371798(n))` -/
def P7620152448593599736.Spec : Prop :=
  ∀ n, P7620152448593599736.a n = A258898 (n + 1)

end A258898

/-! ## A258898.P9437780116470232589

`A231149(A001333(n)+A000325(n))`
-/

namespace A258898.P9437780116470232589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231149 (A001333 n + A000325 n).toNat

end

end A258898.P9437780116470232589

namespace A258898

/-- `A231149(A001333(n)+A000325(n))` -/
def P9437780116470232589.Spec : Prop :=
  ∀ n, P9437780116470232589.a n = A258898 (n + 1)

end A258898

/-! ## A258898.P5155931276955119928

`A001404(A001844(n)^A115338(n))`
-/

namespace A258898.P5155931276955119928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001404 (SequenceMachineLib.roundAway ((A001844 n : ℚ) ^ (A115338 n : ℤ))).toNat

end

end A258898.P5155931276955119928

namespace A258898

/-- `A001404(A001844(n)^A115338(n))` -/
def P5155931276955119928.Spec : Prop :=
  ∀ n, P5155931276955119928.a n = A258898 (n + 1)

end A258898

