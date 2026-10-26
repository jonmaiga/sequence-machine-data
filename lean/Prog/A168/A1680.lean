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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B001.C010
import Seq.B001.C012
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A168000: Numbers k with property that first digit of 6*k = last digit of k.

The programs for A168000, the canonical program `A168000.P5053828168036232053` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168000 has offset 1).

The definition of A168000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168000.P11605314584596678122

`eq[n%10, A000030(A008458(n))]`
-/

namespace A168000.P11605314584596678122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A168000.P11605314584596678122

namespace A168000

/-- `eq[n%10, A000030(A008458(n))]` -/
def P11605314584596678122.Spec : Prop :=
  ∀ n, (P11605314584596678122.a n : ℤ) = A168000 (n + 1)

end A168000

/-! ## A168000.P5053828168036232053

`eq[A000030(6*n+1), A010879(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A168000

/-- `eq[A000030(6*n+1), A010879(n)]` -/
def P5053828168036232053.Spec : Prop :=
  ∀ n, (P5053828168036232053.a n : ℤ) = A168000 (n + 1)

theorem P5053828168036232053.correct : P5053828168036232053.Spec := by
  intro n
  simp only [A168000, Nat.add_sub_cancel]

end A168000

/-! ## A168000.P13299169968016877718

`A088141(A157909(n+2)+6)`
-/

namespace A168000.P13299169968016877718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088141 (A157909 (n + 2) + 6).toNat

end

end A168000.P13299169968016877718

namespace A168000

/-- `A088141(A157909(n+2)+6)` -/
def P13299169968016877718.Spec : Prop :=
  ∀ n, P13299169968016877718.a n = A168000 (n + 1)

end A168000

/-!
# A168001: Numbers k with property that first digit of 7*k = last digit of k.

The programs for A168001, the canonical program `A168001.P7412613283397050099` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168001 has offset 1).

The definition of A168001 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168001.P7412613283397050099

`eq[A000030(7*n+1), A010879(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A168001

/-- `eq[A000030(7*n+1), A010879(n)]` -/
def P7412613283397050099.Spec : Prop :=
  ∀ n, (P7412613283397050099.a n : ℤ) = A168001 (n + 1)

theorem P7412613283397050099.correct : P7412613283397050099.Spec := by
  intro n
  simp only [A168001, Nat.add_sub_cancel]

end A168001

/-!
# A168003: Orderly numbers (mod tau(n)+3).

The programs for A168003, there is no canonical definition to state claims against.
-/

/-! ## A168003.P10813823019117732161

`or(A128471(n), A250208((n+1)*Δ[n^3]))`
-/

namespace A168003.P10813823019117732161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A128471 n) (A250208 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat)

end

end A168003.P10813823019117732161

/-! ## A168003.P12929947611267439670

`or(A002487(A000699(n)), A128471(n))`
-/

namespace A168003.P12929947611267439670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002487 (A000699 n).toNat) (A128471 n)

end

end A168003.P12929947611267439670

/-! ## A168003.P11357371584167424063

`or(A116627(A000704(n)), A128471(n))`
-/

namespace A168003.P11357371584167424063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A116627 (A000704 n).toNat) (A128471 n)

end

end A168003.P11357371584167424063

/-!
# A168004: Numbers k with property that first digit of 8*k = last digit of k.

The programs for A168004, the canonical program `A168004.P15547708650801779670` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168004 has offset 1).

The definition of A168004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168004.P15547708650801779670

`eq[A000030(8*n+1), A010879(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A168004

/-- `eq[A000030(8*n+1), A010879(n)]` -/
def P15547708650801779670.Spec : Prop :=
  ∀ n, (P15547708650801779670.a n : ℤ) = A168004 (n + 1)

theorem P15547708650801779670.correct : P15547708650801779670.Spec := by
  intro n
  simp only [A168004, Nat.add_sub_cancel]

end A168004

/-! ## A168004.P3928550252420300778

`A302291(A268448(2*n+5))+A016885(2*n+3)`
-/

namespace A168004.P3928550252420300778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302291 (A268448 (2 * n + 5)).toNat + A016885 (2 * n + 3)

end

end A168004.P3928550252420300778

namespace A168004

/-- `A302291(A268448(2*n+5))+A016885(2*n+3)` -/
def P3928550252420300778.Spec : Prop :=
  ∀ n, P3928550252420300778.a n = A168004 (n + 1)

end A168004

/-! ## A168004.P14938474103186874535

`A276853(2*(n+2))+A037911(A246563(n))`
-/

namespace A168004.P14938474103186874535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276853 (2 * (n + 2)) + A037911 (A246563 n).toNat

end

end A168004.P14938474103186874535

namespace A168004

/-- `A276853(2*(n+2))+A037911(A246563(n))` -/
def P14938474103186874535.Spec : Prop :=
  ∀ n, P14938474103186874535.a n = A168004 (n + 1)

end A168004

/-! ## A168004.P12552960071315588363

`A301710(2*(n+2))-A278567(A225027(n+1))`
-/

namespace A168004.P12552960071315588363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 (2 * (n + 2)) - A278567 (A225027 (n + 1)).toNat

end

end A168004.P12552960071315588363

namespace A168004

/-- `A301710(2*(n+2))-A278567(A225027(n+1))` -/
def P12552960071315588363.Spec : Prop :=
  ∀ n, P12552960071315588363.a n = A168004 (n + 1)

end A168004

/-! ## A168004.P11695397191906784144

`10*(n+2)+round(sqrt(A005006(n+1)+1))`
-/

namespace A168004.P11695397191906784144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * (n + 2) : ℤ) + SequenceMachineLib.roundAway (Real.sqrt (A005006 (n + 1) + 1 : ℝ))

end

end A168004.P11695397191906784144

namespace A168004

/-- `10*(n+2)+round(sqrt(A005006(n+1)+1))` -/
def P11695397191906784144.Spec : Prop :=
  ∀ n, P11695397191906784144.a n = A168004 (n + 1)

end A168004

/-!
# A168005: Numbers k with property that first digit of 9*k = last digit of k.

The programs for A168005, the canonical program `A168005.P16894134117400247977` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168005 has offset 1).

The definition of A168005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168005.P16894134117400247977

`eq[A000030(A122709(n)), A010879(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A168005

/-- `eq[A000030(A122709(n)), A010879(n)]` -/
def P16894134117400247977.Spec : Prop :=
  ∀ n, (P16894134117400247977.a n : ℤ) = A168005 (n + 1)

theorem P16894134117400247977.correct : P16894134117400247977.Spec := by
  intro n
  simp only [A168005, Nat.add_sub_cancel]

end A168005

/-! ## A168005.P2050340719843990500

`eq[A000030(A008486(3*n)), A010879(n)]`
-/

namespace A168005.P2050340719843990500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A008486 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A168005.P2050340719843990500

namespace A168005

/-- `eq[A000030(A008486(3*n)), A010879(n)]` -/
def P2050340719843990500.Spec : Prop :=
  ∀ n, (P2050340719843990500.a n : ℤ) = A168005 (n + 1)

end A168005

/-! ## A168005.P8618869255068955328

`eq[A000030(A022433(3*n)), A010879(n)]`
-/

namespace A168005.P8618869255068955328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A022433 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A168005.P8618869255068955328

namespace A168005

/-- `eq[A000030(A022433(3*n)), A010879(n)]` -/
def P8618869255068955328.Spec : Prop :=
  ∀ n, (P8618869255068955328.a n : ℤ) = A168005 (n + 1)

end A168005

/-! ## A168005.P7848089436773866979

`eq[A000030(A324142(3*n+1)), A010879(n)]`
-/

namespace A168005.P7848089436773866979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A324142 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A168005.P7848089436773866979

namespace A168005

/-- `eq[A000030(A324142(3*n+1)), A010879(n)]` -/
def P7848089436773866979.Spec : Prop :=
  ∀ n, (P7848089436773866979.a n : ℤ) = A168005 (n + 1)

end A168005

/-! ## A168005.P15830625653028500223

`A139819(A028440(n+1)+1)`
-/

namespace A168005.P15830625653028500223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139819 (A028440 (n + 1) + 1).toNat

end

end A168005.P15830625653028500223

namespace A168005

/-- `A139819(A028440(n+1)+1)` -/
def P15830625653028500223.Spec : Prop :=
  ∀ n, P15830625653028500223.a n = A168005 (n + 1)

end A168005

/-!
# A168006: Primes p with property that first digit of 2*p = last digit of p.

The programs for A168006, the canonical program `A168006.P12207776267196126972` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168006 has offset 1).

The definition of A168006 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1690 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168006.P12207776267196126972

`p?[A167994(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A168006

/-- `p?[A167994(n+1)]` -/
def P12207776267196126972.Spec : Prop :=
  ∀ n, P12207776267196126972.a n = A168006 (n + 1)

theorem P12207776267196126972.correct : P12207776267196126972.Spec := by
  intro n
  simp only [A168006, Nat.add_sub_cancel]

end A168006

/-! ## A168006.P12680795449232384786

`or(1, p?[A167994(-xor(n, -1))])`
-/

namespace A168006.P12680795449232384786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167994 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A168006.P12680795449232384786

namespace A168006

/-- `or(1, p?[A167994(-xor(n, -1))])` -/
def P12680795449232384786.Spec : Prop :=
  ∀ n, P12680795449232384786.a n = A168006 (n + 1)

end A168006

/-! ## A168006.P8679117583892662800

`record[A006530(A167994(n+4))]`
-/

namespace A168006.P8679117583892662800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A167994 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168006.P8679117583892662800

namespace A168006

/-- `record[A006530(A167994(n+4))]` -/
def P8679117583892662800.Spec : Prop :=
  ∀ n, P8679117583892662800.a n = A168006 (n + 1)

end A168006

/-! ## A168006.P467825359350368177

`filter[A167994(n+1), A010051(#)]`
-/

namespace A168006.P467825359350368177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A168006.P467825359350368177

namespace A168006

/-- `filter[A167994(n+1), A010051(#)]` -/
def P467825359350368177.Spec : Prop :=
  ∀ n, P467825359350368177.a n = A168006 (n + 1)

end A168006

/-! ## A168006.P1586533704298682955

`∩[A000040(n+1), A167994(n+1)]`
-/

namespace A168006.P1586533704298682955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168006.P1586533704298682955

namespace A168006

/-- `∩[A000040(n+1), A167994(n+1)]` -/
def P1586533704298682955.Spec : Prop :=
  ∀ n, (P1586533704298682955.a n : ℤ) = A168006 (n + 1)

end A168006

/-! ## A168006.P6992712333779220778

`∩[A004139(n+1), A167994(n+1)]`
-/

namespace A168006.P6992712333779220778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168006.P6992712333779220778

namespace A168006

/-- `∩[A004139(n+1), A167994(n+1)]` -/
def P6992712333779220778.Spec : Prop :=
  ∀ n, (P6992712333779220778.a n : ℤ) = A168006 (n + 1)

end A168006

/-! ## A168006.P6977947702568459762

`∩[A006005(n+1), A167994(n+1)]`
-/

namespace A168006.P6977947702568459762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168006.P6977947702568459762

namespace A168006

/-- `∩[A006005(n+1), A167994(n+1)]` -/
def P6977947702568459762.Spec : Prop :=
  ∀ n, (P6977947702568459762.a n : ℤ) = A168006 (n + 1)

end A168006

/-! ## A168006.P15583351649203381508

`∩[A008578(n+1), A167994(n+1)]`
-/

namespace A168006.P15583351649203381508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168006.P15583351649203381508

namespace A168006

/-- `∩[A008578(n+1), A167994(n+1)]` -/
def P15583351649203381508.Spec : Prop :=
  ∀ n, (P15583351649203381508.a n : ℤ) = A168006 (n + 1)

end A168006

/-! ## A168006.P17045938792936532491

`∩[A033946(n+1), A167994(n+1)]`
-/

namespace A168006.P17045938792936532491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168006.P17045938792936532491

namespace A168006

/-- `∩[A033946(n+1), A167994(n+1)]` -/
def P17045938792936532491.Spec : Prop :=
  ∀ n, (P17045938792936532491.a n : ℤ) = A168006 (n + 1)

end A168006

/-! ## A168006.P16838937359674428616

`∩[A045319(n+1), A167994(n+1)]`
-/

namespace A168006.P16838937359674428616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168006.P16838937359674428616

namespace A168006

/-- `∩[A045319(n+1), A167994(n+1)]` -/
def P16838937359674428616.Spec : Prop :=
  ∀ n, (P16838937359674428616.a n : ℤ) = A168006 (n + 1)

end A168006

/-! ## A168006.P9039169071231626185

`∩[A045344(n+1), A167994(n+1)]`
-/

namespace A168006.P9039169071231626185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168006.P9039169071231626185

namespace A168006

/-- `∩[A045344(n+1), A167994(n+1)]` -/
def P9039169071231626185.Spec : Prop :=
  ∀ n, (P9039169071231626185.a n : ℤ) = A168006 (n + 1)

end A168006

/-! ## A168006.P17237825239993953606

`∩[A046022(n+1), A167994(n+1)]`
-/

namespace A168006.P17237825239993953606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168006.P17237825239993953606

namespace A168006

/-- `∩[A046022(n+1), A167994(n+1)]` -/
def P17237825239993953606.Spec : Prop :=
  ∀ n, (P17237825239993953606.a n : ℤ) = A168006 (n + 1)

end A168006

/-! ## A168006.P7650598772191519500

`∩[A051948(n+1), A167994(n+1)]`
-/

namespace A168006.P7650598772191519500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168006.P7650598772191519500

namespace A168006

/-- `∩[A051948(n+1), A167994(n+1)]` -/
def P7650598772191519500.Spec : Prop :=
  ∀ n, (P7650598772191519500.a n : ℤ) = A168006 (n + 1)

end A168006

/-! ## A168006.P16044222100689071013

`∩[A053813(n+1), A167994(n+1)]`
-/

namespace A168006.P16044222100689071013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168006.P16044222100689071013

namespace A168006

/-- `∩[A053813(n+1), A167994(n+1)]` -/
def P16044222100689071013.Spec : Prop :=
  ∀ n, (P16044222100689071013.a n : ℤ) = A168006 (n + 1)

end A168006

/-! ## A168006.P6123273614229856420

`∩[A062972(n+1), A167994(n+1)]`
-/

namespace A168006.P6123273614229856420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168006.P6123273614229856420

namespace A168006

/-- `∩[A062972(n+1), A167994(n+1)]` -/
def P6123273614229856420.Spec : Prop :=
  ∀ n, (P6123273614229856420.a n : ℤ) = A168006 (n + 1)

end A168006

/-! ## A168006.P3548567911472472123

`∩[A065091(n+1), A167994(n+1)]`
-/

namespace A168006.P3548567911472472123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168006.P3548567911472472123

namespace A168006

/-- `∩[A065091(n+1), A167994(n+1)]` -/
def P3548567911472472123.Spec : Prop :=
  ∀ n, (P3548567911472472123.a n : ℤ) = A168006 (n + 1)

end A168006

/-! ## A168006.P15927868340865454765

`∩[A066050(n+1), A167994(n+1)]`
-/

namespace A168006.P15927868340865454765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168006.P15927868340865454765

namespace A168006

/-- `∩[A066050(n+1), A167994(n+1)]` -/
def P15927868340865454765.Spec : Prop :=
  ∀ n, (P15927868340865454765.a n : ℤ) = A168006 (n + 1)

end A168006

/-! ## A168006.P8624963458367479038

`∩[A066542(n+1), A167994(n+1)]`
-/

namespace A168006.P8624963458367479038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168006.P8624963458367479038

namespace A168006

/-- `∩[A066542(n+1), A167994(n+1)]` -/
def P8624963458367479038.Spec : Prop :=
  ∀ n, (P8624963458367479038.a n : ℤ) = A168006 (n + 1)

end A168006

/-! ## A168006.P1755394305609944436

`∩[A067126(n+1), A167994(n+1)]`
-/

namespace A168006.P1755394305609944436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168006.P1755394305609944436

namespace A168006

/-- `∩[A067126(n+1), A167994(n+1)]` -/
def P1755394305609944436.Spec : Prop :=
  ∀ n, (P1755394305609944436.a n : ℤ) = A168006 (n + 1)

end A168006

/-! ## A168006.P11015114305064528911

`∩[A067133(n+1), A167994(n+1)]`
-/

namespace A168006.P11015114305064528911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168006.P11015114305064528911

namespace A168006

/-- `∩[A067133(n+1), A167994(n+1)]` -/
def P11015114305064528911.Spec : Prop :=
  ∀ n, (P11015114305064528911.a n : ℤ) = A168006 (n + 1)

end A168006

/-!
# A168007: Jumping divisor sequence (see Comments lines for definition).

The programs for A168007, there is no canonical definition to state claims against.
-/

/-! ## A168007.P2022660491282627981

`A168008(n)+a(n-1)` with `a(0)=1`
-/

namespace A168007.P2022660491282627981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A168008 n + a (n - 1)

end

end A168007.P2022660491282627981

/-! ## A168007.P7191084767747949769

`∑[A168008(round(sqrt(n²+1)))]`
-/

namespace A168007.P7191084767747949769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168008 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168007.P7191084767747949769

/-! ## A168007.P18042896357780124733

`∑[A168008(abs(1-n)+1)]-1`
-/

namespace A168007.P18042896357780124733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168008 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A168007.P18042896357780124733

/-! ## A168007.P8402284769805094879

`abs(∑[A168008(A028310(n))])`
-/

namespace A168007.P8402284769805094879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168008 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A168007.P8402284769805094879

/-! ## A168007.P463948601902097321

`abs(∑[A168008(A000007(n)+n)])`
-/

namespace A168007.P463948601902097321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168008 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A168007.P463948601902097321

/-! ## A168007.P17976329382600206177

`A114112(A168009(n+1))`
-/

namespace A168007.P17976329382600206177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114112 (A168009 (n + 1)).toNat

end

end A168007.P17976329382600206177

/-! ## A168007.P12630107222960148277

`A168009(-xor(n, C(n, n²)-2))`
-/

namespace A168007.P12630107222960148277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168009 (-Int.xor (n : ℤ) ((Nat.choose n (n ^ 2) : ℤ) - 2)).toNat

end

end A168007.P12630107222960148277

/-!
# A168008: First differences of A168007.

The programs for A168008, there is no canonical definition to state claims against.
-/

/-! ## A168008.P9190332923662857027

`Δ[A168007(n+1)]`
-/

namespace A168008.P9190332923662857027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168008.P9190332923662857027

/-! ## A168008.P14533238974722730458

`A168007(n+2)-A168007(n+1)`
-/

namespace A168008.P14533238974722730458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168007 (n + 2) - A168007 (n + 1)

end

end A168008.P14533238974722730458

/-! ## A168008.P111845136716136557

`or(A020639(A168007(n+1)), A105812(n))`
-/

namespace A168008.P111845136716136557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (A168007 (n + 1)).toNat) (A105812 n)

end

end A168008.P111845136716136557

/-! ## A168008.P953491384835764660

`Δ[A159475(a(n-1))-3*n%2]` with `a(0)=1, a(1)=2`
-/

namespace A168008.P953491384835764660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A159475 (f1 (n - 1)).toNat - ((3 * (n % 2) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168008.P953491384835764660

/-! ## A168008.P9710305765469857390

`Δ[A114112(A168007(-xor(n, C(n, n²)-2)))]`
-/

namespace A168008.P9710305765469857390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114112 (A168007 (-Int.xor (n : ℤ) ((Nat.choose n (n ^ 2) : ℤ) - 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168008.P9710305765469857390

/-! ## A168008.P10774211924212275114

`Δ[A114112(A168009(n+1))]`
-/

namespace A168008.P10774211924212275114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114112 (A168009 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168008.P10774211924212275114

/-!
# A168009: Numbers of A168007, in sorted order.

The programs for A168009, there is no canonical definition to state claims against.
-/

/-! ## A168009.P10350538579957597037

`A168007(-xor(n, C(n, n²)-2))`
-/

namespace A168009.P10350538579957597037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168007 (-Int.xor (n : ℤ) ((Nat.choose n (n ^ 2) : ℤ) - 2)).toNat

end

end A168009.P10350538579957597037

/-! ## A168009.P6353211086374926624

`A168007(A114112(n+1))`
-/

namespace A168009.P6353211086374926624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168007 (A114112 (n + 1)).toNat

end

end A168009.P6353211086374926624

/-! ## A168009.P7514134985232473313

`A168007(xor(n, A157928(n))+1)`
-/

namespace A168009.P7514134985232473313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168007 (Int.xor (n : ℤ) (A157928 n) + 1).toNat

end

end A168009.P7514134985232473313

/-! ## A168009.P1055481106943257433

`A114112(∑[A168008(abs(1-n)+1)]-1)`
-/

namespace A168009.P1055481106943257433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168008 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114112 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A168009.P1055481106943257433

/-! ## A168009.P8955377347826436762

`∪[A168007(2*(n+2)), record[A168007(n+1)]]`
-/

namespace A168009.P8955377347826436762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168007 (2 * (n + 2))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A168009.P8955377347826436762

/-! ## A168009.P9192740633197145101

`record[A168007(A028310(A014681(n)))]`
-/

namespace A168009.P9192740633197145101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168007 (A028310 (A014681 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168009.P9192740633197145101

/-! ## A168009.P10117926818118836790

`A168007(A223134(n)-A014681(n))`
-/

namespace A168009.P10117926818118836790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168007 (A223134 n - A014681 n).toNat

end

end A168009.P10117926818118836790

/-!
# A168010: a(n) = Sum of all numbers of divisors of all numbers k such that n^2 <= k < (n+1)^2.

The programs for A168010, there is no canonical definition to state claims against.
-/

/-! ## A168010.P17433747514692220458

`Δ[A175346(n+1)-A048691(n+1)]`
-/

namespace A168010.P17433747514692220458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175346 (n + 1) - A048691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168010.P17433747514692220458

/-! ## A168010.P8499941148971309312

`Δ[(n+1)²+2*A166381(n+1)-A048691(n+1)]`
-/

namespace A168010.P8499941148971309312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + 2 * A166381 (n + 1) - A048691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168010.P8499941148971309312

/-! ## A168010.P14652233754920214403

`Δ[A175346(n+1)-A004396(A146564(n+1))]`
-/

namespace A168010.P14652233754920214403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175346 (n + 1) - A004396 (A146564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168010.P14652233754920214403

/-! ## A168010.P5212331733504444052

`Δ[A175346(n+1)-(A055205(n+1)+A000005(n+1))]`
-/

namespace A168010.P5212331733504444052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175346 (n + 1) - (A055205 (n + 1) + A000005 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168010.P5212331733504444052

/-! ## A168010.P13687486706058943058

`Δ[A175346(n+1)-A196524(n+1)/A000010(n+1)]`
-/

namespace A168010.P13687486706058943058
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175346 (n + 1) : ℚ) - (A196524 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168010.P13687486706058943058

/-! ## A168010.P12513940424941797787

`Δ[A006218(n*(n+2))]`
-/

namespace A168010.P12513940424941797787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168010.P12513940424941797787

/-! ## A168010.P3270523282621613696

`abs(Δ[A006218((n+1)²-1)])`
-/

namespace A168010.P3270523282621613696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 ((n + 1) ^ 2 - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A168010.P3270523282621613696

/-! ## A168010.P4400635140151368632

`Δ[A006218(A005563(n))]%A001546(n)`
-/

namespace A168010.P4400635140151368632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A005563 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A001546 n)

end

end A168010.P4400635140151368632

/-! ## A168010.P1644244869135548651

`Δ[A006218(A005563(n))%A008384(n)]`
-/

namespace A168010.P1644244869135548651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006218 (A005563 n).toNat) (A008384 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168010.P1644244869135548651

/-! ## A168010.P12159288753964276866

`A033999(n)²*Δ[A006218(A005563(n))]`
-/

namespace A168010.P12159288753964276866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A005563 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * (f1 (n + 1) - f1 n)

end

end A168010.P12159288753964276866

/-! ## A168010.P862084815597278557

`A000007(n+1)+Δ[A006218(A005563(n))]`
-/

namespace A168010.P862084815597278557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A005563 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (f1 (n + 1) - f1 n)

end

end A168010.P862084815597278557

/-! ## A168010.P2563750827619648664

`A000038(n+1)+Δ[A006218(A005563(n))]`
-/

namespace A168010.P2563750827619648664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A005563 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + (f1 (n + 1) - f1 n)

end

end A168010.P2563750827619648664

/-! ## A168010.P10680797876113532594

`Δ[A006218(A005563(n))-A000034(2*n)]`
-/

namespace A168010.P10680797876113532594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A005563 n).toNat - A000034 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168010.P10680797876113532594

/-! ## A168010.P17363701717572009082

`Δ[A006218(A005563(n))]-A000035(2*n)`
-/

namespace A168010.P17363701717572009082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A005563 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000035 (2 * n)

end

end A168010.P17363701717572009082

/-! ## A168010.P1852114225739976106

`Δ[A006218(A005563(n))]*A033999(2*n)`
-/

namespace A168010.P1852114225739976106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A005563 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 (2 * n)

end

end A168010.P1852114225739976106

/-! ## A168010.P18153747784961479287

`Δ[A006218(A005563(n))-(A000041(n)%2)!]`
-/

namespace A168010.P18153747784961479287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A005563 n).toNat - (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168010.P18153747784961479287

/-! ## A168010.P16115374305275112768

`A023443(Δ[A132106(n*(n+2))])`
-/

namespace A168010.P16115374305275112768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132106 (n * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n).toNat

end

end A168010.P16115374305275112768

/-!
# A168011: a(n) = Sum of all numbers of divisors of all numbers < (n+1)^2.

The programs for A168011, there is no canonical definition to state claims against.
-/

/-! ## A168011.P15232685062326223933

`∑[A168010(n+1)]`
-/

namespace A168011.P15232685062326223933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168011.P15232685062326223933

/-! ## A168011.P2320014098395251065

`A175346(n+2)-A048691(n+2)`
-/

namespace A168011.P2320014098395251065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175346 (n + 2) - A048691 (n + 2)

end

end A168011.P2320014098395251065

/-! ## A168011.P4684523797209129512

`A175346(n+2)-A004396(A146564(n+2))`
-/

namespace A168011.P4684523797209129512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175346 (n + 2) - A004396 (A146564 (n + 2)).toNat

end

end A168011.P4684523797209129512

/-! ## A168011.P18228113493979339007

`A006218((n+2)²-1)`
-/

namespace A168011.P18228113493979339007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 ((n + 2) ^ 2 - 1)

end

end A168011.P18228113493979339007

/-! ## A168011.P1829840082678153534

`∑[abs(Δ[A006218(n*(n+2))])]`
-/

namespace A168011.P1829840082678153534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168011.P1829840082678153534

/-! ## A168011.P10605783982808878958

`A054519((n+2)²-1)-1`
-/

namespace A168011.P10605783982808878958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 ((n + 2) ^ 2 - 1) - 1

end

end A168011.P10605783982808878958

/-! ## A168011.P11497746964843038787

`∑[abs(Δ[A054519(n*(n+2))])]`
-/

namespace A168011.P11497746964843038787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (n * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168011.P11497746964843038787

/-! ## A168011.P10020274927107222069

`A362059(A054000(n+2))`
-/

namespace A168011.P10020274927107222069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362059 (A054000 (n + 2)).toNat

end

end A168011.P10020274927107222069

/-! ## A168011.P481437404586816812

`A175346(n+1)+A171762(n+1)`
-/

namespace A168011.P481437404586816812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175346 (n + 1) + A171762 (n + 1)

end

end A168011.P481437404586816812

/-!
# A168012: a(n) = sum of all divisors of all numbers k such that n^2 <= k < (n+1)^2.

The programs for A168012, there is no canonical definition to state claims against.
-/

/-! ## A168012.P14197101061677641768

`Δ[A160664(n*(n+2))]`
-/

namespace A168012.P14197101061677641768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (n * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168012.P14197101061677641768

/-! ## A168012.P9156486413636357462

`abs(Δ[A160664((n+1)²-1)])`
-/

namespace A168012.P9156486413636357462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 ((n + 1) ^ 2 - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A168012.P9156486413636357462

/-! ## A168012.P14040577693194757477

`Δ[record[A160664(A336642(n+1))]]`
-/

namespace A168012.P14040577693194757477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (A336642 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168012.P14040577693194757477

/-! ## A168012.P4346734506172338956

`lcm((-1)^n, Δ[A160664(A005563(n))])`
-/

namespace A168012.P4346734506172338956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (A005563 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (f1 (n + 1) - f1 n)

end

end A168012.P4346734506172338956

/-! ## A168012.P568030471598664655

`Δ[record[A160664(A020703(n+1)-1)]]`
-/

namespace A168012.P568030471598664655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (A020703 (n + 1) - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168012.P568030471598664655

/-! ## A168012.P16536584890208999682

`(A000041(n)%2)!*Δ[A160664(A005563(n))]`
-/

namespace A168012.P16536584890208999682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (A005563 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * (f1 (n + 1) - f1 n)

end

end A168012.P16536584890208999682

/-!
# A168013: a(n) = Sum of all divisors of all numbers < (n+1)^2.

The programs for A168013, the canonical program `A168013.P6271669954771012062` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168013 has offset 1).

The definition of A168013 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168013.P6271669954771012062

`A024916((n+1)²+2*(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A168013

/-- `A024916((n+1)²+2*(n+1))` -/
def P6271669954771012062.Spec : Prop :=
  ∀ n, P6271669954771012062.a n = A168013 (n + 1)

theorem P6271669954771012062.correct : P6271669954771012062.Spec := by
  intro n
  simp only [A168013, Nat.add_sub_cancel]

end A168013

/-! ## A168013.P9968825708547299648

`∑[A168012(n+1)]`
-/

namespace A168013.P9968825708547299648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168013.P9968825708547299648

namespace A168013

/-- `∑[A168012(n+1)]` -/
def P9968825708547299648.Spec : Prop :=
  ∀ n, P9968825708547299648.a n = A168013 (n + 1)

end A168013

/-! ## A168013.P8797806241196040729

`∑[record[A168012(A152271(n))]]`
-/

namespace A168013.P8797806241196040729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168012 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168013.P8797806241196040729

namespace A168013

/-- `∑[record[A168012(A152271(n))]]` -/
def P8797806241196040729.Spec : Prop :=
  ∀ n, P8797806241196040729.a n = A168013 (n + 1)

end A168013

/-! ## A168013.P10584812321942710192

`∑[record[A168012(A134478(n))]]`
-/

namespace A168013.P10584812321942710192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168012 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168013.P10584812321942710192

namespace A168013

/-- `∑[record[A168012(A134478(n))]]` -/
def P10584812321942710192.Spec : Prop :=
  ∀ n, P10584812321942710192.a n = A168013 (n + 1)

end A168013

/-! ## A168013.P14264905749105083102

`A160664((n+2)²-1)-1`
-/

namespace A168013.P14264905749105083102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 ((n + 2) ^ 2 - 1) - 1

end

end A168013.P14264905749105083102

namespace A168013

/-- `A160664((n+2)²-1)-1` -/
def P14264905749105083102.Spec : Prop :=
  ∀ n, P14264905749105083102.a n = A168013 (n + 1)

end A168013

/-! ## A168013.P6903809725867920808

`∑[abs(Δ[A160664(n*(n+2))])]`
-/

namespace A168013.P6903809725867920808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (n * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168013.P6903809725867920808

namespace A168013

/-- `∑[abs(Δ[A160664(n*(n+2))])]` -/
def P6903809725867920808.Spec : Prop :=
  ∀ n, P6903809725867920808.a n = A168013 (n + 1)

end A168013

/-! ## A168013.P13745461632316599399

`A327329((n+1)*(n+3))/2`
-/

namespace A168013.P13745461632316599399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327329 ((n + 1) * (n + 3)) : ℚ) / 2

end

end A168013.P13745461632316599399

namespace A168013

/-- `A327329((n+1)*(n+3))/2` -/
def P13745461632316599399.Spec : Prop :=
  ∀ n, P13745461632316599399.a n = (A168013 (n + 1) : ℚ)

theorem P13745461632316599399.correct : P13745461632316599399.Spec := by
  intro n
  simp only [A168013, Nat.add_sub_cancel, A168013.P13745461632316599399.a, A168013.P6271669954771012062.a, A024916, A024916.P6070136297472608546.a, A327329, A327329.P5185755489289824233.a, A160664, A160664.P14996881624845338289.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A168013

/-! ## A168013.P3632030739507621516

`root(A024916(∑[2*n+3]), 2)²`
-/

namespace A168013.P3632030739507621516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A024916 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A168013.P3632030739507621516

namespace A168013

/-- `root(A024916(∑[2*n+3]), 2)²` -/
def P3632030739507621516.Spec : Prop :=
  ∀ n, P3632030739507621516.a n = (A168013 (n + 1) : ℝ)

end A168013

/-! ## A168013.P8030582724266075015

`A256533((n+2)²-1)/((n+2)²-1)`
-/

namespace A168013.P8030582724266075015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256533 ((n + 2) ^ 2 - 1) : ℚ) / (((n + 2) ^ 2 : ℤ) - 1 : ℚ)

end

end A168013.P8030582724266075015

namespace A168013

/-- `A256533((n+2)²-1)/((n+2)²-1)` -/
def P8030582724266075015.Spec : Prop :=
  ∀ n, P8030582724266075015.a n = (A168013 (n + 1) : ℚ)

end A168013

/-! ## A168013.P12818265651472464560

`A007318(C(2, n))*A024916(∑[2*n+3])`
-/

namespace A168013.P12818265651472464560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A024916 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168013.P12818265651472464560

namespace A168013

/-- `A007318(C(2, n))*A024916(∑[2*n+3])` -/
def P12818265651472464560.Spec : Prop :=
  ∀ n, P12818265651472464560.a n = A168013 (n + 1)

end A168013

/-!
# A168014: Sum of all parts of all partitions of n into equal parts that do not contain 1 as a part.

The programs for A168014, the canonical program `A168014.P8076818047564407707` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168014 has offset 0).

The definition of A168014 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032741, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A168014.P8076818047564407707

`n*A032741(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A168014

/-- `n*A032741(n)` -/
def P8076818047564407707.Spec : Prop :=
  ∀ n, P8076818047564407707.a n = A168014 n

theorem P8076818047564407707.correct : P8076818047564407707.Spec := by
  intro n
  simp only [A168014]

end A168014

/-! ## A168014.P4574446698419147187

`∑{d}[n, n%(n*#)]`
-/

namespace A168014.P4574446698419147187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), n % (n * d)

end

end A168014.P4574446698419147187

namespace A168014

/-- `∑{d}[n, n%(n*#)]` -/
def P4574446698419147187.Spec : Prop :=
  ∀ n, (P4574446698419147187.a n : ℤ) = A168014 n

end A168014

/-! ## A168014.P5864103481401825697

`∑{d}[n, lcm(n, #)]-n`
-/

namespace A168014.P5864103481401825697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), Nat.lcm n d : ℕ) : ℤ) - (n : ℤ)

end

end A168014.P5864103481401825697

namespace A168014

/-- `∑{d}[n, lcm(n, #)]-n` -/
def P5864103481401825697.Spec : Prop :=
  ∀ n, P5864103481401825697.a n = A168014 n

end A168014

/-! ## A168014.P4938658300411501122

`n*(∏{e}[n, #+1]-1)`
-/

namespace A168014.P4938658300411501122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - 1)

end

end A168014.P4938658300411501122

namespace A168014

/-- `n*(∏{e}[n, #+1]-1)` -/
def P4938658300411501122.Spec : Prop :=
  ∀ n, P4938658300411501122.a n = A168014 n

end A168014

/-! ## A168014.P45702381467594586

`n/2*A319410(n)`
-/

namespace A168014.P45702381467594586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A319410 n : ℚ)

end

end A168014.P45702381467594586

namespace A168014

/-- `n/2*A319410(n)` -/
def P45702381467594586.Spec : Prop :=
  ∀ n, P45702381467594586.a n = (A168014 n : ℚ)

end A168014

/-! ## A168014.P14203608007555484905

`∑{d}[n, n-A000010(#)]`
-/

namespace A168014.P14203608007555484905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n : ℤ) - A000010 d)

end

end A168014.P14203608007555484905

namespace A168014

/-- `∑{d}[n, n-A000010(#)]` -/
def P14203608007555484905.Spec : Prop :=
  ∀ n, P14203608007555484905.a n = A168014 n

end A168014

/-! ## A168014.P8867023158055324602

`∑{d}[n, A018804(#)]-n`
-/

namespace A168014.P8867023158055324602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d - (n : ℤ)

end

end A168014.P8867023158055324602

namespace A168014

/-- `∑{d}[n, A018804(#)]-n` -/
def P8867023158055324602.Spec : Prop :=
  ∀ n, P8867023158055324602.a n = A168014 n

end A168014

/-! ## A168014.P5325239757033847884

`∑{d}[n, n*A060576(#)]`
-/

namespace A168014.P5325239757033847884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n : ℤ) * A060576 d

end

end A168014.P5325239757033847884

namespace A168014

/-- `∑{d}[n, n*A060576(#)]` -/
def P5325239757033847884.Spec : Prop :=
  ∀ n, P5325239757033847884.a n = A168014 n

end A168014

/-! ## A168014.P2784888843698482830

`∑{d}[n, n*A157928(#)]`
-/

namespace A168014.P2784888843698482830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n : ℤ) * A157928 d

end

end A168014.P2784888843698482830

namespace A168014

/-- `∑{d}[n, n*A157928(#)]` -/
def P2784888843698482830.Spec : Prop :=
  ∀ n, P2784888843698482830.a n = A168014 n

end A168014

/-! ## A168014.P1641566873847533772

`n*A000005(abs(1-n)+1)-n`
-/

namespace A168014.P1641566873847533772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000005 (|1 - (n : ℤ)| + 1).toNat - (n : ℤ)

end

end A168014.P1641566873847533772

namespace A168014

/-- `n*A000005(abs(1-n)+1)-n` -/
def P1641566873847533772.Spec : Prop :=
  ∀ n, P1641566873847533772.a n = A168014 n

end A168014

/-! ## A168014.P16402856076525332785

`n*A059169(A145154(n))`
-/

namespace A168014.P16402856076525332785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A059169 (A145154 n).toNat

end

end A168014.P16402856076525332785

namespace A168014

/-- `n*A059169(A145154(n))` -/
def P16402856076525332785.Spec : Prop :=
  ∀ n, P16402856076525332785.a n = A168014 n

end A168014

/-! ## A168014.P10758844387375183660

`n*A338117(A004277(n))`
-/

namespace A168014.P10758844387375183660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A338117 (A004277 n).toNat

end

end A168014.P10758844387375183660

namespace A168014

/-- `n*A338117(A004277(n))` -/
def P10758844387375183660.Spec : Prop :=
  ∀ n, P10758844387375183660.a n = A168014 n

end A168014

/-! ## A168014.P6758656219371497684

`n*A338117(A257088(n))`
-/

namespace A168014.P6758656219371497684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A338117 (A257088 n).toNat

end

end A168014.P6758656219371497684

namespace A168014

/-- `n*A338117(A257088(n))` -/
def P6758656219371497684.Spec : Prop :=
  ∀ n, P6758656219371497684.a n = A168014 n

end A168014

/-! ## A168014.P3070317713938606088

`n*(A000005(A028310(n))-1)`
-/

namespace A168014.P3070317713938606088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000005 (A028310 n).toNat - 1)

end

end A168014.P3070317713938606088

namespace A168014

/-- `n*(A000005(A028310(n))-1)` -/
def P3070317713938606088.Spec : Prop :=
  ∀ n, P3070317713938606088.a n = A168014 n

end A168014

/-! ## A168014.P4754758880774652976

`abs(n*A325937(A019425(2*n+1)))`
-/

namespace A168014.P4754758880774652976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A325937 (A019425 (2 * n + 1)).toNat|

end

end A168014.P4754758880774652976

namespace A168014

/-- `abs(n*A325937(A019425(2*n+1)))` -/
def P4754758880774652976.Spec : Prop :=
  ∀ n, P4754758880774652976.a n = A168014 n

end A168014

/-! ## A168014.P14413762769606927293

`n*(A092338(n+1)-A000005(n+1))`
-/

namespace A168014.P14413762769606927293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A092338 (n + 1) - A000005 (n + 1))

end

end A168014.P14413762769606927293

namespace A168014

/-- `n*(A092338(n+1)-A000005(n+1))` -/
def P14413762769606927293.Spec : Prop :=
  ∀ n, P14413762769606927293.a n = A168014 n

theorem P14413762769606927293.correct : P14413762769606927293.Spec := by
  intro n
  simp only [A168014, Nat.add_sub_cancel, A168014.P14413762769606927293.a, A168014.P8076818047564407707.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A092338, A092338.P14591990927845726689.f1, A092338.P14591990927845726689.f2, A092338.P14591990927845726689.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A168014

/-! ## A168014.P16279279509814134503

`A038040(A028310(n))-A028310(n)`
-/

namespace A168014.P16279279509814134503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (A028310 n).toNat - A028310 n

end

end A168014.P16279279509814134503

namespace A168014

/-- `A038040(A028310(n))-A028310(n)` -/
def P16279279509814134503.Spec : Prop :=
  ∀ n, P16279279509814134503.a n = A168014 n

end A168014

/-! ## A168014.P43041424504534370

`n*(A002865(n)-A167928(n))`
-/

namespace A168014.P43041424504534370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A002865 n - A167928 n)

end

end A168014.P43041424504534370

namespace A168014

/-- `n*(A002865(n)-A167928(n))` -/
def P43041424504534370.Spec : Prop :=
  ∀ n, P43041424504534370.a n = A168014 n

end A168014

/-! ## A168014.P9130801858600564275

`A168015(n)-A000041(n)`
-/

namespace A168014.P9130801858600564275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168015 n - A000041 n

end

end A168014.P9130801858600564275

namespace A168014

/-- `A168015(n)-A000041(n)` -/
def P9130801858600564275.Spec : Prop :=
  ∀ n, P9130801858600564275.a n = A168014 n

end A168014

/-! ## A168014.P7998128646061897809

`n*(A000041(n)-A167934(n))`
-/

namespace A168014.P7998128646061897809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000041 n - A167934 n)

end

end A168014.P7998128646061897809

namespace A168014

/-- `n*(A000041(n)-A167934(n))` -/
def P7998128646061897809.Spec : Prop :=
  ∀ n, P7998128646061897809.a n = A168014 n

end A168014

/-!
# A168015: a(n) = A000041(n) + n*A032741(n).

The programs for A168015, there is no canonical definition to state claims against.
-/

/-! ## A168015.P12916617695358790787

`A000041(n)+n*A032741(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168015.P12916617695358790787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (n : ℤ) * A032741 n

end

end A168015.P12916617695358790787

/-! ## A168015.P14424974246350054860

`A168014(n)+A000041(n)`
-/

namespace A168015.P14424974246350054860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168014 n + A000041 n

end

end A168015.P14424974246350054860

/-! ## A168015.P4748014171758046023

`A168014(n)+∑[A002865(n)]`
-/

namespace A168015.P4748014171758046023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168014 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168015.P4748014171758046023

/-! ## A168015.P7193258556845166593

`A168014(n)+∑[A085811(n+3)]`
-/

namespace A168015.P7193258556845166593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168014 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168015.P7193258556845166593

/-! ## A168015.P16536061051121338342

`A168014(n)+∑[A232697(n)]-n`
-/

namespace A168015.P16536061051121338342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168014 n + (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A168015.P16536061051121338342

/-! ## A168015.P6685095850731908776

`∑[A002865(n)]+n*A032741(n)`
-/

namespace A168015.P6685095850731908776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) * A032741 n

end

end A168015.P6685095850731908776

/-! ## A168015.P15172983693771610824

`∑{d}[n, n-A000010(#)]+A000041(n)`
-/

namespace A168015.P15172983693771610824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n : ℤ) - A000010 d) + A000041 n

end

end A168015.P15172983693771610824

/-! ## A168015.P3124760276223458260

`A000009(n)+A168014(n)+A047967(n)`
-/

namespace A168015.P3124760276223458260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A168014 n + A047967 n)

end

end A168015.P3124760276223458260

/-! ## A168015.P15481742689977727702

`A027187(n)+A168014(n)+A027193(n)`
-/

namespace A168015.P15481742689977727702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n + (A168014 n + A027193 n)

end

end A168015.P15481742689977727702

/-! ## A168015.P16198062517927035306

`A035363(n)+A168014(n)+A086543(n)`
-/

namespace A168015.P16198062517927035306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n + (A168014 n + A086543 n)

end

end A168015.P16198062517927035306

/-! ## A168015.P14613111786220316646

`A000726(n)+A295341(n)+A168014(n)`
-/

namespace A168015.P14613111786220316646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 n + (A295341 n + A168014 n)

end

end A168015.P14613111786220316646

/-! ## A168015.P5858411975814456094

`A000041(n)+n*A059169(A145154(n))`
-/

namespace A168015.P5858411975814456094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (n : ℤ) * A059169 (A145154 n).toNat

end

end A168015.P5858411975814456094

/-! ## A168015.P10153478282874316275

`A168014(n)+A139582(n)/2`
-/

namespace A168015.P10153478282874316275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168014 n : ℚ) + (A139582 n : ℚ) / 2

end

end A168015.P10153478282874316275

/-! ## A168015.P389914132879273725

`n*∑{d}[n, (n+1)%#]+A035363(2*n)`
-/

namespace A168015.P389914132879273725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∑ d ∈ Nat.divisors (f1 n), (n + 1) % d) : ℕ) : ℤ) + A035363 (2 * n)

end

end A168015.P389914132879273725

/-! ## A168015.P9739548407342741113

`A168014(n)+A035363(2*n)`
-/

namespace A168015.P9739548407342741113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168014 n + A035363 (2 * n)

end

end A168015.P9739548407342741113

/-! ## A168015.P5101262491816170715

`A168014(n)+A143229(n)/A000070(n)`
-/

namespace A168015.P5101262491816170715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168014 n : ℚ) + (A143229 n : ℚ) / (A000070 n : ℚ)

end

end A168015.P5101262491816170715

/-! ## A168015.P6841900525130504692

`A096276(n)+A168014(n)+A114324(n)`
-/

namespace A168015.P6841900525130504692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n + (A168014 n + A114324 n)

end

end A168015.P6841900525130504692

/-! ## A168015.P9813451470204392701

`A168014(n)+A332281(n)+A332280(n)`
-/

namespace A168015.P9813451470204392701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168014 n + (A332281 n + A332280 n)

end

end A168015.P9813451470204392701

/-! ## A168015.P15620575388083777386

`A168014(n)+A332284(n)+A332283(n)`
-/

namespace A168015.P15620575388083777386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168014 n + (A332284 n + A332283 n)

end

end A168015.P15620575388083777386

/-! ## A168015.P12978359093030700150

`A168014(n)+A237668(n)+A237667(n)`
-/

namespace A168015.P12978359093030700150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168014 n + (A237668 n + A237667 n)

end

end A168015.P12978359093030700150

/-!
# A168016: Triangle T(n,k) read by rows in which row n list the number of partitions of n into parts divisible by k for k=n,n-1,...,1.

The programs for A168016, there is no canonical definition to state claims against.
-/

/-! ## A168016.P7258870851122416430

`A168021(∑[char[∑[n]]]²-n)`
-/

namespace A168016.P7258870851122416430
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168021 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A168016.P7258870851122416430

/-! ## A168016.P13694200389157914562

`A132825(A286159(n+1))`
-/

namespace A168016.P13694200389157914562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132825 (A286159 (n + 1)).toNat

end

end A168016.P13694200389157914562

/-! ## A168016.P8874266844029958600

`A052810(A127013(n+1))-1`
-/

namespace A168016.P8874266844029958600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 (A127013 (n + 1)).toNat - 1

end

end A168016.P8874266844029958600

/-! ## A168016.P9700998910429222533

`∑{d}[A127013(n+1), A000837(#)]`
-/

namespace A168016.P9700998910429222533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000837 d

end

end A168016.P9700998910429222533

/-! ## A168016.P10520795015961796883

`A000041(A010783(n+1))*A113998(n+1)`
-/

namespace A168016.P10520795015961796883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A010783 (n + 1)).toNat * A113998 (n + 1)

end

end A168016.P10520795015961796883

/-! ## A168016.P12278453582498400950

`A000041(A127013(n+1))*A113998(n+1)`
-/

namespace A168016.P12278453582498400950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A127013 (n + 1)).toNat * A113998 (n + 1)

end

end A168016.P12278453582498400950

/-! ## A168016.P4344775578034030138

`A000041(A277227(n+1))*A113998(n+1)`
-/

namespace A168016.P4344775578034030138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A277227 (n + 1)).toNat * A113998 (n + 1)

end

end A168016.P4344775578034030138

/-! ## A168016.P14174371737835558942

`A113998(n+1)*A168019(A286159(n+1))`
-/

namespace A168016.P14174371737835558942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113998 (n + 1) * A168019 (A286159 (n + 1)).toNat

end

end A168016.P14174371737835558942

/-! ## A168016.P15030890526620426448

`A008481(2^A127013(n+1))`
-/

namespace A168016.P15030890526620426448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A127013 (n + 1) : ℤ))).toNat

end

end A168016.P15030890526620426448

/-! ## A168016.P11350529066110033569

`A305193(2^A127013(n+1))`
-/

namespace A168016.P11350529066110033569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305193 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A127013 (n + 1) : ℤ))).toNat

end

end A168016.P11350529066110033569

/-!
# A168017: Triangle read by rows in which row n lists the number of partitions of n into parts divisible by d, where d is a divisor of n listed in decreasing order.

The programs for A168017, there is no canonical definition to state claims against.
-/

/-! ## A168017.P3911758738302370655

`A000041(A027750(n+1))`
-/

namespace A168017.P3911758738302370655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A027750 (n + 1)).toNat

end

end A168017.P3911758738302370655

/-! ## A168017.P14698414201531727703

`A000041(abs(A233773(n+1)))`
-/

namespace A168017.P14698414201531727703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 |A233773 (n + 1)|.toNat

end

end A168017.P14698414201531727703

/-! ## A168017.P1483700104345352770

`A000041(A263730(n+2)+1)`
-/

namespace A168017.P1483700104345352770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A263730 (n + 2) + 1).toNat

end

end A168017.P1483700104345352770

/-! ## A168017.P542197108228443655

`A035363(2*A027750(n+1))`
-/

namespace A168017.P542197108228443655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * A027750 (n + 1)).toNat

end

end A168017.P542197108228443655

/-! ## A168017.P3389208824633462824

`∑{d}[A027750(n+1), A000837(#)]`
-/

namespace A168017.P3389208824633462824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000837 d

end

end A168017.P3389208824633462824

/-! ## A168017.P11655868569690261564

`A035363(A027750(n+1)+A027750(n+1))`
-/

namespace A168017.P11655868569690261564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A027750 (n + 1) + A027750 (n + 1)).toNat

end

end A168017.P11655868569690261564

/-! ## A168017.P709404109680335496

`A000041(A002260(A056534(n+1)))`
-/

namespace A168017.P709404109680335496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002260 (A056534 (n + 1)).toNat).toNat

end

end A168017.P709404109680335496

/-! ## A168017.P9488504590423115604

`A092080(A056534(n+1))`
-/

namespace A168017.P9488504590423115604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092080 (A056534 (n + 1)).toNat

end

end A168017.P9488504590423115604

/-! ## A168017.P8803203994472533644

`A182703(A000124(A027750(n+1)%A000124(n)))`
-/

namespace A168017.P8803203994472533644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182703 (A000124 (Int.tmod (A027750 (n + 1)) (A000124 n)).toNat).toNat

end

end A168017.P8803203994472533644

/-! ## A168017.P14818350026730783480

`filter[A168016(n+1), A167392(#)]`
-/

namespace A168017.P14818350026730783480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167392 (f1 j).toNat = 1) n)

end

end A168017.P14818350026730783480

/-! ## A168017.P10438498536241167937

`filter[A182720(n+1), A167392(#)]`
-/

namespace A168017.P10438498536241167937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167392 (f1 j).toNat = 1) n)

end

end A168017.P10438498536241167937

/-!
# A168018: Triangle read by rows in which row n lists the number of partitions of n into parts divisible by d, where d is a divisor of n.

The programs for A168018, there is no canonical definition to state claims against.
-/

/-! ## A168018.P12210825184830616436

`A000041(A056538(n+1))`
-/

namespace A168018.P12210825184830616436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A056538 (n + 1)).toNat

end

end A168018.P12210825184830616436

/-! ## A168018.P1709632218919849549

`A000041(abs(A233772(n+1)))`
-/

namespace A168018.P1709632218919849549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 |A233772 (n + 1)|.toNat

end

end A168018.P1709632218919849549

/-! ## A168018.P7508549021672178410

`A213598(abs(A233772(n+1)))`
-/

namespace A168018.P7508549021672178410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 |A233772 (n + 1)|.toNat

end

end A168018.P7508549021672178410

/-! ## A168018.P9885515253199359952

`A035363(2*A056538(n+1))`
-/

namespace A168018.P9885515253199359952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * A056538 (n + 1)).toNat

end

end A168018.P9885515253199359952

/-! ## A168018.P5101170517083656983

`A119620(2*A056538(n+1))`
-/

namespace A168018.P5101170517083656983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * A056538 (n + 1)).toNat

end

end A168018.P5101170517083656983

/-! ## A168018.P5313860688962936354

`filter[A168021(n+1), A167392(#)]`
-/

namespace A168018.P5313860688962936354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167392 (f1 j).toNat = 1) n)

end

end A168018.P5313860688962936354

/-! ## A168018.P9250804579287177157

`filter[A168021(n+1), A368916(#)]`
-/

namespace A168018.P9250804579287177157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368916 (f1 j).toNat = 1) n)

end

end A168018.P9250804579287177157

/-! ## A168018.P11375888221671958583

`∑{d}[A056538(n+1), A000837(#)]`
-/

namespace A168018.P11375888221671958583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000837 d

end

end A168018.P11375888221671958583

/-! ## A168018.P4880916568467701604

`A000041(val(A064896(n+2)-1, 2))`
-/

namespace A168018.P4880916568467701604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.valuation (A064896 (n + 2) - 1).toNat 2)

end

end A168018.P4880916568467701604

/-! ## A168018.P2777260780113519645

`A000041(lcm(ceil(sin(n)²), A233772(n+1)))`
-/

namespace A168018.P2777260780113519645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.lcm ⌈Real.sin (n : ℝ) ^ 2⌉ (A233772 (n + 1)))

end

end A168018.P2777260780113519645

/-!
# A168019: Square array A(n,k) read by antidiagonals, in which row n lists the number of partitions of n into parts divisible by k+1.

The programs for A168019, there is no canonical definition to state claims against.
-/

/-! ## A168019.P3162232142353726125

`∑{d}[A126988(n+1), A133732(#)]`
-/

namespace A168019.P3162232142353726125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A133732 d

end

end A168019.P3162232142353726125

/-! ## A168019.P7709403634393106373

`A152146(A000217(2*(n+1))-A126988(n+1))`
-/

namespace A168019.P7709403634393106373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A000217 (2 * (n + 1)) - A126988 (n + 1)).toNat

end

end A168019.P7709403634393106373

/-! ## A168019.P18074286066144833943

`and(A000041(A167192(n+1)), A174820(n+1))`
-/

namespace A168019.P18074286066144833943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000041 (A167192 (n + 1)).toNat) (A174820 (n + 1))

end

end A168019.P18074286066144833943

/-! ## A168019.P7682295879517081416

`A072233(A286144(2*n+3)-A126988(n+1))`
-/

namespace A168019.P7682295879517081416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (A286144 (2 * n + 3) - A126988 (n + 1)).toNat

end

end A168019.P7682295879517081416

/-! ## A168019.P4205579114352329529

`A072233(A000217(2*(n+1))-A126988(n+1))`
-/

namespace A168019.P4205579114352329529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (A000217 (2 * (n + 1)) - A126988 (n + 1)).toNat

end

end A168019.P4205579114352329529

/-!
# A168020: Square array read by antidiagonals in which row n lists the number of partitions of n into parts divisible by k.

The programs for A168020, there is no canonical definition to state claims against.
-/

/-! ## A168020.P1480637285607873390

`A168019(A007401(n+1))`
-/

namespace A168020.P1480637285607873390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168019 (A007401 (n + 1)).toNat

end

end A168020.P1480637285607873390

/-! ## A168020.P8389078574652520405

`A035363(A171233(n+1))`
-/

namespace A168020.P8389078574652520405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A171233 (n + 1)).toNat

end

end A168020.P8389078574652520405

/-! ## A168020.P1036638144590597945

`A132825(A286157(n+1))`
-/

namespace A168020.P1036638144590597945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132825 (A286157 (n + 1)).toNat

end

end A168020.P1036638144590597945

/-! ## A168020.P8347457243262430093

`A168019(lt[1, A093562(n)])`
-/

namespace A168020.P8347457243262430093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168019 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A168020.P8347457243262430093

/-! ## A168020.P3652404516236292476

`A168019(lt[1, A130330(n)])`
-/

namespace A168020.P3652404516236292476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168019 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A168020.P3652404516236292476

/-! ## A168020.P7767440738647359191

`A035444(2*A171233(n+1))`
-/

namespace A168020.P7767440738647359191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (2 * A171233 (n + 1)).toNat

end

end A168020.P7767440738647359191

/-! ## A168020.P4217963833628112131

`A035363(A010766(n+1)+A003988(n+1))`
-/

namespace A168020.P4217963833628112131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A010766 (n + 1) + A003988 (n + 1)).toNat

end

end A168020.P4217963833628112131

/-! ## A168020.P18072893445657429464

`A035363(A171232(n+1)+A077049(n+1))`
-/

namespace A168020.P18072893445657429464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A171232 (n + 1) + A077049 (n + 1)).toNat

end

end A168020.P18072893445657429464

/-! ## A168020.P11541009299834623966

`A000041(A003988(n+1))*A077049(n+1)`
-/

namespace A168020.P11541009299834623966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A003988 (n + 1)).toNat * A077049 (n + 1)

end

end A168020.P11541009299834623966

/-! ## A168020.P11880152522159729926

`A000041(A010766(n+1))*A077049(n+1)`
-/

namespace A168020.P11880152522159729926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A010766 (n + 1)).toNat * A077049 (n + 1)

end

end A168020.P11880152522159729926

/-! ## A168020.P15255324849389148794

`A000041(A072030(n+1))*A077049(n+1)`
-/

namespace A168020.P15255324849389148794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A072030 (n + 1)).toNat * A077049 (n + 1)

end

end A168020.P15255324849389148794

/-! ## A168020.P3195083771590534379

`A000041(A089913(n+1))*A077049(n+1)`
-/

namespace A168020.P3195083771590534379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A089913 (n + 1)).toNat * A077049 (n + 1)

end

end A168020.P3195083771590534379

/-! ## A168020.P1212835958743976692

`A000041(A112543(n+1))*A077049(n+1)`
-/

namespace A168020.P1212835958743976692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A112543 (n + 1)).toNat * A077049 (n + 1)

end

end A168020.P1212835958743976692

/-! ## A168020.P2422320421122752531

`A000041(A010766(n+1))%A000041(A171233(n+1))`
-/

namespace A168020.P2422320421122752531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A010766 (n + 1)).toNat) (A000041 (A171233 (n + 1)).toNat)

end

end A168020.P2422320421122752531

/-!
# A168021: Triangle T(n,k) read by rows in which row n lists the number of partitions of n into parts divisible by k.

The programs for A168021, there is no canonical definition to state claims against.
-/

/-! ## A168021.P2640771664662142823

`A168016(∑[char[∑[n]]]²-n)`
-/

namespace A168021.P2640771664662142823
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168016 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A168021.P2640771664662142823

/-! ## A168021.P914570333694347123

`A132825(A286158(n+1))`
-/

namespace A168021.P914570333694347123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132825 (A286158 (n + 1)).toNat

end

end A168021.P914570333694347123

/-! ## A168021.P10650926644750366034

`A052810(A126988(n+1))-1`
-/

namespace A168021.P10650926644750366034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 (A126988 (n + 1)).toNat - 1

end

end A168021.P10650926644750366034

/-! ## A168021.P17451024622863902054

`∑{d}[A126988(n+1), A000837(#)]`
-/

namespace A168021.P17451024622863902054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000837 d

end

end A168021.P17451024622863902054

/-! ## A168021.P6934563043120902708

`A000041(A010766(n+1))*A051731(n+1)`
-/

namespace A168021.P6934563043120902708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A010766 (n + 1)).toNat * A051731 (n + 1)

end

end A168021.P6934563043120902708

/-! ## A168021.P17413491414652835482

`A000041(A049834(n+1))*A051731(n+1)`
-/

namespace A168021.P17413491414652835482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A049834 (n + 1)).toNat * A051731 (n + 1)

end

end A168021.P17413491414652835482

/-! ## A168021.P4173078418953451061

`A000041(A051537(n+1))*A051731(n+1)`
-/

namespace A168021.P4173078418953451061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A051537 (n + 1)).toNat * A051731 (n + 1)

end

end A168021.P4173078418953451061

/-! ## A168021.P15439338661172692771

`A000041(A126988(n+1))*A051731(n+1)`
-/

namespace A168021.P15439338661172692771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A126988 (n + 1)).toNat * A051731 (n + 1)

end

end A168021.P15439338661172692771

/-! ## A168021.P11743771522451477871

`A008481(2^A126988(n+1))`
-/

namespace A168021.P11743771522451477871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A126988 (n + 1) : ℤ))).toNat

end

end A168021.P11743771522451477871

/-! ## A168021.P9076729131940088726

`A182720(A120913(n+1))`
-/

namespace A168021.P9076729131940088726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182720 (A120913 (n + 1)).toNat

end

end A168021.P9076729131940088726

/-!
# A168022: Noncomposite numbers in the eastern ray of the Ulam spiral as oriented on the March 1964 cover of Scientific American.

The programs for A168022, there is no canonical definition to state claims against.
-/

/-! ## A168022.P9066435673696501096

`record[A118680(A266722(n))-A000007(n)]`
-/

namespace A168022.P9066435673696501096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118680 (A266722 n).toNat - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168022.P9066435673696501096

/-! ## A168022.P14520537321007051459

`record[A118680(A266722(n))-A000122(n)]`
-/

namespace A168022.P14520537321007051459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118680 (A266722 n).toNat - A000122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168022.P14520537321007051459

/-! ## A168022.P13708373588918875252

`record[A118680(A266722(n))-A005369(n)]`
-/

namespace A168022.P13708373588918875252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118680 (A266722 n).toNat - A005369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168022.P13708373588918875252

/-! ## A168022.P9847159836067139883

`record[A118680(A266722(n))-A010052(n)]`
-/

namespace A168022.P9847159836067139883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118680 (A266722 n).toNat - A010052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168022.P9847159836067139883

/-! ## A168022.P8945447167815435083

`record[A118680(A266722(n))/A166333(2*n+1)]`
-/

namespace A168022.P8945447167815435083
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118680 (A266722 n).toNat : ℚ) / (A166333 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168022.P8945447167815435083

/-! ## A168022.P7966579523545147230

`p?[A054552(A030118(n))]-C(2, n+2)`
-/

namespace A168022.P7966579523545147230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054552 (A030118 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (Nat.choose 2 (n + 2) : ℤ)

end

end A168022.P7966579523545147230

/-! ## A168022.P8043686863650924494

`p?[A054552(A004396(n))]/ceil(2/(2*n+1))`
-/

namespace A168022.P8043686863650924494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054552 (A004396 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (⌈2 / (2 * n + 1 : ℚ)⌉ : ℚ)

end

end A168022.P8043686863650924494

/-! ## A168022.P2522078029728941248

`p?[A054552(A004396(n))]-A000007(n)`
-/

namespace A168022.P2522078029728941248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054552 (A004396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A000007 n

end

end A168022.P2522078029728941248

/-! ## A168022.P882579132777727110

`p?[A054552(A030118(n))]-A000007(n)`
-/

namespace A168022.P882579132777727110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054552 (A030118 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A000007 n

end

end A168022.P882579132777727110

/-! ## A168022.P6164951297778943030

`p?[A054552(A004396(n))]-A151878(n)`
-/

namespace A168022.P6164951297778943030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054552 (A004396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A151878 n

end

end A168022.P6164951297778943030

/-!
# A168023: Noncomposite numbers in the northern ray of the Ulam spiral as oriented on the March 1964 cover of Scientific American.

The programs for A168023, there is no canonical definition to state claims against.
-/

/-! ## A168023.P7212871787293544164

`∩[A054556(n+1), A123365(n+1)]`
-/

namespace A168023.P7212871787293544164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168023.P7212871787293544164

/-! ## A168023.P6175186691288992335

`∩[A123365(n+1), A308385(n+1)]`
-/

namespace A168023.P6175186691288992335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168023.P6175186691288992335

/-! ## A168023.P14659432379778099854

`∩[A054556(n+1), A061345(n)]`
-/

namespace A168023.P14659432379778099854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168023.P14659432379778099854

/-! ## A168023.P9993614990110513625

`filter[A054556(2*n+1), A324290(#)]`
-/

namespace A168023.P9993614990110513625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054556 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A168023.P9993614990110513625

/-! ## A168023.P8142371945843143050

`filter[A054556(2*n+1), A354923(#)]`
-/

namespace A168023.P8142371945843143050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054556 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A168023.P8142371945843143050

/-!
# A168024: Noncomposite numbers in the northwestern ray of the Ulam spiral as oriented on the March 1964 cover of Scientific American.

The programs for A168024, the canonical program `A168024.P3944607943034050874` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168024 has offset 0).

The definition of A168024 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168024.P11172080792684683072

`or(1, A075408(n+1))`
-/

namespace A168024.P11172080792684683072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A075408 (n + 1))

end

end A168024.P11172080792684683072

namespace A168024

/-- `or(1, A075408(n+1))` -/
def P11172080792684683072.Spec : Prop :=
  ∀ n, P11172080792684683072.a n = A168024 n

end A168024

/-! ## A168024.P14849336768026669442

`or(1, A005574(n+1)²)`
-/

namespace A168024.P14849336768026669442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A005574 (n + 1) ^ 2)

end

end A168024.P14849336768026669442

namespace A168024

/-- `or(1, A005574(n+1)²)` -/
def P14849336768026669442.Spec : Prop :=
  ∀ n, P14849336768026669442.a n = A168024 n

end A168024

/-! ## A168024.P8245595043989019632

`lcm(2, A002496(n+1))/2`
-/

namespace A168024.P8245595043989019632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A002496 (n + 1)) : ℚ) / 2

end

end A168024.P8245595043989019632

namespace A168024

/-- `lcm(2, A002496(n+1))/2` -/
def P8245595043989019632.Spec : Prop :=
  ∀ n, P8245595043989019632.a n = (A168024 n : ℚ)

end A168024

/-! ## A168024.P11512686756078756847

`or(1, (A089593(n+1)+1)²)`
-/

namespace A168024.P11512686756078756847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((A089593 (n + 1) + 1) ^ 2)

end

end A168024.P11512686756078756847

namespace A168024

/-- `or(1, (A089593(n+1)+1)²)` -/
def P11512686756078756847.Spec : Prop :=
  ∀ n, P11512686756078756847.a n = A168024 n

end A168024

/-! ## A168024.P1670641597863321375

`or(1, (1-A090693(n+1))²)`
-/

namespace A168024.P1670641597863321375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((1 - A090693 (n + 1)) ^ 2)

end

end A168024.P1670641597863321375

namespace A168024

/-- `or(1, (1-A090693(n+1))²)` -/
def P1670641597863321375.Spec : Prop :=
  ∀ n, P1670641597863321375.a n = A168024 n

end A168024

/-! ## A168024.P12355477678017847835

`A075408(n+1)+A057427(n)`
-/

namespace A168024.P12355477678017847835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075408 (n + 1) + A057427 n

end

end A168024.P12355477678017847835

namespace A168024

/-- `A075408(n+1)+A057427(n)` -/
def P12355477678017847835.Spec : Prop :=
  ∀ n, P12355477678017847835.a n = A168024 n

end A168024

/-! ## A168024.P9072889611004344488

`A002496(n+1)-A000007(n)`
-/

namespace A168024.P9072889611004344488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1) - A000007 n

end

end A168024.P9072889611004344488

namespace A168024

/-- `A002496(n+1)-A000007(n)` -/
def P9072889611004344488.Spec : Prop :=
  ∀ n, P9072889611004344488.a n = A168024 n

end A168024

/-! ## A168024.P18007117513195706879

`A075408(n+1)-A057428(n)`
-/

namespace A168024.P18007117513195706879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075408 (n + 1) - A057428 n

end

end A168024.P18007117513195706879

namespace A168024

/-- `A075408(n+1)-A057428(n)` -/
def P18007117513195706879.Spec : Prop :=
  ∀ n, P18007117513195706879.a n = A168024 n

end A168024

/-! ## A168024.P10021769090609814406

`A002496(n+1)/A054977(n)`
-/

namespace A168024.P10021769090609814406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002496 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A168024.P10021769090609814406

namespace A168024

/-- `A002496(n+1)/A054977(n)` -/
def P10021769090609814406.Spec : Prop :=
  ∀ n, P10021769090609814406.a n = (A168024 n : ℚ)

end A168024

/-! ## A168024.P10780212107688745668

`∩[A054754(n+1), A053755(n)]`
-/

namespace A168024.P10780212107688745668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168024.P10780212107688745668

namespace A168024

/-- `∩[A054754(n+1), A053755(n)]` -/
def P10780212107688745668.Spec : Prop :=
  ∀ n, (P10780212107688745668.a n : ℤ) = A168024 n

end A168024

/-! ## A168024.P3944607943034050874

`∩[A054964(n+1), A053755(n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A168024

/-- `∩[A054964(n+1), A053755(n)]` -/
def P3944607943034050874.Spec : Prop :=
  ∀ n, (P3944607943034050874.a n : ℤ) = A168024 n

theorem P3944607943034050874.correct : P3944607943034050874.Spec := by
  intro n
  simp only [A168024]

end A168024

/-! ## A168024.P11839644464908990682

`A057427(n)+A005574(n+1)²`
-/

namespace A168024.P11839644464908990682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A005574 (n + 1) ^ 2

end

end A168024.P11839644464908990682

namespace A168024

/-- `A057427(n)+A005574(n+1)²` -/
def P11839644464908990682.Spec : Prop :=
  ∀ n, P11839644464908990682.a n = A168024 n

end A168024

/-! ## A168024.P14352251644768368011

`A002496(n+1)-(A057428(n)+1)`
-/

namespace A168024.P14352251644768368011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1) - (A057428 n + 1)

end

end A168024.P14352251644768368011

namespace A168024

/-- `A002496(n+1)-(A057428(n)+1)` -/
def P14352251644768368011.Spec : Prop :=
  ∀ n, P14352251644768368011.a n = A168024 n

end A168024

/-! ## A168024.P8419114841079326556

`A002496(n+1)-A355449(2*n)`
-/

namespace A168024.P8419114841079326556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1) - A355449 (2 * n)

end

end A168024.P8419114841079326556

namespace A168024

/-- `A002496(n+1)-A355449(2*n)` -/
def P8419114841079326556.Spec : Prop :=
  ∀ n, P8419114841079326556.a n = A168024 n

end A168024

/-! ## A168024.P11643264558787608279

`∪[A051470(n+1), A121326(n+1)]`
-/

namespace A168024.P11643264558787608279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A168024.P11643264558787608279

namespace A168024

/-- `∪[A051470(n+1), A121326(n+1)]` -/
def P11643264558787608279.Spec : Prop :=
  ∀ n, (P11643264558787608279.a n : ℤ) = A168024 n

end A168024

/-! ## A168024.P10903054172635410646

`∪[A283073(n+1), A121326(n+1)]`
-/

namespace A168024.P10903054172635410646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A168024.P10903054172635410646

namespace A168024

/-- `∪[A283073(n+1), A121326(n+1)]` -/
def P10903054172635410646.Spec : Prop :=
  ∀ n, (P10903054172635410646.a n : ℤ) = A168024 n

end A168024

/-! ## A168024.P14659462176522110081

`∪[A121326(n+1), A335805(n+1)]`
-/

namespace A168024.P14659462176522110081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A168024.P14659462176522110081

namespace A168024

/-- `∪[A121326(n+1), A335805(n+1)]` -/
def P14659462176522110081.Spec : Prop :=
  ∀ n, (P14659462176522110081.a n : ℤ) = A168024 n

end A168024

/-! ## A168024.P9139756803145012014

`A002496(n+1)+n-A028310(n)`
-/

namespace A168024.P9139756803145012014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1) + ((n : ℤ) - A028310 n)

end

end A168024.P9139756803145012014

namespace A168024

/-- `A002496(n+1)+n-A028310(n)` -/
def P9139756803145012014.Spec : Prop :=
  ∀ n, P9139756803145012014.a n = A168024 n

end A168024

/-! ## A168024.P952779225122772091

`A002496(n+1)-A010051(2*(n+1))`
-/

namespace A168024.P952779225122772091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1) - A010051 (2 * (n + 1))

end

end A168024.P952779225122772091

namespace A168024

/-- `A002496(n+1)-A010051(2*(n+1))` -/
def P952779225122772091.Spec : Prop :=
  ∀ n, P952779225122772091.a n = A168024 n

end A168024

/-! ## A168024.P10146979710210998054

`A002496(n+1)-A049084(2*(n+1))`
-/

namespace A168024.P10146979710210998054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1) - A049084 (2 * (n + 1))

end

end A168024.P10146979710210998054

namespace A168024

/-- `A002496(n+1)-A049084(2*(n+1))` -/
def P10146979710210998054.Spec : Prop :=
  ∀ n, P10146979710210998054.a n = A168024 n

end A168024

/-!
# A168025: Noncomposite numbers in the western ray of the Ulam spiral as oriented on the March 1964 cover of Scientific American.

The programs for A168025, there is no canonical definition to state claims against.
-/

/-! ## A168025.P1547865337819808499

`p?[A290988(n+2)+n²]^ceil(sin(n)²)`
-/

namespace A168025.P1547865337819808499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290988 (n + 2) + (n ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A168025.P1547865337819808499

/-! ## A168025.P5968982485036032354

`gcd(p?[A103517(n)²+n+2], A151933(n))`
-/

namespace A168025.P5968982485036032354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n ^ 2 + (n + 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A151933 n)

end

end A168025.P5968982485036032354

/-! ## A168025.P13195867029810887124

`∩[A076518(n+1), A204675(n)]`
-/

namespace A168025.P13195867029810887124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204675 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168025.P13195867029810887124

/-! ## A168025.P17349413853817440213

`record[A020639(n*(16*n+2)+1)]`
-/

namespace A168025.P17349413853817440213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n * (16 * n + 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168025.P17349413853817440213

/-! ## A168025.P8611331389916075019

`filter[A204675(n), A324290(#)]`
-/

namespace A168025.P8611331389916075019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A168025.P8611331389916075019

/-!
# A168026: Noncomposite numbers in the southwestern ray of the Ulam spiral as oriented on the March 1964 cover of Scientific American.

The programs for A168026, the canonical program `A168026.P8751978298401506716` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168026 has offset 1).

The definition of A168026 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 709 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168026.P8751978298401506716

`record[A081256(2*n+1)-A000007(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A168026

/-- `record[A081256(2*n+1)-A000007(n)]` -/
def P8751978298401506716.Spec : Prop :=
  ∀ n, P8751978298401506716.a n = A168026 (n + 1)

theorem P8751978298401506716.correct : P8751978298401506716.Spec := by
  intro n
  simp only [A168026, Nat.add_sub_cancel]

end A168026

/-! ## A168026.P12093063642464811727

`record[A081256(2*n+1)-A000122(2*n)]`
-/

namespace A168026.P12093063642464811727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (2 * n + 1) - A000122 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168026.P12093063642464811727

namespace A168026

/-- `record[A081256(2*n+1)-A000122(2*n)]` -/
def P12093063642464811727.Spec : Prop :=
  ∀ n, P12093063642464811727.a n = A168026 (n + 1)

end A168026

/-! ## A168026.P8111669818646140581

`record[A081256(2*n+1)-A127802(2*n)]`
-/

namespace A168026.P8111669818646140581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (2 * n + 1) - A127802 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168026.P8111669818646140581

namespace A168026

/-- `record[A081256(2*n+1)-A127802(2*n)]` -/
def P8111669818646140581.Spec : Prop :=
  ∀ n, P8111669818646140581.a n = A168026 (n + 1)

end A168026

/-! ## A168026.P2363747674539800774

`record[gcd(A081256(2*n+1), A130770(2*n))]`
-/

namespace A168026.P2363747674539800774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A081256 (2 * n + 1)) (A130770 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168026.P2363747674539800774

namespace A168026

/-- `record[gcd(A081256(2*n+1), A130770(2*n))]` -/
def P2363747674539800774.Spec : Prop :=
  ∀ n, (P2363747674539800774.a n : ℤ) = A168026 (n + 1)

end A168026

/-! ## A168026.P6663691353951143305

`A002061(record[A026741(A055494(n+1))])`
-/

namespace A168026.P6663691353951143305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A055494 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A168026.P6663691353951143305

namespace A168026

/-- `A002061(record[A026741(A055494(n+1))])` -/
def P6663691353951143305.Spec : Prop :=
  ∀ n, P6663691353951143305.a n = A168026 (n + 1)

end A168026

/-! ## A168026.P15554240276201090494

`record[A081256(A000265(n+1))]-A000007(n)`
-/

namespace A168026.P15554240276201090494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000007 n

end

end A168026.P15554240276201090494

namespace A168026

/-- `record[A081256(A000265(n+1))]-A000007(n)` -/
def P15554240276201090494.Spec : Prop :=
  ∀ n, P15554240276201090494.a n = A168026 (n + 1)

end A168026

/-! ## A168026.P12257237792879626960

`p?[A080335(n)+1+n]-A000007(n)`
-/

namespace A168026.P12257237792879626960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080335 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A000007 n

end

end A168026.P12257237792879626960

namespace A168026

/-- `p?[A080335(n)+1+n]-A000007(n)` -/
def P12257237792879626960.Spec : Prop :=
  ∀ n, P12257237792879626960.a n = A168026 (n + 1)

end A168026

/-! ## A168026.P9694977229036620163

`∩[A123365(n+1), A081348(n)]`
-/

namespace A168026.P9694977229036620163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081348 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168026.P9694977229036620163

namespace A168026

/-- `∩[A123365(n+1), A081348(n)]` -/
def P9694977229036620163.Spec : Prop :=
  ∀ n, (P9694977229036620163.a n : ℤ) = A168026 (n + 1)

end A168026

/-! ## A168026.P5091588167531436722

`∩[A123365(n+1), A213041(n)]`
-/

namespace A168026.P5091588167531436722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213041 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168026.P5091588167531436722

namespace A168026

/-- `∩[A123365(n+1), A213041(n)]` -/
def P5091588167531436722.Spec : Prop :=
  ∀ n, (P5091588167531436722.a n : ℤ) = A168026 (n + 1)

end A168026

/-! ## A168026.P13173720842579107817

`∩[A123365(n+1), A325657(n)]`
-/

namespace A168026.P13173720842579107817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168026.P13173720842579107817

namespace A168026

/-- `∩[A123365(n+1), A325657(n)]` -/
def P13173720842579107817.Spec : Prop :=
  ∀ n, (P13173720842579107817.a n : ℤ) = A168026 (n + 1)

end A168026

/-!
# A168027: Noncomposite numbers in the southern ray of the Ulam spiral as oriented on the March 1964 cover of Scientific American.

The programs for A168027, there is no canonical definition to state claims against.
-/

/-! ## A168027.P2362143995031092133

`gcd(floor(acot(n)), p?[round((1/4-n)²)])`
-/

namespace A168027.P2362143995031092133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((1 : ℚ) / 4 - (n : ℚ)) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A168027.P2362143995031092133

/-! ## A168027.P15648573960248254441

`p?[round((1/4-n)²)]^ceil(sin(n)²)`
-/

namespace A168027.P15648573960248254441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((1 : ℚ) / 4 - (n : ℚ)) ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A168027.P15648573960248254441

/-! ## A168027.P13802927055035176768

`p?[round((1/4-n)²)]-floor(acot(n)²)`
-/

namespace A168027.P13802927055035176768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((1 : ℚ) / 4 - (n : ℚ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A168027.P13802927055035176768

/-! ## A168027.P9684009182756940587

`C(p?[round((1/4-n)²)], ceil(sin(n)²))`
-/

namespace A168027.P9684009182756940587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((1 : ℚ) / 4 - (n : ℚ)) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat ⌈Real.sin (n : ℝ) ^ 2⌉.toNat

end

end A168027.P9684009182756940587

/-! ## A168027.P14299993747543905677

`gcd(C(2, n+2), p?[n²-floor(n/2)])`
-/

namespace A168027.P14299993747543905677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n + 2) : ℤ) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A168027.P14299993747543905677

/-! ## A168027.P13288083569927926740

`and(abs(1-n)-n, p?[round((1/4-n)²)])`
-/

namespace A168027.P13288083569927926740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((1 : ℚ) / 4 - (n : ℚ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (|1 - (n : ℤ)| - (n : ℤ)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A168027.P13288083569927926740

/-! ## A168027.P3409829932262902897

`p?[A014848(n)]^floor(atan(n+1))`
-/

namespace A168027.P3409829932262902897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014848 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (⌊Real.arctan (n + 1 : ℝ)⌋ : ℤ)

end

end A168027.P3409829932262902897

/-! ## A168027.P1032601944541271648

`p?[round((1/4-n)²)]^A178334(n)`
-/

namespace A168027.P1032601944541271648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((1 : ℚ) / 4 - (n : ℚ)) ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A178334 n : ℤ)

end

end A168027.P1032601944541271648

/-! ## A168027.P16301202937023843510

`p?[A245534(n+1)]^floor(atan(n+1))`
-/

namespace A168027.P16301202937023843510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245534 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (⌊Real.arctan (n + 1 : ℝ)⌋ : ℤ)

end

end A168027.P16301202937023843510

/-! ## A168027.P7693843639169131473

`p?[A014848(n)]^(A000040(n+1)%2)`
-/

namespace A168027.P7693843639169131473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014848 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A168027.P7693843639169131473

/-!
# A168029: a(n) = n*(n^6 + 1)/2.

The programs for A168029, the canonical program `A168029.P10159170857480692680` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168029 has offset 0).

The definition of A168029 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168029.P10159170857480692680

`n*(n^6+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168029

/-- `n*(n^6+1)/2` -/
def P10159170857480692680.Spec : Prop :=
  ∀ n, P10159170857480692680.a n = (A168029 n : ℚ)

end A168029

/-! ## A168029.P17773617484503193669

`3*A108495(n)+n`
-/

namespace A168029.P17773617484503193669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A108495 n + (n : ℤ)

end

end A168029.P17773617484503193669

namespace A168029

/-- `3*A108495(n)+n` -/
def P17773617484503193669.Spec : Prop :=
  ∀ n, P17773617484503193669.a n = A168029 n

end A168029

/-! ## A168029.P13602329295185239083

`A133499(n)/2+n`
-/

namespace A168029.P13602329295185239083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133499 n : ℚ) / 2 + (n : ℚ)

end

end A168029.P13602329295185239083

namespace A168029

/-- `A133499(n)/2+n` -/
def P13602329295185239083.Spec : Prop :=
  ∀ n, P13602329295185239083.a n = (A168029 n : ℚ)

end A168029

/-! ## A168029.P7184325446223769571

`n/2*A002604(n)`
-/

namespace A168029.P7184325446223769571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A002604 n : ℚ)

end

end A168029.P7184325446223769571

namespace A168029

/-- `n/2*A002604(n)` -/
def P7184325446223769571.Spec : Prop :=
  ∀ n, P7184325446223769571.a n = (A168029 n : ℚ)

end A168029

/-! ## A168029.P4047920754986730257

`floor((A258806(n)+n)/2)`
-/

namespace A168029.P4047920754986730257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A258806 n + (n : ℤ) : ℚ) / 2⌋

end

end A168029.P4047920754986730257

namespace A168029

/-- `floor((A258806(n)+n)/2)` -/
def P4047920754986730257.Spec : Prop :=
  ∀ n, P4047920754986730257.a n = A168029 n

end A168029

/-! ## A168029.P11955991953731929479

`ceil((n-A024005(n))/2)`
-/

namespace A168029.P11955991953731929479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - A024005 n : ℚ) / 2⌉

end

end A168029.P11955991953731929479

namespace A168029

/-- `ceil((n-A024005(n))/2)` -/
def P11955991953731929479.Spec : Prop :=
  ∀ n, P11955991953731929479.a n = A168029 n

end A168029

/-! ## A168029.P13700984561787486245

`3*∑[∑[n]-n]*A059826(n)+n`
-/

namespace A168029.P13700984561787486245
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((∑ j ∈ Finset.range (n + 1), f1 j) * A059826 n) + (n : ℤ)

end

end A168029.P13700984561787486245

namespace A168029

/-- `3*∑[∑[n]-n]*A059826(n)+n` -/
def P13700984561787486245.Spec : Prop :=
  ∀ n, P13700984561787486245.a n = A168029 n

end A168029

/-! ## A168029.P6126499914336870053

`A168179(n)-A135503(n)`
-/

namespace A168029.P6126499914336870053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168179 n - A135503 n

end

end A168029.P6126499914336870053

namespace A168029

/-- `A168179(n)-A135503(n)` -/
def P6126499914336870053.Spec : Prop :=
  ∀ n, P6126499914336870053.a n = A168029 n

end A168029

/-! ## A168029.P14226450658228254271

`A168123(n)-A161680(n)`
-/

namespace A168029.P14226450658228254271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168123 n - A161680 n

end

end A168029.P14226450658228254271

namespace A168029

/-- `A168123(n)-A161680(n)` -/
def P14226450658228254271.Spec : Prop :=
  ∀ n, P14226450658228254271.a n = A168029 n

end A168029

/-! ## A168029.P6682604598422924250

`A006003(n)*A060886(n)`
-/

namespace A168029.P6682604598422924250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n * A060886 n

end

end A168029.P6682604598422924250

namespace A168029

/-- `A006003(n)*A060886(n)` -/
def P6682604598422924250.Spec : Prop :=
  ∀ n, P6682604598422924250.a n = A168029 n

end A168029

/-! ## A168029.P4117803914522366500

`A168636(n)%A053717(n)`
-/

namespace A168029.P4117803914522366500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168636 n) (A053717 n)

end

end A168029.P4117803914522366500

namespace A168029

/-- `A168636(n)%A053717(n)` -/
def P4117803914522366500.Spec : Prop :=
  ∀ n, P4117803914522366500.a n = A168029 n

end A168029

/-! ## A168029.P13142066996321338152

`A168661(n)%A059839(n)`
-/

namespace A168029.P13142066996321338152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168661 n) (A059839 n)

end

end A168029.P13142066996321338152

namespace A168029

/-- `A168661(n)%A059839(n)` -/
def P13142066996321338152.Spec : Prop :=
  ∀ n, P13142066996321338152.a n = A168029 n

end A168029

/-! ## A168029.P5989021765174197457

`A168660(n)%A102909(n)`
-/

namespace A168029.P5989021765174197457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168660 n) (A102909 n)

end

end A168029.P5989021765174197457

namespace A168029

/-- `A168660(n)%A102909(n)` -/
def P5989021765174197457.Spec : Prop :=
  ∀ n, P5989021765174197457.a n = A168029 n

end A168029

/-! ## A168029.P13584874674109011945

`A168526(n)+n-A167963(n)`
-/

namespace A168029.P13584874674109011945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168526 n + ((n : ℤ) - A167963 n)

end

end A168029.P13584874674109011945

namespace A168029

/-- `A168526(n)+n-A167963(n)` -/
def P13584874674109011945.Spec : Prop :=
  ∀ n, P13584874674109011945.a n = A168029 n

end A168029

/-! ## A168029.P4709661765769451746

`A168635(n)+n-A168067(n)`
-/

namespace A168029.P4709661765769451746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168635 n + ((n : ℤ) - A168067 n)

end

end A168029.P4709661765769451746

namespace A168029

/-- `A168635(n)+n-A168067(n)` -/
def P4709661765769451746.Spec : Prop :=
  ∀ n, P4709661765769451746.a n = A168029 n

end A168029

/-! ## A168029.P2460112510205639360

`A000217(n)*A062159(n)+n`
-/

namespace A168029.P2460112510205639360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A062159 n + (n : ℤ)

end

end A168029.P2460112510205639360

namespace A168029

/-- `A000217(n)*A062159(n)+n` -/
def P2460112510205639360.Spec : Prop :=
  ∀ n, P2460112510205639360.a n = A168029 n

end A168029

/-! ## A168029.P2282911826653953566

`n*A167963(n)-A161680(n)`
-/

namespace A168029.P2282911826653953566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A167963 n - A161680 n

end

end A168029.P2282911826653953566

namespace A168029

/-- `n*A167963(n)-A161680(n)` -/
def P2282911826653953566.Spec : Prop :=
  ∀ n, P2282911826653953566.a n = A168029 n

end A168029

/-!
# A168030: Variant of pendular triangle A118340.

The programs for A168030, there is no canonical definition to state claims against.
-/

/-! ## A168030.P1867286779118571390

`A118340(n)%2`
-/

namespace A168030.P1867286779118571390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118340 n) 2

end

end A168030.P1867286779118571390

/-! ## A168030.P15116967273777355780

`A118350(n)%2`
-/

namespace A168030.P15116967273777355780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118350 n) 2

end

end A168030.P15116967273777355780

/-! ## A168030.P3470458352253393227

`and(1, A118350(n-char[1]))`
-/

namespace A168030.P3470458352253393227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A118350 (n - (if ∃ j, f1 j = n then 1 else 0)))

end

end A168030.P3470458352253393227

/-! ## A168030.P12213309599261689256

`and(1, A118340(2*n-n))`
-/

namespace A168030.P12213309599261689256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A118340 (2 * n - n))

end

end A168030.P12213309599261689256

/-! ## A168030.P4553198669342571423

`A000045(and(1, -A118340(n)))`
-/

namespace A168030.P4553198669342571423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 1 (-A118340 n)).toNat

end

end A168030.P4553198669342571423

/-! ## A168030.P17130640370123450229

`A000045(and(1, -A118350(n)))`
-/

namespace A168030.P17130640370123450229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 1 (-A118350 n)).toNat

end

end A168030.P17130640370123450229

/-! ## A168030.P11641082372331748124

`and(A118340(n), A195744(n))`
-/

namespace A168030.P11641082372331748124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118340 n) (A195744 n)

end

end A168030.P11641082372331748124

/-! ## A168030.P3585540248882804233

`and(A118350(n), A195744(n))`
-/

namespace A168030.P3585540248882804233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118350 n) (A195744 n)

end

end A168030.P3585540248882804233

/-! ## A168030.P6768155002598498581

`and(A118340(n), A122041(n+1))`
-/

namespace A168030.P6768155002598498581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118340 n) (A122041 (n + 1))

end

end A168030.P6768155002598498581

/-! ## A168030.P2075207687636353082

`and(A118350(n), A122041(n+1))`
-/

namespace A168030.P2075207687636353082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118350 n) (A122041 (n + 1))

end

end A168030.P2075207687636353082

/-! ## A168030.P13649052839204667072

`and(A118340(n), A196657(n))`
-/

namespace A168030.P13649052839204667072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118340 n) (A196657 n)

end

end A168030.P13649052839204667072

/-! ## A168030.P2209626333691107590

`and(A118350(n), A196657(n))`
-/

namespace A168030.P2209626333691107590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118350 n) (A196657 n)

end

end A168030.P2209626333691107590

/-! ## A168030.P16566048160142260012

`and(A118340(n), A345109(n+1))`
-/

namespace A168030.P16566048160142260012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118340 n) (A345109 (n + 1))

end

end A168030.P16566048160142260012

/-! ## A168030.P838351600224857129

`and(A118350(n), A345109(n+1))`
-/

namespace A168030.P838351600224857129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118350 n) (A345109 (n + 1))

end

end A168030.P838351600224857129

/-! ## A168030.P11592062244985074968

`and(A118340(n), A131056(n+1))`
-/

namespace A168030.P11592062244985074968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118340 n) (A131056 (n + 1))

end

end A168030.P11592062244985074968

/-! ## A168030.P11076217195709234904

`and(A118350(n), A131056(n+1))`
-/

namespace A168030.P11076217195709234904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118350 n) (A131056 (n + 1))

end

end A168030.P11076217195709234904

/-! ## A168030.P5082013130018757002

`and(A118340(n), A345108(n+1))`
-/

namespace A168030.P5082013130018757002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118340 n) (A345108 (n + 1))

end

end A168030.P5082013130018757002

/-! ## A168030.P16921148894212195758

`and(A118350(n), A345108(n+1))`
-/

namespace A168030.P16921148894212195758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118350 n) (A345108 (n + 1))

end

end A168030.P16921148894212195758

/-! ## A168030.P2114145636604452464

`and(A118340(n), A288038(n+1))`
-/

namespace A168030.P2114145636604452464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118340 n) (A288038 (n + 1))

end

end A168030.P2114145636604452464

/-! ## A168030.P2467437078674487050

`and(A118350(n), A288038(n+1))`
-/

namespace A168030.P2467437078674487050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118350 n) (A288038 (n + 1))

end

end A168030.P2467437078674487050

/-!
# A168031: Primes p for which floor(E*p) is prime.

The programs for A168031, the canonical program `A168031.P16854465527970043201` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168031 has offset 1).

The definition of A168031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 925 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168031.P16854465527970043201

`p?[A062409(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A168031

/-- `p?[A062409(n+1)]` -/
def P16854465527970043201.Spec : Prop :=
  ∀ n, P16854465527970043201.a n = A168031 (n + 1)

theorem P16854465527970043201.correct : P16854465527970043201.Spec := by
  intro n
  simp only [A168031, Nat.add_sub_cancel]

end A168031

/-! ## A168031.P63061415355591966

`p?[record[A062409(A291769(n))]]`
-/

namespace A168031.P63061415355591966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062409 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168031.P63061415355591966

namespace A168031

/-- `p?[record[A062409(A291769(n))]]` -/
def P63061415355591966.Spec : Prop :=
  ∀ n, P63061415355591966.a n = A168031 (n + 1)

end A168031

/-! ## A168031.P2456664028316854881

`p?[record[A062409(A324347(n))]]`
-/

namespace A168031.P2456664028316854881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062409 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168031.P2456664028316854881

namespace A168031

/-- `p?[record[A062409(A324347(n))]]` -/
def P2456664028316854881.Spec : Prop :=
  ∀ n, P2456664028316854881.a n = A168031 (n + 1)

end A168031

/-! ## A168031.P520274179090828172

`∩[A000040(n+1), A062409(n+1)]`
-/

namespace A168031.P520274179090828172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168031.P520274179090828172

namespace A168031

/-- `∩[A000040(n+1), A062409(n+1)]` -/
def P520274179090828172.Spec : Prop :=
  ∀ n, (P520274179090828172.a n : ℤ) = A168031 (n + 1)

end A168031

/-! ## A168031.P5439586325848642054

`∩[A045344(n+1), A062409(n+1)]`
-/

namespace A168031.P5439586325848642054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168031.P5439586325848642054

namespace A168031

/-- `∩[A045344(n+1), A062409(n+1)]` -/
def P5439586325848642054.Spec : Prop :=
  ∀ n, (P5439586325848642054.a n : ℤ) = A168031 (n + 1)

end A168031

/-! ## A168031.P8871216789733691616

`∩[A053813(n+1), A062409(n+1)]`
-/

namespace A168031.P8871216789733691616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168031.P8871216789733691616

namespace A168031

/-- `∩[A053813(n+1), A062409(n+1)]` -/
def P8871216789733691616.Spec : Prop :=
  ∀ n, (P8871216789733691616.a n : ℤ) = A168031 (n + 1)

end A168031

/-! ## A168031.P3769483045754550536

`∩[A062409(n+1), A116974(n+1)]`
-/

namespace A168031.P3769483045754550536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168031.P3769483045754550536

namespace A168031

/-- `∩[A062409(n+1), A116974(n+1)]` -/
def P3769483045754550536.Spec : Prop :=
  ∀ n, (P3769483045754550536.a n : ℤ) = A168031 (n + 1)

end A168031

/-! ## A168031.P11145612087601541337

`∩[A062409(n+1), A175787(n+1)]`
-/

namespace A168031.P11145612087601541337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168031.P11145612087601541337

namespace A168031

/-- `∩[A062409(n+1), A175787(n+1)]` -/
def P11145612087601541337.Spec : Prop :=
  ∀ n, (P11145612087601541337.a n : ℤ) = A168031 (n + 1)

end A168031

/-! ## A168031.P10449730908942722006

`∩[A062409(n+1), A182986(n+1)]`
-/

namespace A168031.P10449730908942722006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168031.P10449730908942722006

namespace A168031

/-- `∩[A062409(n+1), A182986(n+1)]` -/
def P10449730908942722006.Spec : Prop :=
  ∀ n, (P10449730908942722006.a n : ℤ) = A168031 (n + 1)

end A168031

/-! ## A168031.P10459844000382621261

`∩[A062409(n+1), A251595(n+1)]`
-/

namespace A168031.P10459844000382621261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168031.P10459844000382621261

namespace A168031

/-- `∩[A062409(n+1), A251595(n+1)]` -/
def P10459844000382621261.Spec : Prop :=
  ∀ n, (P10459844000382621261.a n : ℤ) = A168031 (n + 1)

end A168031

/-! ## A168031.P18208677919839609206

`record[A020639(A062409(n+2))]`
-/

namespace A168031.P18208677919839609206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A062409 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168031.P18208677919839609206

namespace A168031

/-- `record[A020639(A062409(n+2))]` -/
def P18208677919839609206.Spec : Prop :=
  ∀ n, P18208677919839609206.a n = A168031 (n + 1)

end A168031

/-! ## A168031.P14222241140443144884

`filter[A062409(n+1), A010051(#)]`
-/

namespace A168031.P14222241140443144884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A168031.P14222241140443144884

namespace A168031

/-- `filter[A062409(n+1), A010051(#)]` -/
def P14222241140443144884.Spec : Prop :=
  ∀ n, P14222241140443144884.a n = A168031 (n + 1)

end A168031

/-! ## A168031.P10406956845352214977

`filter[A062409(n+1), A323153(#)]`
-/

namespace A168031.P10406956845352214977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A168031.P10406956845352214977

namespace A168031

/-- `filter[A062409(n+1), A323153(#)]` -/
def P10406956845352214977.Spec : Prop :=
  ∀ n, P10406956845352214977.a n = A168031 (n + 1)

end A168031

/-! ## A168031.P13782814889590249207

`filter[A062409(n+2), A323152(#)]`
-/

namespace A168031.P13782814889590249207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062409 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A168031.P13782814889590249207

namespace A168031

/-- `filter[A062409(n+2), A323152(#)]` -/
def P13782814889590249207.Spec : Prop :=
  ∀ n, P13782814889590249207.a n = A168031 (n + 1)

end A168031

/-! ## A168031.P2261529604297598133

`filter[A062409(n+2), A080339(#)]`
-/

namespace A168031.P2261529604297598133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062409 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A168031.P2261529604297598133

namespace A168031

/-- `filter[A062409(n+2), A080339(#)]` -/
def P2261529604297598133.Spec : Prop :=
  ∀ n, P2261529604297598133.a n = A168031 (n + 1)

end A168031

/-! ## A168031.P11595034724529869323

`p?[lt[A001222(A022843(n+1)), 2]+1]`
-/

namespace A168031.P11595034724529869323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A022843 (n + 1)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A168031.P11595034724529869323

namespace A168031

/-- `p?[lt[A001222(A022843(n+1)), 2]+1]` -/
def P11595034724529869323.Spec : Prop :=
  ∀ n, (P11595034724529869323.a n : ℤ) = A168031 (n + 1)

end A168031

/-! ## A168031.P2350408124193283174

`record[A061397(A062409(n+1))+A000038(n)]`
-/

namespace A168031.P2350408124193283174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A062409 (n + 1)).toNat + A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168031.P2350408124193283174

namespace A168031

/-- `record[A061397(A062409(n+1))+A000038(n)]` -/
def P2350408124193283174.Spec : Prop :=
  ∀ n, P2350408124193283174.a n = A168031 (n + 1)

end A168031

/-! ## A168031.P1520370406226990505

`∩[A062409(n+1), A240960(n+1)]`
-/

namespace A168031.P1520370406226990505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168031.P1520370406226990505

namespace A168031

/-- `∩[A062409(n+1), A240960(n+1)]` -/
def P1520370406226990505.Spec : Prop :=
  ∀ n, (P1520370406226990505.a n : ℤ) = A168031 (n + 1)

end A168031

/-! ## A168031.P17180228444192901913

`∩[A062409(n+1), A230606(n+1)]`
-/

namespace A168031.P17180228444192901913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168031.P17180228444192901913

namespace A168031

/-- `∩[A062409(n+1), A230606(n+1)]` -/
def P17180228444192901913.Spec : Prop :=
  ∀ n, (P17180228444192901913.a n : ℤ) = A168031 (n + 1)

end A168031

/-! ## A168031.P4391061355287653107

`∩[A062409(n+1), A385492(n+1)]`
-/

namespace A168031.P4391061355287653107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168031.P4391061355287653107

namespace A168031

/-- `∩[A062409(n+1), A385492(n+1)]` -/
def P4391061355287653107.Spec : Prop :=
  ∀ n, (P4391061355287653107.a n : ℤ) = A168031 (n + 1)

end A168031

/-!
# A168032: Primes p for which floor(p*phi) is prime, where phi is the golden ratio.

The programs for A168032, there is no canonical definition to state claims against.
-/

/-! ## A168032.P2176139649861005483

`p?[ceil(A108542(n+1)/ϕ)]`
-/

namespace A168032.P2176139649861005483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A108542 (n + 1) : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168032.P2176139649861005483

/-! ## A168032.P16116182394086820190

`p?[ceil(sqrt(A108540(n+1)/ϕ))]`
-/

namespace A168032.P16116182394086820190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A108540 (n + 1) : ℝ) / Real.goldenRatio)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168032.P16116182394086820190

/-! ## A168032.P15149894657243715153

`p?[A184792(n+1)]`
-/

namespace A168032.P15149894657243715153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168032.P15149894657243715153

/-! ## A168032.P14980190558968083493

`∩[A108541(n+1), A184792(n+1)]`
-/

namespace A168032.P14980190558968083493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168032.P14980190558968083493

/-! ## A168032.P15647941972842697050

`∩[A108543(n+1), A184792(n+1)]`
-/

namespace A168032.P15647941972842697050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168032.P15647941972842697050

/-! ## A168032.P1107882131473832264

`∩[A000040(n+1), A184792(n+1)]`
-/

namespace A168032.P1107882131473832264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168032.P1107882131473832264

/-! ## A168032.P7909746139204309734

`∩[A008578(n+1), A184792(n+1)]`
-/

namespace A168032.P7909746139204309734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168032.P7909746139204309734

/-! ## A168032.P4969776204296573526

`∩[A033946(n+1), A184792(n+1)]`
-/

namespace A168032.P4969776204296573526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168032.P4969776204296573526

/-! ## A168032.P9766985545595505291

`∩[A045319(n+1), A184792(n+1)]`
-/

namespace A168032.P9766985545595505291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168032.P9766985545595505291

/-! ## A168032.P7513449217639059781

`∩[A045344(n+1), A184792(n+1)]`
-/

namespace A168032.P7513449217639059781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168032.P7513449217639059781

/-! ## A168032.P4818375485646590551

`∩[A046022(n+1), A184792(n+1)]`
-/

namespace A168032.P4818375485646590551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168032.P4818375485646590551

/-! ## A168032.P2433982395206614590

`∩[A051948(n+1), A184792(n+1)]`
-/

namespace A168032.P2433982395206614590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168032.P2433982395206614590

/-! ## A168032.P381792508869986532

`∩[A062972(n+1), A184792(n+1)]`
-/

namespace A168032.P381792508869986532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168032.P381792508869986532

/-! ## A168032.P15570582306170052488

`∩[A066050(n+1), A184792(n+1)]`
-/

namespace A168032.P15570582306170052488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168032.P15570582306170052488

/-! ## A168032.P15358184308460850764

`∩[A067126(n+1), A184792(n+1)]`
-/

namespace A168032.P15358184308460850764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168032.P15358184308460850764

/-! ## A168032.P14367824996603884889

`∩[A116974(n+1), A184792(n+1)]`
-/

namespace A168032.P14367824996603884889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168032.P14367824996603884889

/-! ## A168032.P3077300993522640354

`∩[A158611(n+1), A184792(n+1)]`
-/

namespace A168032.P3077300993522640354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168032.P3077300993522640354

/-! ## A168032.P1392351453583057885

`∩[A175787(n+1), A184792(n+1)]`
-/

namespace A168032.P1392351453583057885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168032.P1392351453583057885

/-! ## A168032.P10906815689544847549

`∩[A182986(n+1), A184792(n+1)]`
-/

namespace A168032.P10906815689544847549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168032.P10906815689544847549

/-! ## A168032.P8178919260814274680

`∩[A184792(n+1), A197636(n+1)]`
-/

namespace A168032.P8178919260814274680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168032.P8178919260814274680

/-!
# A168033: Primes p such that floor(phi^p) is prime.

The programs for A168033, there is no canonical definition to state claims against.
-/

/-! ## A168033.P1829773699234072040

`p?[A001606(n+1)]`
-/

namespace A168033.P1829773699234072040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168033.P1829773699234072040

/-! ## A168033.P3839360388987430099

`record[∑{p}[A001606(n+2), #]]`
-/

namespace A168033.P3839360388987430099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168033.P3839360388987430099

/-! ## A168033.P8432832585068228613

`record[∏{p}[A001606(n+3), #]]`
-/

namespace A168033.P8432832585068228613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168033.P8432832585068228613

/-! ## A168033.P13270278091356431422

`p?[∪[A216575(n+1), A216576(n+1)]]`
-/

namespace A168033.P13270278091356431422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216575 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216576 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A168033.P13270278091356431422

/-! ## A168033.P64832911669542843

`p?[A059791(n+1)]`
-/

namespace A168033.P64832911669542843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168033.P64832911669542843

/-!
# A168034: Primes p for which floor(p^phi) is prime, where phi is the golden ratio.

The programs for A168034, there is no canonical definition to state claims against.
-/

/-! ## A168034.P3426422025448451277

`p?[n*A105700(A152737(n))]`
-/

namespace A168034.P3426422025448451277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A105700 (A152737 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168034.P3426422025448451277

/-!
# A168035: Primes p for which floor(p^phi) and floor(phi^p) are prime.

The programs for A168035, there is no canonical definition to state claims against.
-/

/-! ## A168035.P11370489114091381896

`∩[A001606(n+1), A168034(n+1)]`
-/

namespace A168035.P11370489114091381896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168035.P11370489114091381896

/-! ## A168035.P9433954430456956301

`∩[A059791(n+1), A168034(n+1)]`
-/

namespace A168035.P9433954430456956301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168035.P9433954430456956301

/-! ## A168035.P5030187114817186653

`∩[A168033(n+1), A168034(n+1)]`
-/

namespace A168035.P5030187114817186653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168035.P5030187114817186653

/-!
# A168036: Difference between n' and n, where n' is the arithmetic derivative of n (A003415).

The programs for A168036, the canonical program `A168036.P2098310487666722677` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168036 has offset 0).

The definition of A168036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168036.P2098310487666722677

`A003415(n)-n`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A168036

/-- `A003415(n)-n` -/
def P2098310487666722677.Spec : Prop :=
  ∀ n, P2098310487666722677.a n = A168036 n

theorem P2098310487666722677.correct : P2098310487666722677.Spec := by
  intro n
  simp only [A168036]

end A168036

/-! ## A168036.P1848574800581366613

`A129283(n)-2*n`
-/

namespace A168036.P1848574800581366613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n - (2 * n : ℤ)

end

end A168036.P1848574800581366613

namespace A168036

/-- `A129283(n)-2*n` -/
def P1848574800581366613.Spec : Prop :=
  ∀ n, P1848574800581366613.a n = A168036 n

end A168036

/-! ## A168036.P16114896791280031772

`∑{d}[n, A300251(#)]-n`
-/

namespace A168036.P16114896791280031772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300251 d - (n : ℤ)

end

end A168036.P16114896791280031772

namespace A168036

/-- `∑{d}[n, A300251(#)]-n` -/
def P16114896791280031772.Spec : Prop :=
  ∀ n, P16114896791280031772.a n = A168036 n

end A168036

/-! ## A168036.P15940894869388492533

`A258057(n-1)+a(n-1)-1` with `a(0)=0`
-/

namespace A168036.P15940894869388492533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A258057 (n - 1) + a (n - 1) - 1

end

end A168036.P15940894869388492533

namespace A168036

/-- `A258057(n-1)+a(n-1)-1` -/
def P15940894869388492533.Spec : Prop :=
  ∀ n, P15940894869388492533.a n = A168036 n

end A168036

/-! ## A168036.P8950908828017683801

`A351225(n)-A373849(n)`
-/

namespace A168036.P8950908828017683801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351225 n - A373849 n

end

end A168036.P8950908828017683801

namespace A168036

/-- `A351225(n)-A373849(n)` -/
def P8950908828017683801.Spec : Prop :=
  ∀ n, P8950908828017683801.a n = A168036 n

end A168036

/-! ## A168036.P7882035275425958227

`A001489(n)+A129283(n)-n`
-/

namespace A168036.P7882035275425958227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (A129283 n - (n : ℤ))

end

end A168036.P7882035275425958227

namespace A168036

/-- `A001489(n)+A129283(n)-n` -/
def P7882035275425958227.Spec : Prop :=
  ∀ n, P7882035275425958227.a n = A168036 n

end A168036

/-! ## A168036.P18351180012711845244

`A327858(n)*A351230(n)-n`
-/

namespace A168036.P18351180012711845244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327858 n * A351230 n - (n : ℤ)

end

end A168036.P18351180012711845244

namespace A168036

/-- `A327858(n)*A351230(n)-n` -/
def P18351180012711845244.Spec : Prop :=
  ∀ n, P18351180012711845244.a n = A168036 n

end A168036

/-! ## A168036.P16948817344743919506

`∑[A258057(n)]-(A258057(n)+n)`
-/

namespace A168036.P16948817344743919506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A258057 n + (n : ℤ))

end

end A168036.P16948817344743919506

namespace A168036

/-- `∑[A258057(n)]-(A258057(n)+n)` -/
def P16948817344743919506.Spec : Prop :=
  ∀ n, P16948817344743919506.a n = A168036 n

end A168036

/-! ## A168036.P15519134812659986930

`A129283(n)+1+n-A016777(n)`
-/

namespace A168036.P15519134812659986930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n + 1 + (n : ℤ) - A016777 n

end

end A168036.P15519134812659986930

namespace A168036

/-- `A129283(n)+1+n-A016777(n)` -/
def P15519134812659986930.Spec : Prop :=
  ∀ n, P15519134812659986930.a n = A168036 n

end A168036

/-! ## A168036.P6532419466963351236

`A129283(n)-n-A302028(A302027(n))`
-/

namespace A168036.P6532419466963351236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n - (n : ℤ) - A302028 (A302027 n).toNat

end

end A168036.P6532419466963351236

namespace A168036

/-- `A129283(n)-n-A302028(A302027(n))` -/
def P6532419466963351236.Spec : Prop :=
  ∀ n, P6532419466963351236.a n = A168036 n

end A168036

/-! ## A168036.P4963553766710154400

`A319703(A004277(n))-n`
-/

namespace A168036.P4963553766710154400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (A004277 n).toNat - (n : ℤ)

end

end A168036.P4963553766710154400

namespace A168036

/-- `A319703(A004277(n))-n` -/
def P4963553766710154400.Spec : Prop :=
  ∀ n, P4963553766710154400.a n = A168036 n

end A168036

/-! ## A168036.P3745875728438418655

`A319703(A004275(n+1))-n`
-/

namespace A168036.P3745875728438418655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (A004275 (n + 1)).toNat - (n : ℤ)

end

end A168036.P3745875728438418655

namespace A168036

/-- `A319703(A004275(n+1))-n` -/
def P3745875728438418655.Spec : Prop :=
  ∀ n, P3745875728438418655.a n = A168036 n

end A168036

/-! ## A168036.P722123847948936581

`A319703(A004273(n)+1)-n`
-/

namespace A168036.P722123847948936581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (A004273 n + 1).toNat - (n : ℤ)

end

end A168036.P722123847948936581

namespace A168036

/-- `A319703(A004273(n)+1)-n` -/
def P722123847948936581.Spec : Prop :=
  ∀ n, P722123847948936581.a n = A168036 n

end A168036

/-! ## A168036.P5755394544934450294

`A319703(A316571(n+1))-n`
-/

namespace A168036.P5755394544934450294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (A316571 (n + 1)).toNat - (n : ℤ)

end

end A168036.P5755394544934450294

namespace A168036

/-- `A319703(A316571(n+1))-n` -/
def P5755394544934450294.Spec : Prop :=
  ∀ n, P5755394544934450294.a n = A168036 n

end A168036

/-! ## A168036.P8158966780669411562

`A319703(2*A028310(n))-n`
-/

namespace A168036.P8158966780669411562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (2 * A028310 n).toNat - (n : ℤ)

end

end A168036.P8158966780669411562

namespace A168036

/-- `A319703(2*A028310(n))-n` -/
def P8158966780669411562.Spec : Prop :=
  ∀ n, P8158966780669411562.a n = A168036 n

end A168036

/-! ## A168036.P3938612024880875570

`A028310(A129283(n))-A004277(n)`
-/

namespace A168036.P3938612024880875570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A129283 n).toNat - A004277 n

end

end A168036.P3938612024880875570

namespace A168036

/-- `A028310(A129283(n))-A004277(n)` -/
def P3938612024880875570.Spec : Prop :=
  ∀ n, P3938612024880875570.a n = A168036 n

end A168036

/-! ## A168036.P17765010141184534859

`A258197(A000124(n))-n`
-/

namespace A168036.P17765010141184534859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258197 (A000124 n).toNat - (n : ℤ)

end

end A168036.P17765010141184534859

namespace A168036

/-- `A258197(A000124(n))-n` -/
def P17765010141184534859.Spec : Prop :=
  ∀ n, P17765010141184534859.a n = A168036 n

end A168036

/-! ## A168036.P11209055695856106880

`A258197(A000217(n)+1)-n`
-/

namespace A168036.P11209055695856106880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258197 (A000217 n + 1).toNat - (n : ℤ)

end

end A168036.P11209055695856106880

namespace A168036

/-- `A258197(A000217(n)+1)-n` -/
def P11209055695856106880.Spec : Prop :=
  ∀ n, P11209055695856106880.a n = A168036 n

end A168036

/-! ## A168036.P9490762360709001042

`A258197(A133263(n)-1)-n`
-/

namespace A168036.P9490762360709001042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258197 (A133263 n - 1).toNat - (n : ℤ)

end

end A168036.P9490762360709001042

namespace A168036

/-- `A258197(A133263(n)-1)-n` -/
def P9490762360709001042.Spec : Prop :=
  ∀ n, P9490762360709001042.a n = A168036 n

end A168036

/-! ## A168036.P11599887902280359659

`A258651(∑[n]+2*n+1)-n`
-/

namespace A168036.P11599887902280359659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258651 (∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1)) - (n : ℤ)

end

end A168036.P11599887902280359659

namespace A168036

/-- `A258651(∑[n]+2*n+1)-n` -/
def P11599887902280359659.Spec : Prop :=
  ∀ n, P11599887902280359659.a n = A168036 n

end A168036

/-!
# A168037: Period length 18: repeat 0,1,2,0,8,7,0,4,5,0,5,4,0,7,8,0,2,1.

The programs for A168037, the canonical program `A168037.P2729014773398450147` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168037 has offset 0).

The definition of A168037 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168037.P2729014773398450147

`A129194(n)%9`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A168037

/-- `A129194(n)%9` -/
def P2729014773398450147.Spec : Prop :=
  ∀ n, P2729014773398450147.a n = A168037 n

theorem P2729014773398450147.correct : P2729014773398450147.Spec := by
  intro n
  simp only [A168037]

end A168037

/-!
# A168038: Squares closest to 2*n.

The programs for A168038, the canonical program `A168038.P13922680817706906049` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168038 has offset 0).

The definition of A168038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168038.P15660070038225604273

`round(sqrt(2*n))²`
-/

namespace A168038.P15660070038225604273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) ^ 2

end

end A168038.P15660070038225604273

namespace A168038

/-- `round(sqrt(2*n))²` -/
def P15660070038225604273.Spec : Prop :=
  ∀ n, P15660070038225604273.a n = A168038 n

end A168038

/-! ## A168038.P17530256151032128983

`round(sqrt(2*n))^(2%(n+3))`
-/

namespace A168038.P17530256151032128983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) ^ (2 % (n + 3))

end

end A168038.P17530256151032128983

namespace A168038

/-- `round(sqrt(2*n))^(2%(n+3))` -/
def P17530256151032128983.Spec : Prop :=
  ∀ n, P17530256151032128983.a n = A168038 n

end A168038

/-! ## A168038.P8560751786193114350

`∑[char[∑[n]+1]]²%(3*(n+1))`
-/

namespace A168038.P8560751786193114350
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 % (3 * (n + 1))

end

end A168038.P8560751786193114350

namespace A168038

/-- `∑[char[∑[n]+1]]²%(3*(n+1))` -/
def P8560751786193114350.Spec : Prop :=
  ∀ n, (P8560751786193114350.a n : ℤ) = A168038 n

end A168038

/-! ## A168038.P13922680817706906049

`A123578(n)^2`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A168038

/-- `A123578(n)^2` -/
def P13922680817706906049.Spec : Prop :=
  ∀ n, P13922680817706906049.a n = A168038 n

theorem P13922680817706906049.correct : P13922680817706906049.Spec := by
  intro n
  simp only [A168038]

end A168038

/-! ## A168038.P8949351387920505238

`A000290(round(sqrt(2*n)))`
-/

namespace A168038.P8949351387920505238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

end

end A168038.P8949351387920505238

namespace A168038

/-- `A000290(round(sqrt(2*n)))` -/
def P8949351387920505238.Spec : Prop :=
  ∀ n, P8949351387920505238.a n = A168038 n

end A168038

/-! ## A168038.P11103791932544042365

`A198954(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A168038.P11103791932544042365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A198954 (n - 1) + a (n - 1)

end

end A168038.P11103791932544042365

namespace A168038

/-- `A198954(n-1)+a(n-1)` -/
def P11103791932544042365.Spec : Prop :=
  ∀ n, P11103791932544042365.a n = A168038 n

end A168038

/-! ## A168038.P1227782862047458805

`A274093(n)*A274093(n)`
-/

namespace A168038.P1227782862047458805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274093 n * A274093 n

end

end A168038.P1227782862047458805

namespace A168038

/-- `A274093(n)*A274093(n)` -/
def P1227782862047458805.Spec : Prop :=
  ∀ n, P1227782862047458805.a n = A168038 n

end A168038

/-! ## A168038.P3970457802612105103

`A274094(n)*A274094(n)`
-/

namespace A168038.P3970457802612105103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274094 n * A274094 n

end

end A168038.P3970457802612105103

namespace A168038

/-- `A274094(n)*A274094(n)` -/
def P3970457802612105103.Spec : Prop :=
  ∀ n, P3970457802612105103.a n = A168038 n

end A168038

/-! ## A168038.P844512296973235695

`A093995(n+1)-A198954(n)`
-/

namespace A168038.P844512296973235695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) - A198954 n

end

end A168038.P844512296973235695

namespace A168038

/-- `A093995(n+1)-A198954(n)` -/
def P844512296973235695.Spec : Prop :=
  ∀ n, P844512296973235695.a n = A168038 n

end A168038

/-! ## A168038.P14796591794616648855

`A048761(A056942(n))`
-/

namespace A168038.P14796591794616648855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048761 (A056942 n).toNat

end

end A168038.P14796591794616648855

namespace A168038

/-- `A048761(A056942(n))` -/
def P14796591794616648855.Spec : Prop :=
  ∀ n, P14796591794616648855.a n = A168038 n

end A168038

/-! ## A168038.P8488042721180585036

`A048761(A063656(n))`
-/

namespace A168038.P8488042721180585036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048761 (A063656 n).toNat

end

end A168038.P8488042721180585036

namespace A168038

/-- `A048761(A063656(n))` -/
def P8488042721180585036.Spec : Prop :=
  ∀ n, P8488042721180585036.a n = A168038 n

end A168038

/-! ## A168038.P9655533348327212793

`A048761(A133280(n))`
-/

namespace A168038.P9655533348327212793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048761 (A133280 n).toNat

end

end A168038.P9655533348327212793

namespace A168038

/-- `A048761(A133280(n))` -/
def P9655533348327212793.Spec : Prop :=
  ∀ n, P9655533348327212793.a n = A168038 n

end A168038

/-! ## A168038.P1957548210644908606

`filter[A232091(n), A010052(#)]`
-/

namespace A168038.P1957548210644908606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010052 (f1 j).toNat = 1) n)

end

end A168038.P1957548210644908606

namespace A168038

/-- `filter[A232091(n), A010052(#)]` -/
def P1957548210644908606.Spec : Prop :=
  ∀ n, P1957548210644908606.a n = A168038 n

end A168038

/-! ## A168038.P9887619866989338722

`filter[A232091(n), A267673(#)]`
-/

namespace A168038.P9887619866989338722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267673 (f1 j).toNat = 1) n)

end

end A168038.P9887619866989338722

namespace A168038

/-- `filter[A232091(n), A267673(#)]` -/
def P9887619866989338722.Spec : Prop :=
  ∀ n, P9887619866989338722.a n = A168038 n

end A168038

/-! ## A168038.P10666239356116511463

`filter[A232091(n), A267683(#)]`
-/

namespace A168038.P10666239356116511463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267683 (f1 j).toNat = 1) n)

end

end A168038.P10666239356116511463

namespace A168038

/-- `filter[A232091(n), A267683(#)]` -/
def P10666239356116511463.Spec : Prop :=
  ∀ n, P10666239356116511463.a n = A168038 n

end A168038

/-! ## A168038.P8151526254750258729

`filter[A232091(n), A267813(#)]`
-/

namespace A168038.P8151526254750258729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267813 (f1 j).toNat = 1) n)

end

end A168038.P8151526254750258729

namespace A168038

/-- `filter[A232091(n), A267813(#)]` -/
def P8151526254750258729.Spec : Prop :=
  ∀ n, P8151526254750258729.a n = A168038 n

end A168038

/-! ## A168038.P5238299933367862103

`filter[A232091(n), A379952(#)]`
-/

namespace A168038.P5238299933367862103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A168038.P5238299933367862103

namespace A168038

/-- `filter[A232091(n), A379952(#)]` -/
def P5238299933367862103.Spec : Prop :=
  ∀ n, P5238299933367862103.a n = A168038 n

end A168038

/-! ## A168038.P12957603307224170699

`A053187(A061885(n))`
-/

namespace A168038.P12957603307224170699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053187 (A061885 n).toNat

end

end A168038.P12957603307224170699

namespace A168038

/-- `A053187(A061885(n))` -/
def P12957603307224170699.Spec : Prop :=
  ∀ n, P12957603307224170699.a n = A168038 n

end A168038

/-! ## A168038.P6397377968689526667

`A053187(2*n)`
-/

namespace A168038.P6397377968689526667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053187 (2 * n)

end

end A168038.P6397377968689526667

namespace A168038

/-- `A053187(2*n)` -/
def P6397377968689526667.Spec : Prop :=
  ∀ n, P6397377968689526667.a n = A168038 n

end A168038

/-!
# A168039: Squares closest to 3*n.

The programs for A168039, the canonical program `A168039.P2285749283661592489` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168039 has offset 0).

The definition of A168039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168039.P3497081606644337101

`round(sqrt(3*n))²`
-/

namespace A168039.P3497081606644337101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (3 * n : ℝ)) ^ 2

end

end A168039.P3497081606644337101

namespace A168039

/-- `round(sqrt(3*n))²` -/
def P3497081606644337101.Spec : Prop :=
  ∀ n, P3497081606644337101.a n = A168039 n

end A168039

/-! ## A168039.P2285749283661592489

`A053187(3*n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A168039

/-- `A053187(3*n)` -/
def P2285749283661592489.Spec : Prop :=
  ∀ n, P2285749283661592489.a n = A168039 n

theorem P2285749283661592489.correct : P2285749283661592489.Spec := by
  intro n
  simp only [A168039]

end A168039

/-! ## A168039.P2439241461986709822

`A000194(3*n)^2`
-/

namespace A168039.P2439241461986709822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (3 * n) ^ 2

end

end A168039.P2439241461986709822

namespace A168039

/-- `A000194(3*n)^2` -/
def P2439241461986709822.Spec : Prop :=
  ∀ n, P2439241461986709822.a n = A168039 n

end A168039

/-! ## A168039.P3294316786006542207

`A000290(round(sqrt(3*n)))`
-/

namespace A168039.P3294316786006542207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.roundAway (Real.sqrt (3 * n : ℝ))).toNat

end

end A168039.P3294316786006542207

namespace A168039

/-- `A000290(round(sqrt(3*n)))` -/
def P3294316786006542207.Spec : Prop :=
  ∀ n, P3294316786006542207.a n = A168039 n

end A168039

/-! ## A168039.P13038728830657476209

`A168038(A007494(n))`
-/

namespace A168039.P13038728830657476209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168038 (A007494 n).toNat

end

end A168039.P13038728830657476209

namespace A168039

/-- `A168038(A007494(n))` -/
def P13038728830657476209.Spec : Prop :=
  ∀ n, P13038728830657476209.a n = A168039 n

end A168039

/-! ## A168039.P17700728380799292818

`A168038(A168237(n+1))`
-/

namespace A168039.P17700728380799292818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168038 (A168237 (n + 1)).toNat

end

end A168039.P17700728380799292818

namespace A168039

/-- `A168038(A168237(n+1))` -/
def P17700728380799292818.Spec : Prop :=
  ∀ n, P17700728380799292818.a n = A168039 n

end A168039

/-! ## A168039.P13705071811662359995

`A168038(A187326(n+1))`
-/

namespace A168039.P13705071811662359995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168038 (A187326 (n + 1)).toNat

end

end A168039.P13705071811662359995

namespace A168039

/-- `A168038(A187326(n+1))` -/
def P13705071811662359995.Spec : Prop :=
  ∀ n, P13705071811662359995.a n = A168039 n

end A168039

/-! ## A168039.P6801538203757878716

`A008217(A027709(3*n))`
-/

namespace A168039.P6801538203757878716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008217 (A027709 (3 * n)).toNat

end

end A168039.P6801538203757878716

namespace A168039

/-- `A008217(A027709(3*n))` -/
def P6801538203757878716.Spec : Prop :=
  ∀ n, P6801538203757878716.a n = A168039 n

end A168039

/-! ## A168039.P17543277542246985564

`A048761(A028391(3*n))`
-/

namespace A168039.P17543277542246985564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048761 (A028391 (3 * n)).toNat

end

end A168039.P17543277542246985564

namespace A168039

/-- `A048761(A028391(3*n))` -/
def P17543277542246985564.Spec : Prop :=
  ∀ n, P17543277542246985564.a n = A168039 n

end A168039

/-! ## A168039.P1243231597957138297

`A048760(A028392(3*n))`
-/

namespace A168039.P1243231597957138297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A028392 (3 * n)).toNat

end

end A168039.P1243231597957138297

namespace A168039

/-- `A048760(A028392(3*n))` -/
def P1243231597957138297.Spec : Prop :=
  ∀ n, P1243231597957138297.a n = A168039 n

end A168039

/-! ## A168039.P232532103391333838

`A048760(A094761(3*n))`
-/

namespace A168039.P232532103391333838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A094761 (3 * n)).toNat

end

end A168039.P232532103391333838

namespace A168039

/-- `A048760(A094761(3*n))` -/
def P232532103391333838.Spec : Prop :=
  ∀ n, P232532103391333838.a n = A168039 n

end A168039

/-! ## A168039.P16490622767993772262

`A168038(A110654(3*n))`
-/

namespace A168039.P16490622767993772262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168038 (A110654 (3 * n)).toNat

end

end A168039.P16490622767993772262

namespace A168039

/-- `A168038(A110654(3*n))` -/
def P16490622767993772262.Spec : Prop :=
  ∀ n, P16490622767993772262.a n = A168039 n

end A168039

/-! ## A168039.P9649182809916201110

`A048760(A232091(3*n))`
-/

namespace A168039.P9649182809916201110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A232091 (3 * n)).toNat

end

end A168039.P9649182809916201110

namespace A168039

/-- `A048760(A232091(3*n))` -/
def P9649182809916201110.Spec : Prop :=
  ∀ n, P9649182809916201110.a n = A168039 n

end A168039

/-! ## A168039.P2101441174864396442

`A168038(A300076(3*n))`
-/

namespace A168039.P2101441174864396442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168038 (A300076 (3 * n)).toNat

end

end A168039.P2101441174864396442

namespace A168039

/-- `A168038(A300076(3*n))` -/
def P2101441174864396442.Spec : Prop :=
  ∀ n, P2101441174864396442.a n = A168039 n

end A168039

/-! ## A168039.P9316685284375456721

`A168038(A110654(n)+n)`
-/

namespace A168039.P9316685284375456721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168038 (A110654 n + (n : ℤ)).toNat

end

end A168039.P9316685284375456721

namespace A168039

/-- `A168038(A110654(n)+n)` -/
def P9316685284375456721.Spec : Prop :=
  ∀ n, P9316685284375456721.a n = A168039 n

end A168039

/-! ## A168039.P4848494386234281917

`A168038(A300076(n)+n)`
-/

namespace A168039.P4848494386234281917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168038 (A300076 n + (n : ℤ)).toNat

end

end A168039.P4848494386234281917

namespace A168039

/-- `A168038(A300076(n)+n)` -/
def P4848494386234281917.Spec : Prop :=
  ∀ n, P4848494386234281917.a n = A168039 n

end A168039

/-! ## A168039.P18007783789346283324

`A168038(A004526(3*n+1))`
-/

namespace A168039.P18007783789346283324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168038 (A004526 (3 * n + 1)).toNat

end

end A168039.P18007783789346283324

namespace A168039

/-- `A168038(A004526(3*n+1))` -/
def P18007783789346283324.Spec : Prop :=
  ∀ n, P18007783789346283324.a n = A168039 n

end A168039

/-! ## A168039.P14473831723752789921

`A002620(2*A000194(3*n))`
-/

namespace A168039.P14473831723752789921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A000194 (3 * n)).toNat

end

end A168039.P14473831723752789921

namespace A168039

/-- `A002620(2*A000194(3*n))` -/
def P14473831723752789921.Spec : Prop :=
  ∀ n, P14473831723752789921.a n = A168039 n

end A168039

/-! ## A168039.P14340891538145251396

`A168038(A004526(n+1)+n)`
-/

namespace A168039.P14340891538145251396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168038 (A004526 (n + 1) + (n : ℤ)).toNat

end

end A168039.P14340891538145251396

namespace A168039

/-- `A168038(A004526(n+1)+n)` -/
def P14340891538145251396.Spec : Prop :=
  ∀ n, P14340891538145251396.a n = A168039 n

end A168039

/-! ## A168039.P965600364983203692

`A168038(2*n-A004526(n))`
-/

namespace A168039.P965600364983203692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168038 ((2 * n : ℤ) - A004526 n).toNat

end

end A168039.P965600364983203692

namespace A168039

/-- `A168038(2*n-A004526(n))` -/
def P965600364983203692.Spec : Prop :=
  ∀ n, P965600364983203692.a n = A168039 n

end A168039

/-!
# A168040: Primes p for which floor(p^E) is prime.

The programs for A168040, there is no canonical definition to state claims against.
-/

/-! ## A168040.P5441361794756565741

`p?[A074221(n)]`
-/

namespace A168040.P5441361794756565741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168040.P5441361794756565741

/-! ## A168040.P16601771626276238768

`p?[ceil(root(A074222(n+1), e))]`
-/

namespace A168040.P16601771626276238768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A074222 (n + 1) : ℝ) ^ (1 / Real.exp 1)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168040.P16601771626276238768

/-! ## A168040.P9982486177120000770

`p?[round(root(A074222(2*n+1-n), e))]`
-/

namespace A168040.P9982486177120000770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A074222 ((2 * n : ℤ) + (1 - (n : ℤ))).toNat : ℝ) ^ (1 / Real.exp 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168040.P9982486177120000770

/-! ## A168040.P4398096582930054361

`∩[A065396(n+1), A074221(n)]`
-/

namespace A168040.P4398096582930054361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168040.P4398096582930054361

/-! ## A168040.P15704286901903299759

`∩[A000040(n+1), A074221(n)]`
-/

namespace A168040.P15704286901903299759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168040.P15704286901903299759

/-! ## A168040.P5303027051005203718

`∩[A006005(n+1), A074221(n)]`
-/

namespace A168040.P5303027051005203718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168040.P5303027051005203718

/-! ## A168040.P5590845175929572706

`∩[A008578(n+1), A074221(n)]`
-/

namespace A168040.P5590845175929572706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168040.P5590845175929572706

/-! ## A168040.P3472711610943845713

`∩[A033946(n+1), A074221(n)]`
-/

namespace A168040.P3472711610943845713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168040.P3472711610943845713

/-! ## A168040.P17675295685591389993

`∩[A053813(n+1), A074221(n)]`
-/

namespace A168040.P17675295685591389993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168040.P17675295685591389993

/-! ## A168040.P3334028920566952423

`∩[A060634(n+1), A074221(n)]`
-/

namespace A168040.P3334028920566952423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168040.P3334028920566952423

/-! ## A168040.P9538243429689464068

`∩[A065091(n+1), A074221(n)]`
-/

namespace A168040.P9538243429689464068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168040.P9538243429689464068

/-! ## A168040.P12647742707280636279

`∩[A116974(n+1), A074221(n)]`
-/

namespace A168040.P12647742707280636279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168040.P12647742707280636279

/-! ## A168040.P17515893200774839568

`∩[A158611(n+1), A074221(n)]`
-/

namespace A168040.P17515893200774839568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168040.P17515893200774839568

/-! ## A168040.P17798432293850942652

`∩[A182140(n+1), A074221(n)]`
-/

namespace A168040.P17798432293850942652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168040.P17798432293850942652

/-! ## A168040.P11175431093558340783

`∩[A182986(n+1), A074221(n)]`
-/

namespace A168040.P11175431093558340783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168040.P11175431093558340783

/-! ## A168040.P7465838357579924824

`∩[A189710(n+1), A074221(n)]`
-/

namespace A168040.P7465838357579924824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168040.P7465838357579924824

/-! ## A168040.P13379043073133302735

`∩[A210494(n+1), A074221(n)]`
-/

namespace A168040.P13379043073133302735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168040.P13379043073133302735

/-! ## A168040.P15525814055957705334

`∩[A055977(n+1), A074221(n)]`
-/

namespace A168040.P15525814055957705334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168040.P15525814055957705334

/-! ## A168040.P13730610108222102336

`filter[A074221(n), A010051(#)]`
-/

namespace A168040.P13730610108222102336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A168040.P13730610108222102336

/-!
# A168041: Fibonacci numbers that are divisible by their index.

The programs for A168041, there is no canonical definition to state claims against.
-/

/-! ## A168041.P8268107102488404169

`A000045(A023172(n+1))`
-/

namespace A168041.P8268107102488404169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A023172 (n + 1)).toNat

end

end A168041.P8268107102488404169

/-! ## A168041.P17057603150727305806

`A000045(A127787(n+2))`
-/

namespace A168041.P17057603150727305806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A127787 (n + 2)).toNat

end

end A168041.P17057603150727305806

/-! ## A168041.P13616407350186575350

`A000045(record[A104714(n+1)])`
-/

namespace A168041.P13616407350186575350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A168041.P13616407350186575350

/-! ## A168041.P8254087195475552382

`A212804(A023172(n+1)+1)`
-/

namespace A168041.P8254087195475552382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A023172 (n + 1) + 1).toNat

end

end A168041.P8254087195475552382

/-! ## A168041.P1690374491952643637

`A000045(record[gcd(n, A324969(n+1))])`
-/

namespace A168041.P1690374491952643637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A324969 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A168041.P1690374491952643637

/-!
# A168042: The non-single or nonisolated numbers whose digits are all square.

The programs for A168042, there is no canonical definition to state claims against.
-/

/-! ## A168042.P18263638359089513019

`∩[A046030(n+1), A167707(n+1)]`
-/

namespace A168042.P18263638359089513019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168042.P18263638359089513019

/-! ## A168042.P13479805274494180832

`record[A048385(A007090(n))%A090031(n)]`
-/

namespace A168042.P13479805274494180832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048385 (A007090 n).toNat) (A090031 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168042.P13479805274494180832

/-! ## A168042.P11716981881727546724

`record[A366946(n+1)%A100735(n)]`
-/

namespace A168042.P11716981881727546724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366946 (n + 1)) (A100735 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168042.P11716981881727546724

/-! ## A168042.P10430721241835187721

`A046030(n+2)%A007090(A003593(n+1))`
-/

namespace A168042.P10430721241835187721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046030 (n + 2)) (A007090 (A003593 (n + 1)).toNat)

end

end A168042.P10430721241835187721

/-! ## A168042.P13376412313678078635

`A046030(n+2)%A309638(n+1)`
-/

namespace A168042.P13376412313678078635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046030 (n + 2)) (A309638 (n + 1))

end

end A168042.P13376412313678078635

/-!
# A168043: Let S(1)={1} and, for n>1 let S(n) be the smallest set containing x+1, x+2, and 2*x for each element x in S(n-1). a(n) is the number of elements in S(n).

The programs for A168043, the canonical program `A168043.P14938611236867350110` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168043 has offset 1).

The definition of A168043 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168043.P14938611236867350110

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7, a(4)=13`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168043

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` -/
def P14938611236867350110.Spec : Prop :=
  ∀ n, P14938611236867350110.a n = A168043 (n + 1)

theorem P14938611236867350110.correct : P14938611236867350110.Spec := by
  intro n
  simp only [A168043, Nat.add_sub_cancel]

end A168043

/-! ## A168043.P18150824340748034814

`ceil(∑[ϕ^n]-n)`
-/

namespace A168043.P18150824340748034814
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j - (n : ℝ)⌉

end

end A168043.P18150824340748034814

namespace A168043

/-- `ceil(∑[ϕ^n]-n)` -/
def P18150824340748034814.Spec : Prop :=
  ∀ n, P18150824340748034814.a n = A168043 (n + 1)

end A168043

/-! ## A168043.P5817567178099521446

`∑[floor(tanh(1)+ϕ^n)]-n`
-/

namespace A168043.P5817567178099521446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tanh (1 : ℝ) + Real.goldenRatio ^ n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A168043.P5817567178099521446

namespace A168043

/-- `∑[floor(tanh(1)+ϕ^n)]-n` -/
def P5817567178099521446.Spec : Prop :=
  ∀ n, P5817567178099521446.a n = A168043 (n + 1)

end A168043

/-! ## A168043.P17140425835824431537

`∑[xor(-1, round(-ϕ^n))]+1`
-/

namespace A168043.P17140425835824431537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (SequenceMachineLib.roundAway (-(Real.goldenRatio ^ n)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A168043.P17140425835824431537

namespace A168043

/-- `∑[xor(-1, round(-ϕ^n))]+1` -/
def P17140425835824431537.Spec : Prop :=
  ∀ n, P17140425835824431537.a n = A168043 (n + 1)

end A168043

/-! ## A168043.P11201253781146301140

`round(a(n-1)+ϕ^n)-1` with `a(0)=1`
-/

namespace A168043.P11201253781146301140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) + Real.goldenRatio ^ n) - 1

end

end A168043.P11201253781146301140

namespace A168043

/-- `round(a(n-1)+ϕ^n)-1` -/
def P11201253781146301140.Spec : Prop :=
  ∀ n, P11201253781146301140.a n = A168043 (n + 1)

end A168043

/-! ## A168043.P6027980207209855795

`∑[ceil(ϕ*a(n-1))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=6`
-/

namespace A168043.P6027980207209855795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 6] fun n f1 =>
  ⌈Real.goldenRatio * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168043.P6027980207209855795

namespace A168043

/-- `∑[ceil(ϕ*a(n-1))]` -/
def P6027980207209855795.Spec : Prop :=
  ∀ n, P6027980207209855795.a n = A168043 (n + 1)

end A168043

/-! ## A168043.P10952962940940331098

`∑[a(n-1)+a(n-2)+1]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A168043.P10952962940940331098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 3] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168043.P10952962940940331098

namespace A168043

/-- `∑[a(n-1)+a(n-2)+1]` -/
def P10952962940940331098.Spec : Prop :=
  ∀ n, (P10952962940940331098.a n : ℤ) = A168043 (n + 1)

end A168043

/-! ## A168043.P6070054528583082067

`a(n-1)-2+a(n-2)+n` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A168043.P6070054528583082067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 1) - 2 + (a (n - 2) + (n : ℤ))

end

end A168043.P6070054528583082067

namespace A168043

/-- `a(n-1)-2+a(n-2)+n` -/
def P6070054528583082067.Spec : Prop :=
  ∀ n, P6070054528583082067.a n = A168043 (n + 1)

end A168043

/-! ## A168043.P3351071767287615594

`a(n-1)-(2-a(n-2)-n)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A168043.P3351071767287615594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 1) - (2 - a (n - 2) - (n : ℤ))

end

end A168043.P3351071767287615594

namespace A168043

/-- `a(n-1)-(2-a(n-2)-n)` -/
def P3351071767287615594.Spec : Prop :=
  ∀ n, P3351071767287615594.a n = A168043 (n + 1)

end A168043

/-! ## A168043.P9179966262478038180

`∑[A324015(n)]+1`
-/

namespace A168043.P9179966262478038180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A168043.P9179966262478038180

namespace A168043

/-- `∑[A324015(n)]+1` -/
def P9179966262478038180.Spec : Prop :=
  ∀ n, P9179966262478038180.a n = A168043 (n + 1)

end A168043

/-! ## A168043.P6299986999439754656

`∑[A169985(n)]-n`
-/

namespace A168043.P6299986999439754656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A168043.P6299986999439754656

namespace A168043

/-- `∑[A169985(n)]-n` -/
def P6299986999439754656.Spec : Prop :=
  ∀ n, P6299986999439754656.a n = A168043 (n + 1)

end A168043

/-! ## A168043.P5242759120087496327

`A288219(n)-(n+1)`
-/

namespace A168043.P5242759120087496327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288219 n - (n + 1 : ℤ)

end

end A168043.P5242759120087496327

namespace A168043

/-- `A288219(n)-(n+1)` -/
def P5242759120087496327.Spec : Prop :=
  ∀ n, P5242759120087496327.a n = A168043 (n + 1)

end A168043

/-! ## A168043.P6123814014413204056

`∑[A254729(n+1)]-n`
-/

namespace A168043.P6123814014413204056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A168043.P6123814014413204056

namespace A168043

/-- `∑[A254729(n+1)]-n` -/
def P6123814014413204056.Spec : Prop :=
  ∀ n, P6123814014413204056.a n = A168043 (n + 1)

end A168043

/-! ## A168043.P10261946549518829371

`A259625(2*(n+1))-n`
-/

namespace A168043.P10261946549518829371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259625 (2 * (n + 1)) - (n : ℤ)

end

end A168043.P10261946549518829371

namespace A168043

/-- `A259625(2*(n+1))-n` -/
def P10261946549518829371.Spec : Prop :=
  ∀ n, P10261946549518829371.a n = A168043 (n + 1)

end A168043

/-! ## A168043.P466631513572322358

`A116470(2*(n+1))-(n+1)`
-/

namespace A168043.P466631513572322358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116470 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A168043.P466631513572322358

namespace A168043

/-- `A116470(2*(n+1))-(n+1)` -/
def P466631513572322358.Spec : Prop :=
  ∀ n, P466631513572322358.a n = A168043 (n + 1)

end A168043

/-! ## A168043.P6589445704967877974

`A259626(2*(n+1))-(n+1)`
-/

namespace A168043.P6589445704967877974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259626 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A168043.P6589445704967877974

namespace A168043

/-- `A259626(2*(n+1))-(n+1)` -/
def P6589445704967877974.Spec : Prop :=
  ∀ n, P6589445704967877974.a n = A168043 (n + 1)

end A168043

/-! ## A168043.P795075574028031523

`∑[A000032(n)]-A028310(n)`
-/

namespace A168043.P795075574028031523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A028310 n

end

end A168043.P795075574028031523

namespace A168043

/-- `∑[A000032(n)]-A028310(n)` -/
def P795075574028031523.Spec : Prop :=
  ∀ n, P795075574028031523.a n = A168043 (n + 1)

end A168043

/-! ## A168043.P9249363073215780851

`A066982(n+1)+A057427(n)`
-/

namespace A168043.P9249363073215780851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066982 (n + 1) + A057427 n

end

end A168043.P9249363073215780851

namespace A168043

/-- `A066982(n+1)+A057427(n)` -/
def P9249363073215780851.Spec : Prop :=
  ∀ n, P9249363073215780851.a n = A168043 (n + 1)

end A168043

/-! ## A168043.P13176055540209328229

`A066982(n+1)-A057428(n)`
-/

namespace A168043.P13176055540209328229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066982 (n + 1) - A057428 n

end

end A168043.P13176055540209328229

namespace A168043

/-- `A066982(n+1)-A057428(n)` -/
def P13176055540209328229.Spec : Prop :=
  ∀ n, P13176055540209328229.a n = A168043 (n + 1)

end A168043

/-! ## A168043.P2032285691934011341

`A215006(n+1)+A215006(n)-A000045(n)`
-/

namespace A168043.P2032285691934011341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215006 (n + 1) + (A215006 n - A000045 n)

end

end A168043.P2032285691934011341

namespace A168043

/-- `A215006(n+1)+A215006(n)-A000045(n)` -/
def P2032285691934011341.Spec : Prop :=
  ∀ n, P2032285691934011341.a n = A168043 (n + 1)

end A168043

/-!
# A168044: Half of the even nonisolated nonprimes A167692.

The programs for A168044, the canonical program `A168044.P11925367810076855045` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168044 has offset 1).

The definition of A168044 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167692, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A168044.P11925367810076855045

`A167692(n+1)/2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A168044

/-- `A167692(n+1)/2` -/
def P11925367810076855045.Spec : Prop :=
  ∀ n, P11925367810076855045.a n = (A168044 (n + 1) : ℚ)

end A168044

/-! ## A168044.P7946607032741167334

`comp[A168497(n+1)]`
-/

namespace A168044.P7946607032741167334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A168044.P7946607032741167334

namespace A168044

/-- `comp[A168497(n+1)]` -/
def P7946607032741167334.Spec : Prop :=
  ∀ n, (P7946607032741167334.a n : ℤ) = A168044 (n + 1)

end A168044

/-! ## A168044.P2143475121810065965

`eq[1, A292438(2*n)]`
-/

namespace A168044.P2143475121810065965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A168044.P2143475121810065965

namespace A168044

/-- `eq[1, A292438(2*n)]` -/
def P2143475121810065965.Spec : Prop :=
  ∀ n, (P2143475121810065965.a n : ℤ) = A168044 (n + 1)

end A168044

/-! ## A168044.P7113011255135885122

`comp[or(n, A292438(n))]/2`
-/

namespace A168044.P7113011255135885122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A292438 n)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2

end

end A168044.P7113011255135885122

namespace A168044

/-- `comp[or(n, A292438(n))]/2` -/
def P7113011255135885122.Spec : Prop :=
  ∀ n, P7113011255135885122.a n = (A168044 (n + 1) : ℚ)

end A168044

/-! ## A168044.P18412435250076339283

`comp[floor(A067829(n+1)/2)]`
-/

namespace A168044.P18412435250076339283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A067829 (n + 1) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A168044.P18412435250076339283

namespace A168044

/-- `comp[floor(A067829(n+1)/2)]` -/
def P18412435250076339283.Spec : Prop :=
  ∀ n, (P18412435250076339283.a n : ℤ) = A168044 (n + 1)

end A168044

/-! ## A168044.P9945138398446911557

`comp[floor(A094743(n+1)/2)]`
-/

namespace A168044.P9945138398446911557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094743 (n + 1) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A168044.P9945138398446911557

namespace A168044

/-- `comp[floor(A094743(n+1)/2)]` -/
def P9945138398446911557.Spec : Prop :=
  ∀ n, (P9945138398446911557.a n : ℤ) = A168044 (n + 1)

end A168044

/-! ## A168044.P4448558356499005285

`comp[record[A049563(n+1)-1]]`
-/

namespace A168044.P4448558356499005285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049563 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A168044.P4448558356499005285

namespace A168044

/-- `comp[record[A049563(n+1)-1]]` -/
def P4448558356499005285.Spec : Prop :=
  ∀ n, (P4448558356499005285.a n : ℤ) = A168044 (n + 1)

end A168044

/-! ## A168044.P5454081336731398438

`lt[A064989(2*n+1), abs(2*(1-n))]`
-/

namespace A168044.P5454081336731398438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (1 - (n : ℤ))|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A168044.P5454081336731398438

namespace A168044

/-- `lt[A064989(2*n+1), abs(2*(1-n))]` -/
def P5454081336731398438.Spec : Prop :=
  ∀ n, (P5454081336731398438.a n : ℤ) = A168044 (n + 1)

end A168044

/-! ## A168044.P3220060961232969225

`A001281(A167692(n+1))`
-/

namespace A168044.P3220060961232969225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A167692 (n + 1)).toNat

end

end A168044.P3220060961232969225

namespace A168044

/-- `A001281(A167692(n+1))` -/
def P3220060961232969225.Spec : Prop :=
  ∀ n, P3220060961232969225.a n = A168044 (n + 1)

end A168044

/-! ## A168044.P103402020260132880

`comp[A028242(A067829(n+1))]`
-/

namespace A168044.P103402020260132880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A067829 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A168044.P103402020260132880

namespace A168044

/-- `comp[A028242(A067829(n+1))]` -/
def P103402020260132880.Spec : Prop :=
  ∀ n, (P103402020260132880.a n : ℤ) = A168044 (n + 1)

end A168044

/-! ## A168044.P4979798798464653202

`eq[A000034(n), A292438(n)]/2`
-/

namespace A168044.P4979798798464653202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A168044.P4979798798464653202

namespace A168044

/-- `eq[A000034(n), A292438(n)]/2` -/
def P4979798798464653202.Spec : Prop :=
  ∀ n, P4979798798464653202.a n = (A168044 (n + 1) : ℚ)

end A168044

/-! ## A168044.P11639215445624167666

`eq[A010684(n), A292438(n)]/2`
-/

namespace A168044.P11639215445624167666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A168044.P11639215445624167666

namespace A168044

/-- `eq[A010684(n), A292438(n)]/2` -/
def P11639215445624167666.Spec : Prop :=
  ∀ n, P11639215445624167666.a n = (A168044 (n + 1) : ℚ)

end A168044

/-! ## A168044.P16663074600528133107

`eq[A010685(n), A292438(n)]/2`
-/

namespace A168044.P16663074600528133107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A168044.P16663074600528133107

namespace A168044

/-- `eq[A010685(n), A292438(n)]/2` -/
def P16663074600528133107.Spec : Prop :=
  ∀ n, P16663074600528133107.a n = (A168044 (n + 1) : ℚ)

end A168044

/-! ## A168044.P11815554050507582343

`eq[A010686(n), A292438(n)]/2`
-/

namespace A168044.P11815554050507582343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010686 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A168044.P11815554050507582343

namespace A168044

/-- `eq[A010686(n), A292438(n)]/2` -/
def P11815554050507582343.Spec : Prop :=
  ∀ n, P11815554050507582343.a n = (A168044 (n + 1) : ℚ)

end A168044

/-! ## A168044.P17970578876235761135

`eq[A010687(n), A292438(n)]/2`
-/

namespace A168044.P17970578876235761135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010687 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A168044.P17970578876235761135

namespace A168044

/-- `eq[A010687(n), A292438(n)]/2` -/
def P17970578876235761135.Spec : Prop :=
  ∀ n, P17970578876235761135.a n = (A168044 (n + 1) : ℚ)

end A168044

/-! ## A168044.P4294736247101745152

`eq[A010688(n), A292438(n)]/2`
-/

namespace A168044.P4294736247101745152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010688 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A168044.P4294736247101745152

namespace A168044

/-- `eq[A010688(n), A292438(n)]/2` -/
def P4294736247101745152.Spec : Prop :=
  ∀ n, P4294736247101745152.a n = (A168044 (n + 1) : ℚ)

end A168044

/-! ## A168044.P11104556345692770787

`eq[A010689(n), A292438(n)]/2`
-/

namespace A168044.P11104556345692770787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010689 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A168044.P11104556345692770787

namespace A168044

/-- `eq[A010689(n), A292438(n)]/2` -/
def P11104556345692770787.Spec : Prop :=
  ∀ n, P11104556345692770787.a n = (A168044 (n + 1) : ℚ)

end A168044

/-! ## A168044.P925766881825835982

`eq[A010690(n), A292438(n)]/2`
-/

namespace A168044.P925766881825835982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010690 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A168044.P925766881825835982

namespace A168044

/-- `eq[A010690(n), A292438(n)]/2` -/
def P925766881825835982.Spec : Prop :=
  ∀ n, P925766881825835982.a n = (A168044 (n + 1) : ℚ)

end A168044

/-! ## A168044.P13878316216017391620

`eq[A010691(n), A292438(n)]/2`
-/

namespace A168044.P13878316216017391620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010691 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A168044.P13878316216017391620

namespace A168044

/-- `eq[A010691(n), A292438(n)]/2` -/
def P13878316216017391620.Spec : Prop :=
  ∀ n, P13878316216017391620.a n = (A168044 (n + 1) : ℚ)

end A168044

/-! ## A168044.P18326617537664861172

`eq[A019303(n), A292438(n)]/2`
-/

namespace A168044.P18326617537664861172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019303 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A168044.P18326617537664861172

namespace A168044

/-- `eq[A019303(n), A292438(n)]/2` -/
def P18326617537664861172.Spec : Prop :=
  ∀ n, P18326617537664861172.a n = (A168044 (n + 1) : ℚ)

end A168044

/-!
# A168045: a(n) = A167707(n) + n.

The programs for A168045, the canonical program `A168045.P1578608336335439883` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168045 has offset 1).

The definition of A168045 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167707, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A168045.P1578608336335439883

`A167707(n+1)+n+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A168045

/-- `A167707(n+1)+n+1` -/
def P1578608336335439883.Spec : Prop :=
  ∀ n, P1578608336335439883.a n = A168045 (n + 1)

theorem P1578608336335439883.correct : P1578608336335439883.Spec := by
  intro n
  simp only [A168045, Nat.add_sub_cancel]

end A168045

/-! ## A168045.P16910498611813097041

`A168496(n+1)+n`
-/

namespace A168045.P16910498611813097041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168496 (n + 1) + (n : ℤ)

end

end A168045.P16910498611813097041

namespace A168045

/-- `A168496(n+1)+n` -/
def P16910498611813097041.Spec : Prop :=
  ∀ n, P16910498611813097041.a n = A168045 (n + 1)

theorem P16910498611813097041.correct : P16910498611813097041.Spec := by
  intro n
  simp only [A168045, Nat.add_sub_cancel, A168045.P16910498611813097041.a, A168045.P1578608336335439883.a, A167707, A167707.P14412773003900474856.f1, A167707.P14412773003900474856.f2, A167707.P14412773003900474856.a, A168496, A168496.P10279288104061310244.a, A093178, A093178.P12085837158869515185.a, A283265, A283265.P16513607417697021488.a, A292438, A292438.P17678663792653604288.a, A129950, A129950.P15295767996041627134.a, A323162, A323162.P4199434762193306250.a, A010051, A010051.P15078252821583414300.a, A066247, A066247.P15227533178821378383.f1, A066247.P15227533178821378383.a, A164292, A164292.P14089630238313038939.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A168045

/-! ## A168045.P2737859368128142470

`comp[A167706(n+1)]+1+n`
-/

namespace A168045.P2737859368128142470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 + n

end

end A168045.P2737859368128142470

namespace A168045

/-- `comp[A167706(n+1)]+1+n` -/
def P2737859368128142470.Spec : Prop :=
  ∀ n, (P2737859368128142470.a n : ℤ) = A168045 (n + 1)

end A168045

/-! ## A168045.P1291955293302114706

`∑[A167911(floor(acot(n)+n))]+n`
-/

namespace A168045.P1291955293302114706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167911 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A168045.P1291955293302114706

namespace A168045

/-- `∑[A167911(floor(acot(n)+n))]+n` -/
def P1291955293302114706.Spec : Prop :=
  ∀ n, P1291955293302114706.a n = A168045 (n + 1)

end A168045

/-! ## A168045.P8729186866122940085

`a(n-1)+A167911(n)+1` with `a(0)=1`
-/

namespace A168045.P8729186866122940085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A167911 n + 1)

end

end A168045.P8729186866122940085

namespace A168045

/-- `a(n-1)+A167911(n)+1` -/
def P8729186866122940085.Spec : Prop :=
  ∀ n, P8729186866122940085.a n = A168045 (n + 1)

end A168045

/-! ## A168045.P6394840988718854354

`comp[A167921(n+1)+1]+1+n`
-/

namespace A168045.P6394840988718854354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167921 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 + n

end

end A168045.P6394840988718854354

namespace A168045

/-- `comp[A167921(n+1)+1]+1+n` -/
def P6394840988718854354.Spec : Prop :=
  ∀ n, (P6394840988718854354.a n : ℤ) = A168045 (n + 1)

end A168045

/-! ## A168045.P8129738211406081874

`∑[A167911(A028310(n))]+n`
-/

namespace A168045.P8129738211406081874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167911 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A168045.P8129738211406081874

namespace A168045

/-- `∑[A167911(A028310(n))]+n` -/
def P8129738211406081874.Spec : Prop :=
  ∀ n, P8129738211406081874.a n = A168045 (n + 1)

end A168045

/-! ## A168045.P1974655078055055217

`∑[A167911(A137735(n²))]+n`
-/

namespace A168045.P1974655078055055217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167911 (A137735 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A168045.P1974655078055055217

namespace A168045

/-- `∑[A167911(A137735(n²))]+n` -/
def P1974655078055055217.Spec : Prop :=
  ∀ n, P1974655078055055217.a n = A168045 (n + 1)

end A168045

/-! ## A168045.P8047302570607114171

`∑[A167911(n+1)+1]-A167911(n+1)`
-/

namespace A168045.P8047302570607114171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167911 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A167911 (n + 1)

end

end A168045.P8047302570607114171

namespace A168045

/-- `∑[A167911(n+1)+1]-A167911(n+1)` -/
def P8047302570607114171.Spec : Prop :=
  ∀ n, P8047302570607114171.a n = A168045 (n + 1)

end A168045

/-! ## A168045.P12089912516426114715

`A167887(n+1)-A168343(n+1)`
-/

namespace A168045.P12089912516426114715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167887 (n + 1) - A168343 (n + 1)

end

end A168045.P12089912516426114715

namespace A168045

/-- `A167887(n+1)-A168343(n+1)` -/
def P12089912516426114715.Spec : Prop :=
  ∀ n, P12089912516426114715.a n = A168045 (n + 1)

theorem P12089912516426114715.correct : P12089912516426114715.Spec := by
  intro n
  simp only [A168045, Nat.add_sub_cancel, A168045.P12089912516426114715.a, A168045.P1578608336335439883.a, A167707, A167707.P14412773003900474856.f1, A167707.P14412773003900474856.f2, A167707.P14412773003900474856.a, A167887, A167887.P6811191950323054762.a, A168343, A168343.P10702448307998344180.a, A093178, A093178.P12085837158869515185.a, A167706, A167706.P11488542031625927943.f1, A167706.P11488542031625927943.f2, A167706.P11488542031625927943.a, A283265, A283265.P16513607417697021488.a, A292438, A292438.P17678663792653604288.a, A007510, A007510.P9655898748526012835.f1, A007510.P9655898748526012835.f2, A007510.P9655898748526012835.a, A014574, A014574.P4587706211531852143.a, A129950, A129950.P15295767996041627134.a, A323162, A323162.P4199434762193306250.a, A010051, A010051.P15078252821583414300.a, A025584, A025584.P1747553391340850671.a, A066247, A066247.P15227533178821378383.f1, A066247.P15227533178821378383.a, A067774, A067774.P9573617290434745889.f1, A067774.P9573617290434745889.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A164292, A164292.P14089630238313038939.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A168045

/-!
# A168046: Characteristic function of zerofree numbers in decimal representation.

The programs for A168046, there is no canonical definition to state claims against.
-/

/-! ## A168046.P367957496350848757

`1-A217096(n)`
-/

namespace A168046.P367957496350848757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A217096 n

end

end A168046.P367957496350848757

/-!
# A168048: a(n) = C(n)*Pi(n) where C(n) = number of nonprimes <= n, Pi(n) = number of primes <= n.

The programs for A168048, the canonical program `A168048.P5656807173339822994` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168048 has offset 1).

The definition of A168048 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168048.P5656807173339822994

`A062298(n+1)*A000720(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A168048

/-- `A062298(n+1)*A000720(n+1)` -/
def P5656807173339822994.Spec : Prop :=
  ∀ n, P5656807173339822994.a n = A168048 (n + 1)

theorem P5656807173339822994.correct : P5656807173339822994.Spec := by
  intro n
  simp only [A168048, Nat.add_sub_cancel]

end A168048

/-! ## A168048.P2371243336111061434

`∑[abs(A063084(n+1))]`
-/

namespace A168048.P2371243336111061434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A063084 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168048.P2371243336111061434

namespace A168048

/-- `∑[abs(A063084(n+1))]` -/
def P2371243336111061434.Spec : Prop :=
  ∀ n, P2371243336111061434.a n = A168048 (n + 1)

end A168048

/-! ## A168048.P5889809774574718921

`∑[1-A026233(n+1)+n]`
-/

namespace A168048.P5889809774574718921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A026233 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168048.P5889809774574718921

namespace A168048

/-- `∑[1-A026233(n+1)+n]` -/
def P5889809774574718921.Spec : Prop :=
  ∀ n, P5889809774574718921.a n = A168048 (n + 1)

end A168048

/-! ## A168048.P5169806140136791469

`∑[1-(n-2*n)-A026233(1-(n-2*n))]`
-/

namespace A168048.P5169806140136791469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - (2 * n : ℤ)) - A026233 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168048.P5169806140136791469

namespace A168048

/-- `∑[1-(n-2*n)-A026233(1-(n-2*n))]` -/
def P5169806140136791469.Spec : Prop :=
  ∀ n, P5169806140136791469.a n = A168048 (n + 1)

end A168048

/-! ## A168048.P611314573145387400

`A291440(n+1)+A060303(n+1)`
-/

namespace A168048.P611314573145387400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291440 (n + 1) + A060303 (n + 1)

end

end A168048.P611314573145387400

namespace A168048

/-- `A291440(n+1)+A060303(n+1)` -/
def P611314573145387400.Spec : Prop :=
  ∀ n, P611314573145387400.a n = A168048 (n + 1)

theorem P611314573145387400.correct : P611314573145387400.Spec := by
  intro n
  simp only [A168048, Nat.add_sub_cancel, A168048.P611314573145387400.a, A168048.P5656807173339822994.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A060303, A060303.P4896721407780703849.a, A062298, A062298.P8226643735375377344.a, A291440, A291440.P5300707734010347566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168048

/-! ## A168048.P10470716880287367014

`A128913(n+1)-A000720(n+1)²`
-/

namespace A168048.P10470716880287367014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128913 (n + 1) - A000720 (n + 1) ^ 2

end

end A168048.P10470716880287367014

namespace A168048

/-- `A128913(n+1)-A000720(n+1)²` -/
def P10470716880287367014.Spec : Prop :=
  ∀ n, P10470716880287367014.a n = A168048 (n + 1)

theorem P10470716880287367014.correct : P10470716880287367014.Spec := by
  intro n
  simp only [A168048, Nat.add_sub_cancel, A168048.P10470716880287367014.a, A168048.P5656807173339822994.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A062298, A062298.P8226643735375377344.a, A128913, A128913.P17301333717528200460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168048

/-! ## A168048.P12132538511373521251

`∑[A005171(n+1)]*A000720(n+1)`
-/

namespace A168048.P12132538511373521251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000720 (n + 1)

end

end A168048.P12132538511373521251

namespace A168048

/-- `∑[A005171(n+1)]*A000720(n+1)` -/
def P12132538511373521251.Spec : Prop :=
  ∀ n, P12132538511373521251.a n = A168048 (n + 1)

end A168048

/-! ## A168048.P17837754904902427800

`∑[A010051(n+1)]*A062298(n+1)`
-/

namespace A168048.P17837754904902427800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A062298 (n + 1)

end

end A168048.P17837754904902427800

namespace A168048

/-- `∑[A010051(n+1)]*A062298(n+1)` -/
def P17837754904902427800.Spec : Prop :=
  ∀ n, P17837754904902427800.a n = A168048 (n + 1)

end A168048

/-! ## A168048.P2854283724310783649

`(A065855(n+1)+1)*A000720(n+1)`
-/

namespace A168048.P2854283724310783649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065855 (n + 1) + 1) * A000720 (n + 1)

end

end A168048.P2854283724310783649

namespace A168048

/-- `(A065855(n+1)+1)*A000720(n+1)` -/
def P2854283724310783649.Spec : Prop :=
  ∀ n, P2854283724310783649.a n = A168048 (n + 1)

theorem P2854283724310783649.correct : P2854283724310783649.Spec := by
  intro n
  simp only [A168048, Nat.add_sub_cancel, A168048.P2854283724310783649.a, A168048.P5656807173339822994.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A062298, A062298.P8226643735375377344.a, A065855, A065855.P16805213270251966039.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168048

/-! ## A168048.P15950974734204176831

`(A036234(n+1)-1)*A062298(n+1)`
-/

namespace A168048.P15950974734204176831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036234 (n + 1) - 1) * A062298 (n + 1)

end

end A168048.P15950974734204176831

namespace A168048

/-- `(A036234(n+1)-1)*A062298(n+1)` -/
def P15950974734204176831.Spec : Prop :=
  ∀ n, P15950974734204176831.a n = A168048 (n + 1)

theorem P15950974734204176831.correct : P15950974734204176831.Spec := by
  intro n
  simp only [A168048, Nat.add_sub_cancel, A168048.P15950974734204176831.a, A168048.P5656807173339822994.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A036234, A036234.P2906282677021386800.a, A062298, A062298.P8226643735375377344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168048

/-! ## A168048.P3359542646550615717

`(n-A033270(n+1))*A000720(n+1)`
-/

namespace A168048.P3359542646550615717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A033270 (n + 1)) * A000720 (n + 1)

end

end A168048.P3359542646550615717

namespace A168048

/-- `(n-A033270(n+1))*A000720(n+1)` -/
def P3359542646550615717.Spec : Prop :=
  ∀ n, P3359542646550615717.a n = A168048 (n + 1)

end A168048

/-! ## A168048.P10853065916838668526

`(n-A065855(n+1))*A062298(n+1)`
-/

namespace A168048.P10853065916838668526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A065855 (n + 1)) * A062298 (n + 1)

end

end A168048.P10853065916838668526

namespace A168048

/-- `(n-A065855(n+1))*A062298(n+1)` -/
def P10853065916838668526.Spec : Prop :=
  ∀ n, P10853065916838668526.a n = A168048 (n + 1)

theorem P10853065916838668526.correct : P10853065916838668526.Spec := by
  intro n
  simp only [A168048, Nat.add_sub_cancel, A168048.P10853065916838668526.a, A168048.P5656807173339822994.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A062298, A062298.P8226643735375377344.a, A065855, A065855.P16805213270251966039.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168048

/-! ## A168048.P3726711695257000766

`∑[abs(A000720(n+1)-A061397(n+1))]`
-/

namespace A168048.P3726711695257000766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000720 (n + 1) - A061397 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168048.P3726711695257000766

namespace A168048

/-- `∑[abs(A000720(n+1)-A061397(n+1))]` -/
def P3726711695257000766.Spec : Prop :=
  ∀ n, P3726711695257000766.a n = A168048 (n + 1)

end A168048

/-! ## A168048.P11950489819939987217

`(A065855(n+1)+1)*∑[A010051(n+1)]`
-/

namespace A168048.P11950489819939987217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065855 (n + 1) + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168048.P11950489819939987217

namespace A168048

/-- `(A065855(n+1)+1)*∑[A010051(n+1)]` -/
def P11950489819939987217.Spec : Prop :=
  ∀ n, P11950489819939987217.a n = A168048 (n + 1)

end A168048

/-! ## A168048.P5318962648139076812

`∑[1-A010051(n+1)]*A000720(n+1)`
-/

namespace A168048.P5318962648139076812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000720 (n + 1)

end

end A168048.P5318962648139076812

namespace A168048

/-- `∑[1-A010051(n+1)]*A000720(n+1)` -/
def P5318962648139076812.Spec : Prop :=
  ∀ n, P5318962648139076812.a n = A168048 (n + 1)

end A168048

/-! ## A168048.P12147952418035639216

`∑[1-A080545(n+1)]*A000720(n+1)`
-/

namespace A168048.P12147952418035639216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A080545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000720 (n + 1)

end

end A168048.P12147952418035639216

namespace A168048

/-- `∑[1-A080545(n+1)]*A000720(n+1)` -/
def P12147952418035639216.Spec : Prop :=
  ∀ n, P12147952418035639216.a n = A168048 (n + 1)

end A168048

/-! ## A168048.P10474706434115939830

`∑[char[A018252(n+1)-1]]*A000720(n+1)`
-/

namespace A168048.P10474706434115939830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000720 (n + 1)

end

end A168048.P10474706434115939830

namespace A168048

/-- `∑[char[A018252(n+1)-1]]*A000720(n+1)` -/
def P10474706434115939830.Spec : Prop :=
  ∀ n, P10474706434115939830.a n = A168048 (n + 1)

end A168048

/-! ## A168048.P1683437040535416729

`A000720(n+1)*A000720(A065308(n+1))`
-/

namespace A168048.P1683437040535416729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) * A000720 (A065308 (n + 1)).toNat

end

end A168048.P1683437040535416729

namespace A168048

/-- `A000720(n+1)*A000720(A065308(n+1))` -/
def P1683437040535416729.Spec : Prop :=
  ∀ n, P1683437040535416729.a n = A168048 (n + 1)

end A168048

/-! ## A168048.P8299226915125288839

`A000720(n+1)*A165634(A338215(n+1))`
-/

namespace A168048.P8299226915125288839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) * A165634 (A338215 (n + 1)).toNat

end

end A168048.P8299226915125288839

namespace A168048

/-- `A000720(n+1)*A165634(A338215(n+1))` -/
def P8299226915125288839.Spec : Prop :=
  ∀ n, P8299226915125288839.a n = A168048 (n + 1)

end A168048

/-! ## A168048.P12620326807919781124

`(A256885(n+1)-A000217(n))*A000720(n+1)`
-/

namespace A168048.P12620326807919781124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A256885 (n + 1) - A000217 n) * A000720 (n + 1)

end

end A168048.P12620326807919781124

namespace A168048

/-- `(A256885(n+1)-A000217(n))*A000720(n+1)` -/
def P12620326807919781124.Spec : Prop :=
  ∀ n, P12620326807919781124.a n = A168048 (n + 1)

end A168048

/-!
# A168049: Expansion of (3 -x -sqrt(1-2*x-3*x^2))/2.

The programs for A168049, the canonical program `A168049.P8332189401244449518` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168049 has offset 0).

The definition of A168049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168049.P11358829431154665334

`abs(A168051(n))`
-/

namespace A168049.P11358829431154665334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168051 n|

end

end A168049.P11358829431154665334

namespace A168049

/-- `abs(A168051(n))` -/
def P11358829431154665334.Spec : Prop :=
  ∀ n, P11358829431154665334.a n = A168049 n

end A168049

/-! ## A168049.P8332189401244449518

`A001006(floor(n-atan(n)))-char[1]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A168049

/-- `A001006(floor(n-atan(n)))-char[1]` -/
def P8332189401244449518.Spec : Prop :=
  ∀ n, P8332189401244449518.a n = A168049 n

theorem P8332189401244449518.correct : P8332189401244449518.Spec := by
  intro n
  simp only [A168049]

end A168049

/-! ## A168049.P7244804728118603710

`A217526(n)+A123108(n)`
-/

namespace A168049.P7244804728118603710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217526 n + A123108 n

end

end A168049.P7244804728118603710

namespace A168049

/-- `A217526(n)+A123108(n)` -/
def P7244804728118603710.Spec : Prop :=
  ∀ n, P7244804728118603710.a n = A168049 n

theorem P7244804728118603710.correct : P7244804728118603710.Spec := by
  intro n
  simp only [A168049, Nat.add_sub_cancel, A168049.P7244804728118603710.a, A168049.P8332189401244449518.f1, A168049.P8332189401244449518.a, A001006, A001006.P11199602840237397285.a, A123108, A123108.P8709889862737691449.a, A217526, A217526.P4421922415180328638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A168049

/-! ## A168049.P14355559836617282613

`A000038(n)-A168051(n)`
-/

namespace A168049.P14355559836617282613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A168051 n

end

end A168049.P14355559836617282613

namespace A168049

/-- `A000038(n)-A168051(n)` -/
def P14355559836617282613.Spec : Prop :=
  ∀ n, P14355559836617282613.a n = A168049 n

theorem P14355559836617282613.correct : P14355559836617282613.Spec := by
  intro n
  simp only [A168049, Nat.add_sub_cancel, A168049.P14355559836617282613.a, A168049.P8332189401244449518.f1, A168049.P8332189401244449518.a, A000038, A000038.P13734959004655594922.a, A001006, A001006.P11199602840237397285.a, A168051, A168051.P12367257116989189767.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A168049

/-! ## A168049.P17812873357109840561

`A168051(n)*A260196(n)`
-/

namespace A168049.P17812873357109840561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168051 n * A260196 n

end

end A168049.P17812873357109840561

namespace A168049

/-- `A168051(n)*A260196(n)` -/
def P17812873357109840561.Spec : Prop :=
  ∀ n, P17812873357109840561.a n = A168049 n

end A168049

/-! ## A168049.P6191966878405849622

`lcm(A020985(n), A168051(n))`
-/

namespace A168049.P6191966878405849622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A168051 n)

end

end A168049.P6191966878405849622

namespace A168049

/-- `lcm(A020985(n), A168051(n))` -/
def P6191966878405849622.Spec : Prop :=
  ∀ n, (P6191966878405849622.a n : ℤ) = A168049 n

end A168049

/-! ## A168049.P2748935364421290384

`lcm(A105812(n), A292440(n))`
-/

namespace A168049.P2748935364421290384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A105812 n) (A292440 n)

end

end A168049.P2748935364421290384

namespace A168049

/-- `lcm(A105812(n), A292440(n))` -/
def P2748935364421290384.Spec : Prop :=
  ∀ n, (P2748935364421290384.a n : ℤ) = A168049 n

end A168049

/-! ## A168049.P11688224299462804343

`A086246(A154955(n+1)+n)`
-/

namespace A168049.P11688224299462804343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 (A154955 (n + 1) + (n : ℤ)).toNat

end

end A168049.P11688224299462804343

namespace A168049

/-- `A086246(A154955(n+1)+n)` -/
def P11688224299462804343.Spec : Prop :=
  ∀ n, P11688224299462804343.a n = A168049 n

end A168049

/-! ## A168049.P564296016741251635

`A153881(n+1)*A168051(n)`
-/

namespace A168049.P564296016741251635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) * A168051 n

end

end A168049.P564296016741251635

namespace A168049

/-- `A153881(n+1)*A168051(n)` -/
def P564296016741251635.Spec : Prop :=
  ∀ n, P564296016741251635.a n = A168049 n

end A168049

/-! ## A168049.P3127488165725112051

`(2-A122553(n))*A168051(n)`
-/

namespace A168049.P3127488165725112051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A122553 n) * A168051 n

end

end A168049.P3127488165725112051

namespace A168049

/-- `(2-A122553(n))*A168051(n)` -/
def P3127488165725112051.Spec : Prop :=
  ∀ n, P3127488165725112051.a n = A168049 n

end A168049

/-! ## A168049.P6155699169481308547

`(2-A158799(n))*A168051(n)`
-/

namespace A168049.P6155699169481308547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A158799 n) * A168051 n

end

end A168049.P6155699169481308547

namespace A168049

/-- `(2-A158799(n))*A168051(n)` -/
def P6155699169481308547.Spec : Prop :=
  ∀ n, P6155699169481308547.a n = A168049 n

end A168049

/-! ## A168049.P8054374960740565893

`xor(A019590(n+1), A086246(n))`
-/

namespace A168049.P8054374960740565893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A019590 (n + 1)) (A086246 n)

end

end A168049.P8054374960740565893

namespace A168049

/-- `xor(A019590(n+1), A086246(n))` -/
def P8054374960740565893.Spec : Prop :=
  ∀ n, P8054374960740565893.a n = A168049 n

end A168049

/-! ## A168049.P10644452502607156743

`(2-A115716(A008574(n)))*A168051(n)`
-/

namespace A168049.P10644452502607156743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A115716 (A008574 n).toNat) * A168051 n

end

end A168049.P10644452502607156743

namespace A168049

/-- `(2-A115716(A008574(n)))*A168051(n)` -/
def P10644452502607156743.Spec : Prop :=
  ∀ n, P10644452502607156743.a n = A168049 n

end A168049

/-! ## A168049.P11506275182564407762

`A086246(n)+A123108(n)-A123108(A004442(n))`
-/

namespace A168049.P11506275182564407762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 n + (A123108 n - A123108 (A004442 n).toNat)

end

end A168049.P11506275182564407762

namespace A168049

/-- `A086246(n)+A123108(n)-A123108(A004442(n))` -/
def P11506275182564407762.Spec : Prop :=
  ∀ n, P11506275182564407762.a n = A168049 n

end A168049

/-! ## A168049.P17608801674381586876

`ceil(A168055(n)/2)`
-/

namespace A168049.P17608801674381586876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A168055 n : ℚ) / 2⌉

end

end A168049.P17608801674381586876

namespace A168049

/-- `ceil(A168055(n)/2)` -/
def P17608801674381586876.Spec : Prop :=
  ∀ n, P17608801674381586876.a n = A168049 n

end A168049

/-! ## A168049.P8283342604328707057

`ceil(A168073(n)/3)`
-/

namespace A168049.P8283342604328707057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A168073 n : ℚ) / 3⌉

end

end A168049.P8283342604328707057

namespace A168049

/-- `ceil(A168073(n)/3)` -/
def P8283342604328707057.Spec : Prop :=
  ∀ n, P8283342604328707057.a n = A168049 n

end A168049

/-! ## A168049.P9665161446651960482

`lcm(2, A168058(n))/2`
-/

namespace A168049.P9665161446651960482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A168058 n) : ℚ) / 2

end

end A168049.P9665161446651960482

namespace A168049

/-- `lcm(2, A168058(n))/2` -/
def P9665161446651960482.Spec : Prop :=
  ∀ n, P9665161446651960482.a n = (A168049 n : ℚ)

end A168049

/-! ## A168049.P12687184524868199302

`A168051(n)+A126068(n)`
-/

namespace A168049.P12687184524868199302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168051 n + A126068 n

end

end A168049.P12687184524868199302

namespace A168049

/-- `A168051(n)+A126068(n)` -/
def P12687184524868199302.Spec : Prop :=
  ∀ n, P12687184524868199302.a n = A168049 n

end A168049

/-! ## A168049.P8964820253150251106

`A292440(n)+A007971(n)`
-/

namespace A168049.P8964820253150251106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292440 n + A007971 n

end

end A168049.P8964820253150251106

namespace A168049

/-- `A292440(n)+A007971(n)` -/
def P8964820253150251106.Spec : Prop :=
  ∀ n, P8964820253150251106.a n = A168049 n

end A168049

/-! ## A168049.P15365602231277779831

`A168073(n)-A126068(n)`
-/

namespace A168049.P15365602231277779831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168073 n - A126068 n

end

end A168049.P15365602231277779831

namespace A168049

/-- `A168073(n)-A126068(n)` -/
def P15365602231277779831.Spec : Prop :=
  ∀ n, P15365602231277779831.a n = A168049 n

end A168049

/-!
# A168050: Hankel transform of A168049.

The programs for A168050, the canonical program `A168050.P2216433310374131473` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168050 has offset 0).

The definition of A168050 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168050.P2216433310374131473

`a(n-2)-1` with `a(0)=1, a(1)=1, a(2)=0, a(3)=-1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168050

/-- `a(n-2)-1` -/
def P2216433310374131473.Spec : Prop :=
  ∀ n, P2216433310374131473.a n = A168050 n

theorem P2216433310374131473.correct : P2216433310374131473.Spec := by
  intro n
  simp only [A168050]

end A168050

/-! ## A168050.P17683806700381589478

`round((2-n)/2)`
-/

namespace A168050.P17683806700381589478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 - (n : ℤ) : ℚ) / 2)

end

end A168050.P17683806700381589478

namespace A168050

/-- `round((2-n)/2)` -/
def P17683806700381589478.Spec : Prop :=
  ∀ n, P17683806700381589478.a n = A168050 n

end A168050

/-! ## A168050.P17404473832175890462

`round(cosh(log(n+ϕ)))-n`
-/

namespace A168050.P17404473832175890462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log ((n : ℝ) + Real.goldenRatio))) - (n : ℤ)

end

end A168050.P17404473832175890462

namespace A168050

/-- `round(cosh(log(n+ϕ)))-n` -/
def P17404473832175890462.Spec : Prop :=
  ∀ n, P17404473832175890462.a n = A168050 n

end A168050

/-! ## A168050.P3111175018210848013

`1-(∑[n%2]-char[1])`
-/

namespace A168050.P3111175018210848013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

end

end A168050.P3111175018210848013

namespace A168050

/-- `1-(∑[n%2]-char[1])` -/
def P3111175018210848013.Spec : Prop :=
  ∀ n, P3111175018210848013.a n = A168050 n

end A168050

/-! ## A168050.P1979427181349277331

`∑[char[n*ceil(atan(n))]]-n`
-/

namespace A168050.P1979427181349277331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈Real.arctan (n : ℝ)⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A168050.P1979427181349277331

namespace A168050

/-- `∑[char[n*ceil(atan(n))]]-n` -/
def P1979427181349277331.Spec : Prop :=
  ∀ n, P1979427181349277331.a n = A168050 n

end A168050

/-! ## A168050.P1204809025093890237

`ceil((C(2, n)-(n-1))/2)`
-/

namespace A168050.P1204809025093890237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose 2 n : ℤ) - ((n : ℤ) - 1) : ℚ) / 2⌉

end

end A168050.P1204809025093890237

namespace A168050

/-- `ceil((C(2, n)-(n-1))/2)` -/
def P1204809025093890237.Spec : Prop :=
  ∀ n, P1204809025093890237.a n = A168050 n

end A168050

/-! ## A168050.P13382770366577598020

`floor((C(2, n)-(n-2))/2)`
-/

namespace A168050.P13382770366577598020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.choose 2 n : ℤ) - ((n : ℤ) - 2) : ℚ) / 2⌋

end

end A168050.P13382770366577598020

namespace A168050

/-- `floor((C(2, n)-(n-2))/2)` -/
def P13382770366577598020.Spec : Prop :=
  ∀ n, P13382770366577598020.a n = A168050 n

end A168050

/-! ## A168050.P7535931348320916302

`∑[(C(3, n+1)-n)%2]`
-/

namespace A168050.P7535931348320916302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.choose 3 (n + 1) : ℤ) - (n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168050.P7535931348320916302

namespace A168050

/-- `∑[(C(3, n+1)-n)%2]` -/
def P7535931348320916302.Spec : Prop :=
  ∀ n, P7535931348320916302.a n = A168050 n

end A168050

/-! ## A168050.P14521380265595313648

`1-((n-2)%2+n)/2`
-/

namespace A168050.P14521380265595313648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (Int.tmod ((n : ℤ) - 2) 2 + (n : ℤ) : ℚ) / 2

end

end A168050.P14521380265595313648

namespace A168050

/-- `1-((n-2)%2+n)/2` -/
def P14521380265595313648.Spec : Prop :=
  ∀ n, P14521380265595313648.a n = (A168050 n : ℚ)

end A168050

/-! ## A168050.P12319673432437669911

`1-(n-(2-n)%2)/2`
-/

namespace A168050.P12319673432437669911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - Int.tmod (2 - (n : ℤ)) 2 : ℚ) / 2

end

end A168050.P12319673432437669911

namespace A168050

/-- `1-(n-(2-n)%2)/2` -/
def P12319673432437669911.Spec : Prop :=
  ∀ n, P12319673432437669911.a n = (A168050 n : ℚ)

end A168050

/-! ## A168050.P10831203255672755063

`floor(cosh(log(char[1]+2+n)))-n`
-/

namespace A168050.P10831203255672755063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (((if ∃ j, f1 j = n then 1 else 0) + 2 + n : ℕ) : ℝ))⌋ - (n : ℤ)

end

end A168050.P10831203255672755063

namespace A168050

/-- `floor(cosh(log(char[1]+2+n)))-n` -/
def P10831203255672755063.Spec : Prop :=
  ∀ n, P10831203255672755063.a n = A168050 n

end A168050

/-! ## A168050.P17479056853711561088

`ogf((1-2x^2-x^3+x^4)/(1-x-x^2+x^3))`
-/

namespace A168050.P17479056853711561088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2, -1, 1] [1, -1, -1, 1] n

end

end A168050.P17479056853711561088

namespace A168050

/-- `ogf((1-2x^2-x^3+x^4)/(1-x-x^2+x^3))` -/
def P17479056853711561088.Spec : Prop :=
  ∀ n, P17479056853711561088.a n = A168050 n

end A168050

/-! ## A168050.P7098978293320669328

`ceil((atan(n+1)-∑[n])/(n+1))`
-/

namespace A168050.P7098978293320669328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.arctan (n + 1 : ℝ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)) / (n + 1 : ℝ)⌉

end

end A168050.P7098978293320669328

namespace A168050

/-- `ceil((atan(n+1)-∑[n])/(n+1))` -/
def P7098978293320669328.Spec : Prop :=
  ∀ n, P7098978293320669328.a n = A168050 n

end A168050

/-! ## A168050.P16368566958467785376

`ceil(∑[acot(n+1)-n]/(n+1))`
-/

namespace A168050.P16368566958467785376
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n + 1 : ℝ) - (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(∑ j ∈ Finset.range (n + 1), f1 j) / (n + 1 : ℝ)⌉

end

end A168050.P16368566958467785376

namespace A168050

/-- `ceil(∑[acot(n+1)-n]/(n+1))` -/
def P16368566958467785376.Spec : Prop :=
  ∀ n, P16368566958467785376.a n = A168050 n

end A168050

/-! ## A168050.P7766090382754553437

`floor((and(1, n)-∑[n-1])/(n+1))`
-/

namespace A168050.P7766090382754553437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((Nat.land 1 n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A168050.P7766090382754553437

namespace A168050

/-- `floor((and(1, n)-∑[n-1])/(n+1))` -/
def P7766090382754553437.Spec : Prop :=
  ∀ n, P7766090382754553437.a n = A168050 n

end A168050

/-! ## A168050.P2938010218725881003

`floor(∑[n-1]/(gcd(2, n+1)-(n+2)))`
-/

namespace A168050.P2938010218725881003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((Nat.gcd 2 (n + 1) : ℤ) - (n + 2 : ℤ) : ℚ)⌋

end

end A168050.P2938010218725881003

namespace A168050

/-- `floor(∑[n-1]/(gcd(2, n+1)-(n+2)))` -/
def P2938010218725881003.Spec : Prop :=
  ∀ n, P2938010218725881003.a n = A168050 n

end A168050

/-! ## A168050.P16840455057199158521

`val(2*n+1, n+2)-floor((n-1)/2)`
-/

namespace A168050.P16840455057199158521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (2 * n + 1) (n + 2) : ℤ) - ⌊((n : ℤ) - 1 : ℚ) / 2⌋

end

end A168050.P16840455057199158521

namespace A168050

/-- `val(2*n+1, n+2)-floor((n-1)/2)` -/
def P16840455057199158521.Spec : Prop :=
  ∀ n, P16840455057199158521.a n = A168050 n

end A168050

/-! ## A168050.P2356276749347864254

`ceil(val(2*n+1, n+2)-(n-1)/2)`
-/

namespace A168050.P2356276749347864254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.valuation (2 * n + 1) (n + 2) : ℚ) - ((n : ℤ) - 1 : ℚ) / 2⌉

end

end A168050.P2356276749347864254

namespace A168050

/-- `ceil(val(2*n+1, n+2)-(n-1)/2)` -/
def P2356276749347864254.Spec : Prop :=
  ∀ n, P2356276749347864254.a n = A168050 n

end A168050

/-! ## A168050.P4193376199578726681

`2-∑[A266719(n)]`
-/

namespace A168050.P4193376199578726681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266719 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168050.P4193376199578726681

namespace A168050

/-- `2-∑[A266719(n)]` -/
def P4193376199578726681.Spec : Prop :=
  ∀ n, P4193376199578726681.a n = A168050 n

end A168050

/-! ## A168050.P14801504446336424923

`A263997(n+1)-n`
-/

namespace A168050.P14801504446336424923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263997 (n + 1) - (n : ℤ)

end

end A168050.P14801504446336424923

namespace A168050

/-- `A263997(n+1)-n` -/
def P14801504446336424923.Spec : Prop :=
  ∀ n, P14801504446336424923.a n = A168050 n

end A168050

/-!
# A168051: Expansion of (1+x+sqrt(1-2x-3x^2))/2.

The programs for A168051, the canonical program `A168051.P12367257116989189767` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168051 has offset 0).

The definition of A168051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168051.P12976270876518190361

`A292440(n)+char[1]`
-/

namespace A168051.P12976270876518190361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292440 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A168051.P12976270876518190361

namespace A168051

/-- `A292440(n)+char[1]` -/
def P12976270876518190361.Spec : Prop :=
  ∀ n, P12976270876518190361.a n = A168051 n

end A168051

/-! ## A168051.P13701750862136872699

`floor(acot(n)²-A168049(n))`
-/

namespace A168051.P13701750862136872699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) ^ 2 - (A168049 n : ℝ)⌋

end

end A168051.P13701750862136872699

namespace A168051

/-- `floor(acot(n)²-A168049(n))` -/
def P13701750862136872699.Spec : Prop :=
  ∀ n, P13701750862136872699.a n = A168051 n

end A168051

/-! ## A168051.P17240348547053300557

`char[1-n²]-A086246(n)`
-/

namespace A168051.P17240348547053300557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A086246 n

end

end A168051.P17240348547053300557

namespace A168051

/-- `char[1-n²]-A086246(n)` -/
def P17240348547053300557.Spec : Prop :=
  ∀ n, P17240348547053300557.a n = A168051 n

end A168051

/-! ## A168051.P12367257116989189767

`A000038(n)-A168049(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A168051

/-- `A000038(n)-A168049(n)` -/
def P12367257116989189767.Spec : Prop :=
  ∀ n, P12367257116989189767.a n = A168051 n

theorem P12367257116989189767.correct : P12367257116989189767.Spec := by
  intro n
  simp only [A168051]

end A168051

/-! ## A168051.P7460808223274061611

`A060576(n)*A292440(n)`
-/

namespace A168051.P7460808223274061611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A292440 n

end

end A168051.P7460808223274061611

namespace A168051

/-- `A060576(n)*A292440(n)` -/
def P7460808223274061611.Spec : Prop :=
  ∀ n, P7460808223274061611.a n = A168051 n

end A168051

/-! ## A168051.P17518146662743075250

`A168049(n)*A260196(n)`
-/

namespace A168051.P17518146662743075250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 n * A260196 n

end

end A168051.P17518146662743075250

namespace A168051

/-- `A168049(n)*A260196(n)` -/
def P17518146662743075250.Spec : Prop :=
  ∀ n, P17518146662743075250.a n = A168051 n

end A168051

/-! ## A168051.P16286557724802655362

`xor(A159075(n), A292440(n))`
-/

namespace A168051.P16286557724802655362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A159075 n) (A292440 n)

end

end A168051.P16286557724802655362

namespace A168051

/-- `xor(A159075(n), A292440(n))` -/
def P16286557724802655362.Spec : Prop :=
  ∀ n, P16286557724802655362.a n = A168051 n

end A168051

/-! ## A168051.P2368834459166176123

`A105812(n)²*A292440(n)`
-/

namespace A168051.P2368834459166176123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 n ^ 2 * A292440 n

end

end A168051.P2368834459166176123

namespace A168051

/-- `A105812(n)²*A292440(n)` -/
def P2368834459166176123.Spec : Prop :=
  ∀ n, P2368834459166176123.a n = A168051 n

end A168051

/-! ## A168051.P17401883425788011282

`char[A018837(n)]*A292440(n)`
-/

namespace A168051.P17401883425788011282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018837 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A292440 n

end

end A168051.P17401883425788011282

namespace A168051

/-- `char[A018837(n)]*A292440(n)` -/
def P17401883425788011282.Spec : Prop :=
  ∀ n, P17401883425788011282.a n = A168051 n

end A168051

/-! ## A168051.P7334702926296394029

`char[A099801(n)]*A292440(n)`
-/

namespace A168051.P7334702926296394029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A292440 n

end

end A168051.P7334702926296394029

namespace A168051

/-- `char[A099801(n)]*A292440(n)` -/
def P7334702926296394029.Spec : Prop :=
  ∀ n, P7334702926296394029.a n = A168051 n

end A168051

/-! ## A168051.P11489821659351868537

`char[A165754(n)]*A292440(n)`
-/

namespace A168051.P11489821659351868537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165754 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A292440 n

end

end A168051.P11489821659351868537

namespace A168051

/-- `char[A165754(n)]*A292440(n)` -/
def P11489821659351868537.Spec : Prop :=
  ∀ n, P11489821659351868537.a n = A168051 n

end A168051

/-! ## A168051.P15260976809470699019

`A153881(n+1)*A168049(n)`
-/

namespace A168051.P15260976809470699019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) * A168049 n

end

end A168051.P15260976809470699019

namespace A168051

/-- `A153881(n+1)*A168049(n)` -/
def P15260976809470699019.Spec : Prop :=
  ∀ n, P15260976809470699019.a n = A168051 n

end A168051

/-! ## A168051.P2531768331468623227

`(1-A063524(n))*A292440(n)`
-/

namespace A168051.P2531768331468623227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A063524 n) * A292440 n

end

end A168051.P2531768331468623227

namespace A168051

/-- `(1-A063524(n))*A292440(n)` -/
def P2531768331468623227.Spec : Prop :=
  ∀ n, P2531768331468623227.a n = A168051 n

end A168051

/-! ## A168051.P15070965148435743112

`(2-A122553(n))*A168049(n)`
-/

namespace A168051.P15070965148435743112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A122553 n) * A168049 n

end

end A168051.P15070965148435743112

namespace A168051

/-- `(2-A122553(n))*A168049(n)` -/
def P15070965148435743112.Spec : Prop :=
  ∀ n, P15070965148435743112.a n = A168051 n

end A168051

/-! ## A168051.P11614182665984488475

`(2-A158799(n))*A168049(n)`
-/

namespace A168051.P11614182665984488475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A158799 n) * A168049 n

end

end A168051.P11614182665984488475

namespace A168051

/-- `(2-A158799(n))*A168049(n)` -/
def P11614182665984488475.Spec : Prop :=
  ∀ n, P11614182665984488475.a n = A168051 n

end A168051

/-! ## A168051.P17683151558511505565

`A057427(A028242(n))*A292440(n)`
-/

namespace A168051.P17683151558511505565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A028242 n).toNat * A292440 n

end

end A168051.P17683151558511505565

namespace A168051

/-- `A057427(A028242(n))*A292440(n)` -/
def P17683151558511505565.Spec : Prop :=
  ∀ n, P17683151558511505565.a n = A168051 n

end A168051

/-! ## A168051.P17489572796210353308

`A057427(A057979(n))*A292440(n)`
-/

namespace A168051.P17489572796210353308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A057979 n).toNat * A292440 n

end

end A168051.P17489572796210353308

namespace A168051

/-- `A057427(A057979(n))*A292440(n)` -/
def P17489572796210353308.Spec : Prop :=
  ∀ n, P17489572796210353308.a n = A168051 n

end A168051

/-! ## A168051.P4698885237173509114

`A168049(n)/A292440(n)*A168049(n)`
-/

namespace A168051.P4698885237173509114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168049 n : ℚ) / (A292440 n : ℚ) * (A168049 n : ℚ)

end

end A168051.P4698885237173509114

namespace A168051

/-- `A168049(n)/A292440(n)*A168049(n)` -/
def P4698885237173509114.Spec : Prop :=
  ∀ n, P4698885237173509114.a n = (A168051 n : ℚ)

end A168051

/-! ## A168051.P9688297427832643112

`round(A168058(n)/2)`
-/

namespace A168051.P9688297427832643112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A168058 n : ℚ) / 2)

end

end A168051.P9688297427832643112

namespace A168051

/-- `round(A168058(n)/2)` -/
def P9688297427832643112.Spec : Prop :=
  ∀ n, P9688297427832643112.a n = A168051 n

end A168051

/-!
# A168052: Hankel transform of a Motzkin variant.

The programs for A168052, the canonical program `A168052.P6691970129694865005` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168052 has offset 0).

The definition of A168052 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168052.P6691970129694865005

`A010892(n)/3+2*(-1)^n*(n+1)/3`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A168052

/-- `A010892(n)/3+2*(-1)^n*(n+1)/3` -/
def P6691970129694865005.Spec : Prop :=
  ∀ n, P6691970129694865005.a n = (A168052 n : ℚ)

end A168052

/-! ## A168052.P18108973658214751374

`∑[(-1)^n*comp[4*n]]`
-/

namespace A168052.P18108973658214751374
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168052.P18108973658214751374

namespace A168052

/-- `∑[(-1)^n*comp[4*n]]` -/
def P18108973658214751374.Spec : Prop :=
  ∀ n, P18108973658214751374.a n = A168052 n

end A168052

/-! ## A168052.P9000130433015783071

`ogf((1+x^2)/(1+x+x^3+x^4))`
-/

namespace A168052.P9000130433015783071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, 1, 0, 1, 1] n

end

end A168052.P9000130433015783071

namespace A168052

/-- `ogf((1+x^2)/(1+x+x^3+x^4))` -/
def P9000130433015783071.Spec : Prop :=
  ∀ n, P9000130433015783071.a n = A168052 n

end A168052

/-! ## A168052.P5465164063466149691

`2*(-1)^n-a(n-3)` with `a(0)=1, a(1)=-1, a(2)=2`
-/

namespace A168052.P5465164063466149691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2] fun n a =>
  2 * (-1) ^ n - a (n - 3)

end

end A168052.P5465164063466149691

namespace A168052

/-- `2*(-1)^n-a(n-3)` -/
def P5465164063466149691.Spec : Prop :=
  ∀ n, P5465164063466149691.a n = A168052 n

end A168052

/-! ## A168052.P6174414675547281550

`Δ[2*and(1, n)-a(n-3)]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A168052.P6174414675547281550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  (2 * Nat.land 1 n : ℤ) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168052.P6174414675547281550

namespace A168052

/-- `Δ[2*and(1, n)-a(n-3)]` -/
def P6174414675547281550.Spec : Prop :=
  ∀ n, P6174414675547281550.a n = A168052 n

end A168052

/-! ## A168052.P9797965106199582140

`∑[floor(a(n-3))]/(-1)^(n+1)` with `a(0)=-1, a(1)=0, a(2)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A168052.P9797965106199582140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0, -1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((-1) ^ (n + 1) : ℚ)

end

end A168052.P9797965106199582140

namespace A168052

/-- `∑[floor(a(n-3))]/(-1)^(n+1)` -/
def P9797965106199582140.Spec : Prop :=
  ∀ n, P9797965106199582140.a n = (A168052 n : ℚ)

end A168052

/-! ## A168052.P15477025826479993621

`(abs(∑[char[A016777(n)]]-n)+1)*(-1)^n`
-/

namespace A168052.P15477025826479993621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (|((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)| + 1) * (-1) ^ n

end

end A168052.P15477025826479993621

namespace A168052

/-- `(abs(∑[char[A016777(n)]]-n)+1)*(-1)^n` -/
def P15477025826479993621.Spec : Prop :=
  ∀ n, P15477025826479993621.a n = A168052 n

end A168052

/-! ## A168052.P1611868430753258338

`A187035(n)+A130472(n)`
-/

namespace A168052.P1611868430753258338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187035 n + A130472 n

end

end A168052.P1611868430753258338

namespace A168052

/-- `A187035(n)+A130472(n)` -/
def P1611868430753258338.Spec : Prop :=
  ∀ n, P1611868430753258338.a n = A168052 n

end A168052

/-! ## A168052.P12089725302736255010

`A187035(n)-A001057(n)`
-/

namespace A168052.P12089725302736255010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187035 n - A001057 n

end

end A168052.P12089725302736255010

namespace A168052

/-- `A187035(n)-A001057(n)` -/
def P12089725302736255010.Spec : Prop :=
  ∀ n, P12089725302736255010.a n = A168052 n

end A168052

/-! ## A168052.P15100653077220790722

`A136289(n)/A174971(n)`
-/

namespace A168052.P15100653077220790722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136289 n : ℚ) / (A174971 n : ℚ)

end

end A168052.P15100653077220790722

namespace A168052

/-- `A136289(n)/A174971(n)` -/
def P15100653077220790722.Spec : Prop :=
  ∀ n, P15100653077220790722.a n = (A168052 n : ℚ)

end A168052

/-! ## A168052.P11844816426791264699

`A004396(n+1)*A033999(n)`
-/

namespace A168052.P11844816426791264699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (n + 1) * A033999 n

end

end A168052.P11844816426791264699

namespace A168052

/-- `A004396(n+1)*A033999(n)` -/
def P11844816426791264699.Spec : Prop :=
  ∀ n, P11844816426791264699.a n = A168052 n

end A168052

/-! ## A168052.P17289499370409160749

`∑[A260190(n)²]*A033999(n)`
-/

namespace A168052.P17289499370409160749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260190 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A168052.P17289499370409160749

namespace A168052

/-- `∑[A260190(n)²]*A033999(n)` -/
def P17289499370409160749.Spec : Prop :=
  ∀ n, P17289499370409160749.a n = A168052 n

end A168052

/-! ## A168052.P5248704698164686198

`A004396(n+1)*A009001(2*n)`
-/

namespace A168052.P5248704698164686198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (n + 1) * A009001 (2 * n)

end

end A168052.P5248704698164686198

namespace A168052

/-- `A004396(n+1)*A009001(2*n)` -/
def P5248704698164686198.Spec : Prop :=
  ∀ n, P5248704698164686198.a n = A168052 n

end A168052

/-! ## A168052.P12856204824981197755

`A001057(A008611(n))-A001057(n)`
-/

namespace A168052.P12856204824981197755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A008611 n).toNat - A001057 n

end

end A168052.P12856204824981197755

namespace A168052

/-- `A001057(A008611(n))-A001057(n)` -/
def P12856204824981197755.Spec : Prop :=
  ∀ n, P12856204824981197755.a n = A168052 n

end A168052

/-! ## A168052.P14514051233948325509

`A033999(n)-Δ[A002264(n)*A033999(n)]`
-/

namespace A168052.P14514051233948325509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n - (f1 (n + 1) - f1 n)

end

end A168052.P14514051233948325509

namespace A168052

/-- `A033999(n)-Δ[A002264(n)*A033999(n)]` -/
def P14514051233948325509.Spec : Prop :=
  ∀ n, P14514051233948325509.a n = A168052 n

end A168052

/-! ## A168052.P2203825448822361275

`A004396(n+1)*A008620(n)/A104581(n)`
-/

namespace A168052.P2203825448822361275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004396 (n + 1) * A008620 n : ℚ) / (A104581 n : ℚ)

end

end A168052.P2203825448822361275

namespace A168052

/-- `A004396(n+1)*A008620(n)/A104581(n)` -/
def P2203825448822361275.Spec : Prop :=
  ∀ n, P2203825448822361275.a n = (A168052 n : ℚ)

end A168052

/-! ## A168052.P13833032214507316025

`A057078(n)*A110665(n+1)-A076118(n)`
-/

namespace A168052.P13833032214507316025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 n * A110665 (n + 1) - A076118 n

end

end A168052.P13833032214507316025

namespace A168052

/-- `A057078(n)*A110665(n+1)-A076118(n)` -/
def P13833032214507316025.Spec : Prop :=
  ∀ n, P13833032214507316025.a n = A168052 n

end A168052

/-! ## A168052.P10730085741000987533

`(A000035(n+1)-A000035(n))*A004396(n+1)`
-/

namespace A168052.P10730085741000987533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 (n + 1) - A000035 n) * A004396 (n + 1)

end

end A168052.P10730085741000987533

namespace A168052

/-- `(A000035(n+1)-A000035(n))*A004396(n+1)` -/
def P10730085741000987533.Spec : Prop :=
  ∀ n, P10730085741000987533.a n = A168052 n

end A168052

/-! ## A168052.P7621639347730428732

`A099254(2*n)/A057079(n+2)`
-/

namespace A168052.P7621639347730428732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099254 (2 * n) : ℚ) / (A057079 (n + 2) : ℚ)

end

end A168052.P7621639347730428732

namespace A168052

/-- `A099254(2*n)/A057079(n+2)` -/
def P7621639347730428732.Spec : Prop :=
  ∀ n, P7621639347730428732.a n = (A168052 n : ℚ)

end A168052

/-! ## A168052.P7304946071881573816

`A008620(2*n)*A033999(n)`
-/

namespace A168052.P7304946071881573816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (2 * n) * A033999 n

end

end A168052.P7304946071881573816

namespace A168052

/-- `A008620(2*n)*A033999(n)` -/
def P7304946071881573816.Spec : Prop :=
  ∀ n, P7304946071881573816.a n = A168052 n

end A168052

/-!
# A168053: Expansion of (1-2*x^2-3*x^3)/((1-x)^2*(1+x+x^2)).

The programs for A168053, the canonical program `A168053.P1091759261954838925` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168053 has offset 0).

The definition of A168053 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x^2-3x^3)/(1-x-x^3+x^4))` (program `A168053.P1091759261954838925`, by `A168053.P1091759261954838925.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168053.P1091759261954838925

`ogf((1-2x^2-3x^3)/(1-x-x^3+x^4))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168053

/-- `ogf((1-2x^2-3x^3)/(1-x-x^3+x^4))` -/
def P1091759261954838925.Spec : Prop :=
  ∀ n, P1091759261954838925.a n = A168053 n

theorem P1091759261954838925.correct : P1091759261954838925.Spec := by
  intro n
  simp only [A168053]

end A168053

/-! ## A168053.P234289892942954772

`A168054(n)/2^n`
-/

namespace A168053.P234289892942954772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168054 n : ℚ) / (2 ^ n : ℚ)

end

end A168053.P234289892942954772

namespace A168053

/-- `A168054(n)/2^n` -/
def P234289892942954772.Spec : Prop :=
  ∀ n, P234289892942954772.a n = (A168053 n : ℚ)

end A168053

/-! ## A168053.P5360139351346265071

`∑[(1-∑[n])%3]`
-/

namespace A168053.P5360139351346265071
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168053.P5360139351346265071

namespace A168053

/-- `∑[(1-∑[n])%3]` -/
def P5360139351346265071.Spec : Prop :=
  ∀ n, P5360139351346265071.a n = A168053 n

end A168053

/-! ## A168053.P9353433537882576783

`or(1, 2-comp[4*n])`
-/

namespace A168053.P9353433537882576783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ))

end

end A168053.P9353433537882576783

namespace A168053

/-- `or(1, 2-comp[4*n])` -/
def P9353433537882576783.Spec : Prop :=
  ∀ n, P9353433537882576783.a n = A168053 n

end A168053

/-! ## A168053.P6046827027634353047

`2-or(1, comp[or(3, n)])`
-/

namespace A168053.P6046827027634353047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ)

end

end A168053.P6046827027634353047

namespace A168053

/-- `2-or(1, comp[or(3, n)])` -/
def P6046827027634353047.Spec : Prop :=
  ∀ n, P6046827027634353047.a n = A168053 n

end A168053

/-! ## A168053.P18428625455002563151

`∑[1-sqrt(dr(∑[n]²))]`
-/

namespace A168053.P18428625455002563151
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 - Real.sqrt (SequenceMachineLib.digitalRoot (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168053.P18428625455002563151

namespace A168053

/-- `∑[1-sqrt(dr(∑[n]²))]` -/
def P18428625455002563151.Spec : Prop :=
  ∀ n, P18428625455002563151.a n = (A168053 n : ℝ)

end A168053

/-! ## A168053.P3146650430762684968

`a(n-3)-4` with `a(0)=1, a(1)=1, a(2)=-1`
-/

namespace A168053.P3146650430762684968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1] fun n a =>
  a (n - 3) - 4

end

end A168053.P3146650430762684968

namespace A168053

/-- `a(n-3)-4` -/
def P3146650430762684968.Spec : Prop :=
  ∀ n, P3146650430762684968.a n = A168053 n

end A168053

/-! ## A168053.P13208826416930249582

`1-2*floor(2*n/3)`
-/

namespace A168053.P13208826416930249582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * ⌊2 * ((n : ℚ) / 3)⌋

end

end A168053.P13208826416930249582

namespace A168053

/-- `1-2*floor(2*n/3)` -/
def P13208826416930249582.Spec : Prop :=
  ∀ n, P13208826416930249582.a n = A168053 n

end A168053

/-! ## A168053.P18278011274194026454

`A165747(A004523(n))`
-/

namespace A168053.P18278011274194026454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165747 (A004523 n).toNat

end

end A168053.P18278011274194026454

namespace A168053

/-- `A165747(A004523(n))` -/
def P18278011274194026454.Spec : Prop :=
  ∀ n, P18278011274194026454.a n = A168053 n

end A168053

/-! ## A168053.P3587629050931038538

`A022958(A168056(n))`
-/

namespace A168053.P3587629050931038538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (A168056 n).toNat

end

end A168053.P3587629050931038538

namespace A168053

/-- `A022958(A168056(n))` -/
def P3587629050931038538.Spec : Prop :=
  ∀ n, P3587629050931038538.a n = A168053 n

end A168053

/-! ## A168053.P564123395094513133

`A024000(2*A004523(n))`
-/

namespace A168053.P564123395094513133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (2 * A004523 n).toNat

end

end A168053.P564123395094513133

namespace A168053

/-- `A024000(2*A004523(n))` -/
def P564123395094513133.Spec : Prop :=
  ∀ n, P564123395094513133.a n = A168053 n

end A168053

/-! ## A168053.P10351124268008091783

`A022960(A222657(n+1))`
-/

namespace A168053.P10351124268008091783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022960 (A222657 (n + 1)).toNat

end

end A168053.P10351124268008091783

namespace A168053

/-- `A022960(A222657(n+1))` -/
def P10351124268008091783.Spec : Prop :=
  ∀ n, P10351124268008091783.a n = A168053 n

end A168053

/-! ## A168053.P9366193321299462117

`A022961(A273308(n+2))`
-/

namespace A168053.P9366193321299462117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022961 (A273308 (n + 2)).toNat

end

end A168053.P9366193321299462117

namespace A168053

/-- `A022961(A273308(n+2))` -/
def P9366193321299462117.Spec : Prop :=
  ∀ n, P9366193321299462117.a n = A168053 n

end A168053

/-! ## A168053.P10396338968970230868

`A165747(A002264(2*n))`
-/

namespace A168053.P10396338968970230868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165747 (A002264 (2 * n)).toNat

end

end A168053.P10396338968970230868

namespace A168053

/-- `A165747(A002264(2*n))` -/
def P10396338968970230868.Spec : Prop :=
  ∀ n, P10396338968970230868.a n = A168053 n

end A168053

/-! ## A168053.P14433623580463354027

`(2*n+3-A047360(2*n+1))/2`
-/

namespace A168053.P14433623580463354027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3 : ℤ) - A047360 (2 * n + 1) : ℚ) / 2

end

end A168053.P14433623580463354027

namespace A168053

/-- `(2*n+3-A047360(2*n+1))/2` -/
def P14433623580463354027.Spec : Prop :=
  ∀ n, P14433623580463354027.a n = (A168053 n : ℚ)

end A168053

/-! ## A168053.P7950135655851737377

`Δ[Δ[A000969(2*n)]-A000969(n+1)]`
-/

namespace A168053.P7950135655851737377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000969 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168053.P7950135655851737377

namespace A168053

/-- `Δ[Δ[A000969(2*n)]-A000969(n+1)]` -/
def P7950135655851737377.Spec : Prop :=
  ∀ n, P7950135655851737377.a n = A168053 n

end A168053

/-! ## A168053.P14623052614660280122

`Δ[Δ[A058212(2*n+1)]-A058212(2*n)]`
-/

namespace A168053.P14623052614660280122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058212 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A058212 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168053.P14623052614660280122

namespace A168053

/-- `Δ[Δ[A058212(2*n+1)]-A058212(2*n)]` -/
def P14623052614660280122.Spec : Prop :=
  ∀ n, P14623052614660280122.a n = A168053 n

end A168053

/-! ## A168053.P15261893807865695248

`Δ[Δ[A058937(2*n+1)]-A058937(2*(n+1))]`
-/

namespace A168053.P15261893807865695248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058937 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A058937 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168053.P15261893807865695248

namespace A168053

/-- `Δ[Δ[A058937(2*n+1)]-A058937(2*(n+1))]` -/
def P15261893807865695248.Spec : Prop :=
  ∀ n, P15261893807865695248.a n = A168053 n

end A168053

/-! ## A168053.P6857958635772804606

`1/A000079(n)*A168054(n)`
-/

namespace A168053.P6857958635772804606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A000079 n : ℚ) * (A168054 n : ℚ)

end

end A168053.P6857958635772804606

namespace A168053

/-- `1/A000079(n)*A168054(n)` -/
def P6857958635772804606.Spec : Prop :=
  ∀ n, P6857958635772804606.a n = (A168053 n : ℚ)

end A168053

/-! ## A168053.P1864560442289750548

`A168054(n)/A168057(n)*A168056(n)`
-/

namespace A168053.P1864560442289750548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168054 n : ℚ) / (A168057 n : ℚ) * (A168056 n : ℚ)

end

end A168053.P1864560442289750548

namespace A168053

/-- `A168054(n)/A168057(n)*A168056(n)` -/
def P1864560442289750548.Spec : Prop :=
  ∀ n, P1864560442289750548.a n = (A168053 n : ℚ)

end A168053

/-!
# A168054: Expansion of (1-8x^2-24x^3)/((1-2x)^2*(1+2x+4x^2)).

The programs for A168054, the canonical program `A168054.P249591279490204950` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168054 has offset 0).

The definition of A168054 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-8x^2-24x^3)/(1-2x-8x^3+16x^4))` (program `A168054.P249591279490204950`, by `A168054.P249591279490204950.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168054.P15537029692245611460

`2^n*A168053(n)`
-/

namespace A168054.P15537029692245611460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A168053 n

end

end A168054.P15537029692245611460

namespace A168054

/-- `2^n*A168053(n)` -/
def P15537029692245611460.Spec : Prop :=
  ∀ n, P15537029692245611460.a n = A168054 n

end A168054

/-! ## A168054.P3595383496731256330

`2*a(n-1)+8*a(n-3)-16*a(n-4)` with `a(0)=1, a(1)=2, a(2)=-4, a(3)=-24`
-/

namespace A168054.P3595383496731256330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, -4, -24] fun n a =>
  2 * a (n - 1) + 8 * a (n - 3) - 16 * a (n - 4)

end

end A168054.P3595383496731256330

namespace A168054

/-- `2*a(n-1)+8*a(n-3)-16*a(n-4)` -/
def P3595383496731256330.Spec : Prop :=
  ∀ n, P3595383496731256330.a n = A168054 n

end A168054

/-! ## A168054.P249591279490204950

`ogf((1-8x^2-24x^3)/(1-2x-8x^3+16x^4))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168054

/-- `ogf((1-8x^2-24x^3)/(1-2x-8x^3+16x^4))` -/
def P249591279490204950.Spec : Prop :=
  ∀ n, P249591279490204950.a n = A168054 n

theorem P249591279490204950.correct : P249591279490204950.Spec := by
  intro n
  simp only [A168054]

end A168054

/-! ## A168054.P1939419012227070617

`2^(n+1)-A168057(n)`
-/

namespace A168054.P1939419012227070617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A168057 n

end

end A168054.P1939419012227070617

namespace A168054

/-- `2^(n+1)-A168057(n)` -/
def P1939419012227070617.Spec : Prop :=
  ∀ n, P1939419012227070617.a n = A168054 n

end A168054

/-! ## A168054.P13599339603384605716

`(2-A168056(n))*A000079(n)`
-/

namespace A168054.P13599339603384605716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A168056 n) * A000079 n

end

end A168054.P13599339603384605716

namespace A168054

/-- `(2-A168056(n))*A000079(n)` -/
def P13599339603384605716.Spec : Prop :=
  ∀ n, P13599339603384605716.a n = A168054 n

end A168054

/-! ## A168054.P2514029603898495074

`(2-A008611(4*n))*A016116(2*n)`
-/

namespace A168054.P2514029603898495074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A008611 (4 * n)) * A016116 (2 * n)

end

end A168054.P2514029603898495074

namespace A168054

/-- `(2-A008611(4*n))*A016116(2*n)` -/
def P2514029603898495074.Spec : Prop :=
  ∀ n, P2514029603898495074.a n = A168054 n

end A168054

/-! ## A168054.P2333035915181651201

`(2-A008611(4*n))*A060546(2*n)`
-/

namespace A168054.P2333035915181651201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A008611 (4 * n)) * A060546 (2 * n)

end

end A168054.P2333035915181651201

namespace A168054

/-- `(2-A008611(4*n))*A060546(2*n)` -/
def P2333035915181651201.Spec : Prop :=
  ∀ n, P2333035915181651201.a n = A168054 n

end A168054

/-! ## A168054.P8194504807671458273

`(2-A008611(4*n))*A106624(2*n)`
-/

namespace A168054.P8194504807671458273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A008611 (4 * n)) * A106624 (2 * n)

end

end A168054.P8194504807671458273

namespace A168054

/-- `(2-A008611(4*n))*A106624(2*n)` -/
def P8194504807671458273.Spec : Prop :=
  ∀ n, P8194504807671458273.a n = A168054 n

end A168054

/-! ## A168054.P3960543183161698186

`(2-A008611(4*n))*A143095(2*n)`
-/

namespace A168054.P3960543183161698186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A008611 (4 * n)) * A143095 (2 * n)

end

end A168054.P3960543183161698186

namespace A168054

/-- `(2-A008611(4*n))*A143095(2*n)` -/
def P3960543183161698186.Spec : Prop :=
  ∀ n, P3960543183161698186.a n = A168054 n

end A168054

/-! ## A168054.P11846398155403829620

`(A302402(n)-2*n+1)*A000079(n)`
-/

namespace A168054.P11846398155403829620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A302402 n - (2 * n : ℤ) + 1) * A000079 n

end

end A168054.P11846398155403829620

namespace A168054

/-- `(A302402(n)-2*n+1)*A000079(n)` -/
def P11846398155403829620.Spec : Prop :=
  ∀ n, P11846398155403829620.a n = A168054 n

end A168054

/-! ## A168054.P17308628564577789432

`(2-A008611(4*n))*A164587(2*n+1)`
-/

namespace A168054.P17308628564577789432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A008611 (4 * n)) * A164587 (2 * n + 1)

end

end A168054.P17308628564577789432

namespace A168054

/-- `(2-A008611(4*n))*A164587(2*n+1)` -/
def P17308628564577789432.Spec : Prop :=
  ∀ n, P17308628564577789432.a n = A168054 n

end A168054

/-! ## A168054.P3533821383054769783

`A000079(n)*A024000(2*A004523(n))`
-/

namespace A168054.P3533821383054769783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A024000 (2 * A004523 n).toNat

end

end A168054.P3533821383054769783

namespace A168054

/-- `A000079(n)*A024000(2*A004523(n))` -/
def P3533821383054769783.Spec : Prop :=
  ∀ n, P3533821383054769783.a n = A168054 n

end A168054

/-! ## A168054.P16292115293352198078

`A168053(n)/A168056(n)*A168057(n)`
-/

namespace A168054.P16292115293352198078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168053 n : ℚ) / (A168056 n : ℚ) * (A168057 n : ℚ)

end

end A168054.P16292115293352198078

namespace A168054

/-- `A168053(n)/A168056(n)*A168057(n)` -/
def P16292115293352198078.Spec : Prop :=
  ∀ n, P16292115293352198078.a n = (A168054 n : ℚ)

end A168054

/-! ## A168054.P11833604525173841036

`A000079(n)-A000079(n+1)*A004523(n)`
-/

namespace A168054.P11833604525173841036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A000079 (n + 1) * A004523 n

end

end A168054.P11833604525173841036

namespace A168054

/-- `A000079(n)-A000079(n+1)*A004523(n)` -/
def P11833604525173841036.Spec : Prop :=
  ∀ n, P11833604525173841036.a n = A168054 n

end A168054

/-! ## A168054.P6161237895624198984

`A060546(2*n)-A002264(2*n)*A060546(2*(n+1))`
-/

namespace A168054.P6161237895624198984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (2 * n) - A002264 (2 * n) * A060546 (2 * (n + 1))

end

end A168054.P6161237895624198984

namespace A168054

/-- `A060546(2*n)-A002264(2*n)*A060546(2*(n+1))` -/
def P6161237895624198984.Spec : Prop :=
  ∀ n, P6161237895624198984.a n = A168054 n

end A168054

/-! ## A168054.P12031576479460918908

`A168053(n)*A258439(2*n+1)`
-/

namespace A168054.P12031576479460918908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168053 n * A258439 (2 * n + 1)

end

end A168054.P12031576479460918908

namespace A168054

/-- `A168053(n)*A258439(2*n+1)` -/
def P12031576479460918908.Spec : Prop :=
  ∀ n, P12031576479460918908.a n = A168054 n

end A168054

/-!
# A168055: Expansion of 2 - x - sqrt(1-2x-3x^2).

The programs for A168055, the canonical program `A168055.P15791623395348376297` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168055 has offset 0).

The definition of A168055 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168055.P9311454336184768670

`abs(A168058(n))`
-/

namespace A168055.P9311454336184768670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168058 n|

end

end A168055.P9311454336184768670

namespace A168055

/-- `abs(A168058(n))` -/
def P9311454336184768670.Spec : Prop :=
  ∀ n, P9311454336184768670.a n = A168055 n

end A168055

/-! ## A168055.P123055312965662098

`ceil(cosh(sin(n)))*A168049(n)`
-/

namespace A168055.P123055312965662098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ * A168049 n

end

end A168055.P123055312965662098

namespace A168055

/-- `ceil(cosh(sin(n)))*A168049(n)` -/
def P123055312965662098.Spec : Prop :=
  ∀ n, P123055312965662098.a n = A168055 n

end A168055

/-! ## A168055.P7894921854041732109

`xor(char[1-n^8], A007971(n))`
-/

namespace A168055.P7894921854041732109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 8 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A007971 n)

end

end A168055.P7894921854041732109

namespace A168055

/-- `xor(char[1-n^8], A007971(n))` -/
def P7894921854041732109.Spec : Prop :=
  ∀ n, P7894921854041732109.a n = A168055 n

end A168055

/-! ## A168055.P16592107337838546752

`xor(1, 1-A168058(n%(n+1)))`
-/

namespace A168055.P16592107337838546752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (1 - A168058 (n % (n + 1)))

end

end A168055.P16592107337838546752

namespace A168055

/-- `xor(1, 1-A168058(n%(n+1)))` -/
def P16592107337838546752.Spec : Prop :=
  ∀ n, P16592107337838546752.a n = A168055 n

end A168055

/-! ## A168055.P6246391073171428412

`A126068(n)+A000007(n)`
-/

namespace A168055.P6246391073171428412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126068 n + A000007 n

end

end A168055.P6246391073171428412

namespace A168055

/-- `A126068(n)+A000007(n)` -/
def P6246391073171428412.Spec : Prop :=
  ∀ n, P6246391073171428412.a n = A168055 n

end A168055

/-! ## A168055.P15470847151430611687

`A000038(n)-A168058(n)`
-/

namespace A168055.P15470847151430611687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A168058 n

end

end A168055.P15470847151430611687

namespace A168055

/-- `A000038(n)-A168058(n)` -/
def P15470847151430611687.Spec : Prop :=
  ∀ n, P15470847151430611687.a n = A168055 n

end A168055

/-! ## A168055.P2148010628680562535

`lcm(A000034(n), A168058(n))`
-/

namespace A168055.P2148010628680562535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A168058 n)

end

end A168055.P2148010628680562535

namespace A168055

/-- `lcm(A000034(n), A168058(n))` -/
def P2148010628680562535.Spec : Prop :=
  ∀ n, (P2148010628680562535.a n : ℤ) = A168055 n

end A168055

/-! ## A168055.P10428262872787034348

`lcm(A081729(n), A167022(n))`
-/

namespace A168055.P10428262872787034348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A081729 n) (A167022 n)

end

end A168055.P10428262872787034348

namespace A168055

/-- `lcm(A081729(n), A167022(n))` -/
def P10428262872787034348.Spec : Prop :=
  ∀ n, (P10428262872787034348.a n : ℤ) = A168055 n

end A168055

/-! ## A168055.P7055955539434575715

`A007971(A154955(n+1)+n)`
-/

namespace A168055.P7055955539434575715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007971 (A154955 (n + 1) + (n : ℤ)).toNat

end

end A168055.P7055955539434575715

namespace A168055

/-- `A007971(A154955(n+1)+n)` -/
def P7055955539434575715.Spec : Prop :=
  ∀ n, P7055955539434575715.a n = A168055 n

end A168055

/-! ## A168055.P11375940508018483138

`A126068(n)+A063524(n+1)`
-/

namespace A168055.P11375940508018483138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126068 n + A063524 (n + 1)

end

end A168055.P11375940508018483138

namespace A168055

/-- `A126068(n)+A063524(n+1)` -/
def P11375940508018483138.Spec : Prop :=
  ∀ n, P11375940508018483138.a n = A168055 n

end A168055

/-! ## A168055.P15791623395348376297

`A036453(n+1)*A168049(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A168055

/-- `A036453(n+1)*A168049(n)` -/
def P15791623395348376297.Spec : Prop :=
  ∀ n, P15791623395348376297.a n = A168055 n

theorem P15791623395348376297.correct : P15791623395348376297.Spec := by
  intro n
  simp only [A168055]

end A168055

/-! ## A168055.P8330810245918211946

`A126068(n)-A154955(n+2)`
-/

namespace A168055.P8330810245918211946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126068 n - A154955 (n + 2)

end

end A168055.P8330810245918211946

namespace A168055

/-- `A126068(n)-A154955(n+2)` -/
def P8330810245918211946.Spec : Prop :=
  ∀ n, P8330810245918211946.a n = A168055 n

end A168055

/-! ## A168055.P18439170250997287245

`A168058(n)+2*A126068(n)`
-/

namespace A168055.P18439170250997287245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168058 n + 2 * A126068 n

end

end A168055.P18439170250997287245

namespace A168055

/-- `A168058(n)+2*A126068(n)` -/
def P18439170250997287245.Spec : Prop :=
  ∀ n, P18439170250997287245.a n = A168055 n

end A168055

/-! ## A168055.P18398910140546812962

`2*A000007(n)-A168058(n)`
-/

namespace A168055.P18398910140546812962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n - A168058 n

end

end A168055.P18398910140546812962

namespace A168055

/-- `2*A000007(n)-A168058(n)` -/
def P18398910140546812962.Spec : Prop :=
  ∀ n, P18398910140546812962.a n = A168055 n

end A168055

/-! ## A168055.P4659320850050105039

`A168049(n)+A126068(n)/2`
-/

namespace A168055.P4659320850050105039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168049 n : ℚ) + (A126068 n : ℚ) / 2

end

end A168055.P4659320850050105039

namespace A168055

/-- `A168049(n)+A126068(n)/2` -/
def P4659320850050105039.Spec : Prop :=
  ∀ n, P4659320850050105039.a n = (A168055 n : ℚ)

end A168055

/-! ## A168055.P1043814870795140745

`(A168073(n)+A168049(n))/2`
-/

namespace A168055.P1043814870795140745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168073 n + A168049 n : ℚ) / 2

end

end A168055.P1043814870795140745

namespace A168055

/-- `(A168073(n)+A168049(n))/2` -/
def P1043814870795140745.Spec : Prop :=
  ∀ n, P1043814870795140745.a n = (A168055 n : ℚ)

end A168055

/-! ## A168055.P31258665284309745

`A168073(n)-A126068(n)/2`
-/

namespace A168055.P31258665284309745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168073 n : ℚ) - (A126068 n : ℚ) / 2

end

end A168055.P31258665284309745

namespace A168055

/-- `A168073(n)-A126068(n)/2` -/
def P31258665284309745.Spec : Prop :=
  ∀ n, P31258665284309745.a n = (A168055 n : ℚ)

end A168055

/-! ## A168055.P17953448466808894002

`and(A007971(n)+1, A113679(n))`
-/

namespace A168055.P17953448466808894002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007971 n + 1) (A113679 n)

end

end A168055.P17953448466808894002

namespace A168055

/-- `and(A007971(n)+1, A113679(n))` -/
def P17953448466808894002.Spec : Prop :=
  ∀ n, P17953448466808894002.a n = A168055 n

end A168055

/-! ## A168055.P135402160059844172

`A007971(xor(n, A019590(n+1)))`
-/

namespace A168055.P135402160059844172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007971 (Int.xor (n : ℤ) (A019590 (n + 1))).toNat

end

end A168055.P135402160059844172

namespace A168055

/-- `A007971(xor(n, A019590(n+1)))` -/
def P135402160059844172.Spec : Prop :=
  ∀ n, P135402160059844172.a n = A168055 n

end A168055

/-!
# A168056: Expansion of (1+2*x^2+x^3)/((1-x)^2*(1+x+x^2)).

The programs for A168056, the canonical program `A168056.P14054458995204772042` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168056 has offset 0).

The definition of A168056 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x^2+x^3)/(1-x-x^3+x^4))` (program `A168056.P14054458995204772042`, by `A168056.P14054458995204772042.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168056.P14054458995204772042

`ogf((1+2x^2+x^3)/(1-x-x^3+x^4))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168056

/-- `ogf((1+2x^2+x^3)/(1-x-x^3+x^4))` -/
def P14054458995204772042.Spec : Prop :=
  ∀ n, P14054458995204772042.a n = A168056 n

theorem P14054458995204772042.correct : P14054458995204772042.Spec := by
  intro n
  simp only [A168056]

end A168056

/-! ## A168056.P14298985259101113108

`(12*n+3+6*cos(2*n*π/3)-2*sqrt(3)*sin(2*n*π/3))/9`
-/

namespace A168056.P14298985259101113108
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((12 * n + 3 : ℝ) + 6 * Real.cos ((2 * n : ℝ) * Real.pi / 3) - 2 * Real.sqrt (3 : ℝ) * Real.sin ((2 * n : ℝ) * Real.pi / 3)) / 9

end

end A168056.P14298985259101113108

namespace A168056

/-- `(12*n+3+6*cos(2*n*π/3)-2*sqrt(3)*sin(2*n*π/3))/9` -/
def P14298985259101113108.Spec : Prop :=
  ∀ n, P14298985259101113108.a n = (A168056 n : ℝ)

end A168056

/-! ## A168056.P11748393984477574116

`A168057(n)/2^n`
-/

namespace A168056.P11748393984477574116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168057 n : ℚ) / (2 ^ n : ℚ)

end

end A168056.P11748393984477574116

namespace A168056

/-- `A168057(n)/2^n` -/
def P11748393984477574116.Spec : Prop :=
  ∀ n, P11748393984477574116.a n = (A168056 n : ℚ)

end A168056

/-! ## A168056.P2351199321010179853

`or(1, comp[or(3, n)])`
-/

namespace A168056.P2351199321010179853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A168056.P2351199321010179853

namespace A168056

/-- `or(1, comp[or(3, n)])` -/
def P2351199321010179853.Spec : Prop :=
  ∀ n, (P2351199321010179853.a n : ℤ) = A168056 n

end A168056

/-! ## A168056.P3771287788667763054

`or(1, floor(4*n/3))`
-/

namespace A168056.P3771287788667763054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊4 * ((n : ℚ) / 3)⌋

end

end A168056.P3771287788667763054

namespace A168056

/-- `or(1, floor(4*n/3))` -/
def P3771287788667763054.Spec : Prop :=
  ∀ n, P3771287788667763054.a n = A168056 n

end A168056

/-! ## A168056.P7374945350699761765

`∑[abs((1-∑[n])%3)]`
-/

namespace A168056.P7374945350699761765
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (1 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) 3|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168056.P7374945350699761765

namespace A168056

/-- `∑[abs((1-∑[n])%3)]` -/
def P7374945350699761765.Spec : Prop :=
  ∀ n, P7374945350699761765.a n = A168056 n

end A168056

/-! ## A168056.P13479080642238712749

`∑[dr(1-∑[n])%3]`
-/

namespace A168056.P13479080642238712749
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168056.P13479080642238712749

namespace A168056

/-- `∑[dr(1-∑[n])%3]` -/
def P13479080642238712749.Spec : Prop :=
  ∀ n, (P13479080642238712749.a n : ℤ) = A168056 n

end A168056

/-! ## A168056.P6201079552571104235

`∑[2-C(2, dr(∑[n]))]`
-/

namespace A168056.P6201079552571104235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.choose 2 (SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168056.P6201079552571104235

namespace A168056

/-- `∑[2-C(2, dr(∑[n]))]` -/
def P6201079552571104235.Spec : Prop :=
  ∀ n, P6201079552571104235.a n = A168056 n

end A168056

/-! ## A168056.P9391755688268791271

`a(n-3)+4` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A168056.P9391755688268791271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (n - 3) + 4

end

end A168056.P9391755688268791271

namespace A168056

/-- `a(n-3)+4` -/
def P9391755688268791271.Spec : Prop :=
  ∀ n, (P9391755688268791271.a n : ℤ) = A168056 n

end A168056

/-! ## A168056.P7194022590592164602

`∑[gcd(3, ∑[n])]-(n+2)`
-/

namespace A168056.P7194022590592164602
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 2 : ℤ)

end

end A168056.P7194022590592164602

namespace A168056

/-- `∑[gcd(3, ∑[n])]-(n+2)` -/
def P7194022590592164602.Spec : Prop :=
  ∀ n, P7194022590592164602.a n = A168056 n

end A168056

/-! ## A168056.P18434410238973284822

`∑[abs(a(n-3))]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2`
-/

namespace A168056.P18434410238973284822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168056.P18434410238973284822

namespace A168056

/-- `∑[abs(a(n-3))]` -/
def P18434410238973284822.Spec : Prop :=
  ∀ n, (P18434410238973284822.a n : ℤ) = A168056 n

end A168056

/-! ## A168056.P6727090476797835179

`∑[lcm(2, a(n-3))]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A168056.P6727090476797835179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  Nat.lcm 2 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168056.P6727090476797835179

namespace A168056

/-- `∑[lcm(2, a(n-3))]` -/
def P6727090476797835179.Spec : Prop :=
  ∀ n, (P6727090476797835179.a n : ℤ) = A168056 n

end A168056

/-! ## A168056.P12174055653360828870

`∑[dr(a(n-3))]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2`
-/

namespace A168056.P12174055653360828870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168056.P12174055653360828870

namespace A168056

/-- `∑[dr(a(n-3))]` -/
def P12174055653360828870.Spec : Prop :=
  ∀ n, (P12174055653360828870.a n : ℤ) = A168056 n

end A168056

/-! ## A168056.P6447127362770405509

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A168056.P6447127362770405509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168056.P6447127362770405509

namespace A168056

/-- `∑[floor(a(n-3))]` -/
def P6447127362770405509.Spec : Prop :=
  ∀ n, (P6447127362770405509.a n : ℤ) = A168056 n

end A168056

/-! ## A168056.P4004832433326849048

`∑[ceil(a(n-3))]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A168056.P4004832433326849048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168056.P4004832433326849048

namespace A168056

/-- `∑[ceil(a(n-3))]` -/
def P4004832433326849048.Spec : Prop :=
  ∀ n, (P4004832433326849048.a n : ℤ) = A168056 n

end A168056

/-! ## A168056.P1858876563045232922

`∑[round(a(n-3))]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2`

`round` is left out, it is the identity on integers.
-/

namespace A168056.P1858876563045232922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168056.P1858876563045232922

namespace A168056

/-- `∑[round(a(n-3))]` -/
def P1858876563045232922.Spec : Prop :=
  ∀ n, (P1858876563045232922.a n : ℤ) = A168056 n

end A168056

/-! ## A168056.P16280039996660252979

`2*floor(2*n/3)+1`
-/

namespace A168056.P16280039996660252979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊2 * ((n : ℚ) / 3)⌋ + 1

end

end A168056.P16280039996660252979

namespace A168056

/-- `2*floor(2*n/3)+1` -/
def P16280039996660252979.Spec : Prop :=
  ∀ n, P16280039996660252979.a n = A168056 n

end A168056

/-! ## A168056.P5887981421297335335

`xor(1, 2*floor(2*n/3))`
-/

namespace A168056.P5887981421297335335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * ⌊2 * ((n : ℚ) / 3)⌋)

end

end A168056.P5887981421297335335

namespace A168056

/-- `xor(1, 2*floor(2*n/3))` -/
def P5887981421297335335.Spec : Prop :=
  ∀ n, P5887981421297335335.a n = A168056 n

end A168056

/-! ## A168056.P15245219944155070794

`∑[2*a(∑[n]%3)]` with `a(0)=1, a(1)=0`
-/

namespace A168056.P15245219944155070794
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  2 * f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168056.P15245219944155070794

namespace A168056

/-- `∑[2*a(∑[n]%3)]` -/
def P15245219944155070794.Spec : Prop :=
  ∀ n, (P15245219944155070794.a n : ℤ) = A168056 n

end A168056

/-! ## A168056.P13462855318461883273

`∑[a(n-3)%3]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2`
-/

namespace A168056.P13462855318461883273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 2] fun n f1 =>
  f1 (n - 3) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168056.P13462855318461883273

namespace A168056

/-- `∑[a(n-3)%3]` -/
def P13462855318461883273.Spec : Prop :=
  ∀ n, (P13462855318461883273.a n : ℤ) = A168056 n

end A168056

/-!
# A168057: Expansion of (1+8x^2+8x^3)/((1-2x)^2*(1+2x+4x^2)).

The programs for A168057, the canonical program `A168057.P16390571874676929625` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168057 has offset 0).

The definition of A168057 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+8x^2+8x^3)/(1-2x-8x^3+16x^4))` (program `A168057.P16390571874676929625`, by `A168057.P16390571874676929625.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168057.P4010086666493450619

`2^n*A168056(n)`
-/

namespace A168057.P4010086666493450619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A168056 n

end

end A168057.P4010086666493450619

namespace A168057

/-- `2^n*A168056(n)` -/
def P4010086666493450619.Spec : Prop :=
  ∀ n, P4010086666493450619.a n = A168057 n

end A168057

/-! ## A168057.P16390571874676929625

`ogf((1+8x^2+8x^3)/(1-2x-8x^3+16x^4))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168057

/-- `ogf((1+8x^2+8x^3)/(1-2x-8x^3+16x^4))` -/
def P16390571874676929625.Spec : Prop :=
  ∀ n, P16390571874676929625.a n = A168057 n

theorem P16390571874676929625.correct : P16390571874676929625.Spec := by
  intro n
  simp only [A168057]

end A168057

/-! ## A168057.P8190893978567161878

`2^(n+1)-A168054(n)`
-/

namespace A168057.P8190893978567161878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A168054 n

end

end A168057.P8190893978567161878

namespace A168057

/-- `2^(n+1)-A168054(n)` -/
def P8190893978567161878.Spec : Prop :=
  ∀ n, P8190893978567161878.a n = A168057 n

end A168057

/-! ## A168057.P13151292283609875552

`abs(A302402(n)-(2*n+1))*2^n`
-/

namespace A168057.P13151292283609875552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A302402 n - (2 * n + 1 : ℤ)| * (2 ^ n : ℤ)

end

end A168057.P13151292283609875552

namespace A168057

/-- `abs(A302402(n)-(2*n+1))*2^n` -/
def P13151292283609875552.Spec : Prop :=
  ∀ n, P13151292283609875552.a n = A168057 n

end A168057

/-! ## A168057.P4006431850689134342

`(A047878(Δ[n²]+2*n+1)-1)*2^n`
-/

namespace A168057.P4006431850689134342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047878 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (2 * n + 1 : ℤ)).toNat - 1) * (2 ^ n : ℤ)

end

end A168057.P4006431850689134342

namespace A168057

/-- `(A047878(Δ[n²]+2*n+1)-1)*2^n` -/
def P4006431850689134342.Spec : Prop :=
  ∀ n, P4006431850689134342.a n = A168057 n

end A168057

/-! ## A168057.P17282877424870394777

`lcm(A000079(n), A168056(n))`
-/

namespace A168057.P17282877424870394777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A168056 n)

end

end A168057.P17282877424870394777

namespace A168057

/-- `lcm(A000079(n), A168056(n))` -/
def P17282877424870394777.Spec : Prop :=
  ∀ n, (P17282877424870394777.a n : ℤ) = A168057 n

end A168057

/-! ## A168057.P2058767709712686473

`(2-A168053(n))*A000079(n)`
-/

namespace A168057.P2058767709712686473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A168053 n) * A000079 n

end

end A168057.P2058767709712686473

namespace A168057

/-- `(2-A168053(n))*A000079(n)` -/
def P2058767709712686473.Spec : Prop :=
  ∀ n, P2058767709712686473.a n = A168057 n

end A168057

/-! ## A168057.P83257947206021920

`A000079(n)*A008611(4*n)`
-/

namespace A168057.P83257947206021920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A008611 (4 * n)

end

end A168057.P83257947206021920

namespace A168057

/-- `A000079(n)*A008611(4*n)` -/
def P83257947206021920.Spec : Prop :=
  ∀ n, P83257947206021920.a n = A168057 n

end A168057

/-! ## A168057.P7216527325218832981

`or(1, comp[A004767(n)])*A000079(n)`
-/

namespace A168057.P7216527325218832981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℤ) * A000079 n

end

end A168057.P7216527325218832981

namespace A168057

/-- `or(1, comp[A004767(n)])*A000079(n)` -/
def P7216527325218832981.Spec : Prop :=
  ∀ n, P7216527325218832981.a n = A168057 n

end A168057

/-! ## A168057.P7090396126709870922

`A008611(4*n)*A016116(2*n)`
-/

namespace A168057.P7090396126709870922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (4 * n) * A016116 (2 * n)

end

end A168057.P7090396126709870922

namespace A168057

/-- `A008611(4*n)*A016116(2*n)` -/
def P7090396126709870922.Spec : Prop :=
  ∀ n, P7090396126709870922.a n = A168057 n

end A168057

/-! ## A168057.P8560228145314665193

`A008611(4*n)*A060546(2*n)`
-/

namespace A168057.P8560228145314665193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (4 * n) * A060546 (2 * n)

end

end A168057.P8560228145314665193

namespace A168057

/-- `A008611(4*n)*A060546(2*n)` -/
def P8560228145314665193.Spec : Prop :=
  ∀ n, P8560228145314665193.a n = A168057 n

end A168057

/-! ## A168057.P4909674998079436144

`A008611(4*n)*A106624(2*n)`
-/

namespace A168057.P4909674998079436144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (4 * n) * A106624 (2 * n)

end

end A168057.P4909674998079436144

namespace A168057

/-- `A008611(4*n)*A106624(2*n)` -/
def P4909674998079436144.Spec : Prop :=
  ∀ n, P4909674998079436144.a n = A168057 n

end A168057

/-! ## A168057.P14002790943831302544

`A008611(4*n)*A143095(2*n)`
-/

namespace A168057.P14002790943831302544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (4 * n) * A143095 (2 * n)

end

end A168057.P14002790943831302544

namespace A168057

/-- `A008611(4*n)*A143095(2*n)` -/
def P14002790943831302544.Spec : Prop :=
  ∀ n, P14002790943831302544.a n = A168057 n

end A168057

/-! ## A168057.P13550963697666717658

`A008612(8*n)*A011782(n+1)`
-/

namespace A168057.P13550963697666717658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (8 * n) * A011782 (n + 1)

end

end A168057.P13550963697666717658

namespace A168057

/-- `A008612(8*n)*A011782(n+1)` -/
def P13550963697666717658.Spec : Prop :=
  ∀ n, P13550963697666717658.a n = A168057 n

end A168057

/-! ## A168057.P12421972832493266698

`A008611(4*n)*A164587(2*n+1)`
-/

namespace A168057.P12421972832493266698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (4 * n) * A164587 (2 * n + 1)

end

end A168057.P12421972832493266698

namespace A168057

/-- `A008611(4*n)*A164587(2*n+1)` -/
def P12421972832493266698.Spec : Prop :=
  ∀ n, P12421972832493266698.a n = A168057 n

end A168057

/-! ## A168057.P15680769833444071091

`(2*n-A302402(n)+1)*A000079(n)`
-/

namespace A168057.P15680769833444071091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - A302402 n + 1) * A000079 n

end

end A168057.P15680769833444071091

namespace A168057

/-- `(2*n-A302402(n)+1)*A000079(n)` -/
def P15680769833444071091.Spec : Prop :=
  ∀ n, P15680769833444071091.a n = A168057 n

end A168057

/-! ## A168057.P3723813318830511368

`A000079(n)*A005408(A002264(2*n))`
-/

namespace A168057.P3723813318830511368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A005408 (A002264 (2 * n)).toNat

end

end A168057.P3723813318830511368

namespace A168057

/-- `A000079(n)*A005408(A002264(2*n))` -/
def P3723813318830511368.Spec : Prop :=
  ∀ n, P3723813318830511368.a n = A168057 n

end A168057

/-! ## A168057.P10818452924459921245

`A060546(2*n)+A002264(2*n)*A060546(2*(n+1))`
-/

namespace A168057.P10818452924459921245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (2 * n) + A002264 (2 * n) * A060546 (2 * (n + 1))

end

end A168057.P10818452924459921245

namespace A168057

/-- `A060546(2*n)+A002264(2*n)*A060546(2*(n+1))` -/
def P10818452924459921245.Spec : Prop :=
  ∀ n, P10818452924459921245.a n = A168057 n

end A168057

/-! ## A168057.P1252477546789043340

`A051274(2*n)*A060546(2*(n+1))-A060546(2*n)`
-/

namespace A168057.P1252477546789043340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051274 (2 * n) * A060546 (2 * (n + 1)) - A060546 (2 * n)

end

end A168057.P1252477546789043340

namespace A168057

/-- `A051274(2*n)*A060546(2*(n+1))-A060546(2*n)` -/
def P1252477546789043340.Spec : Prop :=
  ∀ n, P1252477546789043340.a n = A168057 n

end A168057

/-! ## A168057.P3010867066444351751

`A060546(2*(n+1))*A341307(2*n)-A060546(2*n)`
-/

namespace A168057.P3010867066444351751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (2 * (n + 1)) * A341307 (2 * n) - A060546 (2 * n)

end

end A168057.P3010867066444351751

namespace A168057

/-- `A060546(2*(n+1))*A341307(2*n)-A060546(2*n)` -/
def P3010867066444351751.Spec : Prop :=
  ∀ n, P3010867066444351751.a n = A168057 n

end A168057

/-!
# A168058: Expansion of x + sqrt(1-2x-3x^2).

The programs for A168058, the canonical program `A168058.P10626882976958940193` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168058 has offset 0).

The definition of A168058 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168058.P1249573216057236476

`A167022(n)+char[1]`
-/

namespace A168058.P1249573216057236476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167022 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A168058.P1249573216057236476

namespace A168058

/-- `A167022(n)+char[1]` -/
def P1249573216057236476.Spec : Prop :=
  ∀ n, P1249573216057236476.a n = A168058 n

end A168058

/-! ## A168058.P10626882976958940193

`xor(1, 1-A168055(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A168058

/-- `xor(1, 1-A168055(n))` -/
def P10626882976958940193.Spec : Prop :=
  ∀ n, P10626882976958940193.a n = A168058 n

theorem P10626882976958940193.correct : P10626882976958940193.Spec := by
  intro n
  simp only [A168058]

end A168058

/-! ## A168058.P7174916031134838132

`char[1-n^8]-A007971(n)`
-/

namespace A168058.P7174916031134838132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 8 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A007971 n

end

end A168058.P7174916031134838132

namespace A168058

/-- `char[1-n^8]-A007971(n)` -/
def P7174916031134838132.Spec : Prop :=
  ∀ n, P7174916031134838132.a n = A168058 n

end A168058

/-! ## A168058.P2623151916917248524

`(ceil(abs(sin(n)))+1)*A168051(n)`
-/

namespace A168058.P2623151916917248524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈|Real.sin (n : ℝ)|⌉ + 1) * A168051 n

end

end A168058.P2623151916917248524

namespace A168058

/-- `(ceil(abs(sin(n)))+1)*A168051(n)` -/
def P2623151916917248524.Spec : Prop :=
  ∀ n, P2623151916917248524.a n = A168058 n

end A168058

/-! ## A168058.P6357939387567971099

`A000007(n)-A126068(n)`
-/

namespace A168058.P6357939387567971099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A126068 n

end

end A168058.P6357939387567971099

namespace A168058

/-- `A000007(n)-A126068(n)` -/
def P6357939387567971099.Spec : Prop :=
  ∀ n, P6357939387567971099.a n = A168058 n

end A168058

/-! ## A168058.P1965982830628869695

`A000038(n)-A168055(n)`
-/

namespace A168058.P1965982830628869695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A168055 n

end

end A168058.P1965982830628869695

namespace A168058

/-- `A000038(n)-A168055(n)` -/
def P1965982830628869695.Spec : Prop :=
  ∀ n, P1965982830628869695.a n = A168058 n

end A168058

/-! ## A168058.P4588282199425683962

`A060576(n)*A167022(n)`
-/

namespace A168058.P4588282199425683962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A167022 n

end

end A168058.P4588282199425683962

namespace A168058

/-- `A060576(n)*A167022(n)` -/
def P4588282199425683962.Spec : Prop :=
  ∀ n, P4588282199425683962.a n = A168058 n

end A168058

/-! ## A168058.P7718578036096828574

`A113679(n)*A168049(n)`
-/

namespace A168058.P7718578036096828574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113679 n * A168049 n

end

end A168058.P7718578036096828574

namespace A168058

/-- `A113679(n)*A168049(n)` -/
def P7718578036096828574.Spec : Prop :=
  ∀ n, P7718578036096828574.a n = A168058 n

end A168058

/-! ## A168058.P5672908990873863706

`A168055(n)*A260196(n)`
-/

namespace A168058.P5672908990873863706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168055 n * A260196 n

end

end A168058.P5672908990873863706

namespace A168058

/-- `A168055(n)*A260196(n)` -/
def P5672908990873863706.Spec : Prop :=
  ∀ n, P5672908990873863706.a n = A168058 n

end A168058

/-! ## A168058.P13712708712714379487

`and(A113679(n), A167022(n))`
-/

namespace A168058.P13712708712714379487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A113679 n) (A167022 n)

end

end A168058.P13712708712714379487

namespace A168058

/-- `and(A113679(n), A167022(n))` -/
def P13712708712714379487.Spec : Prop :=
  ∀ n, P13712708712714379487.a n = A168058 n

end A168058

/-! ## A168058.P4744167924831837390

`xor(A159075(n), A167022(n))`
-/

namespace A168058.P4744167924831837390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A159075 n) (A167022 n)

end

end A168058.P4744167924831837390

namespace A168058

/-- `xor(A159075(n), A167022(n))` -/
def P4744167924831837390.Spec : Prop :=
  ∀ n, P4744167924831837390.a n = A168058 n

end A168058

/-! ## A168058.P1016155629339765208

`1-(A157928(n)+A007971(n))`
-/

namespace A168058.P1016155629339765208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A157928 n + A007971 n)

end

end A168058.P1016155629339765208

namespace A168058

/-- `1-(A157928(n)+A007971(n))` -/
def P1016155629339765208.Spec : Prop :=
  ∀ n, P1016155629339765208.a n = A168058 n

end A168058

/-! ## A168058.P4302474379897387231

`A063524(n+1)-A126068(n)`
-/

namespace A168058.P4302474379897387231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 1) - A126068 n

end

end A168058.P4302474379897387231

namespace A168058

/-- `A063524(n+1)-A126068(n)` -/
def P4302474379897387231.Spec : Prop :=
  ∀ n, P4302474379897387231.a n = A168058 n

end A168058

/-! ## A168058.P8996337021883867341

`A036453(n+1)*A168051(n)`
-/

namespace A168058.P8996337021883867341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A168051 n

end

end A168058.P8996337021883867341

namespace A168058

/-- `A036453(n+1)*A168051(n)` -/
def P8996337021883867341.Spec : Prop :=
  ∀ n, P8996337021883867341.a n = A168058 n

end A168058

/-! ## A168058.P7290116258906193573

`2*A000007(n)-A168055(n)`
-/

namespace A168058.P7290116258906193573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n - A168055 n

end

end A168058.P7290116258906193573

namespace A168058

/-- `2*A000007(n)-A168055(n)` -/
def P7290116258906193573.Spec : Prop :=
  ∀ n, P7290116258906193573.a n = A168058 n

end A168058

/-! ## A168058.P16206119746045587826

`A168055(n)-2*A126068(n)`
-/

namespace A168058.P16206119746045587826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168055 n - 2 * A126068 n

end

end A168058.P16206119746045587826

namespace A168058

/-- `A168055(n)-2*A126068(n)` -/
def P16206119746045587826.Spec : Prop :=
  ∀ n, P16206119746045587826.a n = A168058 n

end A168058

/-! ## A168058.P4270981980830805743

`A168076(n)+A126068(n)/2`
-/

namespace A168058.P4270981980830805743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168076 n : ℚ) + (A126068 n : ℚ) / 2

end

end A168058.P4270981980830805743

namespace A168058

/-- `A168076(n)+A126068(n)/2` -/
def P4270981980830805743.Spec : Prop :=
  ∀ n, P4270981980830805743.a n = (A168058 n : ℚ)

end A168058

/-! ## A168058.P9095542684823578696

`(A168076(n)+A168051(n))/2`
-/

namespace A168058.P9095542684823578696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168076 n + A168051 n : ℚ) / 2

end

end A168058.P9095542684823578696

namespace A168058

/-- `(A168076(n)+A168051(n))/2` -/
def P9095542684823578696.Spec : Prop :=
  ∀ n, P9095542684823578696.a n = (A168058 n : ℚ)

end A168058

/-! ## A168058.P15364838020646848186

`A168051(n)-A126068(n)/2`
-/

namespace A168058.P15364838020646848186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168051 n : ℚ) - (A126068 n : ℚ) / 2

end

end A168058.P15364838020646848186

namespace A168058

/-- `A168051(n)-A126068(n)/2` -/
def P15364838020646848186.Spec : Prop :=
  ∀ n, P15364838020646848186.a n = (A168058 n : ℚ)

end A168058

/-!
# A168059: Denominator of (n+2)/(n*(n+1)).

The programs for A168059, the canonical program `A168059.P2155028373150201316` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168059 has offset 1).

The definition of A168059 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168059.P4859374839080353114

`lcm(n+2, C(n+2, 2))`
-/

namespace A168059.P4859374839080353114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 2) (Nat.choose (n + 2) 2)

end

end A168059.P4859374839080353114

namespace A168059

/-- `lcm(n+2, C(n+2, 2))` -/
def P4859374839080353114.Spec : Prop :=
  ∀ n, (P4859374839080353114.a n : ℤ) = A168059 (n + 1)

end A168059

/-! ## A168059.P2223056037550176928

`(n+1)*(n+2)*(3-(-1)^(n+1))/4`
-/

namespace A168059.P2223056037550176928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (n + 2) : ℤ) * (3 - (-1) ^ (n + 1)) : ℚ) / 4

end

end A168059.P2223056037550176928

namespace A168059

/-- `(n+1)*(n+2)*(3-(-1)^(n+1))/4` -/
def P2223056037550176928.Spec : Prop :=
  ∀ n, P2223056037550176928.a n = (A168059 (n + 1) : ℚ)

theorem P2223056037550176928.correct : P2223056037550176928.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 | 5 =>
      simp [A168059, Nat.add_sub_cancel, A168059.P2223056037550176928.a, A168059.P2155028373150201316.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 6 =>
      have h2 := ih (m + 4) (by omega)
      have h4 := ih (m + 2) (by omega)
      have h6 := ih m (by omega)
      simp only [A168059, Nat.add_sub_cancel, A168059.P2223056037550176928.a, A168059.P2155028373150201316.a, SequenceMachineLib.memo_apply] at h2 h4 h6 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 6 - 2 = m + 4 by omega, show m + 6 - 4 = m + 2 by omega, show m + 6 - 6 = m by omega, show m + 4 < m + 6 by omega, show m + 2 < m + 6 by omega, show m < m + 6 by omega, ↓reduceIte]
      push_cast at h2 h4 h6 ⊢
      rw [← h2, ← h4, ← h6]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A168059

/-! ## A168059.P2155028373150201316

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=2, a(1)=3, a(2)=12, a(3)=10, a(4)=30, a(5)=21`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168059

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P2155028373150201316.Spec : Prop :=
  ∀ n, P2155028373150201316.a n = A168059 (n + 1)

theorem P2155028373150201316.correct : P2155028373150201316.Spec := by
  intro n
  simp only [A168059, Nat.add_sub_cancel]

end A168059

/-! ## A168059.P11701037769204840575

`lcm(n+2, ∑[n+1])`
-/

namespace A168059.P11701037769204840575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168059.P11701037769204840575

namespace A168059

/-- `lcm(n+2, ∑[n+1])` -/
def P11701037769204840575.Spec : Prop :=
  ∀ n, (P11701037769204840575.a n : ℤ) = A168059 (n + 1)

end A168059

/-! ## A168059.P11768284415604116610

`gcd(2, n)*∑[n+1]`
-/

namespace A168059.P11768284415604116610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168059.P11768284415604116610

namespace A168059

/-- `gcd(2, n)*∑[n+1]` -/
def P11768284415604116610.Spec : Prop :=
  ∀ n, (P11768284415604116610.a n : ℤ) = A168059 (n + 1)

end A168059

/-! ## A168059.P14839367672036293299

`(2-n%2)*∑[n+1]`
-/

namespace A168059.P14839367672036293299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((n % 2 : ℕ) : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A168059.P14839367672036293299

namespace A168059

/-- `(2-n%2)*∑[n+1]` -/
def P14839367672036293299.Spec : Prop :=
  ∀ n, P14839367672036293299.a n = A168059 (n + 1)

end A168059

/-! ## A168059.P15485502865912794790

`(2-and(1, n))*∑[n+1]`
-/

namespace A168059.P15485502865912794790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.land 1 n : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A168059.P15485502865912794790

namespace A168059

/-- `(2-and(1, n))*∑[n+1]` -/
def P15485502865912794790.Spec : Prop :=
  ∀ n, P15485502865912794790.a n = A168059 (n + 1)

end A168059

/-! ## A168059.P5316649848964351335

`or(n, -2)*∑[-(n+1)]`
-/

namespace A168059.P5316649848964351335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168059.P5316649848964351335

namespace A168059

/-- `or(n, -2)*∑[-(n+1)]` -/
def P5316649848964351335.Spec : Prop :=
  ∀ n, P5316649848964351335.a n = A168059 (n + 1)

end A168059

/-! ## A168059.P7764762603441066117

`(n/2+1)*lcm(2, n+1)`
-/

namespace A168059.P7764762603441066117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (Nat.lcm 2 (n + 1) : ℚ)

end

end A168059.P7764762603441066117

namespace A168059

/-- `(n/2+1)*lcm(2, n+1)` -/
def P7764762603441066117.Spec : Prop :=
  ∀ n, P7764762603441066117.a n = (A168059 (n + 1) : ℚ)

end A168059

/-! ## A168059.P1052640154209897563

`(and(1, n+1)+1)*∑[n+1]`
-/

namespace A168059.P1052640154209897563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (n + 1) + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168059.P1052640154209897563

namespace A168059

/-- `(and(1, n+1)+1)*∑[n+1]` -/
def P1052640154209897563.Spec : Prop :=
  ∀ n, (P1052640154209897563.a n : ℤ) = A168059 (n + 1)

end A168059

/-! ## A168059.P12082313602110328706

`(or(1, n)-(n-1))*∑[n+1]`
-/

namespace A168059.P12082313602110328706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 n : ℤ) - ((n : ℤ) - 1)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A168059.P12082313602110328706

namespace A168059

/-- `(or(1, n)-(n-1))*∑[n+1]` -/
def P12082313602110328706.Spec : Prop :=
  ∀ n, P12082313602110328706.a n = A168059 (n + 1)

end A168059

/-! ## A168059.P8389579604349802679

`6/a(n-1)*∑[∑[n²]]` with `a(0)=2`
-/

namespace A168059.P8389579604349802679
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  6 / a (n - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A168059.P8389579604349802679

namespace A168059

/-- `6/a(n-1)*∑[∑[n²]]` -/
def P8389579604349802679.Spec : Prop :=
  ∀ n, P8389579604349802679.a n = (A168059 (n + 1) : ℚ)

end A168059

/-! ## A168059.P1974446854277012849

`C(2, and(1, n+1))*C(n+2, 2)`
-/

namespace A168059.P1974446854277012849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.land 1 (n + 1)) * Nat.choose (n + 2) 2

end

end A168059.P1974446854277012849

namespace A168059

/-- `C(2, and(1, n+1))*C(n+2, 2)` -/
def P1974446854277012849.Spec : Prop :=
  ∀ n, (P1974446854277012849.a n : ℤ) = A168059 (n + 1)

end A168059

/-! ## A168059.P17267142954593111629

`(n+1)*(n+2)/(and(1, n)+1)`
-/

namespace A168059.P17267142954593111629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 2 : ℚ) / (Nat.land 1 n + 1 : ℚ))

end

end A168059.P17267142954593111629

namespace A168059

/-- `(n+1)*(n+2)/(and(1, n)+1)` -/
def P17267142954593111629.Spec : Prop :=
  ∀ n, P17267142954593111629.a n = (A168059 (n + 1) : ℚ)

end A168059

/-! ## A168059.P577047194874060903

`(n+2)*gcd(n+1, C(n+1, 2))`
-/

namespace A168059.P577047194874060903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.gcd (n + 1) (Nat.choose (n + 1) 2)

end

end A168059.P577047194874060903

namespace A168059

/-- `(n+2)*gcd(n+1, C(n+1, 2))` -/
def P577047194874060903.Spec : Prop :=
  ∀ n, (P577047194874060903.a n : ℤ) = A168059 (n + 1)

end A168059

/-! ## A168059.P15552003248431055328

`(n+1)*(n+2)/gcd(1-n, 2*n)`
-/

namespace A168059.P15552003248431055328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 2 : ℚ) / (Int.gcd (1 - (n : ℤ)) (2 * n : ℤ) : ℚ))

end

end A168059.P15552003248431055328

namespace A168059

/-- `(n+1)*(n+2)/gcd(1-n, 2*n)` -/
def P15552003248431055328.Spec : Prop :=
  ∀ n, P15552003248431055328.a n = (A168059 (n + 1) : ℚ)

end A168059

/-! ## A168059.P11870867518571911218

`(∑[2-a(n-1)]-n)*∑[n+1]` with `a(0)=2`
-/

namespace A168059.P11870867518571911218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  2 - f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A168059.P11870867518571911218

namespace A168059

/-- `(∑[2-a(n-1)]-n)*∑[n+1]` -/
def P11870867518571911218.Spec : Prop :=
  ∀ n, P11870867518571911218.a n = A168059 (n + 1)

end A168059

/-! ## A168059.P12467579071689682360

`(n+1)*2^((n+1)%2)/2*(n+2)`
-/

namespace A168059.P12467579071689682360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * 2 ^ ((n + 1) % 2) : ℚ) / 2 * (n + 2 : ℚ)

end

end A168059.P12467579071689682360

namespace A168059

/-- `(n+1)*2^((n+1)%2)/2*(n+2)` -/
def P12467579071689682360.Spec : Prop :=
  ∀ n, P12467579071689682360.a n = (A168059 (n + 1) : ℚ)

end A168059

/-! ## A168059.P8933524092248853964

`∑[n+1]+(a(n-1)+n+1)%(n+1)²` with `a(0)=2`
-/

namespace A168059.P8933524092248853964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (a (n - 1) + (n + 1)) % (n + 1) ^ 2

end

end A168059.P8933524092248853964

namespace A168059

/-- `∑[n+1]+(a(n-1)+n+1)%(n+1)²` -/
def P8933524092248853964.Spec : Prop :=
  ∀ n, (P8933524092248853964.a n : ℤ) = A168059 (n + 1)

end A168059

/-! ## A168059.P7459968506055545372

`(n+2)*A026741(n+1)`
-/

namespace A168059.P7459968506055545372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A026741 (n + 1)

end

end A168059.P7459968506055545372

namespace A168059

/-- `(n+2)*A026741(n+1)` -/
def P7459968506055545372.Spec : Prop :=
  ∀ n, P7459968506055545372.a n = A168059 (n + 1)

end A168059

/-!
# A168060: Denominators of ((n+2)/(n+1)/n) (sorted with no repeats) for n >= 1.

The programs for A168060, the canonical program `A168060.P1286338243596023875` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168060 has offset 1).

The definition of A168060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168060.P1286338243596023875

`lt[A010816(A142150(n)), A010816(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A168060

/-- `lt[A010816(A142150(n)), A010816(n)]` -/
def P1286338243596023875.Spec : Prop :=
  ∀ n, (P1286338243596023875.a n : ℤ) = A168060 (n + 1)

theorem P1286338243596023875.correct : P1286338243596023875.Spec := by
  intro n
  simp only [A168060, Nat.add_sub_cancel]

end A168060

/-! ## A168060.P2439117478455672281

`lt[A197870(A026741(n)), A178737(n)]`
-/

namespace A168060.P2439117478455672281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197870 (A026741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178737 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A168060.P2439117478455672281

namespace A168060

/-- `lt[A197870(A026741(n)), A178737(n)]` -/
def P2439117478455672281.Spec : Prop :=
  ∀ n, (P2439117478455672281.a n : ℤ) = A168060 (n + 1)

end A168060

/-! ## A168060.P14630207297683302880

`lt[A178737(n-A026741(n)), A178737(n)]`
-/

namespace A168060.P14630207297683302880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178737 ((n : ℤ) - A026741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178737 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A168060.P14630207297683302880

namespace A168060

/-- `lt[A178737(n-A026741(n)), A178737(n)]` -/
def P14630207297683302880.Spec : Prop :=
  ∀ n, (P14630207297683302880.a n : ℤ) = A168060 (n + 1)

end A168060

/-! ## A168060.P17235410886340618073

`lt[A197870(A026741(n)), n*A197870(n)]`
-/

namespace A168060.P17235410886340618073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197870 (A026741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A197870 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A168060.P17235410886340618073

namespace A168060

/-- `lt[A197870(A026741(n)), n*A197870(n)]` -/
def P17235410886340618073.Spec : Prop :=
  ∀ n, (P17235410886340618073.a n : ℤ) = A168060 (n + 1)

end A168060

/-! ## A168060.P14736152261155100618

`lt[A010816(A014682(n)), A010816(n)]`
-/

namespace A168060.P14736152261155100618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 (A014682 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A168060.P14736152261155100618

namespace A168060

/-- `lt[A010816(A014682(n)), A010816(n)]` -/
def P14736152261155100618.Spec : Prop :=
  ∀ n, (P14736152261155100618.a n : ℤ) = A168060 (n + 1)

end A168060

/-! ## A168060.P14198926518989008113

`lt[A010816(A001281(n)), A010816(n)]`
-/

namespace A168060.P14198926518989008113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 (A001281 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A168060.P14198926518989008113

namespace A168060

/-- `lt[A010816(A001281(n)), A010816(n)]` -/
def P14198926518989008113.Spec : Prop :=
  ∀ n, (P14198926518989008113.a n : ℤ) = A168060 (n + 1)

end A168060

/-!
# A168061: Denominator of (n+3) / ((n+2) * (n+1) * n).

The programs for A168061, the canonical program `A168061.P11737824638444645668` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168061 has offset 1).

The definition of A168061 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168061.P11737824638444645668

`A007531(n+3)/A089145(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A168061

/-- `A007531(n+3)/A089145(n+1)` -/
def P11737824638444645668.Spec : Prop :=
  ∀ n, P11737824638444645668.a n = (A168061 (n + 1) : ℚ)

end A168061

/-! ## A168061.P1023803907244689072

`xor(2, (n+1)²%6)*∑[∑[n+1]]`
-/

namespace A168061.P1023803907244689072
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 ((n + 1) ^ 2 % 6) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168061.P1023803907244689072

namespace A168061

/-- `xor(2, (n+1)²%6)*∑[∑[n+1]]` -/
def P1023803907244689072.Spec : Prop :=
  ∀ n, (P1023803907244689072.a n : ℤ) = A168061 (n + 1)

end A168061

/-! ## A168061.P2607394970469071656

`gcd(6, A110397(n+1))*∑[∑[n+1]]`
-/

namespace A168061.P2607394970469071656
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A110397 (n + 1)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168061.P2607394970469071656

namespace A168061

/-- `gcd(6, A110397(n+1))*∑[∑[n+1]]` -/
def P2607394970469071656.Spec : Prop :=
  ∀ n, (P2607394970469071656.a n : ℤ) = A168061 (n + 1)

end A168061

/-! ## A168061.P14169052975510127897

`gcd(A027484(n+2), A090448(n+3))`
-/

namespace A168061.P14169052975510127897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027484 (n + 2)) (A090448 (n + 3))

end

end A168061.P14169052975510127897

namespace A168061

/-- `gcd(A027484(n+2), A090448(n+3))` -/
def P14169052975510127897.Spec : Prop :=
  ∀ n, (P14169052975510127897.a n : ℤ) = A168061 (n + 1)

end A168061

/-! ## A168061.P12797141688465345274

`A051176(n+1)*A168059(n+2)`
-/

namespace A168061.P12797141688465345274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (n + 1) * A168059 (n + 2)

end

end A168061.P12797141688465345274

namespace A168061

/-- `A051176(n+1)*A168059(n+2)` -/
def P12797141688465345274.Spec : Prop :=
  ∀ n, P12797141688465345274.a n = A168061 (n + 1)

end A168061

/-! ## A168061.P9714148653200556004

`A000292(n+1)*A129203(n+3)`
-/

namespace A168061.P9714148653200556004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) * A129203 (n + 3)

end

end A168061.P9714148653200556004

namespace A168061

/-- `A000292(n+1)*A129203(n+3)` -/
def P9714148653200556004.Spec : Prop :=
  ∀ n, P9714148653200556004.a n = A168061 (n + 1)

end A168061

/-! ## A168061.P1203284821820520228

`A000217(n+2)*A146307(2*(n+1))`
-/

namespace A168061.P1203284821820520228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2) * A146307 (2 * (n + 1))

end

end A168061.P1203284821820520228

namespace A168061

/-- `A000217(n+2)*A146307(2*(n+1))` -/
def P1203284821820520228.Spec : Prop :=
  ∀ n, P1203284821820520228.a n = A168061 (n + 1)

end A168061

/-! ## A168061.P5340963000669693487

`A000217(n+2)*A237109(2*(n+1))`
-/

namespace A168061.P5340963000669693487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2) * A237109 (2 * (n + 1))

end

end A168061.P5340963000669693487

namespace A168061

/-- `A000217(n+2)*A237109(2*(n+1))` -/
def P5340963000669693487.Spec : Prop :=
  ∀ n, P5340963000669693487.a n = A168061 (n + 1)

end A168061

/-! ## A168061.P11213306593830208338

`A146307(2*(n+1))/2*A180291(n+3)`
-/

namespace A168061.P11213306593830208338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146307 (2 * (n + 1)) : ℚ) / 2 * (A180291 (n + 3) : ℚ)

end

end A168061.P11213306593830208338

namespace A168061

/-- `A146307(2*(n+1))/2*A180291(n+3)` -/
def P11213306593830208338.Spec : Prop :=
  ∀ n, P11213306593830208338.a n = (A168061 (n + 1) : ℚ)

end A168061

/-!
# A168062: Denominators of ((n+3)/(n+2)/(n+1)/n) (sorted with no repeats).

The programs for A168062, there is no canonical definition to state claims against.
-/

/-! ## A168062.P8211470944120557358

`A093892(∑{d}[n+1, 1-#+n]+ceil((6*n+3)²/15))`
-/

namespace A168062.P8211470944120557358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093892 (∑ d ∈ Nat.divisors (f1 n), (1 - (d : ℤ) + (n : ℤ)) + ⌈((6 * n + 3) ^ 2 : ℚ) / 15⌉).toNat

end

end A168062.P8211470944120557358

/-!
# A168063: Numbers k such that exactly two of {k-2, k-1, k+1, k+2} are primes.

The programs for A168063, there is no canonical definition to state claims against.
-/

/-! ## A168063.P1325303686008806999

`A196393(∑[∑[A050326(n+1)]])`
-/

namespace A168063.P1325303686008806999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196393 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A168063.P1325303686008806999

/-! ## A168063.P11818169571737419554

`A196393(A001281(∑[∏{p}[n+1, #]+1+n]))`
-/

namespace A168063.P11818169571737419554
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196393 (A001281 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A168063.P11818169571737419554

/-! ## A168063.P13208737489638912601

`A196393(A110654(∑[∏{p}[n+1, #]+1+n]))`
-/

namespace A168063.P13208737489638912601
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196393 (A110654 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A168063.P13208737489638912601

/-!
# A168064: Numbers n such that exactly one of n+-1 and n+-2 is prime.

The programs for A168064, there is no canonical definition to state claims against.
-/

/-! ## A168064.P7909854997567572354

`eq[n%2, A347986(A028310(n))]`
-/

namespace A168064.P7909854997567572354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347986 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A168064.P7909854997567572354

/-! ## A168064.P9667553749062654446

`eq[A000035(n), A347986(A028310(n))]`
-/

namespace A168064.P9667553749062654446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347986 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A168064.P9667553749062654446

/-! ## A168064.P17724552859238252456

`A003253(n+3)%A118356(n+1)`
-/

namespace A168064.P17724552859238252456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003253 (n + 3)) (A118356 (n + 1))

end

end A168064.P17724552859238252456

/-! ## A168064.P3689020134257019281

`A003253(n+3)%A000217(A135491(n))`
-/

namespace A168064.P3689020134257019281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003253 (n + 3)) (A000217 (A135491 n).toNat)

end

end A168064.P3689020134257019281

/-! ## A168064.P11331880404218505770

`eq[A035263(n+1), A035263(A118024(n))]`
-/

namespace A168064.P11331880404218505770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A118024 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A168064.P11331880404218505770

/-!
# A168065: If n = Product p(k)^e(k) then a(n) = (Product (p(k)+1)^e(k) + Product (p(k)-1)^e(k))/2, a(1) = 1.

The programs for A168065, the canonical program `A168065.P9643825533377042537` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168065 has offset 1).

The definition of A168065 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A003959, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A168065.P9643825533377042537

`(A003959(n+1)+A003958(n+1))/2`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A168065

/-- `(A003959(n+1)+A003958(n+1))/2` -/
def P9643825533377042537.Spec : Prop :=
  ∀ n, P9643825533377042537.a n = (A168065 (n + 1) : ℚ)

end A168065

/-! ## A168065.P16031924657936434935

`A168066(n+1)+A003958(n+1)`
-/

namespace A168065.P16031924657936434935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168066 (n + 1) + A003958 (n + 1)

end

end A168065.P16031924657936434935

namespace A168065

/-- `A168066(n+1)+A003958(n+1)` -/
def P16031924657936434935.Spec : Prop :=
  ∀ n, P16031924657936434935.a n = A168065 (n + 1)

end A168065

/-! ## A168065.P10865289855772905171

`A003959(n+1)-A168066(n+1)`
-/

namespace A168065.P10865289855772905171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - A168066 (n + 1)

end

end A168065.P10865289855772905171

namespace A168065

/-- `A003959(n+1)-A168066(n+1)` -/
def P10865289855772905171.Spec : Prop :=
  ∀ n, P10865289855772905171.a n = A168065 (n + 1)

end A168065

/-! ## A168065.P16312244596659288269

`(A003958(n+1)+sqrt(A167349(n+1)))/2`
-/

namespace A168065.P16312244596659288269
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A003958 (n + 1) : ℝ) + Real.sqrt (A167349 (n + 1) : ℝ)) / 2

end

end A168065.P16312244596659288269

namespace A168065

/-- `(A003958(n+1)+sqrt(A167349(n+1)))/2` -/
def P16312244596659288269.Spec : Prop :=
  ∀ n, P16312244596659288269.a n = (A168065 (n + 1) : ℝ)

end A168065

/-! ## A168065.P11377816944144247086

`A168066(n+1)+1-A322582(n+1)+n`
-/

namespace A168065.P11377816944144247086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168066 (n + 1) + (1 - A322582 (n + 1) + (n : ℤ))

end

end A168065.P11377816944144247086

namespace A168065

/-- `A168066(n+1)+1-A322582(n+1)+n` -/
def P11377816944144247086.Spec : Prop :=
  ∀ n, P11377816944144247086.a n = A168065 (n + 1)

end A168065

/-! ## A168065.P16936850091242327052

`n+1-(A168066(n+1)-A348507(n+1))`
-/

namespace A168065.P16936850091242327052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A168066 (n + 1) - A348507 (n + 1))

end

end A168065.P16936850091242327052

namespace A168065

/-- `n+1-(A168066(n+1)-A348507(n+1))` -/
def P16936850091242327052.Spec : Prop :=
  ∀ n, P16936850091242327052.a n = A168065 (n + 1)

end A168065

/-! ## A168065.P14212913933346399364

`A168066(n+1)+A109624(n+1)/A166591(n+1)`
-/

namespace A168065.P14212913933346399364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168066 (n + 1) : ℚ) + (A109624 (n + 1) : ℚ) / (A166591 (n + 1) : ℚ)

end

end A168065.P14212913933346399364

namespace A168065

/-- `A168066(n+1)+A109624(n+1)/A166591(n+1)` -/
def P14212913933346399364.Spec : Prop :=
  ∀ n, P14212913933346399364.a n = (A168065 (n + 1) : ℚ)

end A168065

/-! ## A168065.P11504651458230151708

`A168066(n+1)+A167346(n+1)/A166590(n+1)`
-/

namespace A168065.P11504651458230151708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168066 (n + 1) : ℚ) + (A167346 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ)

end

end A168065.P11504651458230151708

namespace A168065

/-- `A168066(n+1)+A167346(n+1)/A166590(n+1)` -/
def P11504651458230151708.Spec : Prop :=
  ∀ n, P11504651458230151708.a n = (A168065 (n + 1) : ℚ)

end A168065

/-! ## A168065.P10347491096375067508

`A032742(A003959(n+1)+A003958(n+1))`
-/

namespace A168065.P10347491096375067508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A003959 (n + 1) + A003958 (n + 1)).toNat

end

end A168065.P10347491096375067508

namespace A168065

/-- `A032742(A003959(n+1)+A003958(n+1))` -/
def P10347491096375067508.Spec : Prop :=
  ∀ n, P10347491096375067508.a n = A168065 (n + 1)

end A168065

/-! ## A168065.P17980092408692252827

`(A326297(A064549(n+1))+A003959(n+1))/2`
-/

namespace A168065.P17980092408692252827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326297 (A064549 (n + 1)).toNat + A003959 (n + 1) : ℚ) / 2

end

end A168065.P17980092408692252827

namespace A168065

/-- `(A326297(A064549(n+1))+A003959(n+1))/2` -/
def P17980092408692252827.Spec : Prop :=
  ∀ n, P17980092408692252827.a n = (A168065 (n + 1) : ℚ)

end A168065

/-! ## A168065.P9021262215167813171

`(A327564(A064549(n+1))+A003958(n+1))/2`
-/

namespace A168065.P9021262215167813171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327564 (A064549 (n + 1)).toNat + A003958 (n + 1) : ℚ) / 2

end

end A168065.P9021262215167813171

namespace A168065

/-- `(A327564(A064549(n+1))+A003958(n+1))/2` -/
def P9021262215167813171.Spec : Prop :=
  ∀ n, P9021262215167813171.a n = (A168065 (n + 1) : ℚ)

end A168065

/-!
# A168066: If n = Product p(k)^e(k) then a(n) = (Product (p(k)+1)^e(k) - Product (p(k)-1)^e(k))/2, a(1) = 0.

The programs for A168066, the canonical program `A168066.P11839968661184011680` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168066 has offset 1).

The definition of A168066 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A003959, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A168066.P11839968661184011680

`(A003959(n+1)-A003958(n+1))/2`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A168066

/-- `(A003959(n+1)-A003958(n+1))/2` -/
def P11839968661184011680.Spec : Prop :=
  ∀ n, P11839968661184011680.a n = (A168066 (n + 1) : ℚ)

end A168066

/-! ## A168066.P13323451543507918363

`A003959(n+1)-A168065(n+1)`
-/

namespace A168066.P13323451543507918363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - A168065 (n + 1)

end

end A168066.P13323451543507918363

namespace A168066

/-- `A003959(n+1)-A168065(n+1)` -/
def P13323451543507918363.Spec : Prop :=
  ∀ n, P13323451543507918363.a n = A168066 (n + 1)

end A168066

/-! ## A168066.P17393175240027853859

`A168065(n+1)-A003958(n+1)`
-/

namespace A168066.P17393175240027853859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168065 (n + 1) - A003958 (n + 1)

end

end A168066.P17393175240027853859

namespace A168066

/-- `A168065(n+1)-A003958(n+1)` -/
def P17393175240027853859.Spec : Prop :=
  ∀ n, P17393175240027853859.a n = A168066 (n + 1)

end A168066

/-! ## A168066.P7080228994352592745

`(A348507(n+1)+A322582(n+1))/2`
-/

namespace A168066.P7080228994352592745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348507 (n + 1) + A322582 (n + 1) : ℚ) / 2

end

end A168066.P7080228994352592745

namespace A168066

/-- `(A348507(n+1)+A322582(n+1))/2` -/
def P7080228994352592745.Spec : Prop :=
  ∀ n, P7080228994352592745.a n = (A168066 (n + 1) : ℚ)

end A168066

/-! ## A168066.P2953993574657208283

`A168065(2*(n+1))%A168065(n+1)`
-/

namespace A168066.P2953993574657208283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168065 (2 * (n + 1))) (A168065 (n + 1))

end

end A168066.P2953993574657208283

namespace A168066

/-- `A168065(2*(n+1))%A168065(n+1)` -/
def P2953993574657208283.Spec : Prop :=
  ∀ n, P2953993574657208283.a n = A168066 (n + 1)

end A168066

/-! ## A168066.P13762780066887574945

`(sqrt(A167349(n+1))-A003958(n+1))/2`
-/

namespace A168066.P13762780066887574945
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A167349 (n + 1) : ℝ) - (A003958 (n + 1) : ℝ)) / 2

end

end A168066.P13762780066887574945

namespace A168066

/-- `(sqrt(A167349(n+1))-A003958(n+1))/2` -/
def P13762780066887574945.Spec : Prop :=
  ∀ n, P13762780066887574945.a n = (A168066 (n + 1) : ℝ)

end A168066

/-! ## A168066.P13920265735874659461

`A168065(n+1)-A109624(n+1)/A166591(n+1)`
-/

namespace A168066.P13920265735874659461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168065 (n + 1) : ℚ) - (A109624 (n + 1) : ℚ) / (A166591 (n + 1) : ℚ)

end

end A168066.P13920265735874659461

namespace A168066

/-- `A168065(n+1)-A109624(n+1)/A166591(n+1)` -/
def P13920265735874659461.Spec : Prop :=
  ∀ n, P13920265735874659461.a n = (A168066 (n + 1) : ℚ)

end A168066

/-! ## A168066.P2420573546130425895

`A168065(n+1)-A167346(n+1)/A166590(n+1)`
-/

namespace A168066.P2420573546130425895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168065 (n + 1) : ℚ) - (A167346 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ)

end

end A168066.P2420573546130425895

namespace A168066

/-- `A168065(n+1)-A167346(n+1)/A166590(n+1)` -/
def P2420573546130425895.Spec : Prop :=
  ∀ n, P2420573546130425895.a n = (A168066 (n + 1) : ℚ)

end A168066

/-! ## A168066.P18004917496059259559

`A032742(A003959(n+1)+A003958(n+1))-A003958(n+1)`
-/

namespace A168066.P18004917496059259559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A003959 (n + 1) + A003958 (n + 1)).toNat - A003958 (n + 1)

end

end A168066.P18004917496059259559

namespace A168066

/-- `A032742(A003959(n+1)+A003958(n+1))-A003958(n+1)` -/
def P18004917496059259559.Spec : Prop :=
  ∀ n, P18004917496059259559.a n = A168066 (n + 1)

end A168066

/-! ## A168066.P6428516409145480405

`(A003959(n+1)-A326297(A064549(n+1)))/2`
-/

namespace A168066.P6428516409145480405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) - A326297 (A064549 (n + 1)).toNat : ℚ) / 2

end

end A168066.P6428516409145480405

namespace A168066

/-- `(A003959(n+1)-A326297(A064549(n+1)))/2` -/
def P6428516409145480405.Spec : Prop :=
  ∀ n, P6428516409145480405.a n = (A168066 (n + 1) : ℚ)

end A168066

/-! ## A168066.P8940684580465934961

`(A327564(A064549(n+1))-A003958(n+1))/2`
-/

namespace A168066.P8940684580465934961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327564 (A064549 (n + 1)).toNat - A003958 (n + 1) : ℚ) / 2

end

end A168066.P8940684580465934961

namespace A168066

/-- `(A327564(A064549(n+1))-A003958(n+1))/2` -/
def P8940684580465934961.Spec : Prop :=
  ∀ n, P8940684580465934961.a n = (A168066 (n + 1) : ℚ)

end A168066

/-!
# A168067: a(n) = n*(n^7 + 1)/2.

The programs for A168067, the canonical program `A168067.P6697414694547914114` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168067 has offset 0).

The definition of A168067 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168067.P6697414694547914114

`n*(n^7+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168067

/-- `n*(n^7+1)/2` -/
def P6697414694547914114.Spec : Prop :=
  ∀ n, P6697414694547914114.a n = (A168067 n : ℚ)

end A168067

/-! ## A168067.P13298039654269813083

`∑[n]*A060888(n)`
-/

namespace A168067.P13298039654269813083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A060888 n

end

end A168067.P13298039654269813083

namespace A168067

/-- `∑[n]*A060888(n)` -/
def P13298039654269813083.Spec : Prop :=
  ∀ n, P13298039654269813083.a n = A168067 n

end A168067

/-! ## A168067.P1584360343240148070

`A195859(n)/2+n`
-/

namespace A168067.P1584360343240148070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195859 n : ℚ) / 2 + (n : ℚ)

end

end A168067.P1584360343240148070

namespace A168067

/-- `A195859(n)/2+n` -/
def P1584360343240148070.Spec : Prop :=
  ∀ n, P1584360343240148070.a n = (A168067 n : ℚ)

end A168067

/-! ## A168067.P5931206576195449720

`n/2*A258806(n)`
-/

namespace A168067.P5931206576195449720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A258806 n : ℚ)

end

end A168067.P5931206576195449720

namespace A168067

/-- `n/2*A258806(n)` -/
def P5931206576195449720.Spec : Prop :=
  ∀ n, P5931206576195449720.a n = (A168067 n : ℚ)

end A168067

/-! ## A168067.P11283967505879774946

`floor((A060890(n)+n)/2)`
-/

namespace A168067.P11283967505879774946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060890 n + (n : ℤ) : ℚ) / 2⌋

end

end A168067.P11283967505879774946

namespace A168067

/-- `floor((A060890(n)+n)/2)` -/
def P11283967505879774946.Spec : Prop :=
  ∀ n, P11283967505879774946.a n = A168067 n

end A168067

/-! ## A168067.P6048087047766336586

`A168124(n)+n-∑[n]`
-/

namespace A168067.P6048087047766336586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168124 n + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A168067.P6048087047766336586

namespace A168067

/-- `A168124(n)+n-∑[n]` -/
def P6048087047766336586.Spec : Prop :=
  ∀ n, P6048087047766336586.a n = A168067 n

end A168067

/-! ## A168067.P14909636724931805954

`A168180(n)-A135503(n)`
-/

namespace A168067.P14909636724931805954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168180 n - A135503 n

end

end A168067.P14909636724931805954

namespace A168067

/-- `A168180(n)-A135503(n)` -/
def P14909636724931805954.Spec : Prop :=
  ∀ n, P14909636724931805954.a n = A168067 n

end A168067

/-! ## A168067.P9633103264547115836

`A170775(n)%A059839(n)`
-/

namespace A168067.P9633103264547115836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A170775 n) (A059839 n)

end

end A168067.P9633103264547115836

namespace A168067

/-- `A170775(n)%A059839(n)` -/
def P9633103264547115836.Spec : Prop :=
  ∀ n, P9633103264547115836.a n = A168067 n

end A168067

/-! ## A168067.P9440850834722810114

`A170774(n)%A102909(n)`
-/

namespace A168067.P9440850834722810114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A170774 n) (A102909 n)

end

end A168067.P9440850834722810114

namespace A168067

/-- `A170774(n)%A102909(n)` -/
def P9440850834722810114.Spec : Prop :=
  ∀ n, P9440850834722810114.a n = A168067 n

end A168067

/-! ## A168067.P2625984238210937207

`n*A168029(n)-A161680(n)`
-/

namespace A168067.P2625984238210937207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168029 n - A161680 n

end

end A168067.P2625984238210937207

namespace A168067

/-- `n*A168029(n)-A161680(n)` -/
def P2625984238210937207.Spec : Prop :=
  ∀ n, P2625984238210937207.a n = A168067 n

end A168067

/-! ## A168067.P7458647083739393452

`n²*A167963(n)-A135503(n)`
-/

namespace A168067.P7458647083739393452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A167963 n - A135503 n

end

end A168067.P7458647083739393452

namespace A168067

/-- `n²*A167963(n)-A135503(n)` -/
def P7458647083739393452.Spec : Prop :=
  ∀ n, P7458647083739393452.a n = A168067 n

end A168067

/-! ## A168067.P10991169258137412388

`A000217(n)+A071231(n)-A037270(n)`
-/

namespace A168067.P10991169258137412388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A071231 n - A037270 n)

end

end A168067.P10991169258137412388

namespace A168067

/-- `A000217(n)+A071231(n)-A037270(n)` -/
def P10991169258137412388.Spec : Prop :=
  ∀ n, P10991169258137412388.a n = A168067 n

end A168067

/-! ## A168067.P8319036428141761922

`A027441(n)+A168124(n)-A037270(n)`
-/

namespace A168067.P8319036428141761922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027441 n + (A168124 n - A037270 n)

end

end A168067.P8319036428141761922

namespace A168067

/-- `A027441(n)+A168124(n)-A037270(n)` -/
def P8319036428141761922.Spec : Prop :=
  ∀ n, P8319036428141761922.a n = A168067 n

end A168067

/-! ## A168067.P1268159053267300923

`A168029(n)+A168527(n)-A168526(n)`
-/

namespace A168067.P1268159053267300923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168029 n + (A168527 n - A168526 n)

end

end A168067.P1268159053267300923

namespace A168067

/-- `A168029(n)+A168527(n)-A168526(n)` -/
def P1268159053267300923.Spec : Prop :=
  ∀ n, P1268159053267300923.a n = A168067 n

end A168067

/-! ## A168067.P15327847867803583967

`A168116(n+1)/A196290(n+1)*A196288(n)`
-/

namespace A168067.P15327847867803583967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168116 (n + 1) : ℚ) / (A196290 (n + 1) : ℚ) * (A196288 n : ℚ)

end

end A168067.P15327847867803583967

namespace A168067

/-- `A168116(n+1)/A196290(n+1)*A196288(n)` -/
def P15327847867803583967.Spec : Prop :=
  ∀ n, P15327847867803583967.a n = (A168067 n : ℚ)

end A168067

/-! ## A168067.P7711942846706164966

`A168118(n+1)/A196292(n+1)*A196288(n)`
-/

namespace A168067.P7711942846706164966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168118 (n + 1) : ℚ) / (A196292 (n + 1) : ℚ) * (A196288 n : ℚ)

end

end A168067.P7711942846706164966

namespace A168067

/-- `A168118(n+1)/A196292(n+1)*A196288(n)` -/
def P7711942846706164966.Spec : Prop :=
  ∀ n, P7711942846706164966.a n = (A168067 n : ℚ)

end A168067

/-!
# A168068: Array T(n,k) read by antidiagonals: T(n,2k+1) = 2k+1. T(n,2k) = 2^n*k.

The programs for A168068, there is no canonical definition to state claims against.
-/

/-! ## A168068.P10638364520121671011

`A001511(A229194(n))*A340666(n)`
-/

namespace A168068.P10638364520121671011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A229194 n).toNat * A340666 n

end

end A168068.P10638364520121671011

/-! ## A168068.P8165200385782397581

`A325509(A147510(n+1))*A340666(n)`
-/

namespace A168068.P8165200385782397581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325509 (A147510 (n + 1)).toNat * A340666 n

end

end A168068.P8165200385782397581

/-! ## A168068.P16598312940493259119

`lcm(A334947(A224065(n+1)), A340666(n))`
-/

namespace A168068.P16598312940493259119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A334947 (A224065 (n + 1)).toNat) (A340666 n)

end

end A168068.P16598312940493259119

/-! ## A168068.P6896177470287334898

`A340666(n)+A284258(A199656(n+1))`
-/

namespace A168068.P6896177470287334898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340666 n + A284258 (A199656 (n + 1)).toNat

end

end A168068.P6896177470287334898

/-! ## A168068.P7948417429759708610

`A044933(A164261(n))`
-/

namespace A168068.P7948417429759708610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044933 (A164261 n).toNat

end

end A168068.P7948417429759708610

/-!
# A168071: Expansion of (1-3*x^2-4*x^3)/((1-x)^2*(1+x+x^2)).

The programs for A168071, the canonical program `A168071.P16565103170023165696` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168071 has offset 0).

The definition of A168071 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x^2-4x^3)/(1-x-x^3+x^4))` (program `A168071.P16565103170023165696`, by `A168071.P16565103170023165696.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168071.P16565103170023165696

`ogf((1-3x^2-4x^3)/(1-x-x^3+x^4))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168071

/-- `ogf((1-3x^2-4x^3)/(1-x-x^3+x^4))` -/
def P16565103170023165696.Spec : Prop :=
  ∀ n, P16565103170023165696.a n = A168071 n

theorem P16565103170023165696.correct : P16565103170023165696.Spec := by
  intro n
  simp only [A168071]

end A168071

/-! ## A168071.P9419328993683071350

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=-2, a(3)=-5`
-/

namespace A168071.P9419328993683071350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -2, -5] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A168071.P9419328993683071350

namespace A168071

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P9419328993683071350.Spec : Prop :=
  ∀ n, P9419328993683071350.a n = A168071 n

end A168071

/-! ## A168071.P8368581543241535387

`A168072(n)/3^n`
-/

namespace A168071.P8368581543241535387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168072 n : ℚ) / (3 ^ n : ℚ)

end

end A168071.P8368581543241535387

namespace A168071

/-- `A168072(n)/3^n` -/
def P8368581543241535387.Spec : Prop :=
  ∀ n, P8368581543241535387.a n = (A168071 n : ℚ)

end A168071

/-! ## A168071.P11796150827647595763

`4-∑[C(gcd(3, ∑[n]), 2)]`
-/

namespace A168071.P11796150827647595763
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.gcd 3 (∑ j ∈ Finset.range (n + 1), f2 j)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A168071.P11796150827647595763

namespace A168071

/-- `4-∑[C(gcd(3, ∑[n]), 2)]` -/
def P11796150827647595763.Spec : Prop :=
  ∀ n, P11796150827647595763.a n = A168071 n

end A168071

/-! ## A168071.P3240356718053197250

`a(n-3)-6` with `a(0)=1, a(1)=1, a(2)=-2`
-/

namespace A168071.P3240356718053197250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -2] fun n a =>
  a (n - 3) - 6

end

end A168071.P3240356718053197250

namespace A168071

/-- `a(n-3)-6` -/
def P3240356718053197250.Spec : Prop :=
  ∀ n, P3240356718053197250.a n = A168071 n

end A168071

/-! ## A168071.P13329662388787624048

`1-3*floor(2*n/3)`
-/

namespace A168071.P13329662388787624048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 3 * ⌊2 * ((n : ℚ) / 3)⌋

end

end A168071.P13329662388787624048

namespace A168071

/-- `1-3*floor(2*n/3)` -/
def P13329662388787624048.Spec : Prop :=
  ∀ n, P13329662388787624048.a n = A168071 n

end A168071

/-! ## A168071.P18273131838614733132

`-(A236348(n)-2+n)`
-/

namespace A168071.P18273131838614733132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A236348 n - 2 + (n : ℤ))

end

end A168071.P18273131838614733132

namespace A168071

/-- `-(A236348(n)-2+n)` -/
def P18273131838614733132.Spec : Prop :=
  ∀ n, P18273131838614733132.a n = A168071 n

end A168071

/-! ## A168071.P9638603851904944068

`or((2*n)%3-n-(n-1), A000007(n))`
-/

namespace A168071.P9638603851904944068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (((2 * n % 3 : ℕ) : ℤ) - (n : ℤ) - ((n : ℤ) - 1)) (A000007 n)

end

end A168071.P9638603851904944068

namespace A168071

/-- `or((2*n)%3-n-(n-1), A000007(n))` -/
def P9638603851904944068.Spec : Prop :=
  ∀ n, P9638603851904944068.a n = A168071 n

end A168071

/-! ## A168071.P1291513692935901703

`(2-A061891(n))%A099349(n+1)`
-/

namespace A168071.P1291513692935901703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 - A061891 n) (A099349 (n + 1))

end

end A168071.P1291513692935901703

namespace A168071

/-- `(2-A061891(n))%A099349(n+1)` -/
def P1291513692935901703.Spec : Prop :=
  ∀ n, P1291513692935901703.a n = A168071 n

end A168071

/-! ## A168071.P12575356121129124319

`-(A080782(n+2)+n-4)`
-/

namespace A168071.P12575356121129124319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A080782 (n + 2) + ((n : ℤ) - 4))

end

end A168071.P12575356121129124319

namespace A168071

/-- `-(A080782(n+2)+n-4)` -/
def P12575356121129124319.Spec : Prop :=
  ∀ n, P12575356121129124319.a n = A168071 n

end A168071

/-! ## A168071.P12844218121453917307

`Δ[4*n-((n+1)²-A117571(n))]`
-/

namespace A168071.P12844218121453917307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - (((n + 1) ^ 2 : ℤ) - A117571 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168071.P12844218121453917307

namespace A168071

/-- `Δ[4*n-((n+1)²-A117571(n))]` -/
def P12844218121453917307.Spec : Prop :=
  ∀ n, P12844218121453917307.a n = A168071 n

end A168071

/-! ## A168071.P6251367857150855617

`Δ[A047268(n+1)-A002061(n)]`
-/

namespace A168071.P6251367857150855617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047268 (n + 1) - A002061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168071.P6251367857150855617

namespace A168071

/-- `Δ[A047268(n+1)-A002061(n)]` -/
def P6251367857150855617.Spec : Prop :=
  ∀ n, P6251367857150855617.a n = A168071 n

end A168071

/-! ## A168071.P16598332532330479714

`Δ[A304809(n+2)-(n+2)²]`
-/

namespace A168071.P16598332532330479714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304809 (n + 2) - ((n + 2) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168071.P16598332532330479714

namespace A168071

/-- `Δ[A304809(n+2)-(n+2)²]` -/
def P16598332532330479714.Spec : Prop :=
  ∀ n, P16598332532330479714.a n = A168071 n

end A168071

/-! ## A168071.P12263108236600006466

`A024000(3*A004523(n))`
-/

namespace A168071.P12263108236600006466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (3 * A004523 n).toNat

end

end A168071.P12263108236600006466

namespace A168071

/-- `A024000(3*A004523(n))` -/
def P12263108236600006466.Spec : Prop :=
  ∀ n, P12263108236600006466.a n = A168071 n

end A168071

/-! ## A168071.P11195974754987805820

`∑[2-A131296(2*n+1)]`
-/

namespace A168071.P11195974754987805820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A131296 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168071.P11195974754987805820

namespace A168071

/-- `∑[2-A131296(2*n+1)]` -/
def P11195974754987805820.Spec : Prop :=
  ∀ n, P11195974754987805820.a n = A168071 n

end A168071

/-! ## A168071.P9919049893089585866

`A022958(A061891(n))`
-/

namespace A168071.P9919049893089585866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (A061891 n).toNat

end

end A168071.P9919049893089585866

namespace A168071

/-- `A022958(A061891(n))` -/
def P9919049893089585866.Spec : Prop :=
  ∀ n, P9919049893089585866.a n = A168071 n

end A168071

/-! ## A168071.P3148716377968468955

`A022960(A136289(n))`
-/

namespace A168071.P3148716377968468955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022960 (A136289 n).toNat

end

end A168071.P3148716377968468955

namespace A168071

/-- `A022960(A136289(n))` -/
def P3148716377968468955.Spec : Prop :=
  ∀ n, P3148716377968468955.a n = A168071 n

end A168071

/-! ## A168071.P105201992353646495

`∑[(2-A000045(2*n+1))%4]`
-/

namespace A168071.P105201992353646495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 - A000045 (2 * n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168071.P105201992353646495

namespace A168071

/-- `∑[(2-A000045(2*n+1))%4]` -/
def P105201992353646495.Spec : Prop :=
  ∀ n, P105201992353646495.a n = A168071 n

end A168071

/-! ## A168071.P15890392860650616390

`A168053(n)/A171557(n)*A168072(n)`
-/

namespace A168071.P15890392860650616390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168053 n : ℚ) / (A171557 n : ℚ) * (A168072 n : ℚ)

end

end A168071.P15890392860650616390

namespace A168071

/-- `A168053(n)/A171557(n)*A168072(n)` -/
def P15890392860650616390.Spec : Prop :=
  ∀ n, P15890392860650616390.a n = (A168071 n : ℚ)

end A168071

/-! ## A168071.P11001048134445007236

`∑[A004489(∑[n+1]+2)-(n+1)]`
-/

namespace A168071.P11001048134445007236
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004489 (∑ j ∈ Finset.range (n + 1), f2 j + 2) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168071.P11001048134445007236

namespace A168071

/-- `∑[A004489(∑[n+1]+2)-(n+1)]` -/
def P11001048134445007236.Spec : Prop :=
  ∀ n, P11001048134445007236.a n = A168071 n

end A168071

/-!
# A168072: Expansion of (1-27x^2-108x^3)/((1-3x)^2*(1+3x+9x^2)).

The programs for A168072, the canonical program `A168072.P9136903090417513791` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168072 has offset 0).

The definition of A168072 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168072.P9515565389109768566

`3^n*(sin(2*π*n/3)/sqrt(3)-cos(2*π*n/3)-2*n+2)`
-/

namespace A168072.P9515565389109768566
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℝ) * (Real.sin (2 * Real.pi * (n : ℝ) / 3) / Real.sqrt (3 : ℝ) - Real.cos (2 * Real.pi * (n : ℝ) / 3) - (2 * n : ℝ) + 2)

end

end A168072.P9515565389109768566

namespace A168072

/-- `3^n*(sin(2*π*n/3)/sqrt(3)-cos(2*π*n/3)-2*n+2)` -/
def P9515565389109768566.Spec : Prop :=
  ∀ n, P9515565389109768566.a n = (A168072 n : ℝ)

end A168072

/-! ## A168072.P9136903090417513791

`3^n*A168071(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A168072

/-- `3^n*A168071(n)` -/
def P9136903090417513791.Spec : Prop :=
  ∀ n, P9136903090417513791.a n = A168072 n

theorem P9136903090417513791.correct : P9136903090417513791.Spec := by
  intro n
  simp only [A168072]

end A168072

/-! ## A168072.P12932547638808733138

`(4-∑[C(gcd(3, ∑[n]), 2)])*3^n`
-/

namespace A168072.P12932547638808733138
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.gcd 3 (∑ j ∈ Finset.range (n + 1), f2 j)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) * (3 ^ n : ℤ)

end

end A168072.P12932547638808733138

namespace A168072

/-- `(4-∑[C(gcd(3, ∑[n]), 2)])*3^n` -/
def P12932547638808733138.Spec : Prop :=
  ∀ n, P12932547638808733138.a n = A168072 n

end A168072

/-! ## A168072.P8577645809921973064

`(2-A061891(n))*3^n`
-/

namespace A168072.P8577645809921973064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A061891 n) * (3 ^ n : ℤ)

end

end A168072.P8577645809921973064

namespace A168072

/-- `(2-A061891(n))*3^n` -/
def P8577645809921973064.Spec : Prop :=
  ∀ n, P8577645809921973064.a n = A168072 n

end A168072

/-! ## A168072.P508988252824881410

`A000244(n)-A000244(n+1)*A004523(n)`
-/

namespace A168072.P508988252824881410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - A000244 (n + 1) * A004523 n

end

end A168072.P508988252824881410

namespace A168072

/-- `A000244(n)-A000244(n+1)*A004523(n)` -/
def P508988252824881410.Spec : Prop :=
  ∀ n, P508988252824881410.a n = A168072 n

end A168072

/-! ## A168072.P17189174482242502181

`A168071(n)/A168053(n)*A171557(n)`
-/

namespace A168072.P17189174482242502181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168071 n : ℚ) / (A168053 n : ℚ) * (A171557 n : ℚ)

end

end A168072.P17189174482242502181

namespace A168072

/-- `A168071(n)/A168053(n)*A171557(n)` -/
def P17189174482242502181.Spec : Prop :=
  ∀ n, P17189174482242502181.a n = (A168072 n : ℚ)

end A168072

/-!
# A168073: Expansion of 1 + 3*(1-x-sqrt(1-2*x-3*x^2))/2.

The programs for A168073, the canonical program `A168073.P17632893850373817048` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168073 has offset 0).

The definition of A168073 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168073.P17632893850373817048

`((2*n-3)*a(n-1)+(3*n-9)*a(n-2))/n` with `a(0)=1, a(1)=0, a(2)=3`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168073

/-- `((2*n-3)*a(n-1)+(3*n-9)*a(n-2))/n` -/
def P17632893850373817048.Spec : Prop :=
  ∀ n, P17632893850373817048.a n = (A168073 n : ℚ)

end A168073

/-! ## A168073.P656294652398898724

`abs(A168076(n))`
-/

namespace A168073.P656294652398898724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168076 n|

end

end A168073.P656294652398898724

namespace A168073

/-- `abs(A168076(n))` -/
def P656294652398898724.Spec : Prop :=
  ∀ n, P656294652398898724.a n = A168073 n

end A168073

/-! ## A168073.P13838039945939697947

`A168049(n)+A126068(n)`
-/

namespace A168073.P13838039945939697947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 n + A126068 n

end

end A168073.P13838039945939697947

namespace A168073

/-- `A168049(n)+A126068(n)` -/
def P13838039945939697947.Spec : Prop :=
  ∀ n, P13838039945939697947.a n = A168073 n

end A168073

/-! ## A168073.P15278946554083925405

`A000038(n)-A168076(n)`
-/

namespace A168073.P15278946554083925405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A168076 n

end

end A168073.P15278946554083925405

namespace A168073

/-- `A000038(n)-A168076(n)` -/
def P15278946554083925405.Spec : Prop :=
  ∀ n, P15278946554083925405.a n = A168073 n

end A168073

/-! ## A168073.P10500380833821401192

`A122553(n)*A168049(n)`
-/

namespace A168073.P10500380833821401192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n * A168049 n

end

end A168073.P10500380833821401192

namespace A168073

/-- `A122553(n)*A168049(n)` -/
def P10500380833821401192.Spec : Prop :=
  ∀ n, P10500380833821401192.a n = A168073 n

end A168073

/-! ## A168073.P597887429069277263

`A158799(n)*A168049(n)`
-/

namespace A168073.P597887429069277263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158799 n * A168049 n

end

end A168073.P597887429069277263

namespace A168073

/-- `A158799(n)*A168049(n)` -/
def P597887429069277263.Spec : Prop :=
  ∀ n, P597887429069277263.a n = A168073 n

end A168073

/-! ## A168073.P17062573738247948862

`A168076(n)*A260196(n)`
-/

namespace A168073.P17062573738247948862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168076 n * A260196 n

end

end A168073.P17062573738247948862

namespace A168073

/-- `A168076(n)*A260196(n)` -/
def P17062573738247948862.Spec : Prop :=
  ∀ n, P17062573738247948862.a n = A168073 n

end A168073

/-! ## A168073.P14396948446850903930

`lcm(A010684(n), A168076(n))`
-/

namespace A168073.P14396948446850903930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010684 n) (A168076 n)

end

end A168073.P14396948446850903930

namespace A168073

/-- `lcm(A010684(n), A168076(n))` -/
def P14396948446850903930.Spec : Prop :=
  ∀ n, (P14396948446850903930.a n : ℤ) = A168073 n

end A168073

/-! ## A168073.P5982491541386222717

`A126068(n)+abs(A168051(n))`
-/

namespace A168073.P5982491541386222717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126068 n + |A168051 n|

end

end A168073.P5982491541386222717

namespace A168073

/-- `A126068(n)+abs(A168051(n))` -/
def P5982491541386222717.Spec : Prop :=
  ∀ n, P5982491541386222717.a n = A168073 n

end A168073

/-! ## A168073.P7742605987525261388

`A153881(n+1)*A168076(n)`
-/

namespace A168073.P7742605987525261388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) * A168076 n

end

end A168073.P7742605987525261388

namespace A168073

/-- `A153881(n+1)*A168076(n)` -/
def P7742605987525261388.Spec : Prop :=
  ∀ n, P7742605987525261388.a n = A168073 n

end A168073

/-! ## A168073.P13256573659870029504

`(2-A122553(n))*A168076(n)`
-/

namespace A168073.P13256573659870029504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A122553 n) * A168076 n

end

end A168073.P13256573659870029504

namespace A168073

/-- `(2-A122553(n))*A168076(n)` -/
def P13256573659870029504.Spec : Prop :=
  ∀ n, P13256573659870029504.a n = A168073 n

end A168073

/-! ## A168073.P2955207455449170139

`A168055(n)+A126068(n)/2`
-/

namespace A168073.P2955207455449170139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168055 n : ℚ) + (A126068 n : ℚ) / 2

end

end A168073.P2955207455449170139

namespace A168073

/-- `A168055(n)+A126068(n)/2` -/
def P2955207455449170139.Spec : Prop :=
  ∀ n, P2955207455449170139.a n = (A168073 n : ℚ)

end A168073

/-! ## A168073.P1698697338606358884

`(2-A158799(n))*A168076(n)`
-/

namespace A168073.P1698697338606358884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A158799 n) * A168076 n

end

end A168073.P1698697338606358884

namespace A168073

/-- `(2-A158799(n))*A168076(n)` -/
def P1698697338606358884.Spec : Prop :=
  ∀ n, P1698697338606358884.a n = A168073 n

end A168073

/-! ## A168073.P13079328574023730494

`2*A168049(n)-A168051(n)`
-/

namespace A168073.P13079328574023730494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168049 n - A168051 n

end

end A168073.P13079328574023730494

namespace A168073

/-- `2*A168049(n)-A168051(n)` -/
def P13079328574023730494.Spec : Prop :=
  ∀ n, P13079328574023730494.a n = A168073 n

end A168073

/-! ## A168073.P6616229906517521417

`2*A168055(n)-A168049(n)`
-/

namespace A168073.P6616229906517521417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168055 n - A168049 n

end

end A168073.P6616229906517521417

namespace A168073

/-- `2*A168055(n)-A168049(n)` -/
def P6616229906517521417.Spec : Prop :=
  ∀ n, P6616229906517521417.a n = A168073 n

end A168073

/-! ## A168073.P3694803511920901603

`(2-A260196(n))*A168049(n)`
-/

namespace A168073.P3694803511920901603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A260196 n) * A168049 n

end

end A168073.P3694803511920901603

namespace A168073

/-- `(2-A260196(n))*A168049(n)` -/
def P3694803511920901603.Spec : Prop :=
  ∀ n, P3694803511920901603.a n = A168073 n

end A168073

/-! ## A168073.P15529032255499723196

`A007971(n)+A168049(n)-char[1]`
-/

namespace A168073.P15529032255499723196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007971 n + (A168049 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A168073.P15529032255499723196

namespace A168073

/-- `A007971(n)+A168049(n)-char[1]` -/
def P15529032255499723196.Spec : Prop :=
  ∀ n, P15529032255499723196.a n = A168073 n

end A168073

/-! ## A168073.P11600870731574629854

`(2-A153881(n+1))*A168049(n)`
-/

namespace A168073.P11600870731574629854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A153881 (n + 1)) * A168049 n

end

end A168073.P11600870731574629854

namespace A168073

/-- `(2-A153881(n+1))*A168049(n)` -/
def P11600870731574629854.Spec : Prop :=
  ∀ n, P11600870731574629854.a n = A168073 n

end A168073

/-! ## A168073.P15741836599643590542

`gcd(A008683(A008574(n)), A168076(n))`
-/

namespace A168073.P15741836599643590542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (A008574 n).toNat) (A168076 n)

end

end A168073.P15741836599643590542

namespace A168073

/-- `gcd(A008683(A008574(n)), A168076(n))` -/
def P15741836599643590542.Spec : Prop :=
  ∀ n, (P15741836599643590542.a n : ℤ) = A168073 n

end A168073

/-! ## A168073.P14045098858790859945

`A168049(n)+2*A168049(A028310(n))`
-/

namespace A168073.P14045098858790859945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 n + 2 * A168049 (A028310 n).toNat

end

end A168073.P14045098858790859945

namespace A168073

/-- `A168049(n)+2*A168049(A028310(n))` -/
def P14045098858790859945.Spec : Prop :=
  ∀ n, P14045098858790859945.a n = A168073 n

end A168073

/-!
# A168075: Expansion of (1+27x^2-54x^3)/((1+3x)^2*(1-3x+9 x^2)).

The programs for A168075, the canonical program `A168075.P14559982728873758524` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168075 has offset 0).

The definition of A168075 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+27x^2-54x^3)/(1+3x+27x^3+81x^4))` (program `A168075.P14559982728873758524`, by `A168075.P14559982728873758524.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168075.P2902331019020635379

`2*(-3)^n*n+3^n*(sin(π*n/3)/sqrt(3)+cos(π*n/3))`
-/

namespace A168075.P2902331019020635379
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * (-3) ^ n * (n : ℤ) : ℝ) + (3 ^ n : ℝ) * (Real.sin (Real.pi * (n : ℝ) / 3) / Real.sqrt (3 : ℝ) + Real.cos (Real.pi * (n : ℝ) / 3))

end

end A168075.P2902331019020635379

namespace A168075

/-- `2*(-3)^n*n+3^n*(sin(π*n/3)/sqrt(3)+cos(π*n/3))` -/
def P2902331019020635379.Spec : Prop :=
  ∀ n, P2902331019020635379.a n = (A168075 n : ℝ)

end A168075

/-! ## A168075.P3691510079770784157

`(-3)^n*A061891(n)`
-/

namespace A168075.P3691510079770784157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-3) ^ n * A061891 n

end

end A168075.P3691510079770784157

namespace A168075

/-- `(-3)^n*A061891(n)` -/
def P3691510079770784157.Spec : Prop :=
  ∀ n, P3691510079770784157.a n = A168075 n

end A168075

/-! ## A168075.P14559982728873758524

`ogf((1+27x^2-54x^3)/(1+3x+27x^3+81x^4))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168075

/-- `ogf((1+27x^2-54x^3)/(1+3x+27x^3+81x^4))` -/
def P14559982728873758524.Spec : Prop :=
  ∀ n, P14559982728873758524.a n = A168075 n

theorem P14559982728873758524.correct : P14559982728873758524.Spec := by
  intro n
  simp only [A168075]

end A168075

/-! ## A168075.P3477368457728960454

`A061891(n)*A352779(n)`
-/

namespace A168075.P3477368457728960454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061891 n * A352779 n

end

end A168075.P3477368457728960454

namespace A168075

/-- `A061891(n)*A352779(n)` -/
def P3477368457728960454.Spec : Prop :=
  ∀ n, P3477368457728960454.a n = A168075 n

end A168075

/-! ## A168075.P8127003778438814522

`(-3)^n*A016777(A004523(n))`
-/

namespace A168075.P8127003778438814522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-3) ^ n * A016777 (A004523 n).toNat

end

end A168075.P8127003778438814522

namespace A168075

/-- `(-3)^n*A016777(A004523(n))` -/
def P8127003778438814522.Spec : Prop :=
  ∀ n, P8127003778438814522.a n = A168075 n

end A168075

/-! ## A168075.P8141474938093722957

`(A117855(Δ[n²])-A168072(n))*A033999(n)`
-/

namespace A168075.P8141474938093722957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A117855 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A168072 n) * A033999 n

end

end A168075.P8141474938093722957

namespace A168075

/-- `(A117855(Δ[n²])-A168072(n))*A033999(n)` -/
def P8141474938093722957.Spec : Prop :=
  ∀ n, P8141474938093722957.a n = A168075 n

end A168075

/-! ## A168075.P6588436685481525357

`(A117855(2*(n+1))-A168072(n))/A033999(n)`
-/

namespace A168075.P6588436685481525357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117855 (2 * (n + 1)) - A168072 n : ℚ) / (A033999 n : ℚ)

end

end A168075.P6588436685481525357

namespace A168075

/-- `(A117855(2*(n+1))-A168072(n))/A033999(n)` -/
def P6588436685481525357.Spec : Prop :=
  ∀ n, P6588436685481525357.a n = (A168075 n : ℚ)

end A168075

/-!
# A168076: Expansion of 1 - 3*(1-x-sqrt(1-2*x-3*x^2))/2.

The programs for A168076, the canonical program `A168076.P6252607878974062791` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168076 has offset 0).

The definition of A168076 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168076.P6252607878974062791

`A000038(n)-A168073(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A168076

/-- `A000038(n)-A168073(n)` -/
def P6252607878974062791.Spec : Prop :=
  ∀ n, P6252607878974062791.a n = A168076 n

theorem P6252607878974062791.correct : P6252607878974062791.Spec := by
  intro n
  simp only [A168076]

end A168076

/-! ## A168076.P13556848996200665643

`A168051(n)-A126068(n)`
-/

namespace A168076.P13556848996200665643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168051 n - A126068 n

end

end A168076.P13556848996200665643

namespace A168076

/-- `A168051(n)-A126068(n)` -/
def P13556848996200665643.Spec : Prop :=
  ∀ n, P13556848996200665643.a n = A168076 n

end A168076

/-! ## A168076.P10341564639557435986

`A122553(n)*A168051(n)`
-/

namespace A168076.P10341564639557435986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n * A168051 n

end

end A168076.P10341564639557435986

namespace A168076

/-- `A122553(n)*A168051(n)` -/
def P10341564639557435986.Spec : Prop :=
  ∀ n, P10341564639557435986.a n = A168076 n

end A168076

/-! ## A168076.P13070004857600554329

`A158799(n)*A168051(n)`
-/

namespace A168076.P13070004857600554329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158799 n * A168051 n

end

end A168076.P13070004857600554329

namespace A168076

/-- `A158799(n)*A168051(n)` -/
def P13070004857600554329.Spec : Prop :=
  ∀ n, P13070004857600554329.a n = A168076 n

end A168076

/-! ## A168076.P4364036551250238962

`A168073(n)*A260196(n)`
-/

namespace A168076.P4364036551250238962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168073 n * A260196 n

end

end A168076.P4364036551250238962

namespace A168076

/-- `A168073(n)*A260196(n)` -/
def P4364036551250238962.Spec : Prop :=
  ∀ n, P4364036551250238962.a n = A168076 n

end A168076

/-! ## A168076.P7401164980918415117

`A153881(n+1)*A168073(n)`
-/

namespace A168076.P7401164980918415117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) * A168073 n

end

end A168076.P7401164980918415117

namespace A168076

/-- `A153881(n+1)*A168073(n)` -/
def P7401164980918415117.Spec : Prop :=
  ∀ n, P7401164980918415117.a n = A168076 n

end A168076

/-! ## A168076.P4674715277585189736

`(2-A122553(n))*A168073(n)`
-/

namespace A168076.P4674715277585189736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A122553 n) * A168073 n

end

end A168076.P4674715277585189736

namespace A168076

/-- `(2-A122553(n))*A168073(n)` -/
def P4674715277585189736.Spec : Prop :=
  ∀ n, P4674715277585189736.a n = A168076 n

end A168076

/-! ## A168076.P10570416073524753256

`A168049(n)-2*A126068(n)`
-/

namespace A168076.P10570416073524753256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 n - 2 * A126068 n

end

end A168076.P10570416073524753256

namespace A168076

/-- `A168049(n)-2*A126068(n)` -/
def P10570416073524753256.Spec : Prop :=
  ∀ n, P10570416073524753256.a n = A168076 n

end A168076

/-! ## A168076.P725924643994603749

`2*A168051(n)-A168049(n)`
-/

namespace A168076.P725924643994603749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168051 n - A168049 n

end

end A168076.P725924643994603749

namespace A168076

/-- `2*A168051(n)-A168049(n)` -/
def P725924643994603749.Spec : Prop :=
  ∀ n, P725924643994603749.a n = A168076 n

end A168076

/-! ## A168076.P544465986439439608

`2*A168058(n)-A168051(n)`
-/

namespace A168076.P544465986439439608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168058 n - A168051 n

end

end A168076.P544465986439439608

namespace A168076

/-- `2*A168058(n)-A168051(n)` -/
def P544465986439439608.Spec : Prop :=
  ∀ n, P544465986439439608.a n = A168076 n

end A168076

/-! ## A168076.P7271540841224237001

`(2-A260196(n))*A168051(n)`
-/

namespace A168076.P7271540841224237001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A260196 n) * A168051 n

end

end A168076.P7271540841224237001

namespace A168076

/-- `(2-A260196(n))*A168051(n)` -/
def P7271540841224237001.Spec : Prop :=
  ∀ n, P7271540841224237001.a n = A168076 n

end A168076

/-! ## A168076.P16488544518586140525

`A168058(n)-A126068(n)/2`
-/

namespace A168076.P16488544518586140525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168058 n : ℚ) - (A126068 n : ℚ) / 2

end

end A168076.P16488544518586140525

namespace A168076

/-- `A168058(n)-A126068(n)/2` -/
def P16488544518586140525.Spec : Prop :=
  ∀ n, P16488544518586140525.a n = (A168076 n : ℚ)

end A168076

/-! ## A168076.P3026009047423393232

`(2-A153881(n+1))*A168051(n)`
-/

namespace A168076.P3026009047423393232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A153881 (n + 1)) * A168051 n

end

end A168076.P3026009047423393232

namespace A168076

/-- `(2-A153881(n+1))*A168051(n)` -/
def P3026009047423393232.Spec : Prop :=
  ∀ n, P3026009047423393232.a n = A168076 n

end A168076

/-! ## A168076.P16132938935241822336

`A115716(A008574(n))*A168051(n)`
-/

namespace A168076.P16132938935241822336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115716 (A008574 n).toNat * A168051 n

end

end A168076.P16132938935241822336

namespace A168076

/-- `A115716(A008574(n))*A168051(n)` -/
def P16132938935241822336.Spec : Prop :=
  ∀ n, P16132938935241822336.a n = A168076 n

end A168076

/-! ## A168076.P3289868696299182096

`A168049(n)+A168058(n)-A168055(n)`
-/

namespace A168076.P3289868696299182096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 n + (A168058 n - A168055 n)

end

end A168076.P3289868696299182096

namespace A168076

/-- `A168049(n)+A168058(n)-A168055(n)` -/
def P3289868696299182096.Spec : Prop :=
  ∀ n, P3289868696299182096.a n = A168076 n

end A168076

/-! ## A168076.P13625864174628099299

`A168049(n)+A168051(n)-A168073(n)`
-/

namespace A168076.P13625864174628099299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 n + (A168051 n - A168073 n)

end

end A168076.P13625864174628099299

namespace A168076

/-- `A168049(n)+A168051(n)-A168073(n)` -/
def P13625864174628099299.Spec : Prop :=
  ∀ n, P13625864174628099299.a n = A168076 n

theorem P13625864174628099299.correct : P13625864174628099299.Spec := by
  intro n
  simp only [A168076, Nat.add_sub_cancel, A168076.P13625864174628099299.a, A168076.P6252607878974062791.a, A000038, A000038.P13734959004655594922.a, A168049, A168049.P8332189401244449518.f1, A168049.P8332189401244449518.a, A168051, A168051.P12367257116989189767.a, A168073, A168073.P17632893850373817048.a, A000007, A000007.P6599383543502402472.a, A001006, A001006.P11199602840237397285.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A168076

/-! ## A168076.P17950963484223182071

`A168055(n)+A168058(n)-A168073(n)`
-/

namespace A168076.P17950963484223182071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168055 n + (A168058 n - A168073 n)

end

end A168076.P17950963484223182071

namespace A168076

/-- `A168055(n)+A168058(n)-A168073(n)` -/
def P17950963484223182071.Spec : Prop :=
  ∀ n, P17950963484223182071.a n = A168076 n

end A168076

/-! ## A168076.P7243776859496955935

`A167022(n)+A168058(n)-A292440(n)`
-/

namespace A168076.P7243776859496955935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167022 n + (A168058 n - A292440 n)

end

end A168076.P7243776859496955935

namespace A168076

/-- `A167022(n)+A168058(n)-A292440(n)` -/
def P7243776859496955935.Spec : Prop :=
  ∀ n, P7243776859496955935.a n = A168076 n

end A168076

/-! ## A168076.P11928130587618120435

`gcd(3, A001615(A001615(n+1)))*A168051(n)`
-/

namespace A168076.P11928130587618120435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A001615 (A001615 (n + 1)).toNat) : ℤ) * A168051 n

end

end A168076.P11928130587618120435

namespace A168076

/-- `gcd(3, A001615(A001615(n+1)))*A168051(n)` -/
def P11928130587618120435.Spec : Prop :=
  ∀ n, P11928130587618120435.a n = A168076 n

end A168076

/-! ## A168076.P3618956162202783830

`A006530(A003945(A056926(n)))*A168051(n)`
-/

namespace A168076.P3618956162202783830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A003945 (A056926 n).toNat).toNat * A168051 n

end

end A168076.P3618956162202783830

namespace A168076

/-- `A006530(A003945(A056926(n)))*A168051(n)` -/
def P3618956162202783830.Spec : Prop :=
  ∀ n, P3618956162202783830.a n = A168076 n

end A168076

/-!
# A168077: a(2n) = A129194(2n)/2; a(2n+1) = A129194(2n+1).

The programs for A168077, the canonical program `A168077.P7958937707597585952` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168077 has offset 0).

The definition of A168077 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168077.P6297184401262763340

`lcm(4, n²)/4`
-/

namespace A168077.P6297184401262763340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (n ^ 2) : ℚ) / 4

end

end A168077.P6297184401262763340

namespace A168077

/-- `lcm(4, n²)/4` -/
def P6297184401262763340.Spec : Prop :=
  ∀ n, P6297184401262763340.a n = (A168077 n : ℚ)

end A168077

/-! ## A168077.P17749357688530696255

`(n/gcd(n, 2))²`
-/

namespace A168077.P17749357688530696255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / (Nat.gcd n 2 : ℚ)) ^ 2

end

end A168077.P17749357688530696255

namespace A168077

/-- `(n/gcd(n, 2))²` -/
def P17749357688530696255.Spec : Prop :=
  ∀ n, P17749357688530696255.a n = (A168077 n : ℚ)

end A168077

/-! ## A168077.P15820383741168120058

`n²*(5-3*(-1)^n)/8`
-/

namespace A168077.P15820383741168120058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * (5 - 3 * (-1) ^ n) : ℚ) / 8

end

end A168077.P15820383741168120058

namespace A168077

/-- `n²*(5-3*(-1)^n)/8` -/
def P15820383741168120058.Spec : Prop :=
  ∀ n, P15820383741168120058.a n = (A168077 n : ℚ)

theorem P15820383741168120058.correct : P15820383741168120058.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 | 5 =>
      simp [A168077, Nat.add_sub_cancel, A168077.P15820383741168120058.a, A168077.P7958937707597585952.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 6 =>
      have h2 := ih (m + 4) (by omega)
      have h4 := ih (m + 2) (by omega)
      have h6 := ih m (by omega)
      simp only [A168077, Nat.add_sub_cancel, A168077.P15820383741168120058.a, A168077.P7958937707597585952.a, SequenceMachineLib.memo_apply] at h2 h4 h6 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 6 - 2 = m + 4 by omega, show m + 6 - 4 = m + 2 by omega, show m + 6 - 6 = m by omega, show m + 4 < m + 6 by omega, show m + 2 < m + 6 by omega, show m < m + 6 by omega, ↓reduceIte]
      push_cast at h2 h4 h6 ⊢
      rw [← h2, ← h4, ← h6]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A168077

/-! ## A168077.P7958937707597585952

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=9, a(4)=4, a(5)=25`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168077

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P7958937707597585952.Spec : Prop :=
  ∀ n, P7958937707597585952.a n = A168077 n

theorem P7958937707597585952.correct : P7958937707597585952.Spec := by
  intro n
  simp only [A168077]

end A168077

/-! ## A168077.P6999251140827712425

`A026741(n)²`
-/

namespace A168077.P6999251140827712425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n ^ 2

end

end A168077.P6999251140827712425

namespace A168077

/-- `A026741(n)²` -/
def P6999251140827712425.Spec : Prop :=
  ∀ n, P6999251140827712425.a n = A168077 n

end A168077

/-! ## A168077.P15206049632334713628

`gcd(n, ∑[n])²`
-/

namespace A168077.P15206049632334713628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A168077.P15206049632334713628

namespace A168077

/-- `gcd(n, ∑[n])²` -/
def P15206049632334713628.Spec : Prop :=
  ∀ n, (P15206049632334713628.a n : ℤ) = A168077 n

end A168077

/-! ## A168077.P13261512977143015608

`(n/or(n, -2))²`
-/

namespace A168077.P13261512977143015608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / (Int.lor (n : ℤ) (-2) : ℚ)) ^ 2

end

end A168077.P13261512977143015608

namespace A168077

/-- `(n/or(n, -2))²` -/
def P13261512977143015608.Spec : Prop :=
  ∀ n, P13261512977143015608.a n = (A168077 n : ℚ)

end A168077

/-! ## A168077.P14033225943009855762

`gcd(C(n, 2)², n²)`
-/

namespace A168077.P14033225943009855762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.choose n 2 ^ 2) (n ^ 2)

end

end A168077.P14033225943009855762

namespace A168077

/-- `gcd(C(n, 2)², n²)` -/
def P14033225943009855762.Spec : Prop :=
  ∀ n, (P14033225943009855762.a n : ℤ) = A168077 n

end A168077

/-! ## A168077.P17989667915750309359

`(n/(2-n%2))²`
-/

namespace A168077.P17989667915750309359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / (2 - ((n % 2 : ℕ) : ℤ) : ℚ)) ^ 2

end

end A168077.P17989667915750309359

namespace A168077

/-- `(n/(2-n%2))²` -/
def P17989667915750309359.Spec : Prop :=
  ∀ n, P17989667915750309359.a n = (A168077 n : ℚ)

end A168077

/-! ## A168077.P12897840744218475702

`(n/(and(1, n)-2))²`
-/

namespace A168077.P12897840744218475702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / ((Nat.land 1 n : ℤ) - 2 : ℚ)) ^ 2

end

end A168077.P12897840744218475702

namespace A168077

/-- `(n/(and(1, n)-2))²` -/
def P12897840744218475702.Spec : Prop :=
  ∀ n, P12897840744218475702.a n = (A168077 n : ℚ)

end A168077

/-! ## A168077.P4078157867366492266

`gcd(n^4, ∑[n^3])`
-/

namespace A168077.P4078157867366492266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n ^ 4) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168077.P4078157867366492266

namespace A168077

/-- `gcd(n^4, ∑[n^3])` -/
def P4078157867366492266.Spec : Prop :=
  ∀ n, (P4078157867366492266.a n : ℤ) = A168077 n

end A168077

/-! ## A168077.P11782138004276405177

`(n/2^and(1, n+1))²`
-/

namespace A168077.P11782138004276405177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / (2 ^ Nat.land 1 (n + 1) : ℚ)) ^ 2

end

end A168077.P11782138004276405177

namespace A168077

/-- `(n/2^and(1, n+1))²` -/
def P11782138004276405177.Spec : Prop :=
  ∀ n, P11782138004276405177.a n = (A168077 n : ℚ)

end A168077

/-! ## A168077.P3023583425366512630

`(n/C(2, and(1, n+1)))²`
-/

namespace A168077.P3023583425366512630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / (Nat.choose 2 (Nat.land 1 (n + 1)) : ℚ)) ^ 2

end

end A168077.P3023583425366512630

namespace A168077

/-- `(n/C(2, and(1, n+1)))²` -/
def P3023583425366512630.Spec : Prop :=
  ∀ n, P3023583425366512630.a n = (A168077 n : ℚ)

end A168077

/-! ## A168077.P2581992951143582623

`(n/val(2*or(2, n), 2))²`
-/

namespace A168077.P2581992951143582623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / (SequenceMachineLib.valuation (2 * Nat.lor 2 n) 2 : ℚ)) ^ 2

end

end A168077.P2581992951143582623

namespace A168077

/-- `(n/val(2*or(2, n), 2))²` -/
def P2581992951143582623.Spec : Prop :=
  ∀ n, P2581992951143582623.a n = (A168077 n : ℚ)

end A168077

/-! ## A168077.P4248562771109062521

`(n/(or(1, n)-(n-1)))²`
-/

namespace A168077.P4248562771109062521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / ((Nat.lor 1 n : ℤ) - ((n : ℤ) - 1) : ℚ)) ^ 2

end

end A168077.P4248562771109062521

namespace A168077

/-- `(n/(or(1, n)-(n-1)))²` -/
def P4248562771109062521.Spec : Prop :=
  ∀ n, P4248562771109062521.a n = (A168077 n : ℚ)

end A168077

/-! ## A168077.P15863511726903963583

`(n/Δ[or(1, n+1)]!)²`
-/

namespace A168077.P15863511726903963583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / (Nat.factorial ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)) ^ 2

end

end A168077.P15863511726903963583

namespace A168077

/-- `(n/Δ[or(1, n+1)]!)²` -/
def P15863511726903963583.Spec : Prop :=
  ∀ n, P15863511726903963583.a n = (A168077 n : ℚ)

end A168077

/-! ## A168077.P12543229340691103074

`(n/(and(1, n+1)²+1))²`
-/

namespace A168077.P12543229340691103074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / (Nat.land 1 (n + 1) ^ 2 + 1 : ℚ)) ^ 2

end

end A168077.P12543229340691103074

namespace A168077

/-- `(n/(and(1, n+1)²+1))²` -/
def P12543229340691103074.Spec : Prop :=
  ∀ n, P12543229340691103074.a n = (A168077 n : ℚ)

end A168077

/-! ## A168077.P6069196550810800601

`(n/∏[1/a(n-1)])²` with `a(0)=2`
-/

namespace A168077.P6069196550810800601
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  1 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / (∏ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A168077.P6069196550810800601

namespace A168077

/-- `(n/∏[1/a(n-1)])²` -/
def P6069196550810800601.Spec : Prop :=
  ∀ n, P6069196550810800601.a n = (A168077 n : ℚ)

end A168077

/-! ## A168077.P18131422207260886946

`A176447(n)²`
-/

namespace A168077.P18131422207260886946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176447 n ^ 2

end

end A168077.P18131422207260886946

namespace A168077

/-- `A176447(n)²` -/
def P18131422207260886946.Spec : Prop :=
  ∀ n, P18131422207260886946.a n = A168077 n

end A168077

/-!
# A168078: Number of matrices with elements 1..n in which every pair of adjacent elements are relatively prime.

The programs for A168078, there is no canonical definition to state claims against.
-/

/-! ## A168078.P3166461409951797134

`A087062(∑[∑[A214883(n+1)]])`
-/

namespace A168078.P3166461409951797134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214883 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087062 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A168078.P3166461409951797134

/-! ## A168078.P14761669605339233719

`and(A054449(n), A145022(∑[5^n]))`
-/

namespace A168078.P14761669605339233719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054449 n) (A145022 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A168078.P14761669605339233719

/-!
# A168081: Lucas sequence U_n(x,1) over the field GF(2)[x].

The programs for A168081, the canonical program `A168081.P16359451533663323532` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168081 has offset 0).

The definition of A168081 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168081.P16359451533663323532

`xor(2*a(n-1), a(n-2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168081

/-- `xor(2*a(n-1), a(n-2))` -/
def P16359451533663323532.Spec : Prop :=
  ∀ n, (P16359451533663323532.a n : ℤ) = A168081 n

theorem P16359451533663323532.correct : P16359451533663323532.Spec := by
  intro n
  simp only [A168081]

end A168081

/-! ## A168081.P6502795245121907569

`xor(a(n-1)+a(n-1), a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A168081.P6502795245121907569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.xor (a (n - 1) + a (n - 1)) (a (n - 2))

end

end A168081.P6502795245121907569

namespace A168081

/-- `xor(a(n-1)+a(n-1), a(n-2))` -/
def P6502795245121907569.Spec : Prop :=
  ∀ n, (P6502795245121907569.a n : ℤ) = A168081 n

theorem P6502795245121907569.correct : P6502795245121907569.Spec := by
  intro n
  simp only [A168081, Nat.add_sub_cancel, A168081.P6502795245121907569.a, A168081.P16359451533663323532.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A168081

/-! ## A168081.P4552876857848785144

`record[-A257971(n)]`
-/

namespace A168081.P4552876857848785144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A257971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168081.P4552876857848785144

namespace A168081

/-- `record[-A257971(n)]` -/
def P4552876857848785144.Spec : Prop :=
  ∀ n, P4552876857848785144.a n = A168081 n

end A168081

/-! ## A168081.P5125620028412993361

`abs(A257971(2*n))`
-/

namespace A168081.P5125620028412993361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A257971 (2 * n)|

end

end A168081.P5125620028412993361

namespace A168081

/-- `abs(A257971(2*n))` -/
def P5125620028412993361.Spec : Prop :=
  ∀ n, P5125620028412993361.a n = A168081 n

end A168081

/-! ## A168081.P2700240175365570292

`record[Δ[-A006921(n)]]`
-/

namespace A168081.P2700240175365570292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A006921 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168081.P2700240175365570292

namespace A168081

/-- `record[Δ[-A006921(n)]]` -/
def P2700240175365570292.Spec : Prop :=
  ∀ n, P2700240175365570292.a n = A168081 n

end A168081

/-! ## A168081.P5653935381750914721

`and(A000975(n), A260022(n))`
-/

namespace A168081.P5653935381750914721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000975 n) (A260022 n)

end

end A168081.P5653935381750914721

namespace A168081

/-- `and(A000975(n), A260022(n))` -/
def P5653935381750914721.Spec : Prop :=
  ∀ n, P5653935381750914721.a n = A168081 n

end A168081

/-! ## A168081.P8884014106994012166

`record[A006921(n)-A006921(n+1)]`
-/

namespace A168081.P8884014106994012166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006921 n - A006921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168081.P8884014106994012166

namespace A168081

/-- `record[A006921(n)-A006921(n+1)]` -/
def P8884014106994012166.Spec : Prop :=
  ∀ n, P8884014106994012166.a n = A168081 n

end A168081

/-! ## A168081.P13789819193796267730

`A000007(n+1)-A257971(2*n)`
-/

namespace A168081.P13789819193796267730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A257971 (2 * n)

end

end A168081.P13789819193796267730

namespace A168081

/-- `A000007(n+1)-A257971(2*n)` -/
def P13789819193796267730.Spec : Prop :=
  ∀ n, P13789819193796267730.a n = A168081 n

end A168081

/-! ## A168081.P2541326034612629286

`A260022(n)-A006921(2*n+1)`
-/

namespace A168081.P2541326034612629286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260022 n - A006921 (2 * n + 1)

end

end A168081.P2541326034612629286

namespace A168081

/-- `A260022(n)-A006921(2*n+1)` -/
def P2541326034612629286.Spec : Prop :=
  ∀ n, P2541326034612629286.a n = A168081 n

end A168081

/-! ## A168081.P6600993970694600873

`(A000007(n)-1)*A257971(2*n)`
-/

namespace A168081.P6600993970694600873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n - 1) * A257971 (2 * n)

end

end A168081.P6600993970694600873

namespace A168081

/-- `(A000007(n)-1)*A257971(2*n)` -/
def P6600993970694600873.Spec : Prop :=
  ∀ n, P6600993970694600873.a n = A168081 n

end A168081

/-! ## A168081.P2640238193736642574

`A006921(2*n)-A006921(2*n+1)`
-/

namespace A168081.P2640238193736642574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006921 (2 * n) - A006921 (2 * n + 1)

end

end A168081.P2640238193736642574

namespace A168081

/-- `A006921(2*n)-A006921(2*n+1)` -/
def P2640238193736642574.Spec : Prop :=
  ∀ n, P2640238193736642574.a n = A168081 n

end A168081

/-! ## A168081.P7003601809107920816

`A073642(2*n+1)-(A257971(2*n)+A073642(2*n))`
-/

namespace A168081.P7003601809107920816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (2 * n + 1) - (A257971 (2 * n) + A073642 (2 * n))

end

end A168081.P7003601809107920816

namespace A168081

/-- `A073642(2*n+1)-(A257971(2*n)+A073642(2*n))` -/
def P7003601809107920816.Spec : Prop :=
  ∀ n, P7003601809107920816.a n = A168081 n

end A168081

/-! ## A168081.P8715234951031359310

`A260022(n)+A257971(2*(n+1))`
-/

namespace A168081.P8715234951031359310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260022 n + A257971 (2 * (n + 1))

end

end A168081.P8715234951031359310

namespace A168081

/-- `A260022(n)+A257971(2*(n+1))` -/
def P8715234951031359310.Spec : Prop :=
  ∀ n, P8715234951031359310.a n = A168081 n

end A168081

/-! ## A168081.P18009827140170181813

`A257971(2*(n+1))+A006921(2*n)`
-/

namespace A168081.P18009827140170181813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257971 (2 * (n + 1)) + A006921 (2 * n)

end

end A168081.P18009827140170181813

namespace A168081

/-- `A257971(2*(n+1))+A006921(2*n)` -/
def P18009827140170181813.Spec : Prop :=
  ∀ n, P18009827140170181813.a n = A168081 n

end A168081

/-!
# A168082: Fibonacci 11-step numbers.

The programs for A168082, there is no canonical definition to state claims against.
-/

/-! ## A168082.P18341593246910717329

`Δ[A127624(n+1)/10]`
-/

namespace A168082.P18341593246910717329
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127624 (n + 1) : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168082.P18341593246910717329

/-! ## A168082.P8258455768677986496

`A004086(A004086(Δ[A127624(n+1)]))`
-/

namespace A168082.P8258455768677986496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A004086 (f1 (n + 1) - f1 n).toNat).toNat

end

end A168082.P8258455768677986496

/-! ## A168082.P2871164929902425742

`A002264(∑[A251766(n)]+1)`
-/

namespace A168082.P2871164929902425742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A168082.P2871164929902425742

/-! ## A168082.P7451787995564590113

`Δ[A004526(A168084(n+4))]`
-/

namespace A168082.P7451787995564590113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A168084 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168082.P7451787995564590113

/-! ## A168082.P9319986499332986113

`abs(Δ[A168050(A168083(n+3))])`
-/

namespace A168082.P9319986499332986113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168050 (A168083 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A168082.P9319986499332986113

/-!
# A168083: Fibonacci 12-step numbers.

The programs for A168083, there is no canonical definition to state claims against.
-/

/-! ## A168083.P4232072483857112192

`Δ[A207539(n)/11]`
-/

namespace A168083.P4232072483857112192
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207539 n : ℚ) / 11

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168083.P4232072483857112192

/-! ## A168083.P2768352794819152051

`A207539(n+1)/11-A207539(n)/11`
-/

namespace A168083.P2768352794819152051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207539 (n + 1) : ℚ) / 11 - (A207539 n : ℚ) / 11

end

end A168083.P2768352794819152051

/-! ## A168083.P13872358760437605751

`Δ[2^(n+1)-A133025(n+2)]`
-/

namespace A168083.P13872358760437605751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A133025 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168083.P13872358760437605751

/-! ## A168083.P5027410885417207121

`A127287(A168084(n+2))`
-/

namespace A168083.P5027410885417207121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (A168084 (n + 2)).toNat

end

end A168083.P5027410885417207121

/-! ## A168083.P9978658292725307901

`A002265(A168084(n+4)+2)`
-/

namespace A168083.P9978658292725307901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A168084 (n + 4) + 2).toNat

end

end A168083.P9978658292725307901

/-!
# A168084: Fibonacci 13-step numbers.

The programs for A168084, there is no canonical definition to state claims against.
-/

/-! ## A168084.P8416342037864781422

`Δ[A163551(n+1)/12]`
-/

namespace A168084.P8416342037864781422
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163551 (n + 1) : ℚ) / 12

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168084.P8416342037864781422

/-! ## A168084.P15900571653580827193

`A026741(floor(2^A023454(n)))`
-/

namespace A168084.P15900571653580827193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ⌊(2 : ℚ) ^ (A023454 n : ℤ)⌋.toNat

end

end A168084.P15900571653580827193

/-! ## A168084.P8627031032103274046

`A004526(∏[A043540(n+1)])`
-/

namespace A168084.P8627031032103274046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A168084.P8627031032103274046

/-! ## A168084.P16723305020202642574

`A004526(∏[A043565(n+1)])`
-/

namespace A168084.P16723305020202642574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A168084.P16723305020202642574

/-! ## A168084.P16879867538655677489

`A025480(∏[A043540(n+1)])`
-/

namespace A168084.P16879867538655677489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A168084.P16879867538655677489

/-!
# A168086: Numbers k such that d(k) is not an isolated number.

The programs for A168086, there is no canonical definition to state claims against.
-/

/-! ## A168086.P4440438237447124195

`∪[(n+1)², A167758(n+1)]`
-/

namespace A168086.P4440438237447124195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A168086.P4440438237447124195

/-! ## A168086.P13041703132693245238

`∪[A167758(n+1), ∑[A005408(n)]]`
-/

namespace A168086.P13041703132693245238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167758 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A168086.P13041703132693245238

/-! ## A168086.P14254790054839329174

`∪[A167758(n+1), A036454(n+1)]`
-/

namespace A168086.P14254790054839329174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A168086.P14254790054839329174

/-! ## A168086.P1839396006090807017

`∪[A167758(n+1), A052041(n+1)]`
-/

namespace A168086.P1839396006090807017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A168086.P1839396006090807017

/-! ## A168086.P5622871309877430395

`∪[A167758(n+1), A056798(n+1)]`
-/

namespace A168086.P5622871309877430395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A168086.P5622871309877430395

/-! ## A168086.P9207006277130941374

`∪[A167758(n+1), A063735(n+1)]`
-/

namespace A168086.P9207006277130941374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A168086.P9207006277130941374

/-! ## A168086.P16098937248048531118

`∪[A167758(n+1), A072595(n+1)]`
-/

namespace A168086.P16098937248048531118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A168086.P16098937248048531118

/-! ## A168086.P16095317555878136313

`∪[A167758(n+1), A144913(n+1)]`
-/

namespace A168086.P16095317555878136313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A168086.P16095317555878136313

/-! ## A168086.P16571055736147179264

`∪[A167758(n+1), A176238(n+1)]`
-/

namespace A168086.P16571055736147179264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A168086.P16571055736147179264

/-! ## A168086.P3106532054237568167

`∪[A167758(n+1), A179459(n+1)]`
-/

namespace A168086.P3106532054237568167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A168086.P3106532054237568167

/-!
# A168088: a(n) = 2^tetranacci(n).

The programs for A168088, the canonical program `A168088.P2999246367601181221` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168088 has offset 0).

The definition of A168088 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168088.P2999246367601181221

`2^A000078(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A168088

/-- `2^A000078(n)` -/
def P2999246367601181221.Spec : Prop :=
  ∀ n, P2999246367601181221.a n = (A168088 n : ℚ)

end A168088

/-! ## A168088.P13129461696458696308

`a(n-1)²/a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=2`
-/

namespace A168088.P13129461696458696308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 2, 2] fun n a =>
  a (n - 1) ^ 2 / a (n - 5)

end

end A168088.P13129461696458696308

namespace A168088

/-- `a(n-1)²/a(n-5)` -/
def P13129461696458696308.Spec : Prop :=
  ∀ n, P13129461696458696308.a n = (A168088 n : ℚ)

end A168088

/-! ## A168088.P4146524380383713597

`a(n-1)/a(n-5)*a(n-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=2`
-/

namespace A168088.P4146524380383713597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 2, 2] fun n a =>
  a (n - 1) / a (n - 5) * a (n - 1)

end

end A168088.P4146524380383713597

namespace A168088

/-- `a(n-1)/a(n-5)*a(n-1)` -/
def P4146524380383713597.Spec : Prop :=
  ∀ n, P4146524380383713597.a n = (A168088 n : ℚ)

end A168088

/-! ## A168088.P9332787604638777451

`A000079(A000078(n))`
-/

namespace A168088.P9332787604638777451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000078 n).toNat

end

end A168088.P9332787604638777451

namespace A168088

/-- `A000079(A000078(n))` -/
def P9332787604638777451.Spec : Prop :=
  ∀ n, P9332787604638777451.a n = A168088 n

end A168088

/-! ## A168088.P14468740818422627166

`A011782(A000078(n)+1)`
-/

namespace A168088.P14468740818422627166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A000078 n + 1).toNat

end

end A168088.P14468740818422627166

namespace A168088

/-- `A011782(A000078(n)+1)` -/
def P14468740818422627166.Spec : Prop :=
  ∀ n, P14468740818422627166.a n = A168088 n

end A168088

/-!
# A168089: a(n) = 2^pentanacci(n).

The programs for A168089, the canonical program `A168089.P13627008311631189801` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168089 has offset 0).

The definition of A168089 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168089.P13627008311631189801

`2^A001591(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A168089

/-- `2^A001591(n)` -/
def P13627008311631189801.Spec : Prop :=
  ∀ n, P13627008311631189801.a n = (A168089 n : ℚ)

end A168089

/-! ## A168089.P13351029548503763670

`2^Δ[A001949(n)]`
-/

namespace A168089.P13351029548503763670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001949 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A168089.P13351029548503763670

namespace A168089

/-- `2^Δ[A001949(n)]` -/
def P13351029548503763670.Spec : Prop :=
  ∀ n, P13351029548503763670.a n = (A168089 n : ℚ)

end A168089

/-! ## A168089.P15115798003351303242

`2^Δ[A000322(n)/4]`
-/

namespace A168089.P15115798003351303242
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000322 n : ℚ) / 4

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (f1 (n + 1) - f1 n : ℝ)

end

end A168089.P15115798003351303242

namespace A168089

/-- `2^Δ[A000322(n)/4]` -/
def P15115798003351303242.Spec : Prop :=
  ∀ n, P15115798003351303242.a n = (A168089 n : ℝ)

end A168089

/-! ## A168089.P8881631918044031502

`A000079(A001591(n))`
-/

namespace A168089.P8881631918044031502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A001591 n).toNat

end

end A168089.P8881631918044031502

namespace A168089

/-- `A000079(A001591(n))` -/
def P8881631918044031502.Spec : Prop :=
  ∀ n, P8881631918044031502.a n = A168089 n

end A168089

/-! ## A168089.P9391416838065461322

`A000079(Δ[A001949(n)])`
-/

namespace A168089.P9391416838065461322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (f1 (n + 1) - f1 n).toNat

end

end A168089.P9391416838065461322

namespace A168089

/-- `A000079(Δ[A001949(n)])` -/
def P9391416838065461322.Spec : Prop :=
  ∀ n, P9391416838065461322.a n = A168089 n

end A168089

/-!
# A168090: a(n) = (1 - (n mod 3) mod 2)*2^(floor(n/3) + (n mod 3)/2 ).

The programs for A168090, the canonical program `A168090.P11260006096581134504` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168090 has offset 0).

The definition of A168090 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168090.P11260006096581134504

`2*a(n-3)` with `a(0)=1, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168090

/-- `2*a(n-3)` -/
def P11260006096581134504.Spec : Prop :=
  ∀ n, (P11260006096581134504.a n : ℤ) = A168090 n

theorem P11260006096581134504.correct : P11260006096581134504.Spec := by
  intro n
  simp only [A168090]

end A168090

/-! ## A168090.P1116024624057256426

`(1-(n%3)%2)*2^(floor(n/3)+n%3/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168090.P1116024624057256426
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 - ((n % 3 % 2 : ℕ) : ℤ) : ℝ) * (2 : ℝ) ^ ((⌊(n : ℚ) / 3⌋ : ℚ) + ((n % 3 : ℕ) : ℚ) / 2 : ℝ)

end

end A168090.P1116024624057256426

namespace A168090

/-- `(1-(n%3)%2)*2^(floor(n/3)+n%3/2)` -/
def P1116024624057256426.Spec : Prop :=
  ∀ n, P1116024624057256426.a n = (A168090 n : ℝ)

end A168090

/-! ## A168090.P11043465195017401479

`a(n-3)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A168090.P11043465195017401479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  a (n - 3) + a (n - 3)

end

end A168090.P11043465195017401479

namespace A168090

/-- `a(n-3)+a(n-3)` -/
def P11043465195017401479.Spec : Prop :=
  ∀ n, (P11043465195017401479.a n : ℤ) = A168090 n

theorem P11043465195017401479.correct : P11043465195017401479.Spec := by
  intro n
  simp only [A168090, Nat.add_sub_cancel, A168090.P11043465195017401479.a, A168090.P11260006096581134504.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A168090

/-! ## A168090.P11351496128717904991

`a(n-3)/(1-1/2)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A168090.P11351496128717904991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  a (n - 3) / (1 - (1 : ℚ) / 2)

end

end A168090.P11351496128717904991

namespace A168090

/-- `a(n-3)/(1-1/2)` -/
def P11351496128717904991.Spec : Prop :=
  ∀ n, P11351496128717904991.a n = (A168090 n : ℚ)

end A168090

/-! ## A168090.P8852063977066857312

`abs(Δ[A077958(n)])`
-/

namespace A168090.P8852063977066857312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A168090.P8852063977066857312

namespace A168090

/-- `abs(Δ[A077958(n)])` -/
def P8852063977066857312.Spec : Prop :=
  ∀ n, P8852063977066857312.a n = A168090 n

end A168090

/-! ## A168090.P7301217527862727236

`abs(Δ[A077959(n)])`
-/

namespace A168090.P7301217527862727236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077959 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A168090.P7301217527862727236

namespace A168090

/-- `abs(Δ[A077959(n)])` -/
def P7301217527862727236.Spec : Prop :=
  ∀ n, P7301217527862727236.a n = A168090 n

end A168090

/-! ## A168090.P14549368423554179215

`abs(A078029(n+1))`
-/

namespace A168090.P14549368423554179215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078029 (n + 1)|

end

end A168090.P14549368423554179215

namespace A168090

/-- `abs(A078029(n+1))` -/
def P14549368423554179215.Spec : Prop :=
  ∀ n, P14549368423554179215.a n = A168090 n

end A168090

/-! ## A168090.P17558154819889208200

`abs(A078030(n+1))`
-/

namespace A168090.P17558154819889208200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078030 (n + 1)|

end

end A168090.P17558154819889208200

namespace A168090

/-- `abs(A078030(n+1))` -/
def P17558154819889208200.Spec : Prop :=
  ∀ n, P17558154819889208200.a n = A168090 n

end A168090

/-! ## A168090.P8864318170087080496

`A077957(ceil(2*n/3))`
-/

namespace A168090.P8864318170087080496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 ⌈2 * ((n : ℚ) / 3)⌉.toNat

end

end A168090.P8864318170087080496

namespace A168090

/-- `A077957(ceil(2*n/3))` -/
def P8864318170087080496.Spec : Prop :=
  ∀ n, P8864318170087080496.a n = A168090 n

end A168090

/-! ## A168090.P17707536590116700556

`A077958(A130481(n))`
-/

namespace A168090.P17707536590116700556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077958 (A130481 n).toNat

end

end A168090.P17707536590116700556

namespace A168090

/-- `A077958(A130481(n))` -/
def P17707536590116700556.Spec : Prop :=
  ∀ n, P17707536590116700556.a n = A168090 n

end A168090

/-! ## A168090.P7751154268681347119

`A119332(A304800(n))`
-/

namespace A168090.P7751154268681347119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119332 (A304800 n).toNat

end

end A168090.P7751154268681347119

namespace A168090

/-- `A119332(A304800(n))` -/
def P7751154268681347119.Spec : Prop :=
  ∀ n, P7751154268681347119.a n = A168090 n

end A168090

/-! ## A168090.P4156240950334073252

`A119332(A004773(n+1))`
-/

namespace A168090.P4156240950334073252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119332 (A004773 (n + 1)).toNat

end

end A168090.P4156240950334073252

namespace A168090

/-- `A119332(A004773(n+1))` -/
def P4156240950334073252.Spec : Prop :=
  ∀ n, P4156240950334073252.a n = A168090 n

end A168090

/-! ## A168090.P2571055945263102447

`A119332(A063200(n+1))`
-/

namespace A168090.P2571055945263102447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119332 (A063200 (n + 1)).toNat

end

end A168090.P2571055945263102447

namespace A168090

/-- `A119332(A063200(n+1))` -/
def P2571055945263102447.Spec : Prop :=
  ∀ n, P2571055945263102447.a n = A168090 n

end A168090

/-! ## A168090.P3372653243304242011

`A119332(A063224(n+1))`
-/

namespace A168090.P3372653243304242011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119332 (A063224 (n + 1)).toNat

end

end A168090.P3372653243304242011

namespace A168090

/-- `A119332(A063224(n+1))` -/
def P3372653243304242011.Spec : Prop :=
  ∀ n, P3372653243304242011.a n = A168090 n

end A168090

/-! ## A168090.P7700102990667663986

`A119332(A168056(n+1))`
-/

namespace A168090.P7700102990667663986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119332 (A168056 (n + 1)).toNat

end

end A168090.P7700102990667663986

namespace A168090

/-- `A119332(A168056(n+1))` -/
def P7700102990667663986.Spec : Prop :=
  ∀ n, P7700102990667663986.a n = A168090 n

end A168090

/-! ## A168090.P8579042445032026350

`A077958(A082009(n+2))`
-/

namespace A168090.P8579042445032026350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077958 (A082009 (n + 2)).toNat

end

end A168090.P8579042445032026350

namespace A168090

/-- `A077958(A082009(n+2))` -/
def P8579042445032026350.Spec : Prop :=
  ∀ n, P8579042445032026350.a n = A168090 n

end A168090

/-! ## A168090.P78042943776167603

`A119332(A042965(n+2))`
-/

namespace A168090.P78042943776167603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119332 (A042965 (n + 2)).toNat

end

end A168090.P78042943776167603

namespace A168090

/-- `A119332(A042965(n+2))` -/
def P78042943776167603.Spec : Prop :=
  ∀ n, P78042943776167603.a n = A168090 n

end A168090

/-! ## A168090.P11614047279820344992

`A119332(A047428(n+2))`
-/

namespace A168090.P11614047279820344992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119332 (A047428 (n + 2)).toNat

end

end A168090.P11614047279820344992

namespace A168090

/-- `A119332(A047428(n+2))` -/
def P11614047279820344992.Spec : Prop :=
  ∀ n, P11614047279820344992.a n = A168090 n

end A168090

/-! ## A168090.P10636260568616885404

`A119332(A047498(n+2))`
-/

namespace A168090.P10636260568616885404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119332 (A047498 (n + 2)).toNat

end

end A168090.P10636260568616885404

namespace A168090

/-- `A119332(A047498(n+2))` -/
def P10636260568616885404.Spec : Prop :=
  ∀ n, P10636260568616885404.a n = A168090 n

end A168090

/-! ## A168090.P7878643380114441314

`A077958(n+1)+A077958(n)`
-/

namespace A168090.P7878643380114441314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077958 (n + 1) + A077958 n

end

end A168090.P7878643380114441314

namespace A168090

/-- `A077958(n+1)+A077958(n)` -/
def P7878643380114441314.Spec : Prop :=
  ∀ n, P7878643380114441314.a n = A168090 n

end A168090

/-!
# A168091: Slowest increasing sequence of alternatively cubes and squares with common neighbor digits.

The programs for A168091, there is no canonical definition to state claims against.
-/

/-! ## A168091.P14031089501711148460

`A081676(A000005(n+1)*A254535(n+1))`
-/

namespace A168091.P14031089501711148460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (A000005 (n + 1) * A254535 (n + 1)).toNat

end

end A168091.P14031089501711148460

/-!
# A168092: a(n) = number of natural numbers m such that n - 2 <= m <= n + 2.

The programs for A168092, the canonical program `A168092.P15781552965352355779` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168092 has offset 0).

The definition of A168092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168092.P15781552965352355779

`round(root(5, cosh(acot(n))))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168092

/-- `round(root(5, cosh(acot(n))))` -/
def P15781552965352355779.Spec : Prop :=
  ∀ n, P15781552965352355779.a n = A168092 n

theorem P15781552965352355779.correct : P15781552965352355779.Spec := by
  intro n
  simp only [A168092]

end A168092

/-!
# A168093: a(n) = number of natural numbers m such that n - 3 <= m <= n + 3.

The programs for A168093, the canonical program `A168093.P1374378739037372424` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168093 has offset 0).

The definition of A168093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168093.P1374378739037372424

`a(n-1)` with `a(0)=3, a(1)=4, a(2)=5, a(3)=6, a(4)=7`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168093

/-- `a(n-1)` -/
def P1374378739037372424.Spec : Prop :=
  ∀ n, (P1374378739037372424.a n : ℤ) = A168093 n

theorem P1374378739037372424.correct : P1374378739037372424.Spec := by
  intro n
  simp only [A168093]

end A168093

/-!
# A168094: a(n) = number of natural numbers m such that n - 4 <= m <= n + 4.

The programs for A168094, the canonical program `A168094.P14363742774679336718` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168094 has offset 0).

The definition of A168094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168094.P14363742774679336718

`floor(atan(a(n-1))^6)` with `a(0)=4`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168094

/-- `floor(atan(a(n-1))^6)` -/
def P14363742774679336718.Spec : Prop :=
  ∀ n, P14363742774679336718.a n = A168094 n

theorem P14363742774679336718.correct : P14363742774679336718.Spec := by
  intro n
  simp only [A168094]

end A168094

/-!
# A168095: a(n) = number of natural numbers m such that n - 5 <= m <= n + 5.

The programs for A168095, the canonical program `A168095.P18344217093737734730` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168095 has offset 0).

The definition of A168095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168095.P18344217093737734730

`a(n-1)` with `a(0)=5, a(1)=6, a(2)=7, a(3)=8, a(4)=9, a(5)=10, a(6)=11`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168095

/-- `a(n-1)` -/
def P18344217093737734730.Spec : Prop :=
  ∀ n, (P18344217093737734730.a n : ℤ) = A168095 n

theorem P18344217093737734730.correct : P18344217093737734730.Spec := by
  intro n
  simp only [A168095]

end A168095

/-!
# A168096: a(n) = number of natural numbers m such that n - 6 <= m <= n + 6.

The programs for A168096, the canonical program `A168096.P4338963481072355610` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168096 has offset 0).

The definition of A168096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168096.P4338963481072355610

`a(n-1)` with `a(0)=6, a(1)=7, a(2)=8, a(3)=9, a(4)=10, a(5)=11, a(6)=12, a(7)=13`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168096

/-- `a(n-1)` -/
def P4338963481072355610.Spec : Prop :=
  ∀ n, (P4338963481072355610.a n : ℤ) = A168096 n

theorem P4338963481072355610.correct : P4338963481072355610.Spec := by
  intro n
  simp only [A168096]

end A168096

/-!
# A168097: a(n) = number of natural numbers m such that n - 7 <= m <= n + 7.

The programs for A168097, the canonical program `A168097.P667379029512893400` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168097 has offset 0).

The definition of A168097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168097.P667379029512893400

`round(log2(acot(a(n-1)))²)` with `a(0)=7`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168097

/-- `round(log2(acot(a(n-1)))²)` -/
def P667379029512893400.Spec : Prop :=
  ∀ n, P667379029512893400.a n = A168097 n

theorem P667379029512893400.correct : P667379029512893400.Spec := by
  intro n
  simp only [A168097]

end A168097

/-!
# A168098: a(n) = number of natural numbers m such that n - 8 <= m <= n + 8.

The programs for A168098, the canonical program `A168098.P4356426521093172376` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168098 has offset 0).

The definition of A168098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168098.P4356426521093172376

`round(a(n-1)+8/a(n-1))` with `a(0)=8`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168098

/-- `round(a(n-1)+8/a(n-1))` -/
def P4356426521093172376.Spec : Prop :=
  ∀ n, P4356426521093172376.a n = A168098 n

theorem P4356426521093172376.correct : P4356426521093172376.Spec := by
  intro n
  simp only [A168098]

end A168098

/-!
# A168099: a(n) = number of natural numbers m such that n - 9 <= m <= n + 9.

The programs for A168099, the canonical program `A168099.P8225951932114546181` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168099 has offset 0).

The definition of A168099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168099.P8225951932114546181

`2*n+9-comp[2*n+11]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168099

/-- `2*n+9-comp[2*n+11]` -/
def P8225951932114546181.Spec : Prop :=
  ∀ n, P8225951932114546181.a n = A168099 n

theorem P8225951932114546181.correct : P8225951932114546181.Spec := by
  intro n
  simp only [A168099]

end A168099

