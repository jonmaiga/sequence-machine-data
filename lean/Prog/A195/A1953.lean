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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B010.C000
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

/-!
# A195302: Xmas tree primes.

The programs for A195302, there is no canonical definition to state claims against.
-/

/-! ## A195302.P4968440235550896178

`p?[record[A216556(A096182(n+1))]]`
-/

namespace A195302.P4968440235550896178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216556 (A096182 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A195302.P4968440235550896178

/-! ## A195302.P6556758602075005233

`∪[A165243(n+2), p?[A165256(n+1)]]`
-/

namespace A195302.P6556758602075005233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165243 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A195302.P6556758602075005233

/-! ## A195302.P15726703620204503399

`∪[A159911(n+1), A031347(A004249(n))]`
-/

namespace A195302.P15726703620204503399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (A004249 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A195302.P15726703620204503399

/-!
# A195307: Where records occur in A129308 and also in A195155.

The programs for A195307, there is no canonical definition to state claims against.
-/

/-! ## A195307.P10680241618287672414

`(2-C(2, n+2))*A350756(A028310(n))`
-/

namespace A195307.P10680241618287672414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.choose 2 (n + 2) : ℤ)) * A350756 (A028310 n).toNat

end

end A195307.P10680241618287672414

/-! ## A195307.P14887456361940619795

`A036453(n+1)*A350756(A028310(n))`
-/

namespace A195307.P14887456361940619795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A350756 (A028310 n).toNat

end

end A195307.P14887456361940619795

/-! ## A195307.P15431203696479202147

`A020639(A001316(n))*A350756(A028310(n))`
-/

namespace A195307.P15431203696479202147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001316 n).toNat * A350756 (A028310 n).toNat

end

end A195307.P15431203696479202147

/-! ## A195307.P3414180749149807908

`A020639(A004277(n))*A350756(A028310(n))`
-/

namespace A195307.P3414180749149807908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A350756 (A028310 n).toNat

end

end A195307.P3414180749149807908

/-!
# A195308: a(n) = A005291(n) + A005291(n+1).

The programs for A195308, there is no canonical definition to state claims against.
-/

/-! ## A195308.P8236899849651761499

`A005291(n+1)+A005291(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A195308.P8236899849651761499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005291 (n + 1) + A005291 (n + 2)

end

end A195308.P8236899849651761499

/-! ## A195308.P5739231282060261721

`A320315(n+9)-record[A320316(n)]`
-/

namespace A195308.P5739231282060261721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320315 (n + 9) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195308.P5739231282060261721

/-! ## A195308.P9422459427592289862

`A320315(n+9)-A320316(n+10)`
-/

namespace A195308.P9422459427592289862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320315 (n + 9) - A320316 (n + 10)

end

end A195308.P9422459427592289862

/-! ## A195308.P513773012699498297

`A003056(A135491(n))-A003056(A032741(n))`
-/

namespace A195308.P513773012699498297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A135491 n).toNat - A003056 (A032741 n).toNat

end

end A195308.P513773012699498297

/-! ## A195308.P1674398078171740908

`A137735(A000225(n))-A326598(n)`
-/

namespace A195308.P1674398078171740908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A000225 n).toNat - A326598 n

end

end A195308.P1674398078171740908

/-!
# A195309: Row sums of an irregular triangle read by rows in which row n lists the next A026741(n+1) natural numbers A000027.

The programs for A195309, the canonical program `A195309.P7512228494154126908` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195309 has offset 1).

The definition of A195309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195309.P7512228494154126908

`Δ[C(∑[lcm(2, n+1)]/2, 2)]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A195309

/-- `Δ[C(∑[lcm(2, n+1)]/2, 2)]` -/
def P7512228494154126908.Spec : Prop :=
  ∀ n, P7512228494154126908.a n = A195309 (n + 1)

theorem P7512228494154126908.correct : P7512228494154126908.Spec := by
  intro n
  simp only [A195309, Nat.add_sub_cancel]

end A195309

/-! ## A195309.P14761966052744788230

`A000217(n+1)+A001318(n+1)*A174239(n+1)`
-/

namespace A195309.P14761966052744788230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + A001318 (n + 1) * A174239 (n + 1)

end

end A195309.P14761966052744788230

namespace A195309

/-- `A000217(n+1)+A001318(n+1)*A174239(n+1)` -/
def P14761966052744788230.Spec : Prop :=
  ∀ n, P14761966052744788230.a n = A195309 (n + 1)

end A195309

/-! ## A195309.P3170451913007093445

`Δ[C(A001318(n+1), 2)]`
-/

namespace A195309.P3170451913007093445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001318 (n + 1)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A195309.P3170451913007093445

namespace A195309

/-- `Δ[C(A001318(n+1), 2)]` -/
def P3170451913007093445.Spec : Prop :=
  ∀ n, P3170451913007093445.a n = A195309 (n + 1)

end A195309

/-! ## A195309.P8411728878174533522

`A000292(∑[3-a(n-1)])-a(n-1)` with `a(0)=1`
-/

namespace A195309.P8411728878174533522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000292 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - a (n - 1)

end

end A195309.P8411728878174533522

namespace A195309

/-- `A000292(∑[3-a(n-1)])-a(n-1)` -/
def P8411728878174533522.Spec : Prop :=
  ∀ n, P8411728878174533522.a n = A195309 (n + 1)

end A195309

/-! ## A195309.P1775761132625019296

`A000292(∑[A080247(a(n-1))])-a(n-1)` with `a(0)=1`
-/

namespace A195309.P1775761132625019296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A080247 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000292 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - a (n - 1)

end

end A195309.P1775761132625019296

namespace A195309

/-- `A000292(∑[A080247(a(n-1))])-a(n-1)` -/
def P1775761132625019296.Spec : Prop :=
  ∀ n, P1775761132625019296.a n = A195309 (n + 1)

end A195309

/-! ## A195309.P18181062210202017032

`Δ[C(A308160(2*n+3), 2)]`
-/

namespace A195309.P18181062210202017032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A308160 (2 * n + 3)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A195309.P18181062210202017032

namespace A195309

/-- `Δ[C(A308160(2*n+3), 2)]` -/
def P18181062210202017032.Spec : Prop :=
  ∀ n, P18181062210202017032.a n = A195309 (n + 1)

end A195309

/-! ## A195309.P9904475737803107748

`Δ[A000217(A144065(n))]`
-/

namespace A195309.P9904475737803107748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A144065 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195309.P9904475737803107748

namespace A195309

/-- `Δ[A000217(A144065(n))]` -/
def P9904475737803107748.Spec : Prop :=
  ∀ n, P9904475737803107748.a n = A195309 (n + 1)

end A195309

/-! ## A195309.P8979349425827019397

`Δ[A000217(A001318(n+1)-1)]`
-/

namespace A195309.P8979349425827019397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A001318 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195309.P8979349425827019397

namespace A195309

/-- `Δ[A000217(A001318(n+1)-1)]` -/
def P8979349425827019397.Spec : Prop :=
  ∀ n, P8979349425827019397.a n = A195309 (n + 1)

end A195309

/-! ## A195309.P17928239081419159733

`Δ[A000217(A319390(n+1)-2)]`
-/

namespace A195309.P17928239081419159733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A319390 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195309.P17928239081419159733

namespace A195309

/-- `Δ[A000217(A319390(n+1)-2)]` -/
def P17928239081419159733.Spec : Prop :=
  ∀ n, P17928239081419159733.a n = A195309 (n + 1)

end A195309

/-! ## A195309.P16403218447867731880

`Δ[A000217(A135370(n+1)%A001318(n+1))]`
-/

namespace A195309.P16403218447867731880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.tmod (A135370 (n + 1)) (A001318 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195309.P16403218447867731880

namespace A195309

/-- `Δ[A000217(A135370(n+1)%A001318(n+1))]` -/
def P16403218447867731880.Spec : Prop :=
  ∀ n, P16403218447867731880.a n = A195309 (n + 1)

end A195309

/-! ## A195309.P17900528071059735888

`Δ[A000124(∑[A026741(n+1)]-1)]`
-/

namespace A195309.P17900528071059735888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (∑ j ∈ Finset.range (n + 1), f2 j - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195309.P17900528071059735888

namespace A195309

/-- `Δ[A000124(∑[A026741(n+1)]-1)]` -/
def P17900528071059735888.Spec : Prop :=
  ∀ n, P17900528071059735888.a n = A195309 (n + 1)

end A195309

/-!
# A195310: Triangle read by rows with T(n,k) = n - A001318(k), n >= 1, k >= 1, if (n - A001318(k)) >= 0.

The programs for A195310, there is no canonical definition to state claims against.
-/

/-! ## A195310.P2087813037499218077

`A260672(comp[A260706(n)])`
-/

namespace A195310.P2087813037499218077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260706 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260672 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A195310.P2087813037499218077

/-! ## A195310.P1533823678991400796

`A260672(eq[0, char[A260706(n)]])`
-/

namespace A195310.P1533823678991400796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260706 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260672 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A195310.P1533823678991400796

/-! ## A195310.P6612157464955274720

`A260672(lt[char[A260706(n)], 1])`
-/

namespace A195310.P6612157464955274720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260706 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260672 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A195310.P6612157464955274720

/-! ## A195310.P6675223544057549871

`A260672(comp[record[A260672(n)+n]-n])`
-/

namespace A195310.P6675223544057549871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260672 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260672 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A195310.P6675223544057549871

/-! ## A195310.P14010654029804798933

`A260672(lt[A260706(A260672(n)), n])`
-/

namespace A195310.P14010654029804798933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260706 (A260672 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260672 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A195310.P14010654029804798933

/-!
# A195311: Row sums of A195310.

The programs for A195311, there is no canonical definition to state claims against.
-/

/-! ## A195311.P6726116827876090286

`∑[∑[char[∑[gcd(n+1, ∑[n])]]]]`
-/

namespace A195311.P6726116827876090286
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f5 j)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195311.P6726116827876090286

/-! ## A195311.P12304404707421481447

`∑[A235963(n)]`
-/

namespace A195311.P12304404707421481447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195311.P12304404707421481447

/-! ## A195311.P14703232523873693791

`∑[∑[abs(A203568(n))]]`
-/

namespace A195311.P14703232523873693791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A203568 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195311.P14703232523873693791

/-! ## A195311.P5357776057781882678

`∑[∑[abs(A257628(n))]]`
-/

namespace A195311.P5357776057781882678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A257628 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195311.P5357776057781882678

/-! ## A195311.P1459238962229746907

`∑[∑[A080995(n)]-1]`
-/

namespace A195311.P1459238962229746907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080995 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195311.P1459238962229746907

/-! ## A195311.P12200253895701002450

`∑[∑[A073424(3*n)]]`
-/

namespace A195311.P12200253895701002450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195311.P12200253895701002450

/-! ## A195311.P3725284855004297524

`∑[A193832(n+1)-1]`
-/

namespace A195311.P3725284855004297524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195311.P3725284855004297524

/-!
# A195312: Multiples of 9 and odd numbers interleaved.

The programs for A195312, the canonical program `A195312.P5816745457346654418` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195312 has offset 0).

The definition of A195312 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195312.P5816745457346654418

`(7*(-1)^n+11)*n/4`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A195312

/-- `(7*(-1)^n+11)*n/4` -/
def P5816745457346654418.Spec : Prop :=
  ∀ n, P5816745457346654418.a n = (A195312 n : ℚ)

end A195312

/-! ## A195312.P5093003029893187206

`a(n-2)/(1-2/n)` with `a(0)=0, a(1)=1, a(2)=9`
-/

namespace A195312.P5093003029893187206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 9] fun n a =>
  a (n - 2) / (1 - 2 / (n : ℚ))

end

end A195312.P5093003029893187206

namespace A195312

/-- `a(n-2)/(1-2/n)` -/
def P5093003029893187206.Spec : Prop :=
  ∀ n, P5093003029893187206.a n = (A195312 n : ℚ)

end A195312

/-! ## A195312.P3096305008633633689

`(A317316(n)+n)/2`
-/

namespace A195312.P3096305008633633689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317316 n + (n : ℤ) : ℚ) / 2

end

end A195312.P3096305008633633689

namespace A195312

/-- `(A317316(n)+n)/2` -/
def P3096305008633633689.Spec : Prop :=
  ∀ n, P3096305008633633689.a n = (A195312 n : ℚ)

end A195312

/-! ## A195312.P12460569819335377428

`A317318(n)/gcd(2, n)`
-/

namespace A195312.P12460569819335377428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317318 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A195312.P12460569819335377428

namespace A195312

/-- `A317318(n)/gcd(2, n)` -/
def P12460569819335377428.Spec : Prop :=
  ∀ n, P12460569819335377428.a n = (A195312 n : ℚ)

end A195312

/-! ## A195312.P7313278799966942973

`A274406(n)-a(n-1)+n` with `a(0)=0`
-/

namespace A195312.P7313278799966942973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A274406 n - a (n - 1) + (n : ℤ)

end

end A195312.P7313278799966942973

namespace A195312

/-- `A274406(n)-a(n-1)+n` -/
def P7313278799966942973.Spec : Prop :=
  ∀ n, P7313278799966942973.a n = A195312 n

end A195312

/-! ## A195312.P8138567372151457656

`(A047336(n+1)-1)*char[2*n]+n`
-/

namespace A195312.P8138567372151457656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047336 (n + 1) - 1) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

end

end A195312.P8138567372151457656

namespace A195312

/-- `(A047336(n+1)-1)*char[2*n]+n` -/
def P8138567372151457656.Spec : Prop :=
  ∀ n, P8138567372151457656.a n = A195312 n

end A195312

/-! ## A195312.P8065079045569406975

`A047358(n*char[2*n]+1)-2+n`
-/

namespace A195312.P8065079045569406975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047358 (n * (if ∃ j, f1 j = n then 1 else 0) + 1) - 2 + (n : ℤ)

end

end A195312.P8065079045569406975

namespace A195312

/-- `A047358(n*char[2*n]+1)-2+n` -/
def P8065079045569406975.Spec : Prop :=
  ∀ n, P8065079045569406975.a n = A195312 n

end A195312

/-! ## A195312.P16853120532129300083

`A195161(n)+A142150(n)`
-/

namespace A195312.P16853120532129300083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195161 n + A142150 n

end

end A195312.P16853120532129300083

namespace A195312

/-- `A195161(n)+A142150(n)` -/
def P16853120532129300083.Spec : Prop :=
  ∀ n, P16853120532129300083.a n = A195312 n

end A195312

/-! ## A195312.P4854583532439212916

`A237420(n)+A195159(n)`
-/

namespace A195312.P4854583532439212916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n + A195159 n

end

end A195312.P4854583532439212916

namespace A195312

/-- `A237420(n)+A195159(n)` -/
def P4854583532439212916.Spec : Prop :=
  ∀ n, P4854583532439212916.a n = A195312 n

end A195312

/-! ## A195312.P6021660020460291700

`A035877(n)-A257143(n)`
-/

namespace A195312.P6021660020460291700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035877 n - A257143 n

end

end A195312.P6021660020460291700

namespace A195312

/-- `A035877(n)-A257143(n)` -/
def P6021660020460291700.Spec : Prop :=
  ∀ n, P6021660020460291700.a n = A195312 n

end A195312

/-! ## A195312.P13959244614781463631

`A195817(n)-A142150(n)`
-/

namespace A195312.P13959244614781463631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195817 n - A142150 n

end

end A195312.P13959244614781463631

namespace A195312

/-- `A195817(n)-A142150(n)` -/
def P13959244614781463631.Spec : Prop :=
  ∀ n, P13959244614781463631.a n = A195312 n

end A195312

/-! ## A195312.P17271315816509631007

`A317311(n)-A237420(n)`
-/

namespace A195312.P17271315816509631007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317311 n - A237420 n

end

end A195312.P17271315816509631007

namespace A195312

/-- `A317311(n)-A237420(n)` -/
def P17271315816509631007.Spec : Prop :=
  ∀ n, P17271315816509631007.a n = A195312 n

end A195312

/-! ## A195312.P14006441645707414813

`A008591(n)/A010699(n)`
-/

namespace A195312.P14006441645707414813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008591 n : ℚ) / (A010699 n : ℚ)

end

end A195312.P14006441645707414813

namespace A195312

/-- `A008591(n)/A010699(n)` -/
def P14006441645707414813.Spec : Prop :=
  ∀ n, P14006441645707414813.a n = (A195312 n : ℚ)

end A195312

/-! ## A195312.P13253105696974022635

`A317318(n)/A040001(n)`
-/

namespace A195312.P13253105696974022635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317318 n : ℚ) / (A040001 n : ℚ)

end

end A195312.P13253105696974022635

namespace A195312

/-- `A317318(n)/A040001(n)` -/
def P13253105696974022635.Spec : Prop :=
  ∀ n, P13253105696974022635.a n = (A195312 n : ℚ)

end A195312

/-! ## A195312.P905112265637071815

`A001106(n)%A168102(n)`
-/

namespace A195312.P905112265637071815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001106 n) (A168102 n)

end

end A195312.P905112265637071815

namespace A195312

/-- `A001106(n)%A168102(n)` -/
def P905112265637071815.Spec : Prop :=
  ∀ n, P905112265637071815.a n = A195312 n

end A195312

/-! ## A195312.P4795614228817335099

`A289721(n)%A035877(n)`
-/

namespace A195312.P4795614228817335099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289721 n) (A035877 n)

end

end A195312.P4795614228817335099

namespace A195312

/-- `A289721(n)%A035877(n)` -/
def P4795614228817335099.Spec : Prop :=
  ∀ n, P4795614228817335099.a n = A195312 n

end A195312

/-! ## A195312.P1276457571005183890

`A317321(n)%A008458(n)`
-/

namespace A195312.P1276457571005183890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317321 n) (A008458 n)

end

end A195312.P1276457571005183890

namespace A195312

/-- `A317321(n)%A008458(n)` -/
def P1276457571005183890.Spec : Prop :=
  ∀ n, P1276457571005183890.a n = A195312 n

end A195312

/-! ## A195312.P988431114348521663

`A317319(n)%A008706(n)`
-/

namespace A195312.P988431114348521663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317319 n) (A008706 n)

end

end A195312.P988431114348521663

namespace A195312

/-- `A317319(n)%A008706(n)` -/
def P988431114348521663.Spec : Prop :=
  ∀ n, P988431114348521663.a n = A195312 n

end A195312

/-! ## A195312.P13118579132218615276

`A317325(n)%A022144(n)`
-/

namespace A195312.P13118579132218615276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317325 n) (A022144 n)

end

end A195312.P13118579132218615276

namespace A195312

/-- `A317325(n)%A022144(n)` -/
def P13118579132218615276.Spec : Prop :=
  ∀ n, P13118579132218615276.a n = A195312 n

end A195312

/-!
# A195313: Generalized 13-gonal numbers: m*(11*m-9)/2 with m = 0, 1, -1, 2, -2, 3, -3, ...

The programs for A195313, the canonical program `A195313.P5940470635642675620` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195313 has offset 0).

The definition of A195313 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195313.P5940470635642675620

`(22*n*(n+1)+7*(2*n+1)*(-1)^n-7)/16`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A195313

/-- `(22*n*(n+1)+7*(2*n+1)*(-1)^n-7)/16` -/
def P5940470635642675620.Spec : Prop :=
  ∀ n, P5940470635642675620.a n = (A195313 n : ℚ)

end A195313

/-! ## A195313.P4027649350138334821

`∑[n*(8-7/gcd(2, n))]`
-/

namespace A195313.P4027649350138334821
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (8 - 7 / (Nat.gcd 2 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195313.P4027649350138334821

namespace A195313

/-- `∑[n*(8-7/gcd(2, n))]` -/
def P4027649350138334821.Spec : Prop :=
  ∀ n, P4027649350138334821.a n = (A195313 n : ℚ)

end A195313

/-! ## A195313.P12296703083684450578

`∑[A195312(n)]`
-/

namespace A195313.P12296703083684450578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195312 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195313.P12296703083684450578

namespace A195313

/-- `∑[A195312(n)]` -/
def P12296703083684450578.Spec : Prop :=
  ∀ n, P12296703083684450578.a n = A195313 n

end A195313

/-! ## A195313.P3517571795940595528

`∑[(A317316(n)+n)/2]`
-/

namespace A195313.P3517571795940595528
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317316 n + (n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195313.P3517571795940595528

namespace A195313

/-- `∑[(A317316(n)+n)/2]` -/
def P3517571795940595528.Spec : Prop :=
  ∀ n, P3517571795940595528.a n = (A195313 n : ℚ)

end A195313

/-! ## A195313.P10473941465812819271

`A195043(n)-a(n-1)` with `a(0)=0`
-/

namespace A195313.P10473941465812819271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A195043 n - a (n - 1)

end

end A195313.P10473941465812819271

namespace A195313

/-- `A195043(n)-a(n-1)` -/
def P10473941465812819271.Spec : Prop :=
  ∀ n, P10473941465812819271.a n = A195313 n

end A195313

/-! ## A195313.P11130862625795606695

`A195160(n)+A110660(n)`
-/

namespace A195313.P11130862625795606695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195160 n + A110660 n

end

end A195313.P11130862625795606695

namespace A195313

/-- `A195160(n)+A110660(n)` -/
def P11130862625795606695.Spec : Prop :=
  ∀ n, P11130862625795606695.a n = A195313 n

end A195313

/-! ## A195313.P7966075194684556318

`A277082(n)-A110660(n)`
-/

namespace A195313.P7966075194684556318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277082 n - A110660 n

end

end A195313.P7966075194684556318

namespace A195313

/-- `A277082(n)-A110660(n)` -/
def P7966075194684556318.Spec : Prop :=
  ∀ n, P7966075194684556318.a n = A195313 n

end A195313

/-! ## A195313.P11136214145990356012

`∪[A051865(n), A211013(n)]`
-/

namespace A195313.P11136214145990356012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211013 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A195313.P11136214145990356012

namespace A195313

/-- `∪[A051865(n), A211013(n)]` -/
def P11136214145990356012.Spec : Prop :=
  ∀ n, (P11136214145990356012.a n : ℤ) = A195313 n

end A195313

/-! ## A195313.P7938722099514626664

`A106388(n+1)-A083511(n)`
-/

namespace A195313.P7938722099514626664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106388 (n + 1) - A083511 n

end

end A195313.P7938722099514626664

namespace A195313

/-- `A106388(n+1)-A083511(n)` -/
def P7938722099514626664.Spec : Prop :=
  ∀ n, P7938722099514626664.a n = A195313 n

end A195313

/-! ## A195313.P11810050387875543677

`A273368(n)-A117748(n+1)`
-/

namespace A195313.P11810050387875543677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273368 n - A117748 (n + 1)

end

end A195313.P11810050387875543677

namespace A195313

/-- `A273368(n)-A117748(n+1)` -/
def P11810050387875543677.Spec : Prop :=
  ∀ n, P11810050387875543677.a n = A195313 n

end A195313

/-! ## A195313.P8320461912275234501

`A118277(n)+2*A110660(n)`
-/

namespace A195313.P8320461912275234501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118277 n + 2 * A110660 n

end

end A195313.P8320461912275234501

namespace A195313

/-- `A118277(n)+2*A110660(n)` -/
def P8320461912275234501.Spec : Prop :=
  ∀ n, P8320461912275234501.a n = A195313 n

end A195313

/-! ## A195313.P9542169455016529451

`2*A118277(n)-A001318(n)`
-/

namespace A195313.P9542169455016529451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A118277 n - A001318 n

end

end A195313.P9542169455016529451

namespace A195313

/-- `2*A118277(n)-A001318(n)` -/
def P9542169455016529451.Spec : Prop :=
  ∀ n, P9542169455016529451.a n = A195313 n

end A195313

/-! ## A195313.P14749618512832243391

`2*A074377(n)-A085787(n)`
-/

namespace A195313.P14749618512832243391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074377 n - A085787 n

end

end A195313.P14749618512832243391

namespace A195313

/-- `2*A074377(n)-A085787(n)` -/
def P14749618512832243391.Spec : Prop :=
  ∀ n, P14749618512832243391.a n = A195313 n

end A195313

/-! ## A195313.P5229336186403789099

`A195162(n)+A110660(n)/2`
-/

namespace A195313.P5229336186403789099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195162 n : ℚ) + (A110660 n : ℚ) / 2

end

end A195313.P5229336186403789099

namespace A195313

/-- `A195162(n)+A110660(n)/2` -/
def P5229336186403789099.Spec : Prop :=
  ∀ n, P5229336186403789099.a n = (A195313 n : ℚ)

end A195313

/-! ## A195313.P15710537507073534597

`2*A085787(n)-A317301(n)`
-/

namespace A195313.P15710537507073534597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085787 n - A317301 n

end

end A195313.P15710537507073534597

namespace A195313

/-- `2*A085787(n)-A317301(n)` -/
def P15710537507073534597.Spec : Prop :=
  ∀ n, P15710537507073534597.a n = A195313 n

end A195313

/-! ## A195313.P6217740295992090929

`A303305(n)-2*A110660(n)`
-/

namespace A195313.P6217740295992090929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303305 n - 2 * A110660 n

end

end A195313.P6217740295992090929

namespace A195313

/-- `A303305(n)-2*A110660(n)` -/
def P6217740295992090929.Spec : Prop :=
  ∀ n, P6217740295992090929.a n = A195313 n

end A195313

/-! ## A195313.P10947719540605089735

`2*A277082(n)-A303305(n)`
-/

namespace A195313.P10947719540605089735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277082 n - A303305 n

end

end A195313.P10947719540605089735

namespace A195313

/-- `2*A277082(n)-A303305(n)` -/
def P10947719540605089735.Spec : Prop :=
  ∀ n, P10947719540605089735.a n = A195313 n

end A195313

/-! ## A195313.P1492672731246071676

`2*A303305(n)-A303298(n)`
-/

namespace A195313.P1492672731246071676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303305 n - A303298 n

end

end A195313.P1492672731246071676

namespace A195313

/-- `2*A303305(n)-A303298(n)` -/
def P1492672731246071676.Spec : Prop :=
  ∀ n, P1492672731246071676.a n = A195313 n

end A195313

/-! ## A195313.P13482488194507772033

`2*A303298(n)-A303815(n)`
-/

namespace A195313.P13482488194507772033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303298 n - A303815 n

end

end A195313.P13482488194507772033

namespace A195313

/-- `2*A303298(n)-A303815(n)` -/
def P13482488194507772033.Spec : Prop :=
  ∀ n, P13482488194507772033.a n = A195313 n

end A195313

/-! ## A195313.P1549670099185398111

`2*A303813(n)-A303304(n)`
-/

namespace A195313.P1549670099185398111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303813 n - A303304 n

end

end A195313.P1549670099185398111

namespace A195313

/-- `2*A303813(n)-A303304(n)` -/
def P1549670099185398111.Spec : Prop :=
  ∀ n, P1549670099185398111.a n = A195313 n

end A195313

/-!
# A195314: Centered 28-gonal numbers.

The programs for A195314, the canonical program `A195314.P6844613088272029131` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195314 has offset 1).

The definition of A195314 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195314.P6844613088272029131

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=29, a(2)=85`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A195314

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P6844613088272029131.Spec : Prop :=
  ∀ n, P6844613088272029131.a n = A195314 (n + 1)

theorem P6844613088272029131.correct : P6844613088272029131.Spec := by
  intro n
  simp only [A195314, Nat.add_sub_cancel]

end A195314

/-! ## A195314.P5346792984573659256

`2*A069127(n+1)-1`
-/

namespace A195314.P5346792984573659256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069127 (n + 1) - 1

end

end A195314.P5346792984573659256

namespace A195314

/-- `2*A069127(n+1)-1` -/
def P5346792984573659256.Spec : Prop :=
  ∀ n, P5346792984573659256.a n = A195314 (n + 1)

end A195314

/-! ## A195314.P6380784779774286225

`∑[28*n]+1`
-/

namespace A195314.P6380784779774286225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A195314.P6380784779774286225

namespace A195314

/-- `∑[28*n]+1` -/
def P6380784779774286225.Spec : Prop :=
  ∀ n, (P6380784779774286225.a n : ℤ) = A195314 (n + 1)

end A195314

/-! ## A195314.P4578534973995532849

`or(1, ∑[28*n])`
-/

namespace A195314.P4578534973995532849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195314.P4578534973995532849

namespace A195314

/-- `or(1, ∑[28*n])` -/
def P4578534973995532849.Spec : Prop :=
  ∀ n, (P4578534973995532849.a n : ℤ) = A195314 (n + 1)

end A195314

/-! ## A195314.P11823160996771194408

`xor(1, ∑[28*n])`
-/

namespace A195314.P11823160996771194408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195314.P11823160996771194408

namespace A195314

/-- `xor(1, ∑[28*n])` -/
def P11823160996771194408.Spec : Prop :=
  ∀ n, (P11823160996771194408.a n : ℤ) = A195314 (n + 1)

end A195314

/-! ## A195314.P2941348105462029074

`∑[a(n-1)+28]` with `a(0)=1, a(1)=28`
-/

namespace A195314.P2941348105462029074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 28] fun n f1 =>
  f1 (n - 1) + 28

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195314.P2941348105462029074

namespace A195314

/-- `∑[a(n-1)+28]` -/
def P2941348105462029074.Spec : Prop :=
  ∀ n, (P2941348105462029074.a n : ℤ) = A195314 (n + 1)

end A195314

/-! ## A195314.P3620301945061671950

`28*(a(n-1)/28+n)` with `a(0)=1`
-/

namespace A195314.P3620301945061671950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  28 * (a (n - 1) / 28 + (n : ℚ))

end

end A195314.P3620301945061671950

namespace A195314

/-- `28*(a(n-1)/28+n)` -/
def P3620301945061671950.Spec : Prop :=
  ∀ n, P3620301945061671950.a n = (A195314 (n + 1) : ℚ)

end A195314

/-! ## A195314.P1472795611212608003

`floor(a(n-1)+4*7*n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A195314.P1472795611212608003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 4 * (7 * n)

end

end A195314.P1472795611212608003

namespace A195314

/-- `floor(a(n-1)+4*7*n)` -/
def P1472795611212608003.Spec : Prop :=
  ∀ n, (P1472795611212608003.a n : ℤ) = A195314 (n + 1)

end A195314

/-! ## A195314.P4382329156456829025

`abs(3-2*2*A069099(n+1))`
-/

namespace A195314.P4382329156456829025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - 2 * (2 * A069099 (n + 1))|

end

end A195314.P4382329156456829025

namespace A195314

/-- `abs(3-2*2*A069099(n+1))` -/
def P4382329156456829025.Spec : Prop :=
  ∀ n, P4382329156456829025.a n = A195314 (n + 1)

end A195314

/-! ## A195314.P14695010756696995551

`abs(A033574(n)-A033579(n))`
-/

namespace A195314.P14695010756696995551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033574 n - A033579 n|

end

end A195314.P14695010756696995551

namespace A195314

/-- `abs(A033574(n)-A033579(n))` -/
def P14695010756696995551.Spec : Prop :=
  ∀ n, P14695010756696995551.a n = A195314 (n + 1)

end A195314

/-! ## A195314.P12250303988990989429

`A017150(n)%A157514(n+1)`
-/

namespace A195314.P12250303988990989429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017150 n) (A157514 (n + 1))

end

end A195314.P12250303988990989429

namespace A195314

/-- `A017150(n)%A157514(n+1)` -/
def P12250303988990989429.Spec : Prop :=
  ∀ n, P12250303988990989429.a n = A195314 (n + 1)

end A195314

/-! ## A195314.P9676097684681726304

`A195145(Δ[n²])`
-/

namespace A195314.P9676097684681726304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195145 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A195314.P9676097684681726304

namespace A195314

/-- `A195145(Δ[n²])` -/
def P9676097684681726304.Spec : Prop :=
  ∀ n, P9676097684681726304.a n = A195314 (n + 1)

end A195314

/-! ## A195314.P9505220100138990855

`gcd(A195145(2*n+1)²², A195145(2*n+1))`
-/

namespace A195314.P9505220100138990855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((A195145 (2 * n + 1) ^ 2) ^ 2) (A195145 (2 * n + 1))

end

end A195314.P9505220100138990855

namespace A195314

/-- `gcd(A195145(2*n+1)²², A195145(2*n+1))` -/
def P9505220100138990855.Spec : Prop :=
  ∀ n, (P9505220100138990855.a n : ℤ) = A195314 (n + 1)

end A195314

/-! ## A195314.P16214312202613219350

`∑[A317314(record[A257088(n)])]`
-/

namespace A195314.P16214312202613219350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317314 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195314.P16214312202613219350

namespace A195314

/-- `∑[A317314(record[A257088(n)])]` -/
def P16214312202613219350.Spec : Prop :=
  ∀ n, P16214312202613219350.a n = A195314 (n + 1)

end A195314

/-! ## A195314.P3654027143543418636

`∑[A317314(A257088(2*n))]`
-/

namespace A195314.P3654027143543418636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317314 (A257088 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195314.P3654027143543418636

namespace A195314

/-- `∑[A317314(A257088(2*n))]` -/
def P3654027143543418636.Spec : Prop :=
  ∀ n, P3654027143543418636.a n = A195314 (n + 1)

end A195314

/-! ## A195314.P16303156813161165302

`∑[A310532(5*n)]`
-/

namespace A195314.P16303156813161165302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310532 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195314.P16303156813161165302

namespace A195314

/-- `∑[A310532(5*n)]` -/
def P16303156813161165302.Spec : Prop :=
  ∀ n, P16303156813161165302.a n = A195314 (n + 1)

end A195314

/-! ## A195314.P13696443785373974354

`∑[A315691(5*n)]`
-/

namespace A195314.P13696443785373974354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315691 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195314.P13696443785373974354

namespace A195314

/-- `∑[A315691(5*n)]` -/
def P13696443785373974354.Spec : Prop :=
  ∀ n, P13696443785373974354.a n = A195314 (n + 1)

end A195314

/-! ## A195314.P3839522291824178621

`∑[A008574(7*n)]`
-/

namespace A195314.P3839522291824178621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (7 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195314.P3839522291824178621

namespace A195314

/-- `∑[A008574(7*n)]` -/
def P3839522291824178621.Spec : Prop :=
  ∀ n, P3839522291824178621.a n = A195314 (n + 1)

end A195314

/-! ## A195314.P17159498637162465714

`∑[A004277(2*7*n)]`
-/

namespace A195314.P17159498637162465714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * (7 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195314.P17159498637162465714

namespace A195314

/-- `∑[A004277(2*7*n)]` -/
def P17159498637162465714.Spec : Prop :=
  ∀ n, P17159498637162465714.a n = A195314 (n + 1)

end A195314

/-! ## A195314.P8277471153033866566

`∑[A315496(5*n)]`
-/

namespace A195314.P8277471153033866566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315496 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195314.P8277471153033866566

namespace A195314

/-- `∑[A315496(5*n)]` -/
def P8277471153033866566.Spec : Prop :=
  ∀ n, P8277471153033866566.a n = A195314 (n + 1)

end A195314

/-!
# A195315: Centered 32-gonal numbers.

The programs for A195315, the canonical program `A195315.P7020418869284331430` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195315 has offset 1).

The definition of A195315 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195315.P7020418869284331430

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=33, a(2)=97`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A195315

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P7020418869284331430.Spec : Prop :=
  ∀ n, P7020418869284331430.a n = A195315 (n + 1)

theorem P7020418869284331430.correct : P7020418869284331430.Spec := by
  intro n
  simp only [A195315, Nat.add_sub_cancel]

end A195315

/-! ## A195315.P7656179406215030768

`2*A069129(n+1)-1`
-/

namespace A195315.P7656179406215030768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069129 (n + 1) - 1

end

end A195315.P7656179406215030768

namespace A195315

/-- `2*A069129(n+1)-1` -/
def P7656179406215030768.Spec : Prop :=
  ∀ n, P7656179406215030768.a n = A195315 (n + 1)

end A195315

/-! ## A195315.P10477268834050914110

`∑[32*n]+1`
-/

namespace A195315.P10477268834050914110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A195315.P10477268834050914110

namespace A195315

/-- `∑[32*n]+1` -/
def P10477268834050914110.Spec : Prop :=
  ∀ n, (P10477268834050914110.a n : ℤ) = A195315 (n + 1)

end A195315

/-! ## A195315.P17123230849091632598

`or(1, ∑[32*n])`
-/

namespace A195315.P17123230849091632598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195315.P17123230849091632598

namespace A195315

/-- `or(1, ∑[32*n])` -/
def P17123230849091632598.Spec : Prop :=
  ∀ n, (P17123230849091632598.a n : ℤ) = A195315 (n + 1)

end A195315

/-! ## A195315.P5373615840552530726

`xor(1, ∑[32*n])`
-/

namespace A195315.P5373615840552530726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195315.P5373615840552530726

namespace A195315

/-- `xor(1, ∑[32*n])` -/
def P5373615840552530726.Spec : Prop :=
  ∀ n, (P5373615840552530726.a n : ℤ) = A195315 (n + 1)

end A195315

/-! ## A195315.P17822571002834687407

`∑[a(n-1)+32]` with `a(0)=1, a(1)=32`
-/

namespace A195315.P17822571002834687407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 32] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195315.P17822571002834687407

namespace A195315

/-- `∑[a(n-1)+32]` -/
def P17822571002834687407.Spec : Prop :=
  ∀ n, (P17822571002834687407.a n : ℤ) = A195315 (n + 1)

end A195315

/-! ## A195315.P10650442177615334451

`record[lcm(2, n+1)²-3]`
-/

namespace A195315.P10650442177615334451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 1) ^ 2 : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195315.P10650442177615334451

namespace A195315

/-- `record[lcm(2, n+1)²-3]` -/
def P10650442177615334451.Spec : Prop :=
  ∀ n, P10650442177615334451.a n = A195315 (n + 1)

end A195315

/-! ## A195315.P9743350355517277104

`record[lcm(4, (1-n)²)-3]`
-/

namespace A195315.P9743350355517277104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 ((1 - (n : ℤ)) ^ 2) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195315.P9743350355517277104

namespace A195315

/-- `record[lcm(4, (1-n)²)-3]` -/
def P9743350355517277104.Spec : Prop :=
  ∀ n, P9743350355517277104.a n = A195315 (n + 1)

end A195315

/-! ## A195315.P11345948154395446321

`record[(2*xor(1, n))²-3]`
-/

namespace A195315.P11345948154395446321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * Nat.xor 1 n) ^ 2 : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195315.P11345948154395446321

namespace A195315

/-- `record[(2*xor(1, n))²-3]` -/
def P11345948154395446321.Spec : Prop :=
  ∀ n, P11345948154395446321.a n = A195315 (n + 1)

end A195315

/-! ## A195315.P17974951645138053553

`-or(3, -(4*n+2)²)`
-/

namespace A195315.P17974951645138053553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 3 (-((4 * n + 2) ^ 2 : ℤ))

end

end A195315.P17974951645138053553

namespace A195315

/-- `-or(3, -(4*n+2)²)` -/
def P17974951645138053553.Spec : Prop :=
  ∀ n, P17974951645138053553.a n = A195315 (n + 1)

end A195315

/-! ## A195315.P12402797799766664129

`32*(a(n-1)/32+n)` with `a(0)=1`
-/

namespace A195315.P12402797799766664129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  32 * (a (n - 1) / 32 + (n : ℚ))

end

end A195315.P12402797799766664129

namespace A195315

/-- `32*(a(n-1)/32+n)` -/
def P12402797799766664129.Spec : Prop :=
  ∀ n, P12402797799766664129.a n = (A195315 (n + 1) : ℚ)

end A195315

/-! ## A195315.P14946922404011285504

`ceil((n+1)/acot(4*4*n))`
-/

namespace A195315.P14946922404011285504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / SequenceMachineLib.acot (4 * (4 * n) : ℝ)⌉

end

end A195315.P14946922404011285504

namespace A195315

/-- `ceil((n+1)/acot(4*4*n))` -/
def P14946922404011285504.Spec : Prop :=
  ∀ n, P14946922404011285504.a n = A195315 (n + 1)

end A195315

/-! ## A195315.P11739815553368117121

`floor(a(n-1)+4*8*n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A195315.P11739815553368117121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 4 * (8 * n)

end

end A195315.P11739815553368117121

namespace A195315

/-- `floor(a(n-1)+4*8*n)` -/
def P11739815553368117121.Spec : Prop :=
  ∀ n, (P11739815553368117121.a n : ℤ) = A195315 (n + 1)

end A195315

/-! ## A195315.P3836287459466984164

`(A001533(n)-3)/4`
-/

namespace A195315.P3836287459466984164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001533 n - 3 : ℚ) / 4

end

end A195315.P3836287459466984164

namespace A195315

/-- `(A001533(n)-3)/4` -/
def P3836287459466984164.Spec : Prop :=
  ∀ n, P3836287459466984164.a n = (A195315 (n + 1) : ℚ)

end A195315

/-! ## A195315.P7457205453547861539

`A017152(n)%A157446(n+1)`
-/

namespace A195315.P7457205453547861539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017152 n) (A157446 (n + 1))

end

end A195315.P7457205453547861539

namespace A195315

/-- `A017152(n)%A157446(n+1)` -/
def P7457205453547861539.Spec : Prop :=
  ∀ n, P7457205453547861539.a n = A195315 (n + 1)

end A195315

/-! ## A195315.P10268654052171165931

`A017654(n)%A157446(n+1)`
-/

namespace A195315.P10268654052171165931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017654 n) (A157446 (n + 1))

end

end A195315.P10268654052171165931

namespace A195315

/-- `A017654(n)%A157446(n+1)` -/
def P10268654052171165931.Spec : Prop :=
  ∀ n, P10268654052171165931.a n = A195315 (n + 1)

end A195315

/-! ## A195315.P1442044809512503232

`A001513(n)%A193448(n+1)`
-/

namespace A195315.P1442044809512503232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001513 n) (A193448 (n + 1))

end

end A195315.P1442044809512503232

namespace A195315

/-- `A001513(n)%A193448(n+1)` -/
def P1442044809512503232.Spec : Prop :=
  ∀ n, P1442044809512503232.a n = A195315 (n + 1)

end A195315

/-! ## A195315.P6258526417235989540

`∑[A022144(n)²/A004277(n)]`
-/

namespace A195315.P6258526417235989540
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022144 n ^ 2 : ℚ) / (A004277 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195315.P6258526417235989540

namespace A195315

/-- `∑[A022144(n)²/A004277(n)]` -/
def P6258526417235989540.Spec : Prop :=
  ∀ n, P6258526417235989540.a n = (A195315 (n + 1) : ℚ)

end A195315

/-! ## A195315.P15417763363140844820

`A082109(2*n)`
-/

namespace A195315.P15417763363140844820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082109 (2 * n)

end

end A195315.P15417763363140844820

namespace A195315

/-- `A082109(2*n)` -/
def P15417763363140844820.Spec : Prop :=
  ∀ n, P15417763363140844820.a n = A195315 (n + 1)

end A195315

/-! ## A195315.P14836540953678471015

`A195146(Δ[n²])`
-/

namespace A195315.P14836540953678471015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195146 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A195315.P14836540953678471015

namespace A195315

/-- `A195146(Δ[n²])` -/
def P14836540953678471015.Spec : Prop :=
  ∀ n, P14836540953678471015.a n = A195315 (n + 1)

end A195315

/-!
# A195316: Centered 36-gonal numbers.

The programs for A195316, the canonical program `A195316.P7058262694715454659` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195316 has offset 1).

The definition of A195316 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195316.P7058262694715454659

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=37, a(2)=109`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A195316

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P7058262694715454659.Spec : Prop :=
  ∀ n, P7058262694715454659.a n = A195316 (n + 1)

theorem P7058262694715454659.correct : P7058262694715454659.Spec := by
  intro n
  simp only [A195316, Nat.add_sub_cancel]

end A195316

/-! ## A195316.P6363819938048698973

`2*A069131(n+1)-1`
-/

namespace A195316.P6363819938048698973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069131 (n + 1) - 1

end

end A195316.P6363819938048698973

namespace A195316

/-- `2*A069131(n+1)-1` -/
def P6363819938048698973.Spec : Prop :=
  ∀ n, P6363819938048698973.a n = A195316 (n + 1)

end A195316

/-! ## A195316.P14950312677761515190

`∑[36*n]+1`
-/

namespace A195316.P14950312677761515190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A195316.P14950312677761515190

namespace A195316

/-- `∑[36*n]+1` -/
def P14950312677761515190.Spec : Prop :=
  ∀ n, (P14950312677761515190.a n : ℤ) = A195316 (n + 1)

end A195316

/-! ## A195316.P4646966819867990327

`or(1, ∑[36*n])`
-/

namespace A195316.P4646966819867990327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195316.P4646966819867990327

namespace A195316

/-- `or(1, ∑[36*n])` -/
def P4646966819867990327.Spec : Prop :=
  ∀ n, (P4646966819867990327.a n : ℤ) = A195316 (n + 1)

end A195316

/-! ## A195316.P1065850949332391926

`xor(1, ∑[36*n])`
-/

namespace A195316.P1065850949332391926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195316.P1065850949332391926

namespace A195316

/-- `xor(1, ∑[36*n])` -/
def P1065850949332391926.Spec : Prop :=
  ∀ n, (P1065850949332391926.a n : ℤ) = A195316 (n + 1)

end A195316

/-! ## A195316.P12955721962664813526

`∑[a(n-1)+36]` with `a(0)=1, a(1)=36`
-/

namespace A195316.P12955721962664813526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 36] fun n f1 =>
  f1 (n - 1) + 36

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195316.P12955721962664813526

namespace A195316

/-- `∑[a(n-1)+36]` -/
def P12955721962664813526.Spec : Prop :=
  ∀ n, (P12955721962664813526.a n : ℤ) = A195316 (n + 1)

end A195316

/-! ## A195316.P11168926622604258782

`xor(2, 36*(n²+n))/2`
-/

namespace A195316.P11168926622604258782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (36 * (n ^ 2 + n)) : ℚ) / 2

end

end A195316.P11168926622604258782

namespace A195316

/-- `xor(2, 36*(n²+n))/2` -/
def P11168926622604258782.Spec : Prop :=
  ∀ n, P11168926622604258782.a n = (A195316 (n + 1) : ℚ)

end A195316

/-! ## A195316.P8376702599421678149

`36*(a(n-1)/36+n)` with `a(0)=1`
-/

namespace A195316.P8376702599421678149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  36 * (a (n - 1) / 36 + (n : ℚ))

end

end A195316.P8376702599421678149

namespace A195316

/-- `36*(a(n-1)/36+n)` -/
def P8376702599421678149.Spec : Prop :=
  ∀ n, P8376702599421678149.a n = (A195316 (n + 1) : ℚ)

end A195316

/-! ## A195316.P7116499454064532069

`floor(a(n-1)+6*6*n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A195316.P7116499454064532069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 6 * (6 * n)

end

end A195316.P7116499454064532069

namespace A195316

/-- `floor(a(n-1)+6*6*n)` -/
def P7116499454064532069.Spec : Prop :=
  ∀ n, (P7116499454064532069.a n : ℤ) = A195316 (n + 1)

end A195316

/-! ## A195316.P4236170875900948587

`(A001513(n)-3)/2`
-/

namespace A195316.P4236170875900948587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001513 n - 3 : ℚ) / 2

end

end A195316.P4236170875900948587

namespace A195316

/-- `(A001513(n)-3)/2` -/
def P4236170875900948587.Spec : Prop :=
  ∀ n, P4236170875900948587.a n = (A195316 (n + 1) : ℚ)

end A195316

/-! ## A195316.P13182077470032615029

`A365204(n+1)%A260955(n)`
-/

namespace A195316.P13182077470032615029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365204 (n + 1)) (A260955 n)

end

end A195316.P13182077470032615029

namespace A195316

/-- `A365204(n+1)%A260955(n)` -/
def P13182077470032615029.Spec : Prop :=
  ∀ n, P13182077470032615029.a n = A195316 (n + 1)

end A195316

/-! ## A195316.P2527571605896191187

`Δ[(n-1)*A003154(n+1)]`
-/

namespace A195316.P2527571605896191187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A003154 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195316.P2527571605896191187

namespace A195316

/-- `Δ[(n-1)*A003154(n+1)]` -/
def P2527571605896191187.Spec : Prop :=
  ∀ n, P2527571605896191187.a n = A195316 (n + 1)

end A195316

/-! ## A195316.P9930602861750211901

`A195147(Δ[n²])`
-/

namespace A195316.P9930602861750211901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195147 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A195316.P9930602861750211901

namespace A195316

/-- `A195147(Δ[n²])` -/
def P9930602861750211901.Spec : Prop :=
  ∀ n, P9930602861750211901.a n = A195316 (n + 1)

end A195316

/-! ## A195316.P9833681455617808529

`∩[A195147(n), A348228(n)]`
-/

namespace A195316.P9833681455617808529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195147 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348228 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195316.P9833681455617808529

namespace A195316

/-- `∩[A195147(n), A348228(n)]` -/
def P9833681455617808529.Spec : Prop :=
  ∀ n, (P9833681455617808529.a n : ℤ) = A195316 (n + 1)

end A195316

/-! ## A195316.P10710387163257547125

`A059993(3*n)`
-/

namespace A195316.P10710387163257547125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059993 (3 * n)

end

end A195316.P10710387163257547125

namespace A195316

/-- `A059993(3*n)` -/
def P10710387163257547125.Spec : Prop :=
  ∀ n, P10710387163257547125.a n = A195316 (n + 1)

end A195316

/-! ## A195316.P1489282371359321679

`abs(3-A046092(2*n+1+n))`
-/

namespace A195316.P1489282371359321679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A046092 (2 * n + 1 + n)|

end

end A195316.P1489282371359321679

namespace A195316

/-- `abs(3-A046092(2*n+1+n))` -/
def P1489282371359321679.Spec : Prop :=
  ∀ n, P1489282371359321679.a n = A195316 (n + 1)

end A195316

/-! ## A195316.P12548488988290998799

`∩[A059993(n), A195147(n)]`
-/

namespace A195316.P12548488988290998799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059993 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195147 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195316.P12548488988290998799

namespace A195316

/-- `∩[A059993(n), A195147(n)]` -/
def P12548488988290998799.Spec : Prop :=
  ∀ n, (P12548488988290998799.a n : ℤ) = A195316 (n + 1)

end A195316

/-! ## A195316.P15936866315560846527

`∩[A059993(n), A348228(n)]`
-/

namespace A195316.P15936866315560846527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059993 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348228 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195316.P15936866315560846527

namespace A195316

/-- `∩[A059993(n), A348228(n)]` -/
def P15936866315560846527.Spec : Prop :=
  ∀ n, (P15936866315560846527.a n : ℤ) = A195316 (n + 1)

end A195316

/-! ## A195316.P12362122641292304837

`∑[A008458(A008588(n))]`
-/

namespace A195316.P12362122641292304837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A008588 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195316.P12362122641292304837

namespace A195316

/-- `∑[A008458(A008588(n))]` -/
def P12362122641292304837.Spec : Prop :=
  ∀ n, P12362122641292304837.a n = A195316 (n + 1)

end A195316

/-! ## A195316.P13657984475757184025

`∩[A195147(n), A266793(n)]`
-/

namespace A195316.P13657984475757184025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195147 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266793 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195316.P13657984475757184025

namespace A195316

/-- `∩[A195147(n), A266793(n)]` -/
def P13657984475757184025.Spec : Prop :=
  ∀ n, (P13657984475757184025.a n : ℤ) = A195316 (n + 1)

end A195316

/-!
# A195317: Centered 40-gonal numbers.

The programs for A195317, the canonical program `A195317.P15813229659879431708` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195317 has offset 1).

The definition of A195317 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195317.P15813229659879431708

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=41, a(2)=121`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A195317

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P15813229659879431708.Spec : Prop :=
  ∀ n, P15813229659879431708.a n = A195317 (n + 1)

theorem P15813229659879431708.correct : P15813229659879431708.Spec := by
  intro n
  simp only [A195317, Nat.add_sub_cancel]

end A195317

/-! ## A195317.P7091249714443229434

`2*A069133(n+1)-1`
-/

namespace A195317.P7091249714443229434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069133 (n + 1) - 1

end

end A195317.P7091249714443229434

namespace A195317

/-- `2*A069133(n+1)-1` -/
def P7091249714443229434.Spec : Prop :=
  ∀ n, P7091249714443229434.a n = A195317 (n + 1)

end A195317

/-! ## A195317.P7560685718623291780

`∑[40*n]+1`
-/

namespace A195317.P7560685718623291780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A195317.P7560685718623291780

namespace A195317

/-- `∑[40*n]+1` -/
def P7560685718623291780.Spec : Prop :=
  ∀ n, (P7560685718623291780.a n : ℤ) = A195317 (n + 1)

end A195317

/-! ## A195317.P15421399740080558778

`or(1, ∑[40*n])`
-/

namespace A195317.P15421399740080558778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195317.P15421399740080558778

namespace A195317

/-- `or(1, ∑[40*n])` -/
def P15421399740080558778.Spec : Prop :=
  ∀ n, (P15421399740080558778.a n : ℤ) = A195317 (n + 1)

end A195317

/-! ## A195317.P13104200141380709693

`xor(1, ∑[40*n])`
-/

namespace A195317.P13104200141380709693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195317.P13104200141380709693

namespace A195317

/-- `xor(1, ∑[40*n])` -/
def P13104200141380709693.Spec : Prop :=
  ∀ n, (P13104200141380709693.a n : ℤ) = A195317 (n + 1)

end A195317

/-! ## A195317.P599094925698189012

`∑[a(n-1)+40]` with `a(0)=1, a(1)=40`
-/

namespace A195317.P599094925698189012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 40] fun n f1 =>
  f1 (n - 1) + 40

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195317.P599094925698189012

namespace A195317

/-- `∑[a(n-1)+40]` -/
def P599094925698189012.Spec : Prop :=
  ∀ n, (P599094925698189012.a n : ℤ) = A195317 (n + 1)

end A195317

/-! ## A195317.P2710441076082932711

`and(5*(2*n+1)², -5)`
-/

namespace A195317.P2710441076082932711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (5 * (2 * n + 1) ^ 2 : ℤ) (-5)

end

end A195317.P2710441076082932711

namespace A195317

/-- `and(5*(2*n+1)², -5)` -/
def P2710441076082932711.Spec : Prop :=
  ∀ n, P2710441076082932711.a n = A195317 (n + 1)

end A195317

/-! ## A195317.P14978425422511931620

`40*(a(n-1)/40+n)` with `a(0)=1`
-/

namespace A195317.P14978425422511931620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  40 * (a (n - 1) / 40 + (n : ℚ))

end

end A195317.P14978425422511931620

namespace A195317

/-- `40*(a(n-1)/40+n)` -/
def P14978425422511931620.Spec : Prop :=
  ∀ n, P14978425422511931620.a n = (A195317 (n + 1) : ℚ)

end A195317

/-! ## A195317.P15715855445720064971

`ceil((n+1)/acot(4*5*n))`
-/

namespace A195317.P15715855445720064971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / SequenceMachineLib.acot (4 * (5 * n) : ℝ)⌉

end

end A195317.P15715855445720064971

namespace A195317

/-- `ceil((n+1)/acot(4*5*n))` -/
def P15715855445720064971.Spec : Prop :=
  ∀ n, P15715855445720064971.a n = A195317 (n + 1)

end A195317

/-! ## A195317.P47270705611003221

`abs(or(4, -5*(2*n+1)²))`
-/

namespace A195317.P47270705611003221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 4 (-(5 * (2 * n + 1) ^ 2 : ℤ))|

end

end A195317.P47270705611003221

namespace A195317

/-- `abs(or(4, -5*(2*n+1)²))` -/
def P47270705611003221.Spec : Prop :=
  ∀ n, P47270705611003221.a n = A195317 (n + 1)

end A195317

/-! ## A195317.P11357384968600793935

`-or(4, -5*(2*n+1)²)`
-/

namespace A195317.P11357384968600793935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 4 (-(5 * (2 * n + 1) ^ 2 : ℤ))

end

end A195317.P11357384968600793935

namespace A195317

/-- `-or(4, -5*(2*n+1)²)` -/
def P11357384968600793935.Spec : Prop :=
  ∀ n, P11357384968600793935.a n = A195317 (n + 1)

end A195317

/-! ## A195317.P9464216531191139772

`abs(xor(4, -5*(2*n+1)²))`
-/

namespace A195317.P9464216531191139772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 4 (-(5 * (2 * n + 1) ^ 2 : ℤ))|

end

end A195317.P9464216531191139772

namespace A195317

/-- `abs(xor(4, -5*(2*n+1)²))` -/
def P9464216531191139772.Spec : Prop :=
  ∀ n, P9464216531191139772.a n = A195317 (n + 1)

end A195317

/-! ## A195317.P3795919827106260856

`-xor(4, -5*(2*n+1)²)`
-/

namespace A195317.P3795919827106260856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 4 (-(5 * (2 * n + 1) ^ 2 : ℤ))

end

end A195317.P3795919827106260856

namespace A195317

/-- `-xor(4, -5*(2*n+1)²)` -/
def P3795919827106260856.Spec : Prop :=
  ∀ n, P3795919827106260856.a n = A195317 (n + 1)

end A195317

/-! ## A195317.P2938102875412357473

`floor(a(n-1)+5*8*n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A195317.P2938102875412357473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 5 * (8 * n)

end

end A195317.P2938102875412357473

namespace A195317

/-- `floor(a(n-1)+5*8*n)` -/
def P2938102875412357473.Spec : Prop :=
  ∀ n, (P2938102875412357473.a n : ℤ) = A195317 (n + 1)

end A195317

/-! ## A195317.P17392257483679453171

`(A001535(n)-4)/5`
-/

namespace A195317.P17392257483679453171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001535 n - 4 : ℚ) / 5

end

end A195317.P17392257483679453171

namespace A195317

/-- `(A001535(n)-4)/5` -/
def P17392257483679453171.Spec : Prop :=
  ∀ n, P17392257483679453171.a n = (A195317 (n + 1) : ℚ)

end A195317

/-! ## A195317.P15669453494097232031

`abs(3-A193448(n+1))`
-/

namespace A195317.P15669453494097232031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A193448 (n + 1)|

end

end A195317.P15669453494097232031

namespace A195317

/-- `abs(3-A193448(n+1))` -/
def P15669453494097232031.Spec : Prop :=
  ∀ n, P15669453494097232031.a n = A195317 (n + 1)

end A195317

/-! ## A195317.P5434676002345506936

`A193251(n+1)/(2*n+1)`
-/

namespace A195317.P5434676002345506936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193251 (n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A195317.P5434676002345506936

namespace A195317

/-- `A193251(n+1)/(2*n+1)` -/
def P5434676002345506936.Spec : Prop :=
  ∀ n, P5434676002345506936.a n = (A195317 (n + 1) : ℚ)

end A195317

/-! ## A195317.P7498695236138647402

`A157331(n+1)%A304380(n+1)`
-/

namespace A195317.P7498695236138647402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157331 (n + 1)) (A304380 (n + 1))

end

end A195317.P7498695236138647402

namespace A195317

/-- `A157331(n+1)%A304380(n+1)` -/
def P7498695236138647402.Spec : Prop :=
  ∀ n, P7498695236138647402.a n = A195317 (n + 1)

end A195317

/-! ## A195317.P10669293491207466811

`A134593(2*n)`
-/

namespace A195317.P10669293491207466811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134593 (2 * n)

end

end A195317.P10669293491207466811

namespace A195317

/-- `A134593(2*n)` -/
def P10669293491207466811.Spec : Prop :=
  ∀ n, P10669293491207466811.a n = A195317 (n + 1)

end A195317

/-! ## A195317.P3238646964306026038

`A195148(Δ[n²])`
-/

namespace A195317.P3238646964306026038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195148 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A195317.P3238646964306026038

namespace A195317

/-- `A195148(Δ[n²])` -/
def P3238646964306026038.Spec : Prop :=
  ∀ n, P3238646964306026038.a n = A195317 (n + 1)

end A195317

/-!
# A195318: Centered 44-gonal numbers.

The programs for A195318, the canonical program `A195318.P6476292617776128438` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195318 has offset 1).

The definition of A195318 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195318.P6476292617776128438

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=45, a(2)=133`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A195318

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P6476292617776128438.Spec : Prop :=
  ∀ n, P6476292617776128438.a n = A195318 (n + 1)

theorem P6476292617776128438.correct : P6476292617776128438.Spec := by
  intro n
  simp only [A195318, Nat.add_sub_cancel]

end A195318

/-! ## A195318.P18359737588224965641

`2*A069173(n+1)-1`
-/

namespace A195318.P18359737588224965641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069173 (n + 1) - 1

end

end A195318.P18359737588224965641

namespace A195318

/-- `2*A069173(n+1)-1` -/
def P18359737588224965641.Spec : Prop :=
  ∀ n, P18359737588224965641.a n = A195318 (n + 1)

end A195318

/-! ## A195318.P12994346695649236109

`∑[44*n]+1`
-/

namespace A195318.P12994346695649236109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  44 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A195318.P12994346695649236109

namespace A195318

/-- `∑[44*n]+1` -/
def P12994346695649236109.Spec : Prop :=
  ∀ n, (P12994346695649236109.a n : ℤ) = A195318 (n + 1)

end A195318

/-! ## A195318.P10178941766109946016

`or(1, ∑[44*n])`
-/

namespace A195318.P10178941766109946016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  44 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195318.P10178941766109946016

namespace A195318

/-- `or(1, ∑[44*n])` -/
def P10178941766109946016.Spec : Prop :=
  ∀ n, (P10178941766109946016.a n : ℤ) = A195318 (n + 1)

end A195318

/-! ## A195318.P4964779272773212930

`xor(1, ∑[44*n])`
-/

namespace A195318.P4964779272773212930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  44 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195318.P4964779272773212930

namespace A195318

/-- `xor(1, ∑[44*n])` -/
def P4964779272773212930.Spec : Prop :=
  ∀ n, (P4964779272773212930.a n : ℤ) = A195318 (n + 1)

end A195318

/-! ## A195318.P1186507892744691080

`∑[a(n-1)+44]` with `a(0)=1, a(1)=44`
-/

namespace A195318.P1186507892744691080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 44] fun n f1 =>
  f1 (n - 1) + 44

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195318.P1186507892744691080

namespace A195318

/-- `∑[a(n-1)+44]` -/
def P1186507892744691080.Spec : Prop :=
  ∀ n, (P1186507892744691080.a n : ℤ) = A195318 (n + 1)

end A195318

/-! ## A195318.P15969446761702892311

`44*(a(n-1)/44+n)` with `a(0)=1`
-/

namespace A195318.P15969446761702892311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  44 * (a (n - 1) / 44 + (n : ℚ))

end

end A195318.P15969446761702892311

namespace A195318

/-- `44*(a(n-1)/44+n)` -/
def P15969446761702892311.Spec : Prop :=
  ∀ n, P15969446761702892311.a n = (A195318 (n + 1) : ℚ)

end A195318

/-! ## A195318.P2984576224440881576

`∑[1-(n-45*n)-A057427(n)]`
-/

namespace A195318.P2984576224440881576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - (45 * n : ℤ)) - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195318.P2984576224440881576

namespace A195318

/-- `∑[1-(n-45*n)-A057427(n)]` -/
def P2984576224440881576.Spec : Prop :=
  ∀ n, P2984576224440881576.a n = A195318 (n + 1)

end A195318

/-! ## A195318.P4552244934338530132

`A195149(Δ[n²])`
-/

namespace A195318.P4552244934338530132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195149 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A195318.P4552244934338530132

namespace A195318

/-- `A195149(Δ[n²])` -/
def P4552244934338530132.Spec : Prop :=
  ∀ n, P4552244934338530132.a n = A195318 (n + 1)

end A195318

/-! ## A195318.P9113544197650262391

`∑[A008706(A008591(n))-n]`
-/

namespace A195318.P9113544197650262391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A008591 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195318.P9113544197650262391

namespace A195318

/-- `∑[A008706(A008591(n))-n]` -/
def P9113544197650262391.Spec : Prop :=
  ∀ n, P9113544197650262391.a n = A195318 (n + 1)

end A195318

/-! ## A195318.P2846478836654458523

`∑[A312981(10*n)]`
-/

namespace A195318.P2846478836654458523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312981 (10 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195318.P2846478836654458523

namespace A195318

/-- `∑[A312981(10*n)]` -/
def P2846478836654458523.Spec : Prop :=
  ∀ n, P2846478836654458523.a n = A195318 (n + 1)

end A195318

/-! ## A195318.P1341586687979587491

`∑[A008574(11*n)]`
-/

namespace A195318.P1341586687979587491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (11 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195318.P1341586687979587491

namespace A195318

/-- `∑[A008574(11*n)]` -/
def P1341586687979587491.Spec : Prop :=
  ∀ n, P1341586687979587491.a n = A195318 (n + 1)

end A195318

/-! ## A195318.P5044922891824001873

`∑[A063214(A028310(12*n))]`
-/

namespace A195318.P5044922891824001873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063214 (A028310 (12 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195318.P5044922891824001873

namespace A195318

/-- `∑[A063214(A028310(12*n))]` -/
def P5044922891824001873.Spec : Prop :=
  ∀ n, P5044922891824001873.a n = A195318 (n + 1)

end A195318

/-! ## A195318.P14278940422973390421

`∑[A004277(2*11*n)]`
-/

namespace A195318.P14278940422973390421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * (11 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195318.P14278940422973390421

namespace A195318

/-- `∑[A004277(2*11*n)]` -/
def P14278940422973390421.Spec : Prop :=
  ∀ n, P14278940422973390421.a n = A195318 (n + 1)

end A195318

/-! ## A195318.P6407841138628035246

`∑[A314151(8*n)]`
-/

namespace A195318.P6407841138628035246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314151 (8 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195318.P6407841138628035246

namespace A195318

/-- `∑[A314151(8*n)]` -/
def P6407841138628035246.Spec : Prop :=
  ∀ n, P6407841138628035246.a n = A195318 (n + 1)

end A195318

/-! ## A195318.P2192615971296920347

`∑[A313392(9*n)]`
-/

namespace A195318.P2192615971296920347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313392 (9 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195318.P2192615971296920347

namespace A195318

/-- `∑[A313392(9*n)]` -/
def P2192615971296920347.Spec : Prop :=
  ∀ n, P2192615971296920347.a n = A195318 (n + 1)

end A195318

/-! ## A195318.P17741959185165129506

`A161709(∑[2*n])`
-/

namespace A195318.P17741959185165129506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195318.P17741959185165129506

namespace A195318

/-- `A161709(∑[2*n])` -/
def P17741959185165129506.Spec : Prop :=
  ∀ n, P17741959185165129506.a n = A195318 (n + 1)

end A195318

/-! ## A195318.P8189750136244386283

`∩[A161709(n), A195149(n)]`
-/

namespace A195318.P8189750136244386283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195149 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195318.P8189750136244386283

namespace A195318

/-- `∩[A161709(n), A195149(n)]` -/
def P8189750136244386283.Spec : Prop :=
  ∀ n, (P8189750136244386283.a n : ℤ) = A195318 (n + 1)

end A195318

/-! ## A195318.P1250469296754670523

`A000027(A161709(n²+n))`
-/

namespace A195318.P1250469296754670523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A161709 (n ^ 2 + n)).toNat

end

end A195318.P1250469296754670523

namespace A195318

/-- `A000027(A161709(n²+n))` -/
def P1250469296754670523.Spec : Prop :=
  ∀ n, P1250469296754670523.a n = A195318 (n + 1)

end A195318

/-!
# A195319: Three times second hexagonal numbers: 3*n*(2*n+1).

The programs for A195319, the canonical program `A195319.P11127906847434196727` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195319 has offset 0).

The definition of A195319 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195319.P11127906847434196727

`6*n²+3*n`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A195319

/-- `6*n²+3*n` -/
def P11127906847434196727.Spec : Prop :=
  ∀ n, (P11127906847434196727.a n : ℤ) = A195319 n

theorem P11127906847434196727.correct : P11127906847434196727.Spec := by
  intro n
  simp only [A195319]

end A195319

/-! ## A195319.P17452464367542551687

`3*A014105(n)`
-/

namespace A195319.P17452464367542551687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A014105 n

end

end A195319.P17452464367542551687

namespace A195319

/-- `3*A014105(n)` -/
def P17452464367542551687.Spec : Prop :=
  ∀ n, P17452464367542551687.a n = A195319 n

end A195319

/-! ## A195319.P12419944957014951797

`∑[a(n-1)+12]` with `a(0)=0, a(1)=9`
-/

namespace A195319.P12419944957014951797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 9] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195319.P12419944957014951797

namespace A195319

/-- `∑[a(n-1)+12]` -/
def P12419944957014951797.Spec : Prop :=
  ∀ n, (P12419944957014951797.a n : ℤ) = A195319 n

end A195319

/-! ## A195319.P1042796218443225497

`3*n*A005408(n)`
-/

namespace A195319.P1042796218443225497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) * A005408 n)

end

end A195319.P1042796218443225497

namespace A195319

/-- `3*n*A005408(n)` -/
def P1042796218443225497.Spec : Prop :=
  ∀ n, P1042796218443225497.a n = A195319 n

end A195319

/-!
# A195320: 7 times hexagonal numbers: a(n) = 7*n*(2*n-1).

The programs for A195320, the canonical program `A195320.P4733645175510963858` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195320 has offset 0).

The definition of A195320 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195320.P4733645175510963858

`14*n²-7*n`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A195320

/-- `14*n²-7*n` -/
def P4733645175510963858.Spec : Prop :=
  ∀ n, P4733645175510963858.a n = A195320 n

theorem P4733645175510963858.correct : P4733645175510963858.Spec := by
  intro n
  simp only [A195320]

end A195320

/-! ## A195320.P11985290279194435992

`7*A000384(n)`
-/

namespace A195320.P11985290279194435992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A000384 n

end

end A195320.P11985290279194435992

namespace A195320

/-- `7*A000384(n)` -/
def P11985290279194435992.Spec : Prop :=
  ∀ n, P11985290279194435992.a n = A195320 n

end A195320

/-! ## A195320.P14112713955459437436

`7*C(2*n, 2)`
-/

namespace A195320.P14112713955459437436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * Nat.choose (2 * n) 2

end

end A195320.P14112713955459437436

namespace A195320

/-- `7*C(2*n, 2)` -/
def P14112713955459437436.Spec : Prop :=
  ∀ n, (P14112713955459437436.a n : ℤ) = A195320 n

end A195320

/-! ## A195320.P1348901963881201537

`∑[a(n-1)+28]` with `a(0)=0, a(1)=7`
-/

namespace A195320.P1348901963881201537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n f1 =>
  f1 (n - 1) + 28

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195320.P1348901963881201537

namespace A195320

/-- `∑[a(n-1)+28]` -/
def P1348901963881201537.Spec : Prop :=
  ∀ n, (P1348901963881201537.a n : ℤ) = A195320 n

end A195320

/-! ## A195320.P11127721655742508208

`7*lcm(n, comp[2*(n+1)])`
-/

namespace A195320.P11127721655742508208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * Nat.lcm n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A195320.P11127721655742508208

namespace A195320

/-- `7*lcm(n, comp[2*(n+1)])` -/
def P11127721655742508208.Spec : Prop :=
  ∀ n, (P11127721655742508208.a n : ℤ) = A195320 n

end A195320

/-! ## A195320.P15730900822311161865

`7*abs(n*xor(1, -2*n))`
-/

namespace A195320.P15730900822311161865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * |(n : ℤ) * Int.xor 1 (-(2 * n : ℤ))|

end

end A195320.P15730900822311161865

namespace A195320

/-- `7*abs(n*xor(1, -2*n))` -/
def P15730900822311161865.Spec : Prop :=
  ∀ n, P15730900822311161865.a n = A195320 n

end A195320

/-! ## A195320.P9602082066446246307

`7*n*record[3*n*and(1, n)]/3`
-/

namespace A195320.P9602082066446246307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n * Nat.land 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 3

end

end A195320.P9602082066446246307

namespace A195320

/-- `7*n*record[3*n*and(1, n)]/3` -/
def P9602082066446246307.Spec : Prop :=
  ∀ n, P9602082066446246307.a n = (A195320 n : ℚ)

end A195320

/-! ## A195320.P6777917410191203123

`7*(A001105(n)-n)`
-/

namespace A195320.P6777917410191203123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A001105 n - (n : ℤ))

end

end A195320.P6777917410191203123

namespace A195320

/-- `7*(A001105(n)-n)` -/
def P6777917410191203123.Spec : Prop :=
  ∀ n, P6777917410191203123.a n = A195320 n

end A195320

/-! ## A195320.P2320081536805142438

`7*A000217(comp[2*(n+1)])`
-/

namespace A195320.P2320081536805142438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A000217 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A195320.P2320081536805142438

namespace A195320

/-- `7*A000217(comp[2*(n+1)])` -/
def P2320081536805142438.Spec : Prop :=
  ∀ n, P2320081536805142438.a n = A195320 n

end A195320

/-! ## A195320.P12203789962383766765

`A158558(n)%A143839(n+1)`
-/

namespace A195320.P12203789962383766765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158558 n) (A143839 (n + 1))

end

end A195320.P12203789962383766765

namespace A195320

/-- `A158558(n)%A143839(n+1)` -/
def P12203789962383766765.Spec : Prop :=
  ∀ n, P12203789962383766765.a n = A195320 n

end A195320

/-! ## A195320.P16612909350156479984

`7*A161680(2*n)`
-/

namespace A195320.P16612909350156479984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A161680 (2 * n)

end

end A195320.P16612909350156479984

namespace A195320

/-- `7*A161680(2*n)` -/
def P16612909350156479984.Spec : Prop :=
  ∀ n, P16612909350156479984.a n = A195320 n

end A195320

/-! ## A195320.P114441678000774774

`7*A385083(2*n)`
-/

namespace A195320.P114441678000774774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A385083 (2 * n)

end

end A195320.P114441678000774774

namespace A195320

/-- `7*A385083(2*n)` -/
def P114441678000774774.Spec : Prop :=
  ∀ n, P114441678000774774.a n = A195320 n

end A195320

/-! ## A195320.P897019673279590369

`record[7*n*A001057(n)]`
-/

namespace A195320.P897019673279590369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * ((n : ℤ) * A001057 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195320.P897019673279590369

namespace A195320

/-- `record[7*n*A001057(n)]` -/
def P897019673279590369.Spec : Prop :=
  ∀ n, P897019673279590369.a n = A195320 n

end A195320

/-! ## A195320.P17173481750598556617

`A024966(A004273(n))`
-/

namespace A195320.P17173481750598556617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024966 (A004273 n).toNat

end

end A195320.P17173481750598556617

namespace A195320

/-- `A024966(A004273(n))` -/
def P17173481750598556617.Spec : Prop :=
  ∀ n, P17173481750598556617.a n = A195320 n

end A195320

/-! ## A195320.P7994791119749304730

`7*A325689(2*n+1)`
-/

namespace A195320.P7994791119749304730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A325689 (2 * n + 1)

end

end A195320.P7994791119749304730

namespace A195320

/-- `7*A325689(2*n+1)` -/
def P7994791119749304730.Spec : Prop :=
  ∀ n, P7994791119749304730.a n = A195320 n

end A195320

/-! ## A195320.P11106980663170342481

`7*A334320(2*n+1)`
-/

namespace A195320.P11106980663170342481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A334320 (2 * n + 1)

end

end A195320.P11106980663170342481

namespace A195320

/-- `7*A334320(2*n+1)` -/
def P11106980663170342481.Spec : Prop :=
  ∀ n, P11106980663170342481.a n = A195320 n

end A195320

/-! ## A195320.P6904618106750984848

`A047335(2*n+1)*A060747(n)`
-/

namespace A195320.P6904618106750984848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047335 (2 * n + 1) * A060747 n

end

end A195320.P6904618106750984848

namespace A195320

/-- `A047335(2*n+1)*A060747(n)` -/
def P6904618106750984848.Spec : Prop :=
  ∀ n, P6904618106750984848.a n = A195320 n

end A195320

/-! ## A195320.P6733595121741723367

`7*(A058331(n)-A234017(A080578(n+2)-2))`
-/

namespace A195320.P6733595121741723367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A058331 n - A234017 (A080578 (n + 2) - 2).toNat)

end

end A195320.P6733595121741723367

namespace A195320

/-- `7*(A058331(n)-A234017(A080578(n+2)-2))` -/
def P6733595121741723367.Spec : Prop :=
  ∀ n, P6733595121741723367.a n = A195320 n

end A195320

/-! ## A195320.P3491256569909565923

`7*(A058331(n)-A234017(A100661(n+1)+2*n+1))`
-/

namespace A195320.P3491256569909565923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A058331 n - A234017 (A100661 (n + 1) + (2 * n + 1 : ℤ)).toNat)

end

end A195320.P3491256569909565923

namespace A195320

/-- `7*(A058331(n)-A234017(A100661(n+1)+2*n+1))` -/
def P3491256569909565923.Spec : Prop :=
  ∀ n, P3491256569909565923.a n = A195320 n

end A195320

/-! ## A195320.P13234420662425111768

`A195020(A130824(n))`
-/

namespace A195320.P13234420662425111768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195020 (A130824 n).toNat

end

end A195320.P13234420662425111768

namespace A195320

/-- `A195020(A130824(n))` -/
def P13234420662425111768.Spec : Prop :=
  ∀ n, P13234420662425111768.a n = A195320 n

end A195320

/-!
# A195321: a(n) = 18*n^2.

The programs for A195321, the canonical program `A195321.P9690014683711486293` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195321 has offset 0).

The definition of A195321 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `18*n²` (program `A195321.P9690014683711486293`, by `A195321.P9690014683711486293.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195321.P9690014683711486293

`18*n²`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A195321

/-- `18*n²` -/
def P9690014683711486293.Spec : Prop :=
  ∀ n, (P9690014683711486293.a n : ℤ) = A195321 n

theorem P9690014683711486293.correct : P9690014683711486293.Spec := by
  intro n
  simp only [A195321]

end A195321

/-!
# A195322: a(n) = 20*n^2.

The programs for A195322, the canonical program `A195322.P14642345599838426870` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195322 has offset 0).

The definition of A195322 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*n²` (program `A195322.P14642345599838426870`, by `A195322.P14642345599838426870.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195322.P14642345599838426870

`20*n²`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A195322

/-- `20*n²` -/
def P14642345599838426870.Spec : Prop :=
  ∀ n, (P14642345599838426870.a n : ℤ) = A195322 n

theorem P14642345599838426870.correct : P14642345599838426870.Spec := by
  intro n
  simp only [A195322]

end A195322

/-!
# A195323: a(n) = 22*n^2.

The programs for A195323, the canonical program `A195323.P14881551293216845039` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195323 has offset 0).

The definition of A195323 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `22*n²` (program `A195323.P14881551293216845039`, by `A195323.P14881551293216845039.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195323.P14881551293216845039

`22*n²`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A195323

/-- `22*n²` -/
def P14881551293216845039.Spec : Prop :=
  ∀ n, (P14881551293216845039.a n : ℤ) = A195323 n

theorem P14881551293216845039.correct : P14881551293216845039.Spec := by
  intro n
  simp only [A195323]

end A195323

/-!
# A195327: Number of bases to which terms of A194946 are pseudoprime.

The programs for A195327, there is no canonical definition to state claims against.
-/

/-! ## A195327.P14090409664829347267

`A348259(A194946(n+1))+1`
-/

namespace A195327.P14090409664829347267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348259 (A194946 (n + 1)).toNat + 1

end

end A195327.P14090409664829347267

/-! ## A195327.P2593844161350851850

`A063994(A194946(n+1))`
-/

namespace A195327.P2593844161350851850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (A194946 (n + 1)).toNat

end

end A195327.P2593844161350851850

/-!
# A195328: Number of bases to which terms of A141768 are strong pseudoprimes.

The programs for A195328, there is no canonical definition to state claims against.
-/

/-! ## A195328.P16475683021243108152

`A071294(floor(A141768(n+1)/2))`
-/

namespace A195328.P16475683021243108152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071294 ⌊(A141768 (n + 1) : ℚ) / 2⌋.toNat

end

end A195328.P16475683021243108152

/-! ## A195328.P13090893199514315929

`A071294((A141768(n+1)-1)/2)`
-/

namespace A195328.P13090893199514315929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071294 (SequenceMachineLib.roundAway ((A141768 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A195328.P13090893199514315929

/-! ## A195328.P2821750596742389942

`record[A071294(n+1)%A130509(n+1)]`
-/

namespace A195328.P2821750596742389942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071294 (n + 1)) (A130509 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195328.P2821750596742389942

/-!
# A195329: Records of A195325.

The programs for A195329, there is no canonical definition to state claims against.
-/

/-! ## A195329.P439264012514045887

`record[A195325(n+1)]`
-/

namespace A195329.P439264012514045887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195329.P439264012514045887

/-! ## A195329.P3383232160871461872

`record[A195325(A158416(n))-and(1, n)]`
-/

namespace A195329.P3383232160871461872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195325 (A158416 n).toNat - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195329.P3383232160871461872

/-! ## A195329.P7043706385253502191

`record[A195325(A158416(n))-A000035(n)]`
-/

namespace A195329.P7043706385253502191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195325 (A158416 n).toNat - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195329.P7043706385253502191

/-! ## A195329.P11615662152778535063

`record[A057979(n)*A195325(A158416(n))]`
-/

namespace A195329.P11615662152778535063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n * A195325 (A158416 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195329.P11615662152778535063

/-! ## A195329.P14109866988534193397

`record[A195325(A158416(n))]*A262681(n)`
-/

namespace A195329.P14109866988534193397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195325 (A158416 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A262681 n

end

end A195329.P14109866988534193397

/-!
# A195330: Numbers n such that A080670(n) < n.

The programs for A195330, there is no canonical definition to state claims against.
-/

/-! ## A195330.P15562704295051412135

`lt[A080670(n+1), n]+1`
-/

namespace A195330.P15562704295051412135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080670 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A195330.P15562704295051412135

/-! ## A195330.P3884993034081363835

`lt[A080670(A028310(n)), n]`
-/

namespace A195330.P3884993034081363835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080670 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A195330.P3884993034081363835

/-! ## A195330.P2240394690509513686

`A020725(lt[A080670(n+1), n])`
-/

namespace A195330.P2240394690509513686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080670 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A195330.P2240394690509513686

/-! ## A195330.P2191445021433784844

`lt[A080670(A000038(n)+n), n]`
-/

namespace A195330.P2191445021433784844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080670 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A195330.P2191445021433784844

/-! ## A195330.P17398937679060608056

`A376254(A062399(n+1))`
-/

namespace A195330.P17398937679060608056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376254 (A062399 (n + 1)).toNat

end

end A195330.P17398937679060608056

/-!
# A195331: A080670 applied to A195330(n).

The programs for A195331, there is no canonical definition to state claims against.
-/

/-! ## A195331.P16673349601049762737

`A080670(A195330(n+1))`
-/

namespace A195331.P16673349601049762737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080670 (A195330 (n + 1)).toNat

end

end A195331.P16673349601049762737

/-! ## A195331.P6112118006129484591

`A343156(A290329(n+2))+A067599(A195330(n+1))`
-/

namespace A195331.P6112118006129484591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343156 (A290329 (n + 2)).toNat + A067599 (A195330 (n + 1)).toNat

end

end A195331.P6112118006129484591

/-! ## A195331.P14044379720991359353

`A067599(A195330(n+1)^A027082(n))`
-/

namespace A195331.P14044379720991359353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067599 (SequenceMachineLib.roundAway ((A195330 (n + 1) : ℚ) ^ (A027082 n : ℤ))).toNat

end

end A195331.P14044379720991359353

/-!
# A195332: Numbers such that the sum of the cube of the odd divisors is prime.

The programs for A195332, there is no canonical definition to state claims against.
-/

/-! ## A195332.P12100590234782219448

`∩[A072502(n+1), A230193(n+1)]`
-/

namespace A195332.P12100590234782219448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195332.P12100590234782219448

/-! ## A195332.P8321022826423783232

`eq[8, A336996(A030101(n))]`
-/

namespace A195332.P8321022826423783232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336996 (A030101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195332.P8321022826423783232

/-! ## A195332.P16449552374004712107

`eq[A002487(n), A019428(A000377(n))]`
-/

namespace A195332.P16449552374004712107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (A000377 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195332.P16449552374004712107

/-! ## A195332.P11526648003793564651

`eq[A360288(n)-4, A036555(3*n)]`
-/

namespace A195332.P11526648003793564651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360288 n - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036555 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195332.P11526648003793564651

/-! ## A195332.P10301662751943080703

`eq[18, A126759(A318934(n+1))]`
-/

namespace A195332.P10301662751943080703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 (A318934 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195332.P10301662751943080703

/-!
# A195334: Numbers the sum of whose even divisors is 2 times a prime.

The programs for A195334, there is no canonical definition to state claims against.
-/

/-! ## A195334.P15891520861786345198

`A292446(n+1)+1`
-/

namespace A195334.P15891520861786345198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292446 (n + 1) + 1

end

end A195334.P15891520861786345198

/-! ## A195334.P13670677173227122678

`2*A023194(n+1)`
-/

namespace A195334.P13670677173227122678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023194 (n + 1)

end

end A195334.P13670677173227122678

/-! ## A195334.P12569008807747994525

`2*(A270413(n+1)-1)`
-/

namespace A195334.P12569008807747994525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A270413 (n + 1) - 1)

end

end A195334.P12569008807747994525

/-! ## A195334.P8797783401065546267

`A023194(n+1)+A270413(n+1)-1`
-/

namespace A195334.P8797783401065546267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (n + 1) + (A270413 (n + 1) - 1)

end

end A195334.P8797783401065546267

/-! ## A195334.P6455619338691023311

`2*(A071167(n+1)+A062700(n+1))`
-/

namespace A195334.P6455619338691023311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A071167 (n + 1) + A062700 (n + 1))

end

end A195334.P6455619338691023311

/-!
# A195338: a(n) = A091137(n) / A016116(n).

The programs for A195338, the canonical program `A195338.P8446042870619548961` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195338 has offset 0).

The definition of A195338 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091137, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A195338.P8446042870619548961

`A091137(n)/A016116(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A195338

/-- `A091137(n)/A016116(n)` -/
def P8446042870619548961.Spec : Prop :=
  ∀ n, P8446042870619548961.a n = (A195338 n : ℚ)

end A195338

/-! ## A195338.P12228950774117044494

`∏[A141459(n)+n%2]`
-/

namespace A195338.P12228950774117044494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 n + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A195338.P12228950774117044494

namespace A195338

/-- `∏[A141459(n)+n%2]` -/
def P12228950774117044494.Spec : Prop :=
  ∀ n, P12228950774117044494.a n = A195338 n

end A195338

/-! ## A195338.P8453087680130086885

`lcm(∏[∏{p}[n+1, #]], A165636(n))`
-/

namespace A195338.P8453087680130086885
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A165636 n)

end

end A195338.P8453087680130086885

namespace A195338

/-- `lcm(∏[∏{p}[n+1, #]], A165636(n))` -/
def P8453087680130086885.Spec : Prop :=
  ∀ n, (P8453087680130086885.a n : ℤ) = A195338 n

end A195338

/-! ## A195338.P5743156827884938750

`∏[A027642(n)]/gcd(2, ∏{p}[n, #])`
-/

namespace A195338.P5743156827884938750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℚ)

end

end A195338.P5743156827884938750

namespace A195338

/-- `∏[A027642(n)]/gcd(2, ∏{p}[n, #])` -/
def P5743156827884938750.Spec : Prop :=
  ∀ n, P5743156827884938750.a n = (A195338 n : ℚ)

end A195338

/-! ## A195338.P15069810897154437340

`a(n-2)*A051717(n)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A195338.P15069810897154437340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  a (n - 2) * A051717 n

end

end A195338.P15069810897154437340

namespace A195338

/-- `a(n-2)*A051717(n)` -/
def P15069810897154437340.Spec : Prop :=
  ∀ n, P15069810897154437340.a n = A195338 n

end A195338

/-!
# A195339: Expansion of 1/(1-4*x+2*x^3+x^4).

The programs for A195339, the canonical program `A195339.P2941948326611674109` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195339 has offset 0).

The definition of A195339 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195339.P2941948326611674109

`4*a(n-1)-2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=16, a(3)=62`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A195339

/-- `4*a(n-1)-2*a(n-3)-a(n-4)` -/
def P2941948326611674109.Spec : Prop :=
  ∀ n, P2941948326611674109.a n = A195339 n

theorem P2941948326611674109.correct : P2941948326611674109.Spec := by
  intro n
  simp only [A195339]

end A195339

/-! ## A195339.P12594886889913555233

`ceil(a(n-1)/(2^(1/3)-1))` with `a(0)=1`
-/

namespace A195339.P12594886889913555233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) / ((2 : ℝ) ^ ((1 : ℚ) / 3 : ℝ) - 1)⌉

end

end A195339.P12594886889913555233

namespace A195339

/-- `ceil(a(n-1)/(2^(1/3)-1))` -/
def P12594886889913555233.Spec : Prop :=
  ∀ n, P12594886889913555233.a n = A195339 n

end A195339

/-! ## A195339.P9988437728508781170

`∑[A108368(n+1)]`
-/

namespace A195339.P9988437728508781170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195339.P9988437728508781170

namespace A195339

/-- `∑[A108368(n+1)]` -/
def P9988437728508781170.Spec : Prop :=
  ∀ n, P9988437728508781170.a n = A195339 n

end A195339

/-! ## A195339.P11538729420572897116

`∑[∑[record[A109529(n)]]]`
-/

namespace A195339.P11538729420572897116
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109529 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195339.P11538729420572897116

namespace A195339

/-- `∑[∑[record[A109529(n)]]]` -/
def P11538729420572897116.Spec : Prop :=
  ∀ n, P11538729420572897116.a n = A195339 n

end A195339

/-! ## A195339.P12607028818539272616

`∑[∑[A237988(3*n+1)]]`
-/

namespace A195339.P12607028818539272616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237988 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195339.P12607028818539272616

namespace A195339

/-- `∑[∑[A237988(3*n+1)]]` -/
def P12607028818539272616.Spec : Prop :=
  ∀ n, P12607028818539272616.a n = A195339 n

end A195339

/-! ## A195339.P6392864267722816131

`Δ[A195350(n+1)]-A301483(n+1)`
-/

namespace A195339.P6392864267722816131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A301483 (n + 1)

end

end A195339.P6392864267722816131

namespace A195339

/-- `Δ[A195350(n+1)]-A301483(n+1)` -/
def P6392864267722816131.Spec : Prop :=
  ∀ n, P6392864267722816131.a n = A195339 n

end A195339

/-! ## A195339.P12818925256668039261

`(A301483(n+2)-A195350(n+1))/2`
-/

namespace A195339.P12818925256668039261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301483 (n + 2) - A195350 (n + 1) : ℚ) / 2

end

end A195339.P12818925256668039261

namespace A195339

/-- `(A301483(n+2)-A195350(n+1))/2` -/
def P12818925256668039261.Spec : Prop :=
  ∀ n, P12818925256668039261.a n = (A195339 n : ℚ)

end A195339

/-!
# A195350: Expansion of (1 - 3*x - x^2)/(1 - 4*x + 2*x^3 + x^4).

The programs for A195350, the canonical program `A195350.P15222193403480726268` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195350 has offset 0).

The definition of A195350 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195350.P15222193403480726268

`4*a(n-1)-2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=10`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A195350

/-- `4*a(n-1)-2*a(n-3)-a(n-4)` -/
def P15222193403480726268.Spec : Prop :=
  ∀ n, P15222193403480726268.a n = A195350 n

theorem P15222193403480726268.correct : P15222193403480726268.Spec := by
  intro n
  simp only [A195350]

end A195350

/-! ## A195350.P7853803502533344125

`A108368(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A195350.P7853803502533344125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A108368 n + (1 - a (n - 1))

end

end A195350.P7853803502533344125

namespace A195350

/-- `A108368(n)+1-a(n-1)` -/
def P7853803502533344125.Spec : Prop :=
  ∀ n, P7853803502533344125.a n = A195350 n

end A195350

/-! ## A195350.P14676093798223851984

`(A377314(n)+1)/2`
-/

namespace A195350.P14676093798223851984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A377314 n + 1 : ℚ) / 2

end

end A195350.P14676093798223851984

namespace A195350

/-- `(A377314(n)+1)/2` -/
def P14676093798223851984.Spec : Prop :=
  ∀ n, P14676093798223851984.a n = (A195350 n : ℚ)

end A195350

/-! ## A195350.P3177886117105550846

`∑[A237988(3*n+1)-A237988(3*n)]`
-/

namespace A195350.P3177886117105550846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237988 (3 * n + 1) - A237988 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195350.P3177886117105550846

namespace A195350

/-- `∑[A237988(3*n+1)-A237988(3*n)]` -/
def P3177886117105550846.Spec : Prop :=
  ∀ n, P3177886117105550846.a n = A195350 n

end A195350

/-!
# A195351: Numbers k such that there are no primes in the range [2^k-k, 2^k+k].

The programs for A195351, there is no canonical definition to state claims against.
-/

/-! ## A195351.P11545240245472624974

`eq[0, A192454(n)]`
-/

namespace A195351.P11545240245472624974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192454 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195351.P11545240245472624974

/-! ## A195351.P17960664584876413203

`lt[n², A059959(n)²]`
-/

namespace A195351.P17960664584876413203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059959 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A195351.P17960664584876413203

/-! ## A195351.P5668710993430414937

`lt[A192454(n), A054977(n)]`
-/

namespace A195351.P5668710993430414937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192454 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195351.P5668710993430414937

/-! ## A195351.P16193716658132374802

`lt[A192454(n), A000038(n)!]`
-/

namespace A195351.P16193716658132374802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192454 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A195351.P16193716658132374802

/-! ## A195351.P10025526914911008341

`lt[A192454(n), acot(A001844(n))]`
-/

namespace A195351.P10025526914911008341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192454 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A001844 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A195351.P10025526914911008341

/-!
# A195352: Smallest prime p such that 2*n+1 = 2*p + q for some odd prime q.

The programs for A195352, there is no canonical definition to state claims against.
-/

/-! ## A195352.P16240123566940112035

`A004526(A020744(n)-A302564(n+3))`
-/

namespace A195352.P16240123566940112035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A020744 n - A302564 (n + 3)).toNat

end

end A195352.P16240123566940112035

/-! ## A195352.P2051611863360440391

`A004525(A020744(n)-(A302564(n+3)+1))`
-/

namespace A195352.P2051611863360440391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A020744 n - (A302564 (n + 3) + 1)).toNat

end

end A195352.P2051611863360440391

/-! ## A195352.P4466788910766874102

`A006530(A020744(n)-(A302564(n+3)+1))`
-/

namespace A195352.P4466788910766874102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A020744 n - (A302564 (n + 3) + 1)).toNat

end

end A195352.P4466788910766874102

/-! ## A195352.P13372313266704612965

`A142150(A020744(n)-(A302564(n+3)+1))`
-/

namespace A195352.P13372313266704612965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A020744 n - (A302564 (n + 3) + 1)).toNat

end

end A195352.P13372313266704612965

/-! ## A195352.P9247143432623578484

`A052938(A020744(n)-A302564(n+3)-3)`
-/

namespace A195352.P9247143432623578484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A020744 n - A302564 (n + 3) - 3).toNat

end

end A195352.P9247143432623578484

/-!
# A195353: Odd numbers n>5 in the representation n=2*p+q, p, q prime, q maximal, at which a larger p than for any smaller n is needed. A195354 gives values of p.

The programs for A195353, there is no canonical definition to state claims against.
-/

/-! ## A195353.P18215334385361326848

`∑[A018412(A023599(n+1))]+3`
-/

namespace A195353.P18215334385361326848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018412 (A023599 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A195353.P18215334385361326848

/-!
# A195354: Records of primes p in the representation of odd n>5 by n=2*p+q, p, q prime, q maximal. A195353 gives the values of n at which an increase of p is required.

The programs for A195354, there is no canonical definition to state claims against.
-/

/-! ## A195354.P4252596243035012445

`record[A195352(n+3)]`
-/

namespace A195354.P4252596243035012445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195352 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195354.P4252596243035012445

/-! ## A195354.P14161273403296474248

`A195352(floor(A195353(n+1)/2))`
-/

namespace A195354.P14161273403296474248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195352 ⌊(A195353 (n + 1) : ℚ) / 2⌋.toNat

end

end A195354.P14161273403296474248

/-! ## A195354.P5681111370491073953

`A195352((A195353(n+1)-1)/2)`
-/

namespace A195354.P5681111370491073953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195352 (SequenceMachineLib.roundAway ((A195353 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A195354.P5681111370491073953

/-! ## A195354.P14770135176192080845

`p?[lt[A198337(n+1), A198337(n+3)]]`
-/

namespace A195354.P14770135176192080845
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198337 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198337 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A195354.P14770135176192080845

/-!
# A195364: Number of partitions of n plus number of divisors of n.

The programs for A195364, there is no canonical definition to state claims against.
-/

/-! ## A195364.P15577938456850924851

`∑{d}[n+1, A000837(#)+1]`
-/

namespace A195364.P15577938456850924851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000837 d + 1)

end

end A195364.P15577938456850924851

/-! ## A195364.P6695839549997303208

`A000041(n+1)+A000005(n+1)`
-/

namespace A195364.P6695839549997303208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + A000005 (n + 1)

end

end A195364.P6695839549997303208

/-! ## A195364.P7147183184204966883

`A086738(n+1)+A007503(n+1)`
-/

namespace A195364.P7147183184204966883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086738 (n + 1) + A007503 (n + 1)

end

end A195364.P7147183184204966883

/-! ## A195364.P2870332364274911171

`A086739(n+1)+A061468(n+1)`
-/

namespace A195364.P2870332364274911171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086739 (n + 1) + A061468 (n + 1)

end

end A195364.P2870332364274911171

/-! ## A195364.P5575834505623265994

`A144300(n+1)+A062011(n+1)`
-/

namespace A195364.P5575834505623265994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144300 (n + 1) + A062011 (n + 1)

end

end A195364.P5575834505623265994

/-! ## A195364.P15315485102292574304

`A183151(n+1)+A082514(n+1)`
-/

namespace A195364.P15315485102292574304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183151 (n + 1) + A082514 (n + 1)

end

end A195364.P15315485102292574304

/-! ## A195364.P2888188365905991441

`A282467(n+1)+A099777(n+1)`
-/

namespace A195364.P2888188365905991441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282467 (n + 1) + A099777 (n + 1)

end

end A195364.P2888188365905991441

/-! ## A195364.P4500882449810758229

`A144300(n+1)+2*A000005(n+1)`
-/

namespace A195364.P4500882449810758229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144300 (n + 1) + 2 * A000005 (n + 1)

end

end A195364.P4500882449810758229

/-! ## A195364.P1900126134468748496

`A000041(n+1)+A006218(n+1)-A006218(n)`
-/

namespace A195364.P1900126134468748496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A006218 (n + 1) - A006218 n)

end

end A195364.P1900126134468748496

/-! ## A195364.P14421356786416632362

`A000005(n+1)+A018783(n+1)+A000837(n+1)`
-/

namespace A195364.P14421356786416632362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A018783 (n + 1) + A000837 (n + 1))

end

end A195364.P14421356786416632362

/-! ## A195364.P6804062242068790403

`A000005(n+1)+A183151(n+1)+A000720(n+1)`
-/

namespace A195364.P6804062242068790403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A183151 (n + 1) + A000720 (n + 1))

end

end A195364.P6804062242068790403

/-! ## A195364.P6086886333757444614

`A000041(n+1)+A000041(n+1)-A144300(n+1)`
-/

namespace A195364.P6086886333757444614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A000041 (n + 1) - A144300 (n + 1))

end

end A195364.P6086886333757444614

/-! ## A195364.P5660001817403802884

`A000041(n+1)+A265250(n+1)-A002133(n+1)`
-/

namespace A195364.P5660001817403802884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A265250 (n + 1) - A002133 (n + 1))

end

end A195364.P5660001817403802884

/-! ## A195364.P9871807493296582974

`A000041(n+1)+A167932(n+1)-A111133(n+1)`
-/

namespace A195364.P9871807493296582974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A167932 (n + 1) - A111133 (n + 1))

end

end A195364.P9871807493296582974

/-! ## A195364.P13694327140490186481

`A000005(n+1)+A168015(n+1)-A168014(n+1)`
-/

namespace A195364.P13694327140490186481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A168015 (n + 1) - A168014 (n + 1))

end

end A195364.P13694327140490186481

/-! ## A195364.P17767985875311095605

`A000005(n+1)+A141667(n+1)/A000005(n+1)`
-/

namespace A195364.P17767985875311095605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) + (A141667 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A195364.P17767985875311095605

/-! ## A195364.P16938914306559952732

`A000041(n+1)+A141667(n+1)/A000041(n+1)`
-/

namespace A195364.P16938914306559952732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (n + 1) : ℚ) + (A141667 (n + 1) : ℚ) / (A000041 (n + 1) : ℚ)

end

end A195364.P16938914306559952732

/-! ## A195364.P15433279197862912257

`Δ[A006218(n)+A000070(n)]`
-/

namespace A195364.P15433279197862912257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n + A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195364.P15433279197862912257

/-! ## A195364.P2266238445925020194

`Δ[A054519(n)+A000070(n)]`
-/

namespace A195364.P2266238445925020194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n + A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195364.P2266238445925020194

/-! ## A195364.P7284687356893445551

`A000005(n+1)+Δ[A000070(n)]`
-/

namespace A195364.P7284687356893445551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (f1 (n + 1) - f1 n)

end

end A195364.P7284687356893445551

/-!
# A195371: Decimal expansion of shortest length, (C), of segment from side CA through incenter to side CB in right triangle ABC with sidelengths (a,b,c)=(1,sqrt(2),sqrt(3)).

The programs for A195371, there is no canonical definition to state claims against.
-/

/-! ## A195371.P1231575442243406815

`9-A120683(n+1)`
-/

namespace A195371.P1231575442243406815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A120683 (n + 1 + 1)

end

end A195371.P1231575442243406815

/-!
# A195376: Parity of EKG sequence A064413.

The programs for A195376, there is no canonical definition to state claims against.
-/

/-! ## A195376.P15330336997469580473

`A000035(A064413(n+1))`
-/

namespace A195376.P15330336997469580473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A064413 (n + 1)).toNat

end

end A195376.P15330336997469580473

/-! ## A195376.P3011466752449663300

`A104125(n+1)%2`
-/

namespace A195376.P3011466752449663300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104125 (n + 1)) 2

end

end A195376.P3011466752449663300

/-! ## A195376.P7882873815707923515

`A348470(n+1)%2`
-/

namespace A195376.P7882873815707923515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348470 (n + 1)) 2

end

end A195376.P7882873815707923515

/-! ## A195376.P11439602778891187292

`floor(acot(A064301(n+1)))`
-/

namespace A195376.P11439602778891187292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A064301 (n + 1) : ℝ)⌋

end

end A195376.P11439602778891187292

/-! ## A195376.P3245655962185356014

`1-char[A064472(n+1)]`
-/

namespace A195376.P3245655962185356014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064472 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A195376.P3245655962185356014

/-! ## A195376.P7228797232719584289

`char[A064957(n+1)-1]`
-/

namespace A195376.P7228797232719584289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064957 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A195376.P7228797232719584289

/-! ## A195376.P11804825641579715235

`char[A064421(2*n+1)]`
-/

namespace A195376.P11804825641579715235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064421 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A195376.P11804825641579715235

/-! ## A195376.P17222968958934504906

`1-char[A064953(n+1)-1]`
-/

namespace A195376.P17222968958934504906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064953 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A195376.P17222968958934504906

/-! ## A195376.P16168904925055251867

`A064413(Δ[n²]-n)²%2`
-/

namespace A195376.P16168904925055251867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064413 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat ^ 2) 2

end

end A195376.P16168904925055251867

/-! ## A195376.P13304855016372728099

`and(1, A064426(n)+a(n-1))` with `a(0)=1`
-/

namespace A195376.P13304855016372728099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land 1 (A064426 n + a (n - 1))

end

end A195376.P13304855016372728099

/-! ## A195376.P8695442857424372946

`A000007(A064301(n+1))`
-/

namespace A195376.P8695442857424372946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A064301 (n + 1)).toNat

end

end A195376.P8695442857424372946

/-! ## A195376.P15581566183418212739

`A000035(A348470(n+1))`
-/

namespace A195376.P15581566183418212739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A348470 (n + 1)).toNat

end

end A195376.P15581566183418212739

/-! ## A195376.P3676082426190420871

`A130713(A064301(n+1)+2)`
-/

namespace A195376.P3676082426190420871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 (A064301 (n + 1) + 2).toNat

end

end A195376.P3676082426190420871

/-! ## A195376.P7748430780337204703

`A263013(A064301(n+1)+2)`
-/

namespace A195376.P7748430780337204703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263013 (A064301 (n + 1) + 2).toNat

end

end A195376.P7748430780337204703

/-! ## A195376.P17237983793926259818

`A099894(2*A064301(n+1))`
-/

namespace A195376.P17237983793926259818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 (2 * A064301 (n + 1)).toNat

end

end A195376.P17237983793926259818

/-! ## A195376.P15135090917165190879

`A130706(2*A064301(n+1))`
-/

namespace A195376.P15135090917165190879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (2 * A064301 (n + 1)).toNat

end

end A195376.P15135090917165190879

/-! ## A195376.P16662214015998052282

`A169585(2*A064301(n+1))`
-/

namespace A195376.P16662214015998052282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 (2 * A064301 (n + 1)).toNat

end

end A195376.P16662214015998052282

/-! ## A195376.P2169180960497522991

`A240354(2*A064301(n+1))`
-/

namespace A195376.P2169180960497522991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240354 (2 * A064301 (n + 1)).toNat

end

end A195376.P2169180960497522991

/-! ## A195376.P8306878607379609297

`and(A010684(n), A104125(n+1))`
-/

namespace A195376.P8306878607379609297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010684 n) (A104125 (n + 1))

end

end A195376.P8306878607379609297

/-! ## A195376.P39508965038494456

`and(A060576(n), A064413(n+1))`
-/

namespace A195376.P39508965038494456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A064413 (n + 1))

end

end A195376.P39508965038494456

/-!
# A195377: 2.5-gap primes: Prime p is a term if there is no prime between 2.5*p and 2.5*q, where q is the next prime after p.

The programs for A195377, there is no canonical definition to state claims against.
-/

/-! ## A195377.P3942126966013796349

`A156112(lt[A156145(2*(n+2)), A156139(2*n+3)])`
-/

namespace A195377.P3942126966013796349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156145 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156139 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156112 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A195377.P3942126966013796349

/-!
# A195378: Numbers n such that n-th Fibonacci number has all digits 0 to 9.

The programs for A195378, there is no canonical definition to state claims against.
-/

/-! ## A195378.P12076140836921493294

`comp[gcd(n, A180601(n+1))]+1`
-/

namespace A195378.P12076140836921493294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A180601 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A195378.P12076140836921493294

/-! ## A195378.P9333302266213720336

`comp[gcd(A131738(n), A180601(n+1))]`
-/

namespace A195378.P9333302266213720336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131738 n) (A180601 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A195378.P9333302266213720336

/-! ## A195378.P13313809198000839386

`eq[1, A001222(A180601(n+1)+1)]+1`
-/

namespace A195378.P13313809198000839386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A180601 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A195378.P13313809198000839386

/-! ## A195378.P5913593967824896520

`eq[2, A000005(A180601(n+1)+1)]+1`
-/

namespace A195378.P5913593967824896520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A180601 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A195378.P5913593967824896520

/-! ## A195378.P9022382036326720957

`eq[2, A062830(A180601(n+1)+1)]+1`
-/

namespace A195378.P9022382036326720957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 (A180601 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A195378.P9022382036326720957

/-! ## A195378.P10061133976198250055

`eq[2, A131818(A180601(n+1)+1)]+1`
-/

namespace A195378.P10061133976198250055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A180601 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A195378.P10061133976198250055

/-! ## A195378.P1670706405305304027

`comp[(n+1)*A005171(A180601(n+1)+1)]`
-/

namespace A195378.P1670706405305304027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005171 (A180601 (n + 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A195378.P1670706405305304027

/-! ## A195378.P6768905865417533234

`eq[A000038(n)+1, ceil(A180601(n+1)/9)]+1`
-/

namespace A195378.P6768905865417533234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A180601 (n + 1) : ℚ) / 9⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A195378.P6768905865417533234

/-!
# A195379: 3.5-gap primes: Primes prime(k) such that there is no prime between 7*prime(k)/2 and 7*prime(k+1)/2.

The programs for A195379, there is no canonical definition to state claims against.
-/

/-! ## A195379.P6077638674221678311

`A270225(3*n+4)%A270231(A093143(n))`
-/

namespace A195379.P6077638674221678311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270225 (3 * n + 4)) (A270231 (A093143 n).toNat)

end

end A195379.P6077638674221678311

/-!
# A195390: 

The programs for A195390, there is no canonical definition to state claims against.
-/

/-! ## A195390.P15456896303945039020

`(6*n)!`
-/

namespace A195390.P15456896303945039020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (6 * n)

end

end A195390.P15456896303945039020

/-! ## A195390.P5619437171375520765

`record[val((n+1)^6, 2)!]`
-/

namespace A195390.P5619437171375520765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.valuation ((n + 1) ^ 6) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195390.P5619437171375520765

/-! ## A195390.P2819350978087817568

`A100732(2*n)`
-/

namespace A195390.P2819350978087817568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100732 (2 * n)

end

end A195390.P2819350978087817568

/-! ## A195390.P2147769657437455341

`A010050(3*n)`
-/

namespace A195390.P2147769657437455341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010050 (3 * n)

end

end A195390.P2147769657437455341

/-! ## A195390.P2203494340504308958

`A000142(6*n)`
-/

namespace A195390.P2203494340504308958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (6 * n)

end

end A195390.P2203494340504308958

/-!
# A195391: 

The programs for A195391, there is no canonical definition to state claims against.
-/

/-! ## A195391.P8709685181256930977

`(7*n)!`
-/

namespace A195391.P8709685181256930977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (7 * n)

end

end A195391.P8709685181256930977

/-! ## A195391.P2937068786071337356

`record[val((n+1)^7, 2)!]`
-/

namespace A195391.P2937068786071337356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.valuation ((n + 1) ^ 7) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195391.P2937068786071337356

/-! ## A195391.P18019989491254266404

`A000142(7*n)`
-/

namespace A195391.P18019989491254266404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (7 * n)

end

end A195391.P18019989491254266404

/-! ## A195391.P17220704907320685531

`A052565(7*n)`
-/

namespace A195391.P17220704907320685531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052565 (7 * n)

end

end A195391.P17220704907320685531

/-! ## A195391.P14026133237264867914

`A052596(7*n)`
-/

namespace A195391.P14026133237264867914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052596 (7 * n)

end

end A195391.P14026133237264867914

/-!
# A195392: 

The programs for A195392, there is no canonical definition to state claims against.
-/

/-! ## A195392.P16332652238711725973

`(8*n)!`
-/

namespace A195392.P16332652238711725973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (8 * n)

end

end A195392.P16332652238711725973

/-! ## A195392.P13045113319483266459

`record[(lcm(4, n+1)-4)!]`
-/

namespace A195392.P13045113319483266459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((Nat.lcm 4 (n + 1) : ℤ) - 4).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195392.P13045113319483266459

/-! ## A195392.P4237160332545373270

`record[val((n+1)^8, 2)!]`
-/

namespace A195392.P4237160332545373270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.valuation ((n + 1) ^ 8) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195392.P4237160332545373270

/-! ## A195392.P13157970706437279846

`record[and(n, -(n+1)^3)!]`
-/

namespace A195392.P13157970706437279846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.land (n : ℤ) (-((n + 1) ^ 3 : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195392.P13157970706437279846

/-! ## A195392.P12638868472404757815

`A100733(2*n)`
-/

namespace A195392.P12638868472404757815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100733 (2 * n)

end

end A195392.P12638868472404757815

/-!
# A195393: 

The programs for A195393, there is no canonical definition to state claims against.
-/

/-! ## A195393.P4618234072192610498

`(9*n)!`
-/

namespace A195393.P4618234072192610498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (9 * n)

end

end A195393.P4618234072192610498

/-! ## A195393.P11832423415100439148

`record[n!/n^dr(n)]`
-/

namespace A195393.P11832423415100439148
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (n ^ SequenceMachineLib.digitalRoot (n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195393.P11832423415100439148

/-! ## A195393.P11297470678571397310

`record[val((n+1)^9, 2)!]`
-/

namespace A195393.P11297470678571397310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.valuation ((n + 1) ^ 9) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195393.P11297470678571397310

/-! ## A195393.P13210959121697555494

`record[n!^(2-dr(n+1))]`
-/

namespace A195393.P13210959121697555494
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) ^ (2 - (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195393.P13210959121697555494

/-!
# A195394: 

The programs for A195394, there is no canonical definition to state claims against.
-/

/-! ## A195394.P10923593600247700618

`(10*n)!`
-/

namespace A195394.P10923593600247700618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (10 * n)

end

end A195394.P10923593600247700618

/-! ## A195394.P7134951793089979995

`record[(n-∏{digits}[n, #])!]`
-/

namespace A195394.P7134951793089979995
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195394.P7134951793089979995

/-! ## A195394.P9917700837950656354

`record[Δ[∑[n]+or(1, n)²]!]`
-/

namespace A195394.P9917700837950656354
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + Nat.lor 1 n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195394.P9917700837950656354

