import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
# A349200: Loeschian numbers of the form (x + y)*(x^2 + y^2).

The programs for A349200, there is no canonical definition to state claims against.
-/

/-! ## A349200.P17210240272681715958

`filter[A348897(n+1), A353816(#)]`
-/

namespace A349200.P17210240272681715958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A349200.P17210240272681715958

/-! ## A349200.P9474873766928027075

`∩[A003136(n+1), A348897(n+1)]`
-/

namespace A349200.P9474873766928027075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349200.P9474873766928027075

/-! ## A349200.P13955198090253852692

`∩[A270672(n+1)-A270050(n+1), A348897(n+1)]`
-/

namespace A349200.P13955198090253852692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270672 (n + 1) - A270050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349200.P13955198090253852692

/-!
# A349201: a(n) = [x^n] ((x^2*(1 + 3*x + x^2 - 2*x^3 + 3*x^4 + x^5 - x^6))/((-1 + x)^4 *(1 + x)^3)).

The programs for A349201, the canonical program `A349201.P17480398757070551637` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349201 has offset 1).

The definition of A349201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349201.P1420469575457788670

`∪[n*n², A053698(n)]`
-/

namespace A349201.P1420469575457788670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053698 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349201.P1420469575457788670

namespace A349201

/-- `∪[n*n², A053698(n)]` -/
def P1420469575457788670.Spec : Prop :=
  ∀ n, (P1420469575457788670.a n : ℤ) = A349201 (n + 1)

end A349201

/-! ## A349201.P18288227090940028121

`∪[A053698(n), A000578(n)]`
-/

namespace A349201.P18288227090940028121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053698 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349201.P18288227090940028121

namespace A349201

/-- `∪[A053698(n), A000578(n)]` -/
def P18288227090940028121.Spec : Prop :=
  ∀ n, (P18288227090940028121.a n : ℤ) = A349201 (n + 1)

end A349201

/-! ## A349201.P17480398757070551637

`(A140106(n+1)²+n)*A008619(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A349201

/-- `(A140106(n+1)²+n)*A008619(n)` -/
def P17480398757070551637.Spec : Prop :=
  ∀ n, P17480398757070551637.a n = A349201 (n + 1)

theorem P17480398757070551637.correct : P17480398757070551637.Spec := by
  intro n
  simp only [A349201, Nat.add_sub_cancel]

end A349201

/-! ## A349201.P9057442583237587472

`∑[A110654(A019425(n))]*A008619(n)`
-/

namespace A349201.P9057442583237587472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A019425 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A008619 n

end

end A349201.P9057442583237587472

namespace A349201

/-- `∑[A110654(A019425(n))]*A008619(n)` -/
def P9057442583237587472.Spec : Prop :=
  ∀ n, P9057442583237587472.a n = A349201 (n + 1)

end A349201

/-! ## A349201.P2897313771721707226

`record[A110657(n)*A173151(n)]`
-/

namespace A349201.P2897313771721707226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 n * A173151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349201.P2897313771721707226

namespace A349201

/-- `record[A110657(n)*A173151(n)]` -/
def P2897313771721707226.Spec : Prop :=
  ∀ n, P2897313771721707226.a n = A349201 (n + 1)

end A349201

/-! ## A349201.P11703877099401669618

`record[A207260(n)]*A008619(n)`
-/

namespace A349201.P11703877099401669618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207260 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A008619 n

end

end A349201.P11703877099401669618

namespace A349201

/-- `record[A207260(n)]*A008619(n)` -/
def P11703877099401669618.Spec : Prop :=
  ∀ n, P11703877099401669618.a n = A349201 (n + 1)

end A349201

/-! ## A349201.P5332189631394266176

`A321500(lt[A321449(n), 2])`
-/

namespace A349201.P5332189631394266176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321449 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321500 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A349201.P5332189631394266176

namespace A349201

/-- `A321500(lt[A321449(n), 2])` -/
def P5332189631394266176.Spec : Prop :=
  ∀ n, P5332189631394266176.a n = A349201 (n + 1)

end A349201

/-! ## A349201.P6658638626448646027

`record[A163282(n-A025581(n))]`
-/

namespace A349201.P6658638626448646027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163282 ((n : ℤ) - A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349201.P6658638626448646027

namespace A349201

/-- `record[A163282(n-A025581(n))]` -/
def P6658638626448646027.Spec : Prop :=
  ∀ n, P6658638626448646027.a n = A349201 (n + 1)

end A349201

/-! ## A349201.P7145937591103282715

`record[A163282(A128174(n+2)+n)]`
-/

namespace A349201.P7145937591103282715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163282 (A128174 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349201.P7145937591103282715

namespace A349201

/-- `record[A163282(A128174(n+2)+n)]` -/
def P7145937591103282715.Spec : Prop :=
  ∀ n, P7145937591103282715.a n = A349201 (n + 1)

end A349201

/-! ## A349201.P16406772354033321354

`record[A198063(n*A097806(n))]`
-/

namespace A349201.P16406772354033321354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198063 ((n : ℤ) * A097806 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349201.P16406772354033321354

namespace A349201

/-- `record[A198063(n*A097806(n))]` -/
def P16406772354033321354.Spec : Prop :=
  ∀ n, P16406772354033321354.a n = A349201 (n + 1)

end A349201

/-! ## A349201.P2038347534549213728

`eq[1, A008619(A053186(n))]*A008619(n)`
-/

namespace A349201.P2038347534549213728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A053186 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) * A008619 n

end

end A349201.P2038347534549213728

namespace A349201

/-- `eq[1, A008619(A053186(n))]*A008619(n)` -/
def P2038347534549213728.Spec : Prop :=
  ∀ n, P2038347534549213728.a n = A349201 (n + 1)

end A349201

/-! ## A349201.P5131960163256021246

`record[n/A027113(n+1)]*A008619(n)`
-/

namespace A349201.P5131960163256021246
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A027113 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * (A008619 n : ℚ)

end

end A349201.P5131960163256021246

namespace A349201

/-- `record[n/A027113(n+1)]*A008619(n)` -/
def P5131960163256021246.Spec : Prop :=
  ∀ n, P5131960163256021246.a n = (A349201 (n + 1) : ℚ)

end A349201

/-!
# A349202: Numbers k of the form (x + y)*(x^2 + y^2) such that (x + y) and (x^2 + y^2) are primes.

The programs for A349202, there is no canonical definition to state claims against.
-/

/-! ## A349202.P14727711996174741999

`∩[A251728(n+1), A336607(n+1)]`
-/

namespace A349202.P14727711996174741999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349202.P14727711996174741999

/-! ## A349202.P18102809813092640318

`∩[A251728(n+1), A336995(n+1)]`
-/

namespace A349202.P18102809813092640318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349202.P18102809813092640318

/-! ## A349202.P8540665494431035950

`∩[A251728(n+1), A348897(n+1)]`
-/

namespace A349202.P8540665494431035950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349202.P8540665494431035950

/-! ## A349202.P10430569217374462391

`filter[A336607(n+1), A374128(#)]`
-/

namespace A349202.P10430569217374462391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A349202.P10430569217374462391

/-! ## A349202.P14701617872731289903

`filter[A336995(n+1), A374128(#)]`
-/

namespace A349202.P14701617872731289903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A349202.P14701617872731289903

/-! ## A349202.P4794073529899126869

`∩[A001358(n+1), A336607(n+1)]`
-/

namespace A349202.P4794073529899126869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349202.P4794073529899126869

/-! ## A349202.P7331619526794880154

`∩[A001358(n+1), A336995(n+1)]`
-/

namespace A349202.P7331619526794880154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349202.P7331619526794880154

/-! ## A349202.P15775546069079245842

`∩[A001358(n+1), A348897(n+1)]`
-/

namespace A349202.P15775546069079245842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349202.P15775546069079245842

/-! ## A349202.P8293622653682303373

`filter[A336607(n+1), A064911(#)]`
-/

namespace A349202.P8293622653682303373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A349202.P8293622653682303373

/-! ## A349202.P13824907889966638840

`filter[A336995(n+1), A064911(#)]`
-/

namespace A349202.P13824907889966638840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A349202.P13824907889966638840

/-!
# A349203: Triangle read by rows, T(n, k) = (lcm_{k=0..n} binomial(n, k)) / binomial(n, k).

The programs for A349203, there is no canonical definition to state claims against.
-/

/-! ## A349203.P14161385168491036699

`A120435(n+1)/A135278(n)`
-/

namespace A349203.P14161385168491036699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120435 (n + 1) : ℚ) / (A135278 n : ℚ)

end

end A349203.P14161385168491036699

/-! ## A349203.P18098841316619694475

`A002944(∑[A010054(n)])/A007318(n)`
-/

namespace A349203.P18098841316619694475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002944 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / (A007318 n : ℚ)

end

end A349203.P18098841316619694475

/-! ## A349203.P17222060711898486275

`A002944(A002024(n+1))/A007318(n)`
-/

namespace A349203.P17222060711898486275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002944 (A002024 (n + 1)).toNat : ℚ) / (A007318 n : ℚ)

end

end A349203.P17222060711898486275

/-! ## A349203.P5533755479826039558

`A002944(A003056(n)+1)/A007318(n)`
-/

namespace A349203.P5533755479826039558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002944 (A003056 n + 1).toNat : ℚ) / (A007318 n : ℚ)

end

end A349203.P5533755479826039558

/-! ## A349203.P17064968233515432673

`A098361(n)/A025527(A002024(n+1))`
-/

namespace A349203.P17064968233515432673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098361 n : ℚ) / (A025527 (A002024 (n + 1)).toNat : ℚ)

end

end A349203.P17064968233515432673

/-! ## A349203.P14740872936314802137

`abs(A002944(A002024(n+1))/A108086(n))`
-/

namespace A349203.P14740872936314802137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A002944 (A002024 (n + 1)).toNat : ℚ) / (A108086 n : ℚ)|

end

end A349203.P14740872936314802137

/-! ## A349203.P3769867883044466149

`abs(A002944(A002024(n+1))/A130595(n))`
-/

namespace A349203.P3769867883044466149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A002944 (A002024 (n + 1)).toNat : ℚ) / (A130595 n : ℚ)|

end

end A349203.P3769867883044466149

/-! ## A349203.P13264122077585679214

`A002944(A002024(n+1))/sqrt(A008459(n))`
-/

namespace A349203.P13264122077585679214
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002944 (A002024 (n + 1)).toNat : ℝ) / Real.sqrt (A008459 n : ℝ)

end

end A349203.P13264122077585679214

/-! ## A349203.P3314816651167244780

`A003418(∑[A010054(n)])/A003506(n+1)`
-/

namespace A349203.P3314816651167244780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / (A003506 (n + 1) : ℚ)

end

end A349203.P3314816651167244780

/-! ## A349203.P8211654523571094021

`A002944(A002024(n+1))/Δ[A102363(n)]`
-/

namespace A349203.P8211654523571094021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002944 (A002024 (n + 1)).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A349203.P8211654523571094021

/-!
# A349204: a(n) = A065176(n + 2) * n! * [x^n](exp(x) / (1 + cos(x))).

The programs for A349204, there is no canonical definition to state claims against.
-/

/-! ## A349204.P14146223162363449103

`A322957(a(n-1))` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5, a(4)=5`
-/

namespace A349204.P14146223162363449103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 5, 5] fun n a =>
  A322957 (a (n - 1)).toNat

end

end A349204.P14146223162363449103

/-! ## A349204.P6298626143558120876

`A241674(A300041(n))`
-/

namespace A349204.P6298626143558120876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241674 (A300041 n).toNat

end

end A349204.P6298626143558120876

/-! ## A349204.P9962402414879244623

`A144305(A003219(n+1))`
-/

namespace A349204.P9962402414879244623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144305 (A003219 (n + 1)).toNat

end

end A349204.P9962402414879244623

/-!
# A349211: a(n) = Sum_{d|n} d^((d+1) mod 2).

The programs for A349211, the canonical program `A349211.P927014947528967250` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349211 has offset 1).

The definition of A349211 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349211.P927014947528967250

`∑{d}[n+1, #^((#+1)%2)]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A349211

/-- `∑{d}[n+1, #^((#+1)%2)]` -/
def P927014947528967250.Spec : Prop :=
  ∀ n, (P927014947528967250.a n : ℤ) = A349211 (n + 1)

theorem P927014947528967250.correct : P927014947528967250.Spec := by
  intro n
  simp only [A349211, Nat.add_sub_cancel]

end A349211

/-! ## A349211.P11441638614275469242

`A000005(A000265(n+1))+A000203(A000265(n+1))*A000918(A001511(n+1))`
-/

namespace A349211.P11441638614275469242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000265 (n + 1)).toNat + A000203 (A000265 (n + 1)).toNat * A000918 (A001511 (n + 1)).toNat

end

end A349211.P11441638614275469242

namespace A349211

/-- `A000005(A000265(n+1))+A000203(A000265(n+1))*A000918(A001511(n+1))` -/
def P11441638614275469242.Spec : Prop :=
  ∀ n, P11441638614275469242.a n = A349211 (n + 1)

end A349211

/-! ## A349211.P16150705490584868998

`∑{d}[n+1, gcd(#, #%2)]`
-/

namespace A349211.P16150705490584868998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.gcd d (d % 2)

end

end A349211.P16150705490584868998

namespace A349211

/-- `∑{d}[n+1, gcd(#, #%2)]` -/
def P16150705490584868998.Spec : Prop :=
  ∀ n, (P16150705490584868998.a n : ℤ) = A349211 (n + 1)

end A349211

/-! ## A349211.P17661780113973724036

`∑{d}[n+1, #^and(1, #+1)]`
-/

namespace A349211.P17661780113973724036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ Nat.land 1 (d + 1)

end

end A349211.P17661780113973724036

namespace A349211

/-- `∑{d}[n+1, #^and(1, #+1)]` -/
def P17661780113973724036.Spec : Prop :=
  ∀ n, (P17661780113973724036.a n : ℤ) = A349211 (n + 1)

theorem P17661780113973724036.correct : P17661780113973724036.Spec := by
  intro n
  simp only [A349211, Nat.add_sub_cancel, A349211.P17661780113973724036.f1, A349211.P17661780113973724036.a, A349211.P927014947528967250.f1, A349211.P927014947528967250.a, SequenceMachineLib.memo_apply]
  try simp

end A349211

/-! ## A349211.P14536830424219885138

`∑{d}[n+1, #^(or(1, #)-#)]`
-/

namespace A349211.P14536830424219885138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ ((Nat.lor 1 d : ℤ) - (d : ℤ) : ℤ)

end

end A349211.P14536830424219885138

namespace A349211

/-- `∑{d}[n+1, #^(or(1, #)-#)]` -/
def P14536830424219885138.Spec : Prop :=
  ∀ n, P14536830424219885138.a n = (A349211 (n + 1) : ℚ)

end A349211

/-! ## A349211.P4771258965987635123

`∑{d}[n+1, and(#, #-xor(1, #))]`
-/

namespace A349211.P4771258965987635123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.land (d : ℤ) ((d : ℤ) - (Nat.xor 1 d : ℤ))

end

end A349211.P4771258965987635123

namespace A349211

/-- `∑{d}[n+1, and(#, #-xor(1, #))]` -/
def P4771258965987635123.Spec : Prop :=
  ∀ n, P4771258965987635123.a n = A349211 (n + 1)

end A349211

/-! ## A349211.P6380275705583286967

`∑{d}[n+1, ceil(#/A019427(#))]`
-/

namespace A349211.P6380275705583286967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈(d : ℚ) / (A019427 d : ℚ)⌉

end

end A349211.P6380275705583286967

namespace A349211

/-- `∑{d}[n+1, ceil(#/A019427(#))]` -/
def P6380275705583286967.Spec : Prop :=
  ∀ n, P6380275705583286967.a n = A349211 (n + 1)

end A349211

/-! ## A349211.P3317771355197926466

`∑{d}[n+1, #^val(A020639(#), 2)]`
-/

namespace A349211.P3317771355197926466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ SequenceMachineLib.valuation (A020639 d).toNat 2

end

end A349211.P3317771355197926466

namespace A349211

/-- `∑{d}[n+1, #^val(A020639(#), 2)]` -/
def P3317771355197926466.Spec : Prop :=
  ∀ n, (P3317771355197926466.a n : ℤ) = A349211 (n + 1)

end A349211

/-! ## A349211.P13752151375857406526

`A001227(n+1)+∑{d}[n+1, #]-∑{d}[n+1, #]/xor(n, n+1)`
-/

namespace A349211.P13752151375857406526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001227 (n + 1) : ℚ) + (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ) / (Nat.xor n (n + 1) : ℚ))

end

end A349211.P13752151375857406526

namespace A349211

/-- `A001227(n+1)+∑{d}[n+1, #]-∑{d}[n+1, #]/xor(n, n+1)` -/
def P13752151375857406526.Spec : Prop :=
  ∀ n, P13752151375857406526.a n = (A349211 (n + 1) : ℚ)

end A349211

/-! ## A349211.P5111190083376463050

`A000005((n+1)/and(n+1, -(n+1)))+2*∑{d}[∑[n]%(n+1), #]`
-/

namespace A349211.P5111190083376463050
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat + ((2 * (∑ d ∈ Nat.divisors (f1 n), d) : ℕ) : ℤ)

end

end A349211.P5111190083376463050

namespace A349211

/-- `A000005((n+1)/and(n+1, -(n+1)))+2*∑{d}[∑[n]%(n+1), #]` -/
def P5111190083376463050.Spec : Prop :=
  ∀ n, P5111190083376463050.a n = A349211 (n + 1)

end A349211

/-! ## A349211.P9346117426907790447

`A146076(n+1)+A001227(n+1)`
-/

namespace A349211.P9346117426907790447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (n + 1) + A001227 (n + 1)

end

end A349211.P9346117426907790447

namespace A349211

/-- `A146076(n+1)+A001227(n+1)` -/
def P9346117426907790447.Spec : Prop :=
  ∀ n, P9346117426907790447.a n = A349211 (n + 1)

end A349211

/-! ## A349211.P5004941573062892435

`A348915(n+1)+A325940(n+1)`
-/

namespace A349211.P5004941573062892435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348915 (n + 1) + A325940 (n + 1)

end

end A349211.P5004941573062892435

namespace A349211

/-- `A348915(n+1)+A325940(n+1)` -/
def P5004941573062892435.Spec : Prop :=
  ∀ n, P5004941573062892435.a n = A349211 (n + 1)

end A349211

/-! ## A349211.P16460069301393663620

`A007503(n+1)-A348915(n+1)`
-/

namespace A349211.P16460069301393663620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - A348915 (n + 1)

end

end A349211.P16460069301393663620

namespace A349211

/-- `A007503(n+1)-A348915(n+1)` -/
def P16460069301393663620.Spec : Prop :=
  ∀ n, P16460069301393663620.a n = A349211 (n + 1)

end A349211

/-! ## A349211.P7317862591263377146

`2*A079247(n+1)-A000593(n+1)`
-/

namespace A349211.P7317862591263377146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079247 (n + 1) - A000593 (n + 1)

end

end A349211.P7317862591263377146

namespace A349211

/-- `2*A079247(n+1)-A000593(n+1)` -/
def P7317862591263377146.Spec : Prop :=
  ∀ n, P7317862591263377146.a n = A349211 (n + 1)

end A349211

/-! ## A349211.P14285330439378000612

`A146076(n+1)+A000005((n+1)/and(n+1, -(n+1)))`
-/

namespace A349211.P14285330439378000612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (n + 1) + A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A349211.P14285330439378000612

namespace A349211

/-- `A146076(n+1)+A000005((n+1)/and(n+1, -(n+1)))` -/
def P14285330439378000612.Spec : Prop :=
  ∀ n, P14285330439378000612.a n = A349211 (n + 1)

end A349211

/-! ## A349211.P12958449966887852948

`A146076(n+1)+A000005(A000265(n+1))`
-/

namespace A349211.P12958449966887852948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (n + 1) + A000005 (A000265 (n + 1)).toNat

end

end A349211.P12958449966887852948

namespace A349211

/-- `A146076(n+1)+A000005(A000265(n+1))` -/
def P12958449966887852948.Spec : Prop :=
  ∀ n, P12958449966887852948.a n = A349211 (n + 1)

end A349211

/-! ## A349211.P6448288616187795893

`A000203(n+1)+A001227(n+1)-A000593(n+1)`
-/

namespace A349211.P6448288616187795893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A001227 (n + 1) - A000593 (n + 1))

end

end A349211.P6448288616187795893

namespace A349211

/-- `A000203(n+1)+A001227(n+1)-A000593(n+1)` -/
def P6448288616187795893.Spec : Prop :=
  ∀ n, P6448288616187795893.a n = A349211 (n + 1)

end A349211

/-! ## A349211.P8575451693975565948

`A000593(n+1)+A001227(n+1)-A002129(n+1)`
-/

namespace A349211.P8575451693975565948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + (A001227 (n + 1) - A002129 (n + 1))

end

end A349211.P8575451693975565948

namespace A349211

/-- `A000593(n+1)+A001227(n+1)-A002129(n+1)` -/
def P8575451693975565948.Spec : Prop :=
  ∀ n, P8575451693975565948.a n = A349211 (n + 1)

end A349211

/-! ## A349211.P8136910990386695472

`A000005(n+1)+A146076(n+1)-A183063(n+1)`
-/

namespace A349211.P8136910990386695472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A146076 (n + 1) - A183063 (n + 1))

end

end A349211.P8136910990386695472

namespace A349211

/-- `A000005(n+1)+A146076(n+1)-A183063(n+1)` -/
def P8136910990386695472.Spec : Prop :=
  ∀ n, P8136910990386695472.a n = A349211 (n + 1)

end A349211

/-! ## A349211.P13697469793409251379

`∑{d}[n+1, gcd(#, A000982(#))]`
-/

namespace A349211.P13697469793409251379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.gcd (d : ℤ) (A000982 d)

end

end A349211.P13697469793409251379

namespace A349211

/-- `∑{d}[n+1, gcd(#, A000982(#))]` -/
def P13697469793409251379.Spec : Prop :=
  ∀ n, (P13697469793409251379.a n : ℤ) = A349211 (n + 1)

end A349211

/-!
# A349212: a(n) = Sum_{d|n} n^(d mod 2).

The programs for A349212, the canonical program `A349212.P10495563625750167007` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349212 has offset 1).

The definition of A349212 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349212.P14082678018753079313

`∑{d}[n+1, (n+1)^(#%2)]`
-/

namespace A349212.P14082678018753079313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1) ^ (d % 2)

end

end A349212.P14082678018753079313

namespace A349212

/-- `∑{d}[n+1, (n+1)^(#%2)]` -/
def P14082678018753079313.Spec : Prop :=
  ∀ n, (P14082678018753079313.a n : ℤ) = A349212 (n + 1)

end A349212

/-! ## A349212.P10495563625750167007

`A001227(n+1)*(n+1+A007814(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A349212

/-- `A001227(n+1)*(n+1+A007814(n+1))` -/
def P10495563625750167007.Spec : Prop :=
  ∀ n, P10495563625750167007.a n = A349212 (n + 1)

theorem P10495563625750167007.correct : P10495563625750167007.Spec := by
  intro n
  simp only [A349212, Nat.add_sub_cancel]

end A349212

/-! ## A349212.P12543124285898539672

`A000005(A001787(n+1))`
-/

namespace A349212.P12543124285898539672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001787 (n + 1)).toNat

end

end A349212.P12543124285898539672

namespace A349212

/-- `A000005(A001787(n+1))` -/
def P12543124285898539672.Spec : Prop :=
  ∀ n, P12543124285898539672.a n = A349212 (n + 1)

end A349212

/-! ## A349212.P16568657876049996103

`∑{d}[n+1, n*and(1, #)+1]`
-/

namespace A349212.P16568657876049996103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n * Nat.land 1 d + 1)

end

end A349212.P16568657876049996103

namespace A349212

/-- `∑{d}[n+1, n*and(1, #)+1]` -/
def P16568657876049996103.Spec : Prop :=
  ∀ n, (P16568657876049996103.a n : ℤ) = A349212 (n + 1)

end A349212

/-! ## A349212.P6613992150648611647

`∑{d}[n+1, (n+1)^and(1, #)]`
-/

namespace A349212.P6613992150648611647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1) ^ Nat.land 1 d

end

end A349212.P6613992150648611647

namespace A349212

/-- `∑{d}[n+1, (n+1)^and(1, #)]` -/
def P6613992150648611647.Spec : Prop :=
  ∀ n, (P6613992150648611647.a n : ℤ) = A349212 (n + 1)

end A349212

/-! ## A349212.P16354196701091031328

`∑{d}[n+1, gcd(n+1, log2(gcd(2, #)))]`
-/

namespace A349212.P16354196701091031328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (Real.logb 2 (Nat.gcd 2 d : ℝ)))

end

end A349212.P16354196701091031328

namespace A349212

/-- `∑{d}[n+1, gcd(n+1, log2(gcd(2, #)))]` -/
def P16354196701091031328.Spec : Prop :=
  ∀ n, (P16354196701091031328.a n : ℤ) = A349212 (n + 1)

end A349212

/-! ## A349212.P16931987440808870946

`A245579(n+1)+A183063(n+1)`
-/

namespace A349212.P16931987440808870946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245579 (n + 1) + A183063 (n + 1)

end

end A349212.P16931987440808870946

namespace A349212

/-- `A245579(n+1)+A183063(n+1)` -/
def P16931987440808870946.Spec : Prop :=
  ∀ n, P16931987440808870946.a n = A349212 (n + 1)

end A349212

/-! ## A349212.P3155821616330827418

`A367870(n+1)+A348915(n+1)`
-/

namespace A349212.P3155821616330827418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367870 (n + 1) + A348915 (n + 1)

end

end A349212.P3155821616330827418

namespace A349212

/-- `A367870(n+1)+A348915(n+1)` -/
def P3155821616330827418.Spec : Prop :=
  ∀ n, P3155821616330827418.a n = A349212 (n + 1)

end A349212

/-! ## A349212.P6298897398515023376

`Δ[A006218(n)]+n*A001227(n+1)`
-/

namespace A349212.P6298897398515023376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ) * A001227 (n + 1)

end

end A349212.P6298897398515023376

namespace A349212

/-- `Δ[A006218(n)]+n*A001227(n+1)` -/
def P6298897398515023376.Spec : Prop :=
  ∀ n, P6298897398515023376.a n = A349212 (n + 1)

end A349212

/-! ## A349212.P15403227299506126017

`A000005(n+1)+n*A001227(n+1)`
-/

namespace A349212.P15403227299506126017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (n : ℤ) * A001227 (n + 1)

end

end A349212.P15403227299506126017

namespace A349212

/-- `A000005(n+1)+n*A001227(n+1)` -/
def P15403227299506126017.Spec : Prop :=
  ∀ n, P15403227299506126017.a n = A349212 (n + 1)

end A349212

/-! ## A349212.P3707339846193449723

`(A001511(n+1)+n)*A001227(n+1)`
-/

namespace A349212.P3707339846193449723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001511 (n + 1) + (n : ℤ)) * A001227 (n + 1)

end

end A349212.P3707339846193449723

namespace A349212

/-- `(A001511(n+1)+n)*A001227(n+1)` -/
def P3707339846193449723.Spec : Prop :=
  ∀ n, P3707339846193449723.a n = A349212 (n + 1)

theorem P3707339846193449723.correct : P3707339846193449723.Spec := by
  intro n
  simp only [A349212, Nat.add_sub_cancel, A349212.P3707339846193449723.a, A349212.P10495563625750167007.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A001511, A001511.P17146462531039486101.a, A007814, A007814.P13537437864234730737.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A349212

/-! ## A349212.P1397532980721087124

`∑[A341062(n+1)]+n*A001227(n+1)`
-/

namespace A349212.P1397532980721087124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) * A001227 (n + 1)

end

end A349212.P1397532980721087124

namespace A349212

/-- `∑[A341062(n+1)]+n*A001227(n+1)` -/
def P1397532980721087124.Spec : Prop :=
  ∀ n, P1397532980721087124.a n = A349212 (n + 1)

end A349212

/-! ## A349212.P2697698684809900942

`A320111(2*(n+1))+n*A001227(n+1)`
-/

namespace A349212.P2697698684809900942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * (n + 1)) + (n : ℤ) * A001227 (n + 1)

end

end A349212.P2697698684809900942

namespace A349212

/-- `A320111(2*(n+1))+n*A001227(n+1)` -/
def P2697698684809900942.Spec : Prop :=
  ∀ n, P2697698684809900942.a n = A349212 (n + 1)

end A349212

/-! ## A349212.P14912619679069853682

`A000005(n+1)+n*A000005(A000265(n+1))`
-/

namespace A349212.P14912619679069853682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (n : ℤ) * A000005 (A000265 (n + 1)).toNat

end

end A349212.P14912619679069853682

namespace A349212

/-- `A000005(n+1)+n*A000005(A000265(n+1))` -/
def P14912619679069853682.Spec : Prop :=
  ∀ n, P14912619679069853682.a n = A349212 (n + 1)

end A349212

/-! ## A349212.P9777542501926039669

`A000005(n+1)+n*A000005(A064989(n+1))`
-/

namespace A349212.P9777542501926039669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (n : ℤ) * A000005 (A064989 (n + 1)).toNat

end

end A349212.P9777542501926039669

namespace A349212

/-- `A000005(n+1)+n*A000005(A064989(n+1))` -/
def P9777542501926039669.Spec : Prop :=
  ∀ n, P9777542501926039669.a n = A349212 (n + 1)

end A349212

/-! ## A349212.P12630308055716089113

`A000005(n+1)+n*A000005(A332819(n+1))`
-/

namespace A349212.P12630308055716089113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (n : ℤ) * A000005 (A332819 (n + 1)).toNat

end

end A349212.P12630308055716089113

namespace A349212

/-- `A000005(n+1)+n*A000005(A332819(n+1))` -/
def P12630308055716089113.Spec : Prop :=
  ∀ n, P12630308055716089113.a n = A349212 (n + 1)

end A349212

/-! ## A349212.P4375078503924067411

`A000005(n+1)+n*A000005(A336158(n+1))`
-/

namespace A349212.P4375078503924067411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (n : ℤ) * A000005 (A336158 (n + 1)).toNat

end

end A349212.P4375078503924067411

namespace A349212

/-- `A000005(n+1)+n*A000005(A336158(n+1))` -/
def P4375078503924067411.Spec : Prop :=
  ∀ n, P4375078503924067411.a n = A349212 (n + 1)

end A349212

/-! ## A349212.P13982120876708470442

`∑{d}[n+1, n*A000035(#)+1]`
-/

namespace A349212.P13982120876708470442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n : ℤ) * A000035 d + 1)

end

end A349212.P13982120876708470442

namespace A349212

/-- `∑{d}[n+1, n*A000035(#)+1]` -/
def P13982120876708470442.Spec : Prop :=
  ∀ n, P13982120876708470442.a n = A349212 (n + 1)

end A349212

/-! ## A349212.P8996493967144607263

`A320111(2*(n+1))+n*A320107(2*(n+1))`
-/

namespace A349212.P8996493967144607263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * (n + 1)) + (n : ℤ) * A320107 (2 * (n + 1))

end

end A349212.P8996493967144607263

namespace A349212

/-- `A320111(2*(n+1))+n*A320107(2*(n+1))` -/
def P8996493967144607263.Spec : Prop :=
  ∀ n, P8996493967144607263.a n = A349212 (n + 1)

end A349212

/-!
# A349213: a(n) = Sum_{d|n} n^((d+1) mod 2).

The programs for A349213, the canonical program `A349213.P11981718417061897043` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349213 has offset 1).

The definition of A349213 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349213.P12508357048659021801

`∑{d}[n+1, (n+1)^((#+1)%2)]`
-/

namespace A349213.P12508357048659021801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1) ^ ((d + 1) % 2)

end

end A349213.P12508357048659021801

namespace A349213

/-- `∑{d}[n+1, (n+1)^((#+1)%2)]` -/
def P12508357048659021801.Spec : Prop :=
  ∀ n, (P12508357048659021801.a n : ℤ) = A349213 (n + 1)

end A349213

/-! ## A349213.P11981718417061897043

`A001227(n+1)*(1+(n+1)*A007814(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A349213

/-- `A001227(n+1)*(1+(n+1)*A007814(n+1))` -/
def P11981718417061897043.Spec : Prop :=
  ∀ n, P11981718417061897043.a n = A349213 (n + 1)

theorem P11981718417061897043.correct : P11981718417061897043.Spec := by
  intro n
  simp only [A349213, Nat.add_sub_cancel]

end A349213

/-! ## A349213.P3936341663879851393

`∑{d}[n+1, gcd(n+1, #%2)]`
-/

namespace A349213.P3936341663879851393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.gcd (n + 1) (d % 2)

end

end A349213.P3936341663879851393

namespace A349213

/-- `∑{d}[n+1, gcd(n+1, #%2)]` -/
def P3936341663879851393.Spec : Prop :=
  ∀ n, (P3936341663879851393.a n : ℤ) = A349213 (n + 1)

end A349213

/-! ## A349213.P13637418711175110167

`∑{d}[n+1, gcd(2, #)^log2(n+1)]`
-/

namespace A349213.P13637418711175110167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.gcd 2 d : ℝ) ^ (Real.logb 2 (n + 1 : ℝ))

end

end A349213.P13637418711175110167

namespace A349213

/-- `∑{d}[n+1, gcd(2, #)^log2(n+1)]` -/
def P13637418711175110167.Spec : Prop :=
  ∀ n, P13637418711175110167.a n = (A349213 (n + 1) : ℝ)

end A349213

/-! ## A349213.P393866675508596178

`∑{d}[n+1, (n+1)^and(1, #+1)]`
-/

namespace A349213.P393866675508596178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1) ^ Nat.land 1 (d + 1)

end

end A349213.P393866675508596178

namespace A349213

/-- `∑{d}[n+1, (n+1)^and(1, #+1)]` -/
def P393866675508596178.Spec : Prop :=
  ∀ n, (P393866675508596178.a n : ℤ) = A349213 (n + 1)

end A349213

/-! ## A349213.P378280505172259553

`∑{d}[n+1, n+1-n*and(1, #)]`
-/

namespace A349213.P378280505172259553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℤ) - (n * Nat.land 1 d : ℤ))

end

end A349213.P378280505172259553

namespace A349213

/-- `∑{d}[n+1, n+1-n*and(1, #)]` -/
def P378280505172259553.Spec : Prop :=
  ∀ n, P378280505172259553.a n = A349213 (n + 1)

end A349213

/-! ## A349213.P5004622412486972043

`∑{d}[n+1, (n+1)^(or(1, #)-#)]`
-/

namespace A349213.P5004622412486972043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) ^ ((Nat.lor 1 d : ℤ) - (d : ℤ) : ℤ)

end

end A349213.P5004622412486972043

namespace A349213

/-- `∑{d}[n+1, (n+1)^(or(1, #)-#)]` -/
def P5004622412486972043.Spec : Prop :=
  ∀ n, P5004622412486972043.a n = (A349213 (n + 1) : ℚ)

end A349213

/-! ## A349213.P4152795200715889093

`∑{d}[n+1, n+1-n*#²%2]`
-/

namespace A349213.P4152795200715889093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℤ) - ((n * (d ^ 2 % 2) : ℕ) : ℤ))

end

end A349213.P4152795200715889093

namespace A349213

/-- `∑{d}[n+1, n+1-n*#²%2]` -/
def P4152795200715889093.Spec : Prop :=
  ∀ n, P4152795200715889093.a n = A349213 (n + 1)

end A349213

/-! ## A349213.P13011678095594040631

`∑{d}[n+1, (n+1)^val(A020639(#), 2)]`
-/

namespace A349213.P13011678095594040631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1) ^ SequenceMachineLib.valuation (A020639 d).toNat 2

end

end A349213.P13011678095594040631

namespace A349213

/-- `∑{d}[n+1, (n+1)^val(A020639(#), 2)]` -/
def P13011678095594040631.Spec : Prop :=
  ∀ n, (P13011678095594040631.a n : ℤ) = A349213 (n + 1)

end A349213

/-! ## A349213.P14829098442279016619

`A000005(n+1)+n*A183063(n+1)`
-/

namespace A349213.P14829098442279016619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (n : ℤ) * A183063 (n + 1)

end

end A349213.P14829098442279016619

namespace A349213

/-- `A000005(n+1)+n*A183063(n+1)` -/
def P14829098442279016619.Spec : Prop :=
  ∀ n, P14829098442279016619.a n = A349213 (n + 1)

end A349213

/-! ## A349213.P4400368167761860391

`A038040(n+1)-n*A001227(n+1)`
-/

namespace A349213.P4400368167761860391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) - (n : ℤ) * A001227 (n + 1)

end

end A349213.P4400368167761860391

namespace A349213

/-- `A038040(n+1)-n*A001227(n+1)` -/
def P4400368167761860391.Spec : Prop :=
  ∀ n, P4400368167761860391.a n = A349213 (n + 1)

end A349213

/-! ## A349213.P17873378244028205950

`A001227(n+1)+A038040(n+1)-A245579(n+1)`
-/

namespace A349213.P17873378244028205950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) + (A038040 (n + 1) - A245579 (n + 1))

end

end A349213.P17873378244028205950

namespace A349213

/-- `A001227(n+1)+A038040(n+1)-A245579(n+1)` -/
def P17873378244028205950.Spec : Prop :=
  ∀ n, P17873378244028205950.a n = A349213 (n + 1)

end A349213

/-! ## A349213.P3674705583458272461

`∑{d}[n+1, n*A059841(#)+1]`
-/

namespace A349213.P3674705583458272461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n : ℤ) * A059841 d + 1)

end

end A349213.P3674705583458272461

namespace A349213

/-- `∑{d}[n+1, n*A059841(#)+1]` -/
def P3674705583458272461.Spec : Prop :=
  ∀ n, P3674705583458272461.a n = A349213 (n + 1)

end A349213

/-! ## A349213.P17273899871195539222

`A183063(2*(n+1))+n*A112329(2*(n+1))`
-/

namespace A349213.P17273899871195539222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * (n + 1)) + (n : ℤ) * A112329 (2 * (n + 1))

end

end A349213.P17273899871195539222

namespace A349213

/-- `A183063(2*(n+1))+n*A112329(2*(n+1))` -/
def P17273899871195539222.Spec : Prop :=
  ∀ n, P17273899871195539222.a n = A349213 (n + 1)

end A349213

/-! ## A349213.P6276036960861896555

`A183063(2*(n+1))+n*A299480(2*(n+1))`
-/

namespace A349213.P6276036960861896555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * (n + 1)) + (n : ℤ) * A299480 (2 * (n + 1))

end

end A349213.P6276036960861896555

namespace A349213

/-- `A183063(2*(n+1))+n*A299480(2*(n+1))` -/
def P6276036960861896555.Spec : Prop :=
  ∀ n, P6276036960861896555.a n = A349213 (n + 1)

end A349213

/-! ## A349213.P5188541057696446113

`A320111(2*(n+1))+n*A299480(2*(n+1))`
-/

namespace A349213.P5188541057696446113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * (n + 1)) + (n : ℤ) * A299480 (2 * (n + 1))

end

end A349213.P5188541057696446113

namespace A349213

/-- `A320111(2*(n+1))+n*A299480(2*(n+1))` -/
def P5188541057696446113.Spec : Prop :=
  ∀ n, P5188541057696446113.a n = A349213 (n + 1)

end A349213

/-! ## A349213.P9329072878583185899

`A183063(2*(n+1))-n*A048272(2*(n+1))`
-/

namespace A349213.P9329072878583185899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * (n + 1)) - (n : ℤ) * A048272 (2 * (n + 1))

end

end A349213.P9329072878583185899

namespace A349213

/-- `A183063(2*(n+1))-n*A048272(2*(n+1))` -/
def P9329072878583185899.Spec : Prop :=
  ∀ n, P9329072878583185899.a n = A349213 (n + 1)

end A349213

/-! ## A349213.P10955532640741461815

`A299480(2*n+1)+(n+1)*A299480(2*(n+1))`
-/

namespace A349213.P10955532640741461815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299480 (2 * n + 1) + (n + 1 : ℤ) * A299480 (2 * (n + 1))

end

end A349213.P10955532640741461815

namespace A349213

/-- `A299480(2*n+1)+(n+1)*A299480(2*(n+1))` -/
def P10955532640741461815.Spec : Prop :=
  ∀ n, P10955532640741461815.a n = A349213 (n + 1)

end A349213

/-! ## A349213.P12995858674912322258

`A070939(A295368(n+1))+n*A183063(n+1)`
-/

namespace A349213.P12995858674912322258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A295368 (n + 1)).toNat + (n : ℤ) * A183063 (n + 1)

end

end A349213.P12995858674912322258

namespace A349213

/-- `A070939(A295368(n+1))+n*A183063(n+1)` -/
def P12995858674912322258.Spec : Prop :=
  ∀ n, P12995858674912322258.a n = A349213 (n + 1)

end A349213

/-!
# A349214: a(n) = Sum_{k=1..n} k^c(k), where c is the prime characteristic (A010051).

The programs for A349214, the canonical program `A349214.P5559016243589572811` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349214 has offset 1).

The definition of A349214 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349214.P5559016243589572811

`A034387(n+1)+A062298(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A349214

/-- `A034387(n+1)+A062298(n+1)` -/
def P5559016243589572811.Spec : Prop :=
  ∀ n, P5559016243589572811.a n = A349214 (n + 1)

theorem P5559016243589572811.correct : P5559016243589572811.Spec := by
  intro n
  simp only [A349214, Nat.add_sub_cancel]

end A349214

/-! ## A349214.P3834288790405159200

`∑[∏{p}[∏{p}[n+1, C(#, n)], #]]`
-/

namespace A349214.P3834288790405159200
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.choose p n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349214.P3834288790405159200

namespace A349214

/-- `∑[∏{p}[∏{p}[n+1, C(#, n)], #]]` -/
def P3834288790405159200.Spec : Prop :=
  ∀ n, (P3834288790405159200.a n : ℤ) = A349214 (n + 1)

end A349214

/-! ## A349214.P9148053282785021107

`∑[∏{p}[n+1, #^val(#, n+1)]]`
-/

namespace A349214.P9148053282785021107
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349214.P9148053282785021107

namespace A349214

/-- `∑[∏{p}[n+1, #^val(#, n+1)]]` -/
def P9148053282785021107.Spec : Prop :=
  ∀ n, (P9148053282785021107.a n : ℤ) = A349214 (n + 1)

end A349214

/-! ## A349214.P13978641870972994690

`∑[ceil(∏{p}[n+1, #²/(n+1)])]`
-/

namespace A349214.P13978641870972994690
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ p ∈ Nat.primeFactors (f2 n), (p ^ 2 : ℚ) / (n + 1 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349214.P13978641870972994690

namespace A349214

/-- `∑[ceil(∏{p}[n+1, #²/(n+1)])]` -/
def P13978641870972994690.Spec : Prop :=
  ∀ n, P13978641870972994690.a n = A349214 (n + 1)

end A349214

/-! ## A349214.P5380410985076739701

`∑[n*and(1, ∑{e}[n+1, #]!)+1]`
-/

namespace A349214.P5380410985076739701
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 1 (Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349214.P5380410985076739701

namespace A349214

/-- `∑[n*and(1, ∑{e}[n+1, #]!)+1]` -/
def P5380410985076739701.Spec : Prop :=
  ∀ n, (P5380410985076739701.a n : ℤ) = A349214 (n + 1)

end A349214

/-! ## A349214.P12933328719178055571

`∑[(n+1)^∑{p}[n+1, val(#, n+1)]]`
-/

namespace A349214.P12933328719178055571
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349214.P12933328719178055571

namespace A349214

/-- `∑[(n+1)^∑{p}[n+1, val(#, n+1)]]` -/
def P12933328719178055571.Spec : Prop :=
  ∀ n, (P12933328719178055571.a n : ℤ) = A349214 (n + 1)

end A349214

/-! ## A349214.P7096787182365734119

`∑[(n+1)^∑{p}[n+1, C(#, n+1)]]`
-/

namespace A349214.P7096787182365734119
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349214.P7096787182365734119

namespace A349214

/-- `∑[(n+1)^∑{p}[n+1, C(#, n+1)]]` -/
def P7096787182365734119.Spec : Prop :=
  ∀ n, (P7096787182365734119.a n : ℤ) = A349214 (n + 1)

end A349214

/-! ## A349214.P7903519465200383126

`∑[C(n+1, ∑{p}[n+1, C(#, n+1)])]`
-/

namespace A349214.P7903519465200383126
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349214.P7903519465200383126

namespace A349214

/-- `∑[C(n+1, ∑{p}[n+1, C(#, n+1)])]` -/
def P7903519465200383126.Spec : Prop :=
  ∀ n, (P7903519465200383126.a n : ℤ) = A349214 (n + 1)

end A349214

/-! ## A349214.P1308428269167828467

`∑[A089026(n+1)]`
-/

namespace A349214.P1308428269167828467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349214.P1308428269167828467

namespace A349214

/-- `∑[A089026(n+1)]` -/
def P1308428269167828467.Spec : Prop :=
  ∀ n, P1308428269167828467.a n = A349214 (n + 1)

end A349214

/-! ## A349214.P5702269041064673834

`∑[A166260(n+1)+1]`
-/

namespace A349214.P5702269041064673834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166260 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349214.P5702269041064673834

namespace A349214

/-- `∑[A166260(n+1)+1]` -/
def P5702269041064673834.Spec : Prop :=
  ∀ n, P5702269041064673834.a n = A349214 (n + 1)

end A349214

/-! ## A349214.P5814944588537464662

`∑[gcd(n+1, A151800(n))]`
-/

namespace A349214.P5814944588537464662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A151800 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349214.P5814944588537464662

namespace A349214

/-- `∑[gcd(n+1, A151800(n))]` -/
def P5814944588537464662.Spec : Prop :=
  ∀ n, (P5814944588537464662.a n : ℤ) = A349214 (n + 1)

end A349214

/-! ## A349214.P8731257136770447273

`∑[∏{p}[A061397(n+1), #]]`
-/

namespace A349214.P8731257136770447273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349214.P8731257136770447273

namespace A349214

/-- `∑[∏{p}[A061397(n+1), #]]` -/
def P8731257136770447273.Spec : Prop :=
  ∀ n, (P8731257136770447273.a n : ℤ) = A349214 (n + 1)

end A349214

/-! ## A349214.P2285966135136074508

`A090585(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A349214.P2285966135136074508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A090585 n + a (n - 1)

end

end A349214.P2285966135136074508

namespace A349214

/-- `A090585(n)+a(n-1)` -/
def P2285966135136074508.Spec : Prop :=
  ∀ n, P2285966135136074508.a n = A349214 (n + 1)

end A349214

/-! ## A349214.P12267112237183754400

`∑[n*A010051(n+1)+1]`
-/

namespace A349214.P12267112237183754400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010051 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349214.P12267112237183754400

namespace A349214

/-- `∑[n*A010051(n+1)+1]` -/
def P12267112237183754400.Spec : Prop :=
  ∀ n, P12267112237183754400.a n = A349214 (n + 1)

end A349214

/-! ## A349214.P11986455631942636038

`∑[n*A080339(n+1)+1]`
-/

namespace A349214.P11986455631942636038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A080339 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349214.P11986455631942636038

namespace A349214

/-- `∑[n*A080339(n+1)+1]` -/
def P11986455631942636038.Spec : Prop :=
  ∀ n, P11986455631942636038.a n = A349214 (n + 1)

end A349214

/-! ## A349214.P4213476540186250154

`∑[(n+1)/A005451(n+1)]`
-/

namespace A349214.P4213476540186250154
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A005451 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349214.P4213476540186250154

namespace A349214

/-- `∑[(n+1)/A005451(n+1)]` -/
def P4213476540186250154.Spec : Prop :=
  ∀ n, P4213476540186250154.a n = (A349214 (n + 1) : ℚ)

end A349214

/-! ## A349214.P1830465572531714918

`∑[∏{d}[C(A006530(n+1), n), #]]`
-/

namespace A349214.P1830465572531714918
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349214.P1830465572531714918

namespace A349214

/-- `∑[∏{d}[C(A006530(n+1), n), #]]` -/
def P1830465572531714918.Spec : Prop :=
  ∀ n, (P1830465572531714918.a n : ℤ) = A349214 (n + 1)

end A349214

/-! ## A349214.P3962431326373406095

`∑[(n+1)^A129950(n+1)²]`
-/

namespace A349214.P3962431326373406095
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A129950 (n + 1) ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349214.P3962431326373406095

namespace A349214

/-- `∑[(n+1)^A129950(n+1)²]` -/
def P3962431326373406095.Spec : Prop :=
  ∀ n, P3962431326373406095.a n = (A349214 (n + 1) : ℚ)

end A349214

/-! ## A349214.P7152484439039605097

`∑[(n+1)^A267133(n+1)²]`
-/

namespace A349214.P7152484439039605097
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A267133 (n + 1) ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349214.P7152484439039605097

namespace A349214

/-- `∑[(n+1)^A267133(n+1)²]` -/
def P7152484439039605097.Spec : Prop :=
  ∀ n, P7152484439039605097.a n = (A349214 (n + 1) : ℚ)

end A349214

/-! ## A349214.P12574437877634157805

`∑[n*C(2, A000005(n+1))+1]`
-/

namespace A349214.P12574437877634157805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose 2 (A000005 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349214.P12574437877634157805

namespace A349214

/-- `∑[n*C(2, A000005(n+1))+1]` -/
def P12574437877634157805.Spec : Prop :=
  ∀ n, (P12574437877634157805.a n : ℤ) = A349214 (n + 1)

end A349214

/-!
# A349215: a(n) = Sum_{d|n} d^c(d), where c is the prime characteristic (A010051).

The programs for A349215, the canonical program `A349215.P7117496428552855771` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349215 has offset 1).

The definition of A349215 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349215.P7117496428552855771

`A000005(n+1)+A008472(n+1)-A001221(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A349215

/-- `A000005(n+1)+A008472(n+1)-A001221(n+1)` -/
def P7117496428552855771.Spec : Prop :=
  ∀ n, P7117496428552855771.a n = A349215 (n + 1)

theorem P7117496428552855771.correct : P7117496428552855771.Spec := by
  intro n
  simp only [A349215, Nat.add_sub_cancel]

end A349215

/-! ## A349215.P16811747465404379320

`∑{d}[n+1, A089026(#)]`
-/

namespace A349215.P16811747465404379320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A089026 d

end

end A349215.P16811747465404379320

namespace A349215

/-- `∑{d}[n+1, A089026(#)]` -/
def P16811747465404379320.Spec : Prop :=
  ∀ n, P16811747465404379320.a n = A349215 (n + 1)

end A349215

/-! ## A349215.P1902970757895665391

`∑{d}[n+1, A166260(#)+1]`
-/

namespace A349215.P1902970757895665391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A166260 d + 1)

end

end A349215.P1902970757895665391

namespace A349215

/-- `∑{d}[n+1, A166260(#)+1]` -/
def P1902970757895665391.Spec : Prop :=
  ∀ n, P1902970757895665391.a n = A349215 (n + 1)

end A349215

/-! ## A349215.P1054403616292899076

`A033273(n+1)+∑{p}[n+1, #]`
-/

namespace A349215.P1054403616292899076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)

end

end A349215.P1054403616292899076

namespace A349215

/-- `A033273(n+1)+∑{p}[n+1, #]` -/
def P1054403616292899076.Spec : Prop :=
  ∀ n, P1054403616292899076.a n = A349215 (n + 1)

theorem P1054403616292899076.correct : P1054403616292899076.Spec := by
  intro n
  simp only [A349215, Nat.add_sub_cancel, A349215.P1054403616292899076.f1, A349215.P1054403616292899076.a, A349215.P7117496428552855771.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A033273, A033273.P18420659424697249895.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A349215

/-! ## A349215.P14063151800310116361

`∑{p}[n+1, #-1]+A000005(n+1)`
-/

namespace A349215.P14063151800310116361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1) + A000005 (n + 1)

end

end A349215.P14063151800310116361

namespace A349215

/-- `∑{p}[n+1, #-1]+A000005(n+1)` -/
def P14063151800310116361.Spec : Prop :=
  ∀ n, P14063151800310116361.a n = A349215 (n + 1)

end A349215

/-! ## A349215.P3211380026837670539

`A033273(n+1)+A008472(n+1)`
-/

namespace A349215.P3211380026837670539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1) + A008472 (n + 1)

end

end A349215.P3211380026837670539

namespace A349215

/-- `A033273(n+1)+A008472(n+1)` -/
def P3211380026837670539.Spec : Prop :=
  ∀ n, P3211380026837670539.a n = A349215 (n + 1)

theorem P3211380026837670539.correct : P3211380026837670539.Spec := by
  intro n
  simp only [A349215, Nat.add_sub_cancel, A349215.P3211380026837670539.a, A349215.P7117496428552855771.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A033273, A033273.P18420659424697249895.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A349215

/-! ## A349215.P4261667749042504326

`A055631(n+1)+A000005(n+1)`
-/

namespace A349215.P4261667749042504326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055631 (n + 1) + A000005 (n + 1)

end

end A349215.P4261667749042504326

namespace A349215

/-- `A055631(n+1)+A000005(n+1)` -/
def P4261667749042504326.Spec : Prop :=
  ∀ n, P4261667749042504326.a n = A349215 (n + 1)

theorem P4261667749042504326.correct : P4261667749042504326.Spec := by
  intro n
  simp only [A349215, Nat.add_sub_cancel, A349215.P4261667749042504326.a, A349215.P7117496428552855771.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A055631, A055631.P8885936990558110793.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A349215

/-! ## A349215.P3586675270943534439

`A074372(n+1)+A055212(n+1)`
-/

namespace A349215.P3586675270943534439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074372 (n + 1) + A055212 (n + 1)

end

end A349215.P3586675270943534439

namespace A349215

/-- `A074372(n+1)+A055212(n+1)` -/
def P3586675270943534439.Spec : Prop :=
  ∀ n, P3586675270943534439.a n = A349215 (n + 1)

theorem P3586675270943534439.correct : P3586675270943534439.Spec := by
  intro n
  simp only [A349215, Nat.add_sub_cancel, A349215.P3586675270943534439.a, A349215.P7117496428552855771.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A055212, A055212.P14412881054625885538.a, A074372, A074372.P4137528993984796168.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A033273, A033273.P18420659424697249895.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A349215

/-! ## A349215.P13661532424021855750

`A135767(n+1)+A008474(n+1)`
-/

namespace A349215.P13661532424021855750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135767 (n + 1) + A008474 (n + 1)

end

end A349215.P13661532424021855750

namespace A349215

/-- `A135767(n+1)+A008474(n+1)` -/
def P13661532424021855750.Spec : Prop :=
  ∀ n, P13661532424021855750.a n = A349215 (n + 1)

theorem P13661532424021855750.correct : P13661532424021855750.Spec := by
  intro n
  simp only [A349215, Nat.add_sub_cancel, A349215.P13661532424021855750.a, A349215.P7117496428552855771.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A008474, A008474.P119709174749842562.a, A135767, A135767.P1732622784085476699.a, A001222, A001222.P11318177267732088261.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A059841, A059841.P7264174615531153985.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A349215

/-! ## A349215.P8181243674232198279

`A332775(n+1)-A049820(n+1)`
-/

namespace A349215.P8181243674232198279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332775 (n + 1) - A049820 (n + 1)

end

end A349215.P8181243674232198279

namespace A349215

/-- `A332775(n+1)-A049820(n+1)` -/
def P8181243674232198279.Spec : Prop :=
  ∀ n, P8181243674232198279.a n = A349215 (n + 1)

theorem P8181243674232198279.correct : P8181243674232198279.Spec := by
  intro n
  simp only [A349215, Nat.add_sub_cancel, A349215.P8181243674232198279.a, A349215.P7117496428552855771.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A049820, A049820.P9428372222244335888.a, A332775, A332775.P17459528584474244674.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A349215

/-! ## A349215.P12657669198568492139

`A007503(n+1)-A380441(n+1)`
-/

namespace A349215.P12657669198568492139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - A380441 (n + 1)

end

end A349215.P12657669198568492139

namespace A349215

/-- `A007503(n+1)-A380441(n+1)` -/
def P12657669198568492139.Spec : Prop :=
  ∀ n, P12657669198568492139.a n = A349215 (n + 1)

theorem P12657669198568492139.correct : P12657669198568492139.Spec := by
  intro n
  simp only [A349215, Nat.add_sub_cancel, A349215.P12657669198568492139.a, A349215.P7117496428552855771.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A007503, A007503.P13484425310514315912.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A380441, A380441.P1716721751457761727.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A023890, A023890.P4514850295399263827.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A349215

/-! ## A349215.P7535041981193387222

`A380449(n+1)-A023890(n+1)`
-/

namespace A349215.P7535041981193387222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380449 (n + 1) - A023890 (n + 1)

end

end A349215.P7535041981193387222

namespace A349215

/-- `A380449(n+1)-A023890(n+1)` -/
def P7535041981193387222.Spec : Prop :=
  ∀ n, P7535041981193387222.a n = A349215 (n + 1)

theorem P7535041981193387222.correct : P7535041981193387222.Spec := by
  intro n
  simp only [A349215, Nat.add_sub_cancel, A349215.P7535041981193387222.a, A349215.P7117496428552855771.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A023890, A023890.P4514850295399263827.a, A380449, A380449.P8792025045371275510.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A033273, A033273.P18420659424697249895.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A349215

/-! ## A349215.P6700654356266669590

`A073757(n+1)-A364933(n+1)`
-/

namespace A349215.P6700654356266669590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073757 (n + 1) - A364933 (n + 1)

end

end A349215.P6700654356266669590

namespace A349215

/-- `A073757(n+1)-A364933(n+1)` -/
def P6700654356266669590.Spec : Prop :=
  ∀ n, P6700654356266669590.a n = A349215 (n + 1)

theorem P6700654356266669590.correct : P6700654356266669590.Spec := by
  intro n
  simp only [A349215, Nat.add_sub_cancel, A349215.P6700654356266669590.a, A349215.P7117496428552855771.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A073757, A073757.P6861480467973211752.a, A364933, A364933.P7847543960833524069.a, A000010, A000010.P4673923239450215316.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A055631, A055631.P8885936990558110793.a, A059841, A059841.P7264174615531153985.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A349215

/-! ## A349215.P15524399984583142468

`A349217(n+1)-A334341(n+1)`
-/

namespace A349215.P15524399984583142468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349217 (n + 1) - A334341 (n + 1)

end

end A349215.P15524399984583142468

namespace A349215

/-- `A349217(n+1)-A334341(n+1)` -/
def P15524399984583142468.Spec : Prop :=
  ∀ n, P15524399984583142468.a n = A349215 (n + 1)

theorem P15524399984583142468.correct : P15524399984583142468.Spec := by
  intro n
  simp only [A349215, Nat.add_sub_cancel, A349215.P15524399984583142468.a, A349215.P7117496428552855771.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A334341, A334341.P2984648088017996111.a, A349217, A349217.P8454150560353347447.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A349215

/-! ## A349215.P7837631228122167581

`A055631(n+1)+A028310(∏{e}[n+1, #+1])`
-/

namespace A349215.P7837631228122167581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055631 (n + 1) + A028310 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A349215.P7837631228122167581

namespace A349215

/-- `A055631(n+1)+A028310(∏{e}[n+1, #+1])` -/
def P7837631228122167581.Spec : Prop :=
  ∀ n, P7837631228122167581.a n = A349215 (n + 1)

end A349215

/-!
# A349216: Number of ternary triples (u,v,w) with 1 <= u < v < w <= n.

The programs for A349216, there is no canonical definition to state claims against.
-/

/-! ## A349216.P5438679534331645842

`∑[∑[A064692(A018005(n+2))]]`
-/

namespace A349216.P5438679534331645842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A018005 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349216.P5438679534331645842

/-! ## A349216.P2983892752857460170

`∑[A100053(∏[n/a(n-1)]-1)]` with `a(0)=2, a(1)=1`
-/

namespace A349216.P2983892752857460170
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  (n : ℚ) / f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100053 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f2 j - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349216.P2983892752857460170

/-! ## A349216.P12437779065029490277

`∑[∑[A082858(A001612(n))]]`
-/

namespace A349216.P12437779065029490277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082858 (A001612 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349216.P12437779065029490277

/-! ## A349216.P15780675916116327253

`∑[∑[A065339(A092255(n))]]`
-/

namespace A349216.P15780675916116327253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A092255 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349216.P15780675916116327253

/-! ## A349216.P13755613100583104345

`∑[∑[A055641(A294664(n+1))]]`
-/

namespace A349216.P13755613100583104345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A294664 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349216.P13755613100583104345

/-!
# A349217: a(n) = Sum_{d|n} n^c(d), where c is the prime characteristic (A010051).

The programs for A349217, the canonical program `A349217.P8454150560353347447` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349217 has offset 1).

The definition of A349217 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349217.P8454150560353347447

`n*A001221(n+1)+A000005(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A349217

/-- `n*A001221(n+1)+A000005(n+1)` -/
def P8454150560353347447.Spec : Prop :=
  ∀ n, P8454150560353347447.a n = A349217 (n + 1)

theorem P8454150560353347447.correct : P8454150560353347447.Spec := by
  intro n
  simp only [A349217, Nat.add_sub_cancel]

end A349217

/-! ## A349217.P15711240250818739680

`A348219(n+1)+∑{p}[n+1, n-floor(n/#)]`
-/

namespace A349217.P15711240250818739680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348219 (n + 1) + ∑ p ∈ Nat.primeFactors (f1 n), ((n : ℤ) - ⌊(n : ℚ) / (p : ℚ)⌋)

end

end A349217.P15711240250818739680

namespace A349217

/-- `A348219(n+1)+∑{p}[n+1, n-floor(n/#)]` -/
def P15711240250818739680.Spec : Prop :=
  ∀ n, P15711240250818739680.a n = A349217 (n + 1)

end A349217

/-! ## A349217.P16774282698960149965

`A328260(n+1)+A033273(n+1)`
-/

namespace A349217.P16774282698960149965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328260 (n + 1) + A033273 (n + 1)

end

end A349217.P16774282698960149965

namespace A349217

/-- `A328260(n+1)+A033273(n+1)` -/
def P16774282698960149965.Spec : Prop :=
  ∀ n, P16774282698960149965.a n = A349217 (n + 1)

theorem P16774282698960149965.correct : P16774282698960149965.Spec := by
  intro n
  simp only [A349217, Nat.add_sub_cancel, A349217.P16774282698960149965.a, A349217.P8454150560353347447.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A033273, A033273.P18420659424697249895.a, A328260, A328260.P5916290271217475718.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A349217

/-! ## A349217.P799275007133744020

`A348219(n+1)+A065968(n+1)`
-/

namespace A349217.P799275007133744020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348219 (n + 1) + A065968 (n + 1)

end

end A349217.P799275007133744020

namespace A349217

/-- `A348219(n+1)+A065968(n+1)` -/
def P799275007133744020.Spec : Prop :=
  ∀ n, P799275007133744020.a n = A349217 (n + 1)

end A349217

/-! ## A349217.P15106616389763139006

`A349215(n+1)+A334341(n+1)`
-/

namespace A349217.P15106616389763139006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349215 (n + 1) + A334341 (n + 1)

end

end A349217.P15106616389763139006

namespace A349217

/-- `A349215(n+1)+A334341(n+1)` -/
def P15106616389763139006.Spec : Prop :=
  ∀ n, P15106616389763139006.a n = A349217 (n + 1)

theorem P15106616389763139006.correct : P15106616389763139006.Spec := by
  intro n
  simp only [A349217, Nat.add_sub_cancel, A349217.P15106616389763139006.a, A349217.P8454150560353347447.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A334341, A334341.P2984648088017996111.a, A349215, A349215.P7117496428552855771.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A349217

/-! ## A349217.P3905328028328765866

`Δ[A006218(n)]+n*A001221(n+1)`
-/

namespace A349217.P3905328028328765866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ) * A001221 (n + 1)

end

end A349217.P3905328028328765866

namespace A349217

/-- `Δ[A006218(n)]+n*A001221(n+1)` -/
def P3905328028328765866.Spec : Prop :=
  ∀ n, P3905328028328765866.a n = A349217 (n + 1)

end A349217

/-! ## A349217.P242636827776038116

`Δ[A054519(n)]+n*A001221(n+1)`
-/

namespace A349217.P242636827776038116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ) * A001221 (n + 1)

end

end A349217.P242636827776038116

namespace A349217

/-- `Δ[A054519(n)]+n*A001221(n+1)` -/
def P242636827776038116.Spec : Prop :=
  ∀ n, P242636827776038116.a n = A349217 (n + 1)

end A349217

/-! ## A349217.P1934150833382391020

`∑{d}[n+1, (n+1)^val(A000040(A000005(#)), 3)]`
-/

namespace A349217.P1934150833382391020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1) ^ SequenceMachineLib.valuation (A000040 (A000005 d).toNat).toNat 3

end

end A349217.P1934150833382391020

namespace A349217

/-- `∑{d}[n+1, (n+1)^val(A000040(A000005(#)), 3)]` -/
def P1934150833382391020.Spec : Prop :=
  ∀ n, (P1934150833382391020.a n : ℤ) = A349217 (n + 1)

end A349217

/-! ## A349217.P7450505984274739426

`A000005(n+1)+n*∑{p}[n+1, A001222(#)]`
-/

namespace A349217.P7450505984274739426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (n : ℤ) * (∑ p ∈ Nat.primeFactors (f1 n), A001222 p)

end

end A349217.P7450505984274739426

namespace A349217

/-- `A000005(n+1)+n*∑{p}[n+1, A001222(#)]` -/
def P7450505984274739426.Spec : Prop :=
  ∀ n, P7450505984274739426.a n = A349217 (n + 1)

end A349217

/-! ## A349217.P16244461046607735955

`A000005(n+1)+n*A001222(∏{p}[n+1, #])`
-/

namespace A349217.P16244461046607735955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (n : ℤ) * A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A349217.P16244461046607735955

namespace A349217

/-- `A000005(n+1)+n*A001222(∏{p}[n+1, #])` -/
def P16244461046607735955.Spec : Prop :=
  ∀ n, P16244461046607735955.a n = A349217 (n + 1)

end A349217

/-! ## A349217.P4298438222536804377

`A000005(n+1)-n*∑{p}[n+1, A008683(#)]`
-/

namespace A349217.P4298438222536804377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (n : ℤ) * (∑ p ∈ Nat.primeFactors (f1 n), A008683 p)

end

end A349217.P4298438222536804377

namespace A349217

/-- `A000005(n+1)-n*∑{p}[n+1, A008683(#)]` -/
def P4298438222536804377.Spec : Prop :=
  ∀ n, P4298438222536804377.a n = A349217 (n + 1)

end A349217

/-! ## A349217.P11542760035238674677

`A000005(n+1)+n*A087802(n+1)`
-/

namespace A349217.P11542760035238674677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (n : ℤ) * A087802 (n + 1)

end

end A349217.P11542760035238674677

namespace A349217

/-- `A000005(n+1)+n*A087802(n+1)` -/
def P11542760035238674677.Spec : Prop :=
  ∀ n, P11542760035238674677.a n = A349217 (n + 1)

end A349217

/-!
# A349218: a(n) is the X-coordinate of the n-th point of the 7-dragon curve; sequence A349219 gives Y-coordinates.

The programs for A349218, there is no canonical definition to state claims against.
-/

/-! ## A349218.P4326017506675794308

`∑[A092220(A233862(n+1)+n+1)]`
-/

namespace A349218.P4326017506675794308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092220 (A233862 (n + 1) + (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349218.P4326017506675794308

/-! ## A349218.P14161632660051408865

`A093998(A020706(n))-A093998(A001612(n))`
-/

namespace A349218.P14161632660051408865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093998 (A020706 n).toNat - A093998 (A001612 n).toNat

end

end A349218.P14161632660051408865

/-! ## A349218.P5557232239198103279

`∑[A074290(record[A320047(n+4)])]`
-/

namespace A349218.P5557232239198103279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320047 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074290 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349218.P5557232239198103279

/-! ## A349218.P6381596918530857139

`A284248(A206297(n+1))-floor(n/2)`
-/

namespace A349218.P6381596918530857139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284248 (A206297 (n + 1)).toNat - ⌊(n : ℚ) / 2⌋

end

end A349218.P6381596918530857139

/-! ## A349218.P18087386876395894462

`∑[A260190(A060373(A090453(n)))]`
-/

namespace A349218.P18087386876395894462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260190 (A060373 (A090453 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349218.P18087386876395894462

/-!
# A349219: a(n) is the Y-coordinate of the n-th point of the 7-dragon curve; sequence A349218 gives X-coordinates.

The programs for A349219, there is no canonical definition to state claims against.
-/

/-! ## A349219.P1349500632957933541

`A122923(A020697(n+1)-A122923(n))`
-/

namespace A349219.P1349500632957933541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122923 (A020697 (n + 1) - A122923 n).toNat

end

end A349219.P1349500632957933541

/-! ## A349219.P6472852155140905316

`A088519(A324754(n))-A001462(A001156(n))`
-/

namespace A349219.P6472852155140905316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088519 (A324754 n).toNat - A001462 (A001156 n).toNat

end

end A349219.P6472852155140905316

/-! ## A349219.P18439996657915497392

`A037812(A268944(n+1)+A001405(n))`
-/

namespace A349219.P18439996657915497392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037812 (A268944 (n + 1) + A001405 n).toNat

end

end A349219.P18439996657915497392

/-! ## A349219.P16825934267724650963

`or(A358480(A358488(2*(n+2))), A358480(3*n+4))`
-/

namespace A349219.P16825934267724650963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A358480 (A358488 (2 * (n + 2))).toNat) (A358480 (3 * n + 4))

end

end A349219.P16825934267724650963

/-! ## A349219.P13715342306700579696

`A103568(A094649(n))%A347648(n)`
-/

namespace A349219.P13715342306700579696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103568 (A094649 n).toNat) (A347648 n)

end

end A349219.P13715342306700579696

/-!
# A349221: Triangle read by rows: T(n, k) = 1 if k divides binomial(n-1, k-1), T(n, k) = 0 otherwise (n >= 1, 1 <= k <= n).

The programs for A349221, the canonical program `A349221.P9908063054946175766` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349221 has offset 1).

The definition of A349221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349221.P11344308164075170227

`floor(acot(A231642(n+1)))`
-/

namespace A349221.P11344308164075170227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A231642 (n + 1) : ℝ)⌋

end

end A349221.P11344308164075170227

namespace A349221

/-- `floor(acot(A231642(n+1)))` -/
def P11344308164075170227.Spec : Prop :=
  ∀ n, P11344308164075170227.a n = A349221 (n + 1)

end A349221

/-! ## A349221.P9908063054946175766

`A000007(A231642(n+1))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A349221

/-- `A000007(A231642(n+1))` -/
def P9908063054946175766.Spec : Prop :=
  ∀ n, P9908063054946175766.a n = A349221 (n + 1)

theorem P9908063054946175766.correct : P9908063054946175766.Spec := by
  intro n
  simp only [A349221, Nat.add_sub_cancel]

end A349221

/-! ## A349221.P7657566521752957927

`A105523(2*A231642(n+1))`
-/

namespace A349221.P7657566521752957927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 (2 * A231642 (n + 1)).toNat

end

end A349221.P7657566521752957927

namespace A349221

/-- `A105523(2*A231642(n+1))` -/
def P7657566521752957927.Spec : Prop :=
  ∀ n, P7657566521752957927.a n = A349221 (n + 1)

end A349221

/-! ## A349221.P6194142804964736518

`∏{d}[A231642(n+1), A231642(#)]`
-/

namespace A349221.P6194142804964736518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A231642 d

end

end A349221.P6194142804964736518

namespace A349221

/-- `∏{d}[A231642(n+1), A231642(#)]` -/
def P6194142804964736518.Spec : Prop :=
  ∀ n, P6194142804964736518.a n = A349221 (n + 1)

end A349221

/-! ## A349221.P9254937941152536884

`A008683((A231642(n+1)+1)²)`
-/

namespace A349221.P9254937941152536884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((A231642 (n + 1) + 1) ^ 2).toNat

end

end A349221.P9254937941152536884

namespace A349221

/-- `A008683((A231642(n+1)+1)²)` -/
def P9254937941152536884.Spec : Prop :=
  ∀ n, P9254937941152536884.a n = A349221 (n + 1)

end A349221

/-! ## A349221.P18190869507343709291

`1-A089309(A231642(n+1)²)`
-/

namespace A349221.P18190869507343709291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A089309 (A231642 (n + 1) ^ 2).toNat

end

end A349221.P18190869507343709291

namespace A349221

/-- `1-A089309(A231642(n+1)²)` -/
def P18190869507343709291.Spec : Prop :=
  ∀ n, P18190869507343709291.a n = A349221 (n + 1)

end A349221

/-! ## A349221.P9664798254382422847

`A000010(A231642(n+1)+2)%2`
-/

namespace A349221.P9664798254382422847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A231642 (n + 1) + 2).toNat) 2

end

end A349221.P9664798254382422847

namespace A349221

/-- `A000010(A231642(n+1)+2)%2` -/
def P9664798254382422847.Spec : Prop :=
  ∀ n, P9664798254382422847.a n = A349221 (n + 1)

end A349221

/-! ## A349221.P3866159201083336238

`1-ceil(A231642(n+1)/A082040(n))`
-/

namespace A349221.P3866159201083336238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌈(A231642 (n + 1) : ℚ) / (A082040 n : ℚ)⌉

end

end A349221.P3866159201083336238

namespace A349221

/-- `1-ceil(A231642(n+1)/A082040(n))` -/
def P3866159201083336238.Spec : Prop :=
  ∀ n, P3866159201083336238.a n = A349221 (n + 1)

end A349221

/-! ## A349221.P15376243699662684731

`A008683(A065642(A231642(n+1)+1))`
-/

namespace A349221.P15376243699662684731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A065642 (A231642 (n + 1) + 1).toNat).toNat

end

end A349221.P15376243699662684731

namespace A349221

/-- `A008683(A065642(A231642(n+1)+1))` -/
def P15376243699662684731.Spec : Prop :=
  ∀ n, P15376243699662684731.a n = A349221 (n + 1)

end A349221

/-! ## A349221.P17549366183789111984

`A008683(A008458(2*A231642(n+1)))`
-/

namespace A349221.P17549366183789111984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008458 (2 * A231642 (n + 1)).toNat).toNat

end

end A349221.P17549366183789111984

namespace A349221

/-- `A008683(A008458(2*A231642(n+1)))` -/
def P17549366183789111984.Spec : Prop :=
  ∀ n, P17549366183789111984.a n = A349221 (n + 1)

end A349221

/-! ## A349221.P14641594555749766693

`A000007(A007318(n)%A002260(n+1))`
-/

namespace A349221.P14641594555749766693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A007318 n) (A002260 (n + 1))).toNat

end

end A349221.P14641594555749766693

namespace A349221

/-- `A000007(A007318(n)%A002260(n+1))` -/
def P14641594555749766693.Spec : Prop :=
  ∀ n, P14641594555749766693.a n = A349221 (n + 1)

end A349221

/-! ## A349221.P4753867039521810068

`A000007((A014473(n)+1)%A002260(n+1))`
-/

namespace A349221.P4753867039521810068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A014473 n + 1) (A002260 (n + 1))).toNat

end

end A349221.P4753867039521810068

namespace A349221

/-- `A000007((A014473(n)+1)%A002260(n+1))` -/
def P4753867039521810068.Spec : Prop :=
  ∀ n, P4753867039521810068.a n = A349221 (n + 1)

end A349221

/-! ## A349221.P2185559187730019635

`A000007(ceil(A134059(n)/3)%A002260(n+1))`
-/

namespace A349221.P2185559187730019635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod ⌈(A134059 n : ℚ) / 3⌉ (A002260 (n + 1))).toNat

end

end A349221.P2185559187730019635

namespace A349221

/-- `A000007(ceil(A134059(n)/3)%A002260(n+1))` -/
def P2185559187730019635.Spec : Prop :=
  ∀ n, P2185559187730019635.a n = A349221 (n + 1)

end A349221

/-! ## A349221.P7955879640566815617

`A000007((A285118(n)+A285116(n))%A002260(n+1))`
-/

namespace A349221.P7955879640566815617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A285118 n + A285116 n) (A002260 (n + 1))).toNat

end

end A349221.P7955879640566815617

namespace A349221

/-- `A000007((A285118(n)+A285116(n))%A002260(n+1))` -/
def P7955879640566815617.Spec : Prop :=
  ∀ n, P7955879640566815617.a n = A349221 (n + 1)

end A349221

/-! ## A349221.P12984504083107798467

`A000007((A028276(n)-A028263(n))%A002260(n+1))`
-/

namespace A349221.P12984504083107798467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A028276 n - A028263 n) (A002260 (n + 1))).toNat

end

end A349221.P12984504083107798467

namespace A349221

/-- `A000007((A028276(n)-A028263(n))%A002260(n+1))` -/
def P12984504083107798467.Spec : Prop :=
  ∀ n, P12984504083107798467.a n = A349221 (n + 1)

end A349221

/-! ## A349221.P4321562038219097196

`A000007((A097805(n+1)+A097805(n))%A002260(n+1))`
-/

namespace A349221.P4321562038219097196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A097805 (n + 1) + A097805 n) (A002260 (n + 1))).toNat

end

end A349221.P4321562038219097196

namespace A349221

/-- `A000007((A097805(n+1)+A097805(n))%A002260(n+1))` -/
def P4321562038219097196.Spec : Prop :=
  ∀ n, P4321562038219097196.a n = A349221 (n + 1)

end A349221

/-! ## A349221.P7090847190412566909

`A005369(A231642(n+1)²)`
-/

namespace A349221.P7090847190412566909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (A231642 (n + 1) ^ 2).toNat

end

end A349221.P7090847190412566909

namespace A349221

/-- `A005369(A231642(n+1)²)` -/
def P7090847190412566909.Spec : Prop :=
  ∀ n, P7090847190412566909.a n = A349221 (n + 1)

end A349221

/-! ## A349221.P16987388600464869338

`1-A011628(A231642(n+1)²)`
-/

namespace A349221.P16987388600464869338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A011628 (A231642 (n + 1) ^ 2).toNat

end

end A349221.P16987388600464869338

namespace A349221

/-- `1-A011628(A231642(n+1)²)` -/
def P16987388600464869338.Spec : Prop :=
  ∀ n, P16987388600464869338.a n = A349221 (n + 1)

end A349221

/-! ## A349221.P10490593632115755226

`A008458(A231642(n+1)²)%2`
-/

namespace A349221.P10490593632115755226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008458 (A231642 (n + 1) ^ 2).toNat) 2

end

end A349221.P10490593632115755226

namespace A349221

/-- `A008458(A231642(n+1)²)%2` -/
def P10490593632115755226.Spec : Prop :=
  ∀ n, P10490593632115755226.a n = A349221 (n + 1)

end A349221

/-! ## A349221.P2470386625839055330

`A000007((A176348(n)/A176346(n))%A002260(n+1))`
-/

namespace A349221.P2470386625839055330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (SequenceMachineLib.roundAway ((A176348 n : ℚ) / (A176346 n : ℚ))) (A002260 (n + 1))).toNat

end

end A349221.P2470386625839055330

namespace A349221

/-- `A000007((A176348(n)/A176346(n))%A002260(n+1))` -/
def P2470386625839055330.Spec : Prop :=
  ∀ n, P2470386625839055330.a n = A349221 (n + 1)

end A349221

/-!
# A349222: Numbers k such that k and k+1 have the same average of unitary divisors.

The programs for A349222, there is no canonical definition to state claims against.
-/

/-! ## A349222.P12969101204416339887

`A064125(round(2^(n/2)))%A006126(n+3)`
-/

namespace A349222.P12969101204416339887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064125 (SequenceMachineLib.roundAway ((2 : ℝ) ^ ((n : ℚ) / 2 : ℝ))).toNat) (A006126 (n + 3))

end

end A349222.P12969101204416339887

/-!
# A349223: Numbers k with a record number of ways to factor k into composite factors.

The programs for A349223, there is no canonical definition to state claims against.
-/

/-! ## A349223.P811643002369614767

`A131883(A045852(n))`
-/

namespace A349223.P811643002369614767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131883 (A045852 n).toNat

end

end A349223.P811643002369614767

/-! ## A349223.P1950536786632826592

`A330972(n+1)*A374758(A374743(n))`
-/

namespace A349223.P1950536786632826592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330972 (n + 1) * A374758 (A374743 n).toNat

end

end A349223.P1950536786632826592

/-! ## A349223.P11672146582933254322

`A167569(n+1)*A338480(A167569(n+1))`
-/

namespace A349223.P11672146582933254322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167569 (n + 1) * A338480 (A167569 (n + 1)).toNat

end

end A349223.P11672146582933254322

/-!
# A349228: Products of three consecutive terms of A349227: a(n) = A349227(n) * A349227(n+1) * A349227(n+2).

The programs for A349228, there is no canonical definition to state claims against.
-/

/-! ## A349228.P4131921701294062607

`A349227(n+1)*A349227(n+2)*A349227(n+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349228.P4131921701294062607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349227 (n + 1) * A349227 (n + 2) * A349227 (n + 3)

end

end A349228.P4131921701294062607

/-!
# A349229: a(n) = Sum_{k=1..n} (-1)^A001222(k)*(-1)^A001222(k+1).

The programs for A349229, the canonical program `A349229.P9986666474547868856` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349229 has offset 1).

The definition of A349229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349229.P7587096947504498364

`∑[-(-1)^∑{e}[∑[n+1], #]]`
-/

namespace A349229.P7587096947504498364
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349229.P7587096947504498364

namespace A349229

/-- `∑[-(-1)^∑{e}[∑[n+1], #]]` -/
def P7587096947504498364.Spec : Prop :=
  ∀ n, P7587096947504498364.a n = A349229 (n + 1)

end A349229

/-! ## A349229.P9986666474547868856

`∑[∏{e}[∑[2*(n+1)], (-1)^#]]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A349229

/-- `∑[∏{e}[∑[2*(n+1)], (-1)^#]]` -/
def P9986666474547868856.Spec : Prop :=
  ∀ n, P9986666474547868856.a n = A349229 (n + 1)

theorem P9986666474547868856.correct : P9986666474547868856.Spec := by
  intro n
  simp only [A349229, Nat.add_sub_cancel]

end A349229

/-! ## A349229.P13613478350713502894

`∑[(-1)^(∑{e}[n+2, #]-∑{e}[n+1, #])]`
-/

namespace A349229.P13613478350713502894
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p : ℕ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349229.P13613478350713502894

namespace A349229

/-- `∑[(-1)^(∑{e}[n+2, #]-∑{e}[n+1, #])]` -/
def P13613478350713502894.Spec : Prop :=
  ∀ n, P13613478350713502894.a n = (A349229 (n + 1) : ℚ)

end A349229

/-! ## A349229.P15754932114941350168

`∑[ratio[Δ[A002819(n)]]]`
-/

namespace A349229.P15754932114941350168
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002819 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349229.P15754932114941350168

namespace A349229

/-- `∑[ratio[Δ[A002819(n)]]]` -/
def P15754932114941350168.Spec : Prop :=
  ∀ n, P15754932114941350168.a n = (A349229 (n + 1) : ℚ)

end A349229

/-! ## A349229.P9754511501850282766

`∑[ratio[A008836(n+1)]]`
-/

namespace A349229.P9754511501850282766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349229.P9754511501850282766

namespace A349229

/-- `∑[ratio[A008836(n+1)]]` -/
def P9754511501850282766.Spec : Prop :=
  ∀ n, P9754511501850282766.a n = (A349229 (n + 1) : ℚ)

end A349229

/-! ## A349229.P18417695033570134258

`∑[-A008836(∑[n+1])]`
-/

namespace A349229.P18417695033570134258
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008836 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349229.P18417695033570134258

namespace A349229

/-- `∑[-A008836(∑[n+1])]` -/
def P18417695033570134258.Spec : Prop :=
  ∀ n, P18417695033570134258.a n = A349229 (n + 1)

end A349229

/-! ## A349229.P1128866036333148116

`∑[(-1)^Δ[A001222(n+1)]]`
-/

namespace A349229.P1128866036333148116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349229.P1128866036333148116

namespace A349229

/-- `∑[(-1)^Δ[A001222(n+1)]]` -/
def P1128866036333148116.Spec : Prop :=
  ∀ n, P1128866036333148116.a n = (A349229 (n + 1) : ℚ)

end A349229

/-! ## A349229.P10311402179977015619

`∑[-(-1)^A001222(∑[n+1])]`
-/

namespace A349229.P10311402179977015619
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((-1 : ℚ) ^ (A001222 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349229.P10311402179977015619

namespace A349229

/-- `∑[-(-1)^A001222(∑[n+1])]` -/
def P10311402179977015619.Spec : Prop :=
  ∀ n, P10311402179977015619.a n = (A349229 (n + 1) : ℚ)

end A349229

/-! ## A349229.P12348555393984403833

`∑[A008683(A083481(n+1))]`
-/

namespace A349229.P12348555393984403833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A083481 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349229.P12348555393984403833

namespace A349229

/-- `∑[A008683(A083481(n+1))]` -/
def P12348555393984403833.Spec : Prop :=
  ∀ n, P12348555393984403833.a n = A349229 (n + 1)

end A349229

/-! ## A349229.P8104899971387988188

`∑[A008683(A002734((n+1)²))]`
-/

namespace A349229.P8104899971387988188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002734 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349229.P8104899971387988188

namespace A349229

/-- `∑[A008683(A002734((n+1)²))]` -/
def P8104899971387988188.Spec : Prop :=
  ∀ n, P8104899971387988188.a n = A349229 (n + 1)

end A349229

/-! ## A349229.P15074331716626198377

`∑[ratio[A008683(A007913(n+1))]]`
-/

namespace A349229.P15074331716626198377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007913 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349229.P15074331716626198377

namespace A349229

/-- `∑[ratio[A008683(A007913(n+1))]]` -/
def P15074331716626198377.Spec : Prop :=
  ∀ n, P15074331716626198377.a n = (A349229 (n + 1) : ℚ)

end A349229

/-! ## A349229.P1542899077626913423

`∑[A008683(A068310(2*n+3))]`
-/

namespace A349229.P1542899077626913423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A068310 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349229.P1542899077626913423

namespace A349229

/-- `∑[A008683(A068310(2*n+3))]` -/
def P1542899077626913423.Spec : Prop :=
  ∀ n, P1542899077626913423.a n = A349229 (n + 1)

end A349229

/-! ## A349229.P10868192705527758976

`∑[A008683(A007913(∑[2*(n+1)]))]`
-/

namespace A349229.P10868192705527758976
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007913 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349229.P10868192705527758976

namespace A349229

/-- `∑[A008683(A007913(∑[2*(n+1)]))]` -/
def P10868192705527758976.Spec : Prop :=
  ∀ n, P10868192705527758976.a n = A349229 (n + 1)

end A349229

/-! ## A349229.P17473439800344780579

`∑[ratio[A008683(or(46, A001222(n+1)))]]`
-/

namespace A349229.P17473439800344780579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.lor 46 (A001222 (n + 1))).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349229.P17473439800344780579

namespace A349229

/-- `∑[ratio[A008683(or(46, A001222(n+1)))]]` -/
def P17473439800344780579.Spec : Prop :=
  ∀ n, P17473439800344780579.a n = (A349229 (n + 1) : ℚ)

end A349229

/-! ## A349229.P13563440634871269425

`∑[A062157(A001222(n+1)+1+A001222(n+2))]`
-/

namespace A349229.P13563440634871269425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A001222 (n + 1) + 1 + A001222 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349229.P13563440634871269425

namespace A349229

/-- `∑[A062157(A001222(n+1)+1+A001222(n+2))]` -/
def P13563440634871269425.Spec : Prop :=
  ∀ n, P13563440634871269425.a n = A349229 (n + 1)

end A349229

/-!
# A349230: Numbers k such that k and k+3 are consecutive squarefree numbers.

The programs for A349230, the canonical program `A349230.P2013382610802091613` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349230 has offset 1).

The definition of A349230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3571 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349230.P2013382610802091613

`eq[2, A105570(n)+A081221(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A349230

/-- `eq[2, A105570(n)+A081221(n+1)]` -/
def P2013382610802091613.Spec : Prop :=
  ∀ n, (P2013382610802091613.a n : ℤ) = A349230 (n + 1)

theorem P2013382610802091613.correct : P2013382610802091613.Spec := by
  intro n
  simp only [A349230, Nat.add_sub_cancel]

end A349230

/-! ## A349230.P12732240458339140469

`eq[3, A081221(n+1)+A080733(n+1)]`
-/

namespace A349230.P12732240458339140469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081221 (n + 1) + A080733 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349230.P12732240458339140469

namespace A349230

/-- `eq[3, A081221(n+1)+A080733(n+1)]` -/
def P12732240458339140469.Spec : Prop :=
  ∀ n, (P12732240458339140469.a n : ℤ) = A349230 (n + 1)

end A349230

/-! ## A349230.P17127316577155581336

`eq[A081221(n+1), A100637(A105570(n))]`
-/

namespace A349230.P17127316577155581336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 (A105570 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349230.P17127316577155581336

namespace A349230

/-- `eq[A081221(n+1), A100637(A105570(n))]` -/
def P17127316577155581336.Spec : Prop :=
  ∀ n, (P17127316577155581336.a n : ℤ) = A349230 (n + 1)

end A349230

/-! ## A349230.P3237823128458803728

`eq[3, A378085(n+2)]`
-/

namespace A349230.P3237823128458803728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378085 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349230.P3237823128458803728

namespace A349230

/-- `eq[3, A378085(n+2)]` -/
def P3237823128458803728.Spec : Prop :=
  ∀ n, (P3237823128458803728.a n : ℤ) = A349230 (n + 1)

end A349230

/-! ## A349230.P12844092753295952126

`record[A015053(eq[3, A076260(n+1)])]`
-/

namespace A349230.P12844092753295952126
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076260 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349230.P12844092753295952126

namespace A349230

/-- `record[A015053(eq[3, A076260(n+1)])]` -/
def P12844092753295952126.Spec : Prop :=
  ∀ n, P12844092753295952126.a n = A349230 (n + 1)

end A349230

/-! ## A349230.P14571422059394366292

`eq[2, A072909(n+1)*A080733(n+1)]`
-/

namespace A349230.P14571422059394366292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072909 (n + 1) * A080733 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349230.P14571422059394366292

namespace A349230

/-- `eq[2, A072909(n+1)*A080733(n+1)]` -/
def P14571422059394366292.Spec : Prop :=
  ∀ n, (P14571422059394366292.a n : ℤ) = A349230 (n + 1)

end A349230

/-! ## A349230.P1647727427767874774

`A023443(∩[A053806(n+1), A072284(n+1)-2])`
-/

namespace A349230.P1647727427767874774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072284 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A349230.P1647727427767874774

namespace A349230

/-- `A023443(∩[A053806(n+1), A072284(n+1)-2])` -/
def P1647727427767874774.Spec : Prop :=
  ∀ n, P1647727427767874774.a n = A349230 (n + 1)

end A349230

/-! ## A349230.P6586320647507775433

`eq[A005408(A285328(n+3)), A285718(n+3)]`
-/

namespace A349230.P6586320647507775433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A285328 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285718 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349230.P6586320647507775433

namespace A349230

/-- `eq[A005408(A285328(n+3)), A285718(n+3)]` -/
def P6586320647507775433.Spec : Prop :=
  ∀ n, (P6586320647507775433.a n : ℤ) = A349230 (n + 1)

end A349230

/-! ## A349230.P6910199900161440926

`eq[A000040(A328400(n+3)), A285718(n+3)]`
-/

namespace A349230.P6910199900161440926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A328400 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285718 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349230.P6910199900161440926

namespace A349230

/-- `eq[A000040(A328400(n+3)), A285718(n+3)]` -/
def P6910199900161440926.Spec : Prop :=
  ∀ n, (P6910199900161440926.a n : ℤ) = A349230 (n + 1)

end A349230

/-! ## A349230.P18318629471232809666

`eq[A005408(A335341(n+3)), A285718(n+3)]`
-/

namespace A349230.P18318629471232809666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A335341 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285718 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349230.P18318629471232809666

namespace A349230

/-- `eq[A005408(A335341(n+3)), A285718(n+3)]` -/
def P18318629471232809666.Spec : Prop :=
  ∀ n, (P18318629471232809666.a n : ℤ) = A349230 (n + 1)

end A349230

/-! ## A349230.P16575105831000511368

`eq[A007678(A285718(n+3)), A285718(n+4)]`
-/

namespace A349230.P16575105831000511368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007678 (A285718 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285718 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349230.P16575105831000511368

namespace A349230

/-- `eq[A007678(A285718(n+3)), A285718(n+4)]` -/
def P16575105831000511368.Spec : Prop :=
  ∀ n, (P16575105831000511368.a n : ℤ) = A349230 (n + 1)

end A349230

/-! ## A349230.P14305887812724676557

`eq[A285718(n+3), A328070(A348963(n+3))]`
-/

namespace A349230.P14305887812724676557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285718 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328070 (A348963 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349230.P14305887812724676557

namespace A349230

/-- `eq[A285718(n+3), A328070(A348963(n+3))]` -/
def P14305887812724676557.Spec : Prop :=
  ∀ n, (P14305887812724676557.a n : ℤ) = A349230 (n + 1)

end A349230

/-!
# A349231: Numbers k such that k and k+4 are consecutive squarefree numbers.

The programs for A349231, there is no canonical definition to state claims against.
-/

/-! ## A349231.P14266244560190629188

`eq[4, A079229(A028310(n))]`
-/

namespace A349231.P14266244560190629188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079229 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349231.P14266244560190629188

/-! ## A349231.P7851796052710434565

`A020725(eq[4, A079229(n+1)])`
-/

namespace A349231.P7851796052710434565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A349231.P7851796052710434565

/-! ## A349231.P16278976334314907420

`A065475(eq[4, A079229(n+1)])`
-/

namespace A349231.P16278976334314907420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A349231.P16278976334314907420

/-! ## A349231.P4912850581957736933

`A079228(eq[4, A079229(n+1)])`
-/

namespace A349231.P4912850581957736933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A349231.P4912850581957736933

/-! ## A349231.P749054061473542183

`eq[A020705(n), A079228(A028310(n))]`
-/

namespace A349231.P749054061473542183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079228 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349231.P749054061473542183

/-! ## A349231.P3897186130452421142

`eq[A076260(n+1), A311339(A255326(n))]`
-/

namespace A349231.P3897186130452421142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311339 (A255326 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349231.P3897186130452421142

/-!
# A349234: Numbers k such that k and k+3 are consecutive cubefree numbers.

The programs for A349234, there is no canonical definition to state claims against.
-/

/-! ## A349234.P148167139201718003

`A068140(A187829(n+1))-1`
-/

namespace A349234.P148167139201718003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068140 (A187829 (n + 1)).toNat - 1

end

end A349234.P148167139201718003

/-! ## A349234.P11792568221242832369

`A068140(n+1)-A028240(n)!`
-/

namespace A349234.P11792568221242832369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068140 (n + 1) - (Nat.factorial (A028240 n).toNat : ℤ)

end

end A349234.P11792568221242832369

/-! ## A349234.P15313531668788927595

`A068140(n+1)-A318512(2^n)`
-/

namespace A349234.P15313531668788927595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068140 (n + 1) - A318512 (2 ^ n)

end

end A349234.P15313531668788927595

/-! ## A349234.P3351673802079668267

`A068140(n+1)-A122853(n+1)%2`
-/

namespace A349234.P3351673802079668267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068140 (n + 1) - Int.tmod (A122853 (n + 1)) 2

end

end A349234.P3351673802079668267

/-! ## A349234.P3628611083763700135

`A068140(n+1)-A000593(ceil(2^(n-1)))`
-/

namespace A349234.P3628611083763700135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068140 (n + 1) - A000593 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A349234.P3628611083763700135

/-!
# A349235: Numbers k such that k and k+4 are consecutive cubefree numbers.

The programs for A349235, there is no canonical definition to state claims against.
-/

/-! ## A349235.P5759353828149574511

`A122692(A032555(n+1))-2`
-/

namespace A349235.P5759353828149574511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122692 (A032555 (n + 1)).toNat - 2

end

end A349235.P5759353828149574511

/-! ## A349235.P11975429370072454080

`A122692(A032559(n+1))-2`
-/

namespace A349235.P11975429370072454080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122692 (A032559 (n + 1)).toNat - 2

end

end A349235.P11975429370072454080

/-! ## A349235.P6302753341702677681

`A122692(n+1)+A118824(A107392(n))`
-/

namespace A349235.P6302753341702677681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122692 (n + 1) + A118824 (A107392 n).toNat

end

end A349235.P6302753341702677681

/-! ## A349235.P1451390269494379469

`A122692(n+1)-A000034(A000244(n))`
-/

namespace A349235.P1451390269494379469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122692 (n + 1) - A000034 (A000244 n).toNat

end

end A349235.P1451390269494379469

/-!
# A349236: Gaps between cubefree numbers: a(n) = A004709(n+1) - A004709(n).

The programs for A349236, the canonical program `A349236.P18314277781775448456` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349236 has offset 1).

The definition of A349236 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349236.P18314277781775448456

`A004709(n+2)-A004709(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A349236

/-- `A004709(n+2)-A004709(n+1)` -/
def P18314277781775448456.Spec : Prop :=
  ∀ n, P18314277781775448456.a n = A349236 (n + 1)

theorem P18314277781775448456.correct : P18314277781775448456.Spec := by
  intro n
  simp only [A349236, Nat.add_sub_cancel]

end A349236

/-! ## A349236.P6374066946610889651

`Δ[A004709(n+1)]`
-/

namespace A349236.P6374066946610889651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349236.P6374066946610889651

namespace A349236

/-- `Δ[A004709(n+1)]` -/
def P6374066946610889651.Spec : Prop :=
  ∀ n, P6374066946610889651.a n = A349236 (n + 1)

theorem P6374066946610889651.correct : P6374066946610889651.Spec := by
  intro n
  simp only [A349236, Nat.add_sub_cancel, A349236.P6374066946610889651.f1, A349236.P6374066946610889651.a, A349236.P18314277781775448456.a, SequenceMachineLib.memo_apply]

end A349236

/-! ## A349236.P14566850204993876342

`Δ[sqrt(A392365(n+1))]`
-/

namespace A349236.P14566850204993876342
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A392365 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349236.P14566850204993876342

namespace A349236

/-- `Δ[sqrt(A392365(n+1))]` -/
def P14566850204993876342.Spec : Prop :=
  ∀ n, P14566850204993876342.a n = (A349236 (n + 1) : ℝ)

end A349236

/-! ## A349236.P7729653495003831781

`Δ[lt[A051903(n+1), 3]]`
-/

namespace A349236.P7729653495003831781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A349236.P7729653495003831781

namespace A349236

/-- `Δ[lt[A051903(n+1), 3]]` -/
def P7729653495003831781.Spec : Prop :=
  ∀ n, P7729653495003831781.a n = A349236 (n + 1)

end A349236

/-! ## A349236.P5706799818699305348

`Δ[A180499(n+1)-(n+1)^3]`
-/

namespace A349236.P5706799818699305348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180499 (n + 1) - ((n + 1) ^ 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349236.P5706799818699305348

namespace A349236

/-- `Δ[A180499(n+1)-(n+1)^3]` -/
def P5706799818699305348.Spec : Prop :=
  ∀ n, P5706799818699305348.a n = A349236 (n + 1)

theorem P5706799818699305348.correct : P5706799818699305348.Spec := by
  intro n
  simp only [A349236, Nat.add_sub_cancel, A349236.P5706799818699305348.f1, A349236.P5706799818699305348.a, A349236.P18314277781775448456.a, A004709, A004709.P11605199300458361357.f1, A004709.P11605199300458361357.f2, A004709.P11605199300458361357.a, A180499, A180499.P14708687511346327286.a, A113061, A113061.P11150295760055610552.f1, A113061.P11150295760055610552.a, A010057, A010057.P3441922768549040012.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A349236

/-! ## A349236.P10830391980887865255

`A034891(A004709(n+2)%A004709(n+1))`
-/

namespace A349236.P10830391980887865255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034891 (Int.tmod (A004709 (n + 2)) (A004709 (n + 1))).toNat

end

end A349236.P10830391980887865255

namespace A349236

/-- `A034891(A004709(n+2)%A004709(n+1))` -/
def P10830391980887865255.Spec : Prop :=
  ∀ n, P10830391980887865255.a n = A349236 (n + 1)

end A349236

/-! ## A349236.P14684251954159790179

`Δ[record[A382902(n+1)]]`
-/

namespace A349236.P14684251954159790179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382902 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349236.P14684251954159790179

namespace A349236

/-- `Δ[record[A382902(n+1)]]` -/
def P14684251954159790179.Spec : Prop :=
  ∀ n, P14684251954159790179.a n = A349236 (n + 1)

end A349236

/-! ## A349236.P6833454737334703700

`Δ[record[A382903(n+1)]]`
-/

namespace A349236.P6833454737334703700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382903 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349236.P6833454737334703700

namespace A349236

/-- `Δ[record[A382903(n+1)]]` -/
def P6833454737334703700.Spec : Prop :=
  ∀ n, P6833454737334703700.a n = A349236 (n + 1)

end A349236

/-! ## A349236.P14280678517667860709

`Δ[record[A007948(n+1)]]`
-/

namespace A349236.P14280678517667860709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349236.P14280678517667860709

namespace A349236

/-- `Δ[record[A007948(n+1)]]` -/
def P14280678517667860709.Spec : Prop :=
  ∀ n, P14280678517667860709.a n = A349236 (n + 1)

end A349236

/-! ## A349236.P13696714296069214788

`Δ[record[A050985(n+1)]]`
-/

namespace A349236.P13696714296069214788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349236.P13696714296069214788

namespace A349236

/-- `Δ[record[A050985(n+1)]]` -/
def P13696714296069214788.Spec : Prop :=
  ∀ n, P13696714296069214788.a n = A349236 (n + 1)

end A349236

/-! ## A349236.P11321264100144077373

`Δ[record[A066990(n+1)]]`
-/

namespace A349236.P11321264100144077373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349236.P11321264100144077373

namespace A349236

/-- `Δ[record[A066990(n+1)]]` -/
def P11321264100144077373.Spec : Prop :=
  ∀ n, P11321264100144077373.a n = A349236 (n + 1)

end A349236

/-! ## A349236.P4753086469810136951

`Δ[record[A097377(n+1)]]`
-/

namespace A349236.P4753086469810136951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097377 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349236.P4753086469810136951

namespace A349236

/-- `Δ[record[A097377(n+1)]]` -/
def P4753086469810136951.Spec : Prop :=
  ∀ n, P4753086469810136951.a n = A349236 (n + 1)

end A349236

/-! ## A349236.P9306398850440520325

`Δ[record[A117656(n+1)]]`
-/

namespace A349236.P9306398850440520325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117656 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349236.P9306398850440520325

namespace A349236

/-- `Δ[record[A117656(n+1)]]` -/
def P9306398850440520325.Spec : Prop :=
  ∀ n, P9306398850440520325.a n = A349236 (n + 1)

end A349236

/-! ## A349236.P1944336873899399585

`Δ[record[A355261(n+1)]]`
-/

namespace A349236.P1944336873899399585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355261 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349236.P1944336873899399585

namespace A349236

/-- `Δ[record[A355261(n+1)]]` -/
def P1944336873899399585.Spec : Prop :=
  ∀ n, P1944336873899399585.a n = A349236 (n + 1)

end A349236

/-! ## A349236.P9432348084745504135

`Δ[record[A360539(n+1)]]`
-/

namespace A349236.P9432348084745504135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360539 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349236.P9432348084745504135

namespace A349236

/-- `Δ[record[A360539(n+1)]]` -/
def P9432348084745504135.Spec : Prop :=
  ∀ n, P9432348084745504135.a n = A349236 (n + 1)

end A349236

/-! ## A349236.P6570318654066257580

`Δ[record[A367699(n+1)]]`
-/

namespace A349236.P6570318654066257580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367699 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349236.P6570318654066257580

namespace A349236

/-- `Δ[record[A367699(n+1)]]` -/
def P6570318654066257580.Spec : Prop :=
  ∀ n, P6570318654066257580.a n = A349236 (n + 1)

end A349236

/-! ## A349236.P2695010200655203288

`Δ[record[A368171(n+1)]]`
-/

namespace A349236.P2695010200655203288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368171 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349236.P2695010200655203288

namespace A349236

/-- `Δ[record[A368171(n+1)]]` -/
def P2695010200655203288.Spec : Prop :=
  ∀ n, P2695010200655203288.a n = A349236 (n + 1)

end A349236

/-! ## A349236.P14900569490657167425

`Δ[record[A384555(n+1)]]`
-/

namespace A349236.P14900569490657167425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384555 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349236.P14900569490657167425

namespace A349236

/-- `Δ[record[A384555(n+1)]]` -/
def P14900569490657167425.Spec : Prop :=
  ∀ n, P14900569490657167425.a n = A349236 (n + 1)

end A349236

/-!
# A349238: Reverse the digits in the Zeckendorf representation of n (A189920).

The programs for A349238, there is no canonical definition to state claims against.
-/

/-! ## A349238.P6119866627626983969

`n-A349240(n)`
-/

namespace A349238.P6119866627626983969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A349240 n

end

end A349238.P6119866627626983969

/-! ## A349238.P977208092055960280

`A349239(n)-n`
-/

namespace A349238.P977208092055960280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349239 n - (n : ℤ)

end

end A349238.P977208092055960280

/-! ## A349238.P12729543144223490924

`abs(A349239(n)+A001489(n))`
-/

namespace A349238.P12729543144223490924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A349239 n + A001489 n|

end

end A349238.P12729543144223490924

/-! ## A349238.P15238369935155345526

`abs(A349240(n)+A001489(n))`
-/

namespace A349238.P15238369935155345526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A349240 n + A001489 n|

end

end A349238.P15238369935155345526

/-! ## A349238.P16196261537321243461

`A022290(A030101(A003714(n)))`
-/

namespace A349238.P16196261537321243461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A030101 (A003714 n).toNat).toNat

end

end A349238.P16196261537321243461

/-! ## A349238.P12566801271824287718

`A002262(A349239(n)+A001844(n))`
-/

namespace A349238.P12566801271824287718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A349239 n + A001844 n).toNat

end

end A349238.P12566801271824287718

/-!
# A349239: a(n) = n + (reversal of digits in the Zeckendorf representation of n).

The programs for A349239, there is no canonical definition to state claims against.
-/

/-! ## A349239.P13032925418507647783

`n+A349238(n)`
-/

namespace A349239.P13032925418507647783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A349238 n

end

end A349239.P13032925418507647783

/-! ## A349239.P2255704761956433052

`2*n-A349240(n)`
-/

namespace A349239.P2255704761956433052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A349240 n

end

end A349239.P2255704761956433052

/-! ## A349239.P15630980735832472647

`n-A349240(n%(n+1))+n`
-/

namespace A349239.P15630980735832472647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A349240 (n % (n + 1)) + (n : ℤ)

end

end A349239.P15630980735832472647

/-! ## A349239.P17691963161260640520

`A349238(n)-A001489(n)`
-/

namespace A349239.P17691963161260640520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349238 n - A001489 n

end

end A349239.P17691963161260640520

/-! ## A349239.P5345968572976097624

`n-(A349240(n)+A001489(n))`
-/

namespace A349239.P5345968572976097624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A349240 n + A001489 n)

end

end A349239.P5345968572976097624

/-! ## A349239.P18073681345401259913

`A005843(n)-(n-A349238(n))`
-/

namespace A349239.P18073681345401259913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A349238 n)

end

end A349239.P18073681345401259913

/-! ## A349239.P5842162336840570631

`record[A000265(n+1)]-(A349240(n)+1)`
-/

namespace A349239.P5842162336840570631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A349240 n + 1)

end

end A349239.P5842162336840570631

/-! ## A349239.P724191718675485668

`A055944(n)+A055945(n)-A349240(n)`
-/

namespace A349239.P724191718675485668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 n + (A055945 n - A349240 n)

end

end A349239.P724191718675485668

/-! ## A349239.P3976058927946702249

`A056964(n)-(A004086(n)-A349238(n))`
-/

namespace A349239.P3976058927946702249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 n - (A004086 n - A349238 n)

end

end A349239.P3976058927946702249

/-! ## A349239.P12202685848454546440

`n-A001489(n-A349240(n))`
-/

namespace A349239.P12202685848454546440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001489 ((n : ℤ) - A349240 n).toNat

end

end A349239.P12202685848454546440

/-! ## A349239.P7959554542220217614

`abs(A349240(n)+A001489(2*n))`
-/

namespace A349239.P7959554542220217614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A349240 n + A001489 (2 * n)|

end

end A349239.P7959554542220217614

/-! ## A349239.P3205628875264698504

`A022290(A030101(A003714(n)))+n`
-/

namespace A349239.P3205628875264698504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A030101 (A003714 n).toNat).toNat + (n : ℤ)

end

end A349239.P3205628875264698504

/-!
# A349240: a(n) = n - (reversal of digits in the Zeckendorf representation of n).

The programs for A349240, there is no canonical definition to state claims against.
-/

/-! ## A349240.P14509028363301957995

`n-A349238(n)`
-/

namespace A349240.P14509028363301957995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A349238 n

end

end A349240.P14509028363301957995

/-! ## A349240.P6278103379272277340

`2*n-A349239(n)`
-/

namespace A349240.P6278103379272277340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A349239 n

end

end A349240.P6278103379272277340

/-! ## A349240.P12239284712870855953

`n-(A349239(n)+A001489(n))`
-/

namespace A349240.P12239284712870855953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A349239 n + A001489 n)

end

end A349240.P12239284712870855953

/-! ## A349240.P14405195130021735875

`A014681(A014681(n))+n-A349239(n)`
-/

namespace A349240.P14405195130021735875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A014681 n).toNat + ((n : ℤ) - A349239 n)

end

end A349240.P14405195130021735875

/-! ## A349240.P9708442472686677217

`A056964(n)+A056965(n)-A349239(n)`
-/

namespace A349240.P9708442472686677217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 n + (A056965 n - A349239 n)

end

end A349240.P9708442472686677217

/-! ## A349240.P6207863171583430065

`A001489(A349239(n)+A001489(n))+n`
-/

namespace A349240.P6207863171583430065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A349239 n + A001489 n).toNat + (n : ℤ)

end

end A349240.P6207863171583430065

/-! ## A349240.P7218233768246565684

`A001489(A349239(n)-n)-A001489(n)`
-/

namespace A349240.P7218233768246565684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A349239 n - (n : ℤ)).toNat - A001489 n

end

end A349240.P7218233768246565684

/-! ## A349240.P7259950298053840929

`n-A022290(A030101(A003714(n)))`
-/

namespace A349240.P7259950298053840929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A022290 (A030101 (A003714 n).toNat).toNat

end

end A349240.P7259950298053840929

/-! ## A349240.P17007431365037077395

`A196199(A002378(n)-A349239(n))`
-/

namespace A349240.P17007431365037077395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (A002378 n - A349239 n).toNat

end

end A349240.P17007431365037077395

/-!
# A349241: Numbers N = pqrs such that |pqr - s| > |ps - qr|, where p <= q <= r <= s are the 4 prime factors of N.

The programs for A349241, there is no canonical definition to state claims against.
-/

/-! ## A349241.P16761909588888266934

`filter[A140349(n+1), A101637(#)]`
-/

namespace A349241.P16761909588888266934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A349241.P16761909588888266934

/-! ## A349241.P7138816719114379517

`filter[A326111(n+1), A065043(#)]`
-/

namespace A349241.P7138816719114379517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A349241.P7138816719114379517

/-! ## A349241.P10594788376326691873

`filter[A326111(n+1), A101637(#)]`
-/

namespace A349241.P10594788376326691873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A349241.P10594788376326691873

/-! ## A349241.P11978147414504720685

`∩[A014613(n+1), A140349(n+1)]`
-/

namespace A349241.P11978147414504720685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349241.P11978147414504720685

/-! ## A349241.P17064080554657106673

`∩[A140349(n+1), A166718(n+1)]`
-/

namespace A349241.P17064080554657106673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349241.P17064080554657106673

/-! ## A349241.P7708857212027653553

`∩[A014613(n+1), A326111(n+1)]`
-/

namespace A349241.P7708857212027653553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349241.P7708857212027653553

/-! ## A349241.P12154812577139019035

`∩[A026478(n+1), A326111(n+1)]`
-/

namespace A349241.P12154812577139019035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349241.P12154812577139019035

/-! ## A349241.P18426298940075725300

`∩[A028260(n+1), A326111(n+1)]`
-/

namespace A349241.P18426298940075725300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349241.P18426298940075725300

/-! ## A349241.P3819964175561510684

`∩[A033987(n+1), A326111(n+1)]`
-/

namespace A349241.P3819964175561510684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349241.P3819964175561510684

/-! ## A349241.P358140600833650243

`∩[A067028(n+1), A326111(n+1)]`
-/

namespace A349241.P358140600833650243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349241.P358140600833650243

/-!
# A349242: Numbers N = pqrs such that |pqr - s| < |ps - qr|, where p <= q <= r <= s are the 4 prime factors of N.

The programs for A349242, there is no canonical definition to state claims against.
-/

/-! ## A349242.P3228962547947418866

`filter[A326112(n+1), A101637(#)]`
-/

namespace A349242.P3228962547947418866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A349242.P3228962547947418866

/-! ## A349242.P1343653353375036777

`∩[A014613(n+1), A326112(n+1)]`
-/

namespace A349242.P1343653353375036777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349242.P1343653353375036777

/-! ## A349242.P147880310891878091

`∩[A166718(n+1), A326112(n+1)]`
-/

namespace A349242.P147880310891878091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349242.P147880310891878091

/-! ## A349242.P5653513372016626665

`∩[A307342(n+1), A326112(n+1)]`
-/

namespace A349242.P5653513372016626665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349242.P5653513372016626665

/-! ## A349242.P18170449902642052742

`∩[A323350(n+1), A326112(n+1)]`
-/

namespace A349242.P18170449902642052742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349242.P18170449902642052742

/-!
# A349243: Indices of triangular numbers A000217 with only odd digits.

The programs for A349243, there is no canonical definition to state claims against.
-/

/-! ## A349243.P4672418424867000632

`floor(sqrt(2*A117960(n+1)))`
-/

namespace A349243.P4672418424867000632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A117960 (n + 1))

end

end A349243.P4672418424867000632

/-! ## A349243.P11388059007961398209

`round(sqrt(2*A117960(n%(n+1)+1)))`
-/

namespace A349243.P11388059007961398209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A117960 (n % (n + 1) + 1) : ℝ))

end

end A349243.P11388059007961398209

/-! ## A349243.P3978269076408293425

`round(sqrt(2*A117960((Δ[n²]-1)/2+1)))`
-/

namespace A349243.P3978269076408293425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A117960 (SequenceMachineLib.roundAway (((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1 : ℚ) / 2 + 1)).toNat : ℝ))

end

end A349243.P3978269076408293425

/-! ## A349243.P11223262195997741355

`ceil(sqrt(2*A117960(n+1))-A033999(n)²)`
-/

namespace A349243.P11223262195997741355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A117960 (n + 1) : ℝ) - (A033999 n ^ 2 : ℝ)⌉

end

end A349243.P11223262195997741355

/-! ## A349243.P15060575623348564582

`round(sqrt(2*A117960(n+1)))%A020706(n)`
-/

namespace A349243.P15060575623348564582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A117960 (n + 1) : ℝ))) (A020706 n)

end

end A349243.P15060575623348564582

/-! ## A349243.P13480131279597399824

`A000027(round(sqrt(2*A117960(n+1))))`
-/

namespace A349243.P13480131279597399824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (2 * A117960 (n + 1) : ℝ))).toNat

end

end A349243.P13480131279597399824

/-!
# A349247: Least n-digit number k with only odd digits such that the k-th triangular number also has only odd digits.

The programs for A349247, there is no canonical definition to state claims against.
-/

/-! ## A349247.P14952931075588961151

`A347475(eq[A108267(n), A339365(n)])`
-/

namespace A349247.P14952931075588961151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108267 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A349247.P14952931075588961151

/-!
# A349248: Numbers which are elements of a cycle under iterations of the digit-census function A348783.

The programs for A349248, there is no canonical definition to state claims against.
-/

/-! ## A349248.P14787463596309598885

`eq[A025441(A001097(n+1)), A225664(n)]`
-/

namespace A349248.P14787463596309598885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (A001097 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349248.P14787463596309598885

/-! ## A349248.P6665016686784925060

`eq[A010060(A269380(n+1)), A225664(n)]`
-/

namespace A349248.P6665016686784925060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A269380 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349248.P6665016686784925060

/-!
# A349249: Number of iterations of the digit-census function A348783 until an element of a cycle is reached.

The programs for A349249, there is no canonical definition to state claims against.
-/

/-! ## A349249.P6311726819513373262

`A028310(A225664(n))-char[A349248(n+1)]`
-/

namespace A349249.P6311726819513373262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349248 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A225664 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A349249.P6311726819513373262

/-! ## A349249.P568673843214771696

`A060576(A225664(n))*A225664(A004186(n))`
-/

namespace A349249.P568673843214771696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A225664 n).toNat * A225664 (A004186 n).toNat

end

end A349249.P568673843214771696

/-! ## A349249.P10446216998523882326

`xor(A107846(A106452(n)), A225664(n))`
-/

namespace A349249.P10446216998523882326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A107846 (A106452 n).toNat) (A225664 n)

end

end A349249.P10446216998523882326

/-! ## A349249.P14345228870973657616

`xor(A107846(A106452(n)), A225665(A102489(n)))`
-/

namespace A349249.P14345228870973657616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A107846 (A106452 n).toNat) (A225665 (A102489 n).toNat)

end

end A349249.P14345228870973657616

/-! ## A349249.P4336379870010190155

`A225664(A004186(n)%record[A097598(n)])`
-/

namespace A349249.P4336379870010190155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225664 (Int.tmod (A004186 n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A349249.P4336379870010190155

/-!
# A349251: a(n) is the integer reached after repeated application of the map x->A349194(x) or -1 if this process does not terminate.

The programs for A349251, there is no canonical definition to state claims against.
-/

/-! ## A349251.P2622597295902883931

`A349190(A007953(A349194(A349194(A349194(n+1)))))`
-/

namespace A349251.P2622597295902883931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349190 (A007953 (A349194 (A349194 (A349194 (n + 1)).toNat).toNat).toNat).toNat

end

end A349251.P2622597295902883931

/-! ## A349251.P18068540926109786032

`A349190(A349194(A349194(A349194(n+1))))`
-/

namespace A349251.P18068540926109786032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349190 (A349194 (A349194 (A349194 (n + 1)).toNat).toNat).toNat

end

end A349251.P18068540926109786032

/-! ## A349251.P15832034775853671961

`A349190(A349194(A349194(n+1)))`
-/

namespace A349251.P15832034775853671961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349190 (A349194 (A349194 (n + 1)).toNat).toNat

end

end A349251.P15832034775853671961

/-! ## A349251.P5400093549337068028

`A001222(3^A349194(A349194(n+1)))`
-/

namespace A349251.P5400093549337068028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A349194 (A349194 (n + 1)).toNat : ℤ))).toNat

end

end A349251.P5400093549337068028

/-! ## A349251.P3997546993030799557

`A349194(A349194(n+1)%A038009(n))`
-/

namespace A349251.P3997546993030799557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349194 (Int.tmod (A349194 (n + 1)) (A038009 n)).toNat

end

end A349251.P3997546993030799557

/-!
# A349253: G.f. A(x) satisfies A(x) = 1 / ((1 - x) * (1 - 2 * x * A(x)^2)).

The programs for A349253, there is no canonical definition to state claims against.
-/

/-! ## A349253.P2963067459412989483

`∑[A071324(∑[A144097(n)])]`
-/

namespace A349253.P2963067459412989483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144097 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071324 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349253.P2963067459412989483

/-!
# A349255: G.f. A(x) satisfies A(x) = 1 / ((1 + x) * (1 - 2 * x * A(x)^2)).

The programs for A349255, there is no canonical definition to state claims against.
-/

/-! ## A349255.P7606629506621796980

`A139630(∑[Δ[n²]%3]+∑[n])`
-/

namespace A349255.P7606629506621796980
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139630 (∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)).toNat

end

end A349255.P7606629506621796980

/-!
# A349256: G.f. A(x) satisfies A(x) = 1 / ((1 + x) * (1 - 3 * x * A(x)^2)).

The programs for A349256, there is no canonical definition to state claims against.
-/

/-! ## A349256.P7319911837134392478

`A098667(A098617(n))+A098300(n)`
-/

namespace A349256.P7319911837134392478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098667 (A098617 n).toNat + A098300 n

end

end A349256.P7319911837134392478

/-!
# A349257: Largest integer that can be expressed as Sum_{k=1..n} k/p(k), where p is a permutation of [n].

The programs for A349257, there is no canonical definition to state claims against.
-/

/-! ## A349257.P16392550740102939862

`A028904(A006218(n)-A230980(n))`
-/

namespace A349257.P16392550740102939862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A006218 n - A230980 n).toNat

end

end A349257.P16392550740102939862

/-! ## A349257.P5204356913883706245

`A081600(A006218(n)-A230980(n))`
-/

namespace A349257.P5204356913883706245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081600 (A006218 n - A230980 n).toNat

end

end A349257.P5204356913883706245

/-! ## A349257.P15287261982699835977

`A028904(A006590(n+1)-A064427(n+1))`
-/

namespace A349257.P15287261982699835977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A006590 (n + 1) - A064427 (n + 1)).toNat

end

end A349257.P15287261982699835977

/-! ## A349257.P11002144031749667771

`A081600(A006590(n+1)-A064427(n+1))`
-/

namespace A349257.P11002144031749667771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081600 (A006590 (n + 1) - A064427 (n + 1)).toNat

end

end A349257.P11002144031749667771

/-! ## A349257.P7840017645259372225

`A169594(A000079(n))-A006161(n+1)`
-/

namespace A349257.P7840017645259372225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169594 (A000079 n).toNat - A006161 (n + 1)

end

end A349257.P7840017645259372225

/-!
# A349258: a(n) is the number of prime powers (not including 1) that are infinitary divisors of n.

The programs for A349258, the canonical program `A349258.P3621422876160068224` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349258 has offset 1).

The definition of A349258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349258.P3621422876160068224

`∑{e}[n+1, A038573(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A349258

/-- `∑{e}[n+1, A038573(#)]` -/
def P3621422876160068224.Spec : Prop :=
  ∀ n, P3621422876160068224.a n = A349258 (n + 1)

theorem P3621422876160068224.correct : P3621422876160068224.Spec := by
  intro n
  simp only [A349258, Nat.add_sub_cancel]

end A349258

/-! ## A349258.P16507414214501866075

`∑{e}[n+1, A001316(#)-1]`
-/

namespace A349258.P16507414214501866075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (A001316 (Nat.factorization (f1 n) p) - 1)

end

end A349258.P16507414214501866075

namespace A349258

/-- `∑{e}[n+1, A001316(#)-1]` -/
def P16507414214501866075.Spec : Prop :=
  ∀ n, P16507414214501866075.a n = A349258 (n + 1)

end A349258

/-! ## A349258.P2119853213284533498

`∑{e}[n+1, A000225(A000120(#))]`
-/

namespace A349258.P2119853213284533498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000225 (A000120 (Nat.factorization (f1 n) p)).toNat

end

end A349258.P2119853213284533498

namespace A349258

/-- `∑{e}[n+1, A000225(A000120(#))]` -/
def P2119853213284533498.Spec : Prop :=
  ∀ n, P2119853213284533498.a n = A349258 (n + 1)

end A349258

/-! ## A349258.P7072459494511042689

`A001222(n+1)-A372503(n+1)`
-/

namespace A349258.P7072459494511042689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A372503 (n + 1)

end

end A349258.P7072459494511042689

namespace A349258

/-- `A001222(n+1)-A372503(n+1)` -/
def P7072459494511042689.Spec : Prop :=
  ∀ n, P7072459494511042689.a n = A349258 (n + 1)

theorem P7072459494511042689.correct : P7072459494511042689.Spec := by
  intro n
  simp only [A349258, Nat.add_sub_cancel, A349258.P7072459494511042689.a, A349258.P3621422876160068224.f1, A349258.P3621422876160068224.a, A001222, A001222.P11318177267732088261.a, A038573, A038573.P5952807231814584452.a, A372503, A372503.P833081788414773444.a, A001316, A001316.P6850078358198232129.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A000120, A000120.P2816527436160941581.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A005187, A005187.P3874015513960485494.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A349258

/-! ## A349258.P3203061186107621859

`∑{e}[n+1, A000203(A000043(A000120(#))-1)]`
-/

namespace A349258.P3203061186107621859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000203 (A000043 (A000120 (Nat.factorization (f1 n) p)).toNat - 1).toNat

end

end A349258.P3203061186107621859

namespace A349258

/-- `∑{e}[n+1, A000203(A000043(A000120(#))-1)]` -/
def P3203061186107621859.Spec : Prop :=
  ∀ n, P3203061186107621859.a n = A349258 (n + 1)

end A349258

/-! ## A349258.P12847848403310342513

`∑{e}[n+1, A000203(A000788(A000120(#+#)))]`
-/

namespace A349258.P12847848403310342513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000203 (A000788 (A000120 (Nat.factorization (f1 n) p + Nat.factorization (f1 n) p)).toNat).toNat

end

end A349258.P12847848403310342513

namespace A349258

/-- `∑{e}[n+1, A000203(A000788(A000120(#+#)))]` -/
def P12847848403310342513.Spec : Prop :=
  ∀ n, P12847848403310342513.a n = A349258 (n + 1)

end A349258

/-! ## A349258.P6599495961603756707

`∑{e}[n+1, A001222(#^#+1)]`
-/

namespace A349258.P6599495961603756707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001222 (Nat.factorization (f1 n) p ^ Nat.factorization (f1 n) p + 1)

end

end A349258.P6599495961603756707

namespace A349258

/-- `∑{e}[n+1, A001222(#^#+1)]` -/
def P6599495961603756707.Spec : Prop :=
  ∀ n, P6599495961603756707.a n = A349258 (n + 1)

end A349258

/-! ## A349258.P5765809649263508229

`A001222(∏{e}[n+1, #^#+1])`
-/

namespace A349258.P5765809649263508229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p ^ Nat.factorization (f1 n) p + 1))

end

end A349258.P5765809649263508229

namespace A349258

/-- `A001222(∏{e}[n+1, #^#+1])` -/
def P5765809649263508229.Spec : Prop :=
  ∀ n, P5765809649263508229.a n = A349258 (n + 1)

end A349258

/-! ## A349258.P17888906304809034561

`A064547(A270436(n+1))`
-/

namespace A349258.P17888906304809034561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A270436 (n + 1)).toNat

end

end A349258.P17888906304809034561

namespace A349258

/-- `A064547(A270436(n+1))` -/
def P17888906304809034561.Spec : Prop :=
  ∀ n, P17888906304809034561.a n = A349258 (n + 1)

end A349258

/-! ## A349258.P1661040797009531807

`A078458(A182139(n+1)²)/2`
-/

namespace A349258.P1661040797009531807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078458 (A182139 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A349258.P1661040797009531807

namespace A349258

/-- `A078458(A182139(n+1)²)/2` -/
def P1661040797009531807.Spec : Prop :=
  ∀ n, P1661040797009531807.a n = (A349258 (n + 1) : ℚ)

end A349258

/-!
# A349259: Numbers where A349258 reaches a record value.

The programs for A349259, there is no canonical definition to state claims against.
-/

/-! ## A349259.P9395344786788987153

`A349260(A114994(n)%A126157(n))`
-/

namespace A349259.P9395344786788987153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349260 (Int.tmod (A114994 n) (A126157 n)).toNat

end

end A349259.P9395344786788987153

/-! ## A349259.P15847009563803788642

`filter[A344181(n+1), A359473(#)]`
-/

namespace A349259.P15847009563803788642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A349259.P15847009563803788642

/-! ## A349259.P9940240361106650155

`A245092(record[A249351(n+1)*A349260(n)])`
-/

namespace A349259.P9940240361106650155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249351 (n + 1) * A349260 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A349259.P9940240361106650155

/-! ## A349259.P17399423692205002397

`filter[A349260(n), A054431(#)]`
-/

namespace A349259.P17399423692205002397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349260 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A054431 (f1 j).toNat = 1) n)

end

end A349259.P17399423692205002397

/-! ## A349259.P6208089180292580799

`filter[A349260(n), A368992(#)]`
-/

namespace A349259.P6208089180292580799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349260 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368992 (f1 j).toNat = 1) n)

end

end A349259.P6208089180292580799

/-!
# A349260: a(n) is the least number k such that A349258(k) = n.

The programs for A349260, there is no canonical definition to state claims against.
-/

/-! ## A349260.P5288249861926998172

`A003557(A303823(n)²)`
-/

namespace A349260.P5288249861926998172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A303823 n ^ 2).toNat

end

end A349260.P5288249861926998172

/-! ## A349260.P1602358555699669073

`A321030(A303823(n)²)`
-/

namespace A349260.P1602358555699669073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321030 (A303823 n ^ 2).toNat

end

end A349260.P1602358555699669073

/-! ## A349260.P17751995013595570191

`A331738(A303823(n)²)`
-/

namespace A349260.P17751995013595570191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331738 (A303823 n ^ 2).toNat

end

end A349260.P17751995013595570191

/-!
# A349263: Main diagonal of A349271.

The programs for A349263, there is no canonical definition to state claims against.
-/

/-! ## A349263.P5218614609789858083

`A349271(∑[4*n]+1)`
-/

namespace A349263.P5218614609789858083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349271 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A349263.P5218614609789858083

/-!
# A349264: Generalized Euler numbers, a(n) = n!*[x^n](sec(4*x)*(sin(4*x) + 1)).

The programs for A349264, there is no canonical definition to state claims against.
-/

/-! ## A349264.P13982423567454617758

`2^n*A000831(n)`
-/

namespace A349264.P13982423567454617758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000831 n

end

end A349264.P13982423567454617758

/-! ## A349264.P2454474266836873124

`4^n*A000111(n)`
-/

namespace A349264.P2454474266836873124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A000111 n

end

end A349264.P2454474266836873124

/-! ## A349264.P17508990304510053900

`abs(A346838(n))*4^n`
-/

namespace A349264.P17508990304510053900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A346838 n| * (4 ^ n : ℤ)

end

end A349264.P17508990304510053900

/-! ## A349264.P1190167194038940612

`4^n*A109449(∑[n])`
-/

namespace A349264.P1190167194038940612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A109449 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A349264.P1190167194038940612

/-! ## A349264.P10737431935647144569

`4^n*A008282(∑[n]+1)`
-/

namespace A349264.P10737431935647144569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A008282 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A349264.P10737431935647144569

/-! ## A349264.P13401666785283988494

`A000111(n)*A000302(n)`
-/

namespace A349264.P13401666785283988494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n * A000302 n

end

end A349264.P13401666785283988494

/-! ## A349264.P13815704707363630376

`A000111(n)*A122803(n)²`
-/

namespace A349264.P13815704707363630376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n * A122803 n ^ 2

end

end A349264.P13815704707363630376

/-! ## A349264.P5868281618511607007

`A000111(n)*A122803(2*n)`
-/

namespace A349264.P5868281618511607007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n * A122803 (2 * n)

end

end A349264.P5868281618511607007

/-! ## A349264.P4218168582609489188

`A000111(n)*A011782(2*n+1)`
-/

namespace A349264.P4218168582609489188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n * A011782 (2 * n + 1)

end

end A349264.P4218168582609489188

/-! ## A349264.P3251350644821658991

`A000111(n)*A059222(2*n+1)`
-/

namespace A349264.P3251350644821658991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n * A059222 (2 * n + 1)

end

end A349264.P3251350644821658991

/-!
# A349265: Generalized Euler numbers, a(n) = n!*[x^n](sec(5*x)*(sin(x) + sin(3*x) + cos(2*x) + cos(4*x))).

The programs for A349265, there is no canonical definition to state claims against.
-/

/-! ## A349265.P10947922634387122105

`∪[A000320(n+1), A000187(n)]`
-/

namespace A349265.P10947922634387122105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000187 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349265.P10947922634387122105

/-! ## A349265.P12491790977209141028

`∪[A235606(∑[n+5]+6), A000187(n)]`
-/

namespace A349265.P12491790977209141028
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235606 (∑ j ∈ Finset.range (n + 1), f2 j + 6)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000187 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A349265.P12491790977209141028

/-!
# A349266: Generalized Euler numbers, a(n) = n!*[x^n](sec(7*x)*(-sin(2*x) + sin(4*x) + sin(6*x) + cos(x) + cos(3*x) - cos(5*x))).

The programs for A349266, there is no canonical definition to state claims against.
-/

/-! ## A349266.P2140818806096746735

`∪[A064072(n+1), A064068(n)]`
-/

namespace A349266.P2140818806096746735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064068 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349266.P2140818806096746735

/-! ## A349266.P2487587436937447506

`∪[A064068(n), A235606(A055999(n+4))]`
-/

namespace A349266.P2487587436937447506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064068 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235606 (A055999 (n + 4)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349266.P2487587436937447506

/-!
# A349267: Generalized Euler numbers, a(n) = n!*[x^n](sec(8*x)*2*(sin(4*x) + cos(4*x))).

The programs for A349267, there is no canonical definition to state claims against.
-/

/-! ## A349267.P6584248699999437605

`abs(A004171(n)*A188458(n))`
-/

namespace A349267.P6584248699999437605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004171 n * A188458 n|

end

end A349267.P6584248699999437605

/-! ## A349267.P4355449289252269608

`A000079(n+1)*A079858(n)`
-/

namespace A349267.P4355449289252269608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A079858 n

end

end A349267.P4355449289252269608

/-! ## A349267.P6132499276629268624

`2*A000079(n)*A079858(n)`
-/

namespace A349267.P6132499276629268624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000079 n * A079858 n)

end

end A349267.P6132499276629268624

/-! ## A349267.P5692895210168896039

`2*lcm(A000302(n), A212435(n))`
-/

namespace A349267.P5692895210168896039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.lcm (A000302 n) (A212435 n)

end

end A349267.P5692895210168896039

/-! ## A349267.P11427108432723180374

`2*A000079(n)²*A001586(n)`
-/

namespace A349267.P11427108432723180374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000079 n ^ 2 * A001586 n)

end

end A349267.P11427108432723180374

/-! ## A349267.P17347492279922324450

`A000079(2*n+1)*A001586(n)`
-/

namespace A349267.P17347492279922324450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 1) * A001586 n

end

end A349267.P17347492279922324450

/-!
# A349268: Generalized Euler numbers, a(n) = n!*[x^n](sec(9*x)*(4*sin(3*x) + 2)*cos(3*x)^2).

The programs for A349268, there is no canonical definition to state claims against.
-/

/-! ## A349268.P15458016510231590893

`2*A000111(n)*A053535(n)`
-/

namespace A349268.P15458016510231590893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000111 n * A053535 n)

end

end A349268.P15458016510231590893

/-! ## A349268.P4172872134181713509

`∪[A064074(n+1), A064070(n)]`
-/

namespace A349268.P4172872134181713509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064070 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349268.P4172872134181713509

/-! ## A349268.P11744282100725335222

`A005843(A000111(n))*A053535(n)`
-/

namespace A349268.P11744282100725335222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A000111 n).toNat * A053535 n

end

end A349268.P11744282100725335222

/-!
# A349269: Triangle read by rows, T(n, k) = (n - k)! * k! / floor(k / 2)! ^ 2.

The programs for A349269, the canonical program `A349269.P6847488077430145081` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349269 has offset 0).

The definition of A349269 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349269.P6847488077430145081

`(row(n)-col(n))!*col(n)!/floor(col(n)/2)!²`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A349269

/-- `(row(n)-col(n))!*col(n)!/floor(col(n)/2)!²` -/
def P6847488077430145081.Spec : Prop :=
  ∀ n, P6847488077430145081.a n = (A349269 n : ℚ)

end A349269

/-! ## A349269.P1902330737097681805

`A056040(A002262(n))*A119502(n)`
-/

namespace A349269.P1902330737097681805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (A002262 n).toNat * A119502 n

end

end A349269.P1902330737097681805

namespace A349269

/-- `A056040(A002262(n))*A119502(n)` -/
def P1902330737097681805.Spec : Prop :=
  ∀ n, P1902330737097681805.a n = A349269 n

end A349269

/-! ## A349269.P6429642386411229844

`A119502(n)*A182073(A112367(n))`
-/

namespace A349269.P6429642386411229844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 n * A182073 (A112367 n).toNat

end

end A349269.P6429642386411229844

namespace A349269

/-- `A119502(n)*A182073(A112367(n))` -/
def P6429642386411229844.Spec : Prop :=
  ∀ n, P6429642386411229844.a n = A349269 n

end A349269

/-! ## A349269.P10483568626008869426

`A098361(n)/A180064(A002262(n))`
-/

namespace A349269.P10483568626008869426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098361 n : ℚ) / (A180064 (A002262 n).toNat : ℚ)

end

end A349269.P10483568626008869426

namespace A349269

/-- `A098361(n)/A180064(A002262(n))` -/
def P10483568626008869426.Spec : Prop :=
  ∀ n, P10483568626008869426.a n = (A349269 n : ℚ)

end A349269

/-! ## A349269.P10575993557298307913

`A025581(n)!*A056040(A002262(n))`
-/

namespace A349269.P10575993557298307913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025581 n).toNat : ℤ) * A056040 (A002262 n).toNat

end

end A349269.P10575993557298307913

namespace A349269

/-- `A025581(n)!*A056040(A002262(n))` -/
def P10575993557298307913.Spec : Prop :=
  ∀ n, P10575993557298307913.a n = A349269 n

end A349269

/-! ## A349269.P7880530674534989886

`A025581(n)!*A182073(A112367(n))`
-/

namespace A349269.P7880530674534989886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025581 n).toNat : ℤ) * A182073 (A112367 n).toNat

end

end A349269.P7880530674534989886

namespace A349269

/-- `A025581(n)!*A182073(A112367(n))` -/
def P7880530674534989886.Spec : Prop :=
  ∀ n, P7880530674534989886.a n = A349269 n

end A349269

/-! ## A349269.P13832185380674139352

`A056040(A144328(n+1))*A119502(n)`
-/

namespace A349269.P13832185380674139352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (A144328 (n + 1)).toNat * A119502 n

end

end A349269.P13832185380674139352

namespace A349269

/-- `A056040(A144328(n+1))*A119502(n)` -/
def P13832185380674139352.Spec : Prop :=
  ∀ n, P13832185380674139352.a n = A349269 n

end A349269

/-! ## A349269.P11966933920208162304

`A098361(n)/A180064(A144328(n+1))`
-/

namespace A349269.P11966933920208162304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098361 n : ℚ) / (A180064 (A144328 (n + 1)).toNat : ℚ)

end

end A349269.P11966933920208162304

namespace A349269

/-- `A098361(n)/A180064(A144328(n+1))` -/
def P11966933920208162304.Spec : Prop :=
  ∀ n, P11966933920208162304.a n = (A349269 n : ℚ)

end A349269

/-!
# A349270: a(n) = Sum_{k=0..n} (n - k)! * k! / floor(k / 2)!^2, row sums of A349269.

The programs for A349270, there is no canonical definition to state claims against.
-/

/-! ## A349270.P3046609499455080340

`A240301(A151019(n+1))`
-/

namespace A349270.P3046609499455080340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240301 (A151019 (n + 1)).toNat

end

end A349270.P3046609499455080340

/-! ## A349270.P14894833334922930580

`A054346(∑[record[A056040(n)]])`
-/

namespace A349270.P14894833334922930580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054346 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A349270.P14894833334922930580

/-!
# A349273: Number of odd divisors of prime(n) - 1.

The programs for A349273, the canonical program `A349273.P13022226165644958217` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349273 has offset 1).

The definition of A349273 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349273.P13022226165644958217

`A001227(A006093(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A349273

/-- `A001227(A006093(n+1))` -/
def P13022226165644958217.Spec : Prop :=
  ∀ n, P13022226165644958217.a n = A349273 (n + 1)

theorem P13022226165644958217.correct : P13022226165644958217.Spec := by
  intro n
  simp only [A349273, Nat.add_sub_cancel]

end A349273

/-! ## A349273.P14908029491021113440

`∏{e}[A057023(n+1), #+1]`
-/

namespace A349273.P14908029491021113440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057023 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A349273.P14908029491021113440

namespace A349273

/-- `∏{e}[A057023(n+1), #+1]` -/
def P14908029491021113440.Spec : Prop :=
  ∀ n, (P14908029491021113440.a n : ℤ) = A349273 (n + 1)

end A349273

/-! ## A349273.P11496981199783846706

`∑{d}[A130290(n+1), and(1, #)]`
-/

namespace A349273.P11496981199783846706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.land 1 d

end

end A349273.P11496981199783846706

namespace A349273

/-- `∑{d}[A130290(n+1), and(1, #)]` -/
def P11496981199783846706.Spec : Prop :=
  ∀ n, (P11496981199783846706.a n : ℤ) = A349273 (n + 1)

end A349273

/-! ## A349273.P5303862624942629091

`∑{d}[1-A000040(n+1), and(1, #)]`
-/

namespace A349273.P5303862624942629091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.land 1 d

end

end A349273.P5303862624942629091

namespace A349273

/-- `∑{d}[1-A000040(n+1), and(1, #)]` -/
def P5303862624942629091.Spec : Prop :=
  ∀ n, (P5303862624942629091.a n : ℤ) = A349273 (n + 1)

end A349273

/-! ## A349273.P12480353328242910785

`A000005(A057023(n+1))`
-/

namespace A349273.P12480353328242910785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A057023 (n + 1)).toNat

end

end A349273.P12480353328242910785

namespace A349273

/-- `A000005(A057023(n+1))` -/
def P12480353328242910785.Spec : Prop :=
  ∀ n, P12480353328242910785.a n = A349273 (n + 1)

end A349273

/-! ## A349273.P15304142954323766746

`∑{d}[1-p?[xor(1, n)], and(1, #)]`
-/

namespace A349273.P15304142954323766746
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.land 1 d

end

end A349273.P15304142954323766746

namespace A349273

/-- `∑{d}[1-p?[xor(1, n)], and(1, #)]` -/
def P15304142954323766746.Spec : Prop :=
  ∀ n, (P15304142954323766746.a n : ℤ) = A349273 (n + 1)

end A349273

/-! ## A349273.P15718524370085327164

`∑{d}[record[A000010(n+1)], and(1, #)]`
-/

namespace A349273.P15718524370085327164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.land 1 d

end

end A349273.P15718524370085327164

namespace A349273

/-- `∑{d}[record[A000010(n+1)], and(1, #)]` -/
def P15718524370085327164.Spec : Prop :=
  ∀ n, (P15718524370085327164.a n : ℤ) = A349273 (n + 1)

end A349273

/-! ## A349273.P6993602913653899866

`∑{d}[eq[1, A001222(n+1)], and(1, #)]`
-/

namespace A349273.P6993602913653899866
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.land 1 d

end

end A349273.P6993602913653899866

namespace A349273

/-- `∑{d}[eq[1, A001222(n+1)], and(1, #)]` -/
def P6993602913653899866.Spec : Prop :=
  ∀ n, (P6993602913653899866.a n : ℤ) = A349273 (n + 1)

end A349273

/-! ## A349273.P12223441776289790215

`A001227(A130290(n+1))`
-/

namespace A349273.P12223441776289790215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A130290 (n + 1)).toNat

end

end A349273.P12223441776289790215

namespace A349273

/-- `A001227(A130290(n+1))` -/
def P12223441776289790215.Spec : Prop :=
  ∀ n, P12223441776289790215.a n = A349273 (n + 1)

end A349273

/-! ## A349273.P1953859895038113264

`A001227(A236965(n+1))`
-/

namespace A349273.P1953859895038113264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A236965 (n + 1)).toNat

end

end A349273.P1953859895038113264

namespace A349273

/-- `A001227(A236965(n+1))` -/
def P1953859895038113264.Spec : Prop :=
  ∀ n, P1953859895038113264.a n = A349273 (n + 1)

end A349273

/-! ## A349273.P14369513554132241916

`A001227(floor(A000040(n+1)/2))`
-/

namespace A349273.P14369513554132241916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 ⌊(A000040 (n + 1) : ℚ) / 2⌋.toNat

end

end A349273.P14369513554132241916

namespace A349273

/-- `A001227(floor(A000040(n+1)/2))` -/
def P14369513554132241916.Spec : Prop :=
  ∀ n, P14369513554132241916.a n = A349273 (n + 1)

end A349273

/-! ## A349273.P8997468400296769492

`A001227(p?[xor(1, n)]-1)`
-/

namespace A349273.P8997468400296769492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A349273.P8997468400296769492

namespace A349273

/-- `A001227(p?[xor(1, n)]-1)` -/
def P8997468400296769492.Spec : Prop :=
  ∀ n, P8997468400296769492.a n = A349273 (n + 1)

end A349273

/-! ## A349273.P17544058144110203984

`A001227(p?[n%3+n]-1)`
-/

namespace A349273.P17544058144110203984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A349273.P17544058144110203984

namespace A349273

/-- `A001227(p?[n%3+n]-1)` -/
def P17544058144110203984.Spec : Prop :=
  ∀ n, P17544058144110203984.a n = A349273 (n + 1)

end A349273

/-! ## A349273.P2426898174776661446

`A001227(p?[round(sqrt(n)+n)]-1)`
-/

namespace A349273.P2426898174776661446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A349273.P2426898174776661446

namespace A349273

/-- `A001227(p?[round(sqrt(n)+n)]-1)` -/
def P2426898174776661446.Spec : Prop :=
  ∀ n, P2426898174776661446.a n = A349273 (n + 1)

end A349273

/-! ## A349273.P11375887906133780802

`A091954(A039915(n+1))`
-/

namespace A349273.P11375887906133780802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (A039915 (n + 1)).toNat

end

end A349273.P11375887906133780802

namespace A349273

/-- `A091954(A039915(n+1))` -/
def P11375887906133780802.Spec : Prop :=
  ∀ n, P11375887906133780802.a n = A349273 (n + 1)

end A349273

/-! ## A349273.P9565945653159039506

`A001227(A156037(n+1))`
-/

namespace A349273.P9565945653159039506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A156037 (n + 1)).toNat

end

end A349273.P9565945653159039506

namespace A349273

/-- `A001227(A156037(n+1))` -/
def P9565945653159039506.Spec : Prop :=
  ∀ n, P9565945653159039506.a n = A349273 (n + 1)

end A349273

/-! ## A349273.P13559309668778648624

`A193169(A000040(n+1))`
-/

namespace A349273.P13559309668778648624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193169 (A000040 (n + 1)).toNat

end

end A349273.P13559309668778648624

namespace A349273

/-- `A193169(A000040(n+1))` -/
def P13559309668778648624.Spec : Prop :=
  ∀ n, P13559309668778648624.a n = A349273 (n + 1)

end A349273

/-! ## A349273.P14411361148134655981

`A193169(A006005(n+1))`
-/

namespace A349273.P14411361148134655981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193169 (A006005 (n + 1)).toNat

end

end A349273.P14411361148134655981

namespace A349273

/-- `A193169(A006005(n+1))` -/
def P14411361148134655981.Spec : Prop :=
  ∀ n, P14411361148134655981.a n = A349273 (n + 1)

end A349273

/-! ## A349273.P5957226994370435298

`A193169(A075643(n+2))`
-/

namespace A349273.P5957226994370435298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193169 (A075643 (n + 2)).toNat

end

end A349273.P5957226994370435298

namespace A349273

/-- `A193169(A075643(n+2))` -/
def P5957226994370435298.Spec : Prop :=
  ∀ n, P5957226994370435298.a n = A349273 (n + 1)

end A349273

/-! ## A349273.P1807634447552688226

`A001227(A000040(n+1)-1)`
-/

namespace A349273.P1807634447552688226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A000040 (n + 1) - 1).toNat

end

end A349273.P1807634447552688226

namespace A349273

/-- `A001227(A000040(n+1)-1)` -/
def P1807634447552688226.Spec : Prop :=
  ∀ n, P1807634447552688226.a n = A349273 (n + 1)

end A349273

/-!
# A349276: Number of unlabeled P-series with n elements.

The programs for A349276, there is no canonical definition to state claims against.
-/

/-! ## A349276.P11872571925218880204

`A255047(n)+A349488(n+1)`
-/

namespace A349276.P11872571925218880204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n + A349488 (n + 1)

end

end A349276.P11872571925218880204

/-! ## A349276.P16192426607202080019

`∑[A110045(n+1)]+1`
-/

namespace A349276.P16192426607202080019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A349276.P16192426607202080019

/-! ## A349276.P12844097030363125908

`∑[A110045(A028310(n)+1)]`
-/

namespace A349276.P12844097030363125908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110045 (A028310 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349276.P12844097030363125908

/-! ## A349276.P3613898242438089888

`A349488(n+1)+or(1, A000225(n))`
-/

namespace A349276.P3613898242438089888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349488 (n + 1) + Int.lor 1 (A000225 n)

end

end A349276.P3613898242438089888

/-! ## A349276.P13416064367475627302

`A349488(n+1)+A000225(A028310(n))`
-/

namespace A349276.P13416064367475627302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349488 (n + 1) + A000225 (A028310 n).toNat

end

end A349276.P13416064367475627302

/-!
# A349277: Triangle T(n,k), n >= 1, 1 <= k <= n, read by rows, where T(n,k) is the number of permutations p of [n] such that Sum_{j=1..n} j/p(j) is an integer and p(n) = k.

The programs for A349277, there is no canonical definition to state claims against.
-/

/-! ## A349277.P5179049354697880948

`A054540(2*n)%A059131(A138781(n+1))`
-/

namespace A349277.P5179049354697880948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054540 (2 * n)) (A059131 (A138781 (n + 1)).toNat)

end

end A349277.P5179049354697880948

/-! ## A349277.P4770536495453969632

`A131851(A185063(n))+A070886(A032793(n+1))`
-/

namespace A349277.P4770536495453969632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (A185063 n).toNat + A070886 (A032793 (n + 1)).toNat

end

end A349277.P4770536495453969632

/-! ## A349277.P10710551450318296085

`A070176(A030034(n))+char[∑[n-1]]`
-/

namespace A349277.P10710551450318296085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 (A030034 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A349277.P10710551450318296085

/-! ## A349277.P15664023269050914845

`and(∏{e}[A156888(n), #], A001524(2*n+1))`
-/

namespace A349277.P15664023269050914845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) (A001524 (2 * n + 1))

end

end A349277.P15664023269050914845

/-! ## A349277.P4172269086738243444

`A190676(∑[A285782(A095666(n))])`
-/

namespace A349277.P4172269086738243444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285782 (A095666 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190676 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A349277.P4172269086738243444

/-!
# A349278: a(n) is the product of the sum of the last i digits of n, with i going from 1 to the total number of digits of n.

The programs for A349278, there is no canonical definition to state claims against.
-/

/-! ## A349278.P9855418330039649846

`A066308(n+1)/A000030(A020338(n+1))`
-/

namespace A349278.P9855418330039649846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066308 (n + 1) : ℚ) / (A000030 (A020338 (n + 1)).toNat : ℚ)

end

end A349278.P9855418330039649846

/-! ## A349278.P14214035461353170011

`A066308(n+1)/A000030(A056524(n+1))`
-/

namespace A349278.P14214035461353170011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066308 (n + 1) : ℚ) / (A000030 (A056524 (n + 1)).toNat : ℚ)

end

end A349278.P14214035461353170011

/-! ## A349278.P7667337251059155199

`A066308(n+1)/A000030(A056525(n+1))`
-/

namespace A349278.P7667337251059155199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066308 (n + 1) : ℚ) / (A000030 (A056525 (n + 1)).toNat : ℚ)

end

end A349278.P7667337251059155199

/-! ## A349278.P6639119420863747537

`A066308(n+1)/A000030(A127423(n+1))`
-/

namespace A349278.P6639119420863747537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066308 (n + 1) : ℚ) / (A000030 (A127423 (n + 1)).toNat : ℚ)

end

end A349278.P6639119420863747537

/-! ## A349278.P7248727513070561718

`A066308(n+1)/A000030(A158128(n+1))`
-/

namespace A349278.P7248727513070561718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066308 (n + 1) : ℚ) / (A000030 (A158128 (n + 1)).toNat : ℚ)

end

end A349278.P7248727513070561718

/-!
# A349279: Fixed points of A349278.

The programs for A349279, there is no canonical definition to state claims against.
-/

/-! ## A349279.P17345961260114513784

`eq[n, A349278(abs(1-n)+1)]`
-/

namespace A349279.P17345961260114513784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349278 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349279.P17345961260114513784

/-! ## A349279.P2627847830977726113

`eq[n, A349864(round(sqrt(n²+1)))]`
-/

namespace A349279.P2627847830977726113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349864 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349279.P2627847830977726113

/-! ## A349279.P14138761262939050595

`eq[n+1, A349278(n+1)]+1`
-/

namespace A349279.P14138761262939050595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349278 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A349279.P14138761262939050595

/-! ## A349279.P7308057610523178668

`eq[n+1, A349864(n+1)]+1`
-/

namespace A349279.P7308057610523178668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349864 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A349279.P7308057610523178668

/-! ## A349279.P13940751207855124437

`A049101(A290387(n+1))`
-/

namespace A349279.P13940751207855124437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049101 (A290387 (n + 1)).toNat

end

end A349279.P13940751207855124437

/-!
# A349280: Irregular triangle read by rows: T(n,k) is the number of arrangements of n labeled children with exactly k rounds; n >= 2, 1 <= k <= floor(n/2).

The programs for A349280, there is no canonical definition to state claims against.
-/

/-! ## A349280.P9221142372035070369

`A303703(∏{e}[A225367(3*n+5), #])`
-/

namespace A349280.P9221142372035070369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225367 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303703 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A349280.P9221142372035070369

/-! ## A349280.P9861212820831122570

`A263203(A000712(n))+A000293(n)`
-/

namespace A349280.P9861212820831122570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263203 (A000712 n).toNat + A000293 n

end

end A349280.P9861212820831122570

/-! ## A349280.P11068128960470970549

`A317129(n)+A300154(A300134(n+1))`
-/

namespace A349280.P11068128960470970549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317129 n + A300154 (A300134 (n + 1)).toNat

end

end A349280.P11068128960470970549

/-!
# A349281: a(n) is the number of prime powers (not including 1) that are (1+e)-divisors of n.

The programs for A349281, the canonical program `A349281.P3498708002694954202` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349281 has offset 1).

The definition of A349281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349281.P12292197126143532378

`∑{e}[n+1, A000005(#)]`
-/

namespace A349281.P12292197126143532378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000005 (Nat.factorization (f1 n) p)

end

end A349281.P12292197126143532378

namespace A349281

/-- `∑{e}[n+1, A000005(#)]` -/
def P12292197126143532378.Spec : Prop :=
  ∀ n, P12292197126143532378.a n = A349281 (n + 1)

end A349281

/-! ## A349281.P6365604982344081667

`∑{e}[n+1, A074848(#)]`
-/

namespace A349281.P6365604982344081667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A074848 (Nat.factorization (f1 n) p)

end

end A349281.P6365604982344081667

namespace A349281

/-- `∑{e}[n+1, A074848(#)]` -/
def P6365604982344081667.Spec : Prop :=
  ∀ n, P6365604982344081667.a n = A349281 (n + 1)

end A349281

/-! ## A349281.P2323886751302267080

`∑{e}[n+1, A167447(#)]`
-/

namespace A349281.P2323886751302267080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A167447 (Nat.factorization (f1 n) p)

end

end A349281.P2323886751302267080

namespace A349281

/-- `∑{e}[n+1, A167447(#)]` -/
def P2323886751302267080.Spec : Prop :=
  ∀ n, P2323886751302267080.a n = A349281 (n + 1)

end A349281

/-! ## A349281.P5887958259778512388

`∑{e}[n+1, A179941(#)]`
-/

namespace A349281.P5887958259778512388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A179941 (Nat.factorization (f1 n) p)

end

end A349281.P5887958259778512388

namespace A349281

/-- `∑{e}[n+1, A179941(#)]` -/
def P5887958259778512388.Spec : Prop :=
  ∀ n, P5887958259778512388.a n = A349281 (n + 1)

end A349281

/-! ## A349281.P3498708002694954202

`∑{e}[n+1, A032741(#)+1]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A349281

/-- `∑{e}[n+1, A032741(#)+1]` -/
def P3498708002694954202.Spec : Prop :=
  ∀ n, P3498708002694954202.a n = A349281 (n + 1)

theorem P3498708002694954202.correct : P3498708002694954202.Spec := by
  intro n
  simp only [A349281, Nat.add_sub_cancel]

end A349281

/-! ## A349281.P10126200658355239930

`∑{p}[n+1, A000005(val(n+1, #))]`
-/

namespace A349281.P10126200658355239930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000005 (SequenceMachineLib.valuation (n + 1) p)

end

end A349281.P10126200658355239930

namespace A349281

/-- `∑{p}[n+1, A000005(val(n+1, #))]` -/
def P10126200658355239930.Spec : Prop :=
  ∀ n, P10126200658355239930.a n = A349281 (n + 1)

end A349281

/-! ## A349281.P10015070206015284281

`A001222(∏{e}[n+1, 2^A000005(#)])`
-/

namespace A349281.P10015070206015284281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (2 : ℚ) ^ (A000005 (Nat.factorization (f1 n) p) : ℤ))).toNat

end

end A349281.P10015070206015284281

namespace A349281

/-- `A001222(∏{e}[n+1, 2^A000005(#)])` -/
def P10015070206015284281.Spec : Prop :=
  ∀ n, P10015070206015284281.a n = A349281 (n + 1)

end A349281

/-! ## A349281.P1444214308389952340

`A302242(A007425((n+1)²))`
-/

namespace A349281.P1444214308389952340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A007425 ((n + 1) ^ 2)).toNat

end

end A349281.P1444214308389952340

namespace A349281

/-- `A302242(A007425((n+1)²))` -/
def P1444214308389952340.Spec : Prop :=
  ∀ n, P1444214308389952340.a n = A349281 (n + 1)

end A349281

/-!
# A349282: a(n) is the least k such that A349281(k) = n.

The programs for A349282, there is no canonical definition to state claims against.
-/

/-! ## A349282.P13300037073725169246

`∏[∑[A002654(A101127(n))]]`
-/

namespace A349282.P13300037073725169246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (A101127 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A349282.P13300037073725169246

/-! ## A349282.P14843368193839738491

`∏[A241826(n+3)%A241797(2*(n+4))]`
-/

namespace A349282.P14843368193839738491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241826 (n + 3)) (A241797 (2 * (n + 4)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A349282.P14843368193839738491

/-! ## A349282.P16746379659359136969

`∏[∑[A319618(n)%3]]`
-/

namespace A349282.P16746379659359136969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319618 n) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A349282.P16746379659359136969

/-! ## A349282.P10650742700514333747

`∏[A000015(A110654(n)+1)%A380052(3*n+2)]`
-/

namespace A349282.P10650742700514333747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000015 (A110654 n + 1).toNat) (A380052 (3 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A349282.P10650742700514333747

/-!
# A349285: (1+e)-weird numbers: (1+e)-abundant numbers k such that no subset of the aliquot (1+e)-divisors of k sums to k.

The programs for A349285, there is no canonical definition to state claims against.
-/

/-! ## A349285.P5370422638391040342

`filter[A006037(n+1), A212793(#)]`
-/

namespace A349285.P5370422638391040342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A349285.P5370422638391040342

/-! ## A349285.P14467408039460642288

`filter[A006037(n+1), A359471(#)]`
-/

namespace A349285.P14467408039460642288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A349285.P14467408039460642288

/-! ## A349285.P12681483582667203346

`filter[A006037(n+1), A168181(#)]`
-/

namespace A349285.P12681483582667203346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A349285.P12681483582667203346

/-! ## A349285.P1740940149115362248

`A268385(record[A268385(A006037(n+1))])`
-/

namespace A349285.P1740940149115362248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268385 (A006037 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268385 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A349285.P1740940149115362248

/-!
# A349286: G.f. A(x) satisfies: A(x) = 1 / (1 - x * A(3*x)^2).

The programs for A349286, there is no canonical definition to state claims against.
-/

/-! ## A349286.P13917353607298792582

`A028310(xor(A124302(n), A307902(n+1)))`
-/

namespace A349286.P13917353607298792582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.xor (A124302 n) (A307902 (n + 1))).toNat

end

end A349286.P13917353607298792582

/-!
# A349289: G.f. A(x) satisfies A(x) = 1 / ((1 - x) * (1 - x * A(x)^3)).

The programs for A349289, there is no canonical definition to state claims against.
-/

/-! ## A349289.P1690124037954937373

`∑[A382917(n)]`
-/

namespace A349289.P1690124037954937373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382917 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349289.P1690124037954937373

/-!
# A349290: G.f. A(x) satisfies A(x) = 1 / ((1 - x) * (1 - x * A(x)^4)).

The programs for A349290, there is no canonical definition to state claims against.
-/

/-! ## A349290.P15949936245416630609

`A188346(3^n)+1+n`
-/

namespace A349290.P15949936245416630609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188346 (3 ^ n) + 1 + (n : ℤ)

end

end A349290.P15949936245416630609

/-!
# A349291: G.f. A(x) satisfies A(x) = 1 / ((1 - x) * (1 - x * A(x)^5)).

The programs for A349291, there is no canonical definition to state claims against.
-/

/-! ## A349291.P15941241998037880300

`A244222(n^(n+1))-(n-1)`
-/

namespace A349291.P15941241998037880300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244222 (n ^ (n + 1)) - ((n : ℤ) - 1)

end

end A349291.P15941241998037880300

/-!
# A349292: G.f. A(x) satisfies A(x) = 1 / ((1 - x) * (1 - x * A(x)^6)).

The programs for A349292, there is no canonical definition to state claims against.
-/

/-! ## A349292.P9966441996907595565

`A314333(n*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A349292.P9966441996907595565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A314333 ((n : ℤ) * a (n - 1)).toNat

end

end A349292.P9966441996907595565

/-!
# A349293: G.f. A(x) satisfies A(x) = 1 / ((1 - x) * (1 - x * A(x)^7)).

The programs for A349293, there is no canonical definition to state claims against.
-/

/-! ## A349293.P4890373965621790522

`ceil(A008619(A336539(n))-n/3)`
-/

namespace A349293.P4890373965621790522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008619 (A336539 n).toNat : ℚ) - (n : ℚ) / 3⌉

end

end A349293.P4890373965621790522

/-!
# A349294: Numbers m such that there exists a permutation p of {1,2,...,m} with p(k) dividing p(k+1) + p(k+2) for all k in {1,2,...,m-2}.

The programs for A349294, there is no canonical definition to state claims against.
-/

/-! ## A349294.P17828171266322662289

`lt[0, A349288(n+1)]+1`
-/

namespace A349294.P17828171266322662289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349288 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A349294.P17828171266322662289

/-! ## A349294.P12031715542497421168

`∑[A096568(A280865(n)²)]`
-/

namespace A349294.P12031715542497421168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096568 (A280865 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349294.P12031715542497421168

/-! ## A349294.P11469353893652319191

`∑[A336468(∑[A193739(n)])]`
-/

namespace A349294.P11469353893652319191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336468 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349294.P11469353893652319191

/-! ## A349294.P7174388227793616200

`∑[A176346(∑[A034531(n+1)])]`
-/

namespace A349294.P7174388227793616200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034531 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176346 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349294.P7174388227793616200

/-! ## A349294.P11093034137814148711

`∑[A320647(A000700(n)+1)+1]`
-/

namespace A349294.P11093034137814148711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320647 (A000700 n + 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349294.P11093034137814148711

/-!
# A349295: a(n) is the number of ordered 6-tuples (a_1,a_2,a_3,a_4,a_5,a_6) having all terms in {1,...,n} such that there exists a tetrahedron ABCD with those edge-lengths, taken in a particular order (see comments).

The programs for A349295, there is no canonical definition to state claims against.
-/

/-! ## A349295.P1386037348993962664

`∑[A349296(floor(acot(n)+n))]-1`
-/

namespace A349295.P1386037348993962664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349296 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A349295.P1386037348993962664

/-! ## A349295.P15904021093621560323

`∑[A349296(A028310(n))]-1`
-/

namespace A349295.P15904021093621560323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349296 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A349295.P15904021093621560323

/-! ## A349295.P11704307146591401270

`∑[A349296(A000007(n)+n)]-1`
-/

namespace A349295.P11704307146591401270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349296 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A349295.P11704307146591401270

/-! ## A349295.P12041485024842745362

`∑[A349296(A004277(n)-n)]-1`
-/

namespace A349295.P12041485024842745362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349296 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A349295.P12041485024842745362

/-! ## A349295.P1158664825179717519

`∑[A349296(n+1)]-A349296(n+1)`
-/

namespace A349295.P1158664825179717519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A349296 (n + 1)

end

end A349295.P1158664825179717519

/-!
# A349296: First differences of A349295.

The programs for A349296, there is no canonical definition to state claims against.
-/

/-! ## A349296.P17698947200094761653

`Δ[A349295(n)]`
-/

namespace A349296.P17698947200094761653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349296.P17698947200094761653

/-! ## A349296.P7477255327314680064

`A349295(n+1)-A349295(n)`
-/

namespace A349296.P7477255327314680064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349295 (n + 1) - A349295 n

end

end A349296.P7477255327314680064

/-! ## A349296.P15736566279173514909

`record[A349295(A081753(n))]-A349295(n)`
-/

namespace A349296.P15736566279173514909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349295 (A081753 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A349295 n

end

end A349296.P15736566279173514909

/-! ## A349296.P15600294098229414878

`record[A349295(A330439(n))]-A349295(n)`
-/

namespace A349296.P15600294098229414878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349295 (A330439 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A349295 n

end

end A349296.P15600294098229414878

/-! ## A349296.P1547857020047029798

`record[A349295(A351085(n))]-A349295(n)`
-/

namespace A349296.P1547857020047029798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349295 (A351085 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A349295 n

end

end A349296.P1547857020047029798

/-!
# A349297: Triangle T(n,k) = 1 if both n and k are even or if n and k are divisible by 3.

The programs for A349297, the canonical program `A349297.P11630556186801154286` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349297 has offset 1).

The definition of A349297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349297.P11630556186801154286

`A099375(n)%A065331(A050873(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A349297

/-- `A099375(n)%A065331(A050873(n+1))` -/
def P11630556186801154286.Spec : Prop :=
  ∀ n, P11630556186801154286.a n = A349297 (n + 1)

theorem P11630556186801154286.correct : P11630556186801154286.Spec := by
  intro n
  simp only [A349297, Nat.add_sub_cancel]

end A349297

/-! ## A349297.P268732283714949156

`A007359(gcd(A008458(n), A050873(n+1)))`
-/

namespace A349297.P268732283714949156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007359 (Int.gcd (A008458 n) (A050873 (n + 1)))

end

end A349297.P268732283714949156

namespace A349297

/-- `A007359(gcd(A008458(n), A050873(n+1)))` -/
def P268732283714949156.Spec : Prop :=
  ∀ n, P268732283714949156.a n = A349297 (n + 1)

end A349297

/-! ## A349297.P2279035893067735847

`A130296(n+1)%A065331(A050873(n+1))`
-/

namespace A349297.P2279035893067735847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130296 (n + 1)) (A065331 (A050873 (n + 1)).toNat)

end

end A349297.P2279035893067735847

namespace A349297

/-- `A130296(n+1)%A065331(A050873(n+1))` -/
def P2279035893067735847.Spec : Prop :=
  ∀ n, P2279035893067735847.a n = A349297 (n + 1)

end A349297

/-! ## A349297.P6647304904309466711

`A000120(A062383(n))%A065331(A050873(n+1))`
-/

namespace A349297.P6647304904309466711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (A062383 n).toNat) (A065331 (A050873 (n + 1)).toNat)

end

end A349297.P6647304904309466711

namespace A349297

/-- `A000120(A062383(n))%A065331(A050873(n+1))` -/
def P6647304904309466711.Spec : Prop :=
  ∀ n, P6647304904309466711.a n = A349297 (n + 1)

end A349297

/-! ## A349297.P13344919196445982463

`A057979(A050873(n+1)²)%3`
-/

namespace A349297.P13344919196445982463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057979 (A050873 (n + 1) ^ 2).toNat) 3

end

end A349297.P13344919196445982463

namespace A349297

/-- `A057979(A050873(n+1)²)%3` -/
def P13344919196445982463.Spec : Prop :=
  ∀ n, P13344919196445982463.a n = A349297 (n + 1)

end A349297

/-! ## A349297.P2147151149308085505

`A342023(A219069(n+1))`
-/

namespace A349297.P2147151149308085505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342023 (A219069 (n + 1)).toNat

end

end A349297.P2147151149308085505

namespace A349297

/-- `A342023(A219069(n+1))` -/
def P2147151149308085505.Spec : Prop :=
  ∀ n, P2147151149308085505.a n = A349297 (n + 1)

end A349297

/-!
# A349298: Positions k in row n of triangles S(n,k) = T(n,k) = 0, where A054521 = S and A349297 = T, or 0 if there are no such k.

The programs for A349298, there is no canonical definition to state claims against.
-/

/-! ## A349298.P1851023744582062734

`∑{p}[A232989((n+1)²/∏{p}[n+1, #]), #]`
-/

namespace A349298.P1851023744582062734
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232989 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A349298.P1851023744582062734

/-! ## A349298.P5473417998242994219

`A186099((n+1)*6^∑{e}[n+1, #])-1`
-/

namespace A349298.P5473417998242994219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186099 ((n + 1) * 6 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) - 1

end

end A349298.P5473417998242994219

/-! ## A349298.P3349798629644543464

`∑{p}[A140213(((n+1)²/∏{p}[n+1, #])²), #]`
-/

namespace A349298.P3349798629644543464
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140213 (SequenceMachineLib.roundAway ((((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)) ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A349298.P3349798629644543464

/-! ## A349298.P3816191862281208920

`A071321(lcm(6, (n+1)^3)/6*(n+1)/∏{p}[n+1, #])`
-/

namespace A349298.P3816191862281208920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071321 (SequenceMachineLib.roundAway ((Nat.lcm 6 ((n + 1) ^ 3) : ℚ) / 6 * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)))).toNat

end

end A349298.P3816191862281208920

/-! ## A349298.P13046722869803485064

`A080368(Δ[Δ[A016766(n)]²])`
-/

namespace A349298.P13046722869803485064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016766 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080368 (f1 (n + 1) - f1 n).toNat

end

end A349298.P13046722869803485064

/-!
# A349299: G.f. A(x) satisfies: A(x) = 1 / ((1 + x) * (1 - x * A(x)^3)).

The programs for A349299, there is no canonical definition to state claims against.
-/

/-! ## A349299.P5779878603185699939

`or(1, A226190(floor(3*(4*n-2)*a(n-1)/(n+2))))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A349299.P5779878603185699939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  Int.lor 1 (A226190 ⌊(3 * (((4 * n : ℤ) - 2) * a (n - 1)) : ℚ) / (n + 2 : ℚ)⌋.toNat)

end

end A349299.P5779878603185699939

/-! ## A349299.P16478050823638468988

`A008647(A082134(n))`
-/

namespace A349299.P16478050823638468988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A082134 n).toNat

end

end A349299.P16478050823638468988

/-! ## A349299.P13197621256641693702

`A081753(A150889(n))`
-/

namespace A349299.P13197621256641693702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A150889 n).toNat

end

end A349299.P13197621256641693702

