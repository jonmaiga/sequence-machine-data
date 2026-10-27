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
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A074900: Base 4 expansion of 1/n has equal percentage of each digit 0,1,2,3 (primitive values of n only).

The programs for A074900, there is no canonical definition to state claims against.
-/

/-! ## A074900.P13781078069655613474

`record[∏{p}[A074709(n+1), #]]`
-/

namespace A074900.P13781078069655613474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074709 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074900.P13781078069655613474

/-! ## A074900.P9691802959342347509

`filter[A074709(n+1), A008966(#)]`
-/

namespace A074900.P9691802959342347509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A074900.P9691802959342347509

/-! ## A074900.P8192966509598221401

`filter[A074709(n+1), A359377(#)]`
-/

namespace A074900.P8192966509598221401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A074900.P8192966509598221401

/-! ## A074900.P1469141353029412428

`filter[A074709(n+1), A359834(#)]`
-/

namespace A074900.P1469141353029412428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A074900.P1469141353029412428

/-! ## A074900.P15624099288705294908

`filter[A074709(n+1), A371087(#)]`
-/

namespace A074900.P15624099288705294908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A074900.P15624099288705294908

/-!
# A074901: Increasingly larger bases required for composite numbers to become prime by base reversal (A075243).

The programs for A074901, there is no canonical definition to state claims against.
-/

/-! ## A074901.P4720301087460749050

`record[A075242(n+1)]`
-/

namespace A074901.P4720301087460749050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074901.P4720301087460749050

/-! ## A074901.P18035990795660394787

`record[A227864(n+4)]`
-/

namespace A074901.P18035990795660394787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227864 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074901.P18035990795660394787

/-! ## A074901.P15784300433964250725

`A227864(A075243(n+1))`
-/

namespace A074901.P15784300433964250725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227864 (A075243 (n + 1)).toNat

end

end A074901.P15784300433964250725

/-! ## A074901.P6862780247106489655

`record[A227864(n)-A055672(n)]`
-/

namespace A074901.P6862780247106489655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227864 n - A055672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074901.P6862780247106489655

/-! ## A074901.P3461023812868860860

`record[A227864(n)]-A063524(n)`
-/

namespace A074901.P3461023812868860860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A063524 n

end

end A074901.P3461023812868860860

/-!
# A074902: Known friendly numbers.

The programs for A074902, there is no canonical definition to state claims against.
-/

/-! ## A074902.P5960363984074255077

`∪[A095751(n+1), A096366(n+1)]`
-/

namespace A074902.P5960363984074255077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A074902.P5960363984074255077

/-! ## A074902.P4100094607249889617

`A023196(A047580(n+1)%A179387(2*(n+1)))`
-/

namespace A074902.P4100094607249889617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (Int.tmod (A047580 (n + 1)) (A179387 (2 * (n + 1)))).toNat

end

end A074902.P4100094607249889617

/-! ## A074902.P12104713652849000064

`A096366(C(lt[0, ∏{digits}[n², #]], n))`
-/

namespace A074902.P12104713652849000064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096366 (Nat.choose (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) n)

end

end A074902.P12104713652849000064

/-! ## A074902.P13400785161877794587

`A096366(A082743(n))`
-/

namespace A074902.P13400785161877794587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096366 (A082743 n).toNat

end

end A074902.P13400785161877794587

/-! ## A074902.P8141859957152466726

`A096366(A381225(n))`
-/

namespace A074902.P8141859957152466726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096366 (A381225 n).toNat

end

end A074902.P8141859957152466726

/-!
# A074905: a(n) = number of terms in A030229 between prime(n) and prime(n+1).

The programs for A074905, the canonical program `A074905.P15432550881472388053` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074905 has offset 1).

The definition of A074905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074905.P15432550881472388053

`Δ[A070548(p?[A165754(n)])]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A074905

/-- `Δ[A070548(p?[A165754(n)])]` -/
def P15432550881472388053.Spec : Prop :=
  ∀ n, P15432550881472388053.a n = A074905 (n + 1)

theorem P15432550881472388053.correct : P15432550881472388053.Spec := by
  intro n
  simp only [A074905, Nat.add_sub_cancel]

end A074905

/-! ## A074905.P4643093810144013262

`Δ[A070548(A000040(n+1))]`
-/

namespace A074905.P4643093810144013262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070548 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074905.P4643093810144013262

namespace A074905

/-- `Δ[A070548(A000040(n+1))]` -/
def P4643093810144013262.Spec : Prop :=
  ∀ n, P4643093810144013262.a n = A074905 (n + 1)

end A074905

/-! ## A074905.P7686640708499952065

`Δ[A070548(A006093(n+1))]`
-/

namespace A074905.P7686640708499952065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070548 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074905.P7686640708499952065

namespace A074905

/-- `Δ[A070548(A006093(n+1))]` -/
def P7686640708499952065.Spec : Prop :=
  ∀ n, P7686640708499952065.a n = A074905 (n + 1)

end A074905

/-! ## A074905.P9687747879656239482

`Δ[A070548(record[A003958(n+1)])]`
-/

namespace A074905.P9687747879656239482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070548 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074905.P9687747879656239482

namespace A074905

/-- `Δ[A070548(record[A003958(n+1)])]` -/
def P9687747879656239482.Spec : Prop :=
  ∀ n, P9687747879656239482.a n = A074905 (n + 1)

end A074905

/-! ## A074905.P14359218106920750457

`Δ[A070548(p?[A042968(n+1)])]`
-/

namespace A074905.P14359218106920750457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070548 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074905.P14359218106920750457

namespace A074905

/-- `Δ[A070548(p?[A042968(n+1)])]` -/
def P14359218106920750457.Spec : Prop :=
  ∀ n, P14359218106920750457.a n = A074905 (n + 1)

end A074905

/-! ## A074905.P7657223977995626100

`Δ[A070548(A052147(n+1)-2)]`
-/

namespace A074905.P7657223977995626100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070548 (A052147 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074905.P7657223977995626100

namespace A074905

/-- `Δ[A070548(A052147(n+1)-2)]` -/
def P7657223977995626100.Spec : Prop :=
  ∀ n, P7657223977995626100.a n = A074905 (n + 1)

end A074905

/-! ## A074905.P1793148343397315186

`A070548(A006093(n+2))-A070548(A006093(n+1))`
-/

namespace A074905.P1793148343397315186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070548 (A006093 (n + 2)).toNat - A070548 (A006093 (n + 1)).toNat

end

end A074905.P1793148343397315186

namespace A074905

/-- `A070548(A006093(n+2))-A070548(A006093(n+1))` -/
def P1793148343397315186.Spec : Prop :=
  ∀ n, P1793148343397315186.a n = A074905 (n + 1)

end A074905

/-! ## A074905.P1312813204352835014

`Δ[A085736(A182799(n+1)-n)]`
-/

namespace A074905.P1312813204352835014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A182799 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074905.P1312813204352835014

namespace A074905

/-- `Δ[A085736(A182799(n+1)-n)]` -/
def P1312813204352835014.Spec : Prop :=
  ∀ n, P1312813204352835014.a n = A074905 (n + 1)

end A074905

/-!
# A074907: Aliquot sequence starting at 570.

The programs for A074907, there is no canonical definition to state claims against.
-/

/-! ## A074907.P15837950604953730855

`A097035(∑[n^A002187(n)])`
-/

namespace A074907.P15837950604953730855
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A002187 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097035 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A074907.P15837950604953730855

/-!
# A074908: Number of integers with an odd number of distinct primes (for which mu(n)=-1) between two consecutive primes prime(n) and prime(n+1).

The programs for A074908, the canonical program `A074908.P11953398910720420392` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074908 has offset 1).

The definition of A074908 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074908.P11953398910720420392

`A061398(n+1)+2-A074905(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A074908

/-- `A061398(n+1)+2-A074905(n+1)` -/
def P11953398910720420392.Spec : Prop :=
  ∀ n, P11953398910720420392.a n = A074908 (n + 1)

theorem P11953398910720420392.correct : P11953398910720420392.Spec := by
  intro n
  simp only [A074908, Nat.add_sub_cancel]

end A074908

/-! ## A074908.P11189814773125155717

`Δ[A112929(n+1)]+1-A074905(n+1)`
-/

namespace A074908.P11189814773125155717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (1 - A074905 (n + 1))

end

end A074908.P11189814773125155717

namespace A074908

/-- `Δ[A112929(n+1)]+1-A074905(n+1)` -/
def P11189814773125155717.Spec : Prop :=
  ∀ n, P11189814773125155717.a n = A074908 (n + 1)

theorem P11189814773125155717.correct : P11189814773125155717.Spec := by
  intro n
  simp only [A074908, Nat.add_sub_cancel, A074908.P11189814773125155717.f1, A074908.P11189814773125155717.a, A074908.P11953398910720420392.a, A061398, A061398.P14693318756630178419.a, A074905, A074905.P15432550881472388053.f2, A074905.P15432550881472388053.f1, A074905.P15432550881472388053.a, A112929, A112929.P128816744454326581.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A013928, A013928.P12891540521727461604.f2, A013928.P12891540521727461604.f1, A013928.P12891540521727461604.a, A070548, A070548.P147621801857442245.a, A165754, A165754.P17957295106225998984.a, A002321, A002321.P574617781515155943.f2, A002321.P574617781515155943.f3, A002321.P574617781515155943.f1, A002321.P574617781515155943.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A074908

/-! ## A074908.P1512621214753785323

`Δ[A112930(n+1)]+1-A074905(n+1)`
-/

namespace A074908.P1512621214753785323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (1 - A074905 (n + 1))

end

end A074908.P1512621214753785323

namespace A074908

/-- `Δ[A112930(n+1)]+1-A074905(n+1)` -/
def P1512621214753785323.Spec : Prop :=
  ∀ n, P1512621214753785323.a n = A074908 (n + 1)

theorem P1512621214753785323.correct : P1512621214753785323.Spec := by
  intro n
  simp only [A074908, Nat.add_sub_cancel, A074908.P1512621214753785323.f1, A074908.P1512621214753785323.a, A074908.P11953398910720420392.a, A061398, A061398.P14693318756630178419.a, A074905, A074905.P15432550881472388053.f2, A074905.P15432550881472388053.f1, A074905.P15432550881472388053.a, A112930, A112930.P7126053726691172401.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A013928, A013928.P12891540521727461604.f2, A013928.P12891540521727461604.f1, A013928.P12891540521727461604.a, A070548, A070548.P147621801857442245.a, A112929, A112929.P128816744454326581.a, A165754, A165754.P17957295106225998984.a, A002321, A002321.P574617781515155943.f2, A002321.P574617781515155943.f3, A002321.P574617781515155943.f1, A002321.P574617781515155943.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A074908

/-! ## A074908.P7381105936732376692

`Δ[A112929(n+1)]-A023443(A074905(n+1))`
-/

namespace A074908.P7381105936732376692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A023443 (A074905 (n + 1)).toNat

end

end A074908.P7381105936732376692

namespace A074908

/-- `Δ[A112929(n+1)]-A023443(A074905(n+1))` -/
def P7381105936732376692.Spec : Prop :=
  ∀ n, P7381105936732376692.a n = A074908 (n + 1)

end A074908

/-! ## A074908.P18363220638920361336

`Δ[A112930(n+1)]-A023443(A074905(n+1))`
-/

namespace A074908.P18363220638920361336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A023443 (A074905 (n + 1)).toNat

end

end A074908.P18363220638920361336

namespace A074908

/-- `Δ[A112930(n+1)]-A023443(A074905(n+1))` -/
def P18363220638920361336.Spec : Prop :=
  ∀ n, P18363220638920361336.a n = A074908 (n + 1)

end A074908

/-! ## A074908.P12514428665945473859

`Δ[A070549(A000040(n+1))]+1`
-/

namespace A074908.P12514428665945473859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070549 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A074908.P12514428665945473859

namespace A074908

/-- `Δ[A070549(A000040(n+1))]+1` -/
def P12514428665945473859.Spec : Prop :=
  ∀ n, P12514428665945473859.a n = A074908 (n + 1)

end A074908

/-! ## A074908.P6646274547917729713

`Δ[A070549(A006093(n+1))]+1`
-/

namespace A074908.P6646274547917729713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070549 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A074908.P6646274547917729713

namespace A074908

/-- `Δ[A070549(A006093(n+1))]+1` -/
def P6646274547917729713.Spec : Prop :=
  ∀ n, P6646274547917729713.a n = A074908 (n + 1)

end A074908

/-! ## A074908.P17100329730467985292

`Δ[A070549(record[A000010(n+1)])]+1`
-/

namespace A074908.P17100329730467985292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070549 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A074908.P17100329730467985292

namespace A074908

/-- `Δ[A070549(record[A000010(n+1)])]+1` -/
def P17100329730467985292.Spec : Prop :=
  ∀ n, P17100329730467985292.a n = A074908 (n + 1)

end A074908

/-!
# A074909: Running sum of Pascal's triangle (A007318), or beheaded Pascal's triangle read by beheaded rows.

The programs for A074909, the canonical program `A074909.P6402560185863182536` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074909 has offset 0).

The definition of A074909 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074909.P6402560185863182536

`C(row(n)+1, col(n))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A074909

/-- `C(row(n)+1, col(n))` -/
def P6402560185863182536.Spec : Prop :=
  ∀ n, (P6402560185863182536.a n : ℤ) = A074909 n

theorem P6402560185863182536.correct : P6402560185863182536.Spec := by
  intro n
  simp only [A074909]

end A074909

/-! ## A074909.P10416431152425053225

`∑[A214292(abs(1-n))]`
-/

namespace A074909.P10416431152425053225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214292 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074909.P10416431152425053225

namespace A074909

/-- `∑[A214292(abs(1-n))]` -/
def P10416431152425053225.Spec : Prop :=
  ∀ n, P10416431152425053225.a n = A074909 n

end A074909

/-! ## A074909.P6123097510128351246

`A007318(comp[∑[n+1]])`
-/

namespace A074909.P6123097510128351246
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A074909.P6123097510128351246

namespace A074909

/-- `A007318(comp[∑[n+1]])` -/
def P6123097510128351246.Spec : Prop :=
  ∀ n, P6123097510128351246.a n = A074909 n

end A074909

/-! ## A074909.P415570458718355882

`A135278((n-1)%(n+1))`
-/

namespace A074909.P415570458718355882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A074909.P415570458718355882

namespace A074909

/-- `A135278((n-1)%(n+1))` -/
def P415570458718355882.Spec : Prop :=
  ∀ n, P415570458718355882.a n = A074909 n

end A074909

/-! ## A074909.P7709897833837492281

`A132812(n)/a(n-1)` with `a(0)=1`
-/

namespace A074909.P7709897833837492281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A132812 n : ℚ) / a (n - 1)

end

end A074909.P7709897833837492281

namespace A074909

/-- `A132812(n)/a(n-1)` -/
def P7709897833837492281.Spec : Prop :=
  ∀ n, P7709897833837492281.a n = (A074909 n : ℚ)

end A074909

/-! ## A074909.P9676627193209393865

`A014410(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A074909.P9676627193209393865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014410 (n + 1) - a (n - 1)

end

end A074909.P9676627193209393865

namespace A074909

/-- `A014410(n+1)-a(n-1)` -/
def P9676627193209393865.Spec : Prop :=
  ∀ n, P9676627193209393865.a n = A074909 n

end A074909

/-! ## A074909.P17029672448994667247

`A214292(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A074909.P17029672448994667247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A214292 (n - 1) + a (n - 1)

end

end A074909.P17029672448994667247

namespace A074909

/-- `A214292(n-1)+a(n-1)` -/
def P17029672448994667247.Spec : Prop :=
  ∀ n, P17029672448994667247.a n = A074909 n

end A074909

/-! ## A074909.P6332869500557506925

`A198321(A014132(n+1))`
-/

namespace A074909.P6332869500557506925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198321 (A014132 (n + 1)).toNat

end

end A074909.P6332869500557506925

namespace A074909

/-- `A198321(A014132(n+1))` -/
def P6332869500557506925.Spec : Prop :=
  ∀ n, P6332869500557506925.a n = A074909 n

end A074909

/-! ## A074909.P1888258930511388224

`A135278(A057428(n)+n)`
-/

namespace A074909.P1888258930511388224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (A057428 n + (n : ℤ)).toNat

end

end A074909.P1888258930511388224

namespace A074909

/-- `A135278(A057428(n)+n)` -/
def P1888258930511388224.Spec : Prop :=
  ∀ n, P1888258930511388224.a n = A074909 n

end A074909

/-! ## A074909.P5794581830095712487

`A156644(n)+A051601(n)`
-/

namespace A074909.P5794581830095712487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156644 n + A051601 n

end

end A074909.P5794581830095712487

namespace A074909

/-- `A156644(n)+A051601(n)` -/
def P5794581830095712487.Spec : Prop :=
  ∀ n, P5794581830095712487.a n = A074909 n

end A074909

/-! ## A074909.P1295018287147298884

`A325191(n)+A010054(n)`
-/

namespace A074909.P1295018287147298884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325191 n + A010054 n

end

end A074909.P1295018287147298884

namespace A074909

/-- `A325191(n)+A010054(n)` -/
def P1295018287147298884.Spec : Prop :=
  ∀ n, P1295018287147298884.a n = A074909 n

theorem P1295018287147298884.correct : P1295018287147298884.Spec := by
  intro n
  simp only [A074909, Nat.add_sub_cancel, A074909.P1295018287147298884.a, A074909.P6402560185863182536.a, A010054, A010054.P18347828677204923252.a, A325191, A325191.P1948114789834443761.a, A005369, A005369.P10796159359873341658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A074909

/-! ## A074909.P5749691224691454300

`A028326(n)-A080233(n)`
-/

namespace A074909.P5749691224691454300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A080233 n

end

end A074909.P5749691224691454300

namespace A074909

/-- `A028326(n)-A080233(n)` -/
def P5749691224691454300.Spec : Prop :=
  ∀ n, P5749691224691454300.a n = A074909 n

end A074909

/-! ## A074909.P2673180417325806037

`A135278(A004273(n)-n)`
-/

namespace A074909.P2673180417325806037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (A004273 n - (n : ℤ)).toNat

end

end A074909.P2673180417325806037

namespace A074909

/-- `A135278(A004273(n)-n)` -/
def P2673180417325806037.Spec : Prop :=
  ∀ n, P2673180417325806037.a n = A074909 n

end A074909

/-! ## A074909.P3041372490971784329

`A135278(n)-A214292(n)`
-/

namespace A074909.P3041372490971784329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n - A214292 n

end

end A074909.P3041372490971784329

namespace A074909

/-- `A135278(n)-A214292(n)` -/
def P3041372490971784329.Spec : Prop :=
  ∀ n, P3041372490971784329.a n = A074909 n

end A074909

/-! ## A074909.P17725750843813069502

`A132813(n)/A007318(n)`
-/

namespace A074909.P17725750843813069502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132813 n : ℚ) / (A007318 n : ℚ)

end

end A074909.P17725750843813069502

namespace A074909

/-- `A132813(n)/A007318(n)` -/
def P17725750843813069502.Spec : Prop :=
  ∀ n, P17725750843813069502.a n = (A074909 n : ℚ)

end A074909

/-! ## A074909.P7939125912304890288

`gcd(A010816(n), A227396(n))`
-/

namespace A074909.P7939125912304890288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010816 n) (A227396 n)

end

end A074909.P7939125912304890288

namespace A074909

/-- `gcd(A010816(n), A227396(n))` -/
def P7939125912304890288.Spec : Prop :=
  ∀ n, (P7939125912304890288.a n : ℤ) = A074909 n

end A074909

/-! ## A074909.P16585884203142075013

`gcd(A106459(n), A325191(n))`
-/

namespace A074909.P16585884203142075013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106459 n) (A325191 n)

end

end A074909.P16585884203142075013

namespace A074909

/-- `gcd(A106459(n), A325191(n))` -/
def P16585884203142075013.Spec : Prop :=
  ∀ n, (P16585884203142075013.a n : ℤ) = A074909 n

end A074909

/-! ## A074909.P6707642907239843837

`C(∑[A010054(n)], A002262(n))`
-/

namespace A074909.P6707642907239843837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat (A002262 n).toNat

end

end A074909.P6707642907239843837

namespace A074909

/-- `C(∑[A010054(n)], A002262(n))` -/
def P6707642907239843837.Spec : Prop :=
  ∀ n, (P6707642907239843837.a n : ℤ) = A074909 n

end A074909

/-! ## A074909.P17775497025310022570

`A029656(n+1)-A007318(n)`
-/

namespace A074909.P17775497025310022570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (n + 1) - A007318 n

end

end A074909.P17775497025310022570

namespace A074909

/-- `A029656(n+1)-A007318(n)` -/
def P17775497025310022570.Spec : Prop :=
  ∀ n, P17775497025310022570.a n = A074909 n

theorem P17775497025310022570.correct : P17775497025310022570.Spec := by
  intro n
  simp only [A074909, Nat.add_sub_cancel, A074909.P17775497025310022570.a, A074909.P6402560185863182536.a, A007318, A007318.P11755526479805562006.a, A029656, A029656.P13202918215397249679.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A074909

/-!
# A074910: Moebius function applied to A053422.

The programs for A074910, there is no canonical definition to state claims against.
-/

/-! ## A074910.P16144348212832242125

`A156277(n+1)^A191932(3*n+2)`
-/

namespace A074910.P16144348212832242125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156277 (n + 1) : ℚ) ^ (A191932 (3 * n + 2) : ℤ)

end

end A074910.P16144348212832242125

/-! ## A074910.P3725864046151201056

`A156277(n+1)^A156229(A344604(n))`
-/

namespace A074910.P3725864046151201056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156277 (n + 1) : ℚ) ^ (A156229 (A344604 n).toNat : ℤ)

end

end A074910.P3725864046151201056

/-! ## A074910.P6009997556179289723

`A008683(3*(n+1))*A362928(A374685(3*(n+1)))`
-/

namespace A074910.P6009997556179289723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (3 * (n + 1)) * A362928 (A374685 (3 * (n + 1))).toNat

end

end A074910.P6009997556179289723

/-! ## A074910.P7616008270933144868

`A156277(n+1)^A275716(A376536(n+1))`
-/

namespace A074910.P7616008270933144868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156277 (n + 1) : ℚ) ^ (A275716 (A376536 (n + 1)).toNat : ℤ)

end

end A074910.P7616008270933144868

/-! ## A074910.P7380607237927742204

`A156277(n+1)^A372356(A330725(n+4))`
-/

namespace A074910.P7380607237927742204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156277 (n + 1) : ℚ) ^ (A372356 (A330725 (n + 4)).toNat : ℤ)

end

end A074910.P7380607237927742204

/-!
# A074911: Triangle generated by Pascal's rule, except begin and end the n-th row with n!.

The programs for A074911, there is no canonical definition to state claims against.
-/

/-! ## A074911.P15682518652787040225

`∑{d}[A317644(n), A276075(A014963(#))]`
-/

namespace A074911.P15682518652787040225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A276075 (A014963 d).toNat

end

end A074911.P15682518652787040225

/-! ## A074911.P6634368169464366918

`A276075(A317644(n))`
-/

namespace A074911.P6634368169464366918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276075 (A317644 n).toNat

end

end A074911.P6634368169464366918

/-! ## A074911.P14003205314982321721

`A110141(A219106(n+1))`
-/

namespace A074911.P14003205314982321721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110141 (A219106 (n + 1)).toNat

end

end A074911.P14003205314982321721

/-! ## A074911.P10589619279572227752

`A110141(A219985(n+1))`
-/

namespace A074911.P10589619279572227752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110141 (A219985 (n + 1)).toNat

end

end A074911.P10589619279572227752

/-! ## A074911.P10613728740832115657

`A098361(n)*A157720(A218288(n+1))`
-/

namespace A074911.P10613728740832115657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n * A157720 (A218288 (n + 1)).toNat

end

end A074911.P10613728740832115657

/-!
# A074913: Digits of n appear in n^2 and in n^3.

The programs for A074913, there is no canonical definition to state claims against.
-/

/-! ## A074913.P8224953753978706176

`∩[A029776(n+1), A046827(n+1)]%A161138(n+1)`
-/

namespace A074913.P8224953753978706176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046827 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A161138 (n + 1))

end

end A074913.P8224953753978706176

/-! ## A074913.P6284969665292901608

`∩[A029780(n+1), A046827(n+1)]%A161138(n+1)`
-/

namespace A074913.P6284969665292901608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046827 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A161138 (n + 1))

end

end A074913.P6284969665292901608

/-! ## A074913.P36651310684274835

`lt[A100282(A258682(n)), A003991(n+1)]`
-/

namespace A074913.P36651310684274835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100282 (A258682 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074913.P36651310684274835

/-! ## A074913.P8869657702539582332

`lt[A258682(n), A101886(A060819(n+1))]`
-/

namespace A074913.P8869657702539582332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258682 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101886 (A060819 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074913.P8869657702539582332

/-! ## A074913.P492103449608054096

`A046827(lt[A300442(2*(n+1)), A284089(n+1)])`
-/

namespace A074913.P492103449608054096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300442 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046827 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A074913.P492103449608054096

/-!
# A074916: Decimal expansion of (Pi + e)/2.

The programs for A074916, there is no canonical definition to state claims against.
-/

/-! ## A074916.P891552164036432322

`A074917(n)+A019645(n)`
-/

namespace A074916.P891552164036432322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074917 (n + 1) + A019645 (n + 1)

end

end A074916.P891552164036432322

/-!
# A074917: Decimal expansion of (Pi+e)/2 - decimal expansion of (Pi*e)^(1/2).

The programs for A074917, there is no canonical definition to state claims against.
-/

/-! ## A074917.P4997957298065974533

`A074916(n)-A019645(n)`
-/

namespace A074917.P4997957298065974533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074916 (n + 1) - A019645 (n + 1)

end

end A074917.P4997957298065974533

/-!
# A074918: Highly imperfect numbers: n sets a record for the value of abs(sigma(n)-2*n) (absolute value of A033879).

The programs for A074918, there is no canonical definition to state claims against.
-/

/-! ## A074918.P2282056213543659072

`A175524(n+1)-A025456(A055105(n+1))`
-/

namespace A074918.P2282056213543659072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175524 (n + 1) - A025456 (A055105 (n + 1)).toNat

end

end A074918.P2282056213543659072

/-! ## A074918.P9272677642524412784

`A344705(A175524(n+1)%A161848(n+1))`
-/

namespace A074918.P9272677642524412784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344705 (Int.tmod (A175524 (n + 1)) (A161848 (n + 1))).toNat

end

end A074918.P9272677642524412784

/-! ## A074918.P1121625060381539088

`A344705(A175524(n+1))%A175536(n+1)`
-/

namespace A074918.P1121625060381539088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344705 (A175524 (n + 1)).toNat) (A175536 (n + 1))

end

end A074918.P1121625060381539088

/-! ## A074918.P3244839144207817375

`A344705(A175524(n+1))%A015873(A008619(n))`
-/

namespace A074918.P3244839144207817375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344705 (A175524 (n + 1)).toNat) (A015873 (A008619 n).toNat)

end

end A074918.P3244839144207817375

/-! ## A074918.P3884915246034919755

`record[A316941(2*n+1)%(n²-A137932(n)+3)]`
-/

namespace A074918.P3884915246034919755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316941 (2 * n + 1)) ((n ^ 2 : ℤ) - A137932 n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074918.P3884915246034919755

/-!
# A074919: Number of integers in {1, 2, ..., phi(n)} that are coprime to n.

The programs for A074919, the canonical program `A074919.P483110593070601993` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074919 has offset 1).

The definition of A074919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074919.P483110593070601993

`A078401(A000010(n+1)+∑[n])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A074919

/-- `A078401(A000010(n+1)+∑[n])` -/
def P483110593070601993.Spec : Prop :=
  ∀ n, P483110593070601993.a n = A074919 (n + 1)

theorem P483110593070601993.correct : P483110593070601993.Spec := by
  intro n
  simp only [A074919, Nat.add_sub_cancel]

end A074919

/-! ## A074919.P8885127349919558264

`A078401(A000217(n)+A000010(n+1))`
-/

namespace A074919.P8885127349919558264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078401 (A000217 n + A000010 (n + 1)).toNat

end

end A074919.P8885127349919558264

namespace A074919

/-- `A078401(A000217(n)+A000010(n+1))` -/
def P8885127349919558264.Spec : Prop :=
  ∀ n, P8885127349919558264.a n = A074919 (n + 1)

end A074919

/-! ## A074919.P11674620073581012318

`A000120(A054432(n+1)%A001316(A054432(n+1)))`
-/

namespace A074919.P11674620073581012318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.tmod (A054432 (n + 1)) (A001316 (A054432 (n + 1)).toNat)).toNat

end

end A074919.P11674620073581012318

namespace A074919

/-- `A000120(A054432(n+1)%A001316(A054432(n+1)))` -/
def P11674620073581012318.Spec : Prop :=
  ∀ n, P11674620073581012318.a n = A074919 (n + 1)

end A074919

/-! ## A074919.P268995989830343538

`A342415(A346098(n+1))`
-/

namespace A074919.P268995989830343538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342415 (A346098 (n + 1)).toNat

end

end A074919.P268995989830343538

namespace A074919

/-- `A342415(A346098(n+1))` -/
def P268995989830343538.Spec : Prop :=
  ∀ n, P268995989830343538.a n = A074919 (n + 1)

end A074919

/-! ## A074919.P14590833136747991473

`A144379(∑[n]+A000010(n+1)+1)`
-/

namespace A074919.P14590833136747991473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144379 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A000010 (n + 1) + 1).toNat

end

end A074919.P14590833136747991473

namespace A074919

/-- `A144379(∑[n]+A000010(n+1)+1)` -/
def P14590833136747991473.Spec : Prop :=
  ∀ n, P14590833136747991473.a n = A074919 (n + 1)

end A074919

/-!
# A074922: Number of ways of arranging n chords on a circle (handshakes between 2n people across a table) with exactly 2 simple intersections.

The programs for A074922, the canonical program `A074922.P6112303066442032603` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074922 has offset 0).

The definition of A074922 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074922.P14917461916455435527

`n*Δ[A371963(n)]`
-/

namespace A074922.P14917461916455435527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A074922.P14917461916455435527

namespace A074922

/-- `n*Δ[A371963(n)]` -/
def P14917461916455435527.Spec : Prop :=
  ∀ n, P14917461916455435527.a n = A074922 n

end A074922

/-! ## A074922.P6112303066442032603

`n*A037953(comp[2*(n+1)])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A074922

/-- `n*A037953(comp[2*(n+1)])` -/
def P6112303066442032603.Spec : Prop :=
  ∀ n, P6112303066442032603.a n = A074922 n

theorem P6112303066442032603.correct : P6112303066442032603.Spec := by
  intro n
  simp only [A074922]

end A074922

/-! ## A074922.P2081411316318811578

`n*(A088218(n)-A000245(n))`
-/

namespace A074922.P2081411316318811578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A088218 n - A000245 n)

end

end A074922.P2081411316318811578

namespace A074922

/-- `n*(A088218(n)-A000245(n))` -/
def P2081411316318811578.Spec : Prop :=
  ∀ n, P2081411316318811578.a n = A074922 n

end A074922

/-! ## A074922.P4557609037610682355

`n*(A088218(n)-A071724(n))`
-/

namespace A074922.P4557609037610682355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A088218 n - A071724 n)

end

end A074922.P4557609037610682355

namespace A074922

/-- `n*(A088218(n)-A071724(n))` -/
def P4557609037610682355.Spec : Prop :=
  ∀ n, P4557609037610682355.a n = A074922 n

end A074922

/-! ## A074922.P1087387790481724823

`n*C(abs(1-2*n), n+2)`
-/

namespace A074922.P1087387790481724823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose |1 - (2 * n : ℤ)|.toNat (n + 2)

end

end A074922.P1087387790481724823

namespace A074922

/-- `n*C(abs(1-2*n), n+2)` -/
def P1087387790481724823.Spec : Prop :=
  ∀ n, (P1087387790481724823.a n : ℤ) = A074922 n

end A074922

/-! ## A074922.P10045766485988513851

`(n+3)*C(2*n, n+3)/2`
-/

namespace A074922.P10045766485988513851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) * ((Nat.choose (2 * n) (n + 3) : ℚ) / 2)

end

end A074922.P10045766485988513851

namespace A074922

/-- `(n+3)*C(2*n, n+3)/2` -/
def P10045766485988513851.Spec : Prop :=
  ∀ n, P10045766485988513851.a n = (A074922 n : ℚ)

end A074922

/-! ## A074922.P10142809129566009163

`C(comp[2*(n+1)], n+2)*round(acot(n)+n)`
-/

namespace A074922.P10142809129566009163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) (n + 2) : ℤ) * SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))

end

end A074922.P10142809129566009163

namespace A074922

/-- `C(comp[2*(n+1)], n+2)*round(acot(n)+n)` -/
def P10142809129566009163.Spec : Prop :=
  ∀ n, P10142809129566009163.a n = A074922 n

end A074922

/-! ## A074922.P5394871534386909015

`C(comp[2*(n+1)], n+2)*round(sqrt(n²+1))`
-/

namespace A074922.P5394871534386909015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) (n + 2) : ℤ) * SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))

end

end A074922.P5394871534386909015

namespace A074922

/-- `C(comp[2*(n+1)], n+2)*round(sqrt(n²+1))` -/
def P5394871534386909015.Spec : Prop :=
  ∀ n, P5394871534386909015.a n = A074922 n

end A074922

/-! ## A074922.P10596536118576456462

`A067310(∑[n+3])`
-/

namespace A074922.P10596536118576456462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067310 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074922.P10596536118576456462

namespace A074922

/-- `A067310(∑[n+3])` -/
def P10596536118576456462.Spec : Prop :=
  ∀ n, P10596536118576456462.a n = A074922 n

end A074922

/-! ## A074922.P12600288155472611716

`n*A163259(A105343(2*n))`
-/

namespace A074922.P12600288155472611716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A163259 (A105343 (2 * n)).toNat

end

end A074922.P12600288155472611716

namespace A074922

/-- `n*A163259(A105343(2*n))` -/
def P12600288155472611716.Spec : Prop :=
  ∀ n, P12600288155472611716.a n = A074922 n

end A074922

/-!
# A074924: Numbers whose square is the sum of two successive primes.

The programs for A074924, there is no canonical definition to state claims against.
-/

/-! ## A074924.P1632926947148749534

`sqrt(A062703(n+1))`
-/

namespace A074924.P1632926947148749534
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062703 (n + 1) : ℝ)

end

end A074924.P1632926947148749534

/-! ## A074924.P17869230178053762449

`ceil(sqrt(2*A061275(n+1)))`
-/

namespace A074924.P17869230178053762449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A061275 (n + 1) : ℝ)⌉

end

end A074924.P17869230178053762449

/-! ## A074924.P1839874154794770037

`A062703(n+1)%A298462(n+1)`
-/

namespace A074924.P1839874154794770037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062703 (n + 1)) (A298462 (n + 1))

end

end A074924.P1839874154794770037

/-! ## A074924.P15965144392346612196

`root(∩[A245360(n+1), n²], 2)`
-/

namespace A074924.P15965144392346612196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245360 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ) ^ (1 / (2 : ℝ))

end

end A074924.P15965144392346612196

/-! ## A074924.P6996322157526801653

`2*A139013(n+1)`
-/

namespace A074924.P6996322157526801653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139013 (n + 1)

end

end A074924.P6996322157526801653

/-! ## A074924.P3670560144408675084

`A139013(n+1)+A139013(Δ[n²]-n)`
-/

namespace A074924.P3670560144408675084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139013 (n + 1) + A139013 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A074924.P3670560144408675084

/-! ## A074924.P11892945256282993737

`A139013(n+1)+lcm(A131554(n), A139013(n+1))`
-/

namespace A074924.P11892945256282993737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139013 (n + 1) + (Int.lcm (A131554 n) (A139013 (n + 1)) : ℤ)

end

end A074924.P11892945256282993737

/-! ## A074924.P1706636745172588026

`A139013(n+1)+gcd(A062703(n+1), A139013(n+1))`
-/

namespace A074924.P1706636745172588026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139013 (n + 1) + (Int.gcd (A062703 (n + 1)) (A139013 (n + 1)) : ℤ)

end

end A074924.P1706636745172588026

/-! ## A074924.P7410874361989749305

`A004277(A139013(n+1))`
-/

namespace A074924.P7410874361989749305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A139013 (n + 1)).toNat

end

end A074924.P7410874361989749305

/-! ## A074924.P15225265717678711209

`A004275(A139013(n+1)+1)`
-/

namespace A074924.P15225265717678711209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A139013 (n + 1) + 1).toNat

end

end A074924.P15225265717678711209

/-! ## A074924.P4438897171861643526

`A051755(A139013(n+1)+1)`
-/

namespace A074924.P4438897171861643526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (A139013 (n + 1) + 1).toNat

end

end A074924.P4438897171861643526

/-! ## A074924.P15669001249084989702

`A103517(A139013(n+1)-1)`
-/

namespace A074924.P15669001249084989702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A139013 (n + 1) - 1).toNat

end

end A074924.P15669001249084989702

/-! ## A074924.P5883097627875074708

`A008592(A139013(Δ[n²]-n))/5`
-/

namespace A074924.P5883097627875074708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008592 (A139013 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat : ℚ) / 5

end

end A074924.P5883097627875074708

/-! ## A074924.P10917029985509121536

`A005843(lcm(A131554(n), A139013(n+1)))`
-/

namespace A074924.P10917029985509121536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.lcm (A131554 n) (A139013 (n + 1)))

end

end A074924.P10917029985509121536

/-! ## A074924.P11649768784022518567

`A199969(A139013(n+1)+A139013(n+1)+1)`
-/

namespace A074924.P11649768784022518567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A139013 (n + 1) + (A139013 (n + 1) + 1)).toNat

end

end A074924.P11649768784022518567

/-! ## A074924.P6034846427566696442

`A065033(4*A139013(Δ[n²]-n))`
-/

namespace A074924.P6034846427566696442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (4 * A139013 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A074924.P6034846427566696442

/-!
# A074925: Numbers n such that n^3 is a sum of two successive primes.

The programs for A074925, there is no canonical definition to state claims against.
-/

/-! ## A074925.P17068061499064657228

`root(A226524(n+1), 3)`
-/

namespace A074925.P17068061499064657228
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A226524 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A074925.P17068061499064657228

/-! ## A074925.P6847933065621295856

`A226524(n+1)^(A037073(n+1)/A173165(n+1))`
-/

namespace A074925.P6847933065621295856
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A226524 (n + 1) : ℝ) ^ ((A037073 (n + 1) : ℚ) / (A173165 (n + 1) : ℚ) : ℝ)

end

end A074925.P6847933065621295856

/-! ## A074925.P7911163088593238166

`root(∩[A245360(n+1), A000578(n)], 3)`
-/

namespace A074925.P7911163088593238166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ) ^ (1 / (3 : ℝ))

end

end A074925.P7911163088593238166

/-! ## A074925.P579922626689081115

`root(∩[A245360(n+1), A016743(n)], 3)`
-/

namespace A074925.P579922626689081115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016743 n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ) ^ (1 / (3 : ℝ))

end

end A074925.P579922626689081115

/-! ## A074925.P10185901186178575501

`root(∩[A153147(n+1), A245360(n+1)], 3)`
-/

namespace A074925.P10185901186178575501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245360 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ) ^ (1 / (3 : ℝ))

end

end A074925.P10185901186178575501

/-!
# A074926: Numbers n such that p(n)*p(n+1)+4 is a prime.

The programs for A074926, there is no canonical definition to state claims against.
-/

/-! ## A074926.P16349363486744752970

`A000720(floor(sqrt(A063442(n+1))))`
-/

namespace A074926.P16349363486744752970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.sqrt (A063442 (n + 1))).toNat

end

end A074926.P16349363486744752970

/-! ## A074926.P5565156518724722199

`A000720(round(sqrt(A063442(n+1))))`
-/

namespace A074926.P5565156518724722199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway (Real.sqrt (A063442 (n + 1) : ℝ))).toNat

end

end A074926.P5565156518724722199

/-! ## A074926.P8107701339339931808

`A230980(floor(sqrt(A063442(n+1))))`
-/

namespace A074926.P8107701339339931808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (Int.sqrt (A063442 (n + 1))).toNat

end

end A074926.P8107701339339931808

/-! ## A074926.P11363959559788388481

`A230980(round(sqrt(A063442(n+1))))`
-/

namespace A074926.P11363959559788388481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (SequenceMachineLib.roundAway (Real.sqrt (A063442 (n + 1) : ℝ))).toNat

end

end A074926.P11363959559788388481

/-!
# A074927: a(n) such that p(n)*p(n+1)+a(n) is a minimal square.

The programs for A074927, the canonical program `A074927.P44526691509878723` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074927 has offset 1).

The definition of A074927 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074927.P3736844621312124421

`A350091(A001223(n+1)²+2)`
-/

namespace A074927.P3736844621312124421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350091 (A001223 (n + 1) ^ 2 + 2).toNat

end

end A074927.P3736844621312124421

namespace A074927

/-- `A350091(A001223(n+1)²+2)` -/
def P3736844621312124421.Spec : Prop :=
  ∀ n, P3736844621312124421.a n = A074927 (n + 1)

end A074927

/-! ## A074927.P44526691509878723

`A076621(n+1)-A006094(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A074927

/-- `A076621(n+1)-A006094(n+1)` -/
def P44526691509878723.Spec : Prop :=
  ∀ n, P44526691509878723.a n = A074927 (n + 1)

theorem P44526691509878723.correct : P44526691509878723.Spec := by
  intro n
  simp only [A074927, Nat.add_sub_cancel]

end A074927

/-! ## A074927.P16002028989828707337

`(A078444(n+1)+1)²-A006094(n+1)`
-/

namespace A074927.P16002028989828707337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A078444 (n + 1) + 1) ^ 2 - A006094 (n + 1)

end

end A074927.P16002028989828707337

namespace A074927

/-- `(A078444(n+1)+1)²-A006094(n+1)` -/
def P16002028989828707337.Spec : Prop :=
  ∀ n, P16002028989828707337.a n = A074927 (n + 1)

end A074927

/-! ## A074927.P15573089503073589063

`A001281(A001223(n+1))²-A000007(n)`
-/

namespace A074927.P15573089503073589063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A001223 (n + 1)).toNat ^ 2 - A000007 n

end

end A074927.P15573089503073589063

namespace A074927

/-- `A001281(A001223(n+1))²-A000007(n)` -/
def P15573089503073589063.Spec : Prop :=
  ∀ n, P15573089503073589063.a n = A074927 (n + 1)

end A074927

/-! ## A074927.P11733774415064387319

`A002265(A189723(a(n-1)+1)+A001223(n+1)²)` with `a(0)=3`
-/

namespace A074927.P11733774415064387319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A002265 (A189723 (a (n - 1) + 1).toNat + A001223 (n + 1) ^ 2).toNat

end

end A074927.P11733774415064387319

namespace A074927

/-- `A002265(A189723(a(n-1)+1)+A001223(n+1)²)` -/
def P11733774415064387319.Spec : Prop :=
  ∀ n, P11733774415064387319.a n = A074927 (n + 1)

end A074927

/-! ## A074927.P1487667719780675569

`A004652(Δ[xor(1, A006093(n+1))])`
-/

namespace A074927.P1487667719780675569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A006093 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (f1 (n + 1) - f1 n).toNat

end

end A074927.P1487667719780675569

namespace A074927

/-- `A004652(Δ[xor(1, A006093(n+1))])` -/
def P1487667719780675569.Spec : Prop :=
  ∀ n, P1487667719780675569.a n = A074927 (n + 1)

end A074927

/-! ## A074927.P14963768428807032652

`xor(2, A010000(Δ[A130290(n+1)]))`
-/

namespace A074927.P14963768428807032652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A010000 (f1 (n + 1) - f1 n).toNat)

end

end A074927.P14963768428807032652

namespace A074927

/-- `xor(2, A010000(Δ[A130290(n+1)]))` -/
def P14963768428807032652.Spec : Prop :=
  ∀ n, P14963768428807032652.a n = A074927 (n + 1)

end A074927

/-! ## A074927.P12607373812042536619

`A004652(Δ[A000040(n+1)%A005897(n)])`
-/

namespace A074927.P12607373812042536619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A005897 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (f1 (n + 1) - f1 n).toNat

end

end A074927.P12607373812042536619

namespace A074927

/-- `A004652(Δ[A000040(n+1)%A005897(n)])` -/
def P12607373812042536619.Spec : Prop :=
  ∀ n, P12607373812042536619.a n = A074927 (n + 1)

end A074927

/-!
# A074928: a(n) is the least k>0 such that prime(n)*prime(n+1) + k is prime.

The programs for A074928, the canonical program `A074928.P1039295149223078673` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074928 has offset 1).

The definition of A074928 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074928.P1039295149223078673

`A391804(n+1)-A006094(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A074928

/-- `A391804(n+1)-A006094(n+1)` -/
def P1039295149223078673.Spec : Prop :=
  ∀ n, P1039295149223078673.a n = A074928 (n + 1)

theorem P1039295149223078673.correct : P1039295149223078673.Spec := by
  intro n
  simp only [A074928, Nat.add_sub_cancel]

end A074928

/-! ## A074928.P8284195927631554469

`A391804(n+1)%A000040(n+1)`
-/

namespace A074928.P8284195927631554469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A391804 (n + 1)) (A000040 (n + 1))

end

end A074928.P8284195927631554469

namespace A074928

/-- `A391804(n+1)%A000040(n+1)` -/
def P8284195927631554469.Spec : Prop :=
  ∀ n, P8284195927631554469.a n = A074928 (n + 1)

end A074928

/-! ## A074928.P11261007856335109738

`A391804(n+1)-A000040(n+1)*A000040(n+2)`
-/

namespace A074928.P11261007856335109738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391804 (n + 1) - A000040 (n + 1) * A000040 (n + 2)

end

end A074928.P11261007856335109738

namespace A074928

/-- `A391804(n+1)-A000040(n+1)*A000040(n+2)` -/
def P11261007856335109738.Spec : Prop :=
  ∀ n, P11261007856335109738.a n = A074928 (n + 1)

end A074928

/-! ## A074928.P14938082539751057672

`A378135(A000040(n+1))-A006094(n+1)`
-/

namespace A074928.P14938082539751057672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378135 (A000040 (n + 1)).toNat - A006094 (n + 1)

end

end A074928.P14938082539751057672

namespace A074928

/-- `A378135(A000040(n+1))-A006094(n+1)` -/
def P14938082539751057672.Spec : Prop :=
  ∀ n, P14938082539751057672.a n = A074928 (n + 1)

end A074928

/-! ## A074928.P12483065163650601217

`A378135(A000040(n+1))%A000040(n+2)`
-/

namespace A074928.P12483065163650601217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A378135 (A000040 (n + 1)).toNat) (A000040 (n + 2))

end

end A074928.P12483065163650601217

namespace A074928

/-- `A378135(A000040(n+1))%A000040(n+2)` -/
def P12483065163650601217.Spec : Prop :=
  ∀ n, P12483065163650601217.a n = A074928 (n + 1)

end A074928

/-! ## A074928.P4932675126539635774

`A151800(record[A116570(n)])%A000040(n+1)`
-/

namespace A074928.P4932675126539635774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151800 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A000040 (n + 1))

end

end A074928.P4932675126539635774

namespace A074928

/-- `A151800(record[A116570(n)])%A000040(n+1)` -/
def P4932675126539635774.Spec : Prop :=
  ∀ n, P4932675126539635774.a n = A074928 (n + 1)

end A074928

/-! ## A074928.P9816869508379446539

`A151800(A391805(n+1))-A006094(n+1)`
-/

namespace A074928.P9816869508379446539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A391805 (n + 1)).toNat - A006094 (n + 1)

end

end A074928.P9816869508379446539

namespace A074928

/-- `A151800(A391805(n+1))-A006094(n+1)` -/
def P9816869508379446539.Spec : Prop :=
  ∀ n, P9816869508379446539.a n = A074928 (n + 1)

end A074928

/-! ## A074928.P1952426820522594405

`A151800(A116570(2*n))-A116570(2*n)`
-/

namespace A074928.P1952426820522594405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A116570 (2 * n)).toNat - A116570 (2 * n)

end

end A074928.P1952426820522594405

namespace A074928

/-- `A151800(A116570(2*n))-A116570(2*n)` -/
def P1952426820522594405.Spec : Prop :=
  ∀ n, P1952426820522594405.a n = A074928 (n + 1)

end A074928

/-! ## A074928.P4216470397603240973

`A151800(A124669(n+1))%A000040(n+1)`
-/

namespace A074928.P4216470397603240973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151800 (A124669 (n + 1)).toNat) (A000040 (n + 1))

end

end A074928.P4216470397603240973

namespace A074928

/-- `A151800(A124669(n+1))%A000040(n+1)` -/
def P4216470397603240973.Spec : Prop :=
  ∀ n, P4216470397603240973.a n = A074928 (n + 1)

end A074928

/-! ## A074928.P2908713889063492442

`A151800(A023515(n+2))%A000040(n+2)`
-/

namespace A074928.P2908713889063492442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151800 (A023515 (n + 2)).toNat) (A000040 (n + 2))

end

end A074928.P2908713889063492442

namespace A074928

/-- `A151800(A023515(n+2))%A000040(n+2)` -/
def P2908713889063492442.Spec : Prop :=
  ∀ n, P2908713889063492442.a n = A074928 (n + 1)

end A074928

/-!
# A074929: a(n)>0 such that p(n)*p(n+1)-a(n) is a maximal square.

The programs for A074929, the canonical program `A074929.P16736353383474102315` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074929 has offset 1).

The definition of A074929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074929.P16736353383474102315

`A006094(n+1)-A078444(n+1)²`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A074929

/-- `A006094(n+1)-A078444(n+1)²` -/
def P16736353383474102315.Spec : Prop :=
  ∀ n, P16736353383474102315.a n = A074929 (n + 1)

theorem P16736353383474102315.correct : P16736353383474102315.Spec := by
  intro n
  simp only [A074929, Nat.add_sub_cancel]

end A074929

/-! ## A074929.P18041013213755431342

`2*A006005(n+1)-A100820(n+1)²`
-/

namespace A074929.P18041013213755431342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006005 (n + 1) - A100820 (n + 1) ^ 2

end

end A074929.P18041013213755431342

namespace A074929

/-- `2*A006005(n+1)-A100820(n+1)²` -/
def P18041013213755431342.Spec : Prop :=
  ∀ n, P18041013213755431342.a n = A074929 (n + 1)

end A074929

/-! ## A074929.P10178831425997554006

`A001043(n+1)-A013945(A001223(n+1))`
-/

namespace A074929.P10178831425997554006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - A013945 (A001223 (n + 1)).toNat

end

end A074929.P10178831425997554006

namespace A074929

/-- `A001043(n+1)-A013945(A001223(n+1))` -/
def P10178831425997554006.Spec : Prop :=
  ∀ n, P10178831425997554006.a n = A074929 (n + 1)

end A074929

/-! ## A074929.P8288858010660146386

`A006094(A000027(n+1))%A078444(n+1)²`
-/

namespace A074929.P8288858010660146386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006094 (A000027 (n + 1)).toNat) (A078444 (n + 1) ^ 2)

end

end A074929.P8288858010660146386

namespace A074929

/-- `A006094(A000027(n+1))%A078444(n+1)²` -/
def P8288858010660146386.Spec : Prop :=
  ∀ n, P8288858010660146386.a n = A074929 (n + 1)

end A074929

/-! ## A074929.P1671423177966815727

`record[A116570(n)]-A078444(n+1)²`
-/

namespace A074929.P1671423177966815727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A078444 (n + 1) ^ 2

end

end A074929.P1671423177966815727

namespace A074929

/-- `record[A116570(n)]-A078444(n+1)²` -/
def P1671423177966815727.Spec : Prop :=
  ∀ n, P1671423177966815727.a n = A074929 (n + 1)

end A074929

/-! ## A074929.P13476366247287009746

`A116570(2*n)-A078444(n+1)²`
-/

namespace A074929.P13476366247287009746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 (2 * n) - A078444 (n + 1) ^ 2

end

end A074929.P13476366247287009746

namespace A074929

/-- `A116570(2*n)-A078444(n+1)²` -/
def P13476366247287009746.Spec : Prop :=
  ∀ n, P13476366247287009746.a n = A074929 (n + 1)

end A074929

/-! ## A074929.P12478134093691880264

`A333747(2*n+1)-A078444(n+1)²`
-/

namespace A074929.P12478134093691880264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333747 (2 * n + 1) - A078444 (n + 1) ^ 2

end

end A074929.P12478134093691880264

namespace A074929

/-- `A333747(2*n+1)-A078444(n+1)²` -/
def P12478134093691880264.Spec : Prop :=
  ∀ n, P12478134093691880264.a n = A074929 (n + 1)

end A074929

/-! ## A074929.P7575775624982068112

`record[A119416(n+2)]-A078444(n+1)²`
-/

namespace A074929.P7575775624982068112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A078444 (n + 1) ^ 2

end

end A074929.P7575775624982068112

namespace A074929

/-- `record[A119416(n+2)]-A078444(n+1)²` -/
def P7575775624982068112.Spec : Prop :=
  ∀ n, P7575775624982068112.a n = A074929 (n + 1)

end A074929

/-! ## A074929.P6263570512679350411

`A005408(A078444(n+1))-A074927(n+1)`
-/

namespace A074929.P6263570512679350411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A078444 (n + 1)).toNat - A074927 (n + 1)

end

end A074929.P6263570512679350411

namespace A074929

/-- `A005408(A078444(n+1))-A074927(n+1)` -/
def P6263570512679350411.Spec : Prop :=
  ∀ n, P6263570512679350411.a n = A074929 (n + 1)

end A074929

/-! ## A074929.P7557880581748348262

`A233583(A001043(n+1)-A074927(n+1))`
-/

namespace A074929.P7557880581748348262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A001043 (n + 1) - A074927 (n + 1)).toNat

end

end A074929.P7557880581748348262

namespace A074929

/-- `A233583(A001043(n+1)-A074927(n+1))` -/
def P7557880581748348262.Spec : Prop :=
  ∀ n, P7557880581748348262.a n = A074929 (n + 1)

end A074929

/-!
# A074930: Number of integers in {1, 2, ..., n!} that are coprime to n.

The programs for A074930, the canonical program `A074930.P12482299348974755854` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074930 has offset 1).

The definition of A074930 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074930.P12482299348974755854

`n!*A000010(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A074930

/-- `n!*A000010(n+1)` -/
def P12482299348974755854.Spec : Prop :=
  ∀ n, P12482299348974755854.a n = A074930 (n + 1)

theorem P12482299348974755854.correct : P12482299348974755854.Spec := by
  intro n
  simp only [A074930, Nat.add_sub_cancel]

end A074930

/-! ## A074930.P13951813439281858367

`n!*∑{d}[n+1, (n+1)/#*A008683(#)]`
-/

namespace A074930.P13951813439281858367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ))

end

end A074930.P13951813439281858367

namespace A074930

/-- `n!*∑{d}[n+1, (n+1)/#*A008683(#)]` -/
def P13951813439281858367.Spec : Prop :=
  ∀ n, P13951813439281858367.a n = (A074930 (n + 1) : ℚ)

end A074930

/-! ## A074930.P10655375768913120829

`(A000010(2*n-(n-1))-and(2, n²))*n!`
-/

namespace A074930.P10655375768913120829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - (Nat.land 2 (n ^ 2) : ℤ)) * (Nat.factorial n : ℤ)

end

end A074930.P10655375768913120829

namespace A074930

/-- `(A000010(2*n-(n-1))-and(2, n²))*n!` -/
def P10655375768913120829.Spec : Prop :=
  ∀ n, P10655375768913120829.a n = A074930 (n + 1)

end A074930

/-! ## A074930.P13037702892466178111

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A000142(n)`
-/

namespace A074930.P13037702892466178111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) * (A000142 n : ℚ)

end

end A074930.P13037702892466178111

namespace A074930

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A000142(n)` -/
def P13037702892466178111.Spec : Prop :=
  ∀ n, P13037702892466178111.a n = (A074930 (n + 1) : ℚ)

end A074930

/-! ## A074930.P12876289741691215045

`A000010(n+1)*A000142(n)`
-/

namespace A074930.P12876289741691215045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A000142 n

end

end A074930.P12876289741691215045

namespace A074930

/-- `A000010(n+1)*A000142(n)` -/
def P12876289741691215045.Spec : Prop :=
  ∀ n, P12876289741691215045.a n = A074930 (n + 1)

end A074930

/-! ## A074930.P1803922731902563064

`A324225(A000010(n+1)+n²)`
-/

namespace A074930.P1803922731902563064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324225 (A000010 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A074930.P1803922731902563064

namespace A074930

/-- `A324225(A000010(n+1)+n²)` -/
def P1803922731902563064.Spec : Prop :=
  ∀ n, P1803922731902563064.a n = A074930 (n + 1)

end A074930

/-! ## A074930.P16865460197172935112

`∏[A028310(n)]*A000010(n+1)`
-/

namespace A074930.P16865460197172935112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A000010 (n + 1)

end

end A074930.P16865460197172935112

namespace A074930

/-- `∏[A028310(n)]*A000010(n+1)` -/
def P16865460197172935112.Spec : Prop :=
  ∀ n, P16865460197172935112.a n = A074930 (n + 1)

end A074930

/-! ## A074930.P1476164339109655124

`(A038507(n)-1)*A000010(n+1)`
-/

namespace A074930.P1476164339109655124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038507 n - 1) * A000010 (n + 1)

end

end A074930.P1476164339109655124

namespace A074930

/-- `(A038507(n)-1)*A000010(n+1)` -/
def P1476164339109655124.Spec : Prop :=
  ∀ n, P1476164339109655124.a n = A074930 (n + 1)

end A074930

/-! ## A074930.P3880734718675235211

`(A005728(n+1)-A005728(n))*A000142(n)`
-/

namespace A074930.P3880734718675235211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005728 (n + 1) - A005728 n) * A000142 n

end

end A074930.P3880734718675235211

namespace A074930

/-- `(A005728(n+1)-A005728(n))*A000142(n)` -/
def P3880734718675235211.Spec : Prop :=
  ∀ n, P3880734718675235211.a n = A074930 (n + 1)

end A074930

/-! ## A074930.P13294580620016693896

`A000142(n)/A058161(n+1)*A000142(n)`
-/

namespace A074930.P13294580620016693896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A058161 (n + 1) : ℚ) * (A000142 n : ℚ)

end

end A074930.P13294580620016693896

namespace A074930

/-- `A000142(n)/A058161(n+1)*A000142(n)` -/
def P13294580620016693896.Spec : Prop :=
  ∀ n, P13294580620016693896.a n = (A074930 (n + 1) : ℚ)

end A074930

/-!
# A074931: Primes p such that 3p is equidistant from consecutive prime twin pairs.

The programs for A074931, the canonical program `A074931.P9551543774266559115` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074931 has offset 1).

The definition of A074931 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 692 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074931.P9551543774266559115

`p?[floor(A074953(n+1)/3)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A074931

/-- `p?[floor(A074953(n+1)/3)]` -/
def P9551543774266559115.Spec : Prop :=
  ∀ n, P9551543774266559115.a n = A074931 (n + 1)

theorem P9551543774266559115.correct : P9551543774266559115.Spec := by
  intro n
  simp only [A074931, Nat.add_sub_cancel]

end A074931

/-! ## A074931.P13354410729410098957

`record[A006530(A074953(n+2))]`
-/

namespace A074931.P13354410729410098957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A074953 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074931.P13354410729410098957

namespace A074931

/-- `record[A006530(A074953(n+2))]` -/
def P13354410729410098957.Spec : Prop :=
  ∀ n, P13354410729410098957.a n = A074931 (n + 1)

end A074931

/-! ## A074931.P14467661942737138507

`record[A006530(A163656(2*n+3))]`
-/

namespace A074931.P14467661942737138507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A163656 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074931.P14467661942737138507

namespace A074931

/-- `record[A006530(A163656(2*n+3))]` -/
def P14467661942737138507.Spec : Prop :=
  ∀ n, P14467661942737138507.a n = A074931 (n + 1)

end A074931

/-! ## A074931.P3956804596998796030

`record[A006530(A096281(2*(n+2)))]`
-/

namespace A074931.P3956804596998796030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A096281 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074931.P3956804596998796030

namespace A074931

/-- `record[A006530(A096281(2*(n+2)))]` -/
def P3956804596998796030.Spec : Prop :=
  ∀ n, P3956804596998796030.a n = A074931 (n + 1)

end A074931

/-!
# A074932: Row sums of unsigned triangle A075513.

The programs for A074932, there is no canonical definition to state claims against.
-/

/-! ## A074932.P1819456777583898857

`A072034(n+1)/(n+1)`
-/

namespace A074932.P1819456777583898857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072034 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A074932.P1819456777583898857

/-! ## A074932.P15444389189998542799

`abs(n*a(n-1)-A216857(n+1))` with `a(0)=1`
-/

namespace A074932.P15444389189998542799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |(n : ℤ) * a (n - 1) - A216857 (n + 1)|

end

end A074932.P15444389189998542799

/-! ## A074932.P8481702212808922107

`A038049(n+1)-A072034(n)`
-/

namespace A074932.P8481702212808922107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038049 (n + 1) - A072034 n

end

end A074932.P8481702212808922107

/-! ## A074932.P2009806440091986114

`2*A214225(n+1)-A072034(n)`
-/

namespace A074932.P2009806440091986114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214225 (n + 1) - A072034 n

end

end A074932.P2009806440091986114

/-! ## A074932.P8423561343935390095

`lcm(2, A216857(n+1))-A072034(n)`
-/

namespace A074932.P8423561343935390095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A216857 (n + 1)) : ℤ) - A072034 n

end

end A074932.P8423561343935390095

/-! ## A074932.P2790283915566915860

`2^(n+1)*A088789(n+1)-A072034(n)`
-/

namespace A074932.P2790283915566915860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A088789 (n + 1) - A072034 n

end

end A074932.P2790283915566915860

/-! ## A074932.P7685662260296481979

`A215080(∑[n+2])/(n+1)`
-/

namespace A074932.P7685662260296481979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215080 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A074932.P7685662260296481979

/-!
# A074933: Number of integers in {1, 2, ..., 2^n} that are coprime to n.

The programs for A074933, there is no canonical definition to state claims against.
-/

/-! ## A074933.P9344865369226500314

`A129405(n+1)+A002260(A041049(n))`
-/

namespace A074933.P9344865369226500314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129405 (n + 1) + A002260 (A041049 n).toNat

end

end A074933.P9344865369226500314

/-! ## A074933.P1876272030845798330

`A053797(A001048(n+1))*A247309(2*(n+2))`
-/

namespace A074933.P1876272030845798330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053797 (A001048 (n + 1)).toNat * A247309 (2 * (n + 2))

end

end A074933.P1876272030845798330

/-!
# A074935: Denominator of a(n), where for n > 2, a(n)=-1/a(n-1)+1/a(n-2), a(1)=1, a(2)=2.

The programs for A074935, there is no canonical definition to state claims against.
-/

/-! ## A074935.P16798636499094635992

`(n-1)*A342842(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A074935.P16798636499094635992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((n : ℤ) - 1) * A342842 (a (n - 1)).toNat

end

end A074935.P16798636499094635992

/-! ## A074935.P10817111090826069055

`A292901(A349842(n))`
-/

namespace A074935.P10817111090826069055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292901 (A349842 n).toNat

end

end A074935.P10817111090826069055

/-! ## A074935.P14416543880951311750

`A064989(n+1)*A373948(A082526(n))`
-/

namespace A074935.P14416543880951311750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1) * A373948 (A082526 n).toNat

end

end A074935.P14416543880951311750

/-!
# A074936: Number of perfect powers between two successive nonprime prime powers.

The programs for A074936, there is no canonical definition to state claims against.
-/

/-! ## A074936.P7294263699153376795

`Δ[A069623(A025475(n+1))]-1`
-/

namespace A074936.P7294263699153376795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (A025475 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A074936.P7294263699153376795

/-! ## A074936.P6242522331517446646

`Δ[A069623(A249435(n+1)+1)]-1`
-/

namespace A074936.P6242522331517446646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (A249435 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A074936.P6242522331517446646

/-! ## A074936.P1606125464949558569

`Δ[eq[1, A010055(A001597(n+1))]]-1`
-/

namespace A074936.P1606125464949558569
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (A001597 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A074936.P1606125464949558569

/-! ## A074936.P8051857180796199257

`A227549(Δ[A069623(A025475(n+1))])`
-/

namespace A074936.P8051857180796199257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (A025475 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227549 (f1 (n + 1) - f1 n).toNat

end

end A074936.P8051857180796199257

/-! ## A074936.P7800662108039811731

`Δ[A069623(A025475(n+1))+A001489(n)]`
-/

namespace A074936.P7800662108039811731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (A025475 (n + 1)).toNat + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074936.P7800662108039811731

/-!
# A074937: Let c(1) = c(2) = 1, c(n+2) = 1/(c(n+1)+c(n)); then a(n) = (1+sign(c(n)-sqrt(1/2)))/2.

The programs for A074937, there is no canonical definition to state claims against.
-/

/-! ## A074937.P121478337530841549

`A000217(A330112(n+1))%2`
-/

namespace A074937.P121478337530841549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A330112 (n + 1)).toNat) 2

end

end A074937.P121478337530841549

/-! ## A074937.P6290451661321745529

`and(A000217(A330112(n+1)), A323022(3*n+4))`
-/

namespace A074937.P6290451661321745529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000217 (A330112 (n + 1)).toNat) (A323022 (3 * n + 4))

end

end A074937.P6290451661321745529

/-! ## A074937.P730147617527736648

`and(A323022(n+1)^n, A000217(A330112(n+1)))`
-/

namespace A074937.P730147617527736648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A323022 (n + 1) ^ n) (A000217 (A330112 (n + 1)).toNat)

end

end A074937.P730147617527736648

/-! ## A074937.P8024843533866050796

`A021913(A055648(3*(n+1)))`
-/

namespace A074937.P8024843533866050796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A055648 (3 * (n + 1))).toNat

end

end A074937.P8024843533866050796

/-! ## A074937.P13402337097681693645

`A156859(A055648(3*n+2))%2`
-/

namespace A074937.P13402337097681693645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156859 (A055648 (3 * n + 2)).toNat) 2

end

end A074937.P13402337097681693645

/-! ## A074937.P6764263304165973502

`A144599(A139620(n+1))`
-/

namespace A074937.P6764263304165973502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144599 (A139620 (n + 1)).toNat

end

end A074937.P6764263304165973502

/-! ## A074937.P13770423618461569443

`A000035(lcm(A008578(n+3), A040589(2*(n+1))))`
-/

namespace A074937.P13770423618461569443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.lcm (A008578 (n + 3)) (A040589 (2 * (n + 1))))

end

end A074937.P13770423618461569443

/-!
# A074938: Odd numbers such that base 3 representation contains no 2.

The programs for A074938, the canonical program `A074938.P9120139472351872222` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074938 has offset 0).

The definition of A074938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074938.P6678760983647550741

`or(1, 3*(∑[and(n, -n)^log2(3)]+n)/2)`
-/

namespace A074938.P6678760983647550741
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway (3 * ((∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)) / 2)))

end

end A074938.P6678760983647550741

namespace A074938

/-- `or(1, 3*(∑[and(n, -n)^log2(3)]+n)/2)` -/
def P6678760983647550741.Spec : Prop :=
  ∀ n, P6678760983647550741.a n = A074938 n

end A074938

/-! ## A074938.P9120139472351872222

`or(1, A081601(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A074938

/-- `or(1, A081601(n+1))` -/
def P9120139472351872222.Spec : Prop :=
  ∀ n, P9120139472351872222.a n = A074938 n

theorem P9120139472351872222.correct : P9120139472351872222.Spec := by
  intro n
  simp only [A074938]

end A074938

/-! ## A074938.P10847231740610421238

`or(1, 3*A005823(n+1)/2)`
-/

namespace A074938.P10847231740610421238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway (3 * ((A005823 (n + 1) : ℚ) / 2)))

end

end A074938.P10847231740610421238

namespace A074938

/-- `or(1, 3*A005823(n+1)/2)` -/
def P10847231740610421238.Spec : Prop :=
  ∀ n, P10847231740610421238.a n = A074938 n

end A074938

/-! ## A074938.P3336944987965864889

`A106400(n)+A074939(n)`
-/

namespace A074938.P3336944987965864889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n + A074939 n

end

end A074938.P3336944987965864889

namespace A074938

/-- `A106400(n)+A074939(n)` -/
def P3336944987965864889.Spec : Prop :=
  ∀ n, P3336944987965864889.a n = A074938 n

end A074938

/-! ## A074938.P6640481996861750138

`A081601(n+1)+A010059(n)`
-/

namespace A074938.P6640481996861750138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081601 (n + 1) + A010059 n

end

end A074938.P6640481996861750138

namespace A074938

/-- `A081601(n+1)+A010059(n)` -/
def P6640481996861750138.Spec : Prop :=
  ∀ n, P6640481996861750138.a n = A074938 n

end A074938

/-! ## A074938.P16198436673747209085

`A055246(n+1)-A074939(n)`
-/

namespace A074938.P16198436673747209085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055246 (n + 1) - A074939 n

end

end A074938.P16198436673747209085

namespace A074938

/-- `A055246(n+1)-A074939(n)` -/
def P16198436673747209085.Spec : Prop :=
  ∀ n, P16198436673747209085.a n = A074938 n

end A074938

/-! ## A074938.P697304466488929998

`A191107(n+1)-A010060(n)`
-/

namespace A074938.P697304466488929998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191107 (n + 1) - A010060 n

end

end A074938.P697304466488929998

namespace A074938

/-- `A191107(n+1)-A010060(n)` -/
def P697304466488929998.Spec : Prop :=
  ∀ n, P697304466488929998.a n = A074938 n

end A074938

/-! ## A074938.P13722485053984140648

`A356426(n+1)-A001285(n)`
-/

namespace A074938.P13722485053984140648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356426 (n + 1) - A001285 n

end

end A074938.P13722485053984140648

namespace A074938

/-- `A356426(n+1)-A001285(n)` -/
def P13722485053984140648.Spec : Prop :=
  ∀ n, P13722485053984140648.a n = A074938 n

end A074938

/-! ## A074938.P5226677762394440315

`A191107(n+1)+A010059(n)-1`
-/

namespace A074938.P5226677762394440315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191107 (n + 1) + (A010059 n - 1)

end

end A074938.P5226677762394440315

namespace A074938

/-- `A191107(n+1)+A010059(n)-1` -/
def P5226677762394440315.Spec : Prop :=
  ∀ n, P5226677762394440315.a n = A074938 n

end A074938

/-! ## A074938.P8494722922321736532

`(A106400(n)+A055246(n+1))/2`
-/

namespace A074938.P8494722922321736532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106400 n + A055246 (n + 1) : ℚ) / 2

end

end A074938.P8494722922321736532

namespace A074938

/-- `(A106400(n)+A055246(n+1))/2` -/
def P8494722922321736532.Spec : Prop :=
  ∀ n, P8494722922321736532.a n = (A074938 n : ℚ)

end A074938

/-! ## A074938.P13946456098828900781

`A081601(n+1)+A010060(2*n+1)`
-/

namespace A074938.P13946456098828900781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081601 (n + 1) + A010060 (2 * n + 1)

end

end A074938.P13946456098828900781

namespace A074938

/-- `A081601(n+1)+A010060(2*n+1)` -/
def P13946456098828900781.Spec : Prop :=
  ∀ n, P13946456098828900781.a n = A074938 n

end A074938

/-! ## A074938.P3660231441761655446

`or(1, A005836(Δ[n²]))`
-/

namespace A074938.P3660231441761655446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A005836 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A074938.P3660231441761655446

namespace A074938

/-- `or(1, A005836(Δ[n²]))` -/
def P3660231441761655446.Spec : Prop :=
  ∀ n, P3660231441761655446.a n = A074938 n

end A074938

/-! ## A074938.P18362667497099304301

`or(1, A186776(Δ[n²]))`
-/

namespace A074938.P18362667497099304301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A186776 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A074938.P18362667497099304301

namespace A074938

/-- `or(1, A186776(Δ[n²]))` -/
def P18362667497099304301.Spec : Prop :=
  ∀ n, P18362667497099304301.a n = A074938 n

end A074938

/-! ## A074938.P15752360293737722081

`or(1, A082575(2*n+1))`
-/

namespace A074938.P15752360293737722081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A082575 (2 * n + 1))

end

end A074938.P15752360293737722081

namespace A074938

/-- `or(1, A082575(2*n+1))` -/
def P15752360293737722081.Spec : Prop :=
  ∀ n, P15752360293737722081.a n = A074938 n

end A074938

/-! ## A074938.P12221398995206348744

`or(1, A003278(2*n+1)-1)`
-/

namespace A074938.P12221398995206348744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A003278 (2 * n + 1) - 1)

end

end A074938.P12221398995206348744

namespace A074938

/-- `or(1, A003278(2*n+1)-1)` -/
def P12221398995206348744.Spec : Prop :=
  ∀ n, P12221398995206348744.a n = A074938 n

end A074938

/-! ## A074938.P4366188835794251510

`or(1, A004793(2*n+1)-1)`
-/

namespace A074938.P4366188835794251510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A004793 (2 * n + 1) - 1)

end

end A074938.P4366188835794251510

namespace A074938

/-- `or(1, A004793(2*n+1)-1)` -/
def P4366188835794251510.Spec : Prop :=
  ∀ n, P4366188835794251510.a n = A074938 n

end A074938

/-! ## A074938.P16534651241769028139

`or(1, A005836(2*(n+1))-1)`
-/

namespace A074938.P16534651241769028139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A005836 (2 * (n + 1)) - 1)

end

end A074938.P16534651241769028139

namespace A074938

/-- `or(1, A005836(2*(n+1))-1)` -/
def P16534651241769028139.Spec : Prop :=
  ∀ n, P16534651241769028139.a n = A074938 n

end A074938

/-! ## A074938.P11169236360558307788

`or(1, A186776(2*(n+1))-2)`
-/

namespace A074938.P11169236360558307788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A186776 (2 * (n + 1)) - 2)

end

end A074938.P11169236360558307788

namespace A074938

/-- `or(1, A186776(2*(n+1))-2)` -/
def P11169236360558307788.Spec : Prop :=
  ∀ n, P11169236360558307788.a n = A074938 n

end A074938

/-! ## A074938.P7999898174929049168

`or(1, or(1, A005836(2*n+1)))`
-/

namespace A074938.P7999898174929049168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (Int.lor 1 (A005836 (2 * n + 1)))

end

end A074938.P7999898174929049168

namespace A074938

/-- `or(1, or(1, A005836(2*n+1)))` -/
def P7999898174929049168.Spec : Prop :=
  ∀ n, P7999898174929049168.a n = A074938 n

end A074938

/-! ## A074938.P7073863857888563929

`or(1, or(1, A186776(2*n+1)))`
-/

namespace A074938.P7073863857888563929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (Int.lor 1 (A186776 (2 * n + 1)))

end

end A074938.P7073863857888563929

namespace A074938

/-- `or(1, or(1, A186776(2*n+1)))` -/
def P7073863857888563929.Spec : Prop :=
  ∀ n, P7073863857888563929.a n = A074938 n

end A074938

/-!
# A074939: Even numbers such that base 3 representation contains no 2.

The programs for A074939, the canonical program `A074939.P18430168348576609001` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074939 has offset 0).

The definition of A074939 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074939.P5344520449787122194

`A083094(n+1)/2`
-/

namespace A074939.P5344520449787122194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083094 (n + 1) : ℚ) / 2

end

end A074939.P5344520449787122194

namespace A074939

/-- `A083094(n+1)/2` -/
def P5344520449787122194.Spec : Prop :=
  ∀ n, P5344520449787122194.a n = (A074939 n : ℚ)

theorem P5344520449787122194.correct : P5344520449787122194.Spec := by
  intro n
  simp only [A074939, Nat.add_sub_cancel, A074939.P5344520449787122194.a, A074939.P18430168348576609001.a, A083094, A083094.P9155610752686370673.a, A191107, A191107.P18216975096704636460.f2, A191107.P18216975096704636460.f1, A191107.P18216975096704636460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074939

/-! ## A074939.P8751815858999591697

`and(3*(∑[and(n, -n)^log2(3)]+1+n), -4)/2`
-/

namespace A074939.P8751815858999591697
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (SequenceMachineLib.roundAway (3 * (∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℝ)))) (-4) : ℚ) / 2

end

end A074939.P8751815858999591697

namespace A074939

/-- `and(3*(∑[and(n, -n)^log2(3)]+1+n), -4)/2` -/
def P8751815858999591697.Spec : Prop :=
  ∀ n, P8751815858999591697.a n = (A074939 n : ℚ)

end A074939

/-! ## A074939.P18430168348576609001

`and(-2, A191107(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A074939

/-- `and(-2, A191107(n+1))` -/
def P18430168348576609001.Spec : Prop :=
  ∀ n, P18430168348576609001.a n = A074939 n

theorem P18430168348576609001.correct : P18430168348576609001.Spec := by
  intro n
  simp only [A074939]

end A074939

/-! ## A074939.P9019783607347625985

`A074938(n)-A106400(n)`
-/

namespace A074939.P9019783607347625985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074938 n - A106400 n

end

end A074939.P9019783607347625985

namespace A074939

/-- `A074938(n)-A106400(n)` -/
def P9019783607347625985.Spec : Prop :=
  ∀ n, P9019783607347625985.a n = A074939 n

end A074939

/-! ## A074939.P968355099894246144

`A081601(n+1)+A010060(n)`
-/

namespace A074939.P968355099894246144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081601 (n + 1) + A010060 n

end

end A074939.P968355099894246144

namespace A074939

/-- `A081601(n+1)+A010060(n)` -/
def P968355099894246144.Spec : Prop :=
  ∀ n, P968355099894246144.a n = A074939 n

end A074939

/-! ## A074939.P4552037833227483675

`A055246(n+1)-A074938(n)`
-/

namespace A074939.P4552037833227483675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055246 (n + 1) - A074938 n

end

end A074939.P4552037833227483675

namespace A074939

/-- `A055246(n+1)-A074938(n)` -/
def P4552037833227483675.Spec : Prop :=
  ∀ n, P4552037833227483675.a n = A074939 n

end A074939

/-! ## A074939.P5275372310005899444

`A191107(n+1)-A010059(n)`
-/

namespace A074939.P5275372310005899444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191107 (n + 1) - A010059 n

end

end A074939.P5275372310005899444

namespace A074939

/-- `A191107(n+1)-A010059(n)` -/
def P5275372310005899444.Spec : Prop :=
  ∀ n, P5275372310005899444.a n = A074939 n

end A074939

/-! ## A074939.P10105981871691653265

`A191107(n+1)-(1-A010060(n))`
-/

namespace A074939.P10105981871691653265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191107 (n + 1) - (1 - A010060 n)

end

end A074939.P10105981871691653265

namespace A074939

/-- `A191107(n+1)-(1-A010060(n))` -/
def P10105981871691653265.Spec : Prop :=
  ∀ n, P10105981871691653265.a n = A074939 n

end A074939

/-! ## A074939.P8466377027185687553

`A316828(2*n)+A081601(n+1)`
-/

namespace A074939.P8466377027185687553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 (2 * n) + A081601 (n + 1)

end

end A074939.P8466377027185687553

namespace A074939

/-- `A316828(2*n)+A081601(n+1)` -/
def P8466377027185687553.Spec : Prop :=
  ∀ n, P8466377027185687553.a n = A074939 n

end A074939

/-! ## A074939.P9245549154696894995

`A010060(n)+A074938(n)-A010059(n)`
-/

namespace A074939.P9245549154696894995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n + (A074938 n - A010059 n)

end

end A074939.P9245549154696894995

namespace A074939

/-- `A010060(n)+A074938(n)-A010059(n)` -/
def P9245549154696894995.Spec : Prop :=
  ∀ n, P9245549154696894995.a n = A074939 n

end A074939

/-! ## A074939.P16403902573533524578

`A083096(n+1)/3`
-/

namespace A074939.P16403902573533524578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083096 (n + 1) : ℚ) / 3

end

end A074939.P16403902573533524578

namespace A074939

/-- `A083096(n+1)/3` -/
def P16403902573533524578.Spec : Prop :=
  ∀ n, P16403902573533524578.a n = (A074939 n : ℚ)

end A074939

/-! ## A074939.P9000549491277259706

`A005823(A026147(n+1))/2`
-/

namespace A074939.P9000549491277259706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005823 (A026147 (n + 1)).toNat : ℚ) / 2

end

end A074939.P9000549491277259706

namespace A074939

/-- `A005823(A026147(n+1))/2` -/
def P9000549491277259706.Spec : Prop :=
  ∀ n, P9000549491277259706.a n = (A074939 n : ℚ)

end A074939

/-! ## A074939.P6583716229126658747

`or(1, A003278(2*n+1))-1`
-/

namespace A074939.P6583716229126658747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A003278 (2 * n + 1)) - 1

end

end A074939.P6583716229126658747

namespace A074939

/-- `or(1, A003278(2*n+1))-1` -/
def P6583716229126658747.Spec : Prop :=
  ∀ n, P6583716229126658747.a n = A074939 n

end A074939

/-! ## A074939.P2718124720333646388

`or(1, A004793(2*n+1))-1`
-/

namespace A074939.P2718124720333646388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A004793 (2 * n + 1)) - 1

end

end A074939.P2718124720333646388

namespace A074939

/-- `or(1, A004793(2*n+1))-1` -/
def P2718124720333646388.Spec : Prop :=
  ∀ n, P2718124720333646388.a n = A074939 n

end A074939

/-! ## A074939.P13105269798955981192

`or(1, A005836(2*(n+1)))-1`
-/

namespace A074939.P13105269798955981192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A005836 (2 * (n + 1))) - 1

end

end A074939.P13105269798955981192

namespace A074939

/-- `or(1, A005836(2*(n+1)))-1` -/
def P13105269798955981192.Spec : Prop :=
  ∀ n, P13105269798955981192.a n = A074939 n

end A074939

/-! ## A074939.P15018953995414339910

`A005836(A026147(n+1))`
-/

namespace A074939.P15018953995414339910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A026147 (n + 1)).toNat

end

end A074939.P15018953995414339910

namespace A074939

/-- `A005836(A026147(n+1))` -/
def P15018953995414339910.Spec : Prop :=
  ∀ n, P15018953995414339910.a n = A074939 n

end A074939

/-! ## A074939.P11922711532231875115

`A005836(A001285(n)+2*n)`
-/

namespace A074939.P11922711532231875115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A001285 n + (2 * n : ℤ)).toNat

end

end A074939.P11922711532231875115

namespace A074939

/-- `A005836(A001285(n)+2*n)` -/
def P11922711532231875115.Spec : Prop :=
  ∀ n, P11922711532231875115.a n = A074939 n

end A074939

/-! ## A074939.P7896422016419974585

`A005836(A001285(n)+n+n)`
-/

namespace A074939.P7896422016419974585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A001285 n + (n : ℤ) + (n : ℤ)).toNat

end

end A074939.P7896422016419974585

namespace A074939

/-- `A005836(A001285(n)+n+n)` -/
def P7896422016419974585.Spec : Prop :=
  ∀ n, P7896422016419974585.a n = A074939 n

end A074939

/-! ## A074939.P8761738757695486839

`record[A005836(n+1)*A010059(n)]`
-/

namespace A074939.P8761738757695486839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1) * A010059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074939.P8761738757695486839

namespace A074939

/-- `record[A005836(n+1)*A010059(n)]` -/
def P8761738757695486839.Spec : Prop :=
  ∀ n, P8761738757695486839.a n = A074939 n

end A074939

/-!
# A074940: Numbers having at least one 2 in their ternary representation.

The programs for A074940, the canonical program `A074940.P6538437615375467476` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074940 has offset 1).

The definition of A074940 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074940.P6538437615375467476

`eq[0, ((n+1)*a(floor(n/3)))%3]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A074940

/-- `eq[0, ((n+1)*a(floor(n/3)))%3]` -/
def P6538437615375467476.Spec : Prop :=
  ∀ n, (P6538437615375467476.a n : ℤ) = A074940 (n + 1)

theorem P6538437615375467476.correct : P6538437615375467476.Spec := by
  intro n
  simp only [A074940, Nat.add_sub_cancel]

end A074940

/-! ## A074940.P4992854148528765844

`eq[0, a(floor(n/3))*a(n%3)]` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A074940.P4992854148528765844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n f2 =>
  f2 ⌊(n : ℚ) / 3⌋.toNat * f2 (n % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074940.P4992854148528765844

namespace A074940

/-- `eq[0, a(floor(n/3))*a(n%3)]` -/
def P4992854148528765844.Spec : Prop :=
  ∀ n, (P4992854148528765844.a n : ℤ) = A074940 (n + 1)

end A074940

/-! ## A074940.P1467983206583140650

`lt[0, A273514(n)]`
-/

namespace A074940.P1467983206583140650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273514 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A074940.P1467983206583140650

namespace A074940

/-- `lt[0, A273514(n)]` -/
def P1467983206583140650.Spec : Prop :=
  ∀ n, (P1467983206583140650.a n : ℤ) = A074940 (n + 1)

end A074940

/-! ## A074940.P3288439160621906931

`lt[0, A273515(n)]`
-/

namespace A074940.P3288439160621906931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273515 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A074940.P3288439160621906931

namespace A074940

/-- `lt[0, A273515(n)]` -/
def P3288439160621906931.Spec : Prop :=
  ∀ n, (P3288439160621906931.a n : ℤ) = A074940 (n + 1)

end A074940

/-! ## A074940.P18368775428758350950

`lt[0, A300222(n)]`
-/

namespace A074940.P18368775428758350950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A074940.P18368775428758350950

namespace A074940

/-- `lt[0, A300222(n)]` -/
def P18368775428758350950.Spec : Prop :=
  ∀ n, (P18368775428758350950.a n : ℤ) = A074940 (n + 1)

end A074940

/-! ## A074940.P15923558450372776742

`lt[1, A290092(n)]`
-/

namespace A074940.P15923558450372776742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290092 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A074940.P15923558450372776742

namespace A074940

/-- `lt[1, A290092(n)]` -/
def P15923558450372776742.Spec : Prop :=
  ∀ n, (P15923558450372776742.a n : ℤ) = A074940 (n + 1)

end A074940

/-! ## A074940.P15054286996219252193

`lt[A117966(n), n]`
-/

namespace A074940.P15054286996219252193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A074940.P15054286996219252193

namespace A074940

/-- `lt[A117966(n), n]` -/
def P15054286996219252193.Spec : Prop :=
  ∀ n, (P15054286996219252193.a n : ℤ) = A074940 (n + 1)

end A074940

/-! ## A074940.P5270781890239934700

`comp[A005836(n+1)]`
-/

namespace A074940.P5270781890239934700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A074940.P5270781890239934700

namespace A074940

/-- `comp[A005836(n+1)]` -/
def P5270781890239934700.Spec : Prop :=
  ∀ n, (P5270781890239934700.a n : ℤ) = A074940 (n + 1)

end A074940

/-! ## A074940.P3107278114279045233

`comp[A083904(n+1)]`
-/

namespace A074940.P3107278114279045233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A074940.P3107278114279045233

namespace A074940

/-- `comp[A083904(n+1)]` -/
def P3107278114279045233.Spec : Prop :=
  ∀ n, (P3107278114279045233.a n : ℤ) = A074940 (n + 1)

end A074940

/-! ## A074940.P3418554548711758811

`comp[A107681(n+1)]`
-/

namespace A074940.P3418554548711758811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A074940.P3418554548711758811

namespace A074940

/-- `comp[A107681(n+1)]` -/
def P3418554548711758811.Spec : Prop :=
  ∀ n, (P3418554548711758811.a n : ℤ) = A074940 (n + 1)

end A074940

/-! ## A074940.P9773167387829634208

`lt[1, A117942(n)²]`
-/

namespace A074940.P9773167387829634208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117942 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A074940.P9773167387829634208

namespace A074940

/-- `lt[1, A117942(n)²]` -/
def P9773167387829634208.Spec : Prop :=
  ∀ n, (P9773167387829634208.a n : ℤ) = A074940 (n + 1)

end A074940

/-! ## A074940.P17555256384400938302

`A107756(n+1)+1`
-/

namespace A074940.P17555256384400938302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107756 (n + 1) + 1

end

end A074940.P17555256384400938302

namespace A074940

/-- `A107756(n+1)+1` -/
def P17555256384400938302.Spec : Prop :=
  ∀ n, P17555256384400938302.a n = A074940 (n + 1)

theorem P17555256384400938302.correct : P17555256384400938302.Spec := by
  intro n
  simp only [A074940, Nat.add_sub_cancel, A074940.P17555256384400938302.a, A074940.P6538437615375467476.f1, A074940.P6538437615375467476.f2, A074940.P6538437615375467476.a, A107756, A107756.P8154172557650536797.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074940

/-! ## A074940.P9519213791854187729

`A189822(n+1)-1`
-/

namespace A074940.P9519213791854187729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189822 (n + 1) - 1

end

end A074940.P9519213791854187729

namespace A074940

/-- `A189822(n+1)-1` -/
def P9519213791854187729.Spec : Prop :=
  ∀ n, P9519213791854187729.a n = A074940 (n + 1)

theorem P9519213791854187729.correct : P9519213791854187729.Spec := by
  intro n
  simp only [A074940, Nat.add_sub_cancel, A074940.P9519213791854187729.a, A074940.P6538437615375467476.f1, A074940.P6538437615375467476.f2, A074940.P6538437615375467476.a, A189822, A189822.P9995875126507270326.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074940

/-! ## A074940.P12169931597979539549

`eq[0, A088917(2*n)]`
-/

namespace A074940.P12169931597979539549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074940.P12169931597979539549

namespace A074940

/-- `eq[0, A088917(2*n)]` -/
def P12169931597979539549.Spec : Prop :=
  ∀ n, (P12169931597979539549.a n : ℤ) = A074940 (n + 1)

end A074940

/-! ## A074940.P6921965303287089418

`eq[0, A117980(2*n)]`
-/

namespace A074940.P6921965303287089418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117980 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074940.P6921965303287089418

namespace A074940

/-- `eq[0, A117980(2*n)]` -/
def P6921965303287089418.Spec : Prop :=
  ∀ n, (P6921965303287089418.a n : ℤ) = A074940 (n + 1)

end A074940

/-! ## A074940.P10513650191540697958

`∪[A111018(n+1), A016789(n)]`
-/

namespace A074940.P10513650191540697958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A074940.P10513650191540697958

namespace A074940

/-- `∪[A111018(n+1), A016789(n)]` -/
def P10513650191540697958.Spec : Prop :=
  ∀ n, (P10513650191540697958.a n : ℤ) = A074940 (n + 1)

end A074940

/-! ## A074940.P17637379357747628951

`∪[A111018(n+1), A138671(n)]`
-/

namespace A074940.P17637379357747628951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138671 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A074940.P17637379357747628951

namespace A074940

/-- `∪[A111018(n+1), A138671(n)]` -/
def P17637379357747628951.Spec : Prop :=
  ∀ n, (P17637379357747628951.a n : ℤ) = A074940 (n + 1)

end A074940

/-! ## A074940.P3138650942997933062

`∪[A031944(n+1), A134026(n+1)]`
-/

namespace A074940.P3138650942997933062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A074940.P3138650942997933062

namespace A074940

/-- `∪[A031944(n+1), A134026(n+1)]` -/
def P3138650942997933062.Spec : Prop :=
  ∀ n, (P3138650942997933062.a n : ℤ) = A074940 (n + 1)

end A074940

/-! ## A074940.P12314752584712872886

`∪[A055048(n+1), A111018(n+1)]`
-/

namespace A074940.P12314752584712872886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A074940.P12314752584712872886

namespace A074940

/-- `∪[A055048(n+1), A111018(n+1)]` -/
def P12314752584712872886.Spec : Prop :=
  ∀ n, (P12314752584712872886.a n : ℤ) = A074940 (n + 1)

end A074940

/-!
# A074941: a(n) = sigma(n) mod 3.

The programs for A074941, the canonical program `A074941.P10886041856653530864` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074941 has offset 1).

The definition of A074941 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)%3` (program `A074941.P10886041856653530864`, by `A074941.P10886041856653530864.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074941.P10886041856653530864

`A000203(n+1)%3`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A074941

/-- `A000203(n+1)%3` -/
def P10886041856653530864.Spec : Prop :=
  ∀ n, P10886041856653530864.a n = A074941 (n + 1)

theorem P10886041856653530864.correct : P10886041856653530864.Spec := by
  intro n
  simp only [A074941, Nat.add_sub_cancel]

end A074941

/-! ## A074941.P8071064073902629458

`A010872(A000203(n+1))`
-/

namespace A074941.P8071064073902629458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A000203 (n + 1)).toNat

end

end A074941.P8071064073902629458

namespace A074941

/-- `A010872(A000203(n+1))` -/
def P8071064073902629458.Spec : Prop :=
  ∀ n, P8071064073902629458.a n = A074941 (n + 1)

end A074941

/-! ## A074941.P3443624636963672746

`∑{d}[n+1, #]%3`
-/

namespace A074941.P3443624636963672746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) % 3

end

end A074941.P3443624636963672746

namespace A074941

/-- `∑{d}[n+1, #]%3` -/
def P3443624636963672746.Spec : Prop :=
  ∀ n, (P3443624636963672746.a n : ℤ) = A074941 (n + 1)

end A074941

/-! ## A074941.P8121599009825382707

`Δ[A160664(n)]%3`
-/

namespace A074941.P8121599009825382707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A074941.P8121599009825382707

namespace A074941

/-- `Δ[A160664(n)]%3` -/
def P8121599009825382707.Spec : Prop :=
  ∀ n, P8121599009825382707.a n = A074941 (n + 1)

end A074941

/-! ## A074941.P2126866916108027188

`A001158(n+1)%3`
-/

namespace A074941.P2126866916108027188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001158 (n + 1)) 3

end

end A074941.P2126866916108027188

namespace A074941

/-- `A001158(n+1)%3` -/
def P2126866916108027188.Spec : Prop :=
  ∀ n, P2126866916108027188.a n = A074941 (n + 1)

end A074941

/-! ## A074941.P11835329641655962581

`A001160(n+1)%3`
-/

namespace A074941.P11835329641655962581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001160 (n + 1)) 3

end

end A074941.P11835329641655962581

namespace A074941

/-- `A001160(n+1)%3` -/
def P11835329641655962581.Spec : Prop :=
  ∀ n, P11835329641655962581.a n = A074941 (n + 1)

end A074941

/-! ## A074941.P10662716047839012396

`A002324(n+1)%3`
-/

namespace A074941.P10662716047839012396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002324 (n + 1)) 3

end

end A074941.P10662716047839012396

namespace A074941

/-- `A002324(n+1)%3` -/
def P10662716047839012396.Spec : Prop :=
  ∀ n, P10662716047839012396.a n = A074941 (n + 1)

end A074941

/-! ## A074941.P1098469423088337502

`A013955(n+1)%3`
-/

namespace A074941.P1098469423088337502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013955 (n + 1)) 3

end

end A074941.P1098469423088337502

namespace A074941

/-- `A013955(n+1)%3` -/
def P1098469423088337502.Spec : Prop :=
  ∀ n, P1098469423088337502.a n = A074941 (n + 1)

end A074941

/-! ## A074941.P16813141010674944612

`A013957(n+1)%3`
-/

namespace A074941.P16813141010674944612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013957 (n + 1)) 3

end

end A074941.P16813141010674944612

namespace A074941

/-- `A013957(n+1)%3` -/
def P16813141010674944612.Spec : Prop :=
  ∀ n, P16813141010674944612.a n = A074941 (n + 1)

end A074941

/-! ## A074941.P9747127613333805554

`A013959(n+1)%3`
-/

namespace A074941.P9747127613333805554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013959 (n + 1)) 3

end

end A074941.P9747127613333805554

namespace A074941

/-- `A013959(n+1)%3` -/
def P9747127613333805554.Spec : Prop :=
  ∀ n, P9747127613333805554.a n = A074941 (n + 1)

end A074941

/-! ## A074941.P1737699066695794327

`A013961(n+1)%3`
-/

namespace A074941.P1737699066695794327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013961 (n + 1)) 3

end

end A074941.P1737699066695794327

namespace A074941

/-- `A013961(n+1)%3` -/
def P1737699066695794327.Spec : Prop :=
  ∀ n, P1737699066695794327.a n = A074941 (n + 1)

end A074941

/-! ## A074941.P4081212594961461858

`A013967(n+1)%3`
-/

namespace A074941.P4081212594961461858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013967 (n + 1)) 3

end

end A074941.P4081212594961461858

namespace A074941

/-- `A013967(n+1)%3` -/
def P4081212594961461858.Spec : Prop :=
  ∀ n, P4081212594961461858.a n = A074941 (n + 1)

end A074941

/-! ## A074941.P9522308163130427016

`A013969(n+1)%3`
-/

namespace A074941.P9522308163130427016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013969 (n + 1)) 3

end

end A074941.P9522308163130427016

namespace A074941

/-- `A013969(n+1)%3` -/
def P9522308163130427016.Spec : Prop :=
  ∀ n, P9522308163130427016.a n = A074941 (n + 1)

end A074941

/-! ## A074941.P10260899719719594174

`A034690(n+1)%3`
-/

namespace A074941.P10260899719719594174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034690 (n + 1)) 3

end

end A074941.P10260899719719594174

namespace A074941

/-- `A034690(n+1)%3` -/
def P10260899719719594174.Spec : Prop :=
  ∀ n, P10260899719719594174.a n = A074941 (n + 1)

end A074941

/-! ## A074941.P9692462513407816566

`A046913(n+1)%3`
-/

namespace A074941.P9692462513407816566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046913 (n + 1)) 3

end

end A074941.P9692462513407816566

namespace A074941

/-- `A046913(n+1)%3` -/
def P9692462513407816566.Spec : Prop :=
  ∀ n, P9692462513407816566.a n = A074941 (n + 1)

end A074941

/-! ## A074941.P15234493403586040630

`A067342(n+1)%3`
-/

namespace A074941.P15234493403586040630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067342 (n + 1)) 3

end

end A074941.P15234493403586040630

namespace A074941

/-- `A067342(n+1)%3` -/
def P15234493403586040630.Spec : Prop :=
  ∀ n, P15234493403586040630.a n = A074941 (n + 1)

end A074941

/-! ## A074941.P8630404597200697316

`A069192(n+1)%3`
-/

namespace A074941.P8630404597200697316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069192 (n + 1)) 3

end

end A074941.P8630404597200697316

namespace A074941

/-- `A069192(n+1)%3` -/
def P8630404597200697316.Spec : Prop :=
  ∀ n, P8630404597200697316.a n = A074941 (n + 1)

end A074941

/-! ## A074941.P17873623419171031493

`A082909(n+1)%3`
-/

namespace A074941.P17873623419171031493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082909 (n + 1)) 3

end

end A074941.P17873623419171031493

namespace A074941

/-- `A082909(n+1)%3` -/
def P17873623419171031493.Spec : Prop :=
  ∀ n, P17873623419171031493.a n = A074941 (n + 1)

end A074941

/-! ## A074941.P13393207867384068454

`A084301(n+1)%3`
-/

namespace A074941.P13393207867384068454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084301 (n + 1)) 3

end

end A074941.P13393207867384068454

namespace A074941

/-- `A084301(n+1)%3` -/
def P13393207867384068454.Spec : Prop :=
  ∀ n, P13393207867384068454.a n = A074941 (n + 1)

end A074941

/-!
# A074942: a(n) = phi(n) mod 3.

The programs for A074942, the canonical program `A074942.P16869770120142027646` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074942 has offset 1).

The definition of A074942 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074942.P16869770120142027646

`A000010(n+1)%3`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A074942

/-- `A000010(n+1)%3` -/
def P16869770120142027646.Spec : Prop :=
  ∀ n, P16869770120142027646.a n = A074942 (n + 1)

theorem P16869770120142027646.correct : P16869770120142027646.Spec := by
  intro n
  simp only [A074942, Nat.add_sub_cancel]

end A074942

/-! ## A074942.P6498389063173733852

`A010872(A000010(n+1))`
-/

namespace A074942.P6498389063173733852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A000010 (n + 1)).toNat

end

end A074942.P6498389063173733852

namespace A074942

/-- `A010872(A000010(n+1))` -/
def P6498389063173733852.Spec : Prop :=
  ∀ n, P6498389063173733852.a n = A074942 (n + 1)

end A074942

/-! ## A074942.P11856073696795488622

`((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])%3`
-/

namespace A074942.P11856073696795488622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))) 3

end

end A074942.P11856073696795488622

namespace A074942

/-- `((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])%3` -/
def P11856073696795488622.Spec : Prop :=
  ∀ n, P11856073696795488622.a n = A074942 (n + 1)

end A074942

/-! ## A074942.P17546461245588373321

`Δ[A002088(n)]%3`
-/

namespace A074942.P17546461245588373321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A074942.P17546461245588373321

namespace A074942

/-- `Δ[A002088(n)]%3` -/
def P17546461245588373321.Spec : Prop :=
  ∀ n, P17546461245588373321.a n = A074942 (n + 1)

end A074942

/-! ## A074942.P6766177625553569991

`Δ[A005728(n)]%3`
-/

namespace A074942.P6766177625553569991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A074942.P6766177625553569991

namespace A074942

/-- `Δ[A005728(n)]%3` -/
def P6766177625553569991.Spec : Prop :=
  ∀ n, P6766177625553569991.a n = A074942 (n + 1)

end A074942

/-! ## A074942.P11285548901791656674

`Δ[A100449(n)]%3`
-/

namespace A074942.P11285548901791656674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A074942.P11285548901791656674

namespace A074942

/-- `Δ[A100449(n)]%3` -/
def P11285548901791656674.Spec : Prop :=
  ∀ n, P11285548901791656674.a n = A074942 (n + 1)

end A074942

/-! ## A074942.P1787395303263367241

`A004085(n+1)%3`
-/

namespace A074942.P1787395303263367241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004085 (n + 1)) 3

end

end A074942.P1787395303263367241

namespace A074942

/-- `A004085(n+1)%3` -/
def P1787395303263367241.Spec : Prop :=
  ∀ n, P1787395303263367241.a n = A074942 (n + 1)

end A074942

/-! ## A074942.P16354414460323962013

`A059376(n+1)%3`
-/

namespace A074942.P16354414460323962013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059376 (n + 1)) 3

end

end A074942.P16354414460323962013

namespace A074942

/-- `A059376(n+1)%3` -/
def P16354414460323962013.Spec : Prop :=
  ∀ n, P16354414460323962013.a n = A074942 (n + 1)

end A074942

/-! ## A074942.P13267994641337257770

`A059378(n+1)%3`
-/

namespace A074942.P13267994641337257770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059378 (n + 1)) 3

end

end A074942.P13267994641337257770

namespace A074942

/-- `A059378(n+1)%3` -/
def P13267994641337257770.Spec : Prop :=
  ∀ n, P13267994641337257770.a n = A074942 (n + 1)

end A074942

/-! ## A074942.P3347981843138020354

`A069092(n+1)%3`
-/

namespace A074942.P3347981843138020354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069092 (n + 1)) 3

end

end A074942.P3347981843138020354

namespace A074942

/-- `A069092(n+1)%3` -/
def P3347981843138020354.Spec : Prop :=
  ∀ n, P3347981843138020354.a n = A074942 (n + 1)

end A074942

/-! ## A074942.P2805755695815188850

`A069094(n+1)%3`
-/

namespace A074942.P2805755695815188850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069094 (n + 1)) 3

end

end A074942.P2805755695815188850

namespace A074942

/-- `A069094(n+1)%3` -/
def P2805755695815188850.Spec : Prop :=
  ∀ n, P2805755695815188850.a n = A074942 (n + 1)

end A074942

/-! ## A074942.P10583624768977984345

`A084300(n+1)%3`
-/

namespace A074942.P10583624768977984345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084300 (n + 1)) 3

end

end A074942.P10583624768977984345

namespace A074942

/-- `A084300(n+1)%3` -/
def P10583624768977984345.Spec : Prop :=
  ∀ n, P10583624768977984345.a n = A074942 (n + 1)

end A074942

/-! ## A074942.P13773955291303516014

`A133725(n+1)%3`
-/

namespace A074942.P13773955291303516014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133725 (n + 1)) 3

end

end A074942.P13773955291303516014

namespace A074942

/-- `A133725(n+1)%3` -/
def P13773955291303516014.Spec : Prop :=
  ∀ n, P13773955291303516014.a n = A074942 (n + 1)

end A074942

/-! ## A074942.P11906258625999193084

`A293484(n+1)%3`
-/

namespace A074942.P11906258625999193084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293484 (n + 1)) 3

end

end A074942.P11906258625999193084

namespace A074942

/-- `A293484(n+1)%3` -/
def P11906258625999193084.Spec : Prop :=
  ∀ n, P11906258625999193084.a n = A074942 (n + 1)

end A074942

/-! ## A074942.P2910286096569648886

`A354094(n+1)%3`
-/

namespace A074942.P2910286096569648886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354094 (n + 1)) 3

end

end A074942.P2910286096569648886

namespace A074942

/-- `A354094(n+1)%3` -/
def P2910286096569648886.Spec : Prop :=
  ∀ n, P2910286096569648886.a n = A074942 (n + 1)

end A074942

/-! ## A074942.P11988507405222435454

`A358714(n+1)%3`
-/

namespace A074942.P11988507405222435454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358714 (n + 1)) 3

end

end A074942.P11988507405222435454

namespace A074942

/-- `A358714(n+1)%3` -/
def P11988507405222435454.Spec : Prop :=
  ∀ n, P11988507405222435454.a n = A074942 (n + 1)

end A074942

/-! ## A074942.P3914410472182581206

`(A109606(n+1)+1)%3`
-/

namespace A074942.P3914410472182581206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109606 (n + 1) + 1) 3

end

end A074942.P3914410472182581206

namespace A074942

/-- `(A109606(n+1)+1)%3` -/
def P3914410472182581206.Spec : Prop :=
  ∀ n, P3914410472182581206.a n = A074942 (n + 1)

end A074942

/-! ## A074942.P11263123489518694432

`(A039649(n+1)-1)%3`
-/

namespace A074942.P11263123489518694432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039649 (n + 1) - 1) 3

end

end A074942.P11263123489518694432

namespace A074942

/-- `(A039649(n+1)-1)%3` -/
def P11263123489518694432.Spec : Prop :=
  ∀ n, P11263123489518694432.a n = A074942 (n + 1)

end A074942

/-! ## A074942.P17677850835450495273

`A349137(2*n+1)%3`
-/

namespace A074942.P17677850835450495273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349137 (2 * n + 1)) 3

end

end A074942.P17677850835450495273

namespace A074942

/-- `A349137(2*n+1)%3` -/
def P17677850835450495273.Spec : Prop :=
  ∀ n, P17677850835450495273.a n = A074942 (n + 1)

end A074942

/-! ## A074942.P7322744780078585663

`dr(A000010(2*n-(n-1))%3)`
-/

namespace A074942.P7322744780078585663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat) 3)

end

end A074942.P7322744780078585663

namespace A074942

/-- `dr(A000010(2*n-(n-1))%3)` -/
def P7322744780078585663.Spec : Prop :=
  ∀ n, (P7322744780078585663.a n : ℤ) = A074942 (n + 1)

end A074942

/-!
# A074943: a(n) = tau(n) mod 3.

The programs for A074943, the canonical program `A074943.P18225326473908618885` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074943 has offset 1).

The definition of A074943 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)%3` (program `A074943.P18225326473908618885`, by `A074943.P18225326473908618885.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074943.P18225326473908618885

`A000005(n+1)%3`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A074943

/-- `A000005(n+1)%3` -/
def P18225326473908618885.Spec : Prop :=
  ∀ n, P18225326473908618885.a n = A074943 (n + 1)

theorem P18225326473908618885.correct : P18225326473908618885.Spec := by
  intro n
  simp only [A074943, Nat.add_sub_cancel]

end A074943

/-! ## A074943.P4376149166701076810

`A010872(A000005(n+1))`
-/

namespace A074943.P4376149166701076810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A000005 (n + 1)).toNat

end

end A074943.P4376149166701076810

namespace A074943

/-- `A010872(A000005(n+1))` -/
def P4376149166701076810.Spec : Prop :=
  ∀ n, P4376149166701076810.a n = A074943 (n + 1)

end A074943

/-! ## A074943.P16737712838040171484

`∏{e}[n+1, #+1]%3`
-/

namespace A074943.P16737712838040171484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) % 3

end

end A074943.P16737712838040171484

namespace A074943

/-- `∏{e}[n+1, #+1]%3` -/
def P16737712838040171484.Spec : Prop :=
  ∀ n, (P16737712838040171484.a n : ℤ) = A074943 (n + 1)

end A074943

/-! ## A074943.P15621003457043754854

`∑{d}[n+1, gcd(7, #)]%3`
-/

namespace A074943.P15621003457043754854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), Nat.gcd 7 d) % 3

end

end A074943.P15621003457043754854

namespace A074943

/-- `∑{d}[n+1, gcd(7, #)]%3` -/
def P15621003457043754854.Spec : Prop :=
  ∀ n, (P15621003457043754854.a n : ℤ) = A074943 (n + 1)

end A074943

/-! ## A074943.P1203660995402061595

`Δ[A006218(n)]%3`
-/

namespace A074943.P1203660995402061595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A074943.P1203660995402061595

namespace A074943

/-- `Δ[A006218(n)]%3` -/
def P1203660995402061595.Spec : Prop :=
  ∀ n, P1203660995402061595.a n = A074943 (n + 1)

end A074943

/-! ## A074943.P2618466106907069702

`Δ[A054519(n)]%3`
-/

namespace A074943.P2618466106907069702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A074943.P2618466106907069702

namespace A074943

/-- `Δ[A054519(n)]%3` -/
def P2618466106907069702.Spec : Prop :=
  ∀ n, P2618466106907069702.a n = A074943 (n + 1)

end A074943

/-! ## A074943.P1518803290250418350

`A015996(n+1)%3`
-/

namespace A074943.P1518803290250418350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015996 (n + 1)) 3

end

end A074943.P1518803290250418350

namespace A074943

/-- `A015996(n+1)%3` -/
def P1518803290250418350.Spec : Prop :=
  ∀ n, P1518803290250418350.a n = A074943 (n + 1)

end A074943

/-! ## A074943.P17171190056923415528

`A016002(n+1)%3`
-/

namespace A074943.P17171190056923415528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016002 (n + 1)) 3

end

end A074943.P17171190056923415528

namespace A074943

/-- `A016002(n+1)%3` -/
def P17171190056923415528.Spec : Prop :=
  ∀ n, P17171190056923415528.a n = A074943 (n + 1)

end A074943

/-! ## A074943.P12671213845763625345

`A016006(n+1)%3`
-/

namespace A074943.P12671213845763625345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016006 (n + 1)) 3

end

end A074943.P12671213845763625345

namespace A074943

/-- `A016006(n+1)%3` -/
def P12671213845763625345.Spec : Prop :=
  ∀ n, P12671213845763625345.a n = A074943 (n + 1)

end A074943

/-! ## A074943.P10618581629103312418

`A016009(n+1)%3`
-/

namespace A074943.P10618581629103312418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016009 (n + 1)) 3

end

end A074943.P10618581629103312418

namespace A074943

/-- `A016009(n+1)%3` -/
def P10618581629103312418.Spec : Prop :=
  ∀ n, P10618581629103312418.a n = A074943 (n + 1)

end A074943

/-! ## A074943.P9558829578953431676

`A061391(n+1)%3`
-/

namespace A074943.P9558829578953431676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061391 (n + 1)) 3

end

end A074943.P9558829578953431676

namespace A074943

/-- `A061391(n+1)%3` -/
def P9558829578953431676.Spec : Prop :=
  ∀ n, P9558829578953431676.a n = A074943 (n + 1)

end A074943

/-! ## A074943.P4914135603654275968

`A084302(n+1)%3`
-/

namespace A074943.P4914135603654275968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084302 (n + 1)) 3

end

end A074943.P4914135603654275968

namespace A074943

/-- `A084302(n+1)%3` -/
def P4914135603654275968.Spec : Prop :=
  ∀ n, P4914135603654275968.a n = A074943 (n + 1)

end A074943

/-! ## A074943.P1101940261506881573

`A145154(n+1)%3`
-/

namespace A074943.P1101940261506881573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145154 (n + 1)) 3

end

end A074943.P1101940261506881573

namespace A074943

/-- `A145154(n+1)%3` -/
def P1101940261506881573.Spec : Prop :=
  ∀ n, P1101940261506881573.a n = A074943 (n + 1)

end A074943

/-! ## A074943.P6147026312322000925

`A309730(n+1)%3`
-/

namespace A074943.P6147026312322000925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309730 (n + 1)) 3

end

end A074943.P6147026312322000925

namespace A074943

/-- `A309730(n+1)%3` -/
def P6147026312322000925.Spec : Prop :=
  ∀ n, P6147026312322000925.a n = A074943 (n + 1)

end A074943

/-! ## A074943.P2227834450887414836

`A319089(n+1)%3`
-/

namespace A074943.P2227834450887414836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319089 (n + 1)) 3

end

end A074943.P2227834450887414836

namespace A074943

/-- `A319089(n+1)%3` -/
def P2227834450887414836.Spec : Prop :=
  ∀ n, P2227834450887414836.a n = A074943 (n + 1)

end A074943

/-! ## A074943.P15451209124598856095

`A343526(n+1)%3`
-/

namespace A074943.P15451209124598856095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343526 (n + 1)) 3

end

end A074943.P15451209124598856095

namespace A074943

/-- `A343526(n+1)%3` -/
def P15451209124598856095.Spec : Prop :=
  ∀ n, P15451209124598856095.a n = A074943 (n + 1)

end A074943

/-! ## A074943.P3521000361344867004

`A344327(n+1)%3`
-/

namespace A074943.P3521000361344867004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344327 (n + 1)) 3

end

end A074943.P3521000361344867004

namespace A074943

/-- `A344327(n+1)%3` -/
def P3521000361344867004.Spec : Prop :=
  ∀ n, P3521000361344867004.a n = A074943 (n + 1)

end A074943

/-! ## A074943.P1239072720065537316

`A359037(n+1)%3`
-/

namespace A074943.P1239072720065537316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359037 (n + 1)) 3

end

end A074943.P1239072720065537316

namespace A074943

/-- `A359037(n+1)%3` -/
def P1239072720065537316.Spec : Prop :=
  ∀ n, P1239072720065537316.a n = A074943 (n + 1)

end A074943

/-! ## A074943.P5566829695081330247

`A372788(n+1)%3`
-/

namespace A074943.P5566829695081330247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372788 (n + 1)) 3

end

end A074943.P5566829695081330247

namespace A074943

/-- `A372788(n+1)%3` -/
def P5566829695081330247.Spec : Prop :=
  ∀ n, P5566829695081330247.a n = A074943 (n + 1)

end A074943

/-! ## A074943.P18172929143676750011

`A100587(n+1)²%7`
-/

namespace A074943.P18172929143676750011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100587 (n + 1) ^ 2) 7

end

end A074943.P18172929143676750011

namespace A074943

/-- `A100587(n+1)²%7` -/
def P18172929143676750011.Spec : Prop :=
  ∀ n, P18172929143676750011.a n = A074943 (n + 1)

end A074943

/-!
# A074944: Number of k with 1 <= k <= n such that gcd(n,k) = tau(k), where tau is A000005, number of divisors function.

The programs for A074944, there is no canonical definition to state claims against.
-/

/-! ## A074944.P11534141752340866032

`A161506(n+1)-A358220(A358219(2*n+5))`
-/

namespace A074944.P11534141752340866032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161506 (n + 1) - A358220 (A358219 (2 * n + 5)).toNat

end

end A074944.P11534141752340866032

/-! ## A074944.P14043643905550264665

`A161506(n+1)-A126010(A314318(n))`
-/

namespace A074944.P14043643905550264665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161506 (n + 1) - A126010 (A314318 n).toNat

end

end A074944.P14043643905550264665

/-! ## A074944.P5917222692457067867

`Δ[A160755(∑[A227481(2*n)])]`
-/

namespace A074944.P5917222692457067867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074944.P5917222692457067867

/-! ## A074944.P10449697777792534184

`A161506(n+1)-A055672(A122788(n))`
-/

namespace A074944.P10449697777792534184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161506 (n + 1) - A055672 (A122788 n).toNat

end

end A074944.P10449697777792534184

/-! ## A074944.P15243755572046850662

`A227481(A056107(n))`
-/

namespace A074944.P15243755572046850662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 (A056107 n).toNat

end

end A074944.P15243755572046850662

/-!
# A074945: Number of k with 1<=k<=n such that gcd(n,k) = floor(n/k).

The programs for A074945, there is no canonical definition to state claims against.
-/

/-! ## A074945.P17776662771592133275

`A008611(n)+Δ[A318809(A087560(n+1))]`
-/

namespace A074945.P17776662771592133275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318809 (A087560 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n + (f1 (n + 1) - f1 n)

end

end A074945.P17776662771592133275

/-! ## A074945.P5778745539058553147

`A125842(n+1)-A046660(A000465(n))`
-/

namespace A074945.P5778745539058553147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125842 (n + 1) - A046660 (A000465 n).toNat

end

end A074945.P5778745539058553147

/-! ## A074945.P743602429664486371

`A008611(n)+Δ[A062977(A108951(n+1))]`
-/

namespace A074945.P743602429664486371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062977 (A108951 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n + (f1 (n + 1) - f1 n)

end

end A074945.P743602429664486371

/-! ## A074945.P9605544244090468769

`A007814(A068010(n))+Δ[A328830(n+1)]`
-/

namespace A074945.P9605544244090468769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A068010 n).toNat + (f1 (n + 1) - f1 n)

end

end A074945.P9605544244090468769

/-! ## A074945.P10541899325111590654

`A152487(A288827(n)+2)`
-/

namespace A074945.P10541899325111590654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152487 (A288827 n + 2).toNat

end

end A074945.P10541899325111590654

/-!
# A074946: Positive integers n for which the sum of the prime-factorization exponents of n (bigomega(n) = A001222(n)) divides n.

The programs for A074946, the canonical program `A074946.P14604646549481057533` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074946 has offset 1).

The definition of A074946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074946.P14604646549481057533

`eq[n+1, lcm(n+1, A001222(n+1))]+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A074946

/-- `eq[n+1, lcm(n+1, A001222(n+1))]+1` -/
def P14604646549481057533.Spec : Prop :=
  ∀ n, (P14604646549481057533.a n : ℤ) = A074946 (n + 1)

theorem P14604646549481057533.correct : P14604646549481057533.Spec := by
  intro n
  simp only [A074946, Nat.add_sub_cancel]

end A074946

/-! ## A074946.P6751435920279211370

`∪[A000040(n+1), A137230(n+1)]`
-/

namespace A074946.P6751435920279211370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A074946.P6751435920279211370

namespace A074946

/-- `∪[A000040(n+1), A137230(n+1)]` -/
def P6751435920279211370.Spec : Prop :=
  ∀ n, (P6751435920279211370.a n : ℤ) = A074946 (n + 1)

end A074946

/-! ## A074946.P10988178613261952376

`∪[A001751(n+1), A137230(n+1)]`
-/

namespace A074946.P10988178613261952376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A074946.P10988178613261952376

namespace A074946

/-- `∪[A001751(n+1), A137230(n+1)]` -/
def P10988178613261952376.Spec : Prop :=
  ∀ n, (P10988178613261952376.a n : ℤ) = A074946 (n + 1)

end A074946

/-! ## A074946.P210975536730379850

`∪[A051948(n+1), A137230(n+1)]`
-/

namespace A074946.P210975536730379850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A074946.P210975536730379850

namespace A074946

/-- `∪[A051948(n+1), A137230(n+1)]` -/
def P210975536730379850.Spec : Prop :=
  ∀ n, (P210975536730379850.a n : ℤ) = A074946 (n + 1)

end A074946

/-! ## A074946.P4054050315847425859

`lt[n, A161658(n+1)]+1`
-/

namespace A074946.P4054050315847425859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161658 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A074946.P4054050315847425859

namespace A074946

/-- `lt[n, A161658(n+1)]+1` -/
def P4054050315847425859.Spec : Prop :=
  ∀ n, (P4054050315847425859.a n : ℤ) = A074946 (n + 1)

end A074946

/-! ## A074946.P11140131548226652798

`record[gcd(n+2, A161659(n+2))]`
-/

namespace A074946.P11140131548226652798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A161659 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074946.P11140131548226652798

namespace A074946

/-- `record[gcd(n+2, A161659(n+2))]` -/
def P11140131548226652798.Spec : Prop :=
  ∀ n, (P11140131548226652798.a n : ℤ) = A074946 (n + 1)

end A074946

/-! ## A074946.P10024377337141815000

`A020725(eq[n+1, A161658(n+1)])`
-/

namespace A074946.P10024377337141815000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A074946.P10024377337141815000

namespace A074946

/-- `A020725(eq[n+1, A161658(n+1)])` -/
def P10024377337141815000.Spec : Prop :=
  ∀ n, P10024377337141815000.a n = A074946 (n + 1)

end A074946

/-! ## A074946.P16489873265972502624

`A161658(eq[n+1, A161658(n+1)]+1)`
-/

namespace A074946.P16489873265972502624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161658 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A074946.P16489873265972502624

namespace A074946

/-- `A161658(eq[n+1, A161658(n+1)]+1)` -/
def P16489873265972502624.Spec : Prop :=
  ∀ n, P16489873265972502624.a n = A074946 (n + 1)

end A074946

/-! ## A074946.P14388218035251632277

`eq[0, ∏{d}[n, A001222(n)-#]]`
-/

namespace A074946.P14388218035251632277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), (A001222 n - (d : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074946.P14388218035251632277

namespace A074946

/-- `eq[0, ∏{d}[n, A001222(n)-#]]` -/
def P14388218035251632277.Spec : Prop :=
  ∀ n, (P14388218035251632277.a n : ℤ) = A074946 (n + 1)

end A074946

/-! ## A074946.P12527122400507936476

`eq[n, A161658(A233583(n+1))]`
-/

namespace A074946.P12527122400507936476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161658 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074946.P12527122400507936476

namespace A074946

/-- `eq[n, A161658(A233583(n+1))]` -/
def P12527122400507936476.Spec : Prop :=
  ∀ n, (P12527122400507936476.a n : ℤ) = A074946 (n + 1)

end A074946

/-! ## A074946.P15189865996818309473

`∪[A100546(n), A137230(n+1)]`
-/

namespace A074946.P15189865996818309473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100546 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A074946.P15189865996818309473

namespace A074946

/-- `∪[A100546(n), A137230(n+1)]` -/
def P15189865996818309473.Spec : Prop :=
  ∀ n, (P15189865996818309473.a n : ℤ) = A074946 (n + 1)

end A074946

/-!
# A074949: Denominators of Sum_{k=1..n} 1/lcm(n,k).

The programs for A074949, there is no canonical definition to state claims against.
-/

/-! ## A074949.P15576822259695693007

`lcm((n+1)/2^val(n+1, 2), A116417(A000740(n+1)))`
-/

namespace A074949.P15576822259695693007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) (A116417 (A000740 (n + 1)).toNat)

end

end A074949.P15576822259695693007

/-! ## A074949.P9732430652375010869

`lcm(A000265(A077168(n)), A232112(n))`
-/

namespace A074949.P9732430652375010869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000265 (A077168 n).toNat) (A232112 n)

end

end A074949.P9732430652375010869

/-! ## A074949.P14588543716148052618

`lcm(A116417(A116419(n)), A231693(n))`
-/

namespace A074949.P14588543716148052618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A116417 (A116419 n).toNat) (A231693 n)

end

end A074949.P14588543716148052618

/-! ## A074949.P13199984825150461209

`lcm(A061019(A232112(n)), A109613(n))`
-/

namespace A074949.P13199984825150461209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A061019 (A232112 n).toNat) (A109613 n)

end

end A074949.P13199984825150461209

/-! ## A074949.P822076098123844192

`lcm(A000265(n+1), A325402(A232112(n)))`
-/

namespace A074949.P822076098123844192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000265 (n + 1)) (A325402 (A232112 n).toNat)

end

end A074949.P822076098123844192

/-!
# A074951: Continued fraction for harmonic mean of Pi and e.

The programs for A074951, there is no canonical definition to state claims against.
-/

/-! ## A074951.P10624070582511678896

`gcd(10, A026356(A326599(n)))`
-/

namespace A074951.P10624070582511678896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 (A026356 (A326599 n).toNat)

end

end A074951.P10624070582511678896

/-! ## A074951.P11074662510953680565

`A033478(A076942(n+1)^4)`
-/

namespace A074951.P11074662510953680565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033478 (A076942 (n + 1) ^ 4).toNat

end

end A074951.P11074662510953680565

/-! ## A074951.P4457540288143072652

`A033478(A076942(n+1)²²)`
-/

namespace A074951.P4457540288143072652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033478 ((A076942 (n + 1) ^ 2) ^ 2).toNat

end

end A074951.P4457540288143072652

/-! ## A074951.P302749349613130061

`A089086(A018079(n)+lcm(4, n)/gcd(4, n))`
-/

namespace A074951.P302749349613130061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089086 (SequenceMachineLib.roundAway ((A018079 n : ℚ) + (Nat.lcm 4 n : ℚ) / (Nat.gcd 4 n : ℚ))).toNat

end

end A074951.P302749349613130061

/-!
# A074953: Numbers equidistant from consecutive twin prime pairs.

The programs for A074953, the canonical program `A074953.P15833101242279798323` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074953 has offset 1).

The definition of A074953 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, A006512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074953.P15833101242279798323

`(A006512(n+2)+A001359(n+1))/2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A074953

/-- `(A006512(n+2)+A001359(n+1))/2` -/
def P15833101242279798323.Spec : Prop :=
  ∀ n, P15833101242279798323.a n = (A074953 (n + 1) : ℚ)

end A074953

/-! ## A074953.P2319261575404028718

`A079328(n+1)+1`
-/

namespace A074953.P2319261575404028718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079328 (n + 1) + 1

end

end A074953.P2319261575404028718

namespace A074953

/-- `A079328(n+1)+1` -/
def P2319261575404028718.Spec : Prop :=
  ∀ n, P2319261575404028718.a n = A074953 (n + 1)

end A074953

/-! ## A074953.P8052527197581111326

`A079329(n+1)-1`
-/

namespace A074953.P8052527197581111326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079329 (n + 1) - 1

end

end A074953.P8052527197581111326

namespace A074953

/-- `A079329(n+1)-1` -/
def P8052527197581111326.Spec : Prop :=
  ∀ n, P8052527197581111326.a n = A074953 (n + 1)

end A074953

/-! ## A074953.P1771174525646881063

`A040040(n+1)+A040040(n+2)`
-/

namespace A074953.P1771174525646881063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1) + A040040 (n + 2)

end

end A074953.P1771174525646881063

namespace A074953

/-- `A040040(n+1)+A040040(n+2)` -/
def P1771174525646881063.Spec : Prop :=
  ∀ n, P1771174525646881063.a n = A074953 (n + 1)

end A074953

/-! ## A074953.P9995117982639437897

`A014574(n+1)+A053319(n+1)/2`
-/

namespace A074953.P9995117982639437897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014574 (n + 1) : ℚ) + (A053319 (n + 1) : ℚ) / 2

end

end A074953.P9995117982639437897

namespace A074953

/-- `A014574(n+1)+A053319(n+1)/2` -/
def P9995117982639437897.Spec : Prop :=
  ∀ n, P9995117982639437897.a n = (A074953 (n + 1) : ℚ)

end A074953

/-! ## A074953.P5714118795403388815

`(A054735(n+1)+A053319(n+1))/2`
-/

namespace A074953.P5714118795403388815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054735 (n + 1) + A053319 (n + 1) : ℚ) / 2

end

end A074953.P5714118795403388815

namespace A074953

/-- `(A054735(n+1)+A053319(n+1))/2` -/
def P5714118795403388815.Spec : Prop :=
  ∀ n, P5714118795403388815.a n = (A074953 (n + 1) : ℚ)

end A074953

/-! ## A074953.P475912374901154514

`(A172057(n+1)+A001359(n+1))/2`
-/

namespace A074953.P475912374901154514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172057 (n + 1) + A001359 (n + 1) : ℚ) / 2

end

end A074953.P475912374901154514

namespace A074953

/-- `(A172057(n+1)+A001359(n+1))/2` -/
def P475912374901154514.Spec : Prop :=
  ∀ n, P475912374901154514.a n = (A074953 (n + 1) : ℚ)

end A074953

/-! ## A074953.P3013283746277545550

`A006512(n+1)+A167132(n+1)/2`
-/

namespace A074953.P3013283746277545550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006512 (n + 1) : ℚ) + (A167132 (n + 1) : ℚ) / 2

end

end A074953.P3013283746277545550

namespace A074953

/-- `A006512(n+1)+A167132(n+1)/2` -/
def P3013283746277545550.Spec : Prop :=
  ∀ n, P3013283746277545550.a n = (A074953 (n + 1) : ℚ)

end A074953

/-! ## A074953.P1012045087349460297

`(A135283(n+1)-A001359(n+1))/2`
-/

namespace A074953.P1012045087349460297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135283 (n + 1) - A001359 (n + 1) : ℚ) / 2

end

end A074953.P1012045087349460297

namespace A074953

/-- `(A135283(n+1)-A001359(n+1))/2` -/
def P1012045087349460297.Spec : Prop :=
  ∀ n, P1012045087349460297.a n = (A074953 (n + 1) : ℚ)

end A074953

/-! ## A074953.P17274296769738472431

`A014574(n+1)+Δ[A001359(n+1)/2]`
-/

namespace A074953.P17274296769738472431
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001359 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014574 (n + 1) : ℚ) + (f1 (n + 1) - f1 n)

end

end A074953.P17274296769738472431

namespace A074953

/-- `A014574(n+1)+Δ[A001359(n+1)/2]` -/
def P17274296769738472431.Spec : Prop :=
  ∀ n, P17274296769738472431.a n = (A074953 (n + 1) : ℚ)

end A074953

/-! ## A074953.P13555000851552827548

`(A054735(n+1)+Δ[A001359(n+1)])/2`
-/

namespace A074953.P13555000851552827548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054735 (n + 1) + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A074953.P13555000851552827548

namespace A074953

/-- `(A054735(n+1)+Δ[A001359(n+1)])/2` -/
def P13555000851552827548.Spec : Prop :=
  ∀ n, P13555000851552827548.a n = (A074953 (n + 1) : ℚ)

end A074953

/-! ## A074953.P11877915835404894476

`A243811(n+2)+A243811(n+1)+4`
-/

namespace A074953.P11877915835404894476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243811 (n + 2) + (A243811 (n + 1) + 4)

end

end A074953.P11877915835404894476

namespace A074953

/-- `A243811(n+2)+A243811(n+1)+4` -/
def P11877915835404894476.Spec : Prop :=
  ∀ n, P11877915835404894476.a n = A074953 (n + 1)

end A074953

/-! ## A074953.P8936370787412282491

`(A014574(n+2)+A014574(n+1))/2`
-/

namespace A074953.P8936370787412282491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014574 (n + 2) + A014574 (n + 1) : ℚ) / 2

end

end A074953.P8936370787412282491

namespace A074953

/-- `(A014574(n+2)+A014574(n+1))/2` -/
def P8936370787412282491.Spec : Prop :=
  ∀ n, P8936370787412282491.a n = (A074953 (n + 1) : ℚ)

end A074953

/-! ## A074953.P3046065149607781418

`(A067829(n+2)+A001359(n+2))/2`
-/

namespace A074953.P3046065149607781418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067829 (n + 2) + A001359 (n + 2) : ℚ) / 2

end

end A074953.P3046065149607781418

namespace A074953

/-- `(A067829(n+2)+A001359(n+2))/2` -/
def P3046065149607781418.Spec : Prop :=
  ∀ n, P3046065149607781418.a n = (A074953 (n + 1) : ℚ)

end A074953

/-! ## A074953.P18310497308599538116

`A014574(n+1)+A004526(Δ[A014574(n+1)])`
-/

namespace A074953.P18310497308599538116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) + A004526 (f1 (n + 1) - f1 n).toNat

end

end A074953.P18310497308599538116

namespace A074953

/-- `A014574(n+1)+A004526(Δ[A014574(n+1)])` -/
def P18310497308599538116.Spec : Prop :=
  ∀ n, P18310497308599538116.a n = A074953 (n + 1)

end A074953

/-! ## A074953.P10858419685979319362

`A168497(n+2)+A168497(n+3)`
-/

namespace A074953.P10858419685979319362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 2) + A168497 (n + 3)

end

end A074953.P10858419685979319362

namespace A074953

/-- `A168497(n+2)+A168497(n+3)` -/
def P10858419685979319362.Spec : Prop :=
  ∀ n, P10858419685979319362.a n = A074953 (n + 1)

end A074953

/-! ## A074953.P402656245905437176

`A096281(2*(n+1))/2`
-/

namespace A074953.P402656245905437176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096281 (2 * (n + 1)) : ℚ) / 2

end

end A074953.P402656245905437176

namespace A074953

/-- `A096281(2*(n+1))/2` -/
def P402656245905437176.Spec : Prop :=
  ∀ n, P402656245905437176.a n = (A074953 (n + 1) : ℚ)

end A074953

/-! ## A074953.P37690501697537940

`floor(A163656(2*n+1)+acot(n))`
-/

namespace A074953.P37690501697537940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A163656 (2 * n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A074953.P37690501697537940

namespace A074953

/-- `floor(A163656(2*n+1)+acot(n))` -/
def P37690501697537940.Spec : Prop :=
  ∀ n, P37690501697537940.a n = A074953 (n + 1)

end A074953

/-! ## A074953.P4426617926528224893

`A163656(2*n+1)-A129950(2*(n+1))`
-/

namespace A074953.P4426617926528224893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163656 (2 * n + 1) - A129950 (2 * (n + 1))

end

end A074953.P4426617926528224893

namespace A074953

/-- `A163656(2*n+1)-A129950(2*(n+1))` -/
def P4426617926528224893.Spec : Prop :=
  ∀ n, P4426617926528224893.a n = A074953 (n + 1)

end A074953

/-! ## A074953.P12285699247890461300

`(A067829(n+2)+A001097(2*(n+1)))/2`
-/

namespace A074953.P12285699247890461300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067829 (n + 2) + A001097 (2 * (n + 1)) : ℚ) / 2

end

end A074953.P12285699247890461300

namespace A074953

/-- `(A067829(n+2)+A001097(2*(n+1)))/2` -/
def P12285699247890461300.Spec : Prop :=
  ∀ n, P12285699247890461300.a n = (A074953 (n + 1) : ℚ)

end A074953

/-!
# A074954: Least perfect power b^e such that b^e-n is also a perfect power, or 0 if no such perfect power exists.

The programs for A074954, there is no canonical definition to state claims against.
-/

/-! ## A074954.P17115976163019662818

`A103952(n+1)*A187967(A126646(n))`
-/

namespace A074954.P17115976163019662818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103952 (n + 1) * A187967 (A126646 n).toNat

end

end A074954.P17115976163019662818

/-! ## A074954.P11501099803039555710

`(A076444(A077168(n))+n+1)*A187967(A018252(n+1))`
-/

namespace A074954.P11501099803039555710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076444 (A077168 n).toNat + (n + 1 : ℤ)) * A187967 (A018252 (n + 1)).toNat

end

end A074954.P11501099803039555710

/-! ## A074954.P13557609790786421195

`(A076444(A077168(n))+n+1)*A187967(A084371(n+1))`
-/

namespace A074954.P13557609790786421195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076444 (A077168 n).toNat + (n + 1 : ℤ)) * A187967 (A084371 (n + 1)).toNat

end

end A074954.P13557609790786421195

/-! ## A074954.P13101563156311671463

`(A076444(A077168(n))+n+1)*A187967(A306458(n+1))`
-/

namespace A074954.P13101563156311671463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076444 (A077168 n).toNat + (n + 1 : ℤ)) * A187967 (A306458 (n + 1)).toNat

end

end A074954.P13101563156311671463

/-! ## A074954.P18268838971104929702

`(A076444(A077168(n))+n+1)*A187967(A164554(3*n+1))`
-/

namespace A074954.P18268838971104929702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076444 (A077168 n).toNat + (n + 1 : ℤ)) * A187967 (A164554 (3 * n + 1)).toNat

end

end A074954.P18268838971104929702

/-!
# A074963: Max ( sigma(x*y) : 1<=x<=n, 1<=y<=n ).

The programs for A074963, there is no canonical definition to state claims against.
-/

/-! ## A074963.P11303399698991284806

`∑{d}[A127702(n+1), #]`
-/

namespace A074963.P11303399698991284806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127702 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A074963.P11303399698991284806

/-! ## A074963.P10479831235633007378

`A000203(A127702(n+1))`
-/

namespace A074963.P10479831235633007378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A127702 (n + 1)).toNat

end

end A074963.P10479831235633007378

/-! ## A074963.P17102790946095801962

`record[A097012(round(((A078458(n+1)+2)/2)²))]`
-/

namespace A074963.P17102790946095801962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097012 (SequenceMachineLib.roundAway (((A078458 (n + 1) + 2 : ℚ) / 2) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074963.P17102790946095801962

/-!
# A074964: Numbers k such that Max ( sigma(x*y) : 1 <= x <= k, 1 <= y <= k ) = sigma(k^2).

The programs for A074964, there is no canonical definition to state claims against.
-/

/-! ## A074964.P9970696453620020475

`a(n-1)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=6, a(5)=8, a(6)=12, a(7)=18, a(8)=24, a(9)=60`
-/

namespace A074964.P9970696453620020475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4, 6, 8, 12, 18, 24, 60] fun n a =>
  a (n - 1)

end

end A074964.P9970696453620020475

/-! ## A074964.P7200971518034462172

`∑[p?[A348323(n)+2]-1]`
-/

namespace A074964.P7200971518034462172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348323 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074964.P7200971518034462172

/-! ## A074964.P5311412943705784231

`record[∏{e}[n-A237113(n), #+1]]`
-/

namespace A074964.P5311412943705784231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A237113 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074964.P5311412943705784231

/-! ## A074964.P17461249490633539797

`∑[A236840(n)^floor((2*n+1)/9)]`
-/

namespace A074964.P17461249490633539797
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236840 n : ℚ) ^ (⌊(2 * n + 1 : ℚ) / 9⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074964.P17461249490633539797

/-! ## A074964.P6574706475820745348

`A332839(A062504(n))`
-/

namespace A074964.P6574706475820745348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332839 (A062504 n).toNat

end

end A074964.P6574706475820745348

/-!
# A074965: Primes p for which there is an integer k such that (2*k+1)*p=2*k*q+1, where q is the next prime after p. Equivalently, (p-1)/(2*(q-p)) is an integer.

The programs for A074965, the canonical program `A074965.P6729501148211341454` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074965 has offset 1).

The definition of A074965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 585 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074965.P6729501148211341454

`p?[A034953(n+1)%A291463(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A074965

/-- `p?[A034953(n+1)%A291463(n+1)]` -/
def P6729501148211341454.Spec : Prop :=
  ∀ n, P6729501148211341454.a n = A074965 (n + 1)

theorem P6729501148211341454.correct : P6729501148211341454.Spec := by
  intro n
  simp only [A074965, Nat.add_sub_cancel]

end A074965

/-! ## A074965.P15893306653445930381

`p?[lcm(n, A110315(n)%A013632(n))]`
-/

namespace A074965.P15893306653445930381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (Int.tmod (A110315 n) (A013632 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A074965.P15893306653445930381

namespace A074965

/-- `p?[lcm(n, A110315(n)%A013632(n))]` -/
def P15893306653445930381.Spec : Prop :=
  ∀ n, (P15893306653445930381.a n : ℤ) = A074965 (n + 1)

end A074965

/-! ## A074965.P12145156117717725158

`p?[A321366(A291463(n+1))]`
-/

namespace A074965.P12145156117717725158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321366 (A291463 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074965.P12145156117717725158

namespace A074965

/-- `p?[A321366(A291463(n+1))]` -/
def P12145156117717725158.Spec : Prop :=
  ∀ n, P12145156117717725158.a n = A074965 (n + 1)

end A074965

/-! ## A074965.P9091221792996969829

`p?[A001248(n+1)%A022998(A291463(n+1))]`
-/

namespace A074965.P9091221792996969829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001248 (n + 1)) (A022998 (A291463 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074965.P9091221792996969829

namespace A074965

/-- `p?[A001248(n+1)%A022998(A291463(n+1))]` -/
def P9091221792996969829.Spec : Prop :=
  ∀ n, P9091221792996969829.a n = A074965 (n + 1)

end A074965

/-! ## A074965.P797517327018176216

`p?[A000040(n+1)²%A022998(A291463(n+1))]`
-/

namespace A074965.P797517327018176216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) ^ 2) (A022998 (A291463 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074965.P797517327018176216

namespace A074965

/-- `p?[A000040(n+1)²%A022998(A291463(n+1))]` -/
def P797517327018176216.Spec : Prop :=
  ∀ n, P797517327018176216.a n = A074965 (n + 1)

end A074965

/-!
# A074966: a(n) = least k such that n^n + k is prime.

The programs for A074966, there is no canonical definition to state claims against.
-/

/-! ## A074966.P14665912885710223933

`A193813(n+1)+1`
-/

namespace A074966.P14665912885710223933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193813 (n + 1) + 1

end

end A074966.P14665912885710223933

/-! ## A074966.P11065326791142873404

`A098682(n+1)-(n+1)^(n+1)`
-/

namespace A074966.P11065326791142873404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098682 (n + 1) - ((n + 1) ^ (n + 1) : ℤ)

end

end A074966.P11065326791142873404

/-! ## A074966.P13544331971523597987

`A023443(A098682(n+1)-A048861(n+1))`
-/

namespace A074966.P13544331971523597987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A098682 (n + 1) - A048861 (n + 1)).toNat

end

end A074966.P13544331971523597987

/-!
# A074967: a(n) = least k such that n^n - k is prime.

The programs for A074967, there is no canonical definition to state claims against.
-/

/-! ## A074967.P9577012630138061385

`A161503(n+2)-A074966(n+2)`
-/

namespace A074967.P9577012630138061385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161503 (n + 2) - A074966 (n + 2)

end

end A074967.P9577012630138061385

/-! ## A074967.P10142980042898294028

`A074966(n+2)+2*A333184(n+2)`
-/

namespace A074967.P10142980042898294028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074966 (n + 2) + 2 * A333184 (n + 2)

end

end A074967.P10142980042898294028

/-! ## A074967.P1144712756371322312

`A333184(n+2)+A161503(n+2)/2`
-/

namespace A074967.P1144712756371322312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333184 (n + 2) : ℚ) + (A161503 (n + 2) : ℚ) / 2

end

end A074967.P1144712756371322312

/-! ## A074967.P4147752905484559888

`A333184(n+2)+A025480(A161503(n+2))`
-/

namespace A074967.P4147752905484559888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333184 (n + 2) + A025480 (A161503 (n + 2)).toNat

end

end A074967.P4147752905484559888

/-! ## A074967.P16265828853874105805

`A333184(A289439(2*(n+2)))+A289436(A161503(n+2))`
-/

namespace A074967.P16265828853874105805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333184 (A289439 (2 * (n + 2))).toNat + A289436 (A161503 (n + 2)).toNat

end

end A074967.P16265828853874105805

/-! ## A074967.P9824705479022537576

`A289439(A161503(n+2)+2*A333184(n+2))`
-/

namespace A074967.P9824705479022537576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289439 (A161503 (n + 2) + 2 * A333184 (n + 2)).toNat

end

end A074967.P9824705479022537576

/-! ## A074967.P5898234041487888009

`A289439(A333184(n+2)+A333184(n+2)+A161503(n+2))`
-/

namespace A074967.P5898234041487888009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289439 (A333184 (n + 2) + (A333184 (n + 2) + A161503 (n + 2))).toNat

end

end A074967.P5898234041487888009

/-! ## A074967.P14223998282109336729

`A000312(n+2)-A098681(n+2)`
-/

namespace A074967.P14223998282109336729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (n + 2) - A098681 (n + 2)

end

end A074967.P14223998282109336729

/-! ## A074967.P2243366508777697794

`A098682(n+2)-(A098681(n+2)+A074966(n+2))`
-/

namespace A074967.P2243366508777697794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098682 (n + 2) - (A098681 (n + 2) + A074966 (n + 2))

end

end A074967.P2243366508777697794

/-!
# A074969: Numbers with six distinct prime divisors.

The programs for A074969, there is no canonical definition to state claims against.
-/

/-! ## A074969.P8652446121674428646

`A000027(A336910(n+4))`
-/

namespace A074969.P8652446121674428646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A336910 (n + 4)).toNat

end

end A074969.P8652446121674428646

/-! ## A074969.P15085999871615985889

`A001221(A167853(n+1))*A336910(n+4)`
-/

namespace A074969.P15085999871615985889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A167853 (n + 1)).toNat * A336910 (n + 4)

end

end A074969.P15085999871615985889

/-! ## A074969.P7644043667211942749

`A014963(A007913((n+1)²))*A336910(n+4)`
-/

namespace A074969.P7644043667211942749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A007913 ((n + 1) ^ 2)).toNat * A336910 (n + 4)

end

end A074969.P7644043667211942749

/-! ## A074969.P3600425603464584774

`A001221(A142942(n+1))*A336910(n+4)`
-/

namespace A074969.P3600425603464584774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A142942 (n + 1)).toNat * A336910 (n + 4)

end

end A074969.P3600425603464584774

/-! ## A074969.P8117027269813975602

`A001221(A142949(n+1))*A336910(n+4)`
-/

namespace A074969.P8117027269813975602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A142949 (n + 1)).toNat * A336910 (n + 4)

end

end A074969.P8117027269813975602

/-! ## A074969.P17842883522274516773

`A001221(A142943(n+2))*A336910(n+4)`
-/

namespace A074969.P17842883522274516773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A142943 (n + 2)).toNat * A336910 (n + 4)

end

end A074969.P17842883522274516773

/-! ## A074969.P11709805321513046559

`A010054(∑[n])*A336910(A020705(n))`
-/

namespace A074969.P11709805321513046559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (∑ j ∈ Finset.range (n + 1), f1 j) * A336910 (A020705 n).toNat

end

end A074969.P11709805321513046559

/-! ## A074969.P5228651146768466520

`A065941(A000124(n))*A336910(A020705(n))`
-/

namespace A074969.P5228651146768466520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (A000124 n).toNat * A336910 (A020705 n).toNat

end

end A074969.P5228651146768466520

/-! ## A074969.P16727410404514181652

`1-(A010054(A000217(n))-A336910(A020705(n)))`
-/

namespace A074969.P16727410404514181652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A010054 (A000217 n).toNat - A336910 (A020705 n).toNat)

end

end A074969.P16727410404514181652

/-! ## A074969.P9285960391611344700

`A014963(A055998(n+2)-(n+1))*A336910(n+4)`
-/

namespace A074969.P9285960391611344700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A055998 (n + 2) - (n + 1 : ℤ)).toNat * A336910 (n + 4)

end

end A074969.P9285960391611344700

/-! ## A074969.P6661742983356790065

`A014963(A052905(n+3)-(n+1))*A336910(n+4)`
-/

namespace A074969.P6661742983356790065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A052905 (n + 3) - (n + 1 : ℤ)).toNat * A336910 (n + 4)

end

end A074969.P6661742983356790065

/-! ## A074969.P18008911527661047468

`A014963(A000217(n+6))*A336910(n+4)`
-/

namespace A074969.P18008911527661047468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 6)).toNat * A336910 (n + 4)

end

end A074969.P18008911527661047468

/-!
# A074971: Number of partitions of n into distinct parts of order n.

The programs for A074971, there is no canonical definition to state claims against.
-/

/-! ## A074971.P1946489181841460522

`∑{e}[A364396(A378604(n+1)), #]`
-/

namespace A074971.P1946489181841460522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364396 (A378604 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A074971.P1946489181841460522

/-! ## A074971.P8016990501091039743

`A000005(floor(2^(A001065(n+1)-(n+1)))+1)`
-/

namespace A074971.P8016990501091039743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (⌊(2 : ℚ) ^ (A001065 (n + 1) - (n + 1 : ℤ) : ℤ)⌋ + 1).toNat

end

end A074971.P8016990501091039743

/-! ## A074971.P14086006253535085154

`A091935(A091954(n+1)^A065205(n+1))`
-/

namespace A074971.P14086006253535085154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091935 (SequenceMachineLib.roundAway ((A091954 (n + 1) : ℚ) ^ (A065205 (n + 1) : ℤ))).toNat

end

end A074971.P14086006253535085154

/-! ## A074971.P15408138698446285953

`A331308(A033630(n+1)^A086869(n+1))`
-/

namespace A074971.P15408138698446285953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331308 (SequenceMachineLib.roundAway ((A033630 (n + 1) : ℚ) ^ (A086869 (n + 1) : ℤ))).toNat

end

end A074971.P15408138698446285953

/-! ## A074971.P9085585738154873405

`A331308(A223491(n+1)^A065205(n+1))`
-/

namespace A074971.P9085585738154873405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331308 (SequenceMachineLib.roundAway ((A223491 (n + 1) : ℚ) ^ (A065205 (n + 1) : ℤ))).toNat

end

end A074971.P9085585738154873405

/-!
# A074972: a(n) == - prime(n) (modulo 20).

The programs for A074972, the canonical program `A074972.P802094365088414414` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074972 has offset 1).

The definition of A074972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074972.P13905125595878588645

`20-A242120(n+1)`
-/

namespace A074972.P13905125595878588645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 - A242120 (n + 1)

end

end A074972.P13905125595878588645

namespace A074972

/-- `20-A242120(n+1)` -/
def P13905125595878588645.Spec : Prop :=
  ∀ n, P13905125595878588645.a n = A074972 (n + 1)

end A074972

/-! ## A074972.P802094365088414414

`(19*A000040(n+1))%20`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A074972

/-- `(19*A000040(n+1))%20` -/
def P802094365088414414.Spec : Prop :=
  ∀ n, P802094365088414414.a n = A074972 (n + 1)

theorem P802094365088414414.correct : P802094365088414414.Spec := by
  intro n
  simp only [A074972, Nat.add_sub_cancel]

end A074972

/-! ## A074972.P15507075307982084144

`20-sqrt(A001248(n+1))%20`
-/

namespace A074972.P15507075307982084144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 - Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))) 20

end

end A074972.P15507075307982084144

namespace A074972

/-- `20-sqrt(A001248(n+1))%20` -/
def P15507075307982084144.Spec : Prop :=
  ∀ n, P15507075307982084144.a n = A074972 (n + 1)

end A074972

/-! ## A074972.P6242197121689158286

`20-A000040(C(n+1, n))%20`
-/

namespace A074972.P6242197121689158286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 - Int.tmod (A000040 (Nat.choose (n + 1) n)) 20

end

end A074972.P6242197121689158286

namespace A074972

/-- `20-A000040(C(n+1, n))%20` -/
def P6242197121689158286.Spec : Prop :=
  ∀ n, P6242197121689158286.a n = A074972 (n + 1)

end A074972

/-! ## A074972.P1838554853900553913

`A022976(A242120(n+1))`
-/

namespace A074972.P1838554853900553913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022976 (A242120 (n + 1)).toNat

end

end A074972.P1838554853900553913

namespace A074972

/-- `A022976(A242120(n+1))` -/
def P1838554853900553913.Spec : Prop :=
  ∀ n, P1838554853900553913.a n = A074972 (n + 1)

end A074972

/-! ## A074972.P6802357233450322448

`20-record[A006530(n+2)]%20`
-/

namespace A074972.P6802357233450322448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 - Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 20

end

end A074972.P6802357233450322448

namespace A074972

/-- `20-record[A006530(n+2)]%20` -/
def P6802357233450322448.Spec : Prop :=
  ∀ n, P6802357233450322448.a n = A074972 (n + 1)

end A074972

/-! ## A074972.P12486605085421967519

`20-record[A020639(n+2)]%20`
-/

namespace A074972.P12486605085421967519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 - Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 20

end

end A074972.P12486605085421967519

namespace A074972

/-- `20-record[A020639(n+2)]%20` -/
def P12486605085421967519.Spec : Prop :=
  ∀ n, P12486605085421967519.a n = A074972 (n + 1)

end A074972

/-! ## A074972.P9008489902880320843

`20-record[A000010(n+1)+1]%20`
-/

namespace A074972.P9008489902880320843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 - Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 20

end

end A074972.P9008489902880320843

namespace A074972

/-- `20-record[A000010(n+1)+1]%20` -/
def P9008489902880320843.Spec : Prop :=
  ∀ n, P9008489902880320843.a n = A074972 (n + 1)

end A074972

/-! ## A074972.P14050406249102308171

`20-record[A014963(n+2)]%20`
-/

namespace A074972.P14050406249102308171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 - Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 20

end

end A074972.P14050406249102308171

namespace A074972

/-- `20-record[A014963(n+2)]%20` -/
def P14050406249102308171.Spec : Prop :=
  ∀ n, P14050406249102308171.a n = A074972 (n + 1)

end A074972

/-! ## A074972.P10635703877416697606

`20-p?[A001057(n)]%20`
-/

namespace A074972.P10635703877416697606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 - Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 20

end

end A074972.P10635703877416697606

namespace A074972

/-- `20-p?[A001057(n)]%20` -/
def P10635703877416697606.Spec : Prop :=
  ∀ n, P10635703877416697606.a n = A074972 (n + 1)

end A074972

/-!
# A074973: Smallest index i such that next_prime( 2*prime(i) ) - 2*prime(i) = 2n - 1.

The programs for A074973, there is no canonical definition to state claims against.
-/

/-! ## A074973.P7221765833491400133

`A000720(A059846(n+1))`
-/

namespace A074973.P7221765833491400133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A059846 (n + 1)).toNat

end

end A074973.P7221765833491400133

/-! ## A074973.P14510242466259090698

`∑{d}[A059846(n+1), A061395(#)]`
-/

namespace A074973.P14510242466259090698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A074973.P14510242466259090698

/-!
# A074975: Abundant numbers such that the sum of their individual digits when raised to their own power is an abundant number.

The programs for A074975, there is no canonical definition to state claims against.
-/

/-! ## A074975.P4983428531123943590

`A097624(A097636(2*(n+1)))+9`
-/

namespace A074975.P4983428531123943590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097624 (A097636 (2 * (n + 1))).toNat + 9

end

end A074975.P4983428531123943590

/-!
# A074976: a(n) = round(1/(sqrt(prime(n+1)) - sqrt(prime(n)))).

The programs for A074976, the canonical program `A074976.P6326072965319344709` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074976 has offset 1).

The definition of A074976 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(1/(sqrt(A000040(n+2))-sqrt(A000040(n+1))))` (program `A074976.P6326072965319344709`, by `A074976.P6326072965319344709.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074976.P6326072965319344709

`round(1/(sqrt(A000040(n+2))-sqrt(A000040(n+1))))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A074976

/-- `round(1/(sqrt(A000040(n+2))-sqrt(A000040(n+1))))` -/
def P6326072965319344709.Spec : Prop :=
  ∀ n, P6326072965319344709.a n = A074976 (n + 1)

theorem P6326072965319344709.correct : P6326072965319344709.Spec := by
  intro n
  simp only [A074976, Nat.add_sub_cancel]

end A074976

/-! ## A074976.P8649258416445497239

`round(2/Δ[sqrt(A001749(n+1))])`
-/

namespace A074976.P8649258416445497239
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001749 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / (f1 (n + 1) - f1 n))

end

end A074976.P8649258416445497239

namespace A074976

/-- `round(2/Δ[sqrt(A001749(n+1))])` -/
def P8649258416445497239.Spec : Prop :=
  ∀ n, P8649258416445497239.a n = A074976 (n + 1)

end A074976

/-! ## A074976.P4144040300948107488

`round(1/Δ[sqrt(A000040(n+1))])`
-/

namespace A074976.P4144040300948107488
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000040 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (f1 (n + 1) - f1 n))

end

end A074976.P4144040300948107488

namespace A074976

/-- `round(1/Δ[sqrt(A000040(n+1))])` -/
def P4144040300948107488.Spec : Prop :=
  ∀ n, P4144040300948107488.a n = A074976 (n + 1)

theorem P4144040300948107488.correct : P4144040300948107488.Spec := by
  intro n
  simp only [A074976, Nat.add_sub_cancel, A074976.P4144040300948107488.f1, A074976.P4144040300948107488.a, A074976.P6326072965319344709.a, SequenceMachineLib.memo_apply]

end A074976

/-! ## A074976.P3254646098265941717

`round(1/Δ[sqrt(A008864(n+1)-1)])`
-/

namespace A074976.P3254646098265941717
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008864 (n + 1) - 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (f1 (n + 1) - f1 n))

end

end A074976.P3254646098265941717

namespace A074976

/-- `round(1/Δ[sqrt(A008864(n+1)-1)])` -/
def P3254646098265941717.Spec : Prop :=
  ∀ n, P3254646098265941717.a n = A074976 (n + 1)

theorem P3254646098265941717.correct : P3254646098265941717.Spec := by
  intro n
  simp only [A074976, Nat.add_sub_cancel, A074976.P3254646098265941717.f1, A074976.P3254646098265941717.a, A074976.P6326072965319344709.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A074976

/-! ## A074976.P14506401101768913544

`round(1/Δ[sqrt(A040976(n+1)+2)])`
-/

namespace A074976.P14506401101768913544
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A040976 (n + 1) + 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (f1 (n + 1) - f1 n))

end

end A074976.P14506401101768913544

namespace A074976

/-- `round(1/Δ[sqrt(A040976(n+1)+2)])` -/
def P14506401101768913544.Spec : Prop :=
  ∀ n, P14506401101768913544.a n = A074976 (n + 1)

theorem P14506401101768913544.correct : P14506401101768913544.Spec := by
  intro n
  simp only [A074976, Nat.add_sub_cancel, A074976.P14506401101768913544.f1, A074976.P14506401101768913544.a, A074976.P6326072965319344709.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A074976

/-! ## A074976.P2612796593517012008

`round(1/Δ[sqrt(A008578(n+2))])`
-/

namespace A074976.P2612796593517012008
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008578 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (f1 (n + 1) - f1 n))

end

end A074976.P2612796593517012008

namespace A074976

/-- `round(1/Δ[sqrt(A008578(n+2))])` -/
def P2612796593517012008.Spec : Prop :=
  ∀ n, P2612796593517012008.a n = A074976 (n + 1)

end A074976

/-!
# A074979: Primes for which the two closest primes are smaller.

The programs for A074979, there is no canonical definition to state claims against.
-/

/-! ## A074979.P10928467204569527216

`A000040(A109226(n+1))`
-/

namespace A074979.P10928467204569527216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A109226 (n + 1)).toNat

end

end A074979.P10928467204569527216

/-! ## A074979.P5417827475945924796

`A008578(A109226(n+1)+1)`
-/

namespace A074979.P5417827475945924796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A109226 (n + 1) + 1).toNat

end

end A074979.P5417827475945924796

/-! ## A074979.P10942361874491327813

`A045319(A109226(n+1)-1)`
-/

namespace A074979.P10942361874491327813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A109226 (n + 1) - 1).toNat

end

end A074979.P10942361874491327813

/-! ## A074979.P1118199377118942769

`A045344(A109226(n+1)-1)`
-/

namespace A074979.P1118199377118942769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A109226 (n + 1) - 1).toNat

end

end A074979.P1118199377118942769

/-! ## A074979.P82655943843318226

`A046022(A109226(n+1)+2)`
-/

namespace A074979.P82655943843318226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A109226 (n + 1) + 2).toNat

end

end A074979.P82655943843318226

/-! ## A074979.P15633403296388657713

`A065091(A109226(n+1)-1)`
-/

namespace A074979.P15633403296388657713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A109226 (n + 1) - 1).toNat

end

end A074979.P15633403296388657713

/-! ## A074979.P9011575777166843515

`A158611(A109226(n+1)+2)`
-/

namespace A074979.P9011575777166843515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A109226 (n + 1) + 2).toNat

end

end A074979.P9011575777166843515

/-! ## A074979.P9555620968673070284

`∑{d}[A109226(n+1), A007444(#)]`
-/

namespace A074979.P9555620968673070284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A074979.P9555620968673070284

/-! ## A074979.P7048004944618229166

`A006093(A109226(n+1))+A007318(∑[n])`
-/

namespace A074979.P7048004944618229166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A109226 (n + 1)).toNat + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074979.P7048004944618229166

/-! ## A074979.P13956831544967659608

`A006093(A109226(n+1))+A014963(45*(n+1))`
-/

namespace A074979.P13956831544967659608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A109226 (n + 1)).toNat + A014963 (45 * (n + 1))

end

end A074979.P13956831544967659608

/-!
# A074980: Numbers which are not of the form m^p - n^q where p = 2 or 3, q = 2 or 3.

The programs for A074980, there is no canonical definition to state claims against.
-/

/-! ## A074980.P5049404456305303038

`eq[n, 2*A320045(A166133(n+1))]`
-/

namespace A074980.P5049404456305303038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A320045 (A166133 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074980.P5049404456305303038

/-! ## A074980.P7600168000436436342

`eq[A001281(n), A320045(A166133(n+1))]`
-/

namespace A074980.P7600168000436436342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320045 (A166133 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074980.P7600168000436436342

/-! ## A074980.P18112342998087203322

`eq[A029578(n), A320045(A166133(n+1))]`
-/

namespace A074980.P18112342998087203322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320045 (A166133 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074980.P18112342998087203322

/-! ## A074980.P12415765681359265690

`A274617(eq[1, A292371(n)])`
-/

namespace A074980.P12415765681359265690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A074980.P12415765681359265690

/-!
# A074981: Conjectured list of positive numbers which are not of the form r^i - s^j, where r,s,i,j are integers with r>0, s>0, i>1, j>1.

The programs for A074981, there is no canonical definition to state claims against.
-/

/-! ## A074981.P4710519383381358531

`eq[0, A075789(n+1)]+1`
-/

namespace A074981.P4710519383381358531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075789 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A074981.P4710519383381358531

/-! ## A074981.P13332749686023076573

`eq[0, A075791(n+1)]+1`
-/

namespace A074981.P13332749686023076573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075791 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A074981.P13332749686023076573

/-! ## A074981.P3352869724831943122

`∩[A074980(n+1), A341763(n+1)]`
-/

namespace A074981.P3352869724831943122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074981.P3352869724831943122

/-!
# A074983: 

The programs for A074983, there is no canonical definition to state claims against.
-/

/-! ## A074983.P12407283862840758929

`A214217(2*(n+1))+1`
-/

namespace A074983.P12407283862840758929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214217 (2 * (n + 1)) + 1

end

end A074983.P12407283862840758929

/-!
# A074984: m^p-n, for smallest m^p>=n.

The programs for A074984, there is no canonical definition to state claims against.
-/

/-! ## A074984.P15705336286793282603

`A377468(n+1)-(n+1)`
-/

namespace A074984.P15705336286793282603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377468 (n + 1) - (n + 1 : ℤ)

end

end A074984.P15705336286793282603

/-! ## A074984.P7026669028472275600

`A001597(A076411(n+1)+1)-(n+1)`
-/

namespace A074984.P7026669028472275600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (A076411 (n + 1) + 1).toNat - (n + 1 : ℤ)

end

end A074984.P7026669028472275600

/-! ## A074984.P15457606464671187204

`A001597(∑[char[A001597(n+1)]]+1)-(n+1)`
-/

namespace A074984.P15457606464671187204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - (n + 1 : ℤ)

end

end A074984.P15457606464671187204

/-! ## A074984.P16361552958703101956

`abs(A001597(A076411(n+1)+1)+A001478(n+1))`
-/

namespace A074984.P16361552958703101956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001597 (A076411 (n + 1) + 1).toNat + A001478 (n + 1)|

end

end A074984.P16361552958703101956

/-! ## A074984.P3721309977215419990

`A001597(A069623(n+1)-A075802(n+1)+1)-(n+1)`
-/

namespace A074984.P3721309977215419990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (A069623 (n + 1) - A075802 (n + 1) + 1).toNat - (n + 1 : ℤ)

end

end A074984.P3721309977215419990

/-! ## A074984.P16259248161451234972

`A024000(n+2)+A001597(A076411(n+1)+1)`
-/

namespace A074984.P16259248161451234972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (n + 2) + A001597 (A076411 (n + 1) + 1).toNat

end

end A074984.P16259248161451234972

/-! ## A074984.P14068578001431255546

`(A016813(n+2)+A001597(A076411(n+1)+1))%(n+2)`
-/

namespace A074984.P14068578001431255546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016813 (n + 2) + A001597 (A076411 (n + 1) + 1).toNat) (n + 2 : ℤ)

end

end A074984.P14068578001431255546

/-!
# A074985: Squares of semiprimes (A001358).

The programs for A074985, the canonical program `A074985.P6067425772546654880` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074985 has offset 1).

The definition of A074985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074985.P2432889802362844473

`A001358(n+1)²`
-/

namespace A074985.P2432889802362844473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) ^ 2

end

end A074985.P2432889802362844473

namespace A074985

/-- `A001358(n+1)²` -/
def P2432889802362844473.Spec : Prop :=
  ∀ n, P2432889802362844473.a n = A074985 (n + 1)

theorem P2432889802362844473.correct : P2432889802362844473.Spec := by
  intro n
  simp only [A074985, Nat.add_sub_cancel, A074985.P2432889802362844473.a, A074985.P6067425772546654880.a, A001358, A001358.P632087320844056370.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, A088707, A088707.P7291141647877559993.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A000196, A000196.P15434771586934192083.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A230595, A230595.P9035268919760195541.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A074985

/-! ## A074985.P2362913491910513093

`(A186621(n+1)+1)²`
-/

namespace A074985.P2362913491910513093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A186621 (n + 1) + 1) ^ 2

end

end A074985.P2362913491910513093

namespace A074985

/-- `(A186621(n+1)+1)²` -/
def P2362913491910513093.Spec : Prop :=
  ∀ n, P2362913491910513093.a n = A074985 (n + 1)

theorem P2362913491910513093.correct : P2362913491910513093.Spec := by
  intro n
  simp only [A074985, Nat.add_sub_cancel, A074985.P2362913491910513093.a, A074985.P6067425772546654880.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A186621, A186621.P5089299060388261365.a, A001358, A001358.P632087320844056370.a, A072000, A072000.P3706059858088101648.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A088707, A088707.P7291141647877559993.a, A000196, A000196.P15434771586934192083.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A230595, A230595.P9035268919760195541.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A074985

/-! ## A074985.P9817977685117941240

`(1-A088707(n+1))²`
-/

namespace A074985.P9817977685117941240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A088707 (n + 1)) ^ 2

end

end A074985.P9817977685117941240

namespace A074985

/-- `(1-A088707(n+1))²` -/
def P9817977685117941240.Spec : Prop :=
  ∀ n, P9817977685117941240.a n = A074985 (n + 1)

theorem P9817977685117941240.correct : P9817977685117941240.Spec := by
  intro n
  simp only [A074985, Nat.add_sub_cancel, A074985.P9817977685117941240.a, A074985.P6067425772546654880.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A000196, A000196.P15434771586934192083.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A230595, A230595.P9035268919760195541.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A074985

/-! ## A074985.P1256237447538376061

`(A075818(n+1)/2)²`
-/

namespace A074985.P1256237447538376061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A075818 (n + 1) : ℚ) / 2) ^ 2

end

end A074985.P1256237447538376061

namespace A074985

/-- `(A075818(n+1)/2)²` -/
def P1256237447538376061.Spec : Prop :=
  ∀ n, P1256237447538376061.a n = (A074985 (n + 1) : ℚ)

theorem P1256237447538376061.correct : P1256237447538376061.Spec := by
  intro n
  simp only [A074985, Nat.add_sub_cancel, A074985.P1256237447538376061.a, A074985.P6067425772546654880.a, A075818, A075818.P6886237212657486754.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A001358, A001358.P632087320844056370.a, A072000, A072000.P3706059858088101648.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A088707, A088707.P7291141647877559993.a, A000196, A000196.P15434771586934192083.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A230595, A230595.P9035268919760195541.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A074985

/-! ## A074985.P90635798669672964

`(lt[0, A064911(n+1)]+1)²`
-/

namespace A074985.P90635798669672964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) ^ 2

end

end A074985.P90635798669672964

namespace A074985

/-- `(lt[0, A064911(n+1)]+1)²` -/
def P90635798669672964.Spec : Prop :=
  ∀ n, (P90635798669672964.a n : ℤ) = A074985 (n + 1)

end A074985

/-! ## A074985.P8372609055399781607

`(eq[2, A001222(n+1)]+1)²`
-/

namespace A074985.P8372609055399781607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A074985.P8372609055399781607

namespace A074985

/-- `(eq[2, A001222(n+1)]+1)²` -/
def P8372609055399781607.Spec : Prop :=
  ∀ n, (P8372609055399781607.a n : ℤ) = A074985 (n + 1)

end A074985

/-! ## A074985.P7868542316670875240

`(eq[2, A008481(n+1)]+1)²`
-/

namespace A074985.P7868542316670875240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A074985.P7868542316670875240

namespace A074985

/-- `(eq[2, A008481(n+1)]+1)²` -/
def P7868542316670875240.Spec : Prop :=
  ∀ n, (P7868542316670875240.a n : ℤ) = A074985 (n + 1)

end A074985

/-! ## A074985.P12103843795612191329

`(eq[2, A033273(n+1)]+1)²`
-/

namespace A074985.P12103843795612191329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A074985.P12103843795612191329

namespace A074985

/-- `(eq[2, A033273(n+1)]+1)²` -/
def P12103843795612191329.Spec : Prop :=
  ∀ n, (P12103843795612191329.a n : ℤ) = A074985 (n + 1)

end A074985

/-! ## A074985.P2571516261085905559

`(eq[2, A050379(n+1)]+1)²`
-/

namespace A074985.P2571516261085905559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050379 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A074985.P2571516261085905559

namespace A074985

/-- `(eq[2, A050379(n+1)]+1)²` -/
def P2571516261085905559.Spec : Prop :=
  ∀ n, (P2571516261085905559.a n : ℤ) = A074985 (n + 1)

end A074985

/-! ## A074985.P1716248533120955675

`(eq[2, A342085(n+1)]+1)²`
-/

namespace A074985.P1716248533120955675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342085 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A074985.P1716248533120955675

namespace A074985

/-- `(eq[2, A342085(n+1)]+1)²` -/
def P1716248533120955675.Spec : Prop :=
  ∀ n, (P1716248533120955675.a n : ℤ) = A074985 (n + 1)

end A074985

/-! ## A074985.P15625908101690788965

`(A175708(n+1)+n+1)²`
-/

namespace A074985.P15625908101690788965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A175708 (n + 1) + (n + 1 : ℤ)) ^ 2

end

end A074985.P15625908101690788965

namespace A074985

/-- `(A175708(n+1)+n+1)²` -/
def P15625908101690788965.Spec : Prop :=
  ∀ n, P15625908101690788965.a n = A074985 (n + 1)

theorem P15625908101690788965.correct : P15625908101690788965.Spec := by
  intro n
  simp only [A074985, Nat.add_sub_cancel, A074985.P15625908101690788965.a, A074985.P6067425772546654880.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A175708, A175708.P9200072279870982.a, A000027, A000027.P10331202704469894836.a, A001358, A001358.P632087320844056370.a, A072000, A072000.P3706059858088101648.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A088707, A088707.P7291141647877559993.a, A000196, A000196.P15434771586934192083.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A230595, A230595.P9035268919760195541.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A074985

/-! ## A074985.P6067425772546654880

`(n+1-A100493(n+1))²`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A074985

/-- `(n+1-A100493(n+1))²` -/
def P6067425772546654880.Spec : Prop :=
  ∀ n, P6067425772546654880.a n = A074985 (n + 1)

theorem P6067425772546654880.correct : P6067425772546654880.Spec := by
  intro n
  simp only [A074985, Nat.add_sub_cancel]

end A074985

/-! ## A074985.P17675559792482177294

`eq[2*n, n*a(A001222(n))]²` with `a(0)=1`
-/

namespace A074985.P17675559792482177294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  n * f2 (A001222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A074985.P17675559792482177294

namespace A074985

/-- `eq[2*n, n*a(A001222(n))]²` -/
def P17675559792482177294.Spec : Prop :=
  ∀ n, (P17675559792482177294.a n : ℤ) = A074985 (n + 1)

end A074985

/-! ## A074985.P3460713849087399754

`record[A001358(A286551(n))²]`
-/

namespace A074985.P3460713849087399754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A286551 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074985.P3460713849087399754

namespace A074985

/-- `record[A001358(A286551(n))²]` -/
def P3460713849087399754.Spec : Prop :=
  ∀ n, P3460713849087399754.a n = A074985 (n + 1)

end A074985

/-! ## A074985.P10459056252127237288

`∪[A030514(n+1), A085986(n+1)]`
-/

namespace A074985.P10459056252127237288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A074985.P10459056252127237288

namespace A074985

/-- `∪[A030514(n+1), A085986(n+1)]` -/
def P10459056252127237288.Spec : Prop :=
  ∀ n, (P10459056252127237288.a n : ℤ) = A074985 (n + 1)

end A074985

/-! ## A074985.P16854155833426270217

`∪[A069262(n+1), A075730(n+1)]`
-/

namespace A074985.P16854155833426270217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A074985.P16854155833426270217

namespace A074985

/-- `∪[A069262(n+1), A075730(n+1)]` -/
def P16854155833426270217.Spec : Prop :=
  ∀ n, (P16854155833426270217.a n : ℤ) = A074985 (n + 1)

end A074985

/-! ## A074985.P4628625558680157121

`(A000040(n+1)-A065870(n+1))²`
-/

namespace A074985.P4628625558680157121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - A065870 (n + 1)) ^ 2

end

end A074985.P4628625558680157121

namespace A074985

/-- `(A000040(n+1)-A065870(n+1))²` -/
def P4628625558680157121.Spec : Prop :=
  ∀ n, P4628625558680157121.a n = A074985 (n + 1)

theorem P4628625558680157121.correct : P4628625558680157121.Spec := by
  intro n
  simp only [A074985, Nat.add_sub_cancel, A074985.P4628625558680157121.a, A074985.P6067425772546654880.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A065870, A065870.P5166953479567254549.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A001358, A001358.P632087320844056370.a, A072000, A072000.P3706059858088101648.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A088707, A088707.P7291141647877559993.a, A000196, A000196.P15434771586934192083.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A230595, A230595.P9035268919760195541.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A074985

/-! ## A074985.P10930865527646966966

`(A000040(n+1)-A133796(n+1))²`
-/

namespace A074985.P10930865527646966966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - A133796 (n + 1)) ^ 2

end

end A074985.P10930865527646966966

namespace A074985

/-- `(A000040(n+1)-A133796(n+1))²` -/
def P10930865527646966966.Spec : Prop :=
  ∀ n, P10930865527646966966.a n = A074985 (n + 1)

theorem P10930865527646966966.correct : P10930865527646966966.Spec := by
  intro n
  simp only [A074985, Nat.add_sub_cancel, A074985.P10930865527646966966.a, A074985.P6067425772546654880.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A133796, A133796.P4942108177998988067.a, A001358, A001358.P632087320844056370.a, A072000, A072000.P3706059858088101648.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A088707, A088707.P7291141647877559993.a, A000196, A000196.P15434771586934192083.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A230595, A230595.P9035268919760195541.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A074985

/-! ## A074985.P18019772755871212155

`A001358(n+1)^A020639(2*(n+1))`
-/

namespace A074985.P18019772755871212155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001358 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A074985.P18019772755871212155

namespace A074985

/-- `A001358(n+1)^A020639(2*(n+1))` -/
def P18019772755871212155.Spec : Prop :=
  ∀ n, P18019772755871212155.a n = (A074985 (n + 1) : ℚ)

end A074985

/-! ## A074985.P3206106210843627989

`(A133795(n+1)-A100959(n+1))*A001358(n+1)`
-/

namespace A074985.P3206106210843627989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133795 (n + 1) - A100959 (n + 1)) * A001358 (n + 1)

end

end A074985.P3206106210843627989

namespace A074985

/-- `(A133795(n+1)-A100959(n+1))*A001358(n+1)` -/
def P3206106210843627989.Spec : Prop :=
  ∀ n, P3206106210843627989.a n = A074985 (n + 1)

theorem P3206106210843627989.correct : P3206106210843627989.Spec := by
  intro n
  simp only [A074985, Nat.add_sub_cancel, A074985.P3206106210843627989.a, A074985.P6067425772546654880.a, A001358, A001358.P632087320844056370.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A100959, A100959.P16394207133343140520.f1, A100959.P16394207133343140520.f2, A100959.P16394207133343140520.a, A133795, A133795.P5198213885551463269.a, A008578, A008578.P3639467937083264764.a, A033942, A033942.P4752248338100259006.f1, A033942.P4752248338100259006.f2, A033942.P4752248338100259006.a, A072000, A072000.P3706059858088101648.a, A088707, A088707.P7291141647877559993.a, A014612, A014612.P5035219895023979827.f1, A014612.P5035219895023979827.f2, A014612.P5035219895023979827.a, A033987, A033987.P14627502685973143685.f1, A033987.P14627502685973143685.f2, A033987.P14627502685973143685.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000196, A000196.P15434771586934192083.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A230595, A230595.P9035268919760195541.a, A318473, A318473.P15254297892022099386.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A074985

/-!
# A074986: Number of nonempty subsets of {1,2,3,...,n} that are closed under both GCD and LCM.

The programs for A074986, there is no canonical definition to state claims against.
-/

/-! ## A074986.P16859882335977751164

`∑[A122977(n+1)]`
-/

namespace A074986.P16859882335977751164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074986.P16859882335977751164

/-! ## A074986.P244529035279378500

`A122977(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A074986.P244529035279378500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A122977 (n + 1) + a (A023443 n).toNat

end

end A074986.P244529035279378500

/-! ## A074986.P5176542254408441217

`A122977(A028310(n)+1)+a(n-1)` with `a(0)=1`
-/

namespace A074986.P5176542254408441217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A122977 (A028310 n + 1).toNat + a (n - 1)

end

end A074986.P5176542254408441217

/-! ## A074986.P6217242631714797627

`A122977(n+1)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A074986.P6217242631714797627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A122977 (n + 1) + a (A004273 n - (n : ℤ)).toNat

end

end A074986.P6217242631714797627

/-! ## A074986.P17130033279875432416

`A122977(A233583(n+1)+1)+a(n-1)` with `a(0)=1`
-/

namespace A074986.P17130033279875432416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A122977 (A233583 (n + 1) + 1).toNat + a (n - 1)

end

end A074986.P17130033279875432416

/-! ## A074986.P3511520535058744053

`a(n-1)+A122977(n+1)+A000007(n)` with `a(0)=1`
-/

namespace A074986.P3511520535058744053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A122977 (n + 1) + A000007 n)

end

end A074986.P3511520535058744053

/-! ## A074986.P9920710201813588208

`a(n-1)+A122977(n+1)+A000038(n)` with `a(0)=1`
-/

namespace A074986.P9920710201813588208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A122977 (n + 1) + A000038 n)

end

end A074986.P9920710201813588208

/-! ## A074986.P15955179317152429839

`A122977(n+1)+a(n%(2*A000040(n+1))-1)` with `a(0)=1`
-/

namespace A074986.P15955179317152429839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A122977 (n + 1) + a (Int.tmod (n : ℤ) (2 * A000040 (n + 1)) - 1).toNat

end

end A074986.P15955179317152429839

/-! ## A074986.P17130369408122862707

`a(n-1)+1-(and(1, A018886(n+1))-A122977(n+1))` with `a(0)=1`
-/

namespace A074986.P17130369408122862707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 - (Int.land 1 (A018886 (n + 1)) - A122977 (n + 1))

end

end A074986.P17130369408122862707

/-!
# A074988: Numbers n such that the k-th binary digit of n equals mu(k)^2 for k=1 up to A029837(n+1).

The programs for A074988, the canonical program `A074988.P5771865000213231689` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074988 has offset 1).

The definition of A074988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074988.P5771865000213231689

`char[∏{p}[n, #]-1]+2*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A074988

/-- `char[∏{p}[n, #]-1]+2*a(n-1)` -/
def P5771865000213231689.Spec : Prop :=
  ∀ n, (P5771865000213231689.a n : ℤ) = A074988 (n + 1)

theorem P5771865000213231689.correct : P5771865000213231689.Spec := by
  intro n
  simp only [A074988, Nat.add_sub_cancel]

end A074988

/-! ## A074988.P11611759211315506237

`or(2*a(n-1), char[∏{p}[n, #]-1])` with `a(0)=1`
-/

namespace A074988.P11611759211315506237
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (2 * a (n - 1)) (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A074988.P11611759211315506237

namespace A074988

/-- `or(2*a(n-1), char[∏{p}[n, #]-1])` -/
def P11611759211315506237.Spec : Prop :=
  ∀ n, (P11611759211315506237.a n : ℤ) = A074988 (n + 1)

end A074988

/-! ## A074988.P12224954671787004021

`xor(2*a(n-1), char[∏{p}[n, #]-1])` with `a(0)=1`
-/

namespace A074988.P12224954671787004021
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (2 * a (n - 1)) (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A074988.P12224954671787004021

namespace A074988

/-- `xor(2*a(n-1), char[∏{p}[n, #]-1])` -/
def P12224954671787004021.Spec : Prop :=
  ∀ n, (P12224954671787004021.a n : ℤ) = A074988 (n + 1)

end A074988

/-! ## A074988.P13064914377649463563

`char[eq[1, ∏{e}[n+1, #]]]+2*a(n-1)` with `a(0)=1`
-/

namespace A074988.P13064914377649463563
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + 2 * a (n - 1)

end

end A074988.P13064914377649463563

namespace A074988

/-- `char[eq[1, ∏{e}[n+1, #]]]+2*a(n-1)` -/
def P13064914377649463563.Spec : Prop :=
  ∀ n, (P13064914377649463563.a n : ℤ) = A074988 (n + 1)

end A074988

/-! ## A074988.P14770864438888451559

`round(γ/∏{e}[n+1, #])+2*a(n-1)` with `a(0)=1`
-/

namespace A074988.P14770864438888451559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (Real.eulerMascheroniConstant / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ)) + 2 * a (n - 1)

end

end A074988.P14770864438888451559

namespace A074988

/-- `round(γ/∏{e}[n+1, #])+2*a(n-1)` -/
def P14770864438888451559.Spec : Prop :=
  ∀ n, P14770864438888451559.a n = A074988 (n + 1)

end A074988

/-!
# A074989: Distance from n to nearest cube.

The programs for A074989, the canonical program `A074989.P16393058379922135002` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074989 has offset 0).

The definition of A074989 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074989.P16393058379922135002

`abs(∑[char[∑[3*n²+1]]]^3-n)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A074989

/-- `abs(∑[char[∑[3*n²+1]]]^3-n)` -/
def P16393058379922135002.Spec : Prop :=
  ∀ n, P16393058379922135002.a n = A074989 n

theorem P16393058379922135002.correct : P16393058379922135002.Spec := by
  intro n
  simp only [A074989]

end A074989

/-! ## A074989.P15252646736713353311

`∑{d}[n-A201053(n), A000010(#)]`
-/

namespace A074989.P15252646736713353311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A201053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A074989.P15252646736713353311

namespace A074989

/-- `∑{d}[n-A201053(n), A000010(#)]` -/
def P15252646736713353311.Spec : Prop :=
  ∀ n, P15252646736713353311.a n = A074989 n

end A074989

/-! ## A074989.P16419854781891840527

`gcd(n-A201053(n), A053188(A048760(n)))`
-/

namespace A074989.P16419854781891840527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - A201053 n) (A053188 (A048760 n).toNat)

end

end A074989.P16419854781891840527

namespace A074989

/-- `gcd(n-A201053(n), A053188(A048760(n)))` -/
def P16419854781891840527.Spec : Prop :=
  ∀ n, (P16419854781891840527.a n : ℤ) = A074989 n

end A074989

/-! ## A074989.P4267633354276923401

`gcd(A201053(n)-n, A053188(A053187(n)))`
-/

namespace A074989.P4267633354276923401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A201053 n - (n : ℤ)) (A053188 (A053187 n).toNat)

end

end A074989.P4267633354276923401

namespace A074989

/-- `gcd(A201053(n)-n, A053188(A053187(n)))` -/
def P4267633354276923401.Spec : Prop :=
  ∀ n, (P4267633354276923401.a n : ℤ) = A074989 n

end A074989

/-! ## A074989.P10219391761201044354

`A342872(n-A342872(A201053(n)))`
-/

namespace A074989.P10219391761201044354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342872 ((n : ℤ) - A342872 (A201053 n).toNat).toNat

end

end A074989.P10219391761201044354

namespace A074989

/-- `A342872(n-A342872(A201053(n)))` -/
def P10219391761201044354.Spec : Prop :=
  ∀ n, P10219391761201044354.a n = A074989 n

end A074989

/-! ## A074989.P15769992153793113671

`A000196((n-A201053(n))²)`
-/

namespace A074989.P15769992153793113671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (((n : ℤ) - A201053 n) ^ 2).toNat

end

end A074989.P15769992153793113671

namespace A074989

/-- `A000196((n-A201053(n))²)` -/
def P15769992153793113671.Spec : Prop :=
  ∀ n, P15769992153793113671.a n = A074989 n

end A074989

/-! ## A074989.P13978181281737497479

`A037213((n-A201053(n))²)`
-/

namespace A074989.P13978181281737497479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (((n : ℤ) - A201053 n) ^ 2).toNat

end

end A074989.P13978181281737497479

namespace A074989

/-- `A037213((n-A201053(n))²)` -/
def P13978181281737497479.Spec : Prop :=
  ∀ n, P13978181281737497479.a n = A074989 n

end A074989

/-! ## A074989.P12854292745020269583

`A000194((n-A201053(n))²)`
-/

namespace A074989.P12854292745020269583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (((n : ℤ) - A201053 n) ^ 2).toNat

end

end A074989.P12854292745020269583

namespace A074989

/-- `A000194((n-A201053(n))²)` -/
def P12854292745020269583.Spec : Prop :=
  ∀ n, P12854292745020269583.a n = A074989 n

end A074989

/-! ## A074989.P17829829516058176126

`A053615((n-A201053(n))²)`
-/

namespace A074989.P17829829516058176126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (((n : ℤ) - A201053 n) ^ 2).toNat

end

end A074989.P17829829516058176126

namespace A074989

/-- `A053615((n-A201053(n))²)` -/
def P17829829516058176126.Spec : Prop :=
  ∀ n, P17829829516058176126.a n = A074989 n

end A074989

/-! ## A074989.P7066860136684668147

`A053188(∑[2*n]-A201053(n))`
-/

namespace A074989.P7066860136684668147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A201053 n).toNat

end

end A074989.P7066860136684668147

namespace A074989

/-- `A053188(∑[2*n]-A201053(n))` -/
def P7066860136684668147.Spec : Prop :=
  ∀ n, P7066860136684668147.a n = A074989 n

end A074989

/-! ## A074989.P9889743977859789713

`A053188(n²+n-A201053(n))`
-/

namespace A074989.P9889743977859789713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 ((n ^ 2 : ℤ) + ((n : ℤ) - A201053 n)).toNat

end

end A074989.P9889743977859789713

namespace A074989

/-- `A053188(n²+n-A201053(n))` -/
def P9889743977859789713.Spec : Prop :=
  ∀ n, P9889743977859789713.a n = A074989 n

end A074989

/-! ## A074989.P7972239259286293450

`A053188(n-(A201053(n)-n²))`
-/

namespace A074989.P7972239259286293450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 ((n : ℤ) - (A201053 n - (n ^ 2 : ℤ))).toNat

end

end A074989.P7972239259286293450

namespace A074989

/-- `A053188(n-(A201053(n)-n²))` -/
def P7972239259286293450.Spec : Prop :=
  ∀ n, P7972239259286293450.a n = A074989 n

end A074989

/-! ## A074989.P17191512923137637509

`A053615(A201053(n)+n²)`
-/

namespace A074989.P17191512923137637509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A201053 n + (n ^ 2 : ℤ)).toNat

end

end A074989.P17191512923137637509

namespace A074989

/-- `A053615(A201053(n)+n²)` -/
def P17191512923137637509.Spec : Prop :=
  ∀ n, P17191512923137637509.a n = A074989 n

end A074989

/-!
# A074990: Number of primes in the interval (n,3n].

The programs for A074990, the canonical program `A074990.P1274090054860792734` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074990 has offset 1).

The definition of A074990 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074990.P1274090054860792734

`A000720(3*(n+1))-A000720(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A074990

/-- `A000720(3*(n+1))-A000720(n+1)` -/
def P1274090054860792734.Spec : Prop :=
  ∀ n, P1274090054860792734.a n = A074990 (n + 1)

theorem P1274090054860792734.correct : P1274090054860792734.Spec := by
  intro n
  simp only [A074990, Nat.add_sub_cancel]

end A074990

/-! ## A074990.P13456991172771443984

`A100637(n)-A000720(n+1)`
-/

namespace A074990.P13456991172771443984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 n - A000720 (n + 1)

end

end A074990.P13456991172771443984

namespace A074990

/-- `A100637(n)-A000720(n+1)` -/
def P13456991172771443984.Spec : Prop :=
  ∀ n, P13456991172771443984.a n = A074990 (n + 1)

end A074990

/-! ## A074990.P573591418935820260

`A100637(n)-∑[A010051(n+1)]`
-/

namespace A074990.P573591418935820260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074990.P573591418935820260

namespace A074990

/-- `A100637(n)-∑[A010051(n+1)]` -/
def P573591418935820260.Spec : Prop :=
  ∀ n, P573591418935820260.a n = A074990 (n + 1)

end A074990

/-! ## A074990.P11922594575730464974

`A289493(n+1)+A060715(n+1)`
-/

namespace A074990.P11922594575730464974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289493 (n + 1) + A060715 (n + 1)

end

end A074990.P11922594575730464974

namespace A074990

/-- `A289493(n+1)+A060715(n+1)` -/
def P11922594575730464974.Spec : Prop :=
  ∀ n, P11922594575730464974.a n = A074990 (n + 1)

end A074990

/-! ## A074990.P9865867381583376607

`A037037(n+1)-A010051(n+1)`
-/

namespace A074990.P9865867381583376607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037037 (n + 1) - A010051 (n + 1)

end

end A074990.P9865867381583376607

namespace A074990

/-- `A037037(n+1)-A010051(n+1)` -/
def P9865867381583376607.Spec : Prop :=
  ∀ n, P9865867381583376607.a n = A074990 (n + 1)

end A074990

/-! ## A074990.P9335384702085897889

`A037037(n+1)+A230980(n)-A000720(n+1)`
-/

namespace A074990.P9335384702085897889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037037 (n + 1) + (A230980 n - A000720 (n + 1))

end

end A074990.P9335384702085897889

namespace A074990

/-- `A037037(n+1)+A230980(n)-A000720(n+1)` -/
def P9335384702085897889.Spec : Prop :=
  ∀ n, P9335384702085897889.a n = A074990 (n + 1)

end A074990

/-! ## A074990.P18161003489582731357

`A014689(n+1)+A100637(n)-A167180(n+1)`
-/

namespace A074990.P18161003489582731357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) + (A100637 n - A167180 (n + 1))

end

end A074990.P18161003489582731357

namespace A074990

/-- `A014689(n+1)+A100637(n)-A167180(n+1)` -/
def P18161003489582731357.Spec : Prop :=
  ∀ n, P18161003489582731357.a n = A074990 (n + 1)

end A074990

/-! ## A074990.P14911360151246564840

`A100637(n)-(A084360(n+2)+A082460(n+1))`
-/

namespace A074990.P14911360151246564840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 n - (A084360 (n + 2) + A082460 (n + 1))

end

end A074990.P14911360151246564840

namespace A074990

/-- `A100637(n)-(A084360(n+2)+A082460(n+1))` -/
def P14911360151246564840.Spec : Prop :=
  ∀ n, P14911360151246564840.a n = A074990 (n + 1)

end A074990

/-! ## A074990.P14335544864660499617

`A100637(n)-A168048(n+1)/A062298(n+1)`
-/

namespace A074990.P14335544864660499617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100637 n : ℚ) - (A168048 (n + 1) : ℚ) / (A062298 (n + 1) : ℚ)

end

end A074990.P14335544864660499617

namespace A074990

/-- `A100637(n)-A168048(n+1)/A062298(n+1)` -/
def P14335544864660499617.Spec : Prop :=
  ∀ n, P14335544864660499617.a n = (A074990 (n + 1) : ℚ)

end A074990

/-! ## A074990.P16143371993911389562

`A100637(n)-A230980(n+1)`
-/

namespace A074990.P16143371993911389562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 n - A230980 (n + 1)

end

end A074990.P16143371993911389562

namespace A074990

/-- `A100637(n)-A230980(n+1)` -/
def P16143371993911389562.Spec : Prop :=
  ∀ n, P16143371993911389562.a n = A074990 (n + 1)

end A074990

/-! ## A074990.P2242624241693187250

`A037037(n+1)+A230980(n)-A230980(n+1)`
-/

namespace A074990.P2242624241693187250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037037 (n + 1) + (A230980 n - A230980 (n + 1))

end

end A074990.P2242624241693187250

namespace A074990

/-- `A037037(n+1)+A230980(n)-A230980(n+1)` -/
def P2242624241693187250.Spec : Prop :=
  ∀ n, P2242624241693187250.a n = A074990 (n + 1)

end A074990

/-! ## A074990.P7474236370083320679

`A037037(n+2)+A100637(n)-A100637(n+1)`
-/

namespace A074990.P7474236370083320679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037037 (n + 2) + (A100637 n - A100637 (n + 1))

end

end A074990.P7474236370083320679

namespace A074990

/-- `A037037(n+2)+A100637(n)-A100637(n+1)` -/
def P7474236370083320679.Spec : Prop :=
  ∀ n, P7474236370083320679.a n = A074990 (n + 1)

end A074990

/-! ## A074990.P11181570887739978339

`A035250(n+2)+A100637(n)-A099802(n+2)`
-/

namespace A074990.P11181570887739978339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (n + 2) + (A100637 n - A099802 (n + 2))

end

end A074990.P11181570887739978339

namespace A074990

/-- `A035250(n+2)+A100637(n)-A099802(n+2)` -/
def P11181570887739978339.Spec : Prop :=
  ∀ n, P11181570887739978339.a n = A074990 (n + 1)

end A074990

/-! ## A074990.P6618401250259749980

`A099802(A007494(n+1))-A230980(n+1)`
-/

namespace A074990.P6618401250259749980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (A007494 (n + 1)).toNat - A230980 (n + 1)

end

end A074990.P6618401250259749980

namespace A074990

/-- `A099802(A007494(n+1))-A230980(n+1)` -/
def P6618401250259749980.Spec : Prop :=
  ∀ n, P6618401250259749980.a n = A074990 (n + 1)

end A074990

/-! ## A074990.P11705030018885069598

`A100637(n)-A056172(2*(n+1))`
-/

namespace A074990.P11705030018885069598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 n - A056172 (2 * (n + 1))

end

end A074990.P11705030018885069598

namespace A074990

/-- `A100637(n)-A056172(2*(n+1))` -/
def P11705030018885069598.Spec : Prop :=
  ∀ n, P11705030018885069598.a n = A074990 (n + 1)

end A074990

/-! ## A074990.P9616108661379912283

`A229989(2*(n+1))-A010051(n+1)`
-/

namespace A074990.P9616108661379912283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229989 (2 * (n + 1)) - A010051 (n + 1)

end

end A074990.P9616108661379912283

namespace A074990

/-- `A229989(2*(n+1))-A010051(n+1)` -/
def P9616108661379912283.Spec : Prop :=
  ∀ n, P9616108661379912283.a n = A074990 (n + 1)

end A074990

/-! ## A074990.P16942146124673836744

`A071854(n+1)+A100637(n)-A067434(n+1)`
-/

namespace A074990.P16942146124673836744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071854 (n + 1) + (A100637 n - A067434 (n + 1))

end

end A074990.P16942146124673836744

namespace A074990

/-- `A071854(n+1)+A100637(n)-A067434(n+1)` -/
def P16942146124673836744.Spec : Prop :=
  ∀ n, P16942146124673836744.a n = A074990 (n + 1)

end A074990

/-! ## A074990.P13488768838807384063

`A230980(3*(n+1))-∑[∑{p}[n+1, val(#, n+1)]]`
-/

namespace A074990.P13488768838807384063
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (3 * (n + 1)) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A074990.P13488768838807384063

namespace A074990

/-- `A230980(3*(n+1))-∑[∑{p}[n+1, val(#, n+1)]]` -/
def P13488768838807384063.Spec : Prop :=
  ∀ n, P13488768838807384063.a n = A074990 (n + 1)

end A074990

/-!
# A074991: Concatenation of n, n+1, n+2 divided by 3.

The programs for A074991, there is no canonical definition to state claims against.
-/

/-! ## A074991.P1602324012734991477

`A001703(n)/3`
-/

namespace A074991.P1602324012734991477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001703 n : ℚ) / 3

end

end A074991.P1602324012734991477

/-! ## A074991.P16767143147348052781

`3^A008683(A052087(n+1))*A001703(n)`
-/

namespace A074991.P16767143147348052781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A008683 (A052087 (n + 1)).toNat : ℤ) * (A001703 n : ℚ)

end

end A074991.P16767143147348052781

/-! ## A074991.P159031594138283480

`3^A008683(A030458(n+1))*A001703(n)`
-/

namespace A074991.P159031594138283480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A008683 (A030458 (n + 1)).toNat : ℤ) * (A001703 n : ℚ)

end

end A074991.P159031594138283480

/-! ## A074991.P16989956586909317229

`3^A008683(A052088(n+1))*A001703(n)`
-/

namespace A074991.P16989956586909317229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A008683 (A052088 (n + 1)).toNat : ℤ) * (A001703 n : ℚ)

end

end A074991.P16989956586909317229

/-! ## A074991.P3156180254379671501

`A048794(A125176(n+2))/3`
-/

namespace A074991.P3156180254379671501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048794 (A125176 (n + 2)).toNat : ℚ) / 3

end

end A074991.P3156180254379671501

/-!
# A074992: a(n) = (10^(2*n) + 10^n + 1)/3.

The programs for A074992, the canonical program `A074992.P14572763190114605209` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074992 has offset 0).

The definition of A074992 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074992.P14572763190114605209

`(10^(2*n)+10^n+1)/3`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A074992

/-- `(10^(2*n)+10^n+1)/3` -/
def P14572763190114605209.Spec : Prop :=
  ∀ n, P14572763190114605209.a n = (A074992 n : ℚ)

end A074992

/-! ## A074992.P11801712293406811407

`3*A181718(n)+1`
-/

namespace A074992.P11801712293406811407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A181718 n + 1

end

end A074992.P11801712293406811407

namespace A074992

/-- `3*A181718(n)+1` -/
def P11801712293406811407.Spec : Prop :=
  ∀ n, P11801712293406811407.a n = A074992 n

end A074992

/-! ## A074992.P11785111920372219937

`A237424(∑[4*n]+1)`
-/

namespace A074992.P11785111920372219937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237424 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A074992.P11785111920372219937

namespace A074992

/-- `A237424(∑[4*n]+1)` -/
def P11785111920372219937.Spec : Prop :=
  ∀ n, P11785111920372219937.a n = A074992 n

end A074992

/-! ## A074992.P17881520024925726218

`A098209(n)+1-A181718(n)`
-/

namespace A074992.P17881520024925726218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098209 n + (1 - A181718 n)

end

end A074992.P17881520024925726218

namespace A074992

/-- `A098209(n)+1-A181718(n)` -/
def P17881520024925726218.Spec : Prop :=
  ∀ n, P17881520024925726218.a n = A074992 n

end A074992

/-! ## A074992.P10207319485799048869

`A002283(n)*A093137(n)+1`
-/

namespace A074992.P10207319485799048869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n * A093137 n + 1

end

end A074992.P10207319485799048869

namespace A074992

/-- `A002283(n)*A093137(n)+1` -/
def P10207319485799048869.Spec : Prop :=
  ∀ n, P10207319485799048869.a n = A074992 n

end A074992

/-! ## A074992.P4684366600528079956

`A093137(2*n)+A002277(n)`
-/

namespace A074992.P4684366600528079956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093137 (2 * n) + A002277 n

end

end A074992.P4684366600528079956

namespace A074992

/-- `A093137(2*n)+A002277(n)` -/
def P4684366600528079956.Spec : Prop :=
  ∀ n, P4684366600528079956.a n = A074992 n

end A074992

/-! ## A074992.P4601222444869963209

`ceil((or(1, 10^n)²-and(-2, 10^n))/3)`
-/

namespace A074992.P4601222444869963209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.lor 1 (10 ^ n) ^ 2 : ℤ) - Int.land (-2) (10 ^ n : ℤ) : ℚ) / 3⌉

end

end A074992.P4601222444869963209

namespace A074992

/-- `ceil((or(1, 10^n)²-and(-2, 10^n))/3)` -/
def P4601222444869963209.Spec : Prop :=
  ∀ n, P4601222444869963209.a n = A074992 n

end A074992

/-! ## A074992.P6480320283107908593

`ceil((record[or(1, (-10)^n)]+and(-2, 10^n))/3)`
-/

namespace A074992.P6480320283107908593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((-10) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + Int.land (-2) (10 ^ n : ℤ) : ℚ) / 3⌉

end

end A074992.P6480320283107908593

namespace A074992

/-- `ceil((record[or(1, (-10)^n)]+and(-2, 10^n))/3)` -/
def P6480320283107908593.Spec : Prop :=
  ∀ n, P6480320283107908593.a n = A074992 n

end A074992

/-! ## A074992.P10317891153181014707

`floor(A066138(n)/3)`
-/

namespace A074992.P10317891153181014707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A066138 n : ℚ) / 3⌋

end

end A074992.P10317891153181014707

namespace A074992

/-- `floor(A066138(n)/3)` -/
def P10317891153181014707.Spec : Prop :=
  ∀ n, P10317891153181014707.a n = A074992 n

end A074992

/-! ## A074992.P1182713669150082300

`ceil(A135577(n+1)/3)`
-/

namespace A074992.P1182713669150082300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135577 (n + 1) : ℚ) / 3⌉

end

end A074992.P1182713669150082300

namespace A074992

/-- `ceil(A135577(n+1)/3)` -/
def P1182713669150082300.Spec : Prop :=
  ∀ n, P1182713669150082300.a n = A074992 n

end A074992

/-!
# A074993: a(n) = floor((concatenation of n, n+1)/2).

The programs for A074993, the canonical program `A074993.P10055649416596531570` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074993 has offset 0).

The definition of A074993 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074993.P13923137432985428742

`floor(A127421(n+1)/2)`
-/

namespace A074993.P13923137432985428742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A127421 (n + 1) : ℚ) / 2⌋

end

end A074993.P13923137432985428742

namespace A074993

/-- `floor(A127421(n+1)/2)` -/
def P13923137432985428742.Spec : Prop :=
  ∀ n, P13923137432985428742.a n = A074993 n

end A074993

/-! ## A074993.P10055649416596531570

`ceil(n/(2*(n+1))*A020338(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A074993

/-- `ceil(n/(2*(n+1))*A020338(n+1))` -/
def P10055649416596531570.Spec : Prop :=
  ∀ n, P10055649416596531570.a n = A074993 n

theorem P10055649416596531570.correct : P10055649416596531570.Spec := by
  intro n
  simp only [A074993]

end A074993

/-! ## A074993.P6401912428041125773

`floor((n*10^A055642(n+1)+n+1)/2)`
-/

namespace A074993.P6401912428041125773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) * (10 : ℚ) ^ (A055642 (n + 1) : ℤ) + (n + 1 : ℚ)) / 2⌋

end

end A074993.P6401912428041125773

namespace A074993

/-- `floor((n*10^A055642(n+1)+n+1)/2)` -/
def P6401912428041125773.Spec : Prop :=
  ∀ n, P6401912428041125773.a n = A074993 n

end A074993

/-! ## A074993.P17945425432472259342

`floor((n*A061601(n+1)+(n+1)²+n)/2)`
-/

namespace A074993.P17945425432472259342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * A061601 (n + 1) + ((n + 1) ^ 2 + n : ℤ) : ℚ) / 2⌋

end

end A074993.P17945425432472259342

namespace A074993

/-- `floor((n*A061601(n+1)+(n+1)²+n)/2)` -/
def P17945425432472259342.Spec : Prop :=
  ∀ n, P17945425432472259342.a n = A074993 n

end A074993

/-! ## A074993.P4116812161235718650

`floor(((n+1)²+n*A089186(n+1))/2)`
-/

namespace A074993.P4116812161235718650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 1) ^ 2 : ℤ) + (n : ℤ) * A089186 (n + 1) : ℚ) / 2⌋

end

end A074993.P4116812161235718650

namespace A074993

/-- `floor(((n+1)²+n*A089186(n+1))/2)` -/
def P4116812161235718650.Spec : Prop :=
  ∀ n, P4116812161235718650.a n = A074993 n

end A074993

/-! ## A074993.P16128866824538983548

`floor(((n+1)²+n*A178914(n+1))/2)`
-/

namespace A074993.P16128866824538983548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 1) ^ 2 : ℤ) + (n : ℤ) * A178914 (n + 1) : ℚ) / 2⌋

end

end A074993.P16128866824538983548

namespace A074993

/-- `floor(((n+1)²+n*A178914(n+1))/2)` -/
def P16128866824538983548.Spec : Prop :=
  ∀ n, P16128866824538983548.a n = A074993 n

end A074993

/-! ## A074993.P11536252035837111833

`floor(record[A001704(A008619(n))^(n%2)]/2)`
-/

namespace A074993.P11536252035837111833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (A008619 n).toNat ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2⌋

end

end A074993.P11536252035837111833

namespace A074993

/-- `floor(record[A001704(A008619(n))^(n%2)]/2)` -/
def P11536252035837111833.Spec : Prop :=
  ∀ n, P11536252035837111833.a n = A074993 n

end A074993

/-! ## A074993.P8539402468214588012

`floor((A020338(n+1)-A029578(A020338(n+1)/(n+1)))/2)`
-/

namespace A074993.P8539402468214588012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020338 (n + 1) - A029578 (SequenceMachineLib.roundAway ((A020338 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat : ℚ) / 2⌋

end

end A074993.P8539402468214588012

namespace A074993

/-- `floor((A020338(n+1)-A029578(A020338(n+1)/(n+1)))/2)` -/
def P8539402468214588012.Spec : Prop :=
  ∀ n, P8539402468214588012.a n = A074993 n

end A074993

/-! ## A074993.P16225936158276518379

`A004526(A127421(n+1))`
-/

namespace A074993.P16225936158276518379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A127421 (n + 1)).toNat

end

end A074993.P16225936158276518379

namespace A074993

/-- `A004526(A127421(n+1))` -/
def P16225936158276518379.Spec : Prop :=
  ∀ n, P16225936158276518379.a n = A074993 n

end A074993

/-!
# A074994: Floor of concatenation of n, n+1, n+2, n+3 divided by 4.

The programs for A074994, there is no canonical definition to state claims against.
-/

/-! ## A074994.P3257887350098206093

`A132292(A074995(n))`
-/

namespace A074994.P3257887350098206093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (A074995 n).toNat

end

end A074994.P3257887350098206093

/-!
# A074997: Numbers which are sandwiched between two numbers having the same unordered canonical form.

The programs for A074997, the canonical program `A074997.P11484418625540137745` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074997 has offset 1).

The definition of A074997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5993 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074997.P8869063749905722137

`A279767(n+1)+1`
-/

namespace A074997.P8869063749905722137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279767 (n + 1) + 1

end

end A074997.P8869063749905722137

namespace A074997

/-- `A279767(n+1)+1` -/
def P8869063749905722137.Spec : Prop :=
  ∀ n, P8869063749905722137.a n = A074997 (n + 1)

end A074997

/-! ## A074997.P11992691393509234639

`∪[A074460(n+1), A074998(n+1)]`
-/

namespace A074997.P11992691393509234639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A074997.P11992691393509234639

namespace A074997

/-- `∪[A074460(n+1), A074998(n+1)]` -/
def P11992691393509234639.Spec : Prop :=
  ∀ n, (P11992691393509234639.a n : ℤ) = A074997 (n + 1)

end A074997

/-! ## A074997.P11484418625540137745

`∩[A067888(n+1), A280382(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A074997

/-- `∩[A067888(n+1), A280382(n+1)]` -/
def P11484418625540137745.Spec : Prop :=
  ∀ n, (P11484418625540137745.a n : ℤ) = A074997 (n + 1)

theorem P11484418625540137745.correct : P11484418625540137745.Spec := by
  intro n
  simp only [A074997, Nat.add_sub_cancel]

end A074997

/-! ## A074997.P14003090230952213611

`A020725(A279767(n+1))`
-/

namespace A074997.P14003090230952213611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A279767 (n + 1)).toNat

end

end A074997.P14003090230952213611

namespace A074997

/-- `A020725(A279767(n+1))` -/
def P14003090230952213611.Spec : Prop :=
  ∀ n, P14003090230952213611.a n = A074997 (n + 1)

end A074997

/-! ## A074997.P2635212400743255606

`eq[A278256(n+2), A278256(n+1)]+2`
-/

namespace A074997.P2635212400743255606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278256 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278256 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A074997.P2635212400743255606

namespace A074997

/-- `eq[A278256(n+2), A278256(n+1)]+2` -/
def P2635212400743255606.Spec : Prop :=
  ∀ n, (P2635212400743255606.a n : ℤ) = A074997 (n + 1)

end A074997

/-! ## A074997.P2495268451220273858

`eq[A265390(n+2), A265390(A028310(n))]+1`
-/

namespace A074997.P2495268451220273858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265390 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265390 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A074997.P2495268451220273858

namespace A074997

/-- `eq[A265390(n+2), A265390(A028310(n))]+1` -/
def P2495268451220273858.Spec : Prop :=
  ∀ n, (P2495268451220273858.a n : ℤ) = A074997 (n + 1)

end A074997

/-! ## A074997.P4548059830282575631

`A280383(n+1)+A000007(A008288(n))`
-/

namespace A074997.P4548059830282575631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280383 (n + 1) + A000007 (A008288 n).toNat

end

end A074997.P4548059830282575631

namespace A074997

/-- `A280383(n+1)+A000007(A008288(n))` -/
def P4548059830282575631.Spec : Prop :=
  ∀ n, P4548059830282575631.a n = A074997 (n + 1)

end A074997

/-! ## A074997.P3136636096164452360

`A280383(n+1)%A002189(n)`
-/

namespace A074997.P3136636096164452360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280383 (n + 1)) (A002189 n)

end

end A074997.P3136636096164452360

namespace A074997

/-- `A280383(n+1)%A002189(n)` -/
def P3136636096164452360.Spec : Prop :=
  ∀ n, P3136636096164452360.a n = A074997 (n + 1)

end A074997

/-! ## A074997.P329112726824260209

`A280383(A328047(A328047(A328047(A328047(n+1)))))`
-/

namespace A074997.P329112726824260209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280383 (A328047 (A328047 (A328047 (A328047 (n + 1)).toNat).toNat).toNat).toNat

end

end A074997.P329112726824260209

namespace A074997

/-- `A280383(A328047(A328047(A328047(A328047(n+1)))))` -/
def P329112726824260209.Spec : Prop :=
  ∀ n, P329112726824260209.a n = A074997 (n + 1)

end A074997

/-!
# A074998: Composite numbers which are sandwiched between two numbers having the same unordered canonical form.

The programs for A074998, the canonical program `A074998.P15115508449651615481` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074998 has offset 1).

The definition of A074998 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7092 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074998.P15115508449651615481

`filter[A074997(n+1), A005171(#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A074998

/-- `filter[A074997(n+1), A005171(#)]` -/
def P15115508449651615481.Spec : Prop :=
  ∀ n, P15115508449651615481.a n = A074998 (n + 1)

theorem P15115508449651615481.correct : P15115508449651615481.Spec := by
  intro n
  simp only [A074998, Nat.add_sub_cancel]

end A074998

/-! ## A074998.P12638520167476547511

`filter[A074997(n+1), A066247(#)]`
-/

namespace A074998.P12638520167476547511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A074998.P12638520167476547511

namespace A074998

/-- `filter[A074997(n+1), A066247(#)]` -/
def P12638520167476547511.Spec : Prop :=
  ∀ n, P12638520167476547511.a n = A074998 (n + 1)

end A074998

/-! ## A074998.P11267302029324228082

`filter[A074997(n+1), A174898(#)]`
-/

namespace A074998.P11267302029324228082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A074998.P11267302029324228082

namespace A074998

/-- `filter[A074997(n+1), A174898(#)]` -/
def P11267302029324228082.Spec : Prop :=
  ∀ n, P11267302029324228082.a n = A074998 (n + 1)

end A074998

/-! ## A074998.P13065392784300146557

`∩[A002808(n+1), A074997(n+1)]`
-/

namespace A074998.P13065392784300146557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074998.P13065392784300146557

namespace A074998

/-- `∩[A002808(n+1), A074997(n+1)]` -/
def P13065392784300146557.Spec : Prop :=
  ∀ n, (P13065392784300146557.a n : ℤ) = A074998 (n + 1)

end A074998

/-! ## A074998.P4280361421784333344

`∩[A018252(n+1), A074997(n+1)]`
-/

namespace A074998.P4280361421784333344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074998.P4280361421784333344

namespace A074998

/-- `∩[A018252(n+1), A074997(n+1)]` -/
def P4280361421784333344.Spec : Prop :=
  ∀ n, (P4280361421784333344.a n : ℤ) = A074998 (n + 1)

end A074998

/-! ## A074998.P11337962636323535726

`∩[A074997(n+1), A141468(n+1)]`
-/

namespace A074998.P11337962636323535726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074998.P11337962636323535726

namespace A074998

/-- `∩[A074997(n+1), A141468(n+1)]` -/
def P11337962636323535726.Spec : Prop :=
  ∀ n, (P11337962636323535726.a n : ℤ) = A074998 (n + 1)

end A074998

/-! ## A074998.P9366677322635911254

`∩[A074997(n+1), A171845(n+1)]`
-/

namespace A074998.P9366677322635911254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074998.P9366677322635911254

namespace A074998

/-- `∩[A074997(n+1), A171845(n+1)]` -/
def P9366677322635911254.Spec : Prop :=
  ∀ n, (P9366677322635911254.a n : ℤ) = A074998 (n + 1)

end A074998

/-! ## A074998.P1217445514333779614

`∩[A065090(n+1), A074997(n+1)]`
-/

namespace A074998.P1217445514333779614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074998.P1217445514333779614

namespace A074998

/-- `∩[A065090(n+1), A074997(n+1)]` -/
def P1217445514333779614.Spec : Prop :=
  ∀ n, (P1217445514333779614.a n : ℤ) = A074998 (n + 1)

end A074998

/-! ## A074998.P17602824407407189405

`∩[A074997(n+1), A171581(n+1)]`
-/

namespace A074998.P17602824407407189405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074998.P17602824407407189405

namespace A074998

/-- `∩[A074997(n+1), A171581(n+1)]` -/
def P17602824407407189405.Spec : Prop :=
  ∀ n, (P17602824407407189405.a n : ℤ) = A074998 (n + 1)

end A074998

/-! ## A074998.P751614364858193268

`∩[A074997(n+1), A173905(n+1)]`
-/

namespace A074998.P751614364858193268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074998.P751614364858193268

namespace A074998

/-- `∩[A074997(n+1), A173905(n+1)]` -/
def P751614364858193268.Spec : Prop :=
  ∀ n, (P751614364858193268.a n : ℤ) = A074998 (n + 1)

end A074998

/-! ## A074998.P15009178193281926002

`record[A191558(A074997(n+1))]`
-/

namespace A074998.P15009178193281926002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A074997 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074998.P15009178193281926002

namespace A074998

/-- `record[A191558(A074997(n+1))]` -/
def P15009178193281926002.Spec : Prop :=
  ∀ n, P15009178193281926002.a n = A074998 (n + 1)

end A074998

/-! ## A074998.P13428230989502345468

`record[A191558(A279767(n+1)+1)]`
-/

namespace A074998.P13428230989502345468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A279767 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074998.P13428230989502345468

namespace A074998

/-- `record[A191558(A279767(n+1)+1)]` -/
def P13428230989502345468.Spec : Prop :=
  ∀ n, P13428230989502345468.a n = A074998 (n + 1)

end A074998

/-! ## A074998.P1733285008706730224

`record[A074997(n+1)%A139693(A279767(n+1))]`
-/

namespace A074998.P1733285008706730224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074997 (n + 1)) (A139693 (A279767 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074998.P1733285008706730224

namespace A074998

/-- `record[A074997(n+1)%A139693(A279767(n+1))]` -/
def P1733285008706730224.Spec : Prop :=
  ∀ n, P1733285008706730224.a n = A074998 (n + 1)

end A074998

/-! ## A074998.P5816145252553454762

`A026239(record[A026239(A280383(n+1))])`
-/

namespace A074998.P5816145252553454762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A280383 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A074998.P5816145252553454762

namespace A074998

/-- `A026239(record[A026239(A280383(n+1))])` -/
def P5816145252553454762.Spec : Prop :=
  ∀ n, P5816145252553454762.a n = A074998 (n + 1)

end A074998

/-! ## A074998.P6512538797613991949

`A026239(p?[A026239(A280383(n+1))])`
-/

namespace A074998.P6512538797613991949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A280383 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A074998.P6512538797613991949

namespace A074998

/-- `A026239(p?[A026239(A280383(n+1))])` -/
def P6512538797613991949.Spec : Prop :=
  ∀ n, P6512538797613991949.a n = A074998 (n + 1)

end A074998

/-! ## A074998.P14274576278157600110

`record[A191558(A280383(A028920(n)))]`
-/

namespace A074998.P14274576278157600110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A280383 (A028920 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074998.P14274576278157600110

namespace A074998

/-- `record[A191558(A280383(A028920(n)))]` -/
def P14274576278157600110.Spec : Prop :=
  ∀ n, P14274576278157600110.a n = A074998 (n + 1)

end A074998

