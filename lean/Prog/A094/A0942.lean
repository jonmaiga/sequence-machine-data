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
import Seq.B000.C021
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
import Seq.B000.C035
import Seq.B000.C036
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
# A094200: a(n) = 16*n^4 + 32*n^3 + 36*n^2 + 20*n + 3.

The programs for A094200, the canonical program `A094200.P2765040795001109241` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094200 has offset 0).

The definition of A094200 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*n^4+32*n^3+36*n²+20*n+3` (program `A094200.P2765040795001109241`, by `A094200.P2765040795001109241.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094200.P2765040795001109241

`16*n^4+32*n^3+36*n²+20*n+3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094200

/-- `16*n^4+32*n^3+36*n²+20*n+3` -/
def P2765040795001109241.Spec : Prop :=
  ∀ n, (P2765040795001109241.a n : ℤ) = A094200 n

theorem P2765040795001109241.correct : P2765040795001109241.Spec := by
  intro n
  simp only [A094200]

end A094200

/-! ## A094200.P6930960205489543906

`xor(5, A069894(n)*A164897(n))`
-/

namespace A094200.P6930960205489543906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (A069894 n * A164897 n)

end

end A094200.P6930960205489543906

namespace A094200

/-- `xor(5, A069894(n)*A164897(n))` -/
def P6930960205489543906.Spec : Prop :=
  ∀ n, P6930960205489543906.a n = A094200 n

end A094200

/-! ## A094200.P99921154583412499

`xor(5, A304579(2*n+1))`
-/

namespace A094200.P99921154583412499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (A304579 (2 * n + 1))

end

end A094200.P99921154583412499

namespace A094200

/-- `xor(5, A304579(2*n+1))` -/
def P99921154583412499.Spec : Prop :=
  ∀ n, P99921154583412499.a n = A094200 n

end A094200

/-! ## A094200.P9019906099529310629

`xor(6, A057721(2*n+1))`
-/

namespace A094200.P9019906099529310629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (A057721 (2 * n + 1))

end

end A094200.P9019906099529310629

namespace A094200

/-- `xor(6, A057721(2*n+1))` -/
def P9019906099529310629.Spec : Prop :=
  ∀ n, P9019906099529310629.a n = A094200 n

end A094200

/-! ## A094200.P14681279259686880243

`record[A057721(A004442(n))-2]`
-/

namespace A094200.P14681279259686880243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057721 (A004442 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094200.P14681279259686880243

namespace A094200

/-- `record[A057721(A004442(n))-2]` -/
def P14681279259686880243.Spec : Prop :=
  ∀ n, P14681279259686880243.a n = A094200 n

end A094200

/-! ## A094200.P1898872388146848303

`record[A057721(A065190(n+1))-2]`
-/

namespace A094200.P1898872388146848303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057721 (A065190 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094200.P1898872388146848303

namespace A094200

/-- `record[A057721(A065190(n+1))-2]` -/
def P1898872388146848303.Spec : Prop :=
  ∀ n, P1898872388146848303.a n = A094200 n

end A094200

/-! ## A094200.P7876001044703303883

`abs(3-A256833(n²+n))`
-/

namespace A094200.P7876001044703303883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A256833 (n ^ 2 + n)|

end

end A094200.P7876001044703303883

namespace A094200

/-- `abs(3-A256833(n²+n))` -/
def P7876001044703303883.Spec : Prop :=
  ∀ n, P7876001044703303883.a n = A094200 n

end A094200

/-! ## A094200.P12989659286371884250

`xor(5, A256833(A002378(n)))`
-/

namespace A094200.P12989659286371884250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (A256833 (A002378 n).toNat)

end

end A094200.P12989659286371884250

namespace A094200

/-- `xor(5, A256833(A002378(n)))` -/
def P12989659286371884250.Spec : Prop :=
  ∀ n, P12989659286371884250.a n = A094200 n

end A094200

/-! ## A094200.P6497749148493925958

`xor(5, A002943((n+1)²+n²))`
-/

namespace A094200.P6497749148493925958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (A002943 ((n + 1) ^ 2 + n ^ 2))

end

end A094200.P6497749148493925958

namespace A094200

/-- `xor(5, A002943((n+1)²+n²))` -/
def P6497749148493925958.Spec : Prop :=
  ∀ n, P6497749148493925958.a n = A094200 n

end A094200

/-!
# A094201: a(n) = 4*n^5 + 10*n^4 + 13*n^3 + 11*n^2 + 5*n + 1.

The programs for A094201, the canonical program `A094201.P18065793923417474477` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094201 has offset 0).

The definition of A094201 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n^5+10*n^4+13*n^3+11*n²+5*n+1` (program `A094201.P18065793923417474477`, by `A094201.P18065793923417474477.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094201.P18065793923417474477

`4*n^5+10*n^4+13*n^3+11*n²+5*n+1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094201

/-- `4*n^5+10*n^4+13*n^3+11*n²+5*n+1` -/
def P18065793923417474477.Spec : Prop :=
  ∀ n, (P18065793923417474477.a n : ℤ) = A094201 n

theorem P18065793923417474477.correct : P18065793923417474477.Spec := by
  intro n
  simp only [A094201]

end A094201

/-! ## A094201.P1447012621142777491

`(n+1)*(A007204(n)-A099721(n))`
-/

namespace A094201.P1447012621142777491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A007204 n - A099721 n)

end

end A094201.P1447012621142777491

namespace A094201

/-- `(n+1)*(A007204(n)-A099721(n))` -/
def P1447012621142777491.Spec : Prop :=
  ∀ n, P1447012621142777491.a n = A094201 n

theorem P1447012621142777491.correct : P1447012621142777491.Spec := by
  intro n
  simp only [A094201, Nat.add_sub_cancel, A094201.P1447012621142777491.a, A094201.P18065793923417474477.a, A007204, A007204.P4435489401006619676.a, A099721, A099721.P13421266014638133477.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A094201

/-! ## A094201.P5621799575995663751

`(A007204(n)-A099721(n))*(A016777(n)-2*n)`
-/

namespace A094201.P5621799575995663751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007204 n - A099721 n) * (A016777 n - (2 * n : ℤ))

end

end A094201.P5621799575995663751

namespace A094201

/-- `(A007204(n)-A099721(n))*(A016777(n)-2*n)` -/
def P5621799575995663751.Spec : Prop :=
  ∀ n, P5621799575995663751.a n = A094201 n

theorem P5621799575995663751.correct : P5621799575995663751.Spec := by
  intro n
  simp only [A094201, Nat.add_sub_cancel, A094201.P5621799575995663751.a, A094201.P18065793923417474477.a, A007204, A007204.P4435489401006619676.a, A016777, A016777.P9931792138852554157.a, A099721, A099721.P13421266014638133477.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A094201

/-! ## A094201.P13321075465376405631

`(A007204(n)-A099721(n))*A078812(∑[n])`
-/

namespace A094201.P13321075465376405631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007204 n - A099721 n) * A078812 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A094201.P13321075465376405631

namespace A094201

/-- `(A007204(n)-A099721(n))*A078812(∑[n])` -/
def P13321075465376405631.Spec : Prop :=
  ∀ n, P13321075465376405631.a n = A094201 n

end A094201

/-! ## A094201.P9698179063332914413

`(A007204(n)-A099721(n))*A000005(2^n)`
-/

namespace A094201.P9698179063332914413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007204 n - A099721 n) * A000005 (2 ^ n)

end

end A094201.P9698179063332914413

namespace A094201

/-- `(A007204(n)-A099721(n))*A000005(2^n)` -/
def P9698179063332914413.Spec : Prop :=
  ∀ n, P9698179063332914413.a n = A094201 n

end A094201

/-!
# A094202: Integers k whose Zeckendorf representation A014417(k) is palindromic.

The programs for A094202, there is no canonical definition to state claims against.
-/

/-! ## A094202.P15398259468974317100

`A364005(n+2)-1`
-/

namespace A094202.P15398259468974317100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364005 (n + 2) - 1

end

end A094202.P15398259468974317100

/-! ## A094202.P12374101376683804258

`eq[0, A349240(n)]`
-/

namespace A094202.P12374101376683804258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349240 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A094202.P12374101376683804258

/-! ## A094202.P3171739979958200240

`eq[n, A349238(n)]`
-/

namespace A094202.P3171739979958200240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A094202.P3171739979958200240

/-! ## A094202.P5066163122035430695

`record[gcd(n, A349239(n))]`
-/

namespace A094202.P5066163122035430695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A349239 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094202.P5066163122035430695

/-! ## A094202.P9239075793433014887

`A023443(A364005(n+2))`
-/

namespace A094202.P9239075793433014887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A364005 (n + 2)).toNat

end

end A094202.P9239075793433014887

/-! ## A094202.P14823405668487580855

`eq[A005843(n), A349239(n)]`
-/

namespace A094202.P14823405668487580855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349239 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094202.P14823405668487580855

/-! ## A094202.P13976331642035926159

`record[gcd(A005843(n), A349238(n))]`
-/

namespace A094202.P13976331642035926159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005843 n) (A349238 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094202.P13976331642035926159

/-! ## A094202.P3259656313387207328

`record[n-lcm(A000040(n+1), A349240(n))]`
-/

namespace A094202.P3259656313387207328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Int.lcm (A000040 (n + 1)) (A349240 n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094202.P3259656313387207328

/-! ## A094202.P16215446793751753419

`record[n-lcm(A169809(n), A349240(n))]`
-/

namespace A094202.P16215446793751753419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Int.lcm (A169809 n) (A349240 n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094202.P16215446793751753419

/-!
# A094205: Lower bounds of twin prime pairs of the form prime(2n+1).

The programs for A094205, the canonical program `A094205.P2936233271097691643` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094205 has offset 0).

The definition of A094205 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094205.P2936233271097691643

`p?[A031215(n+1)-2]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A094205

/-- `p?[A031215(n+1)-2]` -/
def P2936233271097691643.Spec : Prop :=
  ∀ n, P2936233271097691643.a n = A094205 n

theorem P2936233271097691643.correct : P2936233271097691643.Spec := by
  intro n
  simp only [A094205]

end A094205

/-! ## A094205.P17122091930101700107

`p?[A031368(n+1)+2]-2`
-/

namespace A094205.P17122091930101700107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A094205.P17122091930101700107

namespace A094205

/-- `p?[A031368(n+1)+2]-2` -/
def P17122091930101700107.Spec : Prop :=
  ∀ n, P17122091930101700107.a n = A094205 n

end A094205

/-! ## A094205.P4871299318604047914

`p?[p?[A277907(2*(n+1))]-2]`
-/

namespace A094205.P4871299318604047914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277907 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094205.P4871299318604047914

namespace A094205

/-- `p?[p?[A277907(2*(n+1))]-2]` -/
def P4871299318604047914.Spec : Prop :=
  ∀ n, P4871299318604047914.a n = A094205 n

end A094205

/-! ## A094205.P11847333818513430477

`∩[A001359(n+1), A031368(n+1)]`
-/

namespace A094205.P11847333818513430477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094205.P11847333818513430477

namespace A094205

/-- `∩[A001359(n+1), A031368(n+1)]` -/
def P11847333818513430477.Spec : Prop :=
  ∀ n, (P11847333818513430477.a n : ℤ) = A094205 n

end A094205

/-! ## A094205.P18177733487374561028

`∩[A001838(n+1), A031368(n+1)]`
-/

namespace A094205.P18177733487374561028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094205.P18177733487374561028

namespace A094205

/-- `∩[A001838(n+1), A031368(n+1)]` -/
def P18177733487374561028.Spec : Prop :=
  ∀ n, (P18177733487374561028.a n : ℤ) = A094205 n

end A094205

/-! ## A094205.P16620367628544334566

`∩[A031368(n+1), A054799(n+1)]`
-/

namespace A094205.P16620367628544334566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094205.P16620367628544334566

namespace A094205

/-- `∩[A031368(n+1), A054799(n+1)]` -/
def P16620367628544334566.Spec : Prop :=
  ∀ n, (P16620367628544334566.a n : ℤ) = A094205 n

end A094205

/-! ## A094205.P3935082086107692652

`∩[A031368(n+1), A063693(n+1)]`
-/

namespace A094205.P3935082086107692652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094205.P3935082086107692652

namespace A094205

/-- `∩[A031368(n+1), A063693(n+1)]` -/
def P3935082086107692652.Spec : Prop :=
  ∀ n, (P3935082086107692652.a n : ℤ) = A094205 n

end A094205

/-! ## A094205.P10505565847411045334

`∩[A031368(n+1), A063700(n+1)]`
-/

namespace A094205.P10505565847411045334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094205.P10505565847411045334

namespace A094205

/-- `∩[A031368(n+1), A063700(n+1)]` -/
def P10505565847411045334.Spec : Prop :=
  ∀ n, (P10505565847411045334.a n : ℤ) = A094205 n

end A094205

/-! ## A094205.P16536635891088642399

`∩[A031368(n+1), A181747(n+1)]`
-/

namespace A094205.P16536635891088642399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094205.P16536635891088642399

namespace A094205

/-- `∩[A031368(n+1), A181747(n+1)]` -/
def P16536635891088642399.Spec : Prop :=
  ∀ n, (P16536635891088642399.a n : ℤ) = A094205 n

end A094205

/-! ## A094205.P2798986279020131290

`∩[A031368(n+1), A274212(n+1)]`
-/

namespace A094205.P2798986279020131290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094205.P2798986279020131290

namespace A094205

/-- `∩[A031368(n+1), A274212(n+1)]` -/
def P2798986279020131290.Spec : Prop :=
  ∀ n, (P2798986279020131290.a n : ℤ) = A094205 n

end A094205

/-! ## A094205.P1054492665425951892

`∩[A031368(n+1), A280255(n+1)]`
-/

namespace A094205.P1054492665425951892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094205.P1054492665425951892

namespace A094205

/-- `∩[A031368(n+1), A280255(n+1)]` -/
def P1054492665425951892.Spec : Prop :=
  ∀ n, (P1054492665425951892.a n : ℤ) = A094205 n

end A094205

/-! ## A094205.P1376735301331779996

`∩[A031368(n+1), A280590(n+1)]`
-/

namespace A094205.P1376735301331779996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094205.P1376735301331779996

namespace A094205

/-- `∩[A031368(n+1), A280590(n+1)]` -/
def P1376735301331779996.Spec : Prop :=
  ∀ n, (P1376735301331779996.a n : ℤ) = A094205 n

end A094205

/-! ## A094205.P9100734784232894059

`∩[A001359(n+1), A324812(n+1)]`
-/

namespace A094205.P9100734784232894059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094205.P9100734784232894059

namespace A094205

/-- `∩[A001359(n+1), A324812(n+1)]` -/
def P9100734784232894059.Spec : Prop :=
  ∀ n, (P9100734784232894059.a n : ℤ) = A094205 n

end A094205

/-! ## A094205.P12393355596656432748

`∩[A001838(n+1), A324812(n+1)]`
-/

namespace A094205.P12393355596656432748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094205.P12393355596656432748

namespace A094205

/-- `∩[A001838(n+1), A324812(n+1)]` -/
def P12393355596656432748.Spec : Prop :=
  ∀ n, (P12393355596656432748.a n : ℤ) = A094205 n

end A094205

/-! ## A094205.P2104863745131454975

`∩[A054799(n+1), A324812(n+1)]`
-/

namespace A094205.P2104863745131454975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094205.P2104863745131454975

namespace A094205

/-- `∩[A054799(n+1), A324812(n+1)]` -/
def P2104863745131454975.Spec : Prop :=
  ∀ n, (P2104863745131454975.a n : ℤ) = A094205 n

end A094205

/-! ## A094205.P7033755870130653837

`∩[A280255(n+1), A324812(n+1)]`
-/

namespace A094205.P7033755870130653837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094205.P7033755870130653837

namespace A094205

/-- `∩[A280255(n+1), A324812(n+1)]` -/
def P7033755870130653837.Spec : Prop :=
  ∀ n, (P7033755870130653837.a n : ℤ) = A094205 n

end A094205

/-! ## A094205.P14841972444155938335

`∩[A031368(n+1), A066147(n+1)]`
-/

namespace A094205.P14841972444155938335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094205.P14841972444155938335

namespace A094205

/-- `∩[A031368(n+1), A066147(n+1)]` -/
def P14841972444155938335.Spec : Prop :=
  ∀ n, (P14841972444155938335.a n : ℤ) = A094205 n

end A094205

/-! ## A094205.P4250336639884858562

`p?[p?[A066207(n+1)]-2]`
-/

namespace A094205.P4250336639884858562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094205.P4250336639884858562

namespace A094205

/-- `p?[p?[A066207(n+1)]-2]` -/
def P4250336639884858562.Spec : Prop :=
  ∀ n, P4250336639884858562.a n = A094205 n

end A094205

/-! ## A094205.P14503771298814554362

`∩[A031368(n+1), A072282(n+1)]`
-/

namespace A094205.P14503771298814554362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094205.P14503771298814554362

namespace A094205

/-- `∩[A031368(n+1), A072282(n+1)]` -/
def P14503771298814554362.Spec : Prop :=
  ∀ n, (P14503771298814554362.a n : ℤ) = A094205 n

end A094205

/-! ## A094205.P13780190849242676001

`∩[A031368(n+1), A065873(n+1)]`
-/

namespace A094205.P13780190849242676001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094205.P13780190849242676001

namespace A094205

/-- `∩[A031368(n+1), A065873(n+1)]` -/
def P13780190849242676001.Spec : Prop :=
  ∀ n, (P13780190849242676001.a n : ℤ) = A094205 n

end A094205

/-!
# A094206: a(n) = number of consistent orderings of 1..n based only on factorization.

The programs for A094206, there is no canonical definition to state claims against.
-/

/-! ## A094206.P3997820757803068406

`A141729(A002013(n))`
-/

namespace A094206.P3997820757803068406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141729 (A002013 n).toNat

end

end A094206.P3997820757803068406

/-! ## A094206.P6951114886680100501

`A341141(A355191(n))`
-/

namespace A094206.P6951114886680100501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341141 ((A355191 n).toNat + 10)

end

end A094206.P6951114886680100501

/-! ## A094206.P13062238331101881369

`A106801(A324767(n+2))`
-/

namespace A094206.P13062238331101881369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106801 (A324767 (n + 2)).toNat

end

end A094206.P13062238331101881369

/-! ## A094206.P7196288526194640383

`A000196(∑[∏[A331520(n)]])`
-/

namespace A094206.P7196288526194640383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331520 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A094206.P7196288526194640383

/-! ## A094206.P96359045865373612

`A097285(∏[A006800(n+1)])`
-/

namespace A094206.P96359045865373612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A094206.P96359045865373612

/-!
# A094207: a(n) = prime(4n-3) + prime(4n-2) + prime(4n-1) + prime(4n).

The programs for A094207, the canonical program `A094207.P5621931072805257674` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094207 has offset 1).

The definition of A094207 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034963, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A094207.P5621931072805257674

`A034963(4*n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A094207

/-- `A034963(4*n+1)` -/
def P5621931072805257674.Spec : Prop :=
  ∀ n, P5621931072805257674.a n = A094207 (n + 1)

theorem P5621931072805257674.correct : P5621931072805257674.Spec := by
  intro n
  simp only [A094207, Nat.add_sub_cancel]

end A094207

/-! ## A094207.P7267573593897826453

`Δ[A007504(4*n)]`
-/

namespace A094207.P7267573593897826453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094207.P7267573593897826453

namespace A094207

/-- `Δ[A007504(4*n)]` -/
def P7267573593897826453.Spec : Prop :=
  ∀ n, P7267573593897826453.a n = A094207 (n + 1)

end A094207

/-! ## A094207.P6962750211282780934

`Δ[A109722(2*n)]`
-/

namespace A094207.P6962750211282780934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109722 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094207.P6962750211282780934

namespace A094207

/-- `Δ[A109722(2*n)]` -/
def P6962750211282780934.Spec : Prop :=
  ∀ n, P6962750211282780934.a n = A094207 (n + 1)

end A094207

/-! ## A094207.P8444043365386830613

`A135277(2*n+1)+A031215(2*(n+1))`
-/

namespace A094207.P8444043365386830613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135277 (2 * n + 1) + A031215 (2 * (n + 1))

end

end A094207.P8444043365386830613

namespace A094207

/-- `A135277(2*n+1)+A031215(2*(n+1))` -/
def P8444043365386830613.Spec : Prop :=
  ∀ n, P8444043365386830613.a n = A094207 (n + 1)

end A094207

/-! ## A094207.P8199734974368834466

`A100479(2*n+1)+A100479(2*(n+1))`
-/

namespace A094207.P8199734974368834466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100479 (2 * n + 1) + A100479 (2 * (n + 1))

end

end A094207.P8199734974368834466

namespace A094207

/-- `A100479(2*n+1)+A100479(2*(n+1))` -/
def P8199734974368834466.Spec : Prop :=
  ∀ n, P8199734974368834466.a n = A094207 (n + 1)

end A094207

/-! ## A094207.P14501173660612738441

`Δ[A262392(4*n)]`
-/

namespace A094207.P14501173660612738441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262392 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094207.P14501173660612738441

namespace A094207

/-- `Δ[A262392(4*n)]` -/
def P14501173660612738441.Spec : Prop :=
  ∀ n, P14501173660612738441.a n = A094207 (n + 1)

end A094207

/-! ## A094207.P8745498192099994096

`Δ[A014284(4*n+1)]`
-/

namespace A094207.P8745498192099994096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094207.P8745498192099994096

namespace A094207

/-- `Δ[A014284(4*n+1)]` -/
def P8745498192099994096.Spec : Prop :=
  ∀ n, P8745498192099994096.a n = A094207 (n + 1)

end A094207

/-! ## A094207.P13550924043805110619

`Δ[A036439(A016777(n)+n)]`
-/

namespace A094207.P13550924043805110619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (A016777 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094207.P13550924043805110619

namespace A094207

/-- `Δ[A036439(A016777(n)+n)]` -/
def P13550924043805110619.Spec : Prop :=
  ∀ n, P13550924043805110619.a n = A094207 (n + 1)

end A094207

/-!
# A094210: Numbers k such that k^2 + 3k + 1 is a prime.

The programs for A094210, there is no canonical definition to state claims against.
-/

/-! ## A094210.P8344891345787226110

`A002328(n+1)-2`
-/

namespace A094210.P8344891345787226110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1) - 2

end

end A094210.P8344891345787226110

/-! ## A094210.P13183502755479799816

`A045546(n+1)-1`
-/

namespace A094210.P13183502755479799816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1) - 1

end

end A094210.P13183502755479799816

/-! ## A094210.P7459171299913298096

`A076597(n+1)-3`
-/

namespace A094210.P7459171299913298096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076597 (n + 1) - 3

end

end A094210.P7459171299913298096

/-! ## A094210.P2971687410755450685

`A089362(n+1)-4`
-/

namespace A094210.P2971687410755450685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089362 (n + 1) - 4

end

end A094210.P2971687410755450685

/-! ## A094210.P2123363568641909325

`(A088502(n+1)-3)/2`
-/

namespace A094210.P2123363568641909325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088502 (n + 1) - 3 : ℚ) / 2

end

end A094210.P2123363568641909325

/-! ## A094210.P13284752676930463278

`floor(sqrt(A002327(n+1)))-1`
-/

namespace A094210.P13284752676930463278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002327 (n + 1)) - 1

end

end A094210.P13284752676930463278

/-! ## A094210.P10732576013027603984

`(sqrt(A110013(n+1))-3)/2`
-/

namespace A094210.P10732576013027603984
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A110013 (n + 1) : ℝ) - 3) / 2

end

end A094210.P10732576013027603984

/-! ## A094210.P2748182937912219488

`A002327(n+1)%A045546(n+1)`
-/

namespace A094210.P2748182937912219488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002327 (n + 1)) (A045546 (n + 1))

end

end A094210.P2748182937912219488

/-! ## A094210.P10884054920840608121

`A088502(n+1)%A076597(n+1)`
-/

namespace A094210.P10884054920840608121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088502 (n + 1)) (A076597 (n + 1))

end

end A094210.P10884054920840608121

/-! ## A094210.P13400016300922001838

`floor(A002327(n+1)/A002328(n+1))`
-/

namespace A094210.P13400016300922001838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002327 (n + 1) : ℚ) / (A002328 (n + 1) : ℚ)⌋

end

end A094210.P13400016300922001838

/-! ## A094210.P14327242524227364273

`lt[0, A108151(n+1)]+1`
-/

namespace A094210.P14327242524227364273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108151 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A094210.P14327242524227364273

/-! ## A094210.P15069306663390432764

`eq[2, A278247(n)]`
-/

namespace A094210.P15069306663390432764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278247 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A094210.P15069306663390432764

/-! ## A094210.P2869947477217169052

`eq[1, A289357(n+1)]`
-/

namespace A094210.P2869947477217169052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289357 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A094210.P2869947477217169052

/-! ## A094210.P16709117510502531675

`lt[A272903(n+2), 2]`
-/

namespace A094210.P16709117510502531675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272903 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A094210.P16709117510502531675

/-! ## A094210.P9360350870676009483

`A023444(A002328(n+1))`
-/

namespace A094210.P9360350870676009483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A002328 (n + 1)).toNat

end

end A094210.P9360350870676009483

/-! ## A094210.P8890113499977217464

`A023443(A045546(n+1))`
-/

namespace A094210.P8890113499977217464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A045546 (n + 1)).toNat

end

end A094210.P8890113499977217464

/-! ## A094210.P7761001640199351850

`A023445(A076597(n+1))`
-/

namespace A094210.P7761001640199351850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A076597 (n + 1)).toNat

end

end A094210.P7761001640199351850

/-! ## A094210.P4514002296529820898

`A023446(A089362(n+1))`
-/

namespace A094210.P4514002296529820898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A089362 (n + 1)).toNat

end

end A094210.P4514002296529820898

/-! ## A094210.P5393147298847666192

`A023445(A002328(n+1)+1)`
-/

namespace A094210.P5393147298847666192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A002328 (n + 1) + 1).toNat

end

end A094210.P5393147298847666192

/-! ## A094210.P13263452149786719386

`eq[A060576(n), A272903(n+2)]`
-/

namespace A094210.P13263452149786719386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272903 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094210.P13263452149786719386

/-!
# A094211: a(n) = Sum_{k=0..n} binomial(7*n,7*k).

The programs for A094211, there is no canonical definition to state claims against.
-/

/-! ## A094211.P16216750649655517483

`A094659(7*n)`
-/

namespace A094211.P16216750649655517483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094659 (7 * n)

end

end A094211.P16216750649655517483

/-! ## A094211.P7522812806512546008

`A306852(7*n)`
-/

namespace A094211.P7522812806512546008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306852 (7 * n)

end

end A094211.P7522812806512546008

/-! ## A094211.P16192176775809565763

`record[gcd(A094659(n), A306852(n))]`
-/

namespace A094211.P16192176775809565763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094659 n) (A306852 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094211.P16192176775809565763

/-! ## A094211.P18177454654877168703

`A308500(eq[7, A025581(n)])`
-/

namespace A094211.P18177454654877168703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308500 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A094211.P18177454654877168703

/-! ## A094211.P12220724250149332254

`A308500(eq[8, A004736(n+1)])`
-/

namespace A094211.P12220724250149332254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308500 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A094211.P12220724250149332254

/-!
# A094213: a(n) = Sum_{k=0..n} binomial(9*n,9*k).

The programs for A094213, there is no canonical definition to state claims against.
-/

/-! ## A094213.P9883878259287475586

`A094233(9*n)`
-/

namespace A094213.P9883878259287475586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094233 (9 * n)

end

end A094213.P9883878259287475586

/-! ## A094213.P15779436870593453719

`A306860(9*n)`
-/

namespace A094213.P15779436870593453719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306860 (9 * n)

end

end A094213.P15779436870593453719

/-! ## A094213.P13465331198536864114

`record[A306860(A006368(A006368(n)))]`
-/

namespace A094213.P13465331198536864114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306860 (A006368 (A006368 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094213.P13465331198536864114

/-! ## A094213.P12521637618202749973

`A308500(eq[9, A025581(n)])`
-/

namespace A094213.P12521637618202749973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308500 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A094213.P12521637618202749973

/-! ## A094213.P3268258178321428953

`A308500(eq[10, A004736(n+1)])`
-/

namespace A094213.P3268258178321428953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308500 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A094213.P3268258178321428953

/-!
# A094214: Decimal expansion of 1/phi = phi - 1.

The programs for A094214, there is no canonical definition to state claims against.
-/

/-! ## A094214.P8972135396565300729

`A001622(n+1)`
-/

namespace A094214.P8972135396565300729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1 + 1)

end

end A094214.P8972135396565300729

/-! ## A094214.P375033729907872462

`9-A132338(n)`
-/

namespace A094214.P375033729907872462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A132338 n

end

end A094214.P375033729907872462

/-! ## A094214.P459892910537888489

`9-A079585(n+1)`
-/

namespace A094214.P459892910537888489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A079585 (n + 1 + 1)

end

end A094214.P459892910537888489

/-! ## A094214.P148825249961023174

`Δ[A093083(n)]`
-/

namespace A094214.P148825249961023174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093083 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094214.P148825249961023174

/-! ## A094214.P8821522815135637455

`A104457(n+1)`
-/

namespace A094214.P8821522815135637455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1 + 1)

end

end A094214.P8821522815135637455

/-! ## A094214.P6358162068383674678

`A296184(n+1)`
-/

namespace A094214.P6358162068383674678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296184 (n + 1 + 1)

end

end A094214.P6358162068383674678

/-! ## A094214.P4370332978746605170

`9-A094874(n+1)`
-/

namespace A094214.P4370332978746605170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A094874 (n + 1 + 1)

end

end A094214.P4370332978746605170

/-! ## A094214.P6997505707631102985

`9-A109866(n+2)`
-/

namespace A094214.P6997505707631102985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A109866 (n + 2)

end

end A094214.P6997505707631102985

/-! ## A094214.P15160526350372320394

`sqrt(Δ[A111043(n+1)])`
-/

namespace A094214.P15160526350372320394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111043 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (n + 1) - f1 n : ℝ)

end

end A094214.P15160526350372320394

/-! ## A094214.P15979753528393184363

`Δ[abs(1-∑[A104457(n)])]`
-/

namespace A094214.P15979753528393184363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094214.P15979753528393184363

/-! ## A094214.P1325982426880480299

`A093083(n+1)-A093083(n)`
-/

namespace A094214.P1325982426880480299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093083 (n + 1) - A093083 n

end

end A094214.P1325982426880480299

/-! ## A094214.P9688150033285602770

`A076790(2*(n+1))`
-/

namespace A094214.P9688150033285602770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076790 (2 * (n + 1))

end

end A094214.P9688150033285602770

/-! ## A094214.P10480644431036079368

`A382130(2*n+3)`
-/

namespace A094214.P10480644431036079368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382130 (2 * n + 3)

end

end A094214.P10480644431036079368

/-! ## A094214.P2671643653402596553

`A078424(3*(n+2))`
-/

namespace A094214.P2671643653402596553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078424 (3 * (n + 2))

end

end A094214.P2671643653402596553

/-! ## A094214.P16054388788862982480

`A098369(∑[n+1])`
-/

namespace A094214.P16054388788862982480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098369 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A094214.P16054388788862982480

/-! ## A094214.P9494222529760555837

`A095713(A000124(n+1))`
-/

namespace A094214.P9494222529760555837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095713 (A000124 (n + 1)).toNat

end

end A094214.P9494222529760555837

/-! ## A094214.P9462214553469828691

`A138116(C(n+3, 2))`
-/

namespace A094214.P9462214553469828691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138116 (Nat.choose (n + 3) 2)

end

end A094214.P9462214553469828691

/-! ## A094214.P8441121458097797454

`A138116(A253145(n+1))`
-/

namespace A094214.P8441121458097797454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138116 (A253145 (n + 1)).toNat

end

end A094214.P8441121458097797454

/-! ## A094214.P3487508255071722786

`A095713(A167614(n+2))`
-/

namespace A094214.P3487508255071722786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095713 (A167614 (n + 2)).toNat

end

end A094214.P3487508255071722786

/-! ## A094214.P2709516203338205956

`A095713(A085931(n+1))`
-/

namespace A094214.P2709516203338205956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095713 (A085931 (n + 1)).toNat

end

end A094214.P2709516203338205956

/-!
# A094215: a(n)=A093878(n)-floor(n/phi) where phi=(1+sqrt(5))/2.

The programs for A094215, the canonical program `A094215.P3343379007549993523` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094215 has offset 1).

The definition of A094215 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A093878(n+1)-floor((n+1)/ϕ)` (program `A094215.P3343379007549993523`, by `A094215.P3343379007549993523.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094215.P3343379007549993523

`A093878(n+1)-floor((n+1)/ϕ)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A094215

/-- `A093878(n+1)-floor((n+1)/ϕ)` -/
def P3343379007549993523.Spec : Prop :=
  ∀ n, P3343379007549993523.a n = A094215 (n + 1)

theorem P3343379007549993523.correct : P3343379007549993523.Spec := by
  intro n
  simp only [A094215, Nat.add_sub_cancel]

end A094215

/-! ## A094215.P17198746114514429813

`abs(A093878(n+1)-A005206(n))`
-/

namespace A094215.P17198746114514429813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A093878 (n + 1) - A005206 n|

end

end A094215.P17198746114514429813

namespace A094215

/-- `abs(A093878(n+1)-A005206(n))` -/
def P17198746114514429813.Spec : Prop :=
  ∀ n, P17198746114514429813.a n = A094215 (n + 1)

end A094215

/-! ## A094215.P3525945509342644109

`A093878(n+1)-A022342(n+1)+n`
-/

namespace A094215.P3525945509342644109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093878 (n + 1) - A022342 (n + 1) + (n : ℤ)

end

end A094215.P3525945509342644109

namespace A094215

/-- `A093878(n+1)-A022342(n+1)+n` -/
def P3525945509342644109.Spec : Prop :=
  ∀ n, P3525945509342644109.a n = A094215 (n + 1)

end A094215

/-! ## A094215.P9883239510583550853

`A094217(n)+a(n-1)-A096270(n)` with `a(0)=1`
-/

namespace A094215.P9883239510583550853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A094217 n + a (n - 1) - A096270 n

end

end A094215.P9883239510583550853

namespace A094215

/-- `A094217(n)+a(n-1)-A096270(n)` -/
def P9883239510583550853.Spec : Prop :=
  ∀ n, P9883239510583550853.a n = A094215 (n + 1)

end A094215

/-! ## A094215.P8675801732262697602

`∑[A094217(abs(1-n)+1)]-A005206(n)`
-/

namespace A094215.P8675801732262697602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094217 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005206 n

end

end A094215.P8675801732262697602

namespace A094215

/-- `∑[A094217(abs(1-n)+1)]-A005206(n)` -/
def P8675801732262697602.Spec : Prop :=
  ∀ n, P8675801732262697602.a n = A094215 (n + 1)

end A094215

/-! ## A094215.P5590028911470327965

`∑[A094217(A028310(n))]-A005206(n)+1`
-/

namespace A094215.P5590028911470327965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094217 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005206 n + 1

end

end A094215.P5590028911470327965

namespace A094215

/-- `∑[A094217(A028310(n))]-A005206(n)+1` -/
def P5590028911470327965.Spec : Prop :=
  ∀ n, P5590028911470327965.a n = A094215 (n + 1)

end A094215

/-! ## A094215.P18057666248745493652

`∑[A094217(A000007(n)+n)]-A005206(n)+1`
-/

namespace A094215.P18057666248745493652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094217 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005206 n + 1

end

end A094215.P18057666248745493652

namespace A094215

/-- `∑[A094217(A000007(n)+n)]-A005206(n)+1` -/
def P18057666248745493652.Spec : Prop :=
  ∀ n, P18057666248745493652.a n = A094215 (n + 1)

end A094215

/-! ## A094215.P4507921773047433447

`n+1+A093878(n+1)+A001489(∑[A001468(n)])`
-/

namespace A094215.P4507921773047433447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A093878 (n + 1) + A001489 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A094215.P4507921773047433447

namespace A094215

/-- `n+1+A093878(n+1)+A001489(∑[A001468(n)])` -/
def P4507921773047433447.Spec : Prop :=
  ∀ n, P4507921773047433447.a n = A094215 (n + 1)

end A094215

/-! ## A094215.P7703715270384541041

`∑[A094217(n+1)]+1-A094217(n+1)-A005206(n)`
-/

namespace A094215.P7703715270384541041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A094217 (n + 1)) - A005206 n

end

end A094215.P7703715270384541041

namespace A094215

/-- `∑[A094217(n+1)]+1-A094217(n+1)-A005206(n)` -/
def P7703715270384541041.Spec : Prop :=
  ∀ n, P7703715270384541041.a n = A094215 (n + 1)

end A094215

/-!
# A094217: First differences of A093878.

The programs for A094217, the canonical program `A094217.P9113712508668953243` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094217 has offset 1).

The definition of A094217 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094217.P9113712508668953243

`A093878(n+2)-A093878(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A094217

/-- `A093878(n+2)-A093878(n+1)` -/
def P9113712508668953243.Spec : Prop :=
  ∀ n, P9113712508668953243.a n = A094217 (n + 1)

theorem P9113712508668953243.correct : P9113712508668953243.Spec := by
  intro n
  simp only [A094217, Nat.add_sub_cancel]

end A094217

/-! ## A094217.P8430835601113019148

`Δ[A093878(n+1)]`
-/

namespace A094217.P8430835601113019148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094217.P8430835601113019148

namespace A094217

/-- `Δ[A093878(n+1)]` -/
def P8430835601113019148.Spec : Prop :=
  ∀ n, P8430835601113019148.a n = A094217 (n + 1)

theorem P8430835601113019148.correct : P8430835601113019148.Spec := by
  intro n
  simp only [A094217, Nat.add_sub_cancel, A094217.P8430835601113019148.f1, A094217.P8430835601113019148.a, A094217.P9113712508668953243.a, SequenceMachineLib.memo_apply]

end A094217

/-! ## A094217.P16284303217526172007

`Δ[floor(A094215(n+1)+(n+1)/ϕ)]`
-/

namespace A094217.P16284303217526172007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094215 (n + 1) : ℝ) + (n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094217.P16284303217526172007

namespace A094217

/-- `Δ[floor(A094215(n+1)+(n+1)/ϕ)]` -/
def P16284303217526172007.Spec : Prop :=
  ∀ n, P16284303217526172007.a n = A094217 (n + 1)

end A094217

/-! ## A094217.P443417786662987442

`Δ[A094215(n+1)+A005206(n)]`
-/

namespace A094217.P443417786662987442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094215 (n + 1) + A005206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094217.P443417786662987442

namespace A094217

/-- `Δ[A094215(n+1)+A005206(n)]` -/
def P443417786662987442.Spec : Prop :=
  ∀ n, P443417786662987442.a n = A094217 (n + 1)

end A094217

/-! ## A094217.P18110933154531819006

`A005614(n)+Δ[A094215(n+1)]`
-/

namespace A094217.P18110933154531819006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 n + (f1 (n + 1) - f1 n)

end

end A094217.P18110933154531819006

namespace A094217

/-- `A005614(n)+Δ[A094215(n+1)]` -/
def P18110933154531819006.Spec : Prop :=
  ∀ n, P18110933154531819006.a n = A094217 (n + 1)

end A094217

/-! ## A094217.P12899241946467879709

`Δ[A094215(n+1)+A019446(n+1)]`
-/

namespace A094217.P12899241946467879709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094215 (n + 1) + A019446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094217.P12899241946467879709

namespace A094217

/-- `Δ[A094215(n+1)+A019446(n+1)]` -/
def P12899241946467879709.Spec : Prop :=
  ∀ n, P12899241946467879709.a n = A094217 (n + 1)

end A094217

/-! ## A094217.P9526640887314635543

`A096270(n+1)+Δ[A094215(n+1)]`
-/

namespace A094217.P9526640887314635543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (n + 1) + (f1 (n + 1) - f1 n)

end

end A094217.P9526640887314635543

namespace A094217

/-- `A096270(n+1)+Δ[A094215(n+1)]` -/
def P9526640887314635543.Spec : Prop :=
  ∀ n, P9526640887314635543.a n = A094217 (n + 1)

end A094217

/-! ## A094217.P9196138423036765091

`Δ[A094215(n+1)+A001950(n+1)]-2`
-/

namespace A094217.P9196138423036765091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094215 (n + 1) + A001950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A094217.P9196138423036765091

namespace A094217

/-- `Δ[A094215(n+1)+A001950(n+1)]-2` -/
def P9196138423036765091.Spec : Prop :=
  ∀ n, P9196138423036765091.a n = A094217 (n + 1)

end A094217

/-! ## A094217.P14605512125620094928

`A001222(ceil(ratio[floor(A094215(n+1)+(n+1)/ϕ)]))`
-/

namespace A094217.P14605512125620094928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094215 (n + 1) : ℝ) + (n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A094217.P14605512125620094928

namespace A094217

/-- `A001222(ceil(ratio[floor(A094215(n+1)+(n+1)/ϕ)]))` -/
def P14605512125620094928.Spec : Prop :=
  ∀ n, P14605512125620094928.a n = A094217 (n + 1)

end A094217

/-! ## A094217.P7240455345813381727

`A001222(Δ[A094215(n+1)+A022342(n+1)])`
-/

namespace A094217.P7240455345813381727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094215 (n + 1) + A022342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A094217.P7240455345813381727

namespace A094217

/-- `A001222(Δ[A094215(n+1)+A022342(n+1)])` -/
def P7240455345813381727.Spec : Prop :=
  ∀ n, P7240455345813381727.a n = A094217 (n + 1)

end A094217

/-! ## A094217.P4199134015188702563

`A007599(Δ[A094215(n+1)+A022342(n+1)])`
-/

namespace A094217.P4199134015188702563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094215 (n + 1) + A022342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007599 (f1 (n + 1) - f1 n).toNat

end

end A094217.P4199134015188702563

namespace A094217

/-- `A007599(Δ[A094215(n+1)+A022342(n+1)])` -/
def P4199134015188702563.Spec : Prop :=
  ∀ n, P4199134015188702563.a n = A094217 (n + 1)

end A094217

/-! ## A094217.P4857539570624886329

`A094215(Δ[A094215(n+1)+A001950(n+1)])`
-/

namespace A094217.P4857539570624886329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094215 (n + 1) + A001950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094215 (f1 (n + 1) - f1 n).toNat

end

end A094217.P4857539570624886329

namespace A094217

/-- `A094215(Δ[A094215(n+1)+A001950(n+1)])` -/
def P4857539570624886329.Spec : Prop :=
  ∀ n, P4857539570624886329.a n = A094217 (n + 1)

end A094217

/-!
# A094218: Number of permutations of length n with exactly 2 occurrences of the pattern 2-13.

The programs for A094218, the canonical program `A094218.P957445581000040458` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094218 has offset 1).

The definition of A094218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094218.P957445581000040458

`(n+1)*A037958(2*(n+1))/2`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A094218

/-- `(n+1)*A037958(2*(n+1))/2` -/
def P957445581000040458.Spec : Prop :=
  ∀ n, P957445581000040458.a n = (A094218 (n + 1) : ℚ)

end A094218

/-! ## A094218.P14607690636667114265

`A004526(A037958(2*(n+1))*(n+1))`
-/

namespace A094218.P14607690636667114265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A037958 (2 * (n + 1)) * (n + 1 : ℤ)).toNat

end

end A094218.P14607690636667114265

namespace A094218

/-- `A004526(A037958(2*(n+1))*(n+1))` -/
def P14607690636667114265.Spec : Prop :=
  ∀ n, P14607690636667114265.a n = A094218 (n + 1)

end A094218

/-! ## A094218.P1319803020192372024

`A002457(n)%A026741(A026034(2*(n+1)))`
-/

namespace A094218.P1319803020192372024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002457 n) (A026741 (A026034 (2 * (n + 1))).toNat)

end

end A094218.P1319803020192372024

namespace A094218

/-- `A002457(n)%A026741(A026034(2*(n+1)))` -/
def P1319803020192372024.Spec : Prop :=
  ∀ n, P1319803020192372024.a n = A094218 (n + 1)

end A094218

/-!
# A094219: Number of permutations of length n with exactly 3 occurrences of the pattern 2-13.

The programs for A094219, there is no canonical definition to state claims against.
-/

/-! ## A094219.P2681339463758397563

`7*A338333(A005962(n+1))`
-/

namespace A094219.P2681339463758397563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A338333 (A005962 (n + 1)).toNat

end

end A094219.P2681339463758397563

/-! ## A094219.P2639587955403276662

`A047240(n+1)*A047274(A208227(n))`
-/

namespace A094219.P2639587955403276662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047240 (n + 1) * A047274 (A208227 n).toNat

end

end A094219.P2639587955403276662

/-! ## A094219.P4914592291646825793

`A326530(A000217(n))*A352895(A000110(n+3))`
-/

namespace A094219.P4914592291646825793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326530 (A000217 n).toNat * A352895 (A000110 (n + 3)).toNat

end

end A094219.P4914592291646825793

/-!
# A094221: 1/detM(n) where M(n) is the n X n matrix m(i,j)=F(i)/F(i+j-1) and F(i)=i-th Fibonacci number.

The programs for A094221, there is no canonical definition to state claims against.
-/

/-! ## A094221.P5600793910735810301

`A062381(n+1)/A003266(n+1)`
-/

namespace A094221.P5600793910735810301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062381 (n + 1) : ℚ) / (A003266 (n + 1) : ℚ)

end

end A094221.P5600793910735810301

/-!
# A094222: a(n+1) = a(n) + (number of distinct prime factors of a(n)) for n>1; a(1)=1, a(2)=2.

The programs for A094222, the canonical program `A094222.P9243178486073536326` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094222 has offset 1).

The definition of A094222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3994 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094222.P11749827460290953926

`A001221(a(n-1))+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A094222.P11749827460290953926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A001221 (a (n - 1)).toNat + a (n - 1)

end

end A094222.P11749827460290953926

namespace A094222

/-- `A001221(a(n-1))+a(n-1)` -/
def P11749827460290953926.Spec : Prop :=
  ∀ n, P11749827460290953926.a n = A094222 (n + 1)

end A094222

/-! ## A094222.P5960385883705895725

`a(n-1)-(A000007(n)-A001221(a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A094222.P5960385883705895725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - (A000007 n - A001221 (a (n - 1)).toNat)

end

end A094222.P5960385883705895725

namespace A094222

/-- `a(n-1)-(A000007(n)-A001221(a(n-1)))` -/
def P5960385883705895725.Spec : Prop :=
  ∀ n, P5960385883705895725.a n = A094222 (n + 1)

end A094222

/-! ## A094222.P9243178486073536326

`A229109(a(n-1))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A094222

/-- `A229109(a(n-1))` -/
def P9243178486073536326.Spec : Prop :=
  ∀ n, P9243178486073536326.a n = A094222 (n + 1)

theorem P9243178486073536326.correct : P9243178486073536326.Spec := by
  intro n
  simp only [A094222, Nat.add_sub_cancel]

end A094222

/-! ## A094222.P1951540828309421345

`A003963(A119993(a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A094222.P1951540828309421345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A003963 (A119993 (a (n - 1)).toNat).toNat

end

end A094222.P1951540828309421345

namespace A094222

/-- `A003963(A119993(a(n-1)))` -/
def P1951540828309421345.Spec : Prop :=
  ∀ n, P1951540828309421345.a n = A094222 (n + 1)

end A094222

/-! ## A094222.P5289094483946166817

`A087802(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A094222.P5289094483946166817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A087802 (a (n - 1)).toNat + a (n - 1)

end

end A094222.P5289094483946166817

namespace A094222

/-- `A087802(a(n-1))+a(n-1)` -/
def P5289094483946166817.Spec : Prop :=
  ∀ n, P5289094483946166817.a n = A094222 (n + 1)

end A094222

/-!
# A094223: Number of binary n X n matrices with all rows (columns) distinct, up to permutation of columns (rows).

The programs for A094223, there is no canonical definition to state claims against.
-/

/-! ## A094223.P5237904035617753905

`A059587(2*n+2^n-1)`
-/

namespace A094223.P5237904035617753905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059587 ((2 * n : ℤ) + ((2 ^ n : ℤ) - 1)).toNat

end

end A094223.P5237904035617753905

/-! ## A094223.P6938468560467410811

`or(A000007(n), A059587(A061761(n)))`
-/

namespace A094223.P6938468560467410811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A059587 (A061761 n).toNat)

end

end A094223.P6938468560467410811

/-! ## A094223.P12984564806910207784

`A059587(A061761(n))+A000007(n+1)`
-/

namespace A094223.P12984564806910207784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059587 (A061761 n).toNat + A000007 (n + 1)

end

end A094223.P12984564806910207784

/-! ## A094223.P16766327194179715900

`A297240(n+1)+A059587(A061761(n))`
-/

namespace A094223.P16766327194179715900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297240 (n + 1) + A059587 (A061761 n).toNat

end

end A094223.P16766327194179715900

/-! ## A094223.P16506063903882768921

`A059587(A061761(n))%A088310(n+1)`
-/

namespace A094223.P16506063903882768921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059587 (A061761 n).toNat) (A088310 (n + 1))

end

end A094223.P16506063903882768921

/-!
# A094226: Let s=(Log[Prime[n]]-Log[n])/Log[n-1], then a(n) = Floor[n*(n-1)^s.

The programs for A094226, there is no canonical definition to state claims against.
-/

/-! ## A094226.P14805037529836120107

`p?[2*n+5]-A039985(A128367(n+1))`
-/

namespace A094226.P14805037529836120107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - A039985 (A128367 (n + 1)).toNat

end

end A094226.P14805037529836120107

/-! ## A094226.P8746927405768576322

`A215848(n+1)-A372573(A001006(n))`
-/

namespace A094226.P8746927405768576322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) - A372573 (A001006 n).toNat

end

end A094226.P8746927405768576322

/-! ## A094226.P13471825167052800606

`A000040(n+3)-A369967(A331702(2*n+1))`
-/

namespace A094226.P13471825167052800606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) - A369967 (A331702 (2 * n + 1)).toNat

end

end A094226.P13471825167052800606

/-! ## A094226.P13631038912704594996

`A000040(n+3)-A286752(A299398(2*(n+2)))`
-/

namespace A094226.P13631038912704594996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) - A286752 (A299398 (2 * (n + 2))).toNat

end

end A094226.P13631038912704594996

/-! ## A094226.P5815257562527156121

`A069675(n+3)-A010060(A099967(n))`
-/

namespace A094226.P5815257562527156121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069675 (n + 3) - A010060 (A099967 n).toNat

end

end A094226.P5815257562527156121

/-!
# A094227: A prime-power sequence based on Gaussian asymptotic function.

The programs for A094227, there is no canonical definition to state claims against.
-/

/-! ## A094227.P7420788168644416408

`A276571(∑[A276571(A004068(n))])`
-/

namespace A094227.P7420788168644416408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A004068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A094227.P7420788168644416408

/-! ## A094227.P10218646215349401878

`A172471(∑[A172471(A006597(n))])`
-/

namespace A094227.P10218646215349401878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A006597 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A094227.P10218646215349401878

/-! ## A094227.P7582384571555304151

`A172471(∑[A172471(A063521(n))])`
-/

namespace A094227.P7582384571555304151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A063521 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A094227.P7582384571555304151

/-! ## A094227.P11766646707926092628

`A052488(n+1)-A072649(A001611(n))`
-/

namespace A094227.P11766646707926092628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052488 (n + 1) - A072649 (A001611 n).toNat

end

end A094227.P11766646707926092628

/-!
# A094228: Let s = -sqrt(2)*sqrt(n)*sqrt(1+I*n/(2*Pi))-n*log(n); then a(n) = floor(Re(-s)).

The programs for A094228, there is no canonical definition to state claims against.
-/

/-! ## A094228.P6538311024272842260

`A000196(∑[A016993(A185549(n))])`
-/

namespace A094228.P6538311024272842260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A185549 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A094228.P6538311024272842260

/-! ## A094228.P10771339583932308187

`A000196((n+1)*A094693(n+1)-A000093(n))`
-/

namespace A094228.P10771339583932308187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((n + 1 : ℤ) * A094693 (n + 1) - A000093 n).toNat

end

end A094228.P10771339583932308187

/-! ## A094228.P6454576658076687695

`floor(∑[log(A331914(3*n+4))])`
-/

namespace A094228.P6454576658076687695
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A331914 (3 * n + 4) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A094228.P6454576658076687695

/-! ## A094228.P4551829878196510551

`A135678(n+1)-A135660(A335433(3*n+2))`
-/

namespace A094228.P4551829878196510551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135678 (n + 1) - A135660 (A335433 (3 * n + 2)).toNat

end

end A094228.P4551829878196510551

/-! ## A094228.P13224203750177690097

`ceil(∑[log(A028799(2*n+1))])`
-/

namespace A094228.P13224203750177690097
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A028799 (2 * n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A094228.P13224203750177690097

/-!
# A094229: Numbers k such that d(k) >= k-th harmonic number H(k) = Sum_{i=1..k} 1/i.

The programs for A094229, the canonical program `A094229.P9195071052336443656` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094229 has offset 1).

The definition of A094229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094229.P9195071052336443656

`lt[n, A002387(A000005(n+1))]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A094229

/-- `lt[n, A002387(A000005(n+1))]+1` -/
def P9195071052336443656.Spec : Prop :=
  ∀ n, (P9195071052336443656.a n : ℤ) = A094229 (n + 1)

theorem P9195071052336443656.correct : P9195071052336443656.Spec := by
  intro n
  simp only [A094229, Nat.add_sub_cancel]

end A094229

/-! ## A094229.P12963086675236156413

`lt[n+1, A272838(A104725(n))]`
-/

namespace A094229.P12963086675236156413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272838 (A104725 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A094229.P12963086675236156413

namespace A094229

/-- `lt[n+1, A272838(A104725(n))]` -/
def P12963086675236156413.Spec : Prop :=
  ∀ n, (P12963086675236156413.a n : ℤ) = A094229 (n + 1)

end A094229

/-! ## A094229.P4183075499234598534

`lt[A250120(n), A311147(A104725(n))²]`
-/

namespace A094229.P4183075499234598534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311147 (A104725 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A094229.P4183075499234598534

namespace A094229

/-- `lt[A250120(n), A311147(A104725(n))²]` -/
def P4183075499234598534.Spec : Prop :=
  ∀ n, (P4183075499234598534.a n : ℤ) = A094229 (n + 1)

end A094229

/-! ## A094229.P15211041623327335686

`lt[A238690(n+1), A311176(A104725(n))]`
-/

namespace A094229.P15211041623327335686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311176 (A104725 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A094229.P15211041623327335686

namespace A094229

/-- `lt[A238690(n+1), A311176(A104725(n))]` -/
def P15211041623327335686.Spec : Prop :=
  ∀ n, (P15211041623327335686.a n : ℤ) = A094229 (n + 1)

end A094229

/-! ## A094229.P11939979833325176214

`lt[A227231(n+5), A051650(A074206(n))]`
-/

namespace A094229.P11939979833325176214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227231 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051650 (A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A094229.P11939979833325176214

namespace A094229

/-- `lt[A227231(n+5), A051650(A074206(n))]` -/
def P11939979833325176214.Spec : Prop :=
  ∀ n, (P11939979833325176214.a n : ℤ) = A094229 (n + 1)

end A094229

/-! ## A094229.P3716590982107972365

`lt[A047471(n+1), A100625(A077462(n))]`
-/

namespace A094229.P3716590982107972365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100625 (A077462 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A094229.P3716590982107972365

namespace A094229

/-- `lt[A047471(n+1), A100625(A077462(n))]` -/
def P3716590982107972365.Spec : Prop :=
  ∀ n, (P3716590982107972365.a n : ℤ) = A094229 (n + 1)

end A094229

/-! ## A094229.P5532526660396780434

`lt[n-atan(n), A074206(n²)]`
-/

namespace A094229.P5532526660396780434
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.arctan (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A094229.P5532526660396780434

namespace A094229

/-- `lt[n-atan(n), A074206(n²)]` -/
def P5532526660396780434.Spec : Prop :=
  ∀ n, (P5532526660396780434.a n : ℤ) = A094229 (n + 1)

end A094229

/-! ## A094229.P1368760865902140018

`lt[n, A074206((n+1)²)+1]+1`
-/

namespace A094229.P1368760865902140018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 ((n + 1) ^ 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A094229.P1368760865902140018

namespace A094229

/-- `lt[n, A074206((n+1)²)+1]+1` -/
def P1368760865902140018.Spec : Prop :=
  ∀ n, (P1368760865902140018.a n : ℤ) = A094229 (n + 1)

end A094229

/-! ## A094229.P4908826183135819801

`lt[n-1, A292504((n+1)²)]+1`
-/

namespace A094229.P4908826183135819801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292504 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A094229.P4908826183135819801

namespace A094229

/-- `lt[n-1, A292504((n+1)²)]+1` -/
def P4908826183135819801.Spec : Prop :=
  ∀ n, (P4908826183135819801.a n : ℤ) = A094229 (n + 1)

end A094229

/-! ## A094229.P6721348775119613800

`lt[A267541(n), A198277(A074206(n))]`
-/

namespace A094229.P6721348775119613800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198277 (A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A094229.P6721348775119613800

namespace A094229

/-- `lt[A267541(n), A198277(A074206(n))]` -/
def P6721348775119613800.Spec : Prop :=
  ∀ n, (P6721348775119613800.a n : ℤ) = A094229 (n + 1)

end A094229

/-!
# A094233: Number of closed walks of length n at a vertex of the cyclic graph on 9 nodes C_9.

The programs for A094233, there is no canonical definition to state claims against.
-/

/-! ## A094233.P11797431974929685190

`A273496(∑[n]/A046601(n+1))`
-/

namespace A094233.P11797431974929685190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273496 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A046601 (n + 1) : ℚ))).toNat

end

end A094233.P11797431974929685190

/-! ## A094233.P15661487751032438028

`gcd(A098960(n+1)%3, A126869(n))`
-/

namespace A094233.P15661487751032438028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A098960 (n + 1)) 3) (A126869 n)

end

end A094233.P15661487751032438028

/-! ## A094233.P2640069210382187829

`A273496(A000217(n)-∑{digits}[n, C(#, 9)])`
-/

namespace A094233.P2640069210382187829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273496 (A000217 n - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose x 9).sum : ℕ) : ℤ)).toNat

end

end A094233.P2640069210382187829

/-! ## A094233.P6478775232039207657

`A273496(∑[n])+A051516(3*n+5)`
-/

namespace A094233.P6478775232039207657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273496 (∑ j ∈ Finset.range (n + 1), f1 j) + A051516 (3 * n + 5)

end

end A094233.P6478775232039207657

/-! ## A094233.P8647478680494203300

`A273496(gcd(∑[n], A273496(3*n+4)))`
-/

namespace A094233.P8647478680494203300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273496 (Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A273496 (3 * n + 4)))

end

end A094233.P8647478680494203300

/-!
# A094234: a(n) = period of terms in quasi-periodic continued fraction expansion of 2^n*tanh(1).

The programs for A094234, there is no canonical definition to state claims against.
-/

/-! ## A094234.P17224743962774970564

`A313766(eq[A313664(n), A313743(n)])`
-/

namespace A094234.P17224743962774970564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313664 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313743 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313766 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A094234.P17224743962774970564

/-! ## A094234.P2014353682197187254

`A356236(3*n+1)+A328979(A129642(n+2))`
-/

namespace A094234.P2014353682197187254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356236 (3 * n + 1) + A328979 (A129642 (n + 2)).toNat

end

end A094234.P2014353682197187254

/-!
# A094235: Number of ways n can be written as the sum of a prime and a palindrome.

The programs for A094235, there is no canonical definition to state claims against.
-/

/-! ## A094235.P12521821323635971456

`A275926(A116362(n+1))+A259847(n+1)`
-/

namespace A094235.P12521821323635971456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275926 (A116362 (n + 1)).toNat + A259847 (n + 1)

end

end A094235.P12521821323635971456

/-!
# A094236: Triangle read by rows: T(n,k) is the number of standard tableaux of shape (n,n,k) (0<=k<=n).

The programs for A094236, there is no canonical definition to state claims against.
-/

/-! ## A094236.P6521126615631832654

`A290252(A087136(n))`
-/

namespace A094236.P6521126615631832654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (A087136 n).toNat

end

end A094236.P6521126615631832654

/-! ## A094236.P10809816924125687541

`A290252(2*A089633(n))`
-/

namespace A094236.P10809816924125687541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (2 * A089633 n).toNat

end

end A094236.P10809816924125687541

/-! ## A094236.P14101587386082144013

`A290252(A081118(n+1)-1)`
-/

namespace A094236.P14101587386082144013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (A081118 (n + 1) - 1).toNat

end

end A094236.P14101587386082144013

/-! ## A094236.P1234108187360375381

`A290252(A043569(n+1)-2)`
-/

namespace A094236.P1234108187360375381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (A043569 (n + 1) - 2).toNat

end

end A094236.P1234108187360375381

/-! ## A094236.P10822049128863578963

`A290252(A086070(n+2)-1)`
-/

namespace A094236.P10822049128863578963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (A086070 (n + 2) - 1).toNat

end

end A094236.P10822049128863578963

/-!
# A094247: Expansion of (phi(-q^5)^2 - phi(-q)^2) / 4 in powers of q where phi() is a Ramanujan theta function.

The programs for A094247, the canonical program `A094247.P8277394697734993563` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094247 has offset 1).

The definition of A094247 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053694, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A094247.P8277394697734993563

`(-1)^n*A053694(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A094247

/-- `(-1)^n*A053694(n)` -/
def P8277394697734993563.Spec : Prop :=
  ∀ n, P8277394697734993563.a n = A094247 (n + 1)

theorem P8277394697734993563.correct : P8277394697734993563.Spec := by
  intro n
  simp only [A094247, Nat.add_sub_cancel]

end A094247

/-! ## A094247.P4481016313768864434

`A113652(A132739(n+1))`
-/

namespace A094247.P4481016313768864434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113652 (A132739 (n + 1)).toNat

end

end A094247.P4481016313768864434

namespace A094247

/-- `A113652(A132739(n+1))` -/
def P4481016313768864434.Spec : Prop :=
  ∀ n, P4481016313768864434.a n = A094247 (n + 1)

end A094247

/-! ## A094247.P6493869194417838219

`A053694(n)/A033999(n)`
-/

namespace A094247.P6493869194417838219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053694 n : ℚ) / (A033999 n : ℚ)

end

end A094247.P6493869194417838219

namespace A094247

/-- `A053694(n)/A033999(n)` -/
def P6493869194417838219.Spec : Prop :=
  ∀ n, P6493869194417838219.a n = (A094247 (n + 1) : ℚ)

end A094247

/-! ## A094247.P13570083206195493086

`A113652(n+1)/A055457(n+1)`
-/

namespace A094247.P13570083206195493086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113652 (n + 1) : ℚ) / (A055457 (n + 1) : ℚ)

end

end A094247.P13570083206195493086

namespace A094247

/-- `A113652(n+1)/A055457(n+1)` -/
def P13570083206195493086.Spec : Prop :=
  ∀ n, P13570083206195493086.a n = (A094247 (n + 1) : ℚ)

end A094247

/-! ## A094247.P17689034341138843778

`∑{d}[n+1, A033999(#-1)*A185276((n+1)/#)]`
-/

namespace A094247.P17689034341138843778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033999 (d - 1) * A185276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A094247.P17689034341138843778

namespace A094247

/-- `∑{d}[n+1, A033999(#-1)*A185276((n+1)/#)]` -/
def P17689034341138843778.Spec : Prop :=
  ∀ n, P17689034341138843778.a n = A094247 (n + 1)

end A094247

/-! ## A094247.P10700928181499538157

`A053694(n)*A101455(2*n+1)`
-/

namespace A094247.P10700928181499538157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053694 n * A101455 (2 * n + 1)

end

end A094247.P10700928181499538157

namespace A094247

/-- `A053694(n)*A101455(2*n+1)` -/
def P10700928181499538157.Spec : Prop :=
  ∀ n, P10700928181499538157.a n = A094247 (n + 1)

end A094247

/-! ## A094247.P16106504420243938875

`A053694(n)*A164677(2*n+1)`
-/

namespace A094247.P16106504420243938875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053694 n * A164677 (2 * n + 1)

end

end A094247.P16106504420243938875

namespace A094247

/-- `A053694(n)*A164677(2*n+1)` -/
def P16106504420243938875.Spec : Prop :=
  ∀ n, P16106504420243938875.a n = A094247 (n + 1)

end A094247

/-! ## A094247.P17618715435156241541

`A164677(2*n+1)/A164677(2*(n+1))*A035165(2*(n+1))`
-/

namespace A094247.P17618715435156241541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164677 (2 * n + 1) : ℚ) / (A164677 (2 * (n + 1)) : ℚ) * (A035165 (2 * (n + 1)) : ℚ)

end

end A094247.P17618715435156241541

namespace A094247

/-- `A164677(2*n+1)/A164677(2*(n+1))*A035165(2*(n+1))` -/
def P17618715435156241541.Spec : Prop :=
  ∀ n, P17618715435156241541.a n = (A094247 (n + 1) : ℚ)

end A094247

/-!
# A094248: Consider 3 X 3 matrix M = [0 1 0 / 0 0 1 / 5 2 0]; a(n) = the center term in M^n * [1 1 1].

The programs for A094248, the canonical program `A094248.P17996102631563711404` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094248 has offset 1).

The definition of A094248 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094248.P17996102631563711404

`2*a(n-2)+5*a(n-3)` with `a(0)=1, a(1)=7, a(2)=7`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094248

/-- `2*a(n-2)+5*a(n-3)` -/
def P17996102631563711404.Spec : Prop :=
  ∀ n, (P17996102631563711404.a n : ℤ) = A094248 (n + 1)

theorem P17996102631563711404.correct : P17996102631563711404.Spec := by
  intro n
  simp only [A094248, Nat.add_sub_cancel]

end A094248

/-! ## A094248.P8639763691670007897

`ogf((1+7x+5x^2)/(1-2x^2-5x^3))`
-/

namespace A094248.P8639763691670007897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, 5] [1, 0, -2, -5] n

end

end A094248.P8639763691670007897

namespace A094248

/-- `ogf((1+7x+5x^2)/(1-2x^2-5x^3))` -/
def P8639763691670007897.Spec : Prop :=
  ∀ n, P8639763691670007897.a n = A094248 (n + 1)

end A094248

/-!
# A094250: Array, A(n, k) = ((n+2)^(k+1) + (k+1)*n*(n+1) - 1)/(n+1)^2, read by antidiagonals.

The programs for A094250, there is no canonical definition to state claims against.
-/

/-! ## A094250.P12595252882947623323

`A087845(2*A208918(n+1))`
-/

namespace A094250.P12595252882947623323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087845 (2 * A208918 (n + 1)).toNat

end

end A094250.P12595252882947623323

/-! ## A094250.P7895822839575927789

`A059268(n)+A007814(A319511(n))`
-/

namespace A094250.P7895822839575927789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + A007814 (A319511 n).toNat

end

end A094250.P7895822839575927789

/-! ## A094250.P14396910877886339517

`or(A259325(n), A321396(A300126(n)))`
-/

namespace A094250.P14396910877886339517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A259325 n) (A321396 (A300126 n).toNat)

end

end A094250.P14396910877886339517

/-! ## A094250.P13701459146720139049

`or(A259325(n), A335489(A043318(n+1)))`
-/

namespace A094250.P13701459146720139049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A259325 n) (A335489 (A043318 (n + 1)).toNat)

end

end A094250.P13701459146720139049

/-! ## A094250.P5413900590738481651

`A217839(n+1)-A162511(A082582(n))`
-/

namespace A094250.P5413900590738481651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217839 (n + 1) - A162511 (A082582 n).toNat

end

end A094250.P5413900590738481651

/-!
# A094251: Number of one-element transitions between all set partitions of n labeled elements.

The programs for A094251, there is no canonical definition to state claims against.
-/

/-! ## A094251.P10495221298574297606

`n*A002372(A090351(n))`
-/

namespace A094251.P10495221298574297606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002372 (A090351 n).toNat

end

end A094251.P10495221298574297606

/-! ## A094251.P799706855770253947

`n*A126257(A125187(n))`
-/

namespace A094251.P799706855770253947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A126257 (A125187 n).toNat

end

end A094251.P799706855770253947

/-!
# A094252: a(n) = partition(n) mod prime(n).

The programs for A094252, there is no canonical definition to state claims against.
-/

/-! ## A094252.P6449696960968183001

`A000041(n+1)%Δ[A007504(n)]`
-/

namespace A094252.P6449696960968183001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (n + 1)) (f1 (n + 1) - f1 n)

end

end A094252.P6449696960968183001

/-! ## A094252.P10409551126244137967

`(A000065(n+1)+1)%A000040(n+1)`
-/

namespace A094252.P10409551126244137967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000065 (n + 1) + 1) (A000040 (n + 1))

end

end A094252.P10409551126244137967

/-! ## A094252.P14732741415733961034

`(∑[A002865(n+1)]+1)%A000040(n+1)`
-/

namespace A094252.P14732741415733961034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 1) (A000040 (n + 1))

end

end A094252.P14732741415733961034

/-! ## A094252.P15731729741944586657

`A000041(A000027(n+1))%A008578(n+2)`
-/

namespace A094252.P15731729741944586657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A000027 (n + 1)).toNat) (A008578 (n + 2))

end

end A094252.P15731729741944586657

/-! ## A094252.P9643604203665630930

`A000041(A028310(n+1))%A008578(n+2)`
-/

namespace A094252.P9643604203665630930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A028310 (n + 1)).toNat) (A008578 (n + 2))

end

end A094252.P9643604203665630930

/-! ## A094252.P1461937578618411288

`Δ[A000070(n)]%A000040(n+1)`
-/

namespace A094252.P1461937578618411288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000040 (n + 1))

end

end A094252.P1461937578618411288

/-! ## A094252.P2389074808878701511

`record[A035363(n)]%A000040(n+1)`
-/

namespace A094252.P2389074808878701511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000040 (n + 1))

end

end A094252.P2389074808878701511

/-! ## A094252.P7572964913089145624

`record[A183568(n)]%p?[A052485(n+1)]`
-/

namespace A094252.P7572964913089145624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A094252.P7572964913089145624

/-! ## A094252.P12414829994867423101

`record[A182703(n+1)]%A000040(n+1)`
-/

namespace A094252.P12414829994867423101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000040 (n + 1))

end

end A094252.P12414829994867423101

/-! ## A094252.P6176753721726410377

`record[A027293(n+1)]%p?[A005180(n+1)]`
-/

namespace A094252.P6176753721726410377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027293 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A094252.P6176753721726410377

/-!
# A094253: Let M be the 3 X 3 Matrix [ -4 4 8 / 1 0 0 / 0 1 0], a(n) = absolute value of the center term of M^n * [1 1 1].

The programs for A094253, the canonical program `A094253.P14576154399133719393` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094253 has offset 1).

The definition of A094253 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094253.P14576154399133719393

`4*a(n-1)+4*a(n-2)-8*a(n-3)` with `a(0)=1, a(1)=8, a(2)=20, a(3)=120`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094253

/-- `4*a(n-1)+4*a(n-2)-8*a(n-3)` -/
def P14576154399133719393.Spec : Prop :=
  ∀ n, P14576154399133719393.a n = A094253 (n + 1)

theorem P14576154399133719393.correct : P14576154399133719393.Spec := by
  intro n
  simp only [A094253, Nat.add_sub_cancel]

end A094253

/-! ## A094253.P6179422390364902680

`abs(A000079(n)*A321174(n))`
-/

namespace A094253.P6179422390364902680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n * A321174 n|

end

end A094253.P6179422390364902680

namespace A094253

/-- `abs(A000079(n)*A321174(n))` -/
def P6179422390364902680.Spec : Prop :=
  ∀ n, P6179422390364902680.a n = A094253 (n + 1)

end A094253

/-! ## A094253.P14564330717548680873

`abs(∑[A011782(n)]*A321174(n))`
-/

namespace A094253.P14564330717548680873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ j ∈ Finset.range (n + 1), f1 j) * A321174 n|

end

end A094253.P14564330717548680873

namespace A094253

/-- `abs(∑[A011782(n)]*A321174(n))` -/
def P14564330717548680873.Spec : Prop :=
  ∀ n, P14564330717548680873.a n = A094253 (n + 1)

end A094253

/-! ## A094253.P6287048952291462241

`abs(Δ[A000051(n)]*A321174(n))`
-/

namespace A094253.P6287048952291462241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A321174 n|

end

end A094253.P6287048952291462241

namespace A094253

/-- `abs(Δ[A000051(n)]*A321174(n))` -/
def P6287048952291462241.Spec : Prop :=
  ∀ n, P6287048952291462241.a n = A094253 (n + 1)

end A094253

/-! ## A094253.P7394261883601439701

`abs(A011782(n+1)*A321174(n))`
-/

namespace A094253.P7394261883601439701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 (n + 1) * A321174 n|

end

end A094253.P7394261883601439701

namespace A094253

/-- `abs(A011782(n+1)*A321174(n))` -/
def P7394261883601439701.Spec : Prop :=
  ∀ n, P7394261883601439701.a n = A094253 (n + 1)

end A094253

/-! ## A094253.P72620188076437469

`lcm(A000079(n)*A321174(n), A000034(n))`
-/

namespace A094253.P72620188076437469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n * A321174 n) (A000034 n)

end

end A094253.P72620188076437469

namespace A094253

/-- `lcm(A000079(n)*A321174(n), A000034(n))` -/
def P72620188076437469.Spec : Prop :=
  ∀ n, (P72620188076437469.a n : ℤ) = A094253 (n + 1)

end A094253

/-!
# A094254: Let M be the 3 X 3 matrix [ 6 0 -8 / 1 0 0 / 0 1 0]. Then M^n * [1 1 1] = [a(n-1), a(n), a(n+1)].

The programs for A094254, there is no canonical definition to state claims against.
-/

/-! ## A094254.P9386356795950687212

`A193909(∑[lcm(2, A002062(n))])`
-/

namespace A094254.P9386356795950687212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A002062 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193909 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A094254.P9386356795950687212

/-!
# A094255: Let M = the 3 X 3 matrix [ 0 1 0 / 0 0 1 / -1, 3*sqrt(3), 3]. M^n * [1 1 1] = [ p q r]; then a(n-1), a(n), a(n+1) = floor p, q, r, respectively.

The programs for A094255, there is no canonical definition to state claims against.
-/

/-! ## A094255.P16821852455101061238

`A251632(A014260(2*n))`
-/

namespace A094255.P16821852455101061238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251632 (A014260 (2 * n)).toNat

end

end A094255.P16821852455101061238

/-! ## A094255.P16071203704899393885

`A130446(A319646(2*n+1))`
-/

namespace A094255.P16071203704899393885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A319646 (2 * n + 1)).toNat

end

end A094255.P16071203704899393885

/-!
# A094256: Expansion of x / ( (x-1)*(x^3 - 9*x^2 + 6*x - 1) ).

The programs for A094256, the canonical program `A094256.P9017713859771245202` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094256 has offset 1).

The definition of A094256 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-7x+15x^2-10x^3+x^4))` (program `A094256.P9017713859771245202`, by `A094256.P9017713859771245202.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094256.P9017713859771245202

`ogf(1/(1-7x+15x^2-10x^3+x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094256

/-- `ogf(1/(1-7x+15x^2-10x^3+x^4))` -/
def P9017713859771245202.Spec : Prop :=
  ∀ n, P9017713859771245202.a n = A094256 (n + 1)

theorem P9017713859771245202.correct : P9017713859771245202.Spec := by
  intro n
  simp only [A094256, Nat.add_sub_cancel]

end A094256

/-! ## A094256.P10722657335068819779

`7*a(n-1)-15*a(n-2)+10*a(n-3)-a(n-4)` with `a(0)=1, a(1)=7, a(2)=34, a(3)=143`
-/

namespace A094256.P10722657335068819779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 34, 143] fun n a =>
  7 * a (n - 1) - 15 * a (n - 2) + 10 * a (n - 3) - a (n - 4)

end

end A094256.P10722657335068819779

namespace A094256

/-- `7*a(n-1)-15*a(n-2)+10*a(n-3)-a(n-4)` -/
def P10722657335068819779.Spec : Prop :=
  ∀ n, P10722657335068819779.a n = A094256 (n + 1)

end A094256

/-! ## A094256.P17806987013059132846

`∑[A094829(n+2)]`
-/

namespace A094256.P17806987013059132846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094829 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094256.P17806987013059132846

namespace A094256

/-- `∑[A094829(n+2)]` -/
def P17806987013059132846.Spec : Prop :=
  ∀ n, P17806987013059132846.a n = A094256 (n + 1)

end A094256

/-! ## A094256.P5645844626157094016

`A187495(6*(n+3))`
-/

namespace A094256.P5645844626157094016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187495 (6 * (n + 3))

end

end A094256.P5645844626157094016

namespace A094256

/-- `A187495(6*(n+3))` -/
def P5645844626157094016.Spec : Prop :=
  ∀ n, P5645844626157094016.a n = A094256 (n + 1)

end A094256

/-! ## A094256.P13804896239219403755

`∑[∑[A094834(n+1)]]`
-/

namespace A094256.P13804896239219403755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094834 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094256.P13804896239219403755

namespace A094256

/-- `∑[∑[A094834(n+1)]]` -/
def P13804896239219403755.Spec : Prop :=
  ∀ n, P13804896239219403755.a n = A094256 (n + 1)

end A094256

/-! ## A094256.P13460597287747557122

`∑[A052931(2*n+3)]`
-/

namespace A094256.P13460597287747557122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052931 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094256.P13460597287747557122

namespace A094256

/-- `∑[A052931(2*n+3)]` -/
def P13460597287747557122.Spec : Prop :=
  ∀ n, P13460597287747557122.a n = A094256 (n + 1)

end A094256

/-! ## A094256.P3347064842979031197

`A187496(6*(n+2)+3)`
-/

namespace A094256.P3347064842979031197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187496 (6 * (n + 2) + 3)

end

end A094256.P3347064842979031197

namespace A094256

/-- `A187496(6*(n+2)+3)` -/
def P3347064842979031197.Spec : Prop :=
  ∀ n, P3347064842979031197.a n = A094256 (n + 1)

end A094256

/-! ## A094256.P12388636528107444260

`∑[∑[A188048(2*n+3)]]`
-/

namespace A094256.P12388636528107444260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094256.P12388636528107444260

namespace A094256

/-- `∑[∑[A188048(2*n+3)]]` -/
def P12388636528107444260.Spec : Prop :=
  ∀ n, P12388636528107444260.a n = A094256 (n + 1)

end A094256

/-! ## A094256.P11815283041934034752

`∑[A187497(3*2*(n+2))]`
-/

namespace A094256.P11815283041934034752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187497 (3 * (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094256.P11815283041934034752

namespace A094256

/-- `∑[A187497(3*2*(n+2))]` -/
def P11815283041934034752.Spec : Prop :=
  ∀ n, P11815283041934034752.a n = A094256 (n + 1)

end A094256

/-! ## A094256.P5286115111550394242

`∑[record[A052931(A004273(n))]]`
-/

namespace A094256.P5286115111550394242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052931 (A004273 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094256.P5286115111550394242

namespace A094256

/-- `∑[record[A052931(A004273(n))]]` -/
def P5286115111550394242.Spec : Prop :=
  ∀ n, P5286115111550394242.a n = A094256 (n + 1)

end A094256

/-! ## A094256.P4365129902696736895

`∑[record[A052931(A006257(n))]]`
-/

namespace A094256.P4365129902696736895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052931 (A006257 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094256.P4365129902696736895

namespace A094256

/-- `∑[record[A052931(A006257(n))]]` -/
def P4365129902696736895.Spec : Prop :=
  ∀ n, P4365129902696736895.a n = A094256 (n + 1)

end A094256

/-! ## A094256.P6090631159743901933

`2*A094829(n+2)-A094828(n+2)`
-/

namespace A094256.P6090631159743901933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094829 (n + 2) - A094828 (n + 2)

end

end A094256.P6090631159743901933

namespace A094256

/-- `2*A094829(n+2)-A094828(n+2)` -/
def P6090631159743901933.Spec : Prop :=
  ∀ n, P6090631159743901933.a n = A094256 (n + 1)

end A094256

/-! ## A094256.P8439874315010591150

`∑[∑[∑[A214779(2*n+1)]]]`
-/

namespace A094256.P8439874315010591150
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214779 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094256.P8439874315010591150

namespace A094256

/-- `∑[∑[∑[A214779(2*n+1)]]]` -/
def P8439874315010591150.Spec : Prop :=
  ∀ n, P8439874315010591150.a n = A094256 (n + 1)

end A094256

/-! ## A094256.P7627167028766380771

`A005023(n+1)-A094829(n+3)`
-/

namespace A094256.P7627167028766380771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005023 (n + 1) - A094829 (n + 3)

end

end A094256.P7627167028766380771

namespace A094256

/-- `A005023(n+1)-A094829(n+3)` -/
def P7627167028766380771.Spec : Prop :=
  ∀ n, P7627167028766380771.a n = A094256 (n + 1)

end A094256

/-! ## A094256.P13910711439555132946

`A094834(n+2)-A094827(n+2)`
-/

namespace A094256.P13910711439555132946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094834 (n + 2) - A094827 (n + 2)

end

end A094256.P13910711439555132946

namespace A094256

/-- `A094834(n+2)-A094827(n+2)` -/
def P13910711439555132946.Spec : Prop :=
  ∀ n, P13910711439555132946.a n = A094256 (n + 1)

end A094256

/-! ## A094256.P4052926780644932960

`A094829(n+3)-A094828(n+3)`
-/

namespace A094256.P4052926780644932960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094829 (n + 3) - A094828 (n + 3)

end

end A094256.P4052926780644932960

namespace A094256

/-- `A094829(n+3)-A094828(n+3)` -/
def P4052926780644932960.Spec : Prop :=
  ∀ n, P4052926780644932960.a n = A094256 (n + 1)

end A094256

/-! ## A094256.P17318764851894881245

`A094833(n+3)-A094827(n+3)`
-/

namespace A094256.P17318764851894881245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094833 (n + 3) - A094827 (n + 3)

end

end A094256.P17318764851894881245

namespace A094256

/-- `A094833(n+3)-A094827(n+3)` -/
def P17318764851894881245.Spec : Prop :=
  ∀ n, P17318764851894881245.a n = A094256 (n + 1)

end A094256

/-! ## A094256.P10444100694501757126

`A094829(n+3)-(A094829(n+2)+A094827(n+2))`
-/

namespace A094256.P10444100694501757126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094829 (n + 3) - (A094829 (n + 2) + A094827 (n + 2))

end

end A094256.P10444100694501757126

namespace A094256

/-- `A094829(n+3)-(A094829(n+2)+A094827(n+2))` -/
def P10444100694501757126.Spec : Prop :=
  ∀ n, P10444100694501757126.a n = A094256 (n + 1)

end A094256

/-! ## A094256.P3739358897246845963

`A094855(n+3)-A094832(n+3)`
-/

namespace A094256.P3739358897246845963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094855 (n + 3) - A094832 (n + 3)

end

end A094256.P3739358897246845963

namespace A094256

/-- `A094855(n+3)-A094832(n+3)` -/
def P3739358897246845963.Spec : Prop :=
  ∀ n, P3739358897246845963.a n = A094256 (n + 1)

end A094256

/-!
# A094258: a(1) = 1, a(n+1) = n*n! for n >= 1.

The programs for A094258, there is no canonical definition to state claims against.
-/

/-! ## A094258.P18085631260971596308

`Δ[lcm(n!, dr(n))]`
-/

namespace A094258.P18085631260971596308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (Nat.factorial n) (SequenceMachineLib.digitalRoot (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A094258.P18085631260971596308

/-! ## A094258.P1737485736088670097

`Δ[n!]+floor(acot(n))`
-/

namespace A094258.P1737485736088670097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A094258.P1737485736088670097

/-! ## A094258.P8615462805288137716

`Δ[n!-floor(acot(n))]`
-/

namespace A094258.P8615462805288137716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094258.P8615462805288137716

/-! ## A094258.P1896858382700862727

`Δ[ceil(n!-acot(n))]`
-/

namespace A094258.P1896858382700862727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial n : ℝ) - SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094258.P1896858382700862727

/-! ## A094258.P18319633480345164608

`Δ[n!]^floor(atan(n))`
-/

namespace A094258.P18319633480345164608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A094258.P18319633480345164608

/-! ## A094258.P2576941498709706879

`gcd(floor(acot(n)), Δ[n!])`
-/

namespace A094258.P2576941498709706879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A094258.P2576941498709706879

/-! ## A094258.P10215725927849310071

`Δ[C(n!, ceil(acot(n)))]`
-/

namespace A094258.P10215725927849310071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial n) ⌈SequenceMachineLib.acot (n : ℝ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A094258.P10215725927849310071

/-! ## A094258.P13297594245957559328

`Δ[n*abs(1-n)!]`
-/

namespace A094258.P13297594245957559328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A094258.P13297594245957559328

/-! ## A094258.P8115659063151798075

`gcd(n, ∏{d}[n, #])*n!`
-/

namespace A094258.P8115659063151798075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∏ d ∈ Nat.divisors (f1 n), d) * Nat.factorial n

end

end A094258.P8115659063151798075

/-! ## A094258.P17368429014725539158

`Δ[n*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A094258.P17368429014725539158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A094258.P17368429014725539158

/-!
# A094259: Expansion of g.f.: (1-5*x)/((1-6*x)*(1-x)^2).

The programs for A094259, the canonical program `A094259.P6053762166966268874` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094259 has offset 0).

The definition of A094259 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-5x)/(1-8x+13x^2-6x^3))` (program `A094259.P6053762166966268874`, by `A094259.P6053762166966268874.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094259.P6053762166966268874

`ogf((1-5x)/(1-8x+13x^2-6x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094259

/-- `ogf((1-5x)/(1-8x+13x^2-6x^3))` -/
def P6053762166966268874.Spec : Prop :=
  ∀ n, P6053762166966268874.a n = A094259 n

theorem P6053762166966268874.correct : P6053762166966268874.Spec := by
  intro n
  simp only [A094259]

end A094259

/-! ## A094259.P1860790350062447957

`(6^(n+1)+20*n+19)/25`
-/

namespace A094259.P1860790350062447957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 ^ (n + 1) + 20 * n + 19 : ℚ) / 25

end

end A094259.P1860790350062447957

namespace A094259

/-- `(6^(n+1)+20*n+19)/25` -/
def P1860790350062447957.Spec : Prop :=
  ∀ n, P1860790350062447957.a n = (A094259 n : ℚ)

end A094259

/-! ## A094259.P9905526253722125770

`∑[6*a(n-1)-4]` with `a(0)=1`
-/

namespace A094259.P9905526253722125770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  6 * f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094259.P9905526253722125770

namespace A094259

/-- `∑[6*a(n-1)-4]` -/
def P9905526253722125770.Spec : Prop :=
  ∀ n, P9905526253722125770.a n = A094259 n

end A094259

/-! ## A094259.P3119724479645337139

`∑[a(n-1)+6^(n-1)]` with `a(0)=1`
-/

namespace A094259.P3119724479645337139
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (6 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094259.P3119724479645337139

namespace A094259

/-- `∑[a(n-1)+6^(n-1)]` -/
def P3119724479645337139.Spec : Prop :=
  ∀ n, P3119724479645337139.a n = (A094259 n : ℚ)

end A094259

/-! ## A094259.P4685517861823084998

`6*a(n-1)+1-4*n` with `a(0)=1`
-/

namespace A094259.P4685517861823084998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) + 1 - (4 * n : ℤ)

end

end A094259.P4685517861823084998

namespace A094259

/-- `6*a(n-1)+1-4*n` -/
def P4685517861823084998.Spec : Prop :=
  ∀ n, P4685517861823084998.a n = A094259 n

end A094259

/-! ## A094259.P1673875060168845232

`6*a(n-1)-record[xor(3, n-1)]` with `a(0)=1`
-/

namespace A094259.P1673875060168845232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094259.P1673875060168845232

namespace A094259

/-- `6*a(n-1)-record[xor(3, n-1)]` -/
def P1673875060168845232.Spec : Prop :=
  ∀ n, P1673875060168845232.a n = A094259 n

end A094259

/-! ## A094259.P9758642239096735917

`1-2*(2*(n-a(n-1))-a(n-1))` with `a(0)=1`
-/

namespace A094259.P9758642239096735917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - 2 * (2 * ((n : ℤ) - a (n - 1)) - a (n - 1))

end

end A094259.P9758642239096735917

namespace A094259

/-- `1-2*(2*(n-a(n-1))-a(n-1))` -/
def P9758642239096735917.Spec : Prop :=
  ∀ n, P9758642239096735917.a n = A094259 n

end A094259

/-! ## A094259.P8543380302083569426

`∑[A047851(n)]`
-/

namespace A094259.P8543380302083569426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094259.P8543380302083569426

namespace A094259

/-- `∑[A047851(n)]` -/
def P8543380302083569426.Spec : Prop :=
  ∀ n, P8543380302083569426.a n = A094259 n

end A094259

/-! ## A094259.P16356471645788781411

`∑[A003464(n)]+1+n`
-/

namespace A094259.P16356471645788781411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A094259.P16356471645788781411

namespace A094259

/-- `∑[A003464(n)]+1+n` -/
def P16356471645788781411.Spec : Prop :=
  ∀ n, P16356471645788781411.a n = A094259 n

end A094259

/-! ## A094259.P17848470875050517290

`∑[∑[a(n-1)²/a(n-2)]]` with `a(0)=1, a(1)=1, a(2)=6`
-/

namespace A094259.P17848470875050517290
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 6] fun n f2 =>
  f2 (n - 1) ^ 2 / f2 (n - 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094259.P17848470875050517290

namespace A094259

/-- `∑[∑[a(n-1)²/a(n-2)]]` -/
def P17848470875050517290.Spec : Prop :=
  ∀ n, P17848470875050517290.a n = (A094259 n : ℚ)

end A094259

/-!
# A094260: Sum of next n numbers/n if n divides the sum else n times the sum of next n numbers.

The programs for A094260, the canonical program `A094260.P5203913651863192196` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094260 has offset 1).

The definition of A094260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094260.P5203913651863192196

`lcm((n+1)²+1, ∑[2*or(1, n)])/2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094260

/-- `lcm((n+1)²+1, ∑[2*or(1, n)])/2` -/
def P5203913651863192196.Spec : Prop :=
  ∀ n, P5203913651863192196.a n = (A094260 (n + 1) : ℚ)

end A094260

/-! ## A094260.P8060009665786621348

`C(A228564(n+1), A000034(n))`
-/

namespace A094260.P8060009665786621348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A228564 (n + 1)).toNat (A000034 n).toNat

end

end A094260.P8060009665786621348

namespace A094260

/-- `C(A228564(n+1), A000034(n))` -/
def P8060009665786621348.Spec : Prop :=
  ∀ n, (P8060009665786621348.a n : ℤ) = A094260 (n + 1)

end A094260

/-! ## A094260.P962505167202359765

`C(A228564(n+1), A066830(n+1))`
-/

namespace A094260.P962505167202359765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A228564 (n + 1)).toNat (A066830 (n + 1)).toNat

end

end A094260.P962505167202359765

namespace A094260

/-- `C(A228564(n+1), A066830(n+1))` -/
def P962505167202359765.Spec : Prop :=
  ∀ n, (P962505167202359765.a n : ℤ) = A094260 (n + 1)

end A094260

/-! ## A094260.P1907458078234559127

`A037270(n+1)/A009001(n+1)²`
-/

namespace A094260.P1907458078234559127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037270 (n + 1) : ℚ) / (A009001 (n + 1) ^ 2 : ℚ)

end

end A094260.P1907458078234559127

namespace A094260

/-- `A037270(n+1)/A009001(n+1)²` -/
def P1907458078234559127.Spec : Prop :=
  ∀ n, P1907458078234559127.a n = (A094260 (n + 1) : ℚ)

end A094260

/-! ## A094260.P2387227778924784516

`C(A243883(2*(n+1)), A000034(n))`
-/

namespace A094260.P2387227778924784516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A243883 (2 * (n + 1))).toNat (A000034 n).toNat

end

end A094260.P2387227778924784516

namespace A094260

/-- `C(A243883(2*(n+1)), A000034(n))` -/
def P2387227778924784516.Spec : Prop :=
  ∀ n, (P2387227778924784516.a n : ℤ) = A094260 (n + 1)

end A094260

/-! ## A094260.P16405526395131662667

`lcm(A000982(n+1), A243883(2*(n+1)))`
-/

namespace A094260.P16405526395131662667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000982 (n + 1)) (A243883 (2 * (n + 1)))

end

end A094260.P16405526395131662667

namespace A094260

/-- `lcm(A000982(n+1), A243883(2*(n+1)))` -/
def P16405526395131662667.Spec : Prop :=
  ∀ n, (P16405526395131662667.a n : ℤ) = A094260 (n + 1)

end A094260

/-! ## A094260.P7941823586130893790

`C(A000265((n+1)²+1), A176895(2*n))`
-/

namespace A094260.P7941823586130893790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000265 ((n + 1) ^ 2 + 1)).toNat (A176895 (2 * n)).toNat

end

end A094260.P7941823586130893790

namespace A094260

/-- `C(A000265((n+1)²+1), A176895(2*n))` -/
def P7941823586130893790.Spec : Prop :=
  ∀ n, (P7941823586130893790.a n : ℤ) = A094260 (n + 1)

end A094260

/-! ## A094260.P2143886135513354776

`gcd(A000217((n+1)²), A000982(A193356(n+1)))`
-/

namespace A094260.P2143886135513354776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 ((n + 1) ^ 2)) (A000982 (A193356 (n + 1)).toNat)

end

end A094260.P2143886135513354776

namespace A094260

/-- `gcd(A000217((n+1)²), A000982(A193356(n+1)))` -/
def P2143886135513354776.Spec : Prop :=
  ∀ n, (P2143886135513354776.a n : ℤ) = A094260 (n + 1)

end A094260

/-! ## A094260.P7698439024775104225

`A000217((n+1)²)/A093178((n+1)²)`
-/

namespace A094260.P7698439024775104225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 ((n + 1) ^ 2) : ℚ) / (A093178 ((n + 1) ^ 2) : ℚ)

end

end A094260.P7698439024775104225

namespace A094260

/-- `A000217((n+1)²)/A093178((n+1)²)` -/
def P7698439024775104225.Spec : Prop :=
  ∀ n, P7698439024775104225.a n = (A094260 (n + 1) : ℚ)

end A094260

/-! ## A094260.P14006061089430020096

`lcm(A228564(n+1), A300076((n+1)²))`
-/

namespace A094260.P14006061089430020096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A228564 (n + 1)) (A300076 ((n + 1) ^ 2))

end

end A094260.P14006061089430020096

namespace A094260

/-- `lcm(A228564(n+1), A300076((n+1)²))` -/
def P14006061089430020096.Spec : Prop :=
  ∀ n, (P14006061089430020096.a n : ℤ) = A094260 (n + 1)

end A094260

/-!
# A094261: a(n) = n(n-1)(n-3)(n-6)...(n-t), where t is the largest triangular number less than n; number of factors in the product is ceiling((sqrt(1+8*n)-1)/2).

The programs for A094261, there is no canonical definition to state claims against.
-/

/-! ## A094261.P3168774374677662957

`A065033(A007661(n+1)*2*n)`
-/

namespace A094261.P3168774374677662957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A007661 (n + 1) * (2 * n : ℤ)).toNat

end

end A094261.P3168774374677662957

/-! ## A094261.P6812762893002880666

`A123108(A007661(n+1)*2*n)`
-/

namespace A094261.P6812762893002880666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A007661 (n + 1) * (2 * n : ℤ)).toNat

end

end A094261.P6812762893002880666

/-! ## A094261.P15738981769247936116

`A007661(n+1)*A081604(A007051(n))`
-/

namespace A094261.P15738981769247936116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007661 (n + 1) * A081604 (A007051 n).toNat

end

end A094261.P15738981769247936116

/-! ## A094261.P3622019977360035203

`A028310(A007661(n+1)*A341909(n))`
-/

namespace A094261.P3622019977360035203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A007661 (n + 1) * A341909 n).toNat

end

end A094261.P3622019977360035203

/-! ## A094261.P7743674846420296330

`A007661(n+1)%A287956(3*n+2)*A028310(n)`
-/

namespace A094261.P7743674846420296330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007661 (n + 1)) (A287956 (3 * n + 2)) * A028310 n

end

end A094261.P7743674846420296330

/-!
# A094263: Triangle read by rows: for 1 <= k <= n, a(n, k) = n^k mod k.

The programs for A094263, the canonical program `A094263.P15579787924222318270` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094263 has offset 1).

The definition of A094263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094263.P15295269505015274066

`A114448(A083920(n)+1)`
-/

namespace A094263.P15295269505015274066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114448 (A083920 n + 1).toNat

end

end A094263.P15295269505015274066

namespace A094263

/-- `A114448(A083920(n)+1)` -/
def P15295269505015274066.Spec : Prop :=
  ∀ n, P15295269505015274066.a n = A094263 (n + 1)

end A094263

/-! ## A094263.P763595628893485300

`A114448(A122797(n+1))`
-/

namespace A094263.P763595628893485300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114448 (A122797 (n + 1)).toNat

end

end A094263.P763595628893485300

namespace A094263

/-- `A114448(A122797(n+1))` -/
def P763595628893485300.Spec : Prop :=
  ∀ n, P763595628893485300.a n = A094263 (n + 1)

end A094263

/-! ## A094263.P15579787924222318270

`A075363(n+1)%A128227(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A094263

/-- `A075363(n+1)%A128227(n)` -/
def P15579787924222318270.Spec : Prop :=
  ∀ n, P15579787924222318270.a n = A094263 (n + 1)

theorem P15579787924222318270.correct : P15579787924222318270.Spec := by
  intro n
  simp only [A094263, Nat.add_sub_cancel]

end A094263

/-! ## A094263.P4692037547598210087

`A093898(n+1)%A128227(n)`
-/

namespace A094263.P4692037547598210087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093898 (n + 1)) (A128227 n)

end

end A094263.P4692037547598210087

namespace A094263

/-- `A093898(n+1)%A128227(n)` -/
def P4692037547598210087.Spec : Prop :=
  ∀ n, P4692037547598210087.a n = A094263 (n + 1)

end A094263

/-! ## A094263.P3246144207582901424

`A095884(n+1)%A128227(n)`
-/

namespace A094263.P3246144207582901424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095884 (n + 1)) (A128227 n)

end

end A094263.P3246144207582901424

namespace A094263

/-- `A095884(n+1)%A128227(n)` -/
def P3246144207582901424.Spec : Prop :=
  ∀ n, P3246144207582901424.a n = A094263 (n + 1)

end A094263

/-! ## A094263.P11844157000982661176

`A096133(n+1)%A128227(n)`
-/

namespace A094263.P11844157000982661176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096133 (n + 1)) (A128227 n)

end

end A094263.P11844157000982661176

namespace A094263

/-- `A096133(n+1)%A128227(n)` -/
def P11844157000982661176.Spec : Prop :=
  ∀ n, P11844157000982661176.a n = A094263 (n + 1)

end A094263

/-! ## A094263.P17182416333923918670

`A003992(A080036(n))%A002260(n+1)`
-/

namespace A094263.P17182416333923918670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003992 (A080036 n).toNat) (A002260 (n + 1))

end

end A094263.P17182416333923918670

namespace A094263

/-- `A003992(A080036(n))%A002260(n+1)` -/
def P17182416333923918670.Spec : Prop :=
  ∀ n, P17182416333923918670.a n = A094263 (n + 1)

end A094263

/-! ## A094263.P1333518759560995680

`A294046(A014132(n+1))%A002260(n+1)`
-/

namespace A094263.P1333518759560995680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294046 (A014132 (n + 1)).toNat) (A002260 (n + 1))

end

end A094263.P1333518759560995680

namespace A094263

/-- `A294046(A014132(n+1))%A002260(n+1)` -/
def P1333518759560995680.Spec : Prop :=
  ∀ n, P1333518759560995680.a n = A094263 (n + 1)

end A094263

/-! ## A094263.P6237290265820793450

`(A002024(n+1)*A003992(n))%A002260(n+1)`
-/

namespace A094263.P6237290265820793450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002024 (n + 1) * A003992 n) (A002260 (n + 1))

end

end A094263.P6237290265820793450

namespace A094263

/-- `(A002024(n+1)*A003992(n))%A002260(n+1)` -/
def P6237290265820793450.Spec : Prop :=
  ∀ n, P6237290265820793450.a n = A094263 (n + 1)

end A094263

/-! ## A094263.P12164763398369207818

`(A025581(n)^A002260(n+1))%A002260(n+1)`
-/

namespace A094263.P12164763398369207818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A025581 n : ℚ) ^ (A002260 (n + 1) : ℤ))) (A002260 (n + 1))

end

end A094263.P12164763398369207818

namespace A094263

/-- `(A025581(n)^A002260(n+1))%A002260(n+1)` -/
def P12164763398369207818.Spec : Prop :=
  ∀ n, P12164763398369207818.a n = A094263 (n + 1)

end A094263

/-! ## A094263.P13547939102237646499

`(A048158(n+1)^A002260(n+1))%A002260(n+1)`
-/

namespace A094263.P13547939102237646499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A048158 (n + 1) : ℚ) ^ (A002260 (n + 1) : ℤ))) (A002260 (n + 1))

end

end A094263.P13547939102237646499

namespace A094263

/-- `(A048158(n+1)^A002260(n+1))%A002260(n+1)` -/
def P13547939102237646499.Spec : Prop :=
  ∀ n, P13547939102237646499.a n = A094263 (n + 1)

end A094263

/-!
# A094266: LQTL Lean Quaternary Temporal Logic: a terse form of temporal logic created by assigning four descriptors such that false, becoming true, true and becoming false are represented and become a linear sequence. In a branching tree two alternative are open, change or no change. The integer sequence above is the count of the row possibilities of the four states over successive iterations.

The programs for A094266, there is no canonical definition to state claims against.
-/

/-! ## A094266.P12389534540659789387

`A137171(xor(3, n+4))`
-/

namespace A094266.P12389534540659789387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137171 (Nat.xor 3 (n + 4))

end

end A094266.P12389534540659789387

/-! ## A094266.P1411875195629160483

`A137171(A120634(n+1))`
-/

namespace A094266.P1411875195629160483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137171 (A120634 (n + 1)).toNat

end

end A094266.P1411875195629160483

/-! ## A094266.P15353151294151059907

`A137171(A004444(n+4))`
-/

namespace A094266.P15353151294151059907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137171 (A004444 (n + 4)).toNat

end

end A094266.P15353151294151059907

/-! ## A094266.P7239064014587434571

`A137171(A020705(xor(3, n)))`
-/

namespace A094266.P7239064014587434571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137171 (A020705 (Nat.xor 3 n)).toNat

end

end A094266.P7239064014587434571

/-! ## A094266.P5103998236534449214

`A099423(n+4)-A099423(n)`
-/

namespace A094266.P5103998236534449214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099423 (n + 4) - A099423 n

end

end A094266.P5103998236534449214

/-!
# A094267: First differences of A001511.

The programs for A094267, the canonical program `A094267.P5737536651550567383` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094267 has offset 0).

The definition of A094267 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094267.P4412923942843875607

`(-1)^n*val(n+2-n%2, 2)`
-/

namespace A094267.P4412923942843875607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (SequenceMachineLib.valuation ((n + 2 : ℤ) - ((n % 2 : ℕ) : ℤ)).toNat 2 : ℤ)

end

end A094267.P4412923942843875607

namespace A094267

/-- `(-1)^n*val(n+2-n%2, 2)` -/
def P4412923942843875607.Spec : Prop :=
  ∀ n, P4412923942843875607.a n = A094267 n

end A094267

/-! ## A094267.P5737536651550567383

`(-1)^n*A050603(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A094267

/-- `(-1)^n*A050603(n)` -/
def P5737536651550567383.Spec : Prop :=
  ∀ n, P5737536651550567383.a n = A094267 n

theorem P5737536651550567383.correct : P5737536651550567383.Spec := by
  intro n
  simp only [A094267]

end A094267

/-! ## A094267.P2484362167074247773

`Δ[val(n+1, 2)]`
-/

namespace A094267.P2484362167074247773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A094267.P2484362167074247773

namespace A094267

/-- `Δ[val(n+1, 2)]` -/
def P2484362167074247773.Spec : Prop :=
  ∀ n, P2484362167074247773.a n = A094267 n

end A094267

/-! ## A094267.P17082859851823604237

`log(ratio[exp(val(n+1, 2))])`
-/

namespace A094267.P17082859851823604237
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (SequenceMachineLib.valuation (n + 1) 2 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (f1 (n + 1) / f1 n)

end

end A094267.P17082859851823604237

namespace A094267

/-- `log(ratio[exp(val(n+1, 2))])` -/
def P17082859851823604237.Spec : Prop :=
  ∀ n, P17082859851823604237.a n = (A094267 n : ℝ)

end A094267

/-! ## A094267.P8665013566328971619

`log2(ratio[xor(n, -(n+2))])`
-/

namespace A094267.P8665013566328971619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n + 2 : ℤ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A094267.P8665013566328971619

namespace A094267

/-- `log2(ratio[xor(n, -(n+2))])` -/
def P8665013566328971619.Spec : Prop :=
  ∀ n, P8665013566328971619.a n = (A094267 n : ℝ)

end A094267

/-! ## A094267.P15999162862597104583

`Δ[floor(log2(xor(n, n+1)))]`
-/

namespace A094267.P15999162862597104583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Nat.xor n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A094267.P15999162862597104583

namespace A094267

/-- `Δ[floor(log2(xor(n, n+1)))]` -/
def P15999162862597104583.Spec : Prop :=
  ∀ n, P15999162862597104583.a n = A094267 n

end A094267

/-! ## A094267.P16115366077762232531

`log2(ratio[2^val(n+1, 2)])`
-/

namespace A094267.P16115366077762232531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A094267.P16115366077762232531

namespace A094267

/-- `log2(ratio[2^val(n+1, 2)])` -/
def P16115366077762232531.Spec : Prop :=
  ∀ n, P16115366077762232531.a n = (A094267 n : ℝ)

end A094267

/-! ## A094267.P11058504913624178069

`Δ[log2(xor(n, n+1)+1)]`
-/

namespace A094267.P11058504913624178069
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.xor n (n + 1) + 1 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094267.P11058504913624178069

namespace A094267

/-- `Δ[log2(xor(n, n+1)+1)]` -/
def P11058504913624178069.Spec : Prop :=
  ∀ n, P11058504913624178069.a n = (A094267 n : ℝ)

end A094267

/-! ## A094267.P6447763427620825195

`log2(ratio[xor(n, n+1)+1])`
-/

namespace A094267.P6447763427620825195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A094267.P6447763427620825195

namespace A094267

/-- `log2(ratio[xor(n, n+1)+1])` -/
def P6447763427620825195.Spec : Prop :=
  ∀ n, P6447763427620825195.a n = (A094267 n : ℝ)

end A094267

/-! ## A094267.P18146999454905390807

`Δ[log2(and(n+1, -(n+1)))]`
-/

namespace A094267.P18146999454905390807
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094267.P18146999454905390807

namespace A094267

/-- `Δ[log2(and(n+1, -(n+1)))]` -/
def P18146999454905390807.Spec : Prop :=
  ∀ n, P18146999454905390807.a n = (A094267 n : ℝ)

end A094267

/-! ## A094267.P7347225774336188433

`log2(ratio[and(n+1, -(n+1))])`
-/

namespace A094267.P7347225774336188433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A094267.P7347225774336188433

namespace A094267

/-- `log2(ratio[and(n+1, -(n+1))])` -/
def P7347225774336188433.Spec : Prop :=
  ∀ n, P7347225774336188433.a n = (A094267 n : ℝ)

end A094267

/-! ## A094267.P15137004167211764530

`log2(ratio[or(n+1, -(n+1))])`
-/

namespace A094267.P15137004167211764530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A094267.P15137004167211764530

namespace A094267

/-- `log2(ratio[or(n+1, -(n+1))])` -/
def P15137004167211764530.Spec : Prop :=
  ∀ n, P15137004167211764530.a n = (A094267 n : ℝ)

end A094267

/-! ## A094267.P13814418193002109975

`val(n+2, 2)-val(n+1, 2)`
-/

namespace A094267.P13814418193002109975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 2) 2 : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A094267.P13814418193002109975

namespace A094267

/-- `val(n+2, 2)-val(n+1, 2)` -/
def P13814418193002109975.Spec : Prop :=
  ∀ n, P13814418193002109975.a n = A094267 n

end A094267

/-! ## A094267.P11670656439344667481

`-Δ[-val(2*n-(n-1), 2)]`
-/

namespace A094267.P11670656439344667481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(SequenceMachineLib.valuation ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A094267.P11670656439344667481

namespace A094267

/-- `-Δ[-val(2*n-(n-1), 2)]` -/
def P11670656439344667481.Spec : Prop :=
  ∀ n, P11670656439344667481.a n = A094267 n

end A094267

/-! ## A094267.P10788170386841453048

`Δ[A085058(n)]`
-/

namespace A094267.P10788170386841453048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094267.P10788170386841453048

namespace A094267

/-- `Δ[A085058(n)]` -/
def P10788170386841453048.Spec : Prop :=
  ∀ n, P10788170386841453048.a n = A094267 n

end A094267

/-! ## A094267.P15942475664227441681

`Δ[A089080(n+2)]`
-/

namespace A094267.P15942475664227441681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089080 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094267.P15942475664227441681

namespace A094267

/-- `Δ[A089080(n+2)]` -/
def P15942475664227441681.Spec : Prop :=
  ∀ n, P15942475664227441681.a n = A094267 n

end A094267

/-! ## A094267.P9228883388801983133

`Δ[abs(A123725(n+1))]`
-/

namespace A094267.P9228883388801983133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123725 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094267.P9228883388801983133

namespace A094267

/-- `Δ[abs(A123725(n+1))]` -/
def P9228883388801983133.Spec : Prop :=
  ∀ n, P9228883388801983133.a n = A094267 n

end A094267

/-! ## A094267.P6970019796746013821

`Δ[sqrt(A123726(n+1))]`
-/

namespace A094267.P6970019796746013821
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A123726 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094267.P6970019796746013821

namespace A094267

/-- `Δ[sqrt(A123726(n+1))]` -/
def P6970019796746013821.Spec : Prop :=
  ∀ n, P6970019796746013821.a n = (A094267 n : ℝ)

end A094267

/-! ## A094267.P16459121754123663577

`Δ[log2(A037239(n+1))]`
-/

namespace A094267.P16459121754123663577
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A037239 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094267.P16459121754123663577

namespace A094267

/-- `Δ[log2(A037239(n+1))]` -/
def P16459121754123663577.Spec : Prop :=
  ∀ n, P16459121754123663577.a n = (A094267 n : ℝ)

end A094267

/-! ## A094267.P9432373277946272019

`Δ[log2(A171977(n+1))]`
-/

namespace A094267.P9432373277946272019
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A171977 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094267.P9432373277946272019

namespace A094267

/-- `Δ[log2(A171977(n+1))]` -/
def P9432373277946272019.Spec : Prop :=
  ∀ n, P9432373277946272019.a n = (A094267 n : ℝ)

end A094267

/-!
# A094269: a(n) = phi(A003401(n)).

The programs for A094269, there is no canonical definition to state claims against.
-/

/-! ## A094269.P12549670925154588499

`2^A319821(n+1)`
-/

namespace A094269.P12549670925154588499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A319821 (n + 1) : ℤ)

end

end A094269.P12549670925154588499

/-! ## A094269.P14022102268889024053

`A000079(A319821(n+1))`
-/

namespace A094269.P14022102268889024053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A319821 (n + 1)).toNat

end

end A094269.P14022102268889024053

/-! ## A094269.P6918506054433269469

`A011782(A319821(n+1)+1)`
-/

namespace A094269.P6918506054433269469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A319821 (n + 1) + 1).toNat

end

end A094269.P6918506054433269469

/-! ## A094269.P12691838817942992484

`A166444(A319821(n+1)+2)`
-/

namespace A094269.P12691838817942992484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A319821 (n + 1) + 2).toNat

end

end A094269.P12691838817942992484

/-! ## A094269.P14046799635321514825

`A000010(A003401(n+1))`
-/

namespace A094269.P14046799635321514825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A003401 (n + 1)).toNat

end

end A094269.P14046799635321514825

/-! ## A094269.P17925936162833180830

`A000010(record[ceil(A058213(n)/2)])`
-/

namespace A094269.P17925936162833180830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A058213 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A094269.P17925936162833180830

/-! ## A094269.P13178572063945823588

`A000010(record[round(A058213(n)/2)])`
-/

namespace A094269.P13178572063945823588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A058213 n : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A094269.P13178572063945823588

/-! ## A094269.P9322769408155483655

`A000010(record[(n+1)/A001221(A000010(n+1))!])`
-/

namespace A094269.P9322769408155483655
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.factorial (A001221 (A000010 (n + 1)).toNat).toNat : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A094269.P9322769408155483655

/-! ## A094269.P16472825623798925639

`A000010(eq[1, A295660(n+1)]+1)`
-/

namespace A094269.P16472825623798925639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A094269.P16472825623798925639

/-! ## A094269.P10115187227860888654

`A000010(eq[1, A318831(n+1)]+1)`
-/

namespace A094269.P10115187227860888654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A094269.P10115187227860888654

/-!
# A094270: Triangle read by rows: row n contains the least set of n successive numbers whose product is a multiple of the product of the previous row. The first term of each row must be larger than the last term of the previous row.

The programs for A094270, there is no canonical definition to state claims against.
-/

/-! ## A094270.P10379770719927990436

`A094271(∑[A010054(n)])+A002262(n)`
-/

namespace A094270.P10379770719927990436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094271 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A002262 n

end

end A094270.P10379770719927990436

/-! ## A094270.P15238095500171061614

`A094271(∑[A010054(n)])+A002260(n+1)-1`
-/

namespace A094270.P15238095500171061614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094271 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (A002260 (n + 1) - 1)

end

end A094270.P15238095500171061614

/-! ## A094270.P16605356564467807655

`A213268(A168256(n))+n`
-/

namespace A094270.P16605356564467807655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213268 (A168256 n).toNat + (n : ℤ)

end

end A094270.P16605356564467807655

/-! ## A094270.P7937792158255958655

`∑[A300121(A331569(n+2)+1)]`
-/

namespace A094270.P7937792158255958655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300121 (A331569 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094270.P7937792158255958655

/-! ## A094270.P7905017825487370024

`∑[gcd(A294277(3*n+5), A375555(3*n+4))]`
-/

namespace A094270.P7905017825487370024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A294277 (3 * n + 5)) (A375555 (3 * n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094270.P7905017825487370024

/-!
# A094271: First column of triangle A094270. Equals A094272(n)-(n-1).

The programs for A094271, there is no canonical definition to state claims against.
-/

/-! ## A094271.P15213476625834553506

`A094270(∑[n]+1)`
-/

namespace A094271.P15213476625834553506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094270 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A094271.P15213476625834553506

/-! ## A094271.P16871486489312527570

`A094272(n+1)-n`
-/

namespace A094271.P16871486489312527570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094272 (n + 1) - (n : ℤ)

end

end A094271.P16871486489312527570

/-! ## A094271.P7277699267406832866

`record[A094270(n+1)/A208341(n)]`
-/

namespace A094271.P7277699267406832866
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094270 (n + 1) : ℚ) / (A208341 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094271.P7277699267406832866

/-! ## A094271.P14943814672673265744

`record[gcd(A094270(n+1), A336541(n))]`
-/

namespace A094271.P14943814672673265744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094270 (n + 1)) (A336541 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094271.P14943814672673265744

/-! ## A094271.P14096191699864441632

`record[A094270(n+1)/A208331(n+1)]`
-/

namespace A094271.P14096191699864441632
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094270 (n + 1) : ℚ) / (A208331 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094271.P14096191699864441632

/-!
# A094272: Least m >= a(n-1)+n such that m!/(m-n)! is a multiple of a(n-1)!/(a(n-1)-(n-1))!.

The programs for A094272, there is no canonical definition to state claims against.
-/

/-! ## A094272.P7310691900445157398

`A094270(∑[n+1])`
-/

namespace A094272.P7310691900445157398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094270 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A094272.P7310691900445157398

/-! ## A094272.P11594063035464642241

`A094271(n+1)+n`
-/

namespace A094272.P11594063035464642241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094271 (n + 1) + (n : ℤ)

end

end A094272.P11594063035464642241

/-! ## A094272.P8566044591823392859

`A094270(A000124(n))+n`
-/

namespace A094272.P8566044591823392859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094270 (A000124 n).toNat + (n : ℤ)

end

end A094272.P8566044591823392859

/-! ## A094272.P4652709169331376757

`record[A094270(A038722(n+1))]`
-/

namespace A094272.P4652709169331376757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094270 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094272.P4652709169331376757

/-!
# A094273: Row products of triangle A094270.

The programs for A094273, there is no canonical definition to state claims against.
-/

/-! ## A094273.P9267194401079908888

`∏[A094274(n+1)]/A094274(n+1)`
-/

namespace A094273.P9267194401079908888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094274 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A094274 (n + 1) : ℚ)

end

end A094273.P9267194401079908888

/-!
# A094274: Ratio of successive row products of triangle A094270: A094273(n+1) / A094273(n).

The programs for A094274, there is no canonical definition to state claims against.
-/

/-! ## A094274.P5764795537600151718

`A094273(n+2)/A094273(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A094274.P5764795537600151718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094273 (n + 2) : ℚ) / (A094273 (n + 1) : ℚ)

end

end A094274.P5764795537600151718

/-! ## A094274.P13212302416588257669

`ratio[A094273(n+1)]`
-/

namespace A094274.P13212302416588257669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094273 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A094274.P13212302416588257669

/-!
# A094276: Leading diagonal of triangle A094275.

The programs for A094276, there is no canonical definition to state claims against.
-/

/-! ## A094276.P7607621232604048752

`A094275(∑[n+1])`
-/

namespace A094276.P7607621232604048752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094275 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A094276.P7607621232604048752

/-! ## A094276.P1642154450454262337

`record[A094275(∑[char[∑[n]]]²-n)]`
-/

namespace A094276.P1642154450454262337
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094275 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094276.P1642154450454262337

/-! ## A094276.P12278633979295773526

`record[A094275(n+1)*A103452(n)]`
-/

namespace A094276.P12278633979295773526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094275 (n + 1) * A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094276.P12278633979295773526

/-! ## A094276.P13876297495977370433

`record[A094275(n+1)*A105619(n)]`
-/

namespace A094276.P13876297495977370433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094275 (n + 1) * A105619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094276.P13876297495977370433

/-! ## A094276.P3079878282712912031

`record[A094275(n+1)/A073107(n)]`
-/

namespace A094276.P3079878282712912031
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094275 (n + 1) : ℚ) / (A073107 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094276.P3079878282712912031

/-!
# A094277: First column of triangle A094275.

The programs for A094277, there is no canonical definition to state claims against.
-/

/-! ## A094277.P15272972304603820369

`A161082(A226211(n+1))+A077169(n)`
-/

namespace A094277.P15272972304603820369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161082 (A226211 (n + 1)).toNat + A077169 n

end

end A094277.P15272972304603820369

/-! ## A094277.P1411179116727362800

`A122921(A161111(n+2))+A077169(n)`
-/

namespace A094277.P1411179116727362800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A161111 (n + 2)).toNat + A077169 n

end

end A094277.P1411179116727362800

/-! ## A094277.P8198793970082866554

`A077169(n)+A057427(A308992(n))`
-/

namespace A094277.P8198793970082866554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077169 n + A057427 (A308992 n).toNat

end

end A094277.P8198793970082866554

/-! ## A094277.P10040867961704165631

`A130543(A295073(n))+A077169(n)`
-/

namespace A094277.P10040867961704165631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130543 (A295073 n).toNat + A077169 n

end

end A094277.P10040867961704165631

/-! ## A094277.P18170113775812500952

`∑[A182067(A182062(n))+A014681(2*n)-n]`
-/

namespace A094277.P18170113775812500952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182067 (A182062 n).toNat + (A014681 (2 * n) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094277.P18170113775812500952

/-!
# A094278: Product of terms in n-th row of triangle A094275.

The programs for A094278, there is no canonical definition to state claims against.
-/

/-! ## A094278.P8340294467524156016

`a(n-1)*A094279(n)` with `a(0)=1`
-/

namespace A094278.P8340294467524156016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A094279 n

end

end A094278.P8340294467524156016

/-! ## A094278.P15434726289107786327

`∏[A094279(n+1)]/A094279(n+1)`
-/

namespace A094278.P15434726289107786327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094279 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A094279 (n + 1) : ℚ)

end

end A094278.P15434726289107786327

/-!
# A094279: Ratios of consecutive row products of triangle A094275.

The programs for A094279, there is no canonical definition to state claims against.
-/

/-! ## A094279.P1346486751330243212

`A094278(n+2)/A094278(n+1)`
-/

namespace A094279.P1346486751330243212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094278 (n + 2) : ℚ) / (A094278 (n + 1) : ℚ)

end

end A094279.P1346486751330243212

/-! ## A094279.P10544284892466137547

`ratio[A094278(n+1)]`
-/

namespace A094279.P10544284892466137547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094278 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A094279.P10544284892466137547

/-! ## A094279.P5127625293698492242

`ratio[record[A094278(A193738(n))]]`
-/

namespace A094279.P5127625293698492242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094278 (A193738 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A094279.P5127625293698492242

/-!
# A094281: The leftmost column of triangle A094280.

The programs for A094281, there is no canonical definition to state claims against.
-/

/-! ## A094281.P9411804274102327740

`A094280(1+A000217(n))`
-/

namespace A094281.P9411804274102327740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094280 (1 + A000217 n).toNat

end

end A094281.P9411804274102327740

/-! ## A094281.P17013090283078188203

`∑[n]+1-A004233(A177794(n+1))`
-/

namespace A094281.P17013090283078188203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - A004233 (A177794 (n + 1)).toNat)

end

end A094281.P17013090283078188203

/-! ## A094281.P12543361547463301254

`A238531(n)+A001221(A055234(n+1))`
-/

namespace A094281.P12543361547463301254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238531 n + A001221 (A055234 (n + 1)).toNat

end

end A094281.P12543361547463301254

/-! ## A094281.P7330786945597097021

`A000124(n)-A004233(A177794(n+1))`
-/

namespace A094281.P7330786945597097021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A004233 (A177794 (n + 1)).toNat

end

end A094281.P7330786945597097021

/-! ## A094281.P2802456057257173039

`A238531(n)+A004218(A290209(n))`
-/

namespace A094281.P2802456057257173039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238531 n + A004218 (A290209 n).toNat

end

end A094281.P2802456057257173039

/-!
# A094282: The rightmost column of triangle A094280.

The programs for A094282, there is no canonical definition to state claims against.
-/

/-! ## A094282.P16431687684805693903

`A094280(A000217(n+1))`
-/

namespace A094282.P16431687684805693903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094280 (A000217 (n + 1)).toNat

end

end A094282.P16431687684805693903

/-! ## A094282.P16768892134189336048

`A094280(∑[n+1])`
-/

namespace A094282.P16768892134189336048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094280 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A094282.P16768892134189336048

/-! ## A094282.P1824450727702330225

`record[A094280(∑[A033307(n)])]`
-/

namespace A094282.P1824450727702330225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094280 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094282.P1824450727702330225

/-! ## A094282.P4343263048780321422

`record[A094280(∑[A222210(n)])]`
-/

namespace A094282.P4343263048780321422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094280 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094282.P4343263048780321422

/-! ## A094282.P7554770966885336285

`record[A094280(A038722(n+1))]`
-/

namespace A094282.P7554770966885336285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094280 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094282.P7554770966885336285

/-!
# A094283: Row sums of triangle A094280.

The programs for A094283, the canonical program `A094283.P1197091653682540684` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094283 has offset 1).

The definition of A094283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094283.P11677798740517776609

`ogf((1+3x+5x^2+15x^3)/(1-2x))`
-/

namespace A094283.P11677798740517776609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 5, 15] [1, -2] n

end

end A094283.P11677798740517776609

namespace A094283

/-- `ogf((1+3x+5x^2+15x^3)/(1-2x))` -/
def P11677798740517776609.Spec : Prop :=
  ∀ n, P11677798740517776609.a n = A094283 (n + 1)

end A094283

/-! ## A094283.P1197091653682540684

`2*a(n-1)` with `a(0)=1, a(1)=5, a(2)=15, a(3)=45`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094283

/-- `2*a(n-1)` -/
def P1197091653682540684.Spec : Prop :=
  ∀ n, (P1197091653682540684.a n : ℤ) = A094283 (n + 1)

theorem P1197091653682540684.correct : P1197091653682540684.Spec := by
  intro n
  simp only [A094283, Nat.add_sub_cancel]

end A094283

/-! ## A094283.P6816395908238998135

`a(n-1)+a(n-1)` with `a(0)=1, a(1)=5, a(2)=15, a(3)=45`
-/

namespace A094283.P6816395908238998135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 15, 45] fun n a =>
  a (n - 1) + a (n - 1)

end

end A094283.P6816395908238998135

namespace A094283

/-- `a(n-1)+a(n-1)` -/
def P6816395908238998135.Spec : Prop :=
  ∀ n, (P6816395908238998135.a n : ℤ) = A094283 (n + 1)

theorem P6816395908238998135.correct : P6816395908238998135.Spec := by
  intro n
  simp only [A094283, Nat.add_sub_cancel, A094283.P6816395908238998135.a, A094283.P1197091653682540684.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A094283

/-! ## A094283.P6966287365280017590

`a(n-1)*A094284(n)` with `a(0)=1`
-/

namespace A094283.P6966287365280017590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A094284 n

end

end A094283.P6966287365280017590

namespace A094283

/-- `a(n-1)*A094284(n)` -/
def P6966287365280017590.Spec : Prop :=
  ∀ n, P6966287365280017590.a n = A094283 (n + 1)

end A094283

/-! ## A094283.P1875782766136980505

`lcm(A076103(n+1), A122391(n))`
-/

namespace A094283.P1875782766136980505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A076103 (n + 1)) (A122391 n)

end

end A094283.P1875782766136980505

namespace A094283

/-- `lcm(A076103(n+1), A122391(n))` -/
def P1875782766136980505.Spec : Prop :=
  ∀ n, (P1875782766136980505.a n : ℤ) = A094283 (n + 1)

end A094283

/-!
# A094284: a(n) = A094283(n+1)/A094283(n).

The programs for A094284, the canonical program `A094284.P13642906425844779461` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094284 has offset 1).

The definition of A094284 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094283, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A094284.P13642906425844779461

`A094283(n+2)/A094283(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A094284

/-- `A094283(n+2)/A094283(n+1)` -/
def P13642906425844779461.Spec : Prop :=
  ∀ n, P13642906425844779461.a n = (A094284 (n + 1) : ℚ)

end A094284

/-!
# A094286: Number of (s(0), s(1), ..., s(n)) such that 0 < s(i) < 6 and |s(i) - s(i-1)| <= 1 for i = 1,2,...,n, s(0) = 1, s(n) = 1.

The programs for A094286, the canonical program `A094286.P8214108618690039083` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094286 has offset 0).

The definition of A094286 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094286.P8214108618690039083

`∑[4*a(n-1)-2*a(n-2)-4*a(n-3)]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2, a(4)=5`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094286

/-- `∑[4*a(n-1)-2*a(n-2)-4*a(n-3)]` -/
def P8214108618690039083.Spec : Prop :=
  ∀ n, P8214108618690039083.a n = A094286 n

theorem P8214108618690039083.correct : P8214108618690039083.Spec := by
  intro n
  simp only [A094286]

end A094286

/-! ## A094286.P15071143308272734859

`A001006(n)-A049337(∏{e}[n+1, C(#+n, n)])`
-/

namespace A094286.P15071143308272734859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A049337 (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + n) n)

end

end A094286.P15071143308272734859

namespace A094286

/-- `A001006(n)-A049337(∏{e}[n+1, C(#+n, n)])` -/
def P15071143308272734859.Spec : Prop :=
  ∀ n, P15071143308272734859.a n = A094286 n

end A094286

/-! ## A094286.P4725088245389438393

`A178798(A001611(n))+A001006(n)`
-/

namespace A094286.P4725088245389438393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A001611 n).toNat + A001006 n

end

end A094286.P4725088245389438393

namespace A094286

/-- `A178798(A001611(n))+A001006(n)` -/
def P4725088245389438393.Spec : Prop :=
  ∀ n, P4725088245389438393.a n = A094286 n

end A094286

/-! ## A094286.P15203688415494606509

`A178798(A006820(n))+A001006(n)`
-/

namespace A094286.P15203688415494606509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A006820 n).toNat + A001006 n

end

end A094286.P15203688415494606509

namespace A094286

/-- `A178798(A006820(n))+A001006(n)` -/
def P15203688415494606509.Spec : Prop :=
  ∀ n, P15203688415494606509.a n = A094286 n

end A094286

/-! ## A094286.P5945445574617493338

`A163533(A100304(n))+A001006(n)`
-/

namespace A094286.P5945445574617493338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163533 (A100304 n).toNat + A001006 n

end

end A094286.P5945445574617493338

namespace A094286

/-- `A163533(A100304(n))+A001006(n)` -/
def P5945445574617493338.Spec : Prop :=
  ∀ n, P5945445574617493338.a n = A094286 n

end A094286

/-!
# A094287: Number of (s(0), s(1), ..., s(n)) such that 0 < s(i) < 7 and |s(i) - s(i-1)| <= 1 for i = 1,2,...,n, s(0) = 1, s(n) = 1.

The programs for A094287, there is no canonical definition to state claims against.
-/

/-! ## A094287.P8609793557571614120

`6*a(n-1)-10*a(n-2)+9*a(n-4)-2*a(n-5)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=9, a(5)=21`
-/

namespace A094287.P8609793557571614120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4, 9, 21] fun n a =>
  6 * a (n - 1) - 10 * a (n - 2) + 9 * a (n - 4) - 2 * a (n - 5) - a (n - 6)

end

end A094287.P8609793557571614120

/-! ## A094287.P4461944551179168002

`A001006(n)-A185213(C(n, floor(n/7)))`
-/

namespace A094287.P4461944551179168002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A185213 (Nat.choose n ⌊(n : ℚ) / 7⌋.toNat)

end

end A094287.P4461944551179168002

/-! ## A094287.P4866803103569887532

`A001006(n)-A186748(A308911(n))`
-/

namespace A094287.P4866803103569887532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A186748 (A308911 n).toNat

end

end A094287.P4866803103569887532

/-! ## A094287.P18346734753436315893

`A001006(n)-A000045(A185264(2*n+3))`
-/

namespace A094287.P18346734753436315893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A000045 (A185264 (2 * n + 3)).toNat

end

end A094287.P18346734753436315893

/-! ## A094287.P17927250022295200740

`A240467(A289892(n))+A001006(n)`
-/

namespace A094287.P17927250022295200740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240467 (A289892 n).toNat + A001006 n

end

end A094287.P17927250022295200740

/-!
# A094288: Number of (s(0), s(1), ..., s(n)) such that 0 < s(i) < 8 and |s(i) - s(i-1)| <= 1 for i = 1,2,...,n, s(0) = 1, s(n) = 1.

The programs for A094288, there is no canonical definition to state claims against.
-/

/-! ## A094288.P7390469358520600221

`A001006(n)-A185294(A320202(n+4))`
-/

namespace A094288.P7390469358520600221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A185294 (A320202 (n + 4)).toNat

end

end A094288.P7390469358520600221

/-! ## A094288.P3270056962113506912

`A178798(A000701(n))+A001006(n)`
-/

namespace A094288.P3270056962113506912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A000701 n).toNat + A001006 n

end

end A094288.P3270056962113506912

/-! ## A094288.P7159287452203058482

`A001006(n)-A085974(A011782(n))`
-/

namespace A094288.P7159287452203058482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A085974 (A011782 n).toNat

end

end A094288.P7159287452203058482

/-! ## A094288.P1886700309769057370

`A001006(n)-A056975(A076550(n))`
-/

namespace A094288.P1886700309769057370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A056975 (A076550 n).toNat

end

end A094288.P1886700309769057370

/-! ## A094288.P17627151878662499447

`A001006(n)-A178798(A027187(n))`
-/

namespace A094288.P17627151878662499447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A178798 (A027187 n).toNat

end

end A094288.P17627151878662499447

/-!
# A094290: a(n) = prime(A001511(n)), where A001511 is one more than the 2-adic valuation of n.

The programs for A094290, the canonical program `A094290.P11263062616059200680` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094290 has offset 1).

The definition of A094290 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094290.P11263062616059200680

`A000040(A001511(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A094290

/-- `A000040(A001511(n+1))` -/
def P11263062616059200680.Spec : Prop :=
  ∀ n, P11263062616059200680.a n = A094290 (n + 1)

theorem P11263062616059200680.correct : P11263062616059200680.Spec := by
  intro n
  simp only [A094290, Nat.add_sub_cancel]

end A094290

/-! ## A094290.P5169153710556858721

`A390240(val(n+1, 2))`
-/

namespace A094290.P5169153710556858721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390240 (SequenceMachineLib.valuation (n + 1) 2)

end

end A094290.P5169153710556858721

namespace A094290

/-- `A390240(val(n+1, 2))` -/
def P5169153710556858721.Spec : Prop :=
  ∀ n, P5169153710556858721.a n = A094290 (n + 1)

end A094290

/-! ## A094290.P11074350827994592025

`A307540(xor(n, n+1))`
-/

namespace A094290.P11074350827994592025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307540 (Nat.xor n (n + 1))

end

end A094290.P11074350827994592025

namespace A094290

/-- `A307540(xor(n, n+1))` -/
def P11074350827994592025.Spec : Prop :=
  ∀ n, P11074350827994592025.a n = A094290 (n + 1)

end A094290

/-! ## A094290.P8779439615882285248

`A366275(xor(n, n+1))`
-/

namespace A094290.P8779439615882285248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366275 (Nat.xor n (n + 1))

end

end A094290.P8779439615882285248

namespace A094290

/-- `A366275(xor(n, n+1))` -/
def P8779439615882285248.Spec : Prop :=
  ∀ n, P8779439615882285248.a n = A094290 (n + 1)

end A094290

/-! ## A094290.P15220465001393100053

`A000040(val(n+1, 2)+1)`
-/

namespace A094290.P15220465001393100053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.valuation (n + 1) 2 + 1)

end

end A094290.P15220465001393100053

namespace A094290

/-- `A000040(val(n+1, 2)+1)` -/
def P15220465001393100053.Spec : Prop :=
  ∀ n, P15220465001393100053.a n = A094290 (n + 1)

end A094290

/-! ## A094290.P17296007459241542533

`A030291(val(n+1, 2)+1)`
-/

namespace A094290.P17296007459241542533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (SequenceMachineLib.valuation (n + 1) 2 + 1)

end

end A094290.P17296007459241542533

namespace A094290

/-- `A030291(val(n+1, 2)+1)` -/
def P17296007459241542533.Spec : Prop :=
  ∀ n, P17296007459241542533.a n = A094290 (n + 1)

end A094290

/-! ## A094290.P11165245841930236262

`A049545(val(n+1, 2)+1)`
-/

namespace A094290.P11165245841930236262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (SequenceMachineLib.valuation (n + 1) 2 + 1)

end

end A094290.P11165245841930236262

namespace A094290

/-- `A049545(val(n+1, 2)+1)` -/
def P11165245841930236262.Spec : Prop :=
  ∀ n, P11165245841930236262.a n = A094290 (n + 1)

end A094290

/-! ## A094290.P12068665036544179347

`A052085(val(n+1, 2)+1)`
-/

namespace A094290.P12068665036544179347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052085 (SequenceMachineLib.valuation (n + 1) 2 + 1)

end

end A094290.P12068665036544179347

namespace A094290

/-- `A052085(val(n+1, 2)+1)` -/
def P12068665036544179347.Spec : Prop :=
  ∀ n, P12068665036544179347.a n = A094290 (n + 1)

end A094290

/-! ## A094290.P4518854161145129947

`A069675(val(n+1, 2)+1)`
-/

namespace A094290.P4518854161145129947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069675 (SequenceMachineLib.valuation (n + 1) 2 + 1)

end

end A094290.P4518854161145129947

namespace A094290

/-- `A069675(val(n+1, 2)+1)` -/
def P4518854161145129947.Spec : Prop :=
  ∀ n, P4518854161145129947.a n = A094290 (n + 1)

end A094290

/-! ## A094290.P3494517349521044324

`A069678(val(n+1, 2)+1)`
-/

namespace A094290.P3494517349521044324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069678 (SequenceMachineLib.valuation (n + 1) 2 + 1)

end

end A094290.P3494517349521044324

namespace A094290

/-- `A069678(val(n+1, 2)+1)` -/
def P3494517349521044324.Spec : Prop :=
  ∀ n, P3494517349521044324.a n = A094290 (n + 1)

end A094290

/-! ## A094290.P4622658575880661685

`A118850(val(n+1, 2)+1)`
-/

namespace A094290.P4622658575880661685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118850 (SequenceMachineLib.valuation (n + 1) 2 + 1)

end

end A094290.P4622658575880661685

namespace A094290

/-- `A118850(val(n+1, 2)+1)` -/
def P4622658575880661685.Spec : Prop :=
  ∀ n, P4622658575880661685.a n = A094290 (n + 1)

end A094290

/-! ## A094290.P4357765550565617552

`A008578(val(n+1, 2)+2)`
-/

namespace A094290.P4357765550565617552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.valuation (n + 1) 2 + 2)

end

end A094290.P4357765550565617552

namespace A094290

/-- `A008578(val(n+1, 2)+2)` -/
def P4357765550565617552.Spec : Prop :=
  ∀ n, P4357765550565617552.a n = A094290 (n + 1)

end A094290

/-! ## A094290.P8415732995682009092

`A322443(val(2*(n+1), 2))`
-/

namespace A094290.P8415732995682009092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322443 (SequenceMachineLib.valuation (2 * (n + 1)) 2)

end

end A094290.P8415732995682009092

namespace A094290

/-- `A322443(val(2*(n+1), 2))` -/
def P8415732995682009092.Spec : Prop :=
  ∀ n, P8415732995682009092.a n = A094290 (n + 1)

end A094290

/-! ## A094290.P4764819471025773210

`A019565(2^val(n+1, 2))`
-/

namespace A094290.P4764819471025773210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A094290.P4764819471025773210

namespace A094290

/-- `A019565(2^val(n+1, 2))` -/
def P4764819471025773210.Spec : Prop :=
  ∀ n, P4764819471025773210.a n = A094290 (n + 1)

end A094290

/-! ## A094290.P2806928955115850026

`A000040(log2(xor(n, n+1)+1))`
-/

namespace A094290.P2806928955115850026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (Real.logb 2 (Nat.xor n (n + 1) + 1 : ℝ))).toNat

end

end A094290.P2806928955115850026

namespace A094290

/-- `A000040(log2(xor(n, n+1)+1))` -/
def P2806928955115850026.Spec : Prop :=
  ∀ n, P2806928955115850026.a n = A094290 (n + 1)

end A094290

/-! ## A094290.P6947102063303725280

`A006093(val(n+1, 2)+1)+1`
-/

namespace A094290.P6947102063303725280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (SequenceMachineLib.valuation (n + 1) 2 + 1) + 1

end

end A094290.P6947102063303725280

namespace A094290

/-- `A006093(val(n+1, 2)+1)+1` -/
def P6947102063303725280.Spec : Prop :=
  ∀ n, P6947102063303725280.a n = A094290 (n + 1)

end A094290

/-! ## A094290.P5613241838361773685

`A000040(val(3*n-(n-2), 2))`
-/

namespace A094290.P5613241838361773685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.valuation ((3 * n : ℤ) - ((n : ℤ) - 2)).toNat 2)

end

end A094290.P5613241838361773685

namespace A094290

/-- `A000040(val(3*n-(n-2), 2))` -/
def P5613241838361773685.Spec : Prop :=
  ∀ n, P5613241838361773685.a n = A094290 (n + 1)

end A094290

/-! ## A094290.P1553799846022880913

`A000040(Δ[a(floor(n/2))+n])` with `a(0)=0`
-/

namespace A094290.P1553799846022880913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A094290.P1553799846022880913

namespace A094290

/-- `A000040(Δ[a(floor(n/2))+n])` -/
def P1553799846022880913.Spec : Prop :=
  ∀ n, P1553799846022880913.a n = A094290 (n + 1)

end A094290

/-! ## A094290.P13876684647780784135

`A000040(Δ[A005187(n)])`
-/

namespace A094290.P13876684647780784135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (n + 1) - f1 n).toNat

end

end A094290.P13876684647780784135

namespace A094290

/-- `A000040(Δ[A005187(n)])` -/
def P13876684647780784135.Spec : Prop :=
  ∀ n, P13876684647780784135.a n = A094290 (n + 1)

end A094290

/-! ## A094290.P15699948646702934449

`A019565(A006519(n+1))`
-/

namespace A094290.P15699948646702934449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A006519 (n + 1)).toNat

end

end A094290.P15699948646702934449

namespace A094290

/-- `A019565(A006519(n+1))` -/
def P15699948646702934449.Spec : Prop :=
  ∀ n, P15699948646702934449.a n = A094290 (n + 1)

end A094290

/-!
# A094292: Number of (s(0), s(1), ..., s(n)) such that 0 < s(i) < 5 and |s(i) - s(i-1)| <= 1 for i = 1,2,...,n, s(0) = 2, s(n) = 4.

The programs for A094292, the canonical program `A094292.P13575932326503500226` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094292 has offset 0).

The definition of A094292 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094292.P13575932326503500226

`4*a(n-1)-3*a(n-2)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094292

/-- `4*a(n-1)-3*a(n-2)-2*a(n-3)+a(n-4)` -/
def P13575932326503500226.Spec : Prop :=
  ∀ n, P13575932326503500226.a n = A094292 n

theorem P13575932326503500226.correct : P13575932326503500226.Spec := by
  intro n
  simp only [A094292]

end A094292

/-! ## A094292.P3031645204700468896

`ogf((x^2-x^3)/(1-4x+3x^2+2x^3-x^4))`
-/

namespace A094292.P3031645204700468896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, -1] [1, -4, 3, 2, -1] n

end

end A094292.P3031645204700468896

namespace A094292

/-- `ogf((x^2-x^3)/(1-4x+3x^2+2x^3-x^4))` -/
def P3031645204700468896.Spec : Prop :=
  ∀ n, P3031645204700468896.a n = A094292 n

end A094292

/-! ## A094292.P16383282528529970918

`Δ[A056014(n)]`
-/

namespace A094292.P16383282528529970918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094292.P16383282528529970918

namespace A094292

/-- `Δ[A056014(n)]` -/
def P16383282528529970918.Spec : Prop :=
  ∀ n, P16383282528529970918.a n = A094292 n

end A094292

/-! ## A094292.P1176880143082903577

`A032089(A300576(n+2))`
-/

namespace A094292.P1176880143082903577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032089 (A300576 (n + 2)).toNat

end

end A094292.P1176880143082903577

namespace A094292

/-- `A032089(A300576(n+2))` -/
def P1176880143082903577.Spec : Prop :=
  ∀ n, P1176880143082903577.a n = A094292 n

end A094292

/-! ## A094292.P3468132184096122968

`A032089(2*A028310(n))`
-/

namespace A094292.P3468132184096122968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032089 (2 * A028310 n).toNat

end

end A094292.P3468132184096122968

namespace A094292

/-- `A032089(2*A028310(n))` -/
def P3468132184096122968.Spec : Prop :=
  ∀ n, P3468132184096122968.a n = A094292 n

end A094292

/-! ## A094292.P12123867606452978930

`A001654(n)-A033192(n)`
-/

namespace A094292.P12123867606452978930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n - A033192 n

end

end A094292.P12123867606452978930

namespace A094292

/-- `A001654(n)-A033192(n)` -/
def P12123867606452978930.Spec : Prop :=
  ∀ n, P12123867606452978930.a n = A094292 n

end A094292

/-! ## A094292.P17793714798991025599

`Δ[A059512(n)-A000045(n)]`
-/

namespace A094292.P17793714798991025599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059512 n - A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094292.P17793714798991025599

namespace A094292

/-- `Δ[A059512(n)-A000045(n)]` -/
def P17793714798991025599.Spec : Prop :=
  ∀ n, P17793714798991025599.a n = A094292 n

end A094292

/-! ## A094292.P417832739324930727

`A059512(n+1)-A005207(n)`
-/

namespace A094292.P417832739324930727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059512 (n + 1) - A005207 n

end

end A094292.P417832739324930727

namespace A094292

/-- `A059512(n+1)-A005207(n)` -/
def P417832739324930727.Spec : Prop :=
  ∀ n, P417832739324930727.a n = A094292 n

end A094292

/-! ## A094292.P6720666254373668293

`A056014(n+1)-A056014(n)`
-/

namespace A094292.P6720666254373668293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056014 (n + 1) - A056014 n

end

end A094292.P6720666254373668293

namespace A094292

/-- `A056014(n+1)-A056014(n)` -/
def P6720666254373668293.Spec : Prop :=
  ∀ n, P6720666254373668293.a n = A094292 n

end A094292

/-! ## A094292.P11713202463755380486

`A004695(2*n)-A004695(n)`
-/

namespace A094292.P11713202463755380486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (2 * n) - A004695 n

end

end A094292.P11713202463755380486

namespace A094292

/-- `A004695(2*n)-A004695(n)` -/
def P11713202463755380486.Spec : Prop :=
  ∀ n, P11713202463755380486.a n = A094292 n

end A094292

/-! ## A094292.P15654160003070377862

`A147997(2*n)-A147997(n)`
-/

namespace A094292.P15654160003070377862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147997 (2 * n) - A147997 n

end

end A094292.P15654160003070377862

namespace A094292

/-- `A147997(2*n)-A147997(n)` -/
def P15654160003070377862.Spec : Prop :=
  ∀ n, P15654160003070377862.a n = A094292 n

end A094292

/-! ## A094292.P9204400545920724894

`A173173(2*n)-A173173(n)`
-/

namespace A094292.P9204400545920724894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 (2 * n) - A173173 n

end

end A094292.P9204400545920724894

namespace A094292

/-- `A173173(2*n)-A173173(n)` -/
def P9204400545920724894.Spec : Prop :=
  ∀ n, P9204400545920724894.a n = A094292 n

end A094292

/-! ## A094292.P4797074445919891370

`(A001906(n)-A000045(n))/2`
-/

namespace A094292.P4797074445919891370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001906 n - A000045 n : ℚ) / 2

end

end A094292.P4797074445919891370

namespace A094292

/-- `(A001906(n)-A000045(n))/2` -/
def P4797074445919891370.Spec : Prop :=
  ∀ n, P4797074445919891370.a n = (A094292 n : ℚ)

end A094292

/-! ## A094292.P6773864553673481001

`A001654(n)-A059727(n)/2`
-/

namespace A094292.P6773864553673481001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001654 n : ℚ) - (A059727 n : ℚ) / 2

end

end A094292.P6773864553673481001

namespace A094292

/-- `A001654(n)-A059727(n)/2` -/
def P6773864553673481001.Spec : Prop :=
  ∀ n, P6773864553673481001.a n = (A094292 n : ℚ)

end A094292

/-! ## A094292.P644900910687294228

`A001654(n)-C(A001611(n), 2)`
-/

namespace A094292.P644900910687294228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n - (Nat.choose (A001611 n).toNat 2 : ℤ)

end

end A094292.P644900910687294228

namespace A094292

/-- `A001654(n)-C(A001611(n), 2)` -/
def P644900910687294228.Spec : Prop :=
  ∀ n, P644900910687294228.a n = A094292 n

end A094292

/-! ## A094292.P1843778218580063908

`(A000045(2*n)-A000045(n))/2`
-/

namespace A094292.P1843778218580063908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (2 * n) - A000045 n : ℚ) / 2

end

end A094292.P1843778218580063908

namespace A094292

/-- `(A000045(2*n)-A000045(n))/2` -/
def P1843778218580063908.Spec : Prop :=
  ∀ n, P1843778218580063908.a n = (A094292 n : ℚ)

end A094292

/-! ## A094292.P12595987128056236516

`A173673(4*n)-A173673(2*n)`
-/

namespace A094292.P12595987128056236516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (4 * n) - A173673 (2 * n)

end

end A094292.P12595987128056236516

namespace A094292

/-- `A173673(4*n)-A173673(2*n)` -/
def P12595987128056236516.Spec : Prop :=
  ∀ n, P12595987128056236516.a n = A094292 n

end A094292

/-! ## A094292.P6707491906582016445

`(A001906(n)-Δ[A000071(n+1)])/2`
-/

namespace A094292.P6707491906582016445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001906 n - (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A094292.P6707491906582016445

namespace A094292

/-- `(A001906(n)-Δ[A000071(n+1)])/2` -/
def P6707491906582016445.Spec : Prop :=
  ∀ n, P6707491906582016445.a n = (A094292 n : ℚ)

end A094292

/-! ## A094292.P1924992544400618105

`(A094966(2*n)-A212804(n+1))/2`
-/

namespace A094292.P1924992544400618105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094966 (2 * n) - A212804 (n + 1) : ℚ) / 2

end

end A094292.P1924992544400618105

namespace A094292

/-- `(A094966(2*n)-A212804(n+1))/2` -/
def P1924992544400618105.Spec : Prop :=
  ∀ n, P1924992544400618105.a n = (A094292 n : ℚ)

end A094292

/-! ## A094292.P2363813539530242655

`(A094966(2*n)-A103609(2*n))/2`
-/

namespace A094292.P2363813539530242655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094966 (2 * n) - A103609 (2 * n) : ℚ) / 2

end

end A094292.P2363813539530242655

namespace A094292

/-- `(A094966(2*n)-A103609(2*n))/2` -/
def P2363813539530242655.Spec : Prop :=
  ∀ n, P2363813539530242655.a n = (A094292 n : ℚ)

end A094292

/-!
# A094293: At the n-th step, append the number n and n copies of the list of all preceding terms, starting with an empty list.

The programs for A094293, there is no canonical definition to state claims against.
-/

/-! ## A094293.P15577253766247290384

`ceil(p?[A028233(A276076(n))]/2)`
-/

namespace A094293.P15577253766247290384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A276076 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌉

end

end A094293.P15577253766247290384

/-! ## A094293.P1770011388394696166

`A000720(p?[A028233(A276076(n))])`
-/

namespace A094293.P1770011388394696166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A276076 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A094293.P1770011388394696166

/-! ## A094293.P8331104342899776770

`A002033(p?[A028233(A276076(n))])`
-/

namespace A094293.P8331104342899776770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A276076 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A094293.P8331104342899776770

/-! ## A094293.P13674742605724752531

`A026238(p?[A028233(A276076(n))])`
-/

namespace A094293.P13674742605724752531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A276076 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A094293.P13674742605724752531

/-! ## A094293.P10194776729234136129

`A056239(p?[A028233(A276076(n))])`
-/

namespace A094293.P10194776729234136129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A276076 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A094293.P10194776729234136129

/-!
# A094294: a(n) = n*a(n-1) - n + 2 for n > 1; a(1)=1.

The programs for A094294, the canonical program `A094294.P12386661850348983823` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094294 has offset 1).

The definition of A094294 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*a(n-1)-(n+1)+2` (program `A094294.P12386661850348983823`, by `A094294.P12386661850348983823.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094294.P11164261891005725401

`(n+1)*a(n-1)-(n-1)` with `a(0)=1`
-/

namespace A094294.P11164261891005725401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * a (n - 1) - ((n : ℤ) - 1)

end

end A094294.P11164261891005725401

namespace A094294

/-- `(n+1)*a(n-1)-(n-1)` -/
def P11164261891005725401.Spec : Prop :=
  ∀ n, P11164261891005725401.a n = A094294 (n + 1)

theorem P11164261891005725401.correct : P11164261891005725401.Spec := by
  intro n
  simp only [A094294, Nat.add_sub_cancel, A094294.P11164261891005725401.a, A094294.P12386661850348983823.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A094294

/-! ## A094294.P12386661850348983823

`(n+1)*a(n-1)-(n+1)+2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094294

/-- `(n+1)*a(n-1)-(n+1)+2` -/
def P12386661850348983823.Spec : Prop :=
  ∀ n, P12386661850348983823.a n = A094294 (n + 1)

theorem P12386661850348983823.correct : P12386661850348983823.Spec := by
  intro n
  simp only [A094294, Nat.add_sub_cancel]

end A094294

/-! ## A094294.P16778663188607360818

`∑[abs(Δ[n*(a(n-1)-1)])]` with `a(0)=2`
-/

namespace A094294.P16778663188607360818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  (n : ℤ) * (f2 (n - 1) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094294.P16778663188607360818

namespace A094294

/-- `∑[abs(Δ[n*(a(n-1)-1)])]` -/
def P16778663188607360818.Spec : Prop :=
  ∀ n, P16778663188607360818.a n = A094294 (n + 1)

end A094294

/-! ## A094294.P10560306415163972083

`∑[-Δ[n*(a(n-1)-1)]]` with `a(0)=2`
-/

namespace A094294.P10560306415163972083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  (n : ℤ) * (f2 (n - 1) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094294.P10560306415163972083

namespace A094294

/-- `∑[-Δ[n*(a(n-1)-1)]]` -/
def P10560306415163972083.Spec : Prop :=
  ∀ n, P10560306415163972083.a n = A094294 (n + 1)

end A094294

/-! ## A094294.P7376514374881920687

`∑[floor(Δ[n*a(n-1)+n])]` with `a(0)=-2`

`floor` is left out, it is the identity on integers.
-/

namespace A094294.P7376514374881920687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n f2 =>
  (n : ℤ) * f2 (n - 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094294.P7376514374881920687

namespace A094294

/-- `∑[floor(Δ[n*a(n-1)+n])]` -/
def P7376514374881920687.Spec : Prop :=
  ∀ n, P7376514374881920687.a n = A094294 (n + 1)

end A094294

/-! ## A094294.P7563576932975693821

`∑[ceil(Δ[n*a(n-1)+n])]` with `a(0)=-2`

`ceil` is left out, it is the identity on integers.
-/

namespace A094294.P7563576932975693821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n f2 =>
  (n : ℤ) * f2 (n - 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094294.P7563576932975693821

namespace A094294

/-- `∑[ceil(Δ[n*a(n-1)+n])]` -/
def P7563576932975693821.Spec : Prop :=
  ∀ n, P7563576932975693821.a n = A094294 (n + 1)

end A094294

/-! ## A094294.P9007337956029745841

`∑[round(Δ[n*a(n-1)+n])]` with `a(0)=-2`

`round` is left out, it is the identity on integers.
-/

namespace A094294.P9007337956029745841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n f2 =>
  (n : ℤ) * f2 (n - 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094294.P9007337956029745841

namespace A094294

/-- `∑[round(Δ[n*a(n-1)+n])]` -/
def P9007337956029745841.Spec : Prop :=
  ∀ n, P9007337956029745841.a n = A094294 (n + 1)

end A094294

/-! ## A094294.P3535960472546051013

`record[(n-1)*a(n-1)-(n-3)]` with `a(0)=1, a(1)=0`
-/

namespace A094294.P3535960472546051013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  ((n : ℤ) - 1) * f1 (n - 1) - ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094294.P3535960472546051013

namespace A094294

/-- `record[(n-1)*a(n-1)-(n-3)]` -/
def P3535960472546051013.Spec : Prop :=
  ∀ n, P3535960472546051013.a n = A094294 (n + 1)

end A094294

/-! ## A094294.P7046827795760113563

`(a(n-1)-1)/(n+1)^(-1)+2` with `a(0)=1`
-/

namespace A094294.P7046827795760113563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - 1) / (n + 1 : ℚ) ^ (-1 : ℤ) + 2

end

end A094294.P7046827795760113563

namespace A094294

/-- `(a(n-1)-1)/(n+1)^(-1)+2` -/
def P7046827795760113563.Spec : Prop :=
  ∀ n, P7046827795760113563.a n = (A094294 (n + 1) : ℚ)

end A094294

/-! ## A094294.P211643304056737944

`lcm(n+1, 2-a(n-1))+n+3` with `a(0)=1, a(1)=2`
-/

namespace A094294.P211643304056737944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lcm (n + 1 : ℤ) (2 - (a (n - 1) : ℤ)) + (n + 3)

end

end A094294.P211643304056737944

namespace A094294

/-- `lcm(n+1, 2-a(n-1))+n+3` -/
def P211643304056737944.Spec : Prop :=
  ∀ n, (P211643304056737944.a n : ℤ) = A094294 (n + 1)

end A094294

/-!
# A094296: Concatenation of first (n-1) terms of A094295 - A094295(n) divided by n.

The programs for A094296, there is no canonical definition to state claims against.
-/

/-! ## A094296.P9625771141971079343

`Δ[A006165(A381940(n))]`
-/

namespace A094296.P9625771141971079343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (A381940 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094296.P9625771141971079343

/-!
# A094297: Number of (s(0), s(1), ..., s(n)) such that 0 < s(i) < 6 and |s(i) - s(i-1)| <= 1 for i = 1,2,...,n, s(0) = 2, s(n) = 2.

The programs for A094297, the canonical program `A094297.P12141739576876326332` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094297 has offset 1).

The definition of A094297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094297.P17604608936653654663

`ogf((1-x-3x^2)/(1-4x+2x^2+4x^3))`
-/

namespace A094297.P17604608936653654663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -3] [1, -4, 2, 4] n

end

end A094297.P17604608936653654663

namespace A094297

/-- `ogf((1-x-3x^2)/(1-4x+2x^2+4x^3))` -/
def P17604608936653654663.Spec : Prop :=
  ∀ n, P17604608936653654663.a n = A094297 (n + 1)

end A094297

/-! ## A094297.P12141739576876326332

`4*a(n-1)-2*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=3, a(2)=7`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094297

/-- `4*a(n-1)-2*a(n-2)-4*a(n-3)` -/
def P12141739576876326332.Spec : Prop :=
  ∀ n, P12141739576876326332.a n = A094297 (n + 1)

theorem P12141739576876326332.correct : P12141739576876326332.Spec := by
  intro n
  simp only [A094297, Nat.add_sub_cancel]

end A094297

/-! ## A094297.P13381176297594330572

`Δ[A038508(n)]`
-/

namespace A094297.P13381176297594330572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038508 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094297.P13381176297594330572

namespace A094297

/-- `Δ[A038508(n)]` -/
def P13381176297594330572.Spec : Prop :=
  ∀ n, P13381176297594330572.a n = A094297 (n + 1)

end A094297

/-! ## A094297.P13729194182703767413

`A052945(n)+floor(2^(n-1))`
-/

namespace A094297.P13729194182703767413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052945 n + ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A094297.P13729194182703767413

namespace A094297

/-- `A052945(n)+floor(2^(n-1))` -/
def P13729194182703767413.Spec : Prop :=
  ∀ n, P13729194182703767413.a n = A094297 (n + 1)

end A094297

/-! ## A094297.P16642995464416391294

`Δ[A155020(n)]+ceil(2^(n-1))`
-/

namespace A094297.P16642995464416391294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A094297.P16642995464416391294

namespace A094297

/-- `Δ[A155020(n)]+ceil(2^(n-1))` -/
def P16642995464416391294.Spec : Prop :=
  ∀ n, P16642995464416391294.a n = A094297 (n + 1)

end A094297

/-! ## A094297.P1280394502670623852

`A038508(n)+A002605(n)`
-/

namespace A094297.P1280394502670623852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038508 n + A002605 n

end

end A094297.P1280394502670623852

namespace A094297

/-- `A038508(n)+A002605(n)` -/
def P1280394502670623852.Spec : Prop :=
  ∀ n, P1280394502670623852.a n = A094297 (n + 1)

end A094297

/-! ## A094297.P9842891293010681571

`A131577(n)+A052945(n)`
-/

namespace A094297.P9842891293010681571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A052945 n

end

end A094297.P9842891293010681571

namespace A094297

/-- `A131577(n)+A052945(n)` -/
def P9842891293010681571.Spec : Prop :=
  ∀ n, P9842891293010681571.a n = A094297 (n + 1)

end A094297

/-! ## A094297.P12080119718353829554

`A011782(n)+Δ[A155020(n)]`
-/

namespace A094297.P12080119718353829554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (f1 (n + 1) - f1 n)

end

end A094297.P12080119718353829554

namespace A094297

/-- `A011782(n)+Δ[A155020(n)]` -/
def P12080119718353829554.Spec : Prop :=
  ∀ n, P12080119718353829554.a n = A094297 (n + 1)

end A094297

/-! ## A094297.P11941112130762410601

`A038508(n+1)-A038508(n)`
-/

namespace A094297.P11941112130762410601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038508 (n + 1) - A038508 n

end

end A094297.P11941112130762410601

namespace A094297

/-- `A038508(n+1)-A038508(n)` -/
def P11941112130762410601.Spec : Prop :=
  ∀ n, P11941112130762410601.a n = A094297 (n + 1)

end A094297

/-! ## A094297.P15391003165631568115

`Δ[A155020(n)+A034008(n+1)]`
-/

namespace A094297.P15391003165631568115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155020 n + A034008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094297.P15391003165631568115

namespace A094297

/-- `Δ[A155020(n)+A034008(n+1)]` -/
def P15391003165631568115.Spec : Prop :=
  ∀ n, P15391003165631568115.a n = A094297 (n + 1)

end A094297

/-! ## A094297.P2603739300132391498

`A028860(n+1)+A038508(n)+A028860(n)`
-/

namespace A094297.P2603739300132391498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028860 (n + 1) + (A038508 n + A028860 n)

end

end A094297.P2603739300132391498

namespace A094297

/-- `A028860(n+1)+A038508(n)+A028860(n)` -/
def P2603739300132391498.Spec : Prop :=
  ∀ n, P2603739300132391498.a n = A094297 (n + 1)

end A094297

/-! ## A094297.P5916554066112429372

`A287594(n+1)/4`
-/

namespace A094297.P5916554066112429372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287594 (n + 1) : ℚ) / 4

end

end A094297.P5916554066112429372

namespace A094297

/-- `A287594(n+1)/4` -/
def P5916554066112429372.Spec : Prop :=
  ∀ n, P5916554066112429372.a n = (A094297 (n + 1) : ℚ)

end A094297

/-! ## A094297.P305395129446904890

`Δ[Δ[A094286(n+1)]]`
-/

namespace A094297.P305395129446904890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094286 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094297.P305395129446904890

namespace A094297

/-- `Δ[Δ[A094286(n+1)]]` -/
def P305395129446904890.Spec : Prop :=
  ∀ n, P305395129446904890.a n = A094297 (n + 1)

end A094297

/-! ## A094297.P5698421165665371833

`(A026150(n+1)+A011782(n+1))/2`
-/

namespace A094297.P5698421165665371833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026150 (n + 1) + A011782 (n + 1) : ℚ) / 2

end

end A094297.P5698421165665371833

namespace A094297

/-- `(A026150(n+1)+A011782(n+1))/2` -/
def P5698421165665371833.Spec : Prop :=
  ∀ n, P5698421165665371833.a n = (A094297 (n + 1) : ℚ)

end A094297

/-! ## A094297.P10296041736352449774

`(A026150(n+1)+A016116(2*n))/2`
-/

namespace A094297.P10296041736352449774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026150 (n + 1) + A016116 (2 * n) : ℚ) / 2

end

end A094297.P10296041736352449774

namespace A094297

/-- `(A026150(n+1)+A016116(2*n))/2` -/
def P10296041736352449774.Spec : Prop :=
  ∀ n, P10296041736352449774.a n = (A094297 (n + 1) : ℚ)

end A094297

/-! ## A094297.P8010839227310417075

`Δ[∑[A287594(n)]/4]`
-/

namespace A094297.P8010839227310417075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287594 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094297.P8010839227310417075

namespace A094297

/-- `Δ[∑[A287594(n)]/4]` -/
def P8010839227310417075.Spec : Prop :=
  ∀ n, P8010839227310417075.a n = (A094297 (n + 1) : ℚ)

end A094297

/-! ## A094297.P5113211790859539102

`Δ[A268093(n+1)]-A094306(n+2)`
-/

namespace A094297.P5113211790859539102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A094306 (n + 2)

end

end A094297.P5113211790859539102

namespace A094297

/-- `Δ[A268093(n+1)]-A094306(n+2)` -/
def P5113211790859539102.Spec : Prop :=
  ∀ n, P5113211790859539102.a n = A094297 (n + 1)

end A094297

/-!
# A094298: Numbers m such that m and its 10's complement are both semiprimes, i.e., m and 10^k - m, where k is the number of digits of m, are semiprime.

The programs for A094298, there is no canonical definition to state claims against.
-/

/-! ## A094298.P13073443576644048507

`A001358(lt[A000122(n), A175555(3*n+4)])`
-/

namespace A094298.P13073443576644048507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175555 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A094298.P13073443576644048507

/-! ## A094298.P12641627383253300792

`A001358(lt[A079978(n), A175555(3*n+4)])`
-/

namespace A094298.P12641627383253300792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175555 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A094298.P12641627383253300792

/-! ## A094298.P18406605199424056410

`A001358(A230239(n+1)%A069108(n+1)+1)`
-/

namespace A094298.P18406605199424056410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (Int.tmod (A230239 (n + 1)) (A069108 (n + 1)) + 1).toNat

end

end A094298.P18406605199424056410

/-!
# A094299: a(0) = 1; for n>0, if gcd(a(n-1),n) = 1 then a(n) = n*a(n-1) else a(n) = least integer multiple of a(n-1)/n.

The programs for A094299, the canonical program `A094299.P6722401387600026577` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094299 has offset 0).

The definition of A094299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 370 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094299.P6722401387600026577

`gcd(n*a(n-1), (a(n-1)/gcd(n, a(n-1)))%a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094299

/-- `gcd(n*a(n-1), (a(n-1)/gcd(n, a(n-1)))%a(n-1))` -/
def P6722401387600026577.Spec : Prop :=
  ∀ n, (P6722401387600026577.a n : ℤ) = A094299 n

theorem P6722401387600026577.correct : P6722401387600026577.Spec := by
  intro n
  simp only [A094299]

end A094299

/-! ## A094299.P1052618026533011943

`A008339(n+1)/A014963(A131121(n+1))`
-/

namespace A094299.P1052618026533011943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008339 (n + 1) : ℚ) / (A014963 (A131121 (n + 1)).toNat : ℚ)

end

end A094299.P1052618026533011943

namespace A094299

/-- `A008339(n+1)/A014963(A131121(n+1))` -/
def P1052618026533011943.Spec : Prop :=
  ∀ n, P1052618026533011943.a n = (A094299 n : ℚ)

end A094299

/-! ## A094299.P14801086291130606644

`A077139(n^A213002(n))/A014963(A131121(n+1))`
-/

namespace A094299.P14801086291130606644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077139 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A213002 n : ℤ))).toNat : ℚ) / (A014963 (A131121 (n + 1)).toNat : ℚ)

end

end A094299.P14801086291130606644

namespace A094299

/-- `A077139(n^A213002(n))/A014963(A131121(n+1))` -/
def P14801086291130606644.Spec : Prop :=
  ∀ n, P14801086291130606644.a n = (A094299 n : ℚ)

end A094299

/-! ## A094299.P10992938810368229992

`A008339(n+1)/A014963(A000704(n))`
-/

namespace A094299.P10992938810368229992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008339 (n + 1) : ℚ) / (A014963 (A000704 n).toNat : ℚ)

end

end A094299.P10992938810368229992

namespace A094299

/-- `A008339(n+1)/A014963(A000704(n))` -/
def P10992938810368229992.Spec : Prop :=
  ∀ n, P10992938810368229992.a n = (A094299 n : ℚ)

end A094299

/-! ## A094299.P16863611025514032160

`A008339(n+1)/A014963(A049614(n))`
-/

namespace A094299.P16863611025514032160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008339 (n + 1) : ℚ) / (A014963 (A049614 n).toNat : ℚ)

end

end A094299.P16863611025514032160

namespace A094299

/-- `A008339(n+1)/A014963(A049614(n))` -/
def P16863611025514032160.Spec : Prop :=
  ∀ n, P16863611025514032160.a n = (A094299 n : ℚ)

end A094299

