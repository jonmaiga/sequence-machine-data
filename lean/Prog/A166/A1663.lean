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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A166300: Number of Dyck paths of semilength n, having no ascents and no descents of length 1, and having no UUDD's starting at level 0.

The programs for A166300, there is no canonical definition to state claims against.
-/

/-! ## A166300.P4010936821987846538

`2*A051286(n)-A091964(n)`
-/

namespace A166300.P4010936821987846538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051286 n - A091964 n

end

end A166300.P4010936821987846538

/-! ## A166300.P5603300936198464842

`2*A077419(2*n)-A088518(2*n+1)`
-/

namespace A166300.P5603300936198464842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077419 (2 * n) - A088518 (2 * n + 1)

end

end A166300.P5603300936198464842

/-! ## A166300.P5655181969872166775

`A051286(n)+∑[A051286(n)-A051291(n)]`
-/

namespace A166300.P5655181969872166775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 n - A051291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166300.P5655181969872166775

/-! ## A166300.P8625191532144707484

`A051291(n+1)-A203611(n+2)`
-/

namespace A166300.P8625191532144707484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051291 (n + 1) - A203611 (n + 2)

end

end A166300.P8625191532144707484

/-! ## A166300.P7759764018346589418

`A051286(n)+Δ[A166287(n)-A051286(n)]`
-/

namespace A166300.P7759764018346589418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166287 n - A051286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 n + (f1 (n + 1) - f1 n)

end

end A166300.P7759764018346589418

/-! ## A166300.P5369987530670543035

`A051286(n)+A110198(n)-A201631(n+1)`
-/

namespace A166300.P5369987530670543035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 n + (A110198 n - A201631 (n + 1))

end

end A166300.P5369987530670543035

/-! ## A166300.P1911493383960531315

`A089731(∑[n])`
-/

namespace A166300.P1911493383960531315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089731 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A166300.P1911493383960531315

/-! ## A166300.P2982441818678947424

`A247299(∑[n])`
-/

namespace A166300.P2982441818678947424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247299 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A166300.P2982441818678947424

/-! ## A166300.P7140513414974039326

`A247299(A000217(n))%A214997(n)`
-/

namespace A166300.P7140513414974039326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247299 (A000217 n).toNat) (A214997 n)

end

end A166300.P7140513414974039326

/-! ## A166300.P11623390073113232371

`gcd(A000038(n), A247299(A000217(n)))`
-/

namespace A166300.P11623390073113232371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A247299 (A000217 n).toNat)

end

end A166300.P11623390073113232371

/-! ## A166300.P5381095758545300127

`or(A000007(n), A247299(A000217(n)))`
-/

namespace A166300.P5381095758545300127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A247299 (A000217 n).toNat)

end

end A166300.P5381095758545300127

/-! ## A166300.P6198629870741200187

`A247299(A000217(n))*A289508(2*(n+1))`
-/

namespace A166300.P6198629870741200187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247299 (A000217 n).toNat * A289508 (2 * (n + 1))

end

end A166300.P6198629870741200187

/-! ## A166300.P4641998487592632750

`A247299(A000217(n))/A001222(A007918(n))`
-/

namespace A166300.P4641998487592632750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247299 (A000217 n).toNat : ℚ) / (A001222 (A007918 n).toNat : ℚ)

end

end A166300.P4641998487592632750

/-!
# A166301: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n, having no ascents and no descents of length 1, and having pyramid weight k.

The programs for A166301, there is no canonical definition to state claims against.
-/

/-! ## A166301.P10434006199805737611

`floor(A091562(n)/A002024(A104684(n)))`
-/

namespace A166301.P10434006199805737611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A091562 n : ℚ) / (A002024 (A104684 n).toNat : ℚ)⌋

end

end A166301.P10434006199805737611

/-! ## A166301.P11887779038777536654

`floor(A141560(A059268(n))/A100417(n+1))`
-/

namespace A166301.P11887779038777536654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141560 (A059268 n).toNat : ℚ) / (A100417 (n + 1) : ℚ)⌋

end

end A166301.P11887779038777536654

/-! ## A166301.P10606285035974057513

`floor(A137997(A059268(n))/A137996(n+1))`
-/

namespace A166301.P10606285035974057513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A137997 (A059268 n).toNat : ℚ) / (A137996 (n + 1) : ℚ)⌋

end

end A166301.P10606285035974057513

/-! ## A166301.P8492780376014689959

`A157458(C(A052920(n), A037027(n)))`
-/

namespace A166301.P8492780376014689959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157458 (Nat.choose (A052920 n).toNat (A037027 n).toNat)

end

end A166301.P8492780376014689959

/-! ## A166301.P7806965481439327904

`floor(record[A095171(n+1)]/A213835(n+1))`
-/

namespace A166301.P7806965481439327904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A213835 (n + 1) : ℚ)⌋

end

end A166301.P7806965481439327904

/-!
# A166302: Sum of pyramid weights of all Dyck paths of semilength n that have no ascents and no descents of length 1.

The programs for A166302, there is no canonical definition to state claims against.
-/

/-! ## A166302.P8485773511467278552

`A334495(A239555(n+1))`
-/

namespace A166302.P8485773511467278552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334495 (A239555 (n + 1)).toNat

end

end A166302.P8485773511467278552

/-! ## A166302.P3838628409149884297

`∑[A237497(A289249(n)²)]`
-/

namespace A166302.P3838628409149884297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237497 (A289249 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166302.P3838628409149884297

/-! ## A166302.P7286111804787529572

`(A197462(3*n+5)+1)%A197459(n+1)`
-/

namespace A166302.P7286111804787529572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197462 (3 * n + 5) + 1) (A197459 (n + 1))

end

end A166302.P7286111804787529572

/-! ## A166302.P8988127273240278069

`A003056(A129579(n))-A000700(n)`
-/

namespace A166302.P8988127273240278069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A129579 n).toNat - A000700 n

end

end A166302.P8988127273240278069

/-!
# A166304: Third trisection of A022998.

The programs for A166304, the canonical program `A166304.P17558805541322586370` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166304 has offset 0).

The definition of A166304 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166304.P17558805541322586370

`2*a(n-2)-a(n-4)` with `a(0)=4, a(1)=5, a(2)=16, a(3)=11`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166304

/-- `2*a(n-2)-a(n-4)` -/
def P17558805541322586370.Spec : Prop :=
  ∀ n, P17558805541322586370.a n = A166304 n

theorem P17558805541322586370.correct : P17558805541322586370.Spec := by
  intro n
  simp only [A166304]

end A166304

/-! ## A166304.P8116341904022293394

`A022998(3*n+2)`
-/

namespace A166304.P8116341904022293394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (3 * n + 2)

end

end A166304.P8116341904022293394

namespace A166304

/-- `A022998(3*n+2)` -/
def P8116341904022293394.Spec : Prop :=
  ∀ n, P8116341904022293394.a n = A166304 n

end A166304

/-! ## A166304.P12653467773280140550

`Δ[ceil(3*n/2)²]`
-/

namespace A166304.P12653467773280140550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * ((n : ℚ) / 2)⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166304.P12653467773280140550

namespace A166304

/-- `Δ[ceil(3*n/2)²]` -/
def P12653467773280140550.Spec : Prop :=
  ∀ n, P12653467773280140550.a n = A166304 n

end A166304

/-! ## A166304.P8335295337128216482

`(3*n+2)*gcd(2, n)`
-/

namespace A166304.P8335295337128216482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n + 2) * Nat.gcd 2 n

end

end A166304.P8335295337128216482

namespace A166304

/-- `(3*n+2)*gcd(2, n)` -/
def P8335295337128216482.Spec : Prop :=
  ∀ n, (P8335295337128216482.a n : ℤ) = A166304 n

end A166304

/-! ## A166304.P7532740181002337723

`(3*n+2)*(2-n%2)`
-/

namespace A166304.P7532740181002337723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) * (2 - ((n % 2 : ℕ) : ℤ))

end

end A166304.P7532740181002337723

namespace A166304

/-- `(3*n+2)*(2-n%2)` -/
def P7532740181002337723.Spec : Prop :=
  ∀ n, P7532740181002337723.a n = A166304 n

end A166304

/-! ## A166304.P6287882965437434302

`(2-and(1, n))*(3*n+2)`
-/

namespace A166304.P6287882965437434302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.land 1 n : ℤ)) * (3 * n + 2 : ℤ)

end

end A166304.P6287882965437434302

namespace A166304

/-- `(2-and(1, n))*(3*n+2)` -/
def P6287882965437434302.Spec : Prop :=
  ∀ n, P6287882965437434302.a n = A166304 n

end A166304

/-! ## A166304.P7363416958420448606

`lcm(4, a(n-1))-a(n-2)` with `a(0)=4, a(1)=5`
-/

namespace A166304.P7363416958420448606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 5] fun n a =>
  (Int.lcm 4 (a (n - 1)) : ℤ) - a (n - 2)

end

end A166304.P7363416958420448606

namespace A166304

/-- `lcm(4, a(n-1))-a(n-2)` -/
def P7363416958420448606.Spec : Prop :=
  ∀ n, P7363416958420448606.a n = A166304 n

end A166304

/-! ## A166304.P14219378707390363286

`(n/(n+1)+2)*lcm(2, n+1)`
-/

namespace A166304.P14219378707390363286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / (n + 1 : ℚ) + 2) * (Nat.lcm 2 (n + 1) : ℚ)

end

end A166304.P14219378707390363286

namespace A166304

/-- `(n/(n+1)+2)*lcm(2, n+1)` -/
def P14219378707390363286.Spec : Prop :=
  ∀ n, P14219378707390363286.a n = (A166304 n : ℚ)

end A166304

/-! ## A166304.P15918818801593522978

`(and(1, n+1)+1)*(2*n+n+2)`
-/

namespace A166304.P15918818801593522978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (n + 1) + 1) * (2 * n + (n + 2))

end

end A166304.P15918818801593522978

namespace A166304

/-- `(and(1, n+1)+1)*(2*n+n+2)` -/
def P15918818801593522978.Spec : Prop :=
  ∀ n, (P15918818801593522978.a n : ℤ) = A166304 n

end A166304

/-! ## A166304.P16681632483531562870

`(Δ[(2*n)²]-2*n)/gcd(n-1, 2*n)`
-/

namespace A166304.P16681632483531562870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (2 * n : ℤ) : ℚ) / (Int.gcd ((n : ℤ) - 1) (2 * n : ℤ) : ℚ)

end

end A166304.P16681632483531562870

namespace A166304

/-- `(Δ[(2*n)²]-2*n)/gcd(n-1, 2*n)` -/
def P16681632483531562870.Spec : Prop :=
  ∀ n, P16681632483531562870.a n = (A166304 n : ℚ)

end A166304

/-! ## A166304.P869006347750154364

`gcd(2, n)*A016789(n)`
-/

namespace A166304.P869006347750154364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A016789 n

end

end A166304.P869006347750154364

namespace A166304

/-- `gcd(2, n)*A016789(n)` -/
def P869006347750154364.Spec : Prop :=
  ∀ n, P869006347750154364.a n = A166304 n

end A166304

/-! ## A166304.P1242343599760577366

`(6*n+4)/A000034(n)`
-/

namespace A166304.P1242343599760577366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * n + 4 : ℚ) / (A000034 n : ℚ)

end

end A166304.P1242343599760577366

namespace A166304

/-- `(6*n+4)/A000034(n)` -/
def P1242343599760577366.Spec : Prop :=
  ∀ n, P1242343599760577366.a n = (A166304 n : ℚ)

end A166304

/-! ## A166304.P7065611427994227654

`(3*n+2)*A040001(n+2)`
-/

namespace A166304.P7065611427994227654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) * A040001 (n + 2)

end

end A166304.P7065611427994227654

namespace A166304

/-- `(3*n+2)*A040001(n+2)` -/
def P7065611427994227654.Spec : Prop :=
  ∀ n, P7065611427994227654.a n = A166304 n

end A166304

/-! ## A166304.P5250259241198622268

`A165988(n)+A105397(n)`
-/

namespace A166304.P5250259241198622268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165988 n + A105397 n

end

end A166304.P5250259241198622268

namespace A166304

/-- `A165988(n)+A105397(n)` -/
def P5250259241198622268.Spec : Prop :=
  ∀ n, P5250259241198622268.a n = A166304 n

end A166304

/-! ## A166304.P17656984448089760912

`A089146(n)*A302773(n)`
-/

namespace A166304.P17656984448089760912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089146 n * A302773 n

end

end A166304.P17656984448089760912

namespace A166304

/-- `A089146(n)*A302773(n)` -/
def P17656984448089760912.Spec : Prop :=
  ∀ n, P17656984448089760912.a n = A166304 n

end A166304

/-! ## A166304.P5849711531044295473

`A017617(n)/A010694(n)`
-/

namespace A166304.P5849711531044295473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017617 n : ℚ) / (A010694 n : ℚ)

end

end A166304.P5849711531044295473

namespace A166304

/-- `A017617(n)/A010694(n)` -/
def P5849711531044295473.Spec : Prop :=
  ∀ n, P5849711531044295473.a n = (A166304 n : ℚ)

end A166304

/-! ## A166304.P7437777270098603444

`gcd(A016791(n), A016957(n))`
-/

namespace A166304.P7437777270098603444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016791 n) (A016957 n)

end

end A166304.P7437777270098603444

namespace A166304

/-- `gcd(A016791(n), A016957(n))` -/
def P7437777270098603444.Spec : Prop :=
  ∀ n, (P7437777270098603444.a n : ℤ) = A166304 n

end A166304

/-! ## A166304.P10995769643891150227

`gcd(A016792(n), A061506(n))`
-/

namespace A166304.P10995769643891150227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016792 n) (A061506 n)

end

end A166304.P10995769643891150227

namespace A166304

/-- `gcd(A016792(n), A061506(n))` -/
def P10995769643891150227.Spec : Prop :=
  ∀ n, (P10995769643891150227.a n : ℤ) = A166304 n

end A166304

/-! ## A166304.P18128739233306231073

`A143988(n+1)-A166138(n)`
-/

namespace A166304.P18128739233306231073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (n + 1) - A166138 n

end

end A166304.P18128739233306231073

namespace A166304

/-- `A143988(n+1)-A166138(n)` -/
def P18128739233306231073.Spec : Prop :=
  ∀ n, P18128739233306231073.a n = A166304 n

end A166304

/-! ## A166304.P18445642932568510228

`2/A000034(n)*A016789(n)`
-/

namespace A166304.P18445642932568510228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A016789 n : ℚ)

end

end A166304.P18445642932568510228

namespace A166304

/-- `2/A000034(n)*A016789(n)` -/
def P18445642932568510228.Spec : Prop :=
  ∀ n, P18445642932568510228.a n = (A166304 n : ℚ)

end A166304

/-!
# A166305: Even semiprimes k such that the largest prime factor + 8 is a prime. Also semiprimes k such that k+16 is semiprime.

The programs for A166305, there is no canonical definition to state claims against.
-/

/-! ## A166305.P9918624568953079643

`2*A023202(n+1)`
-/

namespace A166305.P9918624568953079643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023202 (n + 1)

end

end A166305.P9918624568953079643

/-! ## A166305.P7511131806505546723

`2*A156320(Δ[n²])`
-/

namespace A166305.P7511131806505546723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A156320 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A166305.P7511131806505546723

/-! ## A166305.P7011179691850261813

`2*p?[A015915(n+1)]`
-/

namespace A166305.P7011179691850261813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166305.P7011179691850261813

/-! ## A166305.P3856898853505149669

`2*p?[A262085(n+1)]`
-/

namespace A166305.P3856898853505149669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166305.P3856898853505149669

/-! ## A166305.P16434775622978992951

`2*p?[A028815(n)-9]`
-/

namespace A166305.P16434775622978992951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166305.P16434775622978992951

/-!
# A166306: Denominator of Bernoulli_n multiplied by the sum of the associated inverse primes in the Staudt-Clausen theorem, n=1, 2, 4, 6, 8, 10,...

The programs for A166306, there is no canonical definition to state claims against.
-/

/-! ## A166306.P16719201038010505652

`gcd(floor(1/(n+1)), A027761(A028310(n)))`
-/

namespace A166306.P16719201038010505652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊1 / (n + 1 : ℚ)⌋ (A027761 (A028310 n).toNat)

end

end A166306.P16719201038010505652

/-! ## A166306.P5366136593718128605

`A027759(comp[2*(n+1)]+1)`
-/

namespace A166306.P5366136593718128605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027759 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A166306.P5366136593718128605

/-! ## A166306.P5698477776765886826

`or(1, A027759(A004277(n)))`
-/

namespace A166306.P5698477776765886826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A027759 (A004277 n).toNat)

end

end A166306.P5698477776765886826

/-! ## A166306.P5747490451694786573

`or(1, A027759(Δ[A010000(n)]-1))`
-/

namespace A166306.P5747490451694786573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A027759 (f1 (n + 1) - f1 n - 1).toNat)

end

end A166306.P5747490451694786573

/-! ## A166306.P11222659698529344230

`A027759(Δ[A010000(n)]-1)^A134824(n)²`
-/

namespace A166306.P11222659698529344230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027759 (f1 (n + 1) - f1 n - 1).toNat : ℚ) ^ (A134824 n ^ 2 : ℤ)

end

end A166306.P11222659698529344230

/-! ## A166306.P15780522527897336741

`A027759(Δ[A010000(n)]-1)+A000038(n+1)`
-/

namespace A166306.P15780522527897336741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027759 (f1 (n + 1) - f1 n - 1).toNat + A000038 (n + 1)

end

end A166306.P15780522527897336741

/-! ## A166306.P6382657411394689768

`A027759(Δ[A010000(n)]-1)^A019428(2*n)`
-/

namespace A166306.P6382657411394689768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027759 (f1 (n + 1) - f1 n - 1).toNat : ℚ) ^ (A019428 (2 * n) : ℤ)

end

end A166306.P6382657411394689768

/-! ## A166306.P10418524382137592929

`A027759(2*n+1)*A027759(A004277(n))`
-/

namespace A166306.P10418524382137592929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027759 (2 * n + 1) * A027759 (A004277 n).toNat

end

end A166306.P10418524382137592929

/-! ## A166306.P2536110431194795044

`A027759(2*n+1)*A027759(A004275(n+1))`
-/

namespace A166306.P2536110431194795044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027759 (2 * n + 1) * A027759 (A004275 (n + 1)).toNat

end

end A166306.P2536110431194795044

/-! ## A166306.P14588933117471409856

`A027759(A004277(n))/A027759(A109371(n+1))`
-/

namespace A166306.P14588933117471409856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027759 (A004277 n).toNat : ℚ) / (A027759 (A109371 (n + 1)).toNat : ℚ)

end

end A166306.P14588933117471409856

/-! ## A166306.P17727063042532004185

`A014577(n²)*A027759(A004277(n))`
-/

namespace A166306.P17727063042532004185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (n ^ 2) * A027759 (A004277 n).toNat

end

end A166306.P17727063042532004185

/-!
# A166307: The smallest prime in some interval of the form (2*prime(k),2*prime(k+1)) if this interval contains at least 2 primes.

The programs for A166307, the canonical program `A166307.P3691920292756503376` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166307 has offset 1).

The definition of A166307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166307.P3691920292756503376

`p?[A059786(n+1)%A059788(n+2)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A166307

/-- `p?[A059786(n+1)%A059788(n+2)]` -/
def P3691920292756503376.Spec : Prop :=
  ∀ n, P3691920292756503376.a n = A166307 (n + 1)

theorem P3691920292756503376.correct : P3691920292756503376.Spec := by
  intro n
  simp only [A166307, Nat.add_sub_cancel]

end A166307

/-! ## A166307.P14578025047957363297

`p?[A151800(A001747(n+1))%A059788(n+1)]`
-/

namespace A166307.P14578025047957363297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151800 (A001747 (n + 1)).toNat) (A059788 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166307.P14578025047957363297

namespace A166307

/-- `p?[A151800(A001747(n+1))%A059788(n+1)]` -/
def P14578025047957363297.Spec : Prop :=
  ∀ n, P14578025047957363297.a n = A166307 (n + 1)

end A166307

/-! ## A166307.P5987158894839633532

`A164368(lt[A008336(n+1), A000537(n)])`
-/

namespace A166307.P5987158894839633532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164368 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A166307.P5987158894839633532

namespace A166307

/-- `A164368(lt[A008336(n+1), A000537(n)])` -/
def P5987158894839633532.Spec : Prop :=
  ∀ n, P5987158894839633532.a n = A166307 (n + 1)

end A166307

/-! ## A166307.P5053050928363965062

`A104272(lt[A182577(n), n])`
-/

namespace A166307.P5053050928363965062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182577 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A166307.P5053050928363965062

namespace A166307

/-- `A104272(lt[A182577(n), n])` -/
def P5053050928363965062.Spec : Prop :=
  ∀ n, P5053050928363965062.a n = A166307 (n + 1)

end A166307

/-! ## A166307.P14436460400004450342

`A164368(record[A095056(2*n+3)])`
-/

namespace A166307.P14436460400004450342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095056 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164368 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A166307.P14436460400004450342

namespace A166307

/-- `A164368(record[A095056(2*n+3)])` -/
def P14436460400004450342.Spec : Prop :=
  ∀ n, P14436460400004450342.a n = A166307 (n + 1)

end A166307

/-!
# A166311: Numbers whose sum of digits is 11.

The programs for A166311, the canonical program `A166311.P15573441771159262399` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166311 has offset 1).

The definition of A166311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166311.P15573441771159262399

`eq[11, A007953(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A166311

/-- `eq[11, A007953(n)]` -/
def P15573441771159262399.Spec : Prop :=
  ∀ n, (P15573441771159262399.a n : ℤ) = A166311 (n + 1)

theorem P15573441771159262399.correct : P15573441771159262399.Spec := by
  intro n
  simp only [A166311, Nat.add_sub_cancel]

end A166311

/-! ## A166311.P856858933845796126

`eq[3, A122481(n)/5]`
-/

namespace A166311.P856858933845796126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122481 n : ℚ) / 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A166311.P856858933845796126

namespace A166311

/-- `eq[3, A122481(n)/5]` -/
def P856858933845796126.Spec : Prop :=
  ∀ n, (P856858933845796126.a n : ℤ) = A166311 (n + 1)

end A166311

/-! ## A166311.P11053399873618457018

`eq[1, A136614(n)-12]`
-/

namespace A166311.P11053399873618457018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136614 n - 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166311.P11053399873618457018

namespace A166311

/-- `eq[1, A136614(n)-12]` -/
def P11053399873618457018.Spec : Prop :=
  ∀ n, (P11053399873618457018.a n : ℤ) = A166311 (n + 1)

end A166311

/-! ## A166311.P16117235246930732860

`eq[n+11, A062028(n)]`
-/

namespace A166311.P16117235246930732860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166311.P16117235246930732860

namespace A166311

/-- `eq[n+11, A062028(n)]` -/
def P16117235246930732860.Spec : Prop :=
  ∀ n, (P16117235246930732860.a n : ℤ) = A166311 (n + 1)

end A166311

/-! ## A166311.P16000129885670501965

`eq[2, dr(n)*A053837(n)]`
-/

namespace A166311.P16000129885670501965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ) * A053837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166311.P16000129885670501965

namespace A166311

/-- `eq[2, dr(n)*A053837(n)]` -/
def P16000129885670501965.Spec : Prop :=
  ∀ n, (P16000129885670501965.a n : ℤ) = A166311 (n + 1)

end A166311

/-! ## A166311.P823930643175540010

`eq[A040110(n), A169805(n)]`
-/

namespace A166311.P823930643175540010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040110 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166311.P823930643175540010

namespace A166311

/-- `eq[A040110(n), A169805(n)]` -/
def P823930643175540010.Spec : Prop :=
  ∀ n, (P823930643175540010.a n : ℤ) = A166311 (n + 1)

end A166311

/-! ## A166311.P16188415831874039119

`eq[A057147(n), A168104(n)]`
-/

namespace A166311.P16188415831874039119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057147 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168104 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166311.P16188415831874039119

namespace A166311

/-- `eq[A057147(n), A168104(n)]` -/
def P16188415831874039119.Spec : Prop :=
  ∀ n, (P16188415831874039119.a n : ℤ) = A166311 (n + 1)

end A166311

/-! ## A166311.P17236198583692220547

`eq[A070412(n), A169805(n)]`
-/

namespace A166311.P17236198583692220547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070412 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166311.P17236198583692220547

namespace A166311

/-- `eq[A070412(n), A169805(n)]` -/
def P17236198583692220547.Spec : Prop :=
  ∀ n, (P17236198583692220547.a n : ℤ) = A166311 (n + 1)

end A166311

/-! ## A166311.P13726234353209320458

`eq[A122481(n), A168097(n)]`
-/

namespace A166311.P13726234353209320458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122481 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168097 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166311.P13726234353209320458

namespace A166311

/-- `eq[A122481(n), A168097(n)]` -/
def P13726234353209320458.Spec : Prop :=
  ∀ n, (P13726234353209320458.a n : ℤ) = A166311 (n + 1)

end A166311

/-! ## A166311.P12003309198283067398

`eq[2, A169669(A118881(n)+1)]`
-/

namespace A166311.P12003309198283067398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169669 (A118881 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166311.P12003309198283067398

namespace A166311

/-- `eq[2, A169669(A118881(n)+1)]` -/
def P12003309198283067398.Spec : Prop :=
  ∀ n, (P12003309198283067398.a n : ℤ) = A166311 (n + 1)

end A166311

/-! ## A166311.P10415232107258139457

`eq[9, A064524(A169805(n)/2)]`
-/

namespace A166311.P10415232107258139457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064524 (SequenceMachineLib.roundAway ((A169805 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166311.P10415232107258139457

namespace A166311

/-- `eq[9, A064524(A169805(n)/2)]` -/
def P10415232107258139457.Spec : Prop :=
  ∀ n, (P10415232107258139457.a n : ℤ) = A166311 (n + 1)

end A166311

/-! ## A166311.P15988161549402032258

`eq[A088838(n+1), A136614(n)]`
-/

namespace A166311.P15988161549402032258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166311.P15988161549402032258

namespace A166311

/-- `eq[A088838(n+1), A136614(n)]` -/
def P15988161549402032258.Spec : Prop :=
  ∀ n, (P15988161549402032258.a n : ℤ) = A166311 (n + 1)

end A166311

/-! ## A166311.P8855241017984171990

`eq[A122481(n), A304567(n+1)]`
-/

namespace A166311.P8855241017984171990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122481 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304567 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166311.P8855241017984171990

namespace A166311

/-- `eq[A122481(n), A304567(n+1)]` -/
def P8855241017984171990.Spec : Prop :=
  ∀ n, (P8855241017984171990.a n : ℤ) = A166311 (n + 1)

end A166311

/-! ## A166311.P8056691352040299803

`eq[1, A035930(A062028(n)-n)]`
-/

namespace A166311.P8056691352040299803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035930 (A062028 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166311.P8056691352040299803

namespace A166311

/-- `eq[1, A035930(A062028(n)-n)]` -/
def P8056691352040299803.Spec : Prop :=
  ∀ n, (P8056691352040299803.a n : ℤ) = A166311 (n + 1)

end A166311

/-! ## A166311.P10376671173116825612

`eq[A169805(n)+2, A040132(n)]`
-/

namespace A166311.P10376671173116825612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040132 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166311.P10376671173116825612

namespace A166311

/-- `eq[A169805(n)+2, A040132(n)]` -/
def P10376671173116825612.Spec : Prop :=
  ∀ n, (P10376671173116825612.a n : ℤ) = A166311 (n + 1)

end A166311

/-! ## A166311.P4796215173077589389

`eq[2, A062028(n)-A020723(n)]`
-/

namespace A166311.P4796215173077589389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n - A020723 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166311.P4796215173077589389

namespace A166311

/-- `eq[2, A062028(n)-A020723(n)]` -/
def P4796215173077589389.Spec : Prop :=
  ∀ n, (P4796215173077589389.a n : ℤ) = A166311 (n + 1)

end A166311

/-! ## A166311.P12465001961096790516

`eq[2, A045512(A062028(n)-n)]`
-/

namespace A166311.P12465001961096790516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045512 (A062028 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166311.P12465001961096790516

namespace A166311

/-- `eq[2, A045512(A062028(n)-n)]` -/
def P12465001961096790516.Spec : Prop :=
  ∀ n, (P12465001961096790516.a n : ℤ) = A166311 (n + 1)

end A166311

/-! ## A166311.P9064519368741315937

`eq[2, A055012(A062028(n)-n)]`
-/

namespace A166311.P9064519368741315937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055012 (A062028 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166311.P9064519368741315937

namespace A166311

/-- `eq[2, A055012(A062028(n)-n)]` -/
def P9064519368741315937.Spec : Prop :=
  ∀ n, (P9064519368741315937.a n : ℤ) = A166311 (n + 1)

end A166311

/-! ## A166311.P1944669206161463979

`eq[2, A055013(A062028(n)-n)]`
-/

namespace A166311.P1944669206161463979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055013 (A062028 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166311.P1944669206161463979

namespace A166311

/-- `eq[2, A055013(A062028(n)-n)]` -/
def P1944669206161463979.Spec : Prop :=
  ∀ n, (P1944669206161463979.a n : ℤ) = A166311 (n + 1)

end A166311

/-! ## A166311.P6221115075032344035

`eq[2, A055014(A062028(n)-n)]`
-/

namespace A166311.P6221115075032344035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055014 (A062028 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166311.P6221115075032344035

namespace A166311

/-- `eq[2, A055014(A062028(n)-n)]` -/
def P6221115075032344035.Spec : Prop :=
  ∀ n, (P6221115075032344035.a n : ℤ) = A166311 (n + 1)

end A166311

/-!
# A166312: Number of 1's in binary expansion of A000326(n).

The programs for A166312, the canonical program `A166312.P18179176690285467786` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166312 has offset 0).

The definition of A166312 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166312.P18179176690285467786

`A000120(A000326(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A166312

/-- `A000120(A000326(n))` -/
def P18179176690285467786.Spec : Prop :=
  ∀ n, P18179176690285467786.a n = A166312 n

theorem P18179176690285467786.correct : P18179176690285467786.Spec := by
  intro n
  simp only [A166312]

end A166312

/-! ## A166312.P4738460592776743668

`log2(A001316(C(n, 2)+n²))`
-/

namespace A166312.P4738460592776743668
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 (Nat.choose n 2 + n ^ 2) : ℝ)

end

end A166312.P4738460592776743668

namespace A166312

/-- `log2(A001316(C(n, 2)+n²))` -/
def P4738460592776743668.Spec : Prop :=
  ∀ n, P4738460592776743668.a n = (A166312 n : ℝ)

end A166312

/-! ## A166312.P6241004466976578677

`log2(A001316(C(3*n, 2)/3))`
-/

namespace A166312.P6241004466976578677
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 (SequenceMachineLib.roundAway ((Nat.choose (3 * n) 2 : ℚ) / 3)).toNat : ℝ)

end

end A166312.P6241004466976578677

namespace A166312

/-- `log2(A001316(C(3*n, 2)/3))` -/
def P6241004466976578677.Spec : Prop :=
  ∀ n, P6241004466976578677.a n = (A166312 n : ℝ)

end A166312

/-! ## A166312.P613872526096940455

`log2(A001316(3*C(n, 2)+n))`
-/

namespace A166312.P613872526096940455
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 (3 * Nat.choose n 2 + n) : ℝ)

end

end A166312.P613872526096940455

namespace A166312

/-- `log2(A001316(3*C(n, 2)+n))` -/
def P613872526096940455.Spec : Prop :=
  ∀ n, P613872526096940455.a n = (A166312 n : ℝ)

end A166312

/-! ## A166312.P4199480121801829417

`log2(A001316(2*n²-∑[n]))`
-/

namespace A166312.P4199480121801829417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 (2 * n ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A166312.P4199480121801829417

namespace A166312

/-- `log2(A001316(2*n²-∑[n]))` -/
def P4199480121801829417.Spec : Prop :=
  ∀ n, P4199480121801829417.a n = (A166312 n : ℝ)

end A166312

/-! ## A166312.P7131954912884326455

`A001222(A001316(n²+∑[n]-n))`
-/

namespace A166312.P7131954912884326455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 ((n ^ 2 : ℤ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))).toNat).toNat

end

end A166312.P7131954912884326455

namespace A166312

/-- `A001222(A001316(n²+∑[n]-n))` -/
def P7131954912884326455.Spec : Prop :=
  ∀ n, P7131954912884326455.a n = A166312 n

end A166312

/-! ## A166312.P4382941431465502836

`A001222(A001316(C(n, 2)+n²)+char[1])`
-/

namespace A166312.P4382941431465502836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 (Nat.choose n 2 + n ^ 2) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A166312.P4382941431465502836

namespace A166312

/-- `A001222(A001316(C(n, 2)+n²)+char[1])` -/
def P4382941431465502836.Spec : Prop :=
  ∀ n, P4382941431465502836.a n = A166312 n

end A166312

/-! ## A166312.P14130909360470500077

`A001222(A001316(C(n, 2)+n²)%(53*n-13))`
-/

namespace A166312.P14130909360470500077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A001316 (Nat.choose n 2 + n ^ 2)) ((53 * n : ℤ) - 13)).toNat

end

end A166312.P14130909360470500077

namespace A166312

/-- `A001222(A001316(C(n, 2)+n²)%(53*n-13))` -/
def P14130909360470500077.Spec : Prop :=
  ∀ n, P14130909360470500077.a n = A166312 n

end A166312

/-! ## A166312.P17034991428372540338

`A001222(and(1, 2*n+1)*A001316(C(n, 2)+n²))`
-/

namespace A166312.P17034991428372540338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((Nat.land 1 (2 * n + 1) : ℤ) * A001316 (Nat.choose n 2 + n ^ 2)).toNat

end

end A166312.P17034991428372540338

namespace A166312

/-- `A001222(and(1, 2*n+1)*A001316(C(n, 2)+n²))` -/
def P17034991428372540338.Spec : Prop :=
  ∀ n, P17034991428372540338.a n = A166312 n

end A166312

/-! ## A166312.P17698628202054715629

`A001222(A001316(C(n, 2)+n²))%A000027(n+1)`
-/

namespace A166312.P17698628202054715629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A001316 (Nat.choose n 2 + n ^ 2)).toNat) (A000027 (n + 1))

end

end A166312.P17698628202054715629

namespace A166312

/-- `A001222(A001316(C(n, 2)+n²))%A000027(n+1)` -/
def P17698628202054715629.Spec : Prop :=
  ∀ n, P17698628202054715629.a n = A166312 n

end A166312

/-! ## A166312.P6174312547552897174

`A001222(A060632(3*n²-n))`
-/

namespace A166312.P6174312547552897174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A060632 (3 * n ^ 2 - n)).toNat

end

end A166312.P6174312547552897174

namespace A166312

/-- `A001222(A060632(3*n²-n))` -/
def P6174312547552897174.Spec : Prop :=
  ∀ n, P6174312547552897174.a n = A166312 n

end A166312

/-!
# A166314: Number of 1's in binary expansion of A000124(n).

The programs for A166314, the canonical program `A166314.P17635709383241894212` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166314 has offset 0).

The definition of A166314 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166314.P17635709383241894212

`A000120(A000124(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A166314

/-- `A000120(A000124(n))` -/
def P17635709383241894212.Spec : Prop :=
  ∀ n, P17635709383241894212.a n = A166314 n

theorem P17635709383241894212.correct : P17635709383241894212.Spec := by
  intro n
  simp only [A166314]

end A166314

/-! ## A166314.P13154164554371895247

`log2(A001316(∑[n]+1))`
-/

namespace A166314.P13154164554371895247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℝ)

end

end A166314.P13154164554371895247

namespace A166314

/-- `log2(A001316(∑[n]+1))` -/
def P13154164554371895247.Spec : Prop :=
  ∀ n, P13154164554371895247.a n = (A166314 n : ℝ)

end A166314

/-! ## A166314.P1329710371051107317

`floor(log2(A001316(C(n, 2)+1+n)+1))`
-/

namespace A166314.P1329710371051107317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A001316 (Nat.choose n 2 + 1 + n) + 1).toNat

end

end A166314.P1329710371051107317

namespace A166314

/-- `floor(log2(A001316(C(n, 2)+1+n)+1))` -/
def P1329710371051107317.Spec : Prop :=
  ∀ n, (P1329710371051107317.a n : ℤ) = A166314 n

end A166314

/-! ## A166314.P5940342311089770992

`val(A001316(A000217(n)+1), 2)`
-/

namespace A166314.P5940342311089770992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001316 (A000217 n + 1).toNat).toNat 2

end

end A166314.P5940342311089770992

namespace A166314

/-- `val(A001316(A000217(n)+1), 2)` -/
def P5940342311089770992.Spec : Prop :=
  ∀ n, (P5940342311089770992.a n : ℤ) = A166314 n

end A166314

/-! ## A166314.P14857639786115695615

`A001511(A001316(∑[n]+1)/2)`
-/

namespace A166314.P14857639786115695615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.roundAway ((A001316 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 2)).toNat

end

end A166314.P14857639786115695615

namespace A166314

/-- `A001511(A001316(∑[n]+1)/2)` -/
def P14857639786115695615.Spec : Prop :=
  ∀ n, P14857639786115695615.a n = A166314 n

end A166314

/-! ## A166314.P8803071905191155182

`A001222(lcm(2, A001316(∑[n]+1)))`
-/

namespace A166314.P8803071905191155182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm 2 (A001316 (∑ j ∈ Finset.range (n + 1), f1 j + 1)))

end

end A166314.P8803071905191155182

namespace A166314

/-- `A001222(lcm(2, A001316(∑[n]+1)))` -/
def P8803071905191155182.Spec : Prop :=
  ∀ n, P8803071905191155182.a n = A166314 n

end A166314

/-! ## A166314.P12972637454556198875

`A001222(A001316(∑[n+1]-n))`
-/

namespace A166314.P12972637454556198875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 (∑ j ∈ Finset.range (n + 1), f1 j - n)).toNat

end

end A166314.P12972637454556198875

namespace A166314

/-- `A001222(A001316(∑[n+1]-n))` -/
def P12972637454556198875.Spec : Prop :=
  ∀ n, P12972637454556198875.a n = A166314 n

end A166314

/-! ## A166314.P12981239227169537017

`A001222(A001316(∑[n]+1)%A001359(n+1))`
-/

namespace A166314.P12981239227169537017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A001316 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) (A001359 (n + 1))).toNat

end

end A166314.P12981239227169537017

namespace A166314

/-- `A001222(A001316(∑[n]+1)%A001359(n+1))` -/
def P12981239227169537017.Spec : Prop :=
  ∀ n, P12981239227169537017.a n = A166314 n

end A166314

/-! ## A166314.P16611471637278879238

`A000523(A209639(∑[n]+1))`
-/

namespace A166314.P16611471637278879238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A209639 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A166314.P16611471637278879238

namespace A166314

/-- `A000523(A209639(∑[n]+1))` -/
def P16611471637278879238.Spec : Prop :=
  ∀ n, P16611471637278879238.a n = A166314 n

end A166314

/-! ## A166314.P3539720759603157499

`∑{digits}[A007088(∑[n]+1), #]`
-/

namespace A166314.P3539720759603157499
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A166314.P3539720759603157499

namespace A166314

/-- `∑{digits}[A007088(∑[n]+1), #]` -/
def P3539720759603157499.Spec : Prop :=
  ∀ n, (P3539720759603157499.a n : ℤ) = A166314 n

end A166314

/-! ## A166314.P2954680492583316719

`round(log2(A001316(n²+2+n)))`
-/

namespace A166314.P2954680492583316719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A001316 (n ^ 2 + 2 + n) : ℝ))

end

end A166314.P2954680492583316719

namespace A166314

/-- `round(log2(A001316(n²+2+n)))` -/
def P2954680492583316719.Spec : Prop :=
  ∀ n, P2954680492583316719.a n = A166314 n

end A166314

/-! ## A166314.P7853466741287523975

`val(A001316(A014206(n)), 2)`
-/

namespace A166314.P7853466741287523975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001316 (A014206 n).toNat).toNat 2

end

end A166314.P7853466741287523975

namespace A166314

/-- `val(A001316(A014206(n)), 2)` -/
def P7853466741287523975.Spec : Prop :=
  ∀ n, (P7853466741287523975.a n : ℤ) = A166314 n

end A166314

/-! ## A166314.P5778177557639863420

`A001222(A268444(∑[n]+1))`
-/

namespace A166314.P5778177557639863420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A268444 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A166314.P5778177557639863420

namespace A166314

/-- `A001222(A268444(∑[n]+1))` -/
def P5778177557639863420.Spec : Prop :=
  ∀ n, P5778177557639863420.a n = A166314 n

end A166314

/-! ## A166314.P7604157200327113962

`A005811(A292601(∑[n]+1))`
-/

namespace A166314.P7604157200327113962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A292601 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A166314.P7604157200327113962

namespace A166314

/-- `A005811(A292601(∑[n]+1))` -/
def P7604157200327113962.Spec : Prop :=
  ∀ n, P7604157200327113962.a n = A166314 n

end A166314

/-! ## A166314.P2888363743384553345

`A000120(A006257(∑[n]+1))`
-/

namespace A166314.P2888363743384553345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A006257 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A166314.P2888363743384553345

namespace A166314

/-- `A000120(A006257(∑[n]+1))` -/
def P2888363743384553345.Spec : Prop :=
  ∀ n, P2888363743384553345.a n = A166314 n

end A166314

/-! ## A166314.P628093736990469102

`A000120(A241807(n))`
-/

namespace A166314.P628093736990469102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A241807 n).toNat

end

end A166314.P628093736990469102

namespace A166314

/-- `A000120(A241807(n))` -/
def P628093736990469102.Spec : Prop :=
  ∀ n, P628093736990469102.a n = A166314 n

end A166314

/-! ## A166314.P14914215185417011785

`A000120(A213671(n+1))`
-/

namespace A166314.P14914215185417011785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A213671 (n + 1)).toNat

end

end A166314.P14914215185417011785

namespace A166314

/-- `A000120(A213671(n+1))` -/
def P14914215185417011785.Spec : Prop :=
  ∀ n, P14914215185417011785.a n = A166314 n

end A166314

/-! ## A166314.P13828884336966339588

`A000120(A000265(∑[n]+1))`
-/

namespace A166314.P13828884336966339588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000265 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A166314.P13828884336966339588

namespace A166314

/-- `A000120(A000265(∑[n]+1))` -/
def P13828884336966339588.Spec : Prop :=
  ∀ n, P13828884336966339588.a n = A166314 n

end A166314

/-! ## A166314.P3508374504146173354

`A000120(∑[n]+1)`
-/

namespace A166314.P3508374504146173354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A166314.P3508374504146173354

namespace A166314

/-- `A000120(∑[n]+1)` -/
def P3508374504146173354.Spec : Prop :=
  ∀ n, P3508374504146173354.a n = A166314 n

end A166314

/-! ## A166314.P1903044143246907444

`A048881(∑[n])+1`
-/

namespace A166314.P1903044143246907444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A166314.P1903044143246907444

namespace A166314

/-- `A048881(∑[n])+1` -/
def P1903044143246907444.Spec : Prop :=
  ∀ n, P1903044143246907444.a n = A166314 n

end A166314

/-!
# A166315: Lexicographically earliest binary de Bruijn sequences, B(2,n).

The programs for A166315, there is no canonical definition to state claims against.
-/

/-! ## A166315.P7196177036551321238

`A056744(A005934(n+1))/A005934(n+1)`
-/

namespace A166315.P7196177036551321238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056744 (A005934 (n + 1)).toNat : ℚ) / (A005934 (n + 1) : ℚ)

end

end A166315.P7196177036551321238

/-!
# A166316: Lexicographically largest binary de Bruijn sequences, B(2,n).

The programs for A166316, there is no canonical definition to state claims against.
-/

/-! ## A166316.P14584301475731234501

`floor(abs(A342298(n)/A171449(n)))`
-/

namespace A166316.P14584301475731234501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(A342298 n : ℚ) / (A171449 n : ℚ)|⌋

end

end A166316.P14584301475731234501

/-!
# A166317: Exponential Riordan array [sec(2x), arctanh(tan(x))].

The programs for A166317, there is no canonical definition to state claims against.
-/

/-! ## A166317.P3190038735065648637

`2^(C(comp[∑[n]]-n, 2)-(n+1))*A147309(n)`
-/

namespace A166317.P3190038735065648637
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) * (A147309 n : ℚ)

end

end A166317.P3190038735065648637

/-! ## A166317.P2817169900140290785

`A130321(n)*A147309(n)`
-/

namespace A166317.P2817169900140290785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A147309 n

end

end A166317.P2817169900140290785

/-! ## A166317.P5235233294802728951

`abs(A130321(n)*A147308(n))`
-/

namespace A166317.P5235233294802728951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130321 n * A147308 n|

end

end A166317.P5235233294802728951

/-! ## A166317.P13608846997600843585

`A116949(n)²*A147309(n)`
-/

namespace A166317.P13608846997600843585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116949 n ^ 2 * A147309 n

end

end A166317.P13608846997600843585

/-! ## A166317.P16287856091483105030

`A156663(n)²*A147309(n)`
-/

namespace A166317.P16287856091483105030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156663 n ^ 2 * A147309 n

end

end A166317.P16287856091483105030

/-! ## A166317.P12854435039367062242

`sqrt(A262616(n))*A147309(n)`
-/

namespace A166317.P12854435039367062242
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A147309 n : ℝ)

end

end A166317.P12854435039367062242

/-! ## A166317.P16975671345004937248

`2^A025581(n)*A147309(n)`
-/

namespace A166317.P16975671345004937248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A025581 n : ℤ) * (A147309 n : ℚ)

end

end A166317.P16975671345004937248

/-! ## A166317.P5261959965481041396

`sqrt(A147308(n)²*A262616(n))`
-/

namespace A166317.P5261959965481041396
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A147308 n ^ 2 * A262616 n : ℝ)

end

end A166317.P5261959965481041396

/-! ## A166317.P17727695258444847957

`A000079(A025581(n))*A147309(n)`
-/

namespace A166317.P17727695258444847957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A147309 n

end

end A166317.P17727695258444847957

/-! ## A166317.P7904480958761926938

`A006519(A054582(n))*A147309(n)`
-/

namespace A166317.P7904480958761926938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A054582 n).toNat * A147309 n

end

end A166317.P7904480958761926938

/-!
# A166318: Exponential Riordan array [sech(2x), arctan(tanh(x))].

The programs for A166318, there is no canonical definition to state claims against.
-/

/-! ## A166318.P4958959337856550461

`2^(C(comp[∑[n]]-n, 2)-(n+1))*A147308(n)`
-/

namespace A166318.P4958959337856550461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) * (A147308 n : ℚ)

end

end A166318.P4958959337856550461

/-! ## A166318.P94705541800452793

`A106470(n)*A166317(n)`
-/

namespace A166318.P94705541800452793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106470 n * A166317 n

end

end A166318.P94705541800452793

/-! ## A166318.P2701941294859668982

`A130321(n)*A147308(n)`
-/

namespace A166318.P2701941294859668982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A147308 n

end

end A166318.P2701941294859668982

/-! ## A166318.P1421665204883990987

`A117568(n)*A166317(n)`
-/

namespace A166318.P1421665204883990987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117568 n * A166317 n

end

end A166318.P1421665204883990987

/-! ## A166318.P5154159851886756217

`A166317(n)*A369736(n)`
-/

namespace A166318.P5154159851886756217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166317 n * A369736 n

end

end A166318.P5154159851886756217

/-! ## A166318.P7109782845799013597

`A116949(n)²*A147308(n)`
-/

namespace A166318.P7109782845799013597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116949 n ^ 2 * A147308 n

end

end A166318.P7109782845799013597

/-! ## A166318.P16746982334082154545

`A156663(n)²*A147308(n)`
-/

namespace A166318.P16746982334082154545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156663 n ^ 2 * A147308 n

end

end A166318.P16746982334082154545

/-! ## A166318.P4479625814168703714

`sqrt(A262616(n))*A147308(n)`
-/

namespace A166318.P4479625814168703714
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A147308 n : ℝ)

end

end A166318.P4479625814168703714

/-! ## A166318.P10942336092609816193

`A130194(n+1)*A166317(n)`
-/

namespace A166318.P10942336092609816193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130194 (n + 1) * A166317 n

end

end A166318.P10942336092609816193

/-! ## A166318.P12044647054615952283

`2^A025581(n)*A147308(n)`
-/

namespace A166318.P12044647054615952283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A025581 n : ℤ) * (A147308 n : ℚ)

end

end A166318.P12044647054615952283

/-!
# A166319: Numbers that are >= the sum of squares of their prime divisors (with multiplicity).

The programs for A166319, there is no canonical definition to state claims against.
-/

/-! ## A166319.P16172304307793044794

`lt[A067666(A028310(n)), n+1]`
-/

namespace A166319.P16172304307793044794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067666 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A166319.P16172304307793044794

/-! ## A166319.P10431907013332265

`A099309(2*n+1)%∑[A373603(n+1)]`
-/

namespace A166319.P10431907013332265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099309 (2 * n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A166319.P10431907013332265

/-! ## A166319.P15232211077706467786

`A099309(2*n+1)%A000027(A023010(n))`
-/

namespace A166319.P15232211077706467786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099309 (2 * n + 1)) (A000027 (A023010 n).toNat)

end

end A166319.P15232211077706467786

/-!
# A166322: The number of times a point sum n is attained in all 7^6 permutations of throwing 7 dice.

The programs for A166322, there is no canonical definition to state claims against.
-/

/-! ## A166322.P6121959365861070223

`A133332(n+57)`
-/

namespace A166322.P6121959365861070223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133332 (n + 57)

end

end A166322.P6121959365861070223

/-! ## A166322.P5537386287449318400

`A061676(A056119(n)+28)`
-/

namespace A166322.P5537386287449318400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061676 (A056119 n + 28).toNat

end

end A166322.P5537386287449318400

/-! ## A166322.P13151419644631682056

`A063260(A135600(n+1)+12)`
-/

namespace A166322.P13151419644631682056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063260 (A135600 (n + 1) + 12).toNat

end

end A166322.P13151419644631682056

/-! ## A166322.P15732411688722328706

`A213889(A056119(n+1)+28)`
-/

namespace A166322.P15732411688722328706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213889 (A056119 (n + 1) + 28).toNat

end

end A166322.P15732411688722328706

/-! ## A166322.P6678538236946703931

`A061676(A000096(n+7)-A020742(n))`
-/

namespace A166322.P6678538236946703931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061676 (A000096 (n + 7) - A020742 n).toNat

end

end A166322.P6678538236946703931

/-!
# A166326: a(n) = prime(n)^(prime(n)+1) - (prime(n)+1)^prime(n).

The programs for A166326, the canonical program `A166326.P11855077977136138580` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166326 has offset 1).

The definition of A166326 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166326.P11855077977136138580

`A007925(A000040(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A166326

/-- `A007925(A000040(n+1))` -/
def P11855077977136138580.Spec : Prop :=
  ∀ n, P11855077977136138580.a n = A166326 (n + 1)

theorem P11855077977136138580.correct : P11855077977136138580.Spec := by
  intro n
  simp only [A166326, Nat.add_sub_cancel]

end A166326

/-! ## A166326.P10317678954510611515

`A000040(n+1)^(A000040(n+1)+1)-(A000040(n+1)+1)^A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166326.P10317678954510611515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A000040 (n + 1) + 1 : ℤ) - (A000040 (n + 1) + 1 : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A166326.P10317678954510611515

namespace A166326

/-- `A000040(n+1)^(A000040(n+1)+1)-(A000040(n+1)+1)^A000040(n+1)` -/
def P10317678954510611515.Spec : Prop :=
  ∀ n, P10317678954510611515.a n = (A166326 (n + 1) : ℚ)

end A166326

/-! ## A166326.P5146119658677951192

`A007925(eq[0, A007920(n)])`
-/

namespace A166326.P5146119658677951192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A166326.P5146119658677951192

namespace A166326

/-- `A007925(eq[0, A007920(n)])` -/
def P5146119658677951192.Spec : Prop :=
  ∀ n, P5146119658677951192.a n = A166326 (n + 1)

end A166326

/-! ## A166326.P6399460513356160702

`A007925(lt[A007920(n), 1])`
-/

namespace A166326.P6399460513356160702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007925 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A166326.P6399460513356160702

namespace A166326

/-- `A007925(lt[A007920(n), 1])` -/
def P6399460513356160702.Spec : Prop :=
  ∀ n, P6399460513356160702.a n = A166326 (n + 1)

end A166326

/-! ## A166326.P622988923599529301

`record[A007925(A006530(n+1))]`
-/

namespace A166326.P622988923599529301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007925 (A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166326.P622988923599529301

namespace A166326

/-- `record[A007925(A006530(n+1))]` -/
def P622988923599529301.Spec : Prop :=
  ∀ n, P622988923599529301.a n = A166326 (n + 1)

end A166326

/-!
# A166327: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^11 = I.

The programs for A166327, there is no canonical definition to state claims against.
-/

/-! ## A166327.P14895158194555519491

`A166467(A065673(n+1))-A042950(n)`
-/

namespace A166327.P14895158194555519491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166467 (A065673 (n + 1)).toNat - A042950 n

end

end A166327.P14895158194555519491

/-! ## A166327.P2725037587957872215

`A057353(A335890(n+1))`
-/

namespace A166327.P2725037587957872215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A335890 (n + 1)).toNat

end

end A166327.P2725037587957872215

/-! ## A166327.P3688888271817890409

`∑[A080513(A296953(n)-A069958(n))]`
-/

namespace A166327.P3688888271817890409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A296953 n - A069958 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166327.P3688888271817890409

/-! ## A166327.P15914669990000398162

`A003945(n)-A054908(A266777(n+1))`
-/

namespace A166327.P15914669990000398162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A054908 (A266777 (n + 1)).toNat

end

end A166327.P15914669990000398162

/-! ## A166327.P6184414027093697393

`A170060(n)-A054908(A266777(n+1))`
-/

namespace A166327.P6184414027093697393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170060 n - A054908 (A266777 (n + 1)).toNat

end

end A166327.P6184414027093697393

/-!
# A166328: Number of reduced words of length n in Coxeter group on 4 generators S_i with relations (S_i)^2 = (S_i S_j)^11 = I.

The programs for A166328, there is no canonical definition to state claims against.
-/

/-! ## A166328.P12357179867875541565

`A000027(floor(4*3^(n-1))-A069958(n))`
-/

namespace A166328.P12357179867875541565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A069958 n).toNat

end

end A166328.P12357179867875541565

/-! ## A166328.P16943115700557796517

`floor(4*3^(n-1))-A057359(A185293(n))`
-/

namespace A166328.P16943115700557796517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A057359 (A185293 n).toNat

end

end A166328.P16943115700557796517

/-! ## A166328.P14713048929351743035

`A000027(floor(4*3^(n-1))-A035322(n+1))`
-/

namespace A166328.P14713048929351743035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A035322 (n + 1)).toNat

end

end A166328.P14713048929351743035

/-! ## A166328.P6133475531239704868

`floor(4*3^(n-1))-A344220(A147012(n+1))`
-/

namespace A166328.P6133475531239704868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A344220 (A147012 (n + 1)).toNat

end

end A166328.P6133475531239704868

/-! ## A166328.P3823024042031270848

`floor(4*3^(n-1))-A348326(A224409(n+1))`
-/

namespace A166328.P3823024042031270848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A348326 (A224409 (n + 1)).toNat

end

end A166328.P3823024042031270848

/-!
# A166329: Products of squares of 2 successive primes.

The programs for A166329, the canonical program `A166329.P12394964810192710211` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166329 has offset 1).

The definition of A166329 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166329.P12394964810192710211

`A006094(n+1)²`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A166329

/-- `A006094(n+1)²` -/
def P12394964810192710211.Spec : Prop :=
  ∀ n, P12394964810192710211.a n = A166329 (n + 1)

theorem P12394964810192710211.correct : P12394964810192710211.Spec := by
  intro n
  simp only [A166329, Nat.add_sub_cancel]

end A166329

/-! ## A166329.P18122005979128210774

`A000040(n+1)²*A000040(n+2)²`
-/

namespace A166329.P18122005979128210774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 * A000040 (n + 2) ^ 2

end

end A166329.P18122005979128210774

namespace A166329

/-- `A000040(n+1)²*A000040(n+2)²` -/
def P18122005979128210774.Spec : Prop :=
  ∀ n, P18122005979128210774.a n = A166329 (n + 1)

theorem P18122005979128210774.correct : P18122005979128210774.Spec := by
  intro n
  simp only [A166329, Nat.add_sub_cancel, A166329.P18122005979128210774.a, A166329.P12394964810192710211.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166329

/-! ## A166329.P16095074386467852896

`(A069486(n+1)/2)²`
-/

namespace A166329.P16095074386467852896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A069486 (n + 1) : ℚ) / 2) ^ 2

end

end A166329.P16095074386467852896

namespace A166329

/-- `(A069486(n+1)/2)²` -/
def P16095074386467852896.Spec : Prop :=
  ∀ n, P16095074386467852896.a n = (A166329 (n + 1) : ℚ)

theorem P16095074386467852896.correct : P16095074386467852896.Spec := by
  intro n
  simp only [A166329, Nat.add_sub_cancel, A166329.P16095074386467852896.a, A166329.P12394964810192710211.a, A006094, A006094.P10257567645245129766.a, A069486, A069486.P4196932283638993766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166329

/-! ## A166329.P8654532684197705928

`A065091(n+1)*A251720(n+1)`
-/

namespace A166329.P8654532684197705928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) * A251720 (n + 1)

end

end A166329.P8654532684197705928

namespace A166329

/-- `A065091(n+1)*A251720(n+1)` -/
def P8654532684197705928.Spec : Prop :=
  ∀ n, P8654532684197705928.a n = A166329 (n + 1)

theorem P8654532684197705928.correct : P8654532684197705928.Spec := by
  intro n
  simp only [A166329, Nat.add_sub_cancel, A166329.P8654532684197705928.a, A166329.P12394964810192710211.a, A006094, A006094.P10257567645245129766.a, A065091, A065091.P6971844946592549357.a, A251720, A251720.P7553802040136073168.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166329

/-! ## A166329.P11483853920854719717

`(A037166(n+1)+A000040(n+1))²`
-/

namespace A166329.P11483853920854719717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A037166 (n + 1) + A000040 (n + 1)) ^ 2

end

end A166329.P11483853920854719717

namespace A166329

/-- `(A037166(n+1)+A000040(n+1))²` -/
def P11483853920854719717.Spec : Prop :=
  ∀ n, P11483853920854719717.a n = A166329 (n + 1)

theorem P11483853920854719717.correct : P11483853920854719717.Spec := by
  intro n
  simp only [A166329, Nat.add_sub_cancel, A166329.P11483853920854719717.a, A166329.P12394964810192710211.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, A037166, A037166.P14619227700024520226.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166329

/-! ## A166329.P13876246561846613129

`(A000040(n+1)-A123134(n+1))²`
-/

namespace A166329.P13876246561846613129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - A123134 (n + 1)) ^ 2

end

end A166329.P13876246561846613129

namespace A166329

/-- `(A000040(n+1)-A123134(n+1))²` -/
def P13876246561846613129.Spec : Prop :=
  ∀ n, P13876246561846613129.a n = A166329 (n + 1)

theorem P13876246561846613129.correct : P13876246561846613129.Spec := by
  intro n
  simp only [A166329, Nat.add_sub_cancel, A166329.P13876246561846613129.a, A166329.P12394964810192710211.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, A123134, A123134.P1141730384481929553.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166329

/-! ## A166329.P16672472640524795163

`(A000040(n+1)*A065091(n+1))²`
-/

namespace A166329.P16672472640524795163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) * A065091 (n + 1)) ^ 2

end

end A166329.P16672472640524795163

namespace A166329

/-- `(A000040(n+1)*A065091(n+1))²` -/
def P16672472640524795163.Spec : Prop :=
  ∀ n, P16672472640524795163.a n = A166329 (n + 1)

end A166329

/-! ## A166329.P5730772765064948050

`(A251720(n+1)/A000040(n+1))²`
-/

namespace A166329.P5730772765064948050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A251720 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)) ^ 2

end

end A166329.P5730772765064948050

namespace A166329

/-- `(A251720(n+1)/A000040(n+1))²` -/
def P5730772765064948050.Spec : Prop :=
  ∀ n, P5730772765064948050.a n = (A166329 (n + 1) : ℚ)

end A166329

/-! ## A166329.P14388615609192090060

`A006094(n+1)^A020639(2*(n+1))`
-/

namespace A166329.P14388615609192090060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006094 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A166329.P14388615609192090060

namespace A166329

/-- `A006094(n+1)^A020639(2*(n+1))` -/
def P14388615609192090060.Spec : Prop :=
  ∀ n, P14388615609192090060.a n = (A166329 (n + 1) : ℚ)

end A166329

/-! ## A166329.P4506063875714078783

`A069487(n+1)²/A069482(n+1)²`
-/

namespace A166329.P4506063875714078783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069487 (n + 1) ^ 2 : ℚ) / (A069482 (n + 1) ^ 2 : ℚ)

end

end A166329.P4506063875714078783

namespace A166329

/-- `A069487(n+1)²/A069482(n+1)²` -/
def P4506063875714078783.Spec : Prop :=
  ∀ n, P4506063875714078783.a n = (A166329 (n + 1) : ℚ)

end A166329

/-! ## A166329.P17366478810770837452

`gcd(A046302(n+1)², A251720(n+1)²)`
-/

namespace A166329.P17366478810770837452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046302 (n + 1) ^ 2) (A251720 (n + 1) ^ 2)

end

end A166329.P17366478810770837452

namespace A166329

/-- `gcd(A046302(n+1)², A251720(n+1)²)` -/
def P17366478810770837452.Spec : Prop :=
  ∀ n, (P17366478810770837452.a n : ℤ) = A166329 (n + 1)

end A166329

/-! ## A166329.P14011382486795910694

`sqrt(A065091(n+1)²²*A030514(n+1))`
-/

namespace A166329.P14011382486795910694
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A065091 (n + 1) ^ 2) ^ 2 * A030514 (n + 1) : ℝ)

end

end A166329.P14011382486795910694

namespace A166329

/-- `sqrt(A065091(n+1)²²*A030514(n+1))` -/
def P14011382486795910694.Spec : Prop :=
  ∀ n, P14011382486795910694.a n = (A166329 (n + 1) : ℝ)

end A166329

/-! ## A166329.P17020844419829615723

`A006094(n+1)^A000005(A051697(n))`
-/

namespace A166329.P17020844419829615723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006094 (n + 1) : ℚ) ^ (A000005 (A051697 n).toNat : ℤ)

end

end A166329.P17020844419829615723

namespace A166329

/-- `A006094(n+1)^A000005(A051697(n))` -/
def P17020844419829615723.Spec : Prop :=
  ∀ n, P17020844419829615723.a n = (A166329 (n + 1) : ℚ)

end A166329

/-! ## A166329.P13266206133150050150

`A006094(n+1)^A000005(A093074(n+1))`
-/

namespace A166329.P13266206133150050150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006094 (n + 1) : ℚ) ^ (A000005 (A093074 (n + 1)).toNat : ℤ)

end

end A166329.P13266206133150050150

namespace A166329

/-- `A006094(n+1)^A000005(A093074(n+1))` -/
def P13266206133150050150.Spec : Prop :=
  ∀ n, P13266206133150050150.a n = (A166329 (n + 1) : ℚ)

end A166329

/-! ## A166329.P285728122113690128

`A065091(n+1)²*A050997(n+1)/A030078(n+1)`
-/

namespace A166329.P285728122113690128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065091 (n + 1) ^ 2 * A050997 (n + 1) : ℚ) / (A030078 (n + 1) : ℚ)

end

end A166329.P285728122113690128

namespace A166329

/-- `A065091(n+1)²*A050997(n+1)/A030078(n+1)` -/
def P285728122113690128.Spec : Prop :=
  ∀ n, P285728122113690128.a n = (A166329 (n + 1) : ℚ)

end A166329

/-! ## A166329.P16115880470989289754

`(A023515(n+2)+1)²`
-/

namespace A166329.P16115880470989289754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023515 (n + 2) + 1) ^ 2

end

end A166329.P16115880470989289754

namespace A166329

/-- `(A023515(n+2)+1)²` -/
def P16115880470989289754.Spec : Prop :=
  ∀ n, P16115880470989289754.a n = A166329 (n + 1)

end A166329

/-! ## A166329.P15371606161805441837

`(1-A023523(n+2))²`
-/

namespace A166329.P15371606161805441837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A023523 (n + 2)) ^ 2

end

end A166329.P15371606161805441837

namespace A166329

/-- `(1-A023523(n+2))²` -/
def P15371606161805441837.Spec : Prop :=
  ∀ n, P15371606161805441837.a n = A166329 (n + 1)

end A166329

/-! ## A166329.P5243821072994940797

`A001248(n+1)*A001248(n+2)`
-/

namespace A166329.P5243821072994940797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A001248 (n + 2)

end

end A166329.P5243821072994940797

namespace A166329

/-- `A001248(n+1)*A001248(n+2)` -/
def P5243821072994940797.Spec : Prop :=
  ∀ n, P5243821072994940797.a n = A166329 (n + 1)

theorem P5243821072994940797.correct : P5243821072994940797.Spec := by
  intro n
  simp only [A166329, Nat.add_sub_cancel, A166329.P5243821072994940797.a, A166329.P12394964810192710211.a, A001248, A001248.P16278241061688229202.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166329

/-! ## A166329.P11019674086742934308

`A000040(n+2)*A251720(n+1)`
-/

namespace A166329.P11019674086742934308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A251720 (n + 1)

end

end A166329.P11019674086742934308

namespace A166329

/-- `A000040(n+2)*A251720(n+1)` -/
def P11019674086742934308.Spec : Prop :=
  ∀ n, P11019674086742934308.a n = A166329 (n + 1)

theorem P11019674086742934308.correct : P11019674086742934308.Spec := by
  intro n
  simp only [A166329, Nat.add_sub_cancel, A166329.P11019674086742934308.a, A166329.P12394964810192710211.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, A251720, A251720.P7553802040136073168.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166329

/-! ## A166329.P13805800799274083203

`(A000040(n+1)*A000040(n+2))²`
-/

namespace A166329.P13805800799274083203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) * A000040 (n + 2)) ^ 2

end

end A166329.P13805800799274083203

namespace A166329

/-- `(A000040(n+1)*A000040(n+2))²` -/
def P13805800799274083203.Spec : Prop :=
  ∀ n, P13805800799274083203.a n = A166329 (n + 1)

end A166329

/-!
# A166330: a(n) = (prime(n+1)+1)^(prime(n+1)-1) - (prime(n)-1)^(prime(n)+1).

The programs for A166330, the canonical program `A166330.P17804979825938614638` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166330 has offset 1).

The definition of A166330 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166330.P17804979825938614638

`(A000040(n+2)+1)^(A000040(n+2)-1)-(A000040(n+1)-1)^(A000040(n+1)+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A166330

/-- `(A000040(n+2)+1)^(A000040(n+2)-1)-(A000040(n+1)-1)^(A000040(n+1)+1)` -/
def P17804979825938614638.Spec : Prop :=
  ∀ n, P17804979825938614638.a n = (A166330 (n + 1) : ℚ)

end A166330

/-!
# A166331: Number of reduced words of length n in Coxeter group on 5 generators S_i with relations (S_i)^2 = (S_i S_j)^11 = I.

The programs for A166331, there is no canonical definition to state claims against.
-/

/-! ## A166331.P17266790493589752703

`floor(5*4^(n-1))-A185255(A191880(n+1))`
-/

namespace A166331.P17266790493589752703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185255 (A191880 (n + 1)).toNat

end

end A166331.P17266790493589752703

/-! ## A166331.P9287079211051843964

`floor(5*4^(n-1))-A185255(A325724(n+1))`
-/

namespace A166331.P9287079211051843964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185255 (A325724 (n + 1)).toNat

end

end A166331.P9287079211051843964

/-! ## A166331.P7985251542833547957

`floor(5*4^(n-1))-A185255(A209415(2*(n+1)))`
-/

namespace A166331.P7985251542833547957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185255 (A209415 (2 * (n + 1))).toNat

end

end A166331.P7985251542833547957

/-! ## A166331.P4887037005308784004

`floor(5*4^(n-1))-A185255(A007843(2*(n+2)))`
-/

namespace A166331.P4887037005308784004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185255 (A007843 (2 * (n + 2))).toNat

end

end A166331.P4887037005308784004

/-! ## A166331.P3453054949181184631

`A003947(n)-A309528(A102537(n+1))`
-/

namespace A166331.P3453054949181184631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003947 n - A309528 (A102537 (n + 1)).toNat

end

end A166331.P3453054949181184631

/-!
# A166332: Number of primes in (n^(3/2)*(log(n))^(1/2)..(n+1)^(3/2)*(log(n+1))^(1/2)] semi-open intervals, n >= 1.

The programs for A166332, there is no canonical definition to state claims against.
-/

/-! ## A166332.P2904062534105931110

`Δ[A251719(A008611(A163673(n)))]`
-/

namespace A166332.P2904062534105931110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251719 (A008611 (A163673 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166332.P2904062534105931110

/-! ## A166332.P3780624814221990257

`A308890(xor(A144222(n+5), A173601(n)))`
-/

namespace A166332.P3780624814221990257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308890 (Int.xor (A144222 (n + 5)) (A173601 n)).toNat

end

end A166332.P3780624814221990257

/-! ## A166332.P4019214672221920750

`A221646(A221646(n+1)+A194850(n+1))`
-/

namespace A166332.P4019214672221920750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221646 (A221646 (n + 1) + A194850 (n + 1)).toNat

end

end A166332.P4019214672221920750

/-! ## A166332.P1470563573781684148

`A001221(A063186(n+1)+Δ[A349831(n+1)])`
-/

namespace A166332.P1470563573781684148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A063186 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A166332.P1470563573781684148

/-! ## A166332.P3435343116607221071

`A120967(A277619(n))`
-/

namespace A166332.P3435343116607221071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120967 (A277619 n).toNat

end

end A166332.P3435343116607221071

/-!
# A166333: The largest prime that divides A027642(n) (the denominator of the Bernoulli number B_n), or 1 if A027642(n) is 1.

The programs for A166333, the canonical program `A166333.P2435102107560967594` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166333 has offset 0).

The definition of A166333 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A027642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166333.P2435102107560967594

`A006530(A027642(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A166333

/-- `A006530(A027642(n))` -/
def P2435102107560967594.Spec : Prop :=
  ∀ n, P2435102107560967594.a n = A166333 n

theorem P2435102107560967594.correct : P2435102107560967594.Spec := by
  intro n
  simp only [A166333]

end A166333

/-! ## A166333.P11818467566625575955

`gcd(A027642(n), A108077(A028310(n)))`
-/

namespace A166333.P11818467566625575955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027642 n) (A108077 (A028310 n).toNat)

end

end A166333.P11818467566625575955

namespace A166333

/-- `gcd(A027642(n), A108077(A028310(n)))` -/
def P11818467566625575955.Spec : Prop :=
  ∀ n, (P11818467566625575955.a n : ℤ) = A166333 n

end A166333

/-! ## A166333.P11135665306292297211

`A108077(A028310(n))-A000035(A266662(n))`
-/

namespace A166333.P11135665306292297211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108077 (A028310 n).toNat - A000035 (A266662 n).toNat

end

end A166333.P11135665306292297211

namespace A166333

/-- `A108077(A028310(n))-A000035(A266662(n))` -/
def P11135665306292297211.Spec : Prop :=
  ∀ n, P11135665306292297211.a n = A166333 n

end A166333

/-! ## A166333.P16000452433187340450

`A108077(A000007(n)+n)-A000035(A266662(n))`
-/

namespace A166333.P16000452433187340450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108077 (A000007 n + (n : ℤ)).toNat - A000035 (A266662 n).toNat

end

end A166333.P16000452433187340450

namespace A166333

/-- `A108077(A000007(n)+n)-A000035(A266662(n))` -/
def P16000452433187340450.Spec : Prop :=
  ∀ n, P16000452433187340450.a n = A166333 n

end A166333

/-! ## A166333.P858135146437250108

`A108077(A062157(n)+1+n)-A000035(A266662(n))`
-/

namespace A166333.P858135146437250108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108077 (A062157 n + 1 + (n : ℤ)).toNat - A000035 (A266662 n).toNat

end

end A166333.P858135146437250108

namespace A166333

/-- `A108077(A062157(n)+1+n)-A000035(A266662(n))` -/
def P858135146437250108.Spec : Prop :=
  ∀ n, P858135146437250108.a n = A166333 n

end A166333

/-! ## A166333.P8316591018482359410

`A108077(A066043(n+1)%2+n)-A000035(A266662(n))`
-/

namespace A166333.P8316591018482359410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108077 (Int.tmod (A066043 (n + 1)) 2 + (n : ℤ)).toNat - A000035 (A266662 n).toNat

end

end A166333.P8316591018482359410

namespace A166333

/-- `A108077(A066043(n+1)%2+n)-A000035(A266662(n))` -/
def P8316591018482359410.Spec : Prop :=
  ∀ n, P8316591018482359410.a n = A166333 n

end A166333

/-! ## A166333.P964643287966520242

`A006530(A162299(∑[n])%A011379(n+1))`
-/

namespace A166333.P964643287966520242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.tmod (A162299 (∑ j ∈ Finset.range (n + 1), f1 j)) (A011379 (n + 1))).toNat

end

end A166333.P964643287966520242

namespace A166333

/-- `A006530(A162299(∑[n])%A011379(n+1))` -/
def P964643287966520242.Spec : Prop :=
  ∀ n, P964643287966520242.a n = A166333 n

end A166333

/-! ## A166333.P13724133843846299733

`A006530(A006530(A166120(n+1))*A089026(n+1))`
-/

namespace A166333.P13724133843846299733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006530 (A166120 (n + 1)).toNat * A089026 (n + 1)).toNat

end

end A166333.P13724133843846299733

namespace A166333

/-- `A006530(A006530(A166120(n+1))*A089026(n+1))` -/
def P13724133843846299733.Spec : Prop :=
  ∀ n, P13724133843846299733.a n = A166333 n

end A166333

/-!
# A166334: a(n) = (3*n)!/(2^n*n!).

The programs for A166334, the canonical program `A166334.P17090133390546545745` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166334 has offset 0).

The definition of A166334 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166334.P17090133390546545745

`(3*n)!/(2^n*n!)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166334

/-- `(3*n)!/(2^n*n!)` -/
def P17090133390546545745.Spec : Prop :=
  ∀ n, P17090133390546545745.a n = (A166334 n : ℚ)

end A166334

/-! ## A166334.P10542799187924690123

`3*(3*(n+1)-4)*(3*(n+1)-5)*a(n-1)/2` with `a(0)=1`
-/

namespace A166334.P10542799187924690123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * (((3 * (n + 1) : ℤ) - 4 : ℚ) * (((3 * (n + 1) : ℤ) - 5 : ℚ) * a (n - 1))) / 2

end

end A166334.P10542799187924690123

namespace A166334

/-- `3*(3*(n+1)-4)*(3*(n+1)-5)*a(n-1)/2` -/
def P10542799187924690123.Spec : Prop :=
  ∀ n, P10542799187924690123.a n = (A166334 n : ℚ)

end A166334

/-! ## A166334.P2151937511714752074

`A193229(∑[4*n])`
-/

namespace A166334.P2151937511714752074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193229 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A166334.P2151937511714752074

namespace A166334

/-- `A193229(∑[4*n])` -/
def P2151937511714752074.Spec : Prop :=
  ∀ n, P2151937511714752074.a n = A166334 n

end A166334

/-! ## A166334.P16057198488757316372

`n!*A245066(n)`
-/

namespace A166334.P16057198488757316372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A245066 n

end

end A166334.P16057198488757316372

namespace A166334

/-- `n!*A245066(n)` -/
def P16057198488757316372.Spec : Prop :=
  ∀ n, P16057198488757316372.a n = A166334 n

end A166334

/-! ## A166334.P17335972172533941399

`3^n*A025035(n)`
-/

namespace A166334.P17335972172533941399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A025035 n

end

end A166334.P17335972172533941399

namespace A166334

/-- `3^n*A025035(n)` -/
def P17335972172533941399.Spec : Prop :=
  ∀ n, P17335972172533941399.a n = A166334 n

end A166334

/-!
# A166335: Exponential Riordan array [1+x*sinh(x), x].

The programs for A166335, the canonical program `A166335.P11026299203422421980` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166335 has offset 0).

The definition of A166335 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166335.P11026299203422421980

`A028310(A025581(n))*A119467(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A166335

/-- `A028310(A025581(n))*A119467(n)` -/
def P11026299203422421980.Spec : Prop :=
  ∀ n, P11026299203422421980.a n = A166335 n

theorem P11026299203422421980.correct : P11026299203422421980.Spec := by
  intro n
  simp only [A166335]

end A166335

/-! ## A166335.P17077210853949849580

`A119467(n)*A193592(n+1)`
-/

namespace A166335.P17077210853949849580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119467 n * A193592 (n + 1)

end

end A166335.P17077210853949849580

namespace A166335

/-- `A119467(n)*A193592(n+1)` -/
def P17077210853949849580.Spec : Prop :=
  ∀ n, P17077210853949849580.a n = A166335 n

end A166335

/-! ## A166335.P2682026054228760120

`∏{e}[A099884(n), #]*A119467(n)`
-/

namespace A166335.P2682026054228760120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) * A119467 n

end

end A166335.P2682026054228760120

namespace A166335

/-- `∏{e}[A099884(n), #]*A119467(n)` -/
def P2682026054228760120.Spec : Prop :=
  ∀ n, P2682026054228760120.a n = A166335 n

end A166335

/-! ## A166335.P13443307223496024300

`A000005(Δ[A089633(n)])*A119467(n)`
-/

namespace A166335.P13443307223496024300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat * A119467 n

end

end A166335.P13443307223496024300

namespace A166335

/-- `A000005(Δ[A089633(n)])*A119467(n)` -/
def P13443307223496024300.Spec : Prop :=
  ∀ n, P13443307223496024300.a n = A166335 n

end A166335

/-! ## A166335.P1011579230856089966

`A000005(A155038(n+1))*A119467(n)`
-/

namespace A166335.P1011579230856089966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A155038 (n + 1)).toNat * A119467 n

end

end A166335.P1011579230856089966

namespace A166335

/-- `A000005(A155038(n+1))*A119467(n)` -/
def P1011579230856089966.Spec : Prop :=
  ∀ n, P1011579230856089966.a n = A166335 n

end A166335

/-! ## A166335.P4457465095814651735

`A005361(A130321(n))*A119467(n)`
-/

namespace A166335.P4457465095814651735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A130321 n).toNat * A119467 n

end

end A166335.P4457465095814651735

namespace A166335

/-- `A005361(A130321(n))*A119467(n)` -/
def P4457465095814651735.Spec : Prop :=
  ∀ n, P4457465095814651735.a n = A166335 n

end A166335

/-! ## A166335.P11840634464206580316

`A005361(A099884(n))*A119467(n)`
-/

namespace A166335.P11840634464206580316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A099884 n).toNat * A119467 n

end

end A166335.P11840634464206580316

namespace A166335

/-- `A005361(A099884(n))*A119467(n)` -/
def P11840634464206580316.Spec : Prop :=
  ∀ n, P11840634464206580316.a n = A166335 n

end A166335

/-! ## A166335.P10143645031886215576

`A005361(A140303(n))*A119467(n)`
-/

namespace A166335.P10143645031886215576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A140303 n).toNat * A119467 n

end

end A166335.P10143645031886215576

namespace A166335

/-- `A005361(A140303(n))*A119467(n)` -/
def P10143645031886215576.Spec : Prop :=
  ∀ n, P10143645031886215576.a n = A166335 n

end A166335

/-! ## A166335.P7154458606330386822

`A119467(n)*A134225(n+1)`
-/

namespace A166335.P7154458606330386822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119467 n * A134225 (n + 1)

end

end A166335.P7154458606330386822

namespace A166335

/-- `A119467(n)*A134225(n+1)` -/
def P7154458606330386822.Spec : Prop :=
  ∀ n, P7154458606330386822.a n = A166335 n

end A166335

/-!
# A166336: Expansion of (1 - 4*x + 7*x^2 - 4*x^3 + x^4)/(1 - 7*x + 17*x^2 - 17*x^3 + 7*x^4 - x^5).

The programs for A166336, the canonical program `A166336.P7471289707071097872` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166336 has offset 0).

The definition of A166336 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x+7x^2-4x^3+x^4)/(1-7x+17x^2-17x^3+7x^4-x^5))` (program `A166336.P7471289707071097872`, by `A166336.P7471289707071097872.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166336.P7471289707071097872

`ogf((1-4x+7x^2-4x^3+x^4)/(1-7x+17x^2-17x^3+7x^4-x^5))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166336

/-- `ogf((1-4x+7x^2-4x^3+x^4)/(1-7x+17x^2-17x^3+7x^4-x^5))` -/
def P7471289707071097872.Spec : Prop :=
  ∀ n, P7471289707071097872.a n = A166336 n

theorem P7471289707071097872.correct : P7471289707071097872.Spec := by
  intro n
  simp only [A166336]

end A166336

/-! ## A166336.P13711045580520593763

`A281199(n+1)+1`
-/

namespace A166336.P13711045580520593763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281199 (n + 1) + 1

end

end A166336.P13711045580520593763

namespace A166336

/-- `A281199(n+1)+1` -/
def P13711045580520593763.Spec : Prop :=
  ∀ n, P13711045580520593763.a n = A166336 n

theorem P13711045580520593763.correct : P13711045580520593763.Spec := by
  intro n
  simp only [A166336, Nat.add_sub_cancel, A166336.P13711045580520593763.a, A166336.P7471289707071097872.a, A281199, A281199.P10272472224117840655.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166336

/-! ## A166336.P6888547262100292578

`A001629(Δ[n²])+1`
-/

namespace A166336.P6888547262100292578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A166336.P6888547262100292578

namespace A166336

/-- `A001629(Δ[n²])+1` -/
def P6888547262100292578.Spec : Prop :=
  ∀ n, P6888547262100292578.a n = A166336 n

end A166336

/-! ## A166336.P12516613749254801735

`∑[A029907(2*n)]+1`
-/

namespace A166336.P12516613749254801735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A166336.P12516613749254801735

namespace A166336

/-- `∑[A029907(2*n)]+1` -/
def P12516613749254801735.Spec : Prop :=
  ∀ n, P12516613749254801735.a n = A166336 n

end A166336

/-! ## A166336.P15545461903651368157

`1+A001629(2*n+1)`
-/

namespace A166336.P15545461903651368157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A001629 (2 * n + 1)

end

end A166336.P15545461903651368157

namespace A166336

/-- `1+A001629(2*n+1)` -/
def P15545461903651368157.Spec : Prop :=
  ∀ n, P15545461903651368157.a n = A166336 n

end A166336

/-! ## A166336.P12066803289131024697

`2*A129720(2*n)+1`
-/

namespace A166336.P12066803289131024697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129720 (2 * n) + 1

end

end A166336.P12066803289131024697

namespace A166336

/-- `2*A129720(2*n)+1` -/
def P12066803289131024697.Spec : Prop :=
  ∀ n, P12066803289131024697.a n = A166336 n

end A166336

/-! ## A166336.P14927068447382409571

`2*A129722(2*n)+1`
-/

namespace A166336.P14927068447382409571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129722 (2 * n) + 1

end

end A166336.P14927068447382409571

namespace A166336

/-- `2*A129722(2*n)+1` -/
def P14927068447382409571.Spec : Prop :=
  ∀ n, P14927068447382409571.a n = A166336 n

end A166336

/-! ## A166336.P1239051723840719910

`∑[∑[A239342(2*n)]]+1`
-/

namespace A166336.P1239051723840719910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239342 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A166336.P1239051723840719910

namespace A166336

/-- `∑[∑[A239342(2*n)]]+1` -/
def P1239051723840719910.Spec : Prop :=
  ∀ n, P1239051723840719910.a n = A166336 n

end A166336

/-! ## A166336.P14398003644286945781

`∑[A029907(A004277(n))]`
-/

namespace A166336.P14398003644286945781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166336.P14398003644286945781

namespace A166336

/-- `∑[A029907(A004277(n))]` -/
def P14398003644286945781.Spec : Prop :=
  ∀ n, P14398003644286945781.a n = A166336 n

end A166336

/-! ## A166336.P5588231091282073462

`∑[A029907(A004273(n)+1)]`
-/

namespace A166336.P5588231091282073462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (A004273 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166336.P5588231091282073462

namespace A166336

/-- `∑[A029907(A004273(n)+1)]` -/
def P5588231091282073462.Spec : Prop :=
  ∀ n, P5588231091282073462.a n = A166336 n

end A166336

/-! ## A166336.P14227590635682041691

`record[A001629(A006257(n))+1]`
-/

namespace A166336.P14227590635682041691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (A006257 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166336.P14227590635682041691

namespace A166336

/-- `record[A001629(A006257(n))+1]` -/
def P14227590635682041691.Spec : Prop :=
  ∀ n, P14227590635682041691.a n = A166336 n

end A166336

/-! ## A166336.P2499496091452387763

`record[A175722(n)-A000045(n)]`
-/

namespace A166336.P2499496091452387763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175722 n - A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166336.P2499496091452387763

namespace A166336

/-- `record[A175722(n)-A000045(n)]` -/
def P2499496091452387763.Spec : Prop :=
  ∀ n, P2499496091452387763.a n = A166336 n

end A166336

/-! ## A166336.P7347200300445522507

`xor(1, A001629(A004273(n+1)))`
-/

namespace A166336.P7347200300445522507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A001629 (A004273 (n + 1)).toNat)

end

end A166336.P7347200300445522507

namespace A166336

/-- `xor(1, A001629(A004273(n+1)))` -/
def P7347200300445522507.Spec : Prop :=
  ∀ n, P7347200300445522507.a n = A166336 n

end A166336

/-! ## A166336.P9006176781154127527

`∑[A029907(record[A006257(n)+1])]`
-/

namespace A166336.P9006176781154127527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166336.P9006176781154127527

namespace A166336

/-- `∑[A029907(record[A006257(n)+1])]` -/
def P9006176781154127527.Spec : Prop :=
  ∀ n, P9006176781154127527.a n = A166336 n

end A166336

/-! ## A166336.P11285271993409833605

`record[A001629(A000265(n+1))+1]`
-/

namespace A166336.P11285271993409833605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (A000265 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166336.P11285271993409833605

namespace A166336

/-- `record[A001629(A000265(n+1))+1]` -/
def P11285271993409833605.Spec : Prop :=
  ∀ n, P11285271993409833605.a n = A166336 n

end A166336

/-! ## A166336.P17179394555239996352

`A029907(2*n+1)-A027941(n)`
-/

namespace A166336.P17179394555239996352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (2 * n + 1) - A027941 n

end

end A166336.P17179394555239996352

namespace A166336

/-- `A029907(2*n+1)-A027941(n)` -/
def P17179394555239996352.Spec : Prop :=
  ∀ n, P17179394555239996352.a n = A166336 n

end A166336

/-! ## A166336.P821786964017889470

`A052952(2*n)+A006478(2*n)`
-/

namespace A166336.P821786964017889470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 (2 * n) + A006478 (2 * n)

end

end A166336.P821786964017889470

namespace A166336

/-- `A052952(2*n)+A006478(2*n)` -/
def P821786964017889470.Spec : Prop :=
  ∀ n, P821786964017889470.a n = A166336 n

end A166336

/-! ## A166336.P878825730683500141

`A175722(2*n)-A000045(2*n)`
-/

namespace A166336.P878825730683500141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175722 (2 * n) - A000045 (2 * n)

end

end A166336.P878825730683500141

namespace A166336

/-- `A175722(2*n)-A000045(2*n)` -/
def P878825730683500141.Spec : Prop :=
  ∀ n, P878825730683500141.a n = A166336 n

end A166336

/-! ## A166336.P193316270502874533

`∑[∑[A208354(2*n)]]-A000045(2*n)`
-/

namespace A166336.P193316270502874533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000045 (2 * n)

end

end A166336.P193316270502874533

namespace A166336

/-- `∑[∑[A208354(2*n)]]-A000045(2*n)` -/
def P193316270502874533.Spec : Prop :=
  ∀ n, P193316270502874533.a n = A166336 n

end A166336

/-! ## A166336.P17345804397196740594

`A006478(2*n)+Δ[A000071(2*n+1)]`
-/

namespace A166336.P17345804397196740594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006478 (2 * n) + (f1 (n + 1) - f1 n)

end

end A166336.P17345804397196740594

namespace A166336

/-- `A006478(2*n)+Δ[A000071(2*n+1)]` -/
def P17345804397196740594.Spec : Prop :=
  ∀ n, P17345804397196740594.a n = A166336 n

end A166336

/-!
# A166337: a(n) = (2n+0^n)*C(4n,2n).

The programs for A166337, the canonical program `A166337.P15549218587476291933` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166337 has offset 0).

The definition of A166337 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+0^n)*C(4*n, 2*n)` (program `A166337.P15549218587476291933`, by `A166337.P15549218587476291933.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166337.P15549218587476291933

`(2*n+0^n)*C(4*n, 2*n)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166337

/-- `(2*n+0^n)*C(4*n, 2*n)` -/
def P15549218587476291933.Spec : Prop :=
  ∀ n, (P15549218587476291933.a n : ℤ) = A166337 n

theorem P15549218587476291933.correct : P15549218587476291933.Spec := by
  intro n
  simp only [A166337]

end A166337

/-! ## A166337.P9439536293846790177

`record[floor(2/acot(n))*A110556(n)]`
-/

namespace A166337.P9439536293846790177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ * A110556 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166337.P9439536293846790177

namespace A166337

/-- `record[floor(2/acot(n))*A110556(n)]` -/
def P9439536293846790177.Spec : Prop :=
  ∀ n, P9439536293846790177.a n = A166337 n

end A166337

/-! ## A166337.P11150280857315336220

`floor(2/acot(n))*A000984(2*n)`
-/

namespace A166337.P11150280857315336220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ * A000984 (2 * n)

end

end A166337.P11150280857315336220

namespace A166337

/-- `floor(2/acot(n))*A000984(2*n)` -/
def P11150280857315336220.Spec : Prop :=
  ∀ n, P11150280857315336220.a n = A166337 n

end A166337

/-! ## A166337.P2276902643983138277

`record[round((-1)^n/acot(n))*A000984(n)]`
-/

namespace A166337.P2276902643983138277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((-1) ^ n : ℝ) / SequenceMachineLib.acot (n : ℝ)) * A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166337.P2276902643983138277

namespace A166337

/-- `record[round((-1)^n/acot(n))*A000984(n)]` -/
def P2276902643983138277.Spec : Prop :=
  ∀ n, P2276902643983138277.a n = A166337 n

end A166337

/-! ## A166337.P10676592708005115249

`A100071(A008574(n))`
-/

namespace A166337.P10676592708005115249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 (A008574 n).toNat

end

end A166337.P10676592708005115249

namespace A166337

/-- `A100071(A008574(n))` -/
def P10676592708005115249.Spec : Prop :=
  ∀ n, P10676592708005115249.a n = A166337 n

end A166337

/-! ## A166337.P5218934391823970819

`A100071(A004273(2*n)+1)`
-/

namespace A166337.P5218934391823970819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 (A004273 (2 * n) + 1).toNat

end

end A166337.P5218934391823970819

namespace A166337

/-- `A100071(A004273(2*n)+1)` -/
def P5218934391823970819.Spec : Prop :=
  ∀ n, P5218934391823970819.a n = A166337 n

end A166337

/-! ## A166337.P4133081360487864820

`A005430(2*n)+A000007(n)`
-/

namespace A166337.P4133081360487864820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005430 (2 * n) + A000007 n

end

end A166337.P4133081360487864820

namespace A166337

/-- `A005430(2*n)+A000007(n)` -/
def P4133081360487864820.Spec : Prop :=
  ∀ n, P4133081360487864820.a n = A166337 n

end A166337

/-! ## A166337.P11630345232219501584

`A000984(2*n)*A004277(n)`
-/

namespace A166337.P11630345232219501584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (2 * n) * A004277 n

end

end A166337.P11630345232219501584

namespace A166337

/-- `A000984(2*n)*A004277(n)` -/
def P11630345232219501584.Spec : Prop :=
  ∀ n, P11630345232219501584.a n = A166337 n

theorem P11630345232219501584.correct : P11630345232219501584.Spec := by
  intro n
  simp only [A166337, Nat.add_sub_cancel, A166337.P11630345232219501584.a, A166337.P15549218587476291933.a, A000984, A000984.P7946844122574426130.a, A004277, A004277.P16255821370285667660.a, A000007, A000007.P6599383543502402472.a, A005843, A005843.P3167286115683555970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166337

/-! ## A166337.P9992925004637757217

`A000984(2*n)*A004275(n+1)`
-/

namespace A166337.P9992925004637757217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (2 * n) * A004275 (n + 1)

end

end A166337.P9992925004637757217

namespace A166337

/-- `A000984(2*n)*A004275(n+1)` -/
def P9992925004637757217.Spec : Prop :=
  ∀ n, P9992925004637757217.a n = A166337 n

end A166337

/-! ## A166337.P2208335939011974859

`A000984(2*n)*A028310(2*n)`
-/

namespace A166337.P2208335939011974859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (2 * n) * A028310 (2 * n)

end

end A166337.P2208335939011974859

namespace A166337

/-- `A000984(2*n)*A028310(2*n)` -/
def P2208335939011974859.Spec : Prop :=
  ∀ n, P2208335939011974859.a n = A166337 n

end A166337

/-!
# A166338: a(n) = (4*n)!/n!.

The programs for A166338, the canonical program `A166338.P3385257530143789961` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166338 has offset 0).

The definition of A166338 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A166338.anchor (n : ℕ) : (A166338 n : ℚ) = (Nat.factorial (4 * n) : ℚ) / (Nat.factorial n : ℚ)` in `Proof.A166.A166338`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166338.P3385257530143789961

`(4*n)!/n!`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166338

/-- `(4*n)!/n!` -/
def P3385257530143789961.Spec : Prop :=
  ∀ n, P3385257530143789961.a n = (A166338 n : ℚ)

end A166338

/-! ## A166338.P7426730529591775176

`8*(4*n-3)*(2*n-1)*(4*n-1)*a(n-1)` with `a(0)=1`
-/

namespace A166338.P7426730529591775176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  8 * (((4 * n : ℤ) - 3) * (((2 * n : ℤ) - 1) * (((4 * n : ℤ) - 1) * a (n - 1))))

end

end A166338.P7426730529591775176

namespace A166338

/-- `8*(4*n-3)*(2*n-1)*(4*n-1)*a(n-1)` -/
def P7426730529591775176.Spec : Prop :=
  ∀ n, P7426730529591775176.a n = A166338 n

end A166338

/-! ## A166338.P3635831890801307693

`(2^n)²*A060706(n)`
-/

namespace A166338.P3635831890801307693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ n) ^ 2 : ℤ) * A060706 n

end

end A166338.P3635831890801307693

namespace A166338

/-- `(2^n)²*A060706(n)` -/
def P3635831890801307693.Spec : Prop :=
  ∀ n, P3635831890801307693.a n = A166338 n

end A166338

/-! ## A166338.P5417429855574102263

`(3*n)!*A005810(n)`
-/

namespace A166338.P5417429855574102263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (3 * n) : ℤ) * A005810 n

end

end A166338.P5417429855574102263

namespace A166338

/-- `(3*n)!*A005810(n)` -/
def P5417429855574102263.Spec : Prop :=
  ∀ n, P5417429855574102263.a n = A166338 n

end A166338

/-! ## A166338.P10880159921101071237

`A001813(n)*A009120(n)`
-/

namespace A166338.P10880159921101071237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001813 n * A009120 n

end

end A166338.P10880159921101071237

namespace A166338

/-- `A001813(n)*A009120(n)` -/
def P10880159921101071237.Spec : Prop :=
  ∀ n, P10880159921101071237.a n = A166338 n

end A166338

/-!
# A166340: Triangle T(n, k) = coefficients of ( t(n, x) ) where t(n, x) = (1-x)^(n+1)*p(n, x)/x, p(n, x) = x*D( p(n-1, x) ), with p(1, x) = x/(1-x)^2, p(2, x) = x*(1+x)/(1-x)^3, and p(3, x) = x*(1+8*x+x^2)/(1-x)^4, read by rows.

The programs for A166340, the canonical program `A166340.P14544244281529848433` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166340 has offset 1).

The definition of A166340 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166340.P14544244281529848433

`2*A166344(n+1)-A008292(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A166340

/-- `2*A166344(n+1)-A008292(n+1)` -/
def P14544244281529848433.Spec : Prop :=
  ∀ n, P14544244281529848433.a n = A166340 (n + 1)

theorem P14544244281529848433.correct : P14544244281529848433.Spec := by
  intro n
  simp only [A166340, Nat.add_sub_cancel]

end A166340

/-! ## A166340.P3538013364726280515

`(A166343(n+1)+A008292(n+1))/2`
-/

namespace A166340.P3538013364726280515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166343 (n + 1) + A008292 (n + 1) : ℚ) / 2

end

end A166340.P3538013364726280515

namespace A166340

/-- `(A166343(n+1)+A008292(n+1))/2` -/
def P3538013364726280515.Spec : Prop :=
  ∀ n, P3538013364726280515.a n = (A166340 (n + 1) : ℚ)

theorem P3538013364726280515.correct : P3538013364726280515.Spec := by
  intro n
  simp only [A166340, Nat.add_sub_cancel, A166340.P3538013364726280515.a, A166340.P14544244281529848433.a, A008292, A008292.P18172958035633294905.a, A166343, A166343.P12006835282466394169.a, A166344, A166344.P1539727011771892900.a, A166345, A166345.P5625863510246000059.a, A176200, A176200.P6006487728366513129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166340

/-! ## A166340.P1589348753264561830

`2*A166341(n+1)-A166343(n+1)`
-/

namespace A166340.P1589348753264561830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166341 (n + 1) - A166343 (n + 1)

end

end A166340.P1589348753264561830

namespace A166340

/-- `2*A166341(n+1)-A166343(n+1)` -/
def P1589348753264561830.Spec : Prop :=
  ∀ n, P1589348753264561830.a n = A166340 (n + 1)

theorem P1589348753264561830.correct : P1589348753264561830.Spec := by
  intro n
  simp only [A166340, Nat.add_sub_cancel, A166340.P1589348753264561830.a, A166340.P14544244281529848433.a, A008292, A008292.P18172958035633294905.a, A166341, A166341.P17958424774460978478.a, A166343, A166343.P12006835282466394169.a, A166344, A166344.P1539727011771892900.a, A166345, A166345.P5625863510246000059.a, A176200, A176200.P6006487728366513129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166340

/-! ## A166340.P13979051976845525824

`(A166344(n+1)+A166341(n+1))/2`
-/

namespace A166340.P13979051976845525824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166344 (n + 1) + A166341 (n + 1) : ℚ) / 2

end

end A166340.P13979051976845525824

namespace A166340

/-- `(A166344(n+1)+A166341(n+1))/2` -/
def P13979051976845525824.Spec : Prop :=
  ∀ n, P13979051976845525824.a n = (A166340 (n + 1) : ℚ)

theorem P13979051976845525824.correct : P13979051976845525824.Spec := by
  intro n
  simp only [A166340, Nat.add_sub_cancel, A166340.P13979051976845525824.a, A166340.P14544244281529848433.a, A008292, A008292.P18172958035633294905.a, A166341, A166341.P17958424774460978478.a, A166344, A166344.P1539727011771892900.a, A166345, A166345.P5625863510246000059.a, A176200, A176200.P6006487728366513129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166340

/-! ## A166340.P4987935077039046364

`A008292(n+1)+A166341(n+1)-A166344(n+1)`
-/

namespace A166340.P4987935077039046364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A166341 (n + 1) - A166344 (n + 1))

end

end A166340.P4987935077039046364

namespace A166340

/-- `A008292(n+1)+A166341(n+1)-A166344(n+1)` -/
def P4987935077039046364.Spec : Prop :=
  ∀ n, P4987935077039046364.a n = A166340 (n + 1)

theorem P4987935077039046364.correct : P4987935077039046364.Spec := by
  intro n
  simp only [A166340, Nat.add_sub_cancel, A166340.P4987935077039046364.a, A166340.P14544244281529848433.a, A008292, A008292.P18172958035633294905.a, A166341, A166341.P17958424774460978478.a, A166344, A166344.P1539727011771892900.a, A166345, A166345.P5625863510246000059.a, A176200, A176200.P6006487728366513129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166340

/-! ## A166340.P14434512902600348315

`A008292(n+1)+A166344(n+1)-A166345(n+1)`
-/

namespace A166340.P14434512902600348315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A166344 (n + 1) - A166345 (n + 1))

end

end A166340.P14434512902600348315

namespace A166340

/-- `A008292(n+1)+A166344(n+1)-A166345(n+1)` -/
def P14434512902600348315.Spec : Prop :=
  ∀ n, P14434512902600348315.a n = A166340 (n + 1)

theorem P14434512902600348315.correct : P14434512902600348315.Spec := by
  intro n
  simp only [A166340, Nat.add_sub_cancel, A166340.P14434512902600348315.a, A166340.P14544244281529848433.a, A008292, A008292.P18172958035633294905.a, A166344, A166344.P1539727011771892900.a, A166345, A166345.P5625863510246000059.a, A176200, A176200.P6006487728366513129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166340

/-! ## A166340.P5092777457966101910

`A166341(n+1)+A166345(n+1)-A008292(n+1)`
-/

namespace A166340.P5092777457966101910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166341 (n + 1) + (A166345 (n + 1) - A008292 (n + 1))

end

end A166340.P5092777457966101910

namespace A166340

/-- `A166341(n+1)+A166345(n+1)-A008292(n+1)` -/
def P5092777457966101910.Spec : Prop :=
  ∀ n, P5092777457966101910.a n = A166340 (n + 1)

theorem P5092777457966101910.correct : P5092777457966101910.Spec := by
  intro n
  simp only [A166340, Nat.add_sub_cancel, A166340.P5092777457966101910.a, A166340.P14544244281529848433.a, A008292, A008292.P18172958035633294905.a, A166341, A166341.P17958424774460978478.a, A166344, A166344.P1539727011771892900.a, A166345, A166345.P5625863510246000059.a, A176200, A176200.P6006487728366513129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166340

/-! ## A166340.P16035916694230927941

`A166343(n+1)+A166344(n+1)-A166341(n+1)`
-/

namespace A166340.P16035916694230927941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166343 (n + 1) + (A166344 (n + 1) - A166341 (n + 1))

end

end A166340.P16035916694230927941

namespace A166340

/-- `A166343(n+1)+A166344(n+1)-A166341(n+1)` -/
def P16035916694230927941.Spec : Prop :=
  ∀ n, P16035916694230927941.a n = A166340 (n + 1)

theorem P16035916694230927941.correct : P16035916694230927941.Spec := by
  intro n
  simp only [A166340, Nat.add_sub_cancel, A166340.P16035916694230927941.a, A166340.P14544244281529848433.a, A008292, A008292.P18172958035633294905.a, A166341, A166341.P17958424774460978478.a, A166343, A166343.P12006835282466394169.a, A166344, A166344.P1539727011771892900.a, A166345, A166345.P5625863510246000059.a, A176200, A176200.P6006487728366513129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166340

/-! ## A166340.P7369818288939941262

`A166343(n+1)+A166345(n+1)-A166344(n+1)`
-/

namespace A166340.P7369818288939941262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166343 (n + 1) + (A166345 (n + 1) - A166344 (n + 1))

end

end A166340.P7369818288939941262

namespace A166340

/-- `A166343(n+1)+A166345(n+1)-A166344(n+1)` -/
def P7369818288939941262.Spec : Prop :=
  ∀ n, P7369818288939941262.a n = A166340 (n + 1)

theorem P7369818288939941262.correct : P7369818288939941262.Spec := by
  intro n
  simp only [A166340, Nat.add_sub_cancel, A166340.P7369818288939941262.a, A166340.P14544244281529848433.a, A008292, A008292.P18172958035633294905.a, A166343, A166343.P12006835282466394169.a, A166344, A166344.P1539727011771892900.a, A166345, A166345.P5625863510246000059.a, A176200, A176200.P6006487728366513129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166340

/-!
# A166341: Triangle T(n, k) = coefficients of ( t(n, x) ) where t(n, x) = (1-x)^(n+1)*p(n, x)/x, p(n, x) = x*D( p(n-1, x) ), with p(1, x) = x/(1-x)^2, p(2, x) = x*(1+x)/(1-x)^3, and p(3, x) = x*(1+10*x+x^2)/(1-x)^4, read by rows.

The programs for A166341, the canonical program `A166341.P17958424774460978478` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166341 has offset 1).

The definition of A166341 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166341.P17958424774460978478

`2*A166340(n+1)-A166344(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A166341

/-- `2*A166340(n+1)-A166344(n+1)` -/
def P17958424774460978478.Spec : Prop :=
  ∀ n, P17958424774460978478.a n = A166341 (n + 1)

theorem P17958424774460978478.correct : P17958424774460978478.Spec := by
  intro n
  simp only [A166341, Nat.add_sub_cancel]

end A166341

/-! ## A166341.P16125688142654266748

`2*A166344(n+1)-A166345(n+1)`
-/

namespace A166341.P16125688142654266748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166344 (n + 1) - A166345 (n + 1)

end

end A166341.P16125688142654266748

namespace A166341

/-- `2*A166344(n+1)-A166345(n+1)` -/
def P16125688142654266748.Spec : Prop :=
  ∀ n, P16125688142654266748.a n = A166341 (n + 1)

theorem P16125688142654266748.correct : P16125688142654266748.Spec := by
  intro n
  simp only [A166341, Nat.add_sub_cancel, A166341.P16125688142654266748.a, A166341.P17958424774460978478.a, A166340, A166340.P14544244281529848433.a, A166344, A166344.P1539727011771892900.a, A166345, A166345.P5625863510246000059.a, A008292, A008292.P18172958035633294905.a, A176200, A176200.P6006487728366513129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166341

/-! ## A166341.P1573520373658405025

`(A166343(n+1)+A166340(n+1))/2`
-/

namespace A166341.P1573520373658405025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166343 (n + 1) + A166340 (n + 1) : ℚ) / 2

end

end A166341.P1573520373658405025

namespace A166341

/-- `(A166343(n+1)+A166340(n+1))/2` -/
def P1573520373658405025.Spec : Prop :=
  ∀ n, P1573520373658405025.a n = (A166341 (n + 1) : ℚ)

theorem P1573520373658405025.correct : P1573520373658405025.Spec := by
  intro n
  simp only [A166341, Nat.add_sub_cancel, A166341.P1573520373658405025.a, A166341.P17958424774460978478.a, A166340, A166340.P14544244281529848433.a, A166343, A166343.P12006835282466394169.a, A166344, A166344.P1539727011771892900.a, A008292, A008292.P18172958035633294905.a, A166345, A166345.P5625863510246000059.a, A176200, A176200.P6006487728366513129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166341

/-! ## A166341.P15630721685312316185

`A008292(n+1)+A166340(n+1)-A166345(n+1)`
-/

namespace A166341.P15630721685312316185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A166340 (n + 1) - A166345 (n + 1))

end

end A166341.P15630721685312316185

namespace A166341

/-- `A008292(n+1)+A166340(n+1)-A166345(n+1)` -/
def P15630721685312316185.Spec : Prop :=
  ∀ n, P15630721685312316185.a n = A166341 (n + 1)

theorem P15630721685312316185.correct : P15630721685312316185.Spec := by
  intro n
  simp only [A166341, Nat.add_sub_cancel, A166341.P15630721685312316185.a, A166341.P17958424774460978478.a, A008292, A008292.P18172958035633294905.a, A166340, A166340.P14544244281529848433.a, A166344, A166344.P1539727011771892900.a, A166345, A166345.P5625863510246000059.a, A176200, A176200.P6006487728366513129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166341

/-! ## A166341.P14592820954474906682

`A008292(n+1)+A166343(n+1)-A166344(n+1)`
-/

namespace A166341.P14592820954474906682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A166343 (n + 1) - A166344 (n + 1))

end

end A166341.P14592820954474906682

namespace A166341

/-- `A008292(n+1)+A166343(n+1)-A166344(n+1)` -/
def P14592820954474906682.Spec : Prop :=
  ∀ n, P14592820954474906682.a n = A166341 (n + 1)

theorem P14592820954474906682.correct : P14592820954474906682.Spec := by
  intro n
  simp only [A166341, Nat.add_sub_cancel, A166341.P14592820954474906682.a, A166341.P17958424774460978478.a, A008292, A008292.P18172958035633294905.a, A166340, A166340.P14544244281529848433.a, A166343, A166343.P12006835282466394169.a, A166344, A166344.P1539727011771892900.a, A166345, A166345.P5625863510246000059.a, A176200, A176200.P6006487728366513129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166341

/-! ## A166341.P3880225998636124290

`A166340(n+1)+A166344(n+1)-A008292(n+1)`
-/

namespace A166341.P3880225998636124290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166340 (n + 1) + (A166344 (n + 1) - A008292 (n + 1))

end

end A166341.P3880225998636124290

namespace A166341

/-- `A166340(n+1)+A166344(n+1)-A008292(n+1)` -/
def P3880225998636124290.Spec : Prop :=
  ∀ n, P3880225998636124290.a n = A166341 (n + 1)

theorem P3880225998636124290.correct : P3880225998636124290.Spec := by
  intro n
  simp only [A166341, Nat.add_sub_cancel, A166341.P3880225998636124290.a, A166341.P17958424774460978478.a, A008292, A008292.P18172958035633294905.a, A166340, A166340.P14544244281529848433.a, A166344, A166344.P1539727011771892900.a, A166345, A166345.P5625863510246000059.a, A176200, A176200.P6006487728366513129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166341

/-! ## A166341.P2991260113943670096

`A166343(n+1)+A166344(n+1)-A166340(n+1)`
-/

namespace A166341.P2991260113943670096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166343 (n + 1) + (A166344 (n + 1) - A166340 (n + 1))

end

end A166341.P2991260113943670096

namespace A166341

/-- `A166343(n+1)+A166344(n+1)-A166340(n+1)` -/
def P2991260113943670096.Spec : Prop :=
  ∀ n, P2991260113943670096.a n = A166341 (n + 1)

theorem P2991260113943670096.correct : P2991260113943670096.Spec := by
  intro n
  simp only [A166341, Nat.add_sub_cancel, A166341.P2991260113943670096.a, A166341.P17958424774460978478.a, A166340, A166340.P14544244281529848433.a, A166343, A166343.P12006835282466394169.a, A166344, A166344.P1539727011771892900.a, A008292, A008292.P18172958035633294905.a, A166345, A166345.P5625863510246000059.a, A176200, A176200.P6006487728366513129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166341

/-!
# A166342: Numbers n such that (n+2)*n!*Sum((-1)^k/k!),k=0..n+2 is prime.

The programs for A166342, there is no canonical definition to state claims against.
-/

/-! ## A166342.P7425911203684629379

`A222254(A301423(n+1)-2)`
-/

namespace A166342.P7425911203684629379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A301423 (n + 1) - 2).toNat

end

end A166342.P7425911203684629379

/-! ## A166342.P12106785779504258929

`A301423(n+1)-p?[A160381(n)]`
-/

namespace A166342.P12106785779504258929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301423 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166342.P12106785779504258929

/-! ## A166342.P10848839660571097275

`A301423(n+1)-p?[A193495(n)]`
-/

namespace A166342.P10848839660571097275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301423 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166342.P10848839660571097275

/-! ## A166342.P2459525145744453260

`A301423(n+1)-p?[A268643(n)]`
-/

namespace A166342.P2459525145744453260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301423 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166342.P2459525145744453260

/-! ## A166342.P4102094342512619793

`A301423(n+1)-A110976(A339164(n))`
-/

namespace A166342.P4102094342512619793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301423 (n + 1) - A110976 (A339164 n).toNat

end

end A166342.P4102094342512619793

/-!
# A166343: Triangle T(n, k) = coefficients of ( t(n, x) ) where t(n, x) = (1-x)^(n+1)*p(n, x)/x, p(n, x) = x*D( p(n-1, x) ), with p(1, x) = x/(1-x)^2, p(2, x) = x*(1+x)/(1-x)^3, and p(3, x) = x*(1+12*x+x^2)/(1-x)^4, read by rows.

The programs for A166343, the canonical program `A166343.P12006835282466394169` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166343 has offset 1).

The definition of A166343 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166343.P12006835282466394169

`2*A166340(n+1)-A008292(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A166343

/-- `2*A166340(n+1)-A008292(n+1)` -/
def P12006835282466394169.Spec : Prop :=
  ∀ n, P12006835282466394169.a n = A166343 (n + 1)

theorem P12006835282466394169.correct : P12006835282466394169.Spec := by
  intro n
  simp only [A166343, Nat.add_sub_cancel]

end A166343

/-! ## A166343.P502401738167448403

`2*A166341(n+1)-A166340(n+1)`
-/

namespace A166343.P502401738167448403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166341 (n + 1) - A166340 (n + 1)

end

end A166343.P502401738167448403

namespace A166343

/-- `2*A166341(n+1)-A166340(n+1)` -/
def P502401738167448403.Spec : Prop :=
  ∀ n, P502401738167448403.a n = A166343 (n + 1)

theorem P502401738167448403.correct : P502401738167448403.Spec := by
  intro n
  simp only [A166343, Nat.add_sub_cancel, A166343.P502401738167448403.a, A166343.P12006835282466394169.a, A008292, A008292.P18172958035633294905.a, A166340, A166340.P14544244281529848433.a, A166341, A166341.P17958424774460978478.a, A166344, A166344.P1539727011771892900.a, A166345, A166345.P5625863510246000059.a, A176200, A176200.P6006487728366513129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166343

/-! ## A166343.P9227998987461359324

`A008292(n+1)+A166341(n+1)-A166345(n+1)`
-/

namespace A166343.P9227998987461359324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A166341 (n + 1) - A166345 (n + 1))

end

end A166343.P9227998987461359324

namespace A166343

/-- `A008292(n+1)+A166341(n+1)-A166345(n+1)` -/
def P9227998987461359324.Spec : Prop :=
  ∀ n, P9227998987461359324.a n = A166343 (n + 1)

theorem P9227998987461359324.correct : P9227998987461359324.Spec := by
  intro n
  simp only [A166343, Nat.add_sub_cancel, A166343.P9227998987461359324.a, A166343.P12006835282466394169.a, A008292, A008292.P18172958035633294905.a, A166340, A166340.P14544244281529848433.a, A166341, A166341.P17958424774460978478.a, A166345, A166345.P5625863510246000059.a, A166344, A166344.P1539727011771892900.a, A176200, A176200.P6006487728366513129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166343

/-! ## A166343.P7457763585589056260

`A166341(n+1)+A166344(n+1)-A008292(n+1)`
-/

namespace A166343.P7457763585589056260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166341 (n + 1) + (A166344 (n + 1) - A008292 (n + 1))

end

end A166343.P7457763585589056260

namespace A166343

/-- `A166341(n+1)+A166344(n+1)-A008292(n+1)` -/
def P7457763585589056260.Spec : Prop :=
  ∀ n, P7457763585589056260.a n = A166343 (n + 1)

theorem P7457763585589056260.correct : P7457763585589056260.Spec := by
  intro n
  simp only [A166343, Nat.add_sub_cancel, A166343.P7457763585589056260.a, A166343.P12006835282466394169.a, A008292, A008292.P18172958035633294905.a, A166340, A166340.P14544244281529848433.a, A166341, A166341.P17958424774460978478.a, A166344, A166344.P1539727011771892900.a, A166345, A166345.P5625863510246000059.a, A176200, A176200.P6006487728366513129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166343

/-! ## A166343.P15645964213914569827

`A166340(n+1)+A166341(n+1)-A166344(n+1)`
-/

namespace A166343.P15645964213914569827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166340 (n + 1) + (A166341 (n + 1) - A166344 (n + 1))

end

end A166343.P15645964213914569827

namespace A166343

/-- `A166340(n+1)+A166341(n+1)-A166344(n+1)` -/
def P15645964213914569827.Spec : Prop :=
  ∀ n, P15645964213914569827.a n = A166343 (n + 1)

theorem P15645964213914569827.correct : P15645964213914569827.Spec := by
  intro n
  simp only [A166343, Nat.add_sub_cancel, A166343.P15645964213914569827.a, A166343.P12006835282466394169.a, A008292, A008292.P18172958035633294905.a, A166340, A166340.P14544244281529848433.a, A166341, A166341.P17958424774460978478.a, A166344, A166344.P1539727011771892900.a, A166345, A166345.P5625863510246000059.a, A176200, A176200.P6006487728366513129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166343

/-! ## A166343.P13829490898674582723

`A166340(n+1)+A166344(n+1)-A166345(n+1)`
-/

namespace A166343.P13829490898674582723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166340 (n + 1) + (A166344 (n + 1) - A166345 (n + 1))

end

end A166343.P13829490898674582723

namespace A166343

/-- `A166340(n+1)+A166344(n+1)-A166345(n+1)` -/
def P13829490898674582723.Spec : Prop :=
  ∀ n, P13829490898674582723.a n = A166343 (n + 1)

theorem P13829490898674582723.correct : P13829490898674582723.Spec := by
  intro n
  simp only [A166343, Nat.add_sub_cancel, A166343.P13829490898674582723.a, A166343.P12006835282466394169.a, A008292, A008292.P18172958035633294905.a, A166340, A166340.P14544244281529848433.a, A166344, A166344.P1539727011771892900.a, A166345, A166345.P5625863510246000059.a, A176200, A176200.P6006487728366513129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166343

/-!
# A166344: Triangle T(n, k) = coefficients of ( t(n, x) ) where t(n, x) = (1-x)^(n+1)*p(n, x)/x, p(n, x) = x*D( p(n-1, x) ), with p(1, x) = x/(1-x)^2, p(2, x) = x*(1+x)/(1-x)^3, and p(3, x) = x*(1+6*x+x^2)/(1-x)^4, read by rows.

The programs for A166344, the canonical program `A166344.P1539727011771892900` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166344 has offset 1).

The definition of A166344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166344.P1539727011771892900

`A176200(n)+1-A166345(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A166344

/-- `A176200(n)+1-A166345(n+1)` -/
def P1539727011771892900.Spec : Prop :=
  ∀ n, P1539727011771892900.a n = A166344 (n + 1)

theorem P1539727011771892900.correct : P1539727011771892900.Spec := by
  intro n
  simp only [A166344, Nat.add_sub_cancel]

end A166344

/-! ## A166344.P12335147240329174862

`2*A008292(n+1)-A166345(n+1)`
-/

namespace A166344.P12335147240329174862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008292 (n + 1) - A166345 (n + 1)

end

end A166344.P12335147240329174862

namespace A166344

/-- `2*A008292(n+1)-A166345(n+1)` -/
def P12335147240329174862.Spec : Prop :=
  ∀ n, P12335147240329174862.a n = A166344 (n + 1)

theorem P12335147240329174862.correct : P12335147240329174862.Spec := by
  intro n
  simp only [A166344, Nat.add_sub_cancel, A166344.P12335147240329174862.a, A166344.P1539727011771892900.a, A008292, A008292.P18172958035633294905.a, A166345, A166345.P5625863510246000059.a, A176200, A176200.P6006487728366513129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166344

/-! ## A166344.P14376908637332017288

`(A166340(n+1)+A008292(n+1))/2`
-/

namespace A166344.P14376908637332017288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166340 (n + 1) + A008292 (n + 1) : ℚ) / 2

end

end A166344.P14376908637332017288

namespace A166344

/-- `(A166340(n+1)+A008292(n+1))/2` -/
def P14376908637332017288.Spec : Prop :=
  ∀ n, P14376908637332017288.a n = (A166344 (n + 1) : ℚ)

theorem P14376908637332017288.correct : P14376908637332017288.Spec := by
  intro n
  simp only [A166344, Nat.add_sub_cancel, A166344.P14376908637332017288.a, A166344.P1539727011771892900.a, A008292, A008292.P18172958035633294905.a, A166340, A166340.P14544244281529848433.a, A166345, A166345.P5625863510246000059.a, A176200, A176200.P6006487728366513129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166344

/-! ## A166344.P6645383634404385477

`2*A166340(n+1)-A166341(n+1)`
-/

namespace A166344.P6645383634404385477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166340 (n + 1) - A166341 (n + 1)

end

end A166344.P6645383634404385477

namespace A166344

/-- `2*A166340(n+1)-A166341(n+1)` -/
def P6645383634404385477.Spec : Prop :=
  ∀ n, P6645383634404385477.a n = A166344 (n + 1)

theorem P6645383634404385477.correct : P6645383634404385477.Spec := by
  intro n
  simp only [A166344, Nat.add_sub_cancel, A166344.P6645383634404385477.a, A166344.P1539727011771892900.a, A166340, A166340.P14544244281529848433.a, A166341, A166341.P17958424774460978478.a, A166345, A166345.P5625863510246000059.a, A176200, A176200.P6006487728366513129.a, A008292, A008292.P18172958035633294905.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166344

/-! ## A166344.P5962389259799370722

`(A166345(n+1)+A166341(n+1))/2`
-/

namespace A166344.P5962389259799370722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166345 (n + 1) + A166341 (n + 1) : ℚ) / 2

end

end A166344.P5962389259799370722

namespace A166344

/-- `(A166345(n+1)+A166341(n+1))/2` -/
def P5962389259799370722.Spec : Prop :=
  ∀ n, P5962389259799370722.a n = (A166344 (n + 1) : ℚ)

theorem P5962389259799370722.correct : P5962389259799370722.Spec := by
  intro n
  simp only [A166344, Nat.add_sub_cancel, A166344.P5962389259799370722.a, A166344.P1539727011771892900.a, A166341, A166341.P17958424774460978478.a, A166345, A166345.P5625863510246000059.a, A176200, A176200.P6006487728366513129.a, A008292, A008292.P18172958035633294905.a, A166340, A166340.P14544244281529848433.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166344

/-! ## A166344.P14501497103427437005

`A008292(n+1)+A166341(n+1)-A166340(n+1)`
-/

namespace A166344.P14501497103427437005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A166341 (n + 1) - A166340 (n + 1))

end

end A166344.P14501497103427437005

namespace A166344

/-- `A008292(n+1)+A166341(n+1)-A166340(n+1)` -/
def P14501497103427437005.Spec : Prop :=
  ∀ n, P14501497103427437005.a n = A166344 (n + 1)

theorem P14501497103427437005.correct : P14501497103427437005.Spec := by
  intro n
  simp only [A166344, Nat.add_sub_cancel, A166344.P14501497103427437005.a, A166344.P1539727011771892900.a, A008292, A008292.P18172958035633294905.a, A166340, A166340.P14544244281529848433.a, A166341, A166341.P17958424774460978478.a, A166345, A166345.P5625863510246000059.a, A176200, A176200.P6006487728366513129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166344

/-! ## A166344.P10999240060139979087

`A008292(n+1)+A166343(n+1)-A166341(n+1)`
-/

namespace A166344.P10999240060139979087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A166343 (n + 1) - A166341 (n + 1))

end

end A166344.P10999240060139979087

namespace A166344

/-- `A008292(n+1)+A166343(n+1)-A166341(n+1)` -/
def P10999240060139979087.Spec : Prop :=
  ∀ n, P10999240060139979087.a n = A166344 (n + 1)

theorem P10999240060139979087.correct : P10999240060139979087.Spec := by
  intro n
  simp only [A166344, Nat.add_sub_cancel, A166344.P10999240060139979087.a, A166344.P1539727011771892900.a, A008292, A008292.P18172958035633294905.a, A166341, A166341.P17958424774460978478.a, A166343, A166343.P12006835282466394169.a, A166345, A166345.P5625863510246000059.a, A176200, A176200.P6006487728366513129.a, A166340, A166340.P14544244281529848433.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166344

/-! ## A166344.P4403927000570232741

`A166340(n+1)+A166345(n+1)-A008292(n+1)`
-/

namespace A166344.P4403927000570232741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166340 (n + 1) + (A166345 (n + 1) - A008292 (n + 1))

end

end A166344.P4403927000570232741

namespace A166344

/-- `A166340(n+1)+A166345(n+1)-A008292(n+1)` -/
def P4403927000570232741.Spec : Prop :=
  ∀ n, P4403927000570232741.a n = A166344 (n + 1)

theorem P4403927000570232741.correct : P4403927000570232741.Spec := by
  intro n
  simp only [A166344, Nat.add_sub_cancel, A166344.P4403927000570232741.a, A166344.P1539727011771892900.a, A008292, A008292.P18172958035633294905.a, A166340, A166340.P14544244281529848433.a, A166345, A166345.P5625863510246000059.a, A176200, A176200.P6006487728366513129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166344

/-! ## A166344.P8668384837799264691

`A166343(n+1)+A166345(n+1)-A166340(n+1)`
-/

namespace A166344.P8668384837799264691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166343 (n + 1) + (A166345 (n + 1) - A166340 (n + 1))

end

end A166344.P8668384837799264691

namespace A166344

/-- `A166343(n+1)+A166345(n+1)-A166340(n+1)` -/
def P8668384837799264691.Spec : Prop :=
  ∀ n, P8668384837799264691.a n = A166344 (n + 1)

theorem P8668384837799264691.correct : P8668384837799264691.Spec := by
  intro n
  simp only [A166344, Nat.add_sub_cancel, A166344.P8668384837799264691.a, A166344.P1539727011771892900.a, A166340, A166340.P14544244281529848433.a, A166343, A166343.P12006835282466394169.a, A166345, A166345.P5625863510246000059.a, A176200, A176200.P6006487728366513129.a, A008292, A008292.P18172958035633294905.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166344

/-!
# A166345: Triangle T(n, k) = coefficients of ( t(n, x) ) where t(n, x) = (1-x)^(n+1)*p(n, x)/x, p(n, x) = x*D( p(n-1, x) ), with p(1, x) = x/(1-x)^2, p(2, x) = x*(1+x)/(1-x)^3, and p(3, x) = x*(1+2*x+x^2)/(1-x)^4, read by rows.

The programs for A166345, the canonical program `A166345.P5625863510246000059` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166345 has offset 1).

The definition of A166345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166345.P5625863510246000059

`(col(n)+1)*T(n-1,k)+(row(n)+1-col(n))*T(n-1,k-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166345

/-- `(col(n)+1)*T(n-1,k)+(row(n)+1-col(n))*T(n-1,k-1)` -/
def P5625863510246000059.Spec : Prop :=
  ∀ n, P5625863510246000059.a n = A166345 (n + 1)

theorem P5625863510246000059.correct : P5625863510246000059.Spec := by
  intro n
  simp only [A166345, Nat.add_sub_cancel]

end A166345

/-! ## A166345.P5006704306114193653

`A176200(n)+1-A166344(n+1)`
-/

namespace A166345.P5006704306114193653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176200 n + (1 - A166344 (n + 1))

end

end A166345.P5006704306114193653

namespace A166345

/-- `A176200(n)+1-A166344(n+1)` -/
def P5006704306114193653.Spec : Prop :=
  ∀ n, P5006704306114193653.a n = A166345 (n + 1)

theorem P5006704306114193653.correct : P5006704306114193653.Spec := by
  intro n
  simp only [A166345, Nat.add_sub_cancel, A166345.P5006704306114193653.a, A166345.P5625863510246000059.a, A166344, A166344.P1539727011771892900.a, A176200, A176200.P6006487728366513129.a, A008292, A008292.P18172958035633294905.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166345

/-! ## A166345.P8960299058615785954

`2*A008292(n+1)-A166344(n+1)`
-/

namespace A166345.P8960299058615785954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008292 (n + 1) - A166344 (n + 1)

end

end A166345.P8960299058615785954

namespace A166345

/-- `2*A008292(n+1)-A166344(n+1)` -/
def P8960299058615785954.Spec : Prop :=
  ∀ n, P8960299058615785954.a n = A166345 (n + 1)

theorem P8960299058615785954.correct : P8960299058615785954.Spec := by
  intro n
  simp only [A166345, Nat.add_sub_cancel, A166345.P8960299058615785954.a, A166345.P5625863510246000059.a, A008292, A008292.P18172958035633294905.a, A166344, A166344.P1539727011771892900.a, A176200, A176200.P6006487728366513129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166345

/-! ## A166345.P8529041927698507086

`2*A166344(n+1)-A166341(n+1)`
-/

namespace A166345.P8529041927698507086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166344 (n + 1) - A166341 (n + 1)

end

end A166345.P8529041927698507086

namespace A166345

/-- `2*A166344(n+1)-A166341(n+1)` -/
def P8529041927698507086.Spec : Prop :=
  ∀ n, P8529041927698507086.a n = A166345 (n + 1)

theorem P8529041927698507086.correct : P8529041927698507086.Spec := by
  intro n
  simp only [A166345, Nat.add_sub_cancel, A166345.P8529041927698507086.a, A166345.P5625863510246000059.a, A166341, A166341.P17958424774460978478.a, A166344, A166344.P1539727011771892900.a, A166340, A166340.P14544244281529848433.a, A176200, A176200.P6006487728366513129.a, A008292, A008292.P18172958035633294905.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166345

/-! ## A166345.P14470452195198675083

`A008292(n+1)+A166340(n+1)-A166341(n+1)`
-/

namespace A166345.P14470452195198675083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A166340 (n + 1) - A166341 (n + 1))

end

end A166345.P14470452195198675083

namespace A166345

/-- `A008292(n+1)+A166340(n+1)-A166341(n+1)` -/
def P14470452195198675083.Spec : Prop :=
  ∀ n, P14470452195198675083.a n = A166345 (n + 1)

theorem P14470452195198675083.correct : P14470452195198675083.Spec := by
  intro n
  simp only [A166345, Nat.add_sub_cancel, A166345.P14470452195198675083.a, A166345.P5625863510246000059.a, A008292, A008292.P18172958035633294905.a, A166340, A166340.P14544244281529848433.a, A166341, A166341.P17958424774460978478.a, A166344, A166344.P1539727011771892900.a, A176200, A176200.P6006487728366513129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166345

/-! ## A166345.P16967769286688692610

`A008292(n+1)+A166341(n+1)-A166343(n+1)`
-/

namespace A166345.P16967769286688692610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A166341 (n + 1) - A166343 (n + 1))

end

end A166345.P16967769286688692610

namespace A166345

/-- `A008292(n+1)+A166341(n+1)-A166343(n+1)` -/
def P16967769286688692610.Spec : Prop :=
  ∀ n, P16967769286688692610.a n = A166345 (n + 1)

theorem P16967769286688692610.correct : P16967769286688692610.Spec := by
  intro n
  simp only [A166345, Nat.add_sub_cancel, A166345.P16967769286688692610.a, A166345.P5625863510246000059.a, A008292, A008292.P18172958035633294905.a, A166341, A166341.P17958424774460978478.a, A166343, A166343.P12006835282466394169.a, A166340, A166340.P14544244281529848433.a, A166344, A166344.P1539727011771892900.a, A176200, A176200.P6006487728366513129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166345

/-! ## A166345.P16097677177485089251

`A008292(n+1)+A166344(n+1)-A166340(n+1)`
-/

namespace A166345.P16097677177485089251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A166344 (n + 1) - A166340 (n + 1))

end

end A166345.P16097677177485089251

namespace A166345

/-- `A008292(n+1)+A166344(n+1)-A166340(n+1)` -/
def P16097677177485089251.Spec : Prop :=
  ∀ n, P16097677177485089251.a n = A166345 (n + 1)

theorem P16097677177485089251.correct : P16097677177485089251.Spec := by
  intro n
  simp only [A166345, Nat.add_sub_cancel, A166345.P16097677177485089251.a, A166345.P5625863510246000059.a, A008292, A008292.P18172958035633294905.a, A166340, A166340.P14544244281529848433.a, A166344, A166344.P1539727011771892900.a, A176200, A176200.P6006487728366513129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166345

/-! ## A166345.P2061095008866956465

`A166340(n+1)+A166344(n+1)-A166343(n+1)`
-/

namespace A166345.P2061095008866956465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166340 (n + 1) + (A166344 (n + 1) - A166343 (n + 1))

end

end A166345.P2061095008866956465

namespace A166345

/-- `A166340(n+1)+A166344(n+1)-A166343(n+1)` -/
def P2061095008866956465.Spec : Prop :=
  ∀ n, P2061095008866956465.a n = A166345 (n + 1)

theorem P2061095008866956465.correct : P2061095008866956465.Spec := by
  intro n
  simp only [A166345, Nat.add_sub_cancel, A166345.P2061095008866956465.a, A166345.P5625863510246000059.a, A166340, A166340.P14544244281529848433.a, A166343, A166343.P12006835282466394169.a, A166344, A166344.P1539727011771892900.a, A008292, A008292.P18172958035633294905.a, A176200, A176200.P6006487728366513129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166345

/-!
# A166346: Coefficients of numerator of recursively defined rational function: p(x,3)=x*(x^2 + 8*x + 1)/(1 - x)^4; p(x, n) = 2*x*D[p(x, n - 1), x] - p(x,n-2).

The programs for A166346, there is no canonical definition to state claims against.
-/

/-! ## A166346.P1157572765014795510

`A130925(5^A014473(n))`
-/

namespace A166346.P1157572765014795510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130925 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A014473 n : ℤ))).toNat

end

end A166346.P1157572765014795510

/-! ## A166346.P5145428677775487596

`∑{d}[A118185(n), A335433(#)]`
-/

namespace A166346.P5145428677775487596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A335433 d

end

end A166346.P5145428677775487596

/-! ## A166346.P304544393793418619

`A250200(A157148(n))+A157155(n)`
-/

namespace A166346.P304544393793418619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250200 (A157148 n).toNat + A157155 n

end

end A166346.P304544393793418619

/-! ## A166346.P4028513840302429105

`A157640(n)-A010893(A009963(n))`
-/

namespace A166346.P4028513840302429105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157640 n - A010893 ((A009963 n).toNat + 13)

end

end A166346.P4028513840302429105

/-! ## A166346.P11449613679958538002

`A330753(A002385(n+1)*A142458(n+1))`
-/

namespace A166346.P11449613679958538002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330753 (A002385 (n + 1) * A142458 (n + 1)).toNat

end

end A166346.P11449613679958538002

/-!
# A166347: Irregular triangle read by rows of the frequency with which each value v of floor (j^2/p) occurs within A165974 for each prime p, taken over 1 <= j <= p - 1.

The programs for A166347, there is no canonical definition to state claims against.
-/

/-! ## A166347.P9280150768354043234

`and(Δ[n^3], A287072(2*(n^3+(n+1)²)))`
-/

namespace A166347.P9280150768354043234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (A287072 (2 * (n ^ 3 + (n + 1) ^ 2)))

end

end A166347.P9280150768354043234

/-! ## A166347.P18353876827962489888

`A004602(A028495(n)+A017353(n))`
-/

namespace A166347.P18353876827962489888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004602 (A028495 n + A017353 n).toNat

end

end A166347.P18353876827962489888

/-! ## A166347.P12238585126311003018

`A175432(A248350(n+3))-A285716(n+4)`
-/

namespace A166347.P12238585126311003018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175432 (A248350 (n + 3)).toNat - A285716 (n + 4)

end

end A166347.P12238585126311003018

/-! ## A166347.P15449246076804565853

`A124010(2*(n+2))-A284588(A054554(3*n+2))`
-/

namespace A166347.P15449246076804565853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (2 * (n + 2)) - A284588 (A054554 (3 * n + 2)).toNat

end

end A166347.P15449246076804565853

/-! ## A166347.P12185902433175174211

`C(A124778(2*n), A230440(A191737(n+2)))`
-/

namespace A166347.P12185902433175174211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A124778 (2 * n)).toNat (A230440 (A191737 (n + 2)).toNat).toNat

end

end A166347.P12185902433175174211

/-!
# A166348: Irregular triangle read by rows giving the frequency with which each nonzero value v of floor (j^2/p) occurs within A165974 for each j, taken over all primes p.

The programs for A166348, there is no canonical definition to state claims against.
-/

/-! ## A166348.P8688133088010954454

`A010766(n+1)-A288711(A098717(n+1))`
-/

namespace A166348.P8688133088010954454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) - A288711 (A098717 (n + 1)).toNat

end

end A166348.P8688133088010954454

/-! ## A166348.P15051371268174468819

`A327216(A011782(n))+A180969(n)`
-/

namespace A166348.P15051371268174468819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327216 (A011782 n).toNat + A180969 n

end

end A166348.P15051371268174468819

/-! ## A166348.P17997069373823668589

`A010766(n+1)-A341613(A052542(n))`
-/

namespace A166348.P17997069373823668589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) - A341613 (A052542 n).toNat

end

end A166348.P17997069373823668589

/-! ## A166348.P15928023300152938911

`A137865(A213812(3*(n+1)))+A027200(n+1)`
-/

namespace A166348.P15928023300152938911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137865 (A213812 (3 * (n + 1))).toNat + A027200 (n + 1)

end

end A166348.P15928023300152938911

/-! ## A166348.P16511948349926885629

`A120885(n+1)-A005089(A123613(n))`
-/

namespace A166348.P16511948349926885629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120885 (n + 1) - A005089 (A123613 n).toNat

end

end A166348.P16511948349926885629

/-!
# A166349: Coefficients of numerator of recursively defined rational function: p(x,3)=x*(x^2 + 6*x + 1)/(1 - x)^4; p(x, n) = 2*x*D[p(x, n - 1), x] - p(x,n-2).

The programs for A166349, there is no canonical definition to state claims against.
-/

/-! ## A166349.P3488828891057840563

`A028898(A022176(n))`
-/

namespace A166349.P3488828891057840563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (A022176 n).toNat

end

end A166349.P3488828891057840563

/-! ## A166349.P13333172496437989765

`A102826(A347974(n))`
-/

namespace A166349.P13333172496437989765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102826 (A347974 n).toNat

end

end A166349.P13333172496437989765

/-! ## A166349.P4561466728863845118

`A344342(A157221(n))`
-/

namespace A166349.P4561466728863845118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344342 (A157221 n).toNat

end

end A166349.P4561466728863845118

/-! ## A166349.P10850996782964566561

`A329396(A178346(n))`
-/

namespace A166349.P10850996782964566561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329396 (A178346 n).toNat

end

end A166349.P10850996782964566561

/-! ## A166349.P3174188664414441669

`A317717(A347975(n))`
-/

namespace A166349.P3174188664414441669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317717 (A347975 n).toNat

end

end A166349.P3174188664414441669

/-!
# A166350: Triangle read by rows: T(n,m) = m!, n >= 1.

The programs for A166350, the canonical program `A166350.P6799128383526673935` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166350 has offset 1).

The definition of A166350 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(col(n)+1)!` (program `A166350.P6799128383526673935`, by `A166350.P6799128383526673935.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166350.P6799128383526673935

`(col(n)+1)!`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166350

/-- `(col(n)+1)!` -/
def P6799128383526673935.Spec : Prop :=
  ∀ n, (P6799128383526673935.a n : ℤ) = A166350 (n + 1)

theorem P6799128383526673935.correct : P6799128383526673935.Spec := by
  intro n
  simp only [A166350, Nat.add_sub_cancel]

end A166350

/-! ## A166350.P8776726078052633069

`A000142(col(n)+1)`
-/

namespace A166350.P8776726078052633069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (SequenceMachineLib.triCol n + 1)

end

end A166350.P8776726078052633069

namespace A166350

/-- `A000142(col(n)+1)` -/
def P8776726078052633069.Spec : Prop :=
  ∀ n, P8776726078052633069.a n = A166350 (n + 1)

end A166350

/-! ## A166350.P13669624759964685520

`(n+1-C(∑[char[∑[n]]], 2))!`
-/

namespace A166350.P13669624759964685520
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat

end

end A166350.P13669624759964685520

namespace A166350

/-- `(n+1-C(∑[char[∑[n]]], 2))!` -/
def P13669624759964685520.Spec : Prop :=
  ∀ n, (P13669624759964685520.a n : ℤ) = A166350 (n + 1)

end A166350

/-! ## A166350.P1908569354663853822

`A233543(comp[∑[n]])`
-/

namespace A166350.P1908569354663853822
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A166350.P1908569354663853822

namespace A166350

/-- `A233543(comp[∑[n]])` -/
def P1908569354663853822.Spec : Prop :=
  ∀ n, P1908569354663853822.a n = A166350 (n + 1)

end A166350

/-! ## A166350.P17376879308644749140

`A002260(n+1)!`
-/

namespace A166350.P17376879308644749140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A002260 (n + 1)).toNat

end

end A166350.P17376879308644749140

namespace A166350

/-- `A002260(n+1)!` -/
def P17376879308644749140.Spec : Prop :=
  ∀ n, (P17376879308644749140.a n : ℤ) = A166350 (n + 1)

end A166350

/-! ## A166350.P9163899696458140593

`(A002262(n)+1)!`
-/

namespace A166350.P9163899696458140593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A002262 n + 1).toNat

end

end A166350.P9163899696458140593

namespace A166350

/-- `(A002262(n)+1)!` -/
def P9163899696458140593.Spec : Prop :=
  ∀ n, (P9163899696458140593.a n : ℤ) = A166350 (n + 1)

end A166350

/-! ## A166350.P10918624806209960193

`A002262(comp[∑[n]])!`
-/

namespace A166350.P10918624806209960193
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A002262 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A166350.P10918624806209960193

namespace A166350

/-- `A002262(comp[∑[n]])!` -/
def P10918624806209960193.Spec : Prop :=
  ∀ n, (P10918624806209960193.a n : ℤ) = A166350 (n + 1)

end A166350

/-! ## A166350.P9576744525546507371

`abs(A140756(n+1))!`
-/

namespace A166350.P9576744525546507371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |A140756 (n + 1)|.toNat

end

end A166350.P9576744525546507371

namespace A166350

/-- `abs(A140756(n+1))!` -/
def P9576744525546507371.Spec : Prop :=
  ∀ n, (P9576744525546507371.a n : ℤ) = A166350 (n + 1)

end A166350

/-! ## A166350.P16557599067697792136

`sqrt(A133819(n+1))!`
-/

namespace A166350.P16557599067697792136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ))).toNat

end

end A166350.P16557599067697792136

namespace A166350

/-- `sqrt(A133819(n+1))!` -/
def P16557599067697792136.Spec : Prop :=
  ∀ n, (P16557599067697792136.a n : ℤ) = A166350 (n + 1)

end A166350

/-! ## A166350.P8903180731759028448

`A057555(2*n+1)!`
-/

namespace A166350.P8903180731759028448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A057555 (2 * n + 1)).toNat

end

end A166350.P8903180731759028448

namespace A166350

/-- `A057555(2*n+1)!` -/
def P8903180731759028448.Spec : Prop :=
  ∀ n, (P8903180731759028448.a n : ℤ) = A166350 (n + 1)

end A166350

/-! ## A166350.P6026287941137942742

`A097285(2*n+1)!`
-/

namespace A166350.P6026287941137942742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A097285 (2 * n + 1)).toNat

end

end A166350.P6026287941137942742

namespace A166350

/-- `A097285(2*n+1)!` -/
def P6026287941137942742.Spec : Prop :=
  ∀ n, (P6026287941137942742.a n : ℤ) = A166350 (n + 1)

end A166350

/-! ## A166350.P6847799404609412541

`A349520(2*n+1)!`
-/

namespace A166350.P6847799404609412541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A349520 (2 * n + 1)).toNat

end

end A166350.P6847799404609412541

namespace A166350

/-- `A349520(2*n+1)!` -/
def P6847799404609412541.Spec : Prop :=
  ∀ n, (P6847799404609412541.a n : ℤ) = A166350 (n + 1)

end A166350

/-! ## A166350.P13351833250414354816

`A000142(A002262(n)+1)`
-/

namespace A166350.P13351833250414354816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A002262 n + 1).toNat

end

end A166350.P13351833250414354816

namespace A166350

/-- `A000142(A002262(n)+1)` -/
def P13351833250414354816.Spec : Prop :=
  ∀ n, P13351833250414354816.a n = A166350 (n + 1)

end A166350

/-! ## A166350.P8337422330138294777

`A132369(A037126(n+1))`
-/

namespace A166350.P8337422330138294777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132369 (A037126 (n + 1)).toNat

end

end A166350.P8337422330138294777

namespace A166350

/-- `A132369(A037126(n+1))` -/
def P8337422330138294777.Spec : Prop :=
  ∀ n, P8337422330138294777.a n = A166350 (n + 1)

end A166350

/-! ## A166350.P6159801504332488368

`A214080(A127737(n+1))`
-/

namespace A166350.P6159801504332488368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214080 (A127737 (n + 1)).toNat

end

end A166350.P6159801504332488368

namespace A166350

/-- `A214080(A127737(n+1))` -/
def P6159801504332488368.Spec : Prop :=
  ∀ n, P6159801504332488368.a n = A166350 (n + 1)

end A166350

/-! ## A166350.P12851451069177591796

`A187741(A158405(n+1))`
-/

namespace A166350.P12851451069177591796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187741 (A158405 (n + 1)).toNat

end

end A166350.P12851451069177591796

namespace A166350

/-- `A187741(A158405(n+1))` -/
def P12851451069177591796.Spec : Prop :=
  ∀ n, P12851451069177591796.a n = A166350 (n + 1)

end A166350

/-! ## A166350.P1066492500954684402

`A214078(A133819(n+1))`
-/

namespace A166350.P1066492500954684402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214078 (A133819 (n + 1)).toNat

end

end A166350.P1066492500954684402

namespace A166350

/-- `A214078(A133819(n+1))` -/
def P1066492500954684402.Spec : Prop :=
  ∀ n, P1066492500954684402.a n = A166350 (n + 1)

end A166350

/-! ## A166350.P9260844537367212943

`A104150(A002262(n)+2)`
-/

namespace A166350.P9260844537367212943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 (A002262 n + 2).toNat

end

end A166350.P9260844537367212943

namespace A166350

/-- `A104150(A002262(n)+2)` -/
def P9260844537367212943.Spec : Prop :=
  ∀ n, P9260844537367212943.a n = A166350 (n + 1)

end A166350

/-! ## A166350.P11777963274647682888

`A000142(abs(A140756(n+1)))`
-/

namespace A166350.P11777963274647682888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 |A140756 (n + 1)|.toNat

end

end A166350.P11777963274647682888

namespace A166350

/-- `A000142(abs(A140756(n+1)))` -/
def P11777963274647682888.Spec : Prop :=
  ∀ n, P11777963274647682888.a n = A166350 (n + 1)

end A166350

/-!
# A166351: a(n) = (6*n)!/(3*n)!.

The programs for A166351, there is no canonical definition to state claims against.
-/

/-! ## A166351.P5383873159362215769

`24*(6*n-1)*(2*n-1)*(6*n-5)*a(n-1)` with `a(0)=1`
-/

namespace A166351.P5383873159362215769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  24 * (((6 * n : ℤ) - 1) * (((2 * n : ℤ) - 1) * (((6 * n : ℤ) - 5) * a (n - 1))))

end

end A166351.P5383873159362215769

/-! ## A166351.P11787397066090998144

`A001813(3*n)`
-/

namespace A166351.P11787397066090998144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001813 (3 * n)

end

end A166351.P11787397066090998144

/-! ## A166351.P15711590268993499706

`A081125(6*n)`
-/

namespace A166351.P15711590268993499706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081125 (6 * n)

end

end A166351.P15711590268993499706

/-! ## A166351.P1511440128413569715

`A094941(6*n)`
-/

namespace A166351.P1511440128413569715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094941 (6 * n)

end

end A166351.P1511440128413569715

/-! ## A166351.P1014246989345389445

`A205825(6*n)`
-/

namespace A166351.P1014246989345389445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205825 (6 * n)

end

end A166351.P1014246989345389445

/-!
# A166352: Table read by rows where row n contains the sorted digits of the integers 0 through n.

The programs for A166352, there is no canonical definition to state claims against.
-/

/-! ## A166352.P1306293499181595672

`A178798(A160552(n+2))+A002262(n)`
-/

namespace A166352.P1306293499181595672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A160552 (n + 2)).toNat + A002262 n

end

end A166352.P1306293499181595672

/-! ## A166352.P8092390287484102380

`A002262(n)-A102683(A260897(n+5))`
-/

namespace A166352.P8092390287484102380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n - A102683 (A260897 (n + 5)).toNat

end

end A166352.P8092390287484102380

/-! ## A166352.P9014138367301358209

`C(A002262(n), A178334(A281974(n+1)))`
-/

namespace A166352.P9014138367301358209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002262 n).toNat (A178334 (A281974 (n + 1)).toNat).toNat

end

end A166352.P9014138367301358209

/-! ## A166352.P14076746862869769961

`A002260(n+1)-A178334(A281974(n+1))`
-/

namespace A166352.P14076746862869769961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - A178334 (A281974 (n + 1)).toNat

end

end A166352.P14076746862869769961

/-! ## A166352.P6213092537931594318

`A002260(n+1)-A102683(A260897(n+5))-1`
-/

namespace A166352.P6213092537931594318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - A102683 (A260897 (n + 5)).toNat - 1

end

end A166352.P6213092537931594318

/-!
# A166353: Exponential Riordan array [1+x*tan(x/2),x].

The programs for A166353, there is no canonical definition to state claims against.
-/

/-! ## A166353.P16507214600873519927

`A119467(n)*A267562(A130321(n))`
-/

namespace A166353.P16507214600873519927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119467 n * A267562 (A130321 n).toNat

end

end A166353.P16507214600873519927

/-! ## A166353.P623682262328457944

`gcd(A066325(n), A118759(A166335(n)))`
-/

namespace A166353.P623682262328457944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066325 n) (A118759 (A166335 n).toNat)

end

end A166353.P623682262328457944

/-! ## A166353.P12463050780065520700

`A119467(n)*A171398(A216817(n))`
-/

namespace A166353.P12463050780065520700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119467 n * A171398 (A216817 n).toNat

end

end A166353.P12463050780065520700

/-! ## A166353.P6674961931194189603

`A119467(n)*A147457(A060438(n+1))`
-/

namespace A166353.P6674961931194189603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119467 n * A147457 (A060438 (n + 1)).toNat

end

end A166353.P6674961931194189603

/-! ## A166353.P18406399183875549749

`A078898(A379288(3*n+4))*A119467(n)`
-/

namespace A166353.P18406399183875549749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A379288 (3 * n + 4)).toNat * A119467 n

end

end A166353.P18406399183875549749

/-!
# A166354: Row sums of exponential Riordan array [1+x*tan(x/2),x], A166353.

The programs for A166354, there is no canonical definition to state claims against.
-/

/-! ## A166354.P6498207947622988558

`A101892(n)+A000593(A309861(n))`
-/

namespace A166354.P6498207947622988558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101892 n + A000593 (A309861 n).toNat

end

end A166354.P6498207947622988558

/-! ## A166354.P18338047975200513983

`A215978(n)+A025460(A204090(n))`
-/

namespace A166354.P18338047975200513983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215978 n + A025460 (A204090 n).toNat

end

end A166354.P18338047975200513983

/-!
# A166355: Diagonal sums of exponential Riordan array [1+x*tan(x/2),x], A166353.

The programs for A166355, there is no canonical definition to state claims against.
-/

/-! ## A166355.P15847612862013709588

`∑[A086390(a(n-1))+n-3]` with `a(0)=1, a(1)=1`
-/

namespace A166355.P15847612862013709588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A086390 (f1 (n - 1)).toNat + ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166355.P15847612862013709588

/-! ## A166355.P3061302724436153266

`∑[A036234(A001681(n)²)]`
-/

namespace A166355.P3061302724436153266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A001681 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166355.P3061302724436153266

/-!
# A166356: Expansion of e.g.f. 1 + x*arctanh(x), even powers only.

The programs for A166356, the canonical program `A166356.P3542887343951075202` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166356 has offset 0).

The definition of A166356 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166356.P3542887343951075202

`2*n*(2*n-3)*a(n-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A166356

/-- `2*n*(2*n-3)*a(n-1)` -/
def P3542887343951075202.Spec : Prop :=
  ∀ n, P3542887343951075202.a n = A166356 n

theorem P3542887343951075202.correct : P3542887343951075202.Spec := by
  intro n
  simp only [A166356]

end A166356

/-! ## A166356.P6510661650588020942

`abs(∏[a(n-1)-4])*n!` with `a(0)=1, a(1)=2`
-/

namespace A166356.P6510661650588020942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j| * (Nat.factorial n : ℤ)

end

end A166356.P6510661650588020942

namespace A166356

/-- `abs(∏[a(n-1)-4])*n!` -/
def P6510661650588020942.Spec : Prop :=
  ∀ n, P6510661650588020942.a n = A166356 n

end A166356

/-! ## A166356.P13244174243254883500

`comp[2*n+3]!*floor(2/acot(n))`
-/

namespace A166356.P13244174243254883500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ) * ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

end

end A166356.P13244174243254883500

namespace A166356

/-- `comp[2*n+3]!*floor(2/acot(n))` -/
def P13244174243254883500.Spec : Prop :=
  ∀ n, P13244174243254883500.a n = A166356 n

end A166356

/-! ## A166356.P5313454124891345298

`record[(n-3)*n*a(n-2)]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A166356.P5313454124891345298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  ((n : ℤ) - 3) * ((n : ℤ) * f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166356.P5313454124891345298

namespace A166356

/-- `record[(n-3)*n*a(n-2)]` -/
def P5313454124891345298.Spec : Prop :=
  ∀ n, P5313454124891345298.a n = A166356 n

end A166356

/-! ## A166356.P2184608834773130835

`(comp[2*(n+1)]+1)*comp[2*n+3]!`
-/

namespace A166356.P2184608834773130835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) * Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A166356.P2184608834773130835

namespace A166356

/-- `(comp[2*(n+1)]+1)*comp[2*n+3]!` -/
def P2184608834773130835.Spec : Prop :=
  ∀ n, (P2184608834773130835.a n : ℤ) = A166356 n

end A166356

/-!
# A166357: Exponential Riordan array [1+x*arctanh(x), x].

The programs for A166357, there is no canonical definition to state claims against.
-/

/-! ## A166357.P13899031466219106578

`A104609(A130330(n))*A166335(n)`
-/

namespace A166357.P13899031466219106578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104609 (A130330 n).toNat * A166335 n

end

end A166357.P13899031466219106578

/-! ## A166357.P2767371832687937335

`A126061(A126075(n))*A166335(n)`
-/

namespace A166357.P2767371832687937335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126061 (A126075 n).toNat * A166335 n

end

end A166357.P2767371832687937335

/-! ## A166357.P3301278907281362382

`A097610(n)*A355748(A171486(n))`
-/

namespace A166357.P3301278907281362382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097610 n * A355748 (A171486 n).toNat

end

end A166357.P3301278907281362382

/-! ## A166357.P1554319747823230720

`and(A000217(A038255(n)), A067147(n))`
-/

namespace A166357.P1554319747823230720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000217 (A038255 n).toNat) (A067147 n)

end

end A166357.P1554319747823230720

/-! ## A166357.P1952899478052457111

`A118088(A117436(n))`
-/

namespace A166357.P1952899478052457111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118088 (A117436 n).toNat

end

end A166357.P1952899478052457111

/-!
# A166358: Row sums of exponential Riordan array [1+x*arctanh(x), x], A166357.

The programs for A166358, there is no canonical definition to state claims against.
-/

/-! ## A166358.P15330972045341192147

`or(n, A165705(A199409(n)))`
-/

namespace A166358.P15330972045341192147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A165705 (A199409 n).toNat)

end

end A166358.P15330972045341192147

/-! ## A166358.P17002109541489403435

`or(n, A129309(A306947(n)))`
-/

namespace A166358.P17002109541489403435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A129309 (A306947 n).toNat)

end

end A166358.P17002109541489403435

/-! ## A166358.P5076461833660810498

`A023193(A023193(n+1)*A149285(n))`
-/

namespace A166358.P5076461833660810498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A023193 (n + 1) * A149285 n).toNat

end

end A166358.P5076461833660810498

/-!
# A166359: Diagonal sums of the exponential Riordan array [1+x*arctanh(x), x], A166357.

The programs for A166359, there is no canonical definition to state claims against.
-/

/-! ## A166359.P9695354621458265371

`A281995(A113085(n))+A007131(n+1)`
-/

namespace A166359.P9695354621458265371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281995 (A113085 n).toNat + A007131 (n + 1)

end

end A166359.P9695354621458265371

/-!
# A166360: Triangle of Narayana numbers mod 2, T(n,k) = A001263(n,k) mod 2, read by rows.

The programs for A166360, the canonical program `A166360.P13661747061550426905` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166360 has offset 1).

The definition of A166360 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166360.P6927932787701728521

`A001263(n+1)%2`
-/

namespace A166360.P6927932787701728521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001263 (n + 1)) 2

end

end A166360.P6927932787701728521

namespace A166360

/-- `A001263(n+1)%2` -/
def P6927932787701728521.Spec : Prop :=
  ∀ n, P6927932787701728521.a n = A166360 (n + 1)

end A166360

/-! ## A166360.P1972018483346197538

`A088855(n+1)%2`
-/

namespace A166360.P1972018483346197538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088855 (n + 1)) 2

end

end A166360.P1972018483346197538

namespace A166360

/-- `A088855(n+1)%2` -/
def P1972018483346197538.Spec : Prop :=
  ∀ n, P1972018483346197538.a n = A166360 (n + 1)

end A166360

/-! ## A166360.P13557577484487133068

`A128821(n+1)%2`
-/

namespace A166360.P13557577484487133068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128821 (n + 1)) 2

end

end A166360.P13557577484487133068

namespace A166360

/-- `A128821(n+1)%2` -/
def P13557577484487133068.Spec : Prop :=
  ∀ n, P13557577484487133068.a n = A166360 (n + 1)

end A166360

/-! ## A166360.P3518364520929120047

`A174044(n+1)%2`
-/

namespace A166360.P3518364520929120047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174044 (n + 1)) 2

end

end A166360.P3518364520929120047

namespace A166360

/-- `A174044(n+1)%2` -/
def P3518364520929120047.Spec : Prop :=
  ∀ n, P3518364520929120047.a n = A166360 (n + 1)

end A166360

/-! ## A166360.P13661747061550426905

`(A103371(n)/A004736(n+1))%2`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A166360

/-- `(A103371(n)/A004736(n+1))%2` -/
def P13661747061550426905.Spec : Prop :=
  ∀ n, P13661747061550426905.a n = A166360 (n + 1)

theorem P13661747061550426905.correct : P13661747061550426905.Spec := by
  intro n
  simp only [A166360, Nat.add_sub_cancel]

end A166360

/-! ## A166360.P1997803468990757554

`A047999(A007401(n+2)-A047999(n+1))`
-/

namespace A166360.P1997803468990757554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (A007401 (n + 2) - A047999 (n + 1)).toNat

end

end A166360.P1997803468990757554

namespace A166360

/-- `A047999(A007401(n+2)-A047999(n+1))` -/
def P1997803468990757554.Spec : Prop :=
  ∀ n, P1997803468990757554.a n = A166360 (n + 1)

end A166360

/-! ## A166360.P10653714846768926491

`A111910(n)%2`
-/

namespace A166360.P10653714846768926491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111910 n) 2

end

end A166360.P10653714846768926491

namespace A166360

/-- `A111910(n)%2` -/
def P10653714846768926491.Spec : Prop :=
  ∀ n, P10653714846768926491.a n = A166360 (n + 1)

end A166360

/-! ## A166360.P6017238887620063261

`and(A111910(n), A131843(n))`
-/

namespace A166360.P6017238887620063261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A111910 n) (A131843 n)

end

end A166360.P6017238887620063261

namespace A166360

/-- `and(A111910(n), A131843(n))` -/
def P6017238887620063261.Spec : Prop :=
  ∀ n, P6017238887620063261.a n = A166360 (n + 1)

end A166360

/-! ## A166360.P10444559958193406023

`A155537(n+1)%2`
-/

namespace A166360.P10444559958193406023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155537 (n + 1)) 2

end

end A166360.P10444559958193406023

namespace A166360

/-- `A155537(n+1)%2` -/
def P10444559958193406023.Spec : Prop :=
  ∀ n, P10444559958193406023.a n = A166360 (n + 1)

end A166360

/-! ## A166360.P10696531718223407374

`and(1, A174731(n+1))`
-/

namespace A166360.P10696531718223407374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A174731 (n + 1))

end

end A166360.P10696531718223407374

namespace A166360

/-- `and(1, A174731(n+1))` -/
def P10696531718223407374.Spec : Prop :=
  ∀ n, P10696531718223407374.a n = A166360 (n + 1)

end A166360

/-! ## A166360.P3779862765000572868

`A174158(n+1)%2`
-/

namespace A166360.P3779862765000572868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174158 (n + 1)) 2

end

end A166360.P3779862765000572868

namespace A166360

/-- `A174158(n+1)%2` -/
def P3779862765000572868.Spec : Prop :=
  ∀ n, P3779862765000572868.a n = A166360 (n + 1)

end A166360

/-! ## A166360.P1765524435763204795

`and(1, A174733(n+1))`
-/

namespace A166360.P1765524435763204795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A174733 (n + 1))

end

end A166360.P1765524435763204795

namespace A166360

/-- `and(1, A174733(n+1))` -/
def P1765524435763204795.Spec : Prop :=
  ∀ n, P1765524435763204795.a n = A166360 (n + 1)

end A166360

/-! ## A166360.P501035941749950620

`A174159(n+1)%2`
-/

namespace A166360.P501035941749950620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174159 (n + 1)) 2

end

end A166360.P501035941749950620

namespace A166360

/-- `A174159(n+1)%2` -/
def P501035941749950620.Spec : Prop :=
  ∀ n, P501035941749950620.a n = A166360 (n + 1)

end A166360

/-! ## A166360.P8366016364355471496

`and(1, A174160(n+1))`
-/

namespace A166360.P8366016364355471496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A174160 (n + 1))

end

end A166360.P8366016364355471496

namespace A166360

/-- `and(1, A174160(n+1))` -/
def P8366016364355471496.Spec : Prop :=
  ∀ n, P8366016364355471496.a n = A166360 (n + 1)

end A166360

/-! ## A166360.P15311930146878012779

`A286783(n+1)%2`
-/

namespace A166360.P15311930146878012779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286783 (n + 1)) 2

end

end A166360.P15311930146878012779

namespace A166360

/-- `A286783(n+1)%2` -/
def P15311930146878012779.Spec : Prop :=
  ∀ n, P15311930146878012779.a n = A166360 (n + 1)

end A166360

/-! ## A166360.P16127298387904669622

`A178346(n)%2`
-/

namespace A166360.P16127298387904669622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178346 n) 2

end

end A166360.P16127298387904669622

namespace A166360

/-- `A178346(n)%2` -/
def P16127298387904669622.Spec : Prop :=
  ∀ n, P16127298387904669622.a n = A166360 (n + 1)

end A166360

/-! ## A166360.P1291639092111729329

`A174346(n+1)%2`
-/

namespace A166360.P1291639092111729329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174346 (n + 1)) 2

end

end A166360.P1291639092111729329

namespace A166360

/-- `A174346(n+1)%2` -/
def P1291639092111729329.Spec : Prop :=
  ∀ n, P1291639092111729329.a n = A166360 (n + 1)

end A166360

/-! ## A166360.P474902790956102552

`A209805(n+1)%2`
-/

namespace A166360.P474902790956102552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209805 (n + 1)) 2

end

end A166360.P474902790956102552

namespace A166360

/-- `A209805(n+1)%2` -/
def P474902790956102552.Spec : Prop :=
  ∀ n, P474902790956102552.a n = A166360 (n + 1)

end A166360

/-! ## A166360.P5143438241073805674

`A155493(n)%2`
-/

namespace A166360.P5143438241073805674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155493 n) 2

end

end A166360.P5143438241073805674

namespace A166360

/-- `A155493(n)%2` -/
def P5143438241073805674.Spec : Prop :=
  ∀ n, P5143438241073805674.a n = A166360 (n + 1)

end A166360

/-! ## A166360.P13551854217647842947

`and(A077860(n), A111910(n))`
-/

namespace A166360.P13551854217647842947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077860 n) (A111910 n)

end

end A166360.P13551854217647842947

namespace A166360

/-- `and(A077860(n), A111910(n))` -/
def P13551854217647842947.Spec : Prop :=
  ∀ n, P13551854217647842947.a n = A166360 (n + 1)

end A166360

/-!
# A166362: a(n) = phi(nonprime(n)).

The programs for A166362, the canonical program `A166362.P15440525138620438344` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166362 has offset 1).

The definition of A166362 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166362.P15440525138620438344

`A000010(A018252(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A166362

/-- `A000010(A018252(n+1))` -/
def P15440525138620438344.Spec : Prop :=
  ∀ n, P15440525138620438344.a n = A166362 (n + 1)

theorem P15440525138620438344.correct : P15440525138620438344.Spec := by
  intro n
  simp only [A166362, Nat.add_sub_cancel]

end A166362

/-! ## A166362.P5447611983105023929

`A000010(Δ[A051349(n)])`
-/

namespace A166362.P5447611983105023929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat

end

end A166362.P5447611983105023929

namespace A166362

/-- `A000010(Δ[A051349(n)])` -/
def P5447611983105023929.Spec : Prop :=
  ∀ n, P5447611983105023929.a n = A166362 (n + 1)

end A166362

/-! ## A166362.P10860483053401725722

`A000010(A141468(n+2))`
-/

namespace A166362.P10860483053401725722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A141468 (n + 2)).toNat

end

end A166362.P10860483053401725722

namespace A166362

/-- `A000010(A141468(n+2))` -/
def P10860483053401725722.Spec : Prop :=
  ∀ n, P10860483053401725722.a n = A166362 (n + 1)

end A166362

/-! ## A166362.P2913078900740875311

`A000010(sqrt(A062312(n+1)))`
-/

namespace A166362.P2913078900740875311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (Real.sqrt (A062312 (n + 1) : ℝ))).toNat

end

end A166362.P2913078900740875311

namespace A166362

/-- `A000010(sqrt(A062312(n+1)))` -/
def P2913078900740875311.Spec : Prop :=
  ∀ n, P2913078900740875311.a n = A166362 (n + 1)

end A166362

/-! ## A166362.P10577172743899121613

`A000010(∑[A054546(n+1)])`
-/

namespace A166362.P10577172743899121613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A166362.P10577172743899121613

namespace A166362

/-- `A000010(∑[A054546(n+1)])` -/
def P10577172743899121613.Spec : Prop :=
  ∀ n, P10577172743899121613.a n = A166362 (n + 1)

end A166362

/-! ## A166362.P746928937537055360

`A000010(A060462(n+1)+1)`
-/

namespace A166362.P746928937537055360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A060462 (n + 1) + 1).toNat

end

end A166362.P746928937537055360

namespace A166362

/-- `A000010(A060462(n+1)+1)` -/
def P746928937537055360.Spec : Prop :=
  ∀ n, P746928937537055360.a n = A166362 (n + 1)

end A166362

/-! ## A166362.P15831779215480431823

`A000010(A222307(2*n+1))`
-/

namespace A166362.P15831779215480431823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A222307 (2 * n + 1)).toNat

end

end A166362.P15831779215480431823

namespace A166362

/-- `A000010(A222307(2*n+1))` -/
def P15831779215480431823.Spec : Prop :=
  ∀ n, P15831779215480431823.a n = A166362 (n + 1)

end A166362

/-! ## A166362.P10150079143965896851

`A000010(A139270(n+1)/2)`
-/

namespace A166362.P10150079143965896851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A139270 (n + 1) : ℚ) / 2)).toNat

end

end A166362.P10150079143965896851

namespace A166362

/-- `A000010(A139270(n+1)/2)` -/
def P10150079143965896851.Spec : Prop :=
  ∀ n, P10150079143965896851.a n = A166362 (n + 1)

end A166362

/-! ## A166362.P17967002826291589763

`A000010(A073425(n)+1+n)`
-/

namespace A166362.P17967002826291589763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A073425 n + 1 + (n : ℤ)).toNat

end

end A166362.P17967002826291589763

namespace A166362

/-- `A000010(A073425(n)+1+n)` -/
def P17967002826291589763.Spec : Prop :=
  ∀ n, P17967002826291589763.a n = A166362 (n + 1)

end A166362

/-! ## A166362.P2136597370785318392

`A000010(comp[A006093(n+1)]+1)`
-/

namespace A166362.P2136597370785318392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A166362.P2136597370785318392

namespace A166362

/-- `A000010(comp[A006093(n+1)]+1)` -/
def P2136597370785318392.Spec : Prop :=
  ∀ n, P2136597370785318392.a n = A166362 (n + 1)

end A166362

/-! ## A166362.P17944411901630980510

`A000010(comp[A040976(n+2)]+2)`
-/

namespace A166362.P17944411901630980510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A166362.P17944411901630980510

namespace A166362

/-- `A000010(comp[A040976(n+2)]+2)` -/
def P17944411901630980510.Spec : Prop :=
  ∀ n, P17944411901630980510.a n = A166362 (n + 1)

end A166362

/-! ## A166362.P4676504588431878088

`A000010(comp[A351078(2*n+1)])`
-/

namespace A166362.P4676504588431878088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A166362.P4676504588431878088

namespace A166362

/-- `A000010(comp[A351078(2*n+1)])` -/
def P4676504588431878088.Spec : Prop :=
  ∀ n, P4676504588431878088.a n = A166362 (n + 1)

end A166362

/-! ## A166362.P13369270980712035906

`A000010(eq[1, A005171(n+1)]+1)`
-/

namespace A166362.P13369270980712035906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A166362.P13369270980712035906

namespace A166362

/-- `A000010(eq[1, A005171(n+1)]+1)` -/
def P13369270980712035906.Spec : Prop :=
  ∀ n, P13369270980712035906.a n = A166362 (n + 1)

end A166362

/-! ## A166362.P316251130229828736

`A000010(A171504(n+1)-(n+1))`
-/

namespace A166362.P316251130229828736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A171504 (n + 1) - (n + 1 : ℤ)).toNat

end

end A166362.P316251130229828736

namespace A166362

/-- `A000010(A171504(n+1)-(n+1))` -/
def P316251130229828736.Spec : Prop :=
  ∀ n, P316251130229828736.a n = A166362 (n + 1)

theorem P316251130229828736.correct : P316251130229828736.Spec := by
  intro n
  simp only [A166362, Nat.add_sub_cancel, A166362.P316251130229828736.a, A166362.P15440525138620438344.a, A000010, A000010.P4673923239450215316.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A171504, A171504.P6118621284767366624.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166362

/-! ## A166362.P4389354821530071246

`A137148(n+1)/A018252(n+1)`
-/

namespace A166362.P4389354821530071246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137148 (n + 1) : ℚ) / (A018252 (n + 1) : ℚ)

end

end A166362.P4389354821530071246

namespace A166362

/-- `A137148(n+1)/A018252(n+1)` -/
def P4389354821530071246.Spec : Prop :=
  ∀ n, P4389354821530071246.a n = (A166362 (n + 1) : ℚ)

end A166362

/-! ## A166362.P15143022308103898500

`A137148(n+1)/A141468(n+2)`
-/

namespace A166362.P15143022308103898500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137148 (n + 1) : ℚ) / (A141468 (n + 2) : ℚ)

end

end A166362.P15143022308103898500

namespace A166362

/-- `A137148(n+1)/A141468(n+2)` -/
def P15143022308103898500.Spec : Prop :=
  ∀ n, P15143022308103898500.a n = (A166362 (n + 1) : ℚ)

end A166362

/-! ## A166362.P10697469430673903935

`A000010(comp[record[A000010(n+1)]]+1)`
-/

namespace A166362.P10697469430673903935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A166362.P10697469430673903935

namespace A166362

/-- `A000010(comp[record[A000010(n+1)]]+1)` -/
def P10697469430673903935.Spec : Prop :=
  ∀ n, P10697469430673903935.a n = A166362 (n + 1)

end A166362

/-! ## A166362.P954736967252702035

`A000010(comp[A000040(n+1)-1]+1)`
-/

namespace A166362.P954736967252702035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A166362.P954736967252702035

namespace A166362

/-- `A000010(comp[A000040(n+1)-1]+1)` -/
def P954736967252702035.Spec : Prop :=
  ∀ n, P954736967252702035.a n = A166362 (n + 1)

end A166362

/-! ## A166362.P16601987170384870322

`A000010(comp[A006530(n+1)%(n+1)])`
-/

namespace A166362.P16601987170384870322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (n + 1)) (n + 1 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A166362.P16601987170384870322

namespace A166362

/-- `A000010(comp[A006530(n+1)%(n+1)])` -/
def P16601987170384870322.Spec : Prop :=
  ∀ n, P16601987170384870322.a n = A166362 (n + 1)

end A166362

/-! ## A166362.P6923360305331555910

`A000010(comp[C(A006530(n+2), n+1)])`
-/

namespace A166362.P6923360305331555910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 2)).toNat (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A166362.P6923360305331555910

namespace A166362

/-- `A000010(comp[C(A006530(n+2), n+1)])` -/
def P6923360305331555910.Spec : Prop :=
  ∀ n, P6923360305331555910.a n = A166362 (n + 1)

end A166362

/-!
# A166363: Number of primes in the half-open interval (n*(log(n))^2..(n+1)*(log(n+1))^2].

The programs for A166363, the canonical program `A166363.P11370000195262789773` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166363 has offset 1).

The definition of A166363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 304 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166363.P11370000195262789773

`Δ[A230980(A212293(n+1))]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A166363

/-- `Δ[A230980(A212293(n+1))]` -/
def P11370000195262789773.Spec : Prop :=
  ∀ n, P11370000195262789773.a n = A166363 (n + 1)

theorem P11370000195262789773.correct : P11370000195262789773.Spec := by
  intro n
  simp only [A166363, Nat.add_sub_cancel]

end A166363

/-! ## A166363.P10148772637051709898

`A327174(A228872(n+1))+A023645(2*n+1)`
-/

namespace A166363.P10148772637051709898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 (A228872 (n + 1)).toNat + A023645 (2 * n + 1)

end

end A166363.P10148772637051709898

namespace A166363

/-- `A327174(A228872(n+1))+A023645(2*n+1)` -/
def P10148772637051709898.Spec : Prop :=
  ∀ n, P10148772637051709898.a n = A166363 (n + 1)

end A166363

/-! ## A166363.P9701141163634463783

`A001221(A208994(-xor(-1, ∑[5*n])))`
-/

namespace A166363.P9701141163634463783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A208994 (-Int.xor (-1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat).toNat

end

end A166363.P9701141163634463783

namespace A166363

/-- `A001221(A208994(-xor(-1, ∑[5*n])))` -/
def P9701141163634463783.Spec : Prop :=
  ∀ n, P9701141163634463783.a n = A166363 (n + 1)

end A166363

/-! ## A166363.P7377114115341019635

`A001221(A208994(∑[A008706(n)]))`
-/

namespace A166363.P7377114115341019635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A208994 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A166363.P7377114115341019635

namespace A166363

/-- `A001221(A208994(∑[A008706(n)]))` -/
def P7377114115341019635.Spec : Prop :=
  ∀ n, P7377114115341019635.a n = A166363 (n + 1)

end A166363

/-! ## A166363.P2306366754637332621

`A001221(A208994(Δ[A004068(n)]))`
-/

namespace A166363.P2306366754637332621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A208994 (f1 (n + 1) - f1 n).toNat).toNat

end

end A166363.P2306366754637332621

namespace A166363

/-- `A001221(A208994(Δ[A004068(n)]))` -/
def P2306366754637332621.Spec : Prop :=
  ∀ n, P2306366754637332621.a n = A166363 (n + 1)

end A166363

/-!
# A166364: Number of reduced words of length n in Coxeter group on 6 generators S_i with relations (S_i)^2 = (S_i S_j)^11 = I.

The programs for A166364, there is no canonical definition to state claims against.
-/

/-! ## A166364.P13773271429776681803

`A167651(n)-A326688(A156882(n+1))`
-/

namespace A166364.P13773271429776681803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167651 n - A326688 (A156882 (n + 1)).toNat

end

end A166364.P13773271429776681803

/-!
# A166366: Number of reduced words of length n in Coxeter group on 8 generators S_i with relations (S_i)^2 = (S_i S_j)^11 = I.

The programs for A166366, there is no canonical definition to state claims against.
-/

/-! ## A166366.P908614067986481364

`floor(8*7^(n-1))-A166353(A166340(n+1))`
-/

namespace A166366.P908614067986481364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊8 * (7 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A166353 (A166340 (n + 1)).toNat

end

end A166366.P908614067986481364

/-! ## A166366.P17005028184263129245

`A003950(n)-A005843(A185284((5-n)²))`
-/

namespace A166366.P17005028184263129245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003950 n - A005843 (A185284 ((5 - (n : ℤ)) ^ 2).toNat).toNat

end

end A166366.P17005028184263129245

/-!
# A166367: Number of reduced words of length n in Coxeter group on 9 generators S_i with relations (S_i)^2 = (S_i S_j)^11 = I.

The programs for A166367, there is no canonical definition to state claims against.
-/

/-! ## A166367.P8378954182496487646

`A166924(n)-A161680(A185293(n))`
-/

namespace A166367.P8378954182496487646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166924 n - A161680 (A185293 n).toNat

end

end A166367.P8378954182496487646

/-!
# A166370: Numbers whose sum of digits is 17.

The programs for A166370, there is no canonical definition to state claims against.
-/

/-! ## A166370.P3016921530525356079

`∩[9*(n+1)-1, A028834(n+2)]`
-/

namespace A166370.P3016921530525356079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * (n + 1) : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166370.P3016921530525356079

/-! ## A166370.P6616987756919294620

`∩[A028834(n+2), A017257(n)]`
-/

namespace A166370.P6616987756919294620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166370.P6616987756919294620

/-! ## A166370.P8725491191984413480

`∩[A028834(n+1), A017245(n)+1]`
-/

namespace A166370.P8725491191984413480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166370.P8725491191984413480

/-! ## A166370.P13639904035185598603

`∩[A028834(n+1), A017173(n)-2]`
-/

namespace A166370.P13639904035185598603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166370.P13639904035185598603

/-! ## A166370.P3805210990808071144

`∩[A028834(n+1), A274406(n+1)]`
-/

namespace A166370.P3805210990808071144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166370.P3805210990808071144

/-! ## A166370.P3053462923129560596

`∩[A028834(n+1), A090570(n+1)-1]`
-/

namespace A166370.P3053462923129560596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090570 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166370.P3053462923129560596

/-! ## A166370.P15797471823281093224

`∩[A397046(n+1), A017257(n)]`
-/

namespace A166370.P15797471823281093224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166370.P15797471823281093224

/-! ## A166370.P13499803770723923434

`∩[A274406(n+1), A397046(n+1)]`
-/

namespace A166370.P13499803770723923434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166370.P13499803770723923434

/-! ## A166370.P14440881254479693950

`A228915(a(n-1))` with `a(0)=89`
-/

namespace A166370.P14440881254479693950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [89] fun n a =>
  A228915 (a (n - 1)).toNat

end

end A166370.P14440881254479693950

/-! ## A166370.P10157429447472160203

`eq[17, A007953(n)]`
-/

namespace A166370.P10157429447472160203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166370.P10157429447472160203

/-! ## A166370.P13834876222515725286

`eq[25, A136614(n)]`
-/

namespace A166370.P13834876222515725286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166370.P13834876222515725286

/-! ## A166370.P2666616228150385326

`eq[34, A169805(n)]`
-/

namespace A166370.P2666616228150385326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166370.P2666616228150385326

/-! ## A166370.P1211703370406441890

`eq[17, sqrt(A118881(n))]`
-/

namespace A166370.P1211703370406441890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118881 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A166370.P1211703370406441890

/-! ## A166370.P18170678657354642833

`eq[17, log2(A329562(n))]`
-/

namespace A166370.P18170678657354642833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A166370.P18170678657354642833

/-!
# A166371: 

The programs for A166371, there is no canonical definition to state claims against.
-/

/-! ## A166371.P15994569064189470975

`((6*n)!/(3*n)!)²`
-/

namespace A166371.P15994569064189470975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (6 * n) : ℚ) / (Nat.factorial (3 * n) : ℚ)) ^ 2

end

end A166371.P15994569064189470975

/-! ## A166371.P998290461149271141

`A166351(n)²`
-/

namespace A166371.P998290461149271141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166351 n ^ 2

end

end A166371.P998290461149271141

/-! ## A166371.P2900021146283813238

`A122747(3*n)`
-/

namespace A166371.P2900021146283813238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122747 (3 * n)

end

end A166371.P2900021146283813238

/-! ## A166371.P11348274760561524182

`A110491(6*n)`
-/

namespace A166371.P11348274760561524182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110491 (6 * n)

end

end A166371.P11348274760561524182

/-! ## A166371.P10065403854786763903

`A193282(6*n)`
-/

namespace A166371.P10065403854786763903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193282 (6 * n)

end

end A166371.P10065403854786763903

/-!
# A166373: Triangle read by rows for floor(j^2 / n) with n >= 2 and 1<=j<n.

The programs for A166373, the canonical program `A166373.P3011373036703658375` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166373 has offset 2).

The definition of A166373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166373.P6936700524566362584

`floor((n+1-C(∑[char[∑[n]]], 2))²/(comp[∑[n]]-n))`
-/

namespace A166373.P6936700524566362584
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) ^ 2 : ℚ) / ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ) : ℚ)⌋

end

end A166373.P6936700524566362584

namespace A166373

/-- `floor((n+1-C(∑[char[∑[n]]], 2))²/(comp[∑[n]]-n))` -/
def P6936700524566362584.Spec : Prop :=
  ∀ n, P6936700524566362584.a n = A166373 (n + 2)

end A166373

/-! ## A166373.P10644526084451913499

`floor(A133819(n+1)/(comp[∑[n]]-n))`
-/

namespace A166373.P10644526084451913499
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A133819 (n + 1) : ℚ) / ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℚ)⌋

end

end A166373.P10644526084451913499

namespace A166373

/-- `floor(A133819(n+1)/(comp[∑[n]]-n))` -/
def P10644526084451913499.Spec : Prop :=
  ∀ n, P10644526084451913499.a n = A166373 (n + 2)

end A166373

/-! ## A166373.P9371249152862357380

`floor(A002260(n+1)²/(comp[∑[n]]-n))`
-/

namespace A166373.P9371249152862357380
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002260 (n + 1) ^ 2 : ℚ) / ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℚ)⌋

end

end A166373.P9371249152862357380

namespace A166373

/-- `floor(A002260(n+1)²/(comp[∑[n]]-n))` -/
def P9371249152862357380.Spec : Prop :=
  ∀ n, P9371249152862357380.a n = A166373 (n + 2)

end A166373

/-! ## A166373.P2381636357695242585

`floor(A140756(n+1)²/(comp[∑[n]]-n))`
-/

namespace A166373.P2381636357695242585
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A140756 (n + 1) ^ 2 : ℚ) / ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℚ)⌋

end

end A166373.P2381636357695242585

namespace A166373

/-- `floor(A140756(n+1)²/(comp[∑[n]]-n))` -/
def P2381636357695242585.Spec : Prop :=
  ∀ n, P2381636357695242585.a n = A166373 (n + 2)

end A166373

/-! ## A166373.P12597677586162833541

`floor((A132118(n+1)-n)²/(comp[∑[n]]-n))`
-/

namespace A166373.P12597677586162833541
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A132118 (n + 1) - (n : ℤ)) ^ 2 : ℚ) / ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℚ)⌋

end

end A166373.P12597677586162833541

namespace A166373

/-- `floor((A132118(n+1)-n)²/(comp[∑[n]]-n))` -/
def P12597677586162833541.Spec : Prop :=
  ∀ n, P12597677586162833541.a n = A166373 (n + 2)

end A166373

/-! ## A166373.P10797820804218754435

`A002262(1-A204260(n+1)+n)`
-/

namespace A166373.P10797820804218754435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (1 - A204260 (n + 1) + (n : ℤ)).toNat

end

end A166373.P10797820804218754435

namespace A166373

/-- `A002262(1-A204260(n+1)+n)` -/
def P10797820804218754435.Spec : Prop :=
  ∀ n, P10797820804218754435.a n = A166373 (n + 2)

end A166373

/-! ## A166373.P5504994880094010797

`A002260(n+1)-A204260(n+1)`
-/

namespace A166373.P5504994880094010797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - A204260 (n + 1)

end

end A166373.P5504994880094010797

namespace A166373

/-- `A002260(n+1)-A204260(n+1)` -/
def P5504994880094010797.Spec : Prop :=
  ∀ n, P5504994880094010797.a n = A166373 (n + 2)

end A166373

/-! ## A166373.P7174379118026843823

`sqrt(A133819(n+1))-A204260(n+1)`
-/

namespace A166373.P7174379118026843823
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) - (A204260 (n + 1) : ℝ)

end

end A166373.P7174379118026843823

namespace A166373

/-- `sqrt(A133819(n+1))-A204260(n+1)` -/
def P7174379118026843823.Spec : Prop :=
  ∀ n, P7174379118026843823.a n = (A166373 (n + 2) : ℝ)

end A166373

/-! ## A166373.P9439564205660958294

`floor(sqrt(A133821(n+1)/A140978(n+1)))`
-/

namespace A166373.P9439564205660958294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A133821 (n + 1) : ℚ) / (A140978 (n + 1) : ℚ) : ℝ)⌋

end

end A166373.P9439564205660958294

namespace A166373

/-- `floor(sqrt(A133821(n+1)/A140978(n+1)))` -/
def P9439564205660958294.Spec : Prop :=
  ∀ n, P9439564205660958294.a n = A166373 (n + 2)

end A166373

/-! ## A166373.P15572094847736096531

`floor(sqrt(A133821(n+1))/A003057(n+2))`
-/

namespace A166373.P15572094847736096531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A133821 (n + 1) : ℝ) / (A003057 (n + 2) : ℝ)⌋

end

end A166373.P15572094847736096531

namespace A166373

/-- `floor(sqrt(A133821(n+1))/A003057(n+2))` -/
def P15572094847736096531.Spec : Prop :=
  ∀ n, P15572094847736096531.a n = A166373 (n + 2)

end A166373

/-! ## A166373.P3011373036703658375

`floor((A002262(n)+1)²/(A002024(n+1)+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A166373

/-- `floor((A002262(n)+1)²/(A002024(n+1)+1))` -/
def P3011373036703658375.Spec : Prop :=
  ∀ n, P3011373036703658375.a n = A166373 (n + 2)

theorem P3011373036703658375.correct : P3011373036703658375.Spec := by
  intro n
  simp only [A166373, Nat.add_sub_cancel]

end A166373

/-! ## A166373.P7437451721764780177

`A000005(A059268(n))-A204260(n+1)`
-/

namespace A166373.P7437451721764780177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat - A204260 (n + 1)

end

end A166373.P7437451721764780177

namespace A166373

/-- `A000005(A059268(n))-A204260(n+1)` -/
def P7437451721764780177.Spec : Prop :=
  ∀ n, P7437451721764780177.a n = A166373 (n + 2)

end A166373

/-! ## A166373.P1970106160054471607

`floor(A055461(A038722(n+1))/A003057(n+2))`
-/

namespace A166373.P1970106160054471607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055461 (A038722 (n + 1)).toNat : ℚ) / (A003057 (n + 2) : ℚ)⌋

end

end A166373.P1970106160054471607

namespace A166373

/-- `floor(A055461(A038722(n+1))/A003057(n+2))` -/
def P1970106160054471607.Spec : Prop :=
  ∀ n, P1970106160054471607.a n = A166373 (n + 2)

end A166373

/-! ## A166373.P9349291013213044951

`floor(A126114(A189151(n+1))/A003057(n+2))`
-/

namespace A166373.P9349291013213044951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A126114 (A189151 (n + 1)).toNat : ℚ) / (A003057 (n + 2) : ℚ)⌋

end

end A166373.P9349291013213044951

namespace A166373

/-- `floor(A126114(A189151(n+1))/A003057(n+2))` -/
def P9349291013213044951.Spec : Prop :=
  ∀ n, P9349291013213044951.a n = A166373 (n + 2)

end A166373

/-! ## A166373.P18237970108561167238

`(A133819(n+1)-A060036(n+2))/A003057(n+2)`
-/

namespace A166373.P18237970108561167238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133819 (n + 1) - A060036 (n + 2) : ℚ) / (A003057 (n + 2) : ℚ)

end

end A166373.P18237970108561167238

namespace A166373

/-- `(A133819(n+1)-A060036(n+2))/A003057(n+2)` -/
def P18237970108561167238.Spec : Prop :=
  ∀ n, P18237970108561167238.a n = (A166373 (n + 2) : ℚ)

end A166373

/-!
# A166374: Numbers whose arithmetic derivative is equal to Euler totient function: n' = phi(n).

The programs for A166374, there is no canonical definition to state claims against.
-/

/-! ## A166374.P10379898799134297213

`A345051(record[(n+1)^(A345051(n+1)%2)])`
-/

namespace A166374.P10379898799134297213
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (Int.tmod (A345051 (n + 1)) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345051 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A166374.P10379898799134297213

/-! ## A166374.P13246562791086370487

`∩[A342009(n+1), A345051(n+1)]`
-/

namespace A166374.P13246562791086370487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166374.P13246562791086370487

/-! ## A166374.P291869354502026724

`A345051(A120515(n+1)*A345063(n+1))`
-/

namespace A166374.P291869354502026724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345051 (A120515 (n + 1) * A345063 (n + 1)).toNat

end

end A166374.P291869354502026724

/-! ## A166374.P8638420697990887772

`A345051(A120515(n+1)^A345063(n+1))`
-/

namespace A166374.P8638420697990887772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345051 (SequenceMachineLib.roundAway ((A120515 (n + 1) : ℚ) ^ (A345063 (n + 1) : ℤ))).toNat

end

end A166374.P8638420697990887772

/-! ## A166374.P649961289192027564

`A345051(A120515(n+1)%A345074(n+2))`
-/

namespace A166374.P649961289192027564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345051 (Int.tmod (A120515 (n + 1)) (A345074 (n + 2))).toNat

end

end A166374.P649961289192027564

/-!
# A166375: a(n) = sum (floor (j^2/n)) taken over 1 <= j <= n-1.

The programs for A166375, there is no canonical definition to state claims against.
-/

/-! ## A166375.P13722664792735787623

`A014817(n+2)-(n+2)`
-/

namespace A166375.P13722664792735787623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014817 (n + 2) - (n + 2 : ℤ)

end

end A166375.P13722664792735787623

/-! ## A166375.P7991428418953574476

`∑[A227842(n+1)-1]`
-/

namespace A166375.P7991428418953574476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227842 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166375.P7991428418953574476

/-! ## A166375.P12286754109260200710

`Δ[A227841(n+1)]-(n+2)`
-/

namespace A166375.P12286754109260200710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 2 : ℤ)

end

end A166375.P12286754109260200710

/-! ## A166375.P6347624827228511928

`∑[A023443(Δ[A014817(n+1)])]`
-/

namespace A166375.P6347624827228511928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014817 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166375.P6347624827228511928

/-! ## A166375.P2252029980929534181

`A166387(n+2)+A128422(n+2)`
-/

namespace A166375.P2252029980929534181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166387 (n + 2) + A128422 (n + 2)

end

end A166375.P2252029980929534181

/-! ## A166375.P2127393191801383212

`∑[A014817(n+2)%(A014817(n+1)+1)]`
-/

namespace A166375.P2127393191801383212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014817 (n + 2)) (A014817 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166375.P2127393191801383212

/-! ## A166375.P6282197075872525945

`record[A014817(A331303(n))-A331303(n)]`
-/

namespace A166375.P6282197075872525945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014817 (A331303 n).toNat - A331303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166375.P6282197075872525945

/-! ## A166375.P4692763910474120782

`record[A014817(A133310(n))-A133310(n)]`
-/

namespace A166375.P4692763910474120782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014817 (A133310 n).toNat - A133310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166375.P4692763910474120782

/-! ## A166375.P6431250870828908082

`record[A014817(A246694(n))-A246694(n)]`
-/

namespace A166375.P6431250870828908082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014817 (A246694 n).toNat - A246694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166375.P6431250870828908082

/-! ## A166375.P12701267212313192449

`record[A014817(A008619(n))-A029579(n)]`
-/

namespace A166375.P12701267212313192449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014817 (A008619 n).toNat - A029579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166375.P12701267212313192449

/-! ## A166375.P6648564033819937446

`record[A014817(A126759(n))-A126759(n)]`
-/

namespace A166375.P6648564033819937446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014817 (A126759 n).toNat - A126759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166375.P6648564033819937446

/-! ## A166375.P18152777406886786020

`record[A014817(A141256(n))-A141256(n)]`
-/

namespace A166375.P18152777406886786020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014817 (A141256 n).toNat - A141256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166375.P18152777406886786020

/-! ## A166375.P811030723233255966

`∑[A088226(A227842(n+1)²)]`
-/

namespace A166375.P811030723233255966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A227842 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166375.P811030723233255966

/-!
# A166376: Triangle in which n-th row (n>1) gives prime factors of n^2 + 1 with repetition.

The programs for A166376, there is no canonical definition to state claims against.
-/

/-! ## A166376.P5872085203754298881

`A089122(A285523(n+1)^A065648(n))`
-/

namespace A166376.P5872085203754298881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089122 (SequenceMachineLib.roundAway ((A285523 (n + 1) : ℚ) ^ (A065648 n : ℤ))).toNat

end

end A166376.P5872085203754298881

/-! ## A166376.P2056053931227036866

`A089122(A187829(n+1)^A210964(n))`
-/

namespace A166376.P2056053931227036866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089122 (SequenceMachineLib.roundAway ((A187829 (n + 1) : ℚ) ^ (A210964 n : ℤ))).toNat

end

end A166376.P2056053931227036866

/-! ## A166376.P12636851475380523786

`and(A089122(n+1), A094786(A094786(n+1)))`
-/

namespace A166376.P12636851475380523786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089122 (n + 1)) (A094786 (A094786 (n + 1)).toNat)

end

end A166376.P12636851475380523786

/-! ## A166376.P13390043185800680545

`A089122(A210964(n)²²*A187829(n+1))`
-/

namespace A166376.P13390043185800680545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089122 ((A210964 n ^ 2) ^ 2 * A187829 (n + 1)).toNat

end

end A166376.P13390043185800680545

/-!
# A166378: Exponential Riordan array [1+x^2*sec(x), x].

The programs for A166378, there is no canonical definition to state claims against.
-/

/-! ## A166378.P13923916960121811891

`A053589(A119502(n))*A097610(n)`
-/

namespace A166378.P13923916960121811891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053589 (A119502 n).toNat * A097610 n

end

end A166378.P13923916960121811891

/-!
# A166380: Diagonal sums of exponential Riordan array [1+x^2*sec(x),x], A166378.

The programs for A166380, there is no canonical definition to state claims against.
-/

/-! ## A166380.P15011044059920543637

`A319716(∏[∑[A339597(n)]])`
-/

namespace A166380.P15011044059920543637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339597 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319716 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A166380.P15011044059920543637

/-!
# A166381: a(n) = Sum_{j>n} floor(n^2/j).

The programs for A166381, there is no canonical definition to state claims against.
-/

/-! ## A166381.P1021283236639530278

`(A175346(n+1)-Δ[A000330(n)])/2`
-/

namespace A166381.P1021283236639530278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175346 (n + 1) - (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A166381.P1021283236639530278

/-! ## A166381.P768868521523000599

`A118014(n+1)-(n+1)²`
-/

namespace A166381.P768868521523000599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118014 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A166381.P768868521523000599

/-! ## A166381.P2881100522709135599

`A175346(n+1)-A118014(n+1)`
-/

namespace A166381.P2881100522709135599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175346 (n + 1) - A118014 (n + 1)

end

end A166381.P2881100522709135599

/-! ## A166381.P10956035245774286408

`(A175346(n+1)-Δ[A056520(n)])/2`
-/

namespace A166381.P10956035245774286408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056520 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175346 (n + 1) - (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A166381.P10956035245774286408

/-! ## A166381.P1030165343509445349

`A175346(A100402(3*(n+1))+n)%A118014(n+1)`
-/

namespace A166381.P1030165343509445349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175346 (A100402 (3 * (n + 1)) + (n : ℤ)).toNat) (A118014 (n + 1))

end

end A166381.P1030165343509445349

/-! ## A166381.P6816094184129587468

`A299251(2*n+1)+A000217(n)`
-/

namespace A166381.P6816094184129587468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299251 (2 * n + 1) + A000217 n

end

end A166381.P6816094184129587468

/-! ## A166381.P9043324746026301953

`(A006218((n+1)²)-(n+1)²)/2`
-/

namespace A166381.P9043324746026301953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006218 ((n + 1) ^ 2) - ((n + 1) ^ 2 : ℤ) : ℚ) / 2

end

end A166381.P9043324746026301953

/-! ## A166381.P10404201713451253359

`A273943(A006218((n+1)²)-(n+1)²)`
-/

namespace A166381.P10404201713451253359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A006218 ((n + 1) ^ 2) - ((n + 1) ^ 2 : ℤ)).toNat

end

end A166381.P10404201713451253359

/-! ## A166381.P16515330441266465545

`A014682(A175346(n+1)-Δ[A000330(n)])`
-/

namespace A166381.P16515330441266465545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A175346 (n + 1) - (f1 (n + 1) - f1 n)).toNat

end

end A166381.P16515330441266465545

/-! ## A166381.P1854569877592185020

`A014682(A175346(n+1)-Δ[A056520(n)])`
-/

namespace A166381.P1854569877592185020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A175346 (n + 1) - (f1 (n + 1) - f1 n)).toNat

end

end A166381.P1854569877592185020

/-! ## A166381.P8713348284326049087

`A002541((n+1)²)/2`
-/

namespace A166381.P8713348284326049087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002541 ((n + 1) ^ 2) : ℚ) / 2

end

end A166381.P8713348284326049087

/-! ## A166381.P6031968487636772302

`A183003((n+1)²)+∑[n]`
-/

namespace A166381.P6031968487636772302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183003 ((n + 1) ^ 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A166381.P6031968487636772302

/-! ## A166381.P8693362508120234473

`A211264((n+1)²)-∑[n]`
-/

namespace A166381.P8693362508120234473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211264 ((n + 1) ^ 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A166381.P8693362508120234473

/-! ## A166381.P15778605529467103496

`A094820((n+1)²)-∑[n+1]`
-/

namespace A166381.P15778605529467103496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094820 ((n + 1) ^ 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A166381.P15778605529467103496

/-! ## A166381.P12409192601299901653

`A014682(A002541((n+1)²))`
-/

namespace A166381.P12409192601299901653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A002541 ((n + 1) ^ 2)).toNat

end

end A166381.P12409192601299901653

/-!
# A166384: a(n) = (5*n)!/(2*n)!.

The programs for A166384, there is no canonical definition to state claims against.
-/

/-! ## A166384.P1648786777613505665

`A105725(A006137(n))`
-/

namespace A166384.P1648786777613505665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105725 (A006137 n).toNat

end

end A166384.P1648786777613505665

/-! ## A166384.P1464176894345318982

`A122851(A139277(2*n)-n)`
-/

namespace A166384.P1464176894345318982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122851 (A139277 (2 * n) - (n : ℤ)).toNat

end

end A166384.P1464176894345318982

/-! ## A166384.P191083357100012768

`(5*n)!/(2*n)!`
-/

namespace A166384.P191083357100012768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (5 * n) : ℚ) / (Nat.factorial (2 * n) : ℚ)

end

end A166384.P191083357100012768

/-!
# A166385: Primes between the lower and upper member of the n-th pair of betrothed numbers.

The programs for A166385, there is no canonical definition to state claims against.
-/

/-! ## A166385.P14766868580220528009

`p?[A161680(n)-A253145(A172275(n))]`
-/

namespace A166385.P14766868580220528009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n - A253145 (A172275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166385.P14766868580220528009

/-! ## A166385.P11376751411231806214

`p?[A152949(A348553(n))-A152950(n+1)]`
-/

namespace A166385.P11376751411231806214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152949 (A348553 n).toNat - A152950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166385.P11376751411231806214

/-!
# A166387: a(n) = sum (floor (j^2/n), 1 <= j <= n-1) - floor ((n-1)(n-2)/3), n >= 2.

The programs for A166387, there is no canonical definition to state claims against.
-/

/-! ## A166387.P4716347012080740909

`A166375(n+2)-A128422(n+2)`
-/

namespace A166387.P4716347012080740909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166375 (n + 2) - A128422 (n + 2)

end

end A166387.P4716347012080740909

/-! ## A166387.P2902893851864075012

`A166375(n+2)%A080782(n+1)`
-/

namespace A166387.P2902893851864075012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166375 (n + 2)) (A080782 (n + 1))

end

end A166387.P2902893851864075012

/-! ## A166387.P9967925988988119022

`∑[A227842(n+1)-1]%A080782(n+1)`
-/

namespace A166387.P9967925988988119022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227842 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A080782 (n + 1))

end

end A166387.P9967925988988119022

/-! ## A166387.P11921416943013854782

`A002264(A175908(n+2))`
-/

namespace A166387.P11921416943013854782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A175908 (n + 2)).toNat

end

end A166387.P11921416943013854782

/-! ## A166387.P15169447014809234709

`(A014817(n+2)-(n+2))%A080782(n+1)`
-/

namespace A166387.P15169447014809234709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014817 (n + 2) - (n + 2 : ℤ)) (A080782 (n + 1))

end

end A166387.P15169447014809234709

/-! ## A166387.P16617040095400176056

`∑[A014817(n+2)%(A014817(n+1)+1)]%A080782(n+1)`
-/

namespace A166387.P16617040095400176056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014817 (n + 2)) (A014817 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A080782 (n + 1))

end

end A166387.P16617040095400176056

/-! ## A166387.P13826970920315981627

`A166375(n+2)-A008724(Δ[n²])`
-/

namespace A166387.P13826970920315981627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166375 (n + 2) - A008724 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A166387.P13826970920315981627

/-! ## A166387.P4970584043130096288

`∑[A227842(n+1)-A008612(4*(n+1))]`
-/

namespace A166387.P4970584043130096288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227842 (n + 1) - A008612 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166387.P4970584043130096288

/-! ## A166387.P17774585732643284770

`A166375(n+2)-A005843(A002264(∑[n]))`
-/

namespace A166387.P17774585732643284770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166375 (n + 2) - A005843 (A002264 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A166387.P17774585732643284770

/-! ## A166387.P7803351406473767196

`A166375(n+2)-A002264(∑[2*n])`
-/

namespace A166387.P7803351406473767196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166375 (n + 2) - A002264 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A166387.P7803351406473767196

/-!
# A166388: Numbers of the form q-p, where p and q are prime and q = p^0+p^1+p^2+..+p^k for some k.

The programs for A166388, there is no canonical definition to state claims against.
-/

/-! ## A166388.P3815880904867229728

`A062700(n+1)-A161189(A001147(n))`
-/

namespace A166388.P3815880904867229728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062700 (n + 1) - A161189 (A001147 n).toNat

end

end A166388.P3815880904867229728

/-! ## A166388.P4766213645500248221

`or(A140113(n+1), A329739(A002785(n+1)))`
-/

namespace A166388.P4766213645500248221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A140113 (n + 1)) (A329739 (A002785 (n + 1)).toNat)

end

end A166388.P4766213645500248221

/-!
# A166394: Multiples of 7 whose reversal - 1 is also a multiple of 7.

The programs for A166394, there is no canonical definition to state claims against.
-/

/-! ## A166394.P12615005372442956977

`eq[A014016(A004086(n))+2, A014016(n)]`
-/

namespace A166394.P12615005372442956977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014016 (A004086 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166394.P12615005372442956977

/-!
# A166395: a(n) = the number of distinct nonnegative decimal values k of substrings in the binary representation of n where k+1 is also the value of at least one substring in the binary representation of n.

The programs for A166395, there is no canonical definition to state claims against.
-/

/-! ## A166395.P6551483767632386247

`ceil(ratio[n+1]*A166396(n+1))`
-/

namespace A166395.P6551483767632386247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A166396 (n + 1) : ℚ)⌉

end

end A166395.P6551483767632386247

/-! ## A166395.P1969261242291230046

`A166396(n+1)+A057427(A339451(n))`
-/

namespace A166395.P1969261242291230046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166396 (n + 1) + A057427 (A339451 n).toNat

end

end A166395.P1969261242291230046

/-! ## A166395.P11434852574867326636

`A166396(n+1)+A000007(A135416(n+1))`
-/

namespace A166395.P11434852574867326636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166396 (n + 1) + A000007 (A135416 (n + 1)).toNat

end

end A166395.P11434852574867326636

/-! ## A166395.P15043583854121184452

`A225654(A100661(n+1))+A166396(n+1)`
-/

namespace A166395.P15043583854121184452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225654 (A100661 (n + 1)).toNat + A166396 (n + 1)

end

end A166395.P15043583854121184452

/-! ## A166395.P13152804029053068158

`A166396(n+1)+A057427(A166396(n+1)²)`
-/

namespace A166395.P13152804029053068158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166396 (n + 1) + A057427 (A166396 (n + 1) ^ 2).toNat

end

end A166395.P13152804029053068158

/-! ## A166395.P9392967435129525614

`A166396(n+1)+A057427(2*A166396(n+1))`
-/

namespace A166395.P9392967435129525614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166396 (n + 1) + A057427 (2 * A166396 (n + 1)).toNat

end

end A166395.P9392967435129525614

/-! ## A166395.P7862033935361158999

`A166396(n+1)+A339451(n)^A135416(n+1)`
-/

namespace A166395.P7862033935361158999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166396 (n + 1) : ℚ) + (A339451 n : ℚ) ^ (A135416 (n + 1) : ℤ)

end

end A166395.P7862033935361158999

/-! ## A166395.P3385784176348340123

`A166396(n+1)+1-Δ[A000523(n+1)]`
-/

namespace A166395.P3385784176348340123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166396 (n + 1) + (1 - (f1 (n + 1) - f1 n))

end

end A166395.P3385784176348340123

/-! ## A166395.P9065121542173336265

`A166396(n+1)+A011747(Δ[A000523(n+1)])`
-/

namespace A166395.P9065121542173336265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166396 (n + 1) + A011747 (f1 (n + 1) - f1 n).toNat

end

end A166395.P9065121542173336265

/-!
# A166396: a(n) = the number of distinct positive decimal values k of substrings in the binary representation of n where k+1 is also the value of at least one substring in the binary representation of n.

The programs for A166396, there is no canonical definition to state claims against.
-/

/-! ## A166396.P4636702937551300312

`floor(log(cosh(A166395(n+1))))`
-/

namespace A166396.P4636702937551300312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.cosh (A166395 (n + 1) : ℝ))⌋

end

end A166396.P4636702937551300312

/-! ## A166396.P1142069724902656748

`A166395(n+1)-A057427(A339451(n))`
-/

namespace A166396.P1142069724902656748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166395 (n + 1) - A057427 (A339451 n).toNat

end

end A166396.P1142069724902656748

/-! ## A166396.P10720825401815347414

`A166395(n+1)-A000007(A135416(n+1))`
-/

namespace A166396.P10720825401815347414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166395 (n + 1) - A000007 (A135416 (n + 1)).toNat

end

end A166396.P10720825401815347414

/-! ## A166396.P1886393681782831177

`A166395(n+1)-A225654(A100661(n+1))`
-/

namespace A166396.P1886393681782831177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166395 (n + 1) - A225654 (A100661 (n + 1)).toNat

end

end A166396.P1886393681782831177

/-! ## A166396.P6940525572800455464

`A166395(n+1)-A057427(A166395(n+1)²)`
-/

namespace A166396.P6940525572800455464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166395 (n + 1) - A057427 (A166395 (n + 1) ^ 2).toNat

end

end A166396.P6940525572800455464

/-! ## A166396.P18381621350995509223

`A166395(n+1)-A057427(2*A166395(n+1))`
-/

namespace A166396.P18381621350995509223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166395 (n + 1) - A057427 (2 * A166395 (n + 1)).toNat

end

end A166396.P18381621350995509223

/-! ## A166396.P15496735357450997856

`A166395(n+1)-A339451(n)^A135416(n+1)`
-/

namespace A166396.P15496735357450997856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166395 (n + 1) : ℚ) - (A339451 n : ℚ) ^ (A135416 (n + 1) : ℤ)

end

end A166396.P15496735357450997856

/-! ## A166396.P11775252392950413976

`Δ[A000523(n+1)]+A166395(n+1)-1`
-/

namespace A166396.P11775252392950413976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A166395 (n + 1) - 1)

end

end A166396.P11775252392950413976

/-! ## A166396.P9085799063762824480

`A166395(n+1)-A011747(Δ[A000523(n+1)])`
-/

namespace A166396.P9085799063762824480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166395 (n + 1) - A011747 (f1 (n + 1) - f1 n).toNat

end

end A166396.P9085799063762824480

/-! ## A166396.P12398314965738401386

`A166395(n+1)+1-A020639(A211099(n+1))`
-/

namespace A166396.P12398314965738401386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166395 (n + 1) + (1 - A020639 (A211099 (n + 1)).toNat)

end

end A166396.P12398314965738401386

