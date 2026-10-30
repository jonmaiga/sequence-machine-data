import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C039
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C002
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A395200: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where A(n,k) = (2*n)! * [x^(2*n)] (f(x)^k + f(-x)^k)/2 and f(x) = 1/(cosh(x) - sqrt(2) * sinh(x)).

The programs for A395200, there is no canonical definition to state claims against.
-/

/-! ## A395200.P14908208680304022350

`A000217(A396466(n)^A196879(n))`
-/

namespace A395200.P14908208680304022350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway ((A396466 n : ℚ) ^ (A196879 n : ℤ))).toNat

end

end A395200.P14908208680304022350

/-!
# A395202: a(n) = (2*n)! * [x^(2*n)] (f(x)^3 + f(-x)^3)/2 and f(x) = 1/(cosh(x) - sqrt(2) * sinh(x)).

The programs for A395202, there is no canonical definition to state claims against.
-/

/-! ## A395202.P12500386691801809331

`Δ[A032264(2*n+1)]`
-/

namespace A395202.P12500386691801809331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032264 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A395202.P12500386691801809331

/-! ## A395202.P17426287348924915346

`Δ[A003704(2*n+1)]/2`
-/

namespace A395202.P17426287348924915346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003704 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A395202.P17426287348924915346

/-!
# A395203: a(n) = (2*n)! * [x^(2*n)] (f(x) + f(-x))/2 and f(x) = 1/sqrt(1 + 2*sqrt(2)*x + x^2).

The programs for A395203, there is no canonical definition to state claims against.
-/

/-! ## A395203.P15378015833273392676

`A395201(∑[n+1]+n)`
-/

namespace A395203.P15378015833273392676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395201 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A395203.P15378015833273392676

/-! ## A395203.P6574428583799219387

`record[A395201(n)*A002324(A130478(n+1))]`
-/

namespace A395203.P6574428583799219387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395201 n * A002324 (A130478 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A395203.P6574428583799219387

/-!
# A395204: a(n) = (2*n)! * [x^(2*n)] (f(x)^2 + f(-x)^2)/2 and f(x) = 1/sqrt(1 + 2*sqrt(2)*x + x^2).

The programs for A395204, the canonical program `A395204.P11909722987938007791` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395204 has offset 0).

The definition of A395204 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395204.P11909722987938007791

`(2*n)!*A002315(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A395204

/-- `(2*n)!*A002315(n)` -/
def P11909722987938007791.Spec : Prop :=
  ∀ n, P11909722987938007791.a n = A395204 n

theorem P11909722987938007791.correct : P11909722987938007791.Spec := by
  intro n
  simp only [A395204]

end A395204

/-! ## A395204.P18108335077569709898

`A395201(∑[n+3])`
-/

namespace A395204.P18108335077569709898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395201 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A395204.P18108335077569709898

namespace A395204

/-- `A395201(∑[n+3])` -/
def P18108335077569709898.Spec : Prop :=
  ∀ n, P18108335077569709898.a n = A395204 n

end A395204

/-! ## A395204.P11702765144679982819

`A052608(2*n+1)/(2*n+1)`
-/

namespace A395204.P11702765144679982819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052608 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A395204.P11702765144679982819

namespace A395204

/-- `A052608(2*n+1)/(2*n+1)` -/
def P11702765144679982819.Spec : Prop :=
  ∀ n, P11702765144679982819.a n = (A395204 n : ℚ)

end A395204

/-! ## A395204.P9861241274269542794

`A002315(n)*A010050(n)`
-/

namespace A395204.P9861241274269542794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n * A010050 n

end

end A395204.P9861241274269542794

namespace A395204

/-- `A002315(n)*A010050(n)` -/
def P9861241274269542794.Spec : Prop :=
  ∀ n, P9861241274269542794.a n = A395204 n

theorem P9861241274269542794.correct : P9861241274269542794.Spec := by
  intro n
  simp only [A395204, Nat.add_sub_cancel, A395204.P9861241274269542794.a, A395204.P11909722987938007791.a, A002315, A002315.P5084403563182278193.a, A010050, A010050.P16096830225553856271.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A395204

/-! ## A395204.P3969364751165541469

`record[A133942(n)]*A002315(n)`
-/

namespace A395204.P3969364751165541469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A002315 n

end

end A395204.P3969364751165541469

namespace A395204

/-- `record[A133942(n)]*A002315(n)` -/
def P3969364751165541469.Spec : Prop :=
  ∀ n, P3969364751165541469.a n = A395204 n

end A395204

/-!
# A395205: a(n) = (2*n)! * [x^(2*n)] (f(x)^3 + f(-x)^3)/2 and f(x) = 1/sqrt(1 + 2*sqrt(2)*x + x^2).

The programs for A395205, there is no canonical definition to state claims against.
-/

/-! ## A395205.P11227068691543025289

`A395201(∑[n+4]+2)`
-/

namespace A395205.P11227068691543025289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395201 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A395205.P11227068691543025289

/-! ## A395205.P15050667737035281353

`A137591(2*(n+1))/A000079(n)`
-/

namespace A395205.P15050667737035281353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137591 (2 * (n + 1)) : ℚ) / (A000079 n : ℚ)

end

end A395205.P15050667737035281353

/-!
# A395206: a(n) = (2*n)! * [x^(2*n)] (f(x)^4 + f(-x)^4)/2 and f(x) = 1/sqrt(1 + 2*sqrt(2)*x + x^2).

The programs for A395206, there is no canonical definition to state claims against.
-/

/-! ## A395206.P12267249346717383026

`A395201(A000217(n+4)+n)`
-/

namespace A395206.P12267249346717383026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395201 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A395206.P12267249346717383026

/-!
# A395216: a(n) = (2*n)! * [x^(2*n)] 1/sqrt((1 - x)*(1 - 3*x)).

The programs for A395216, there is no canonical definition to state claims against.
-/

/-! ## A395216.P6714496552490834468

`A331817(2*n)`
-/

namespace A395216.P6714496552490834468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331817 (2 * n)

end

end A395216.P6714496552490834468

/-! ## A395216.P4254011513790601870

`A395215(∑[n+1]+n)`
-/

namespace A395216.P4254011513790601870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395215 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A395216.P4254011513790601870

/-!
# A395217: The primes where a new line is drawn in A394972.

The programs for A395217, there is no canonical definition to state claims against.
-/

/-! ## A395217.P6022078980175704344

`filter[A100276(n), A282339(#)]`
-/

namespace A395217.P6022078980175704344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A282339 (f1 j).toNat = 1) n)

end

end A395217.P6022078980175704344

/-! ## A395217.P8174100157918128273

`filter[A224229(n), A282339(#)]`
-/

namespace A395217.P8174100157918128273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A282339 (f1 j).toNat = 1) n)

end

end A395217.P8174100157918128273

/-! ## A395217.P2735936590536522647

`filter[A061022(n+1), A282339(#)]`
-/

namespace A395217.P2735936590536522647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061022 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A282339 (f1 j).toNat = 1) n)

end

end A395217.P2735936590536522647

/-! ## A395217.P9901413472207850761

`filter[A069677(n+1), A282339(#)]`
-/

namespace A395217.P9901413472207850761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A282339 (f1 j).toNat = 1) n)

end

end A395217.P9901413472207850761

/-! ## A395217.P5722632157633550479

`filter[A069678(n+1), A282339(#)]`
-/

namespace A395217.P5722632157633550479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A282339 (f1 j).toNat = 1) n)

end

end A395217.P5722632157633550479

/-!
# A395226: a(n) = number of 4-tuples (w, x, y, z) such that w*x + y*z = n, where w, x, y, z are positive Fibonacci numbers satisfying w <= x and y <= z.

The programs for A395226, there is no canonical definition to state claims against.
-/

/-! ## A395226.P14181101502821319465

`A395227(n)+A394743(n)`
-/

namespace A395226.P14181101502821319465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395227 n + A394743 n

end

end A395226.P14181101502821319465

/-!
# A395227: a(n) = number of 4-tuples (w, x, y, z) such that w*x + y*z = n, where w, x, y, z are positive Fibonacci numbers satisfying w < x and y < z.

The programs for A395227, there is no canonical definition to state claims against.
-/

/-! ## A395227.P4880824547427854428

`A395226(n)-A394743(n)`
-/

namespace A395227.P4880824547427854428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395226 n - A394743 n

end

end A395227.P4880824547427854428

/-!
# A395228: a(n) = number of 4-tuples (w, x, y, z) such that w*x + y*z = n, where w, x, y, z are positive Fibonacci numbers satisfying w < x < y < z.

The programs for A395228, there is no canonical definition to state claims against.
-/

/-! ## A395228.P13774640040748684201

`A117943(A339699(n+2))`
-/

namespace A395228.P13774640040748684201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117943 (A339699 (n + 2)).toNat

end

end A395228.P13774640040748684201

/-! ## A395228.P17333420208661295285

`A369968(A103128(n+1)*A361622(n+3))`
-/

namespace A395228.P17333420208661295285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369968 (A103128 (n + 1) * A361622 (n + 3)).toNat

end

end A395228.P17333420208661295285

/-! ## A395228.P5215976109629561978

`A358751(A248727(n+4))`
-/

namespace A395228.P5215976109629561978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358751 (A248727 (n + 4)).toNat

end

end A395228.P5215976109629561978

/-! ## A395228.P9280279940232691980

`A270655(3*(n+1))%A270647(A212251(n+2))`
-/

namespace A395228.P9280279940232691980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270655 (3 * (n + 1))) (A270647 (A212251 (n + 2)).toNat)

end

end A395228.P9280279940232691980

/-! ## A395228.P14548658471610537843

`A383576(A059407(n+1))`
-/

namespace A395228.P14548658471610537843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383576 (A059407 (n + 1)).toNat

end

end A395228.P14548658471610537843

/-!
# A395229: a(n) = number of 4-tuples (w, x, y, z) such that w*x + y*z = n, where w, x, y, z are distinct Fibonacci numbers satisfying w*x < y*z.

The programs for A395229, there is no canonical definition to state claims against.
-/

/-! ## A395229.P14500241200181521714

`A025458(A338417(n))`
-/

namespace A395229.P14500241200181521714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025458 (A338417 n).toNat

end

end A395229.P14500241200181521714

/-! ## A395229.P14669620749636629685

`A333806(or(A084938(2*n), A121426(n)))`
-/

namespace A395229.P14669620749636629685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333806 (Int.lor (A084938 (2 * n)) (A121426 n)).toNat

end

end A395229.P14669620749636629685

/-!
# A395238: a(n) = (2*n)! * [x^(2*n)] (f(x) + f(-x))/2 and f(x) = 1/(cosh(x) - 2 * sinh(x)).

The programs for A395238, there is no canonical definition to state claims against.
-/

/-! ## A395238.P4507890008711910145

`A337026(2*n)`
-/

namespace A395238.P4507890008711910145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337026 (2 * n)

end

end A395238.P4507890008711910145

/-! ## A395238.P18211063764712091630

`A395236(∑[n+1]+n)`
-/

namespace A395238.P18211063764712091630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395236 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A395238.P18211063764712091630

/-!
# A395239: a(n) = (2*n)! * [x^(2*n)] (f(x)^2 + f(-x)^2)/2 and f(x) = 1/(cosh(x) - 2 * sinh(x)).

The programs for A395239, there is no canonical definition to state claims against.
-/

/-! ## A395239.P5489056098225036082

`A122704(Δ[n²])`
-/

namespace A395239.P5489056098225036082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122704 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A395239.P5489056098225036082

/-! ## A395239.P3082442903424734432

`A395236(∑[3+n])`
-/

namespace A395239.P3082442903424734432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395236 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A395239.P3082442903424734432

/-! ## A395239.P3626255988137367039

`record[A122704(lcm(2, n)/2)]`
-/

namespace A395239.P3626255988137367039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122704 (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A395239.P3626255988137367039

/-! ## A395239.P17457453877294574772

`record[A122704(n)^(n%2)]`
-/

namespace A395239.P17457453877294574772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122704 n ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A395239.P17457453877294574772

/-! ## A395239.P2203504642297309426

`A190818(2*n+1)/2`
-/

namespace A395239.P2203504642297309426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190818 (2 * n + 1) : ℚ) / 2

end

end A395239.P2203504642297309426

/-!
# A395241: a(n) = n^2*(4*n + 3).

The programs for A395241, the canonical program `A395241.P8661816280605708552` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395241 has offset 0).

The definition of A395241 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(4*n+3)` (program `A395241.P8661816280605708552`, by `A395241.P8661816280605708552.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A395241.P8661816280605708552

`n²*(4*n+3)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395241

/-- `n²*(4*n+3)` -/
def P8661816280605708552.Spec : Prop :=
  ∀ n, (P8661816280605708552.a n : ℤ) = A395241 n

theorem P8661816280605708552.correct : P8661816280605708552.Spec := by
  intro n
  simp only [A395241]

end A395241

/-! ## A395241.P13250734537048153130

`ogf((7x+16x^2+x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A395241.P13250734537048153130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, 16, 1] [1, -4, 6, -4, 1] n

end

end A395241.P13250734537048153130

namespace A395241

/-- `ogf((7x+16x^2+x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P13250734537048153130.Spec : Prop :=
  ∀ n, P13250734537048153130.a n = A395241 n

end A395241

/-! ## A395241.P6010483782152359473

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=7, a(2)=44, a(3)=135`
-/

namespace A395241.P6010483782152359473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 7, 44, 135] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A395241.P6010483782152359473

namespace A395241

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P6010483782152359473.Spec : Prop :=
  ∀ n, P6010483782152359473.a n = A395241 n

theorem P6010483782152359473.correct : P6010483782152359473.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A395241, Nat.add_sub_cancel, A395241.P6010483782152359473.a, A395241.P8661816280605708552.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A395241, Nat.add_sub_cancel, A395241.P6010483782152359473.a, A395241.P8661816280605708552.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A395241

/-! ## A395241.P8768656294696079042

`A011934(2*n)`
-/

namespace A395241.P8768656294696079042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011934 (2 * n)

end

end A395241.P8768656294696079042

namespace A395241

/-- `A011934(2*n)` -/
def P8768656294696079042.Spec : Prop :=
  ∀ n, P8768656294696079042.a n = A395241 n

end A395241

/-! ## A395241.P9802696599909327866

`∑{#}[2*n-1, (-1)^(#+1)*(#+1)^3]`
-/

namespace A395241.P9802696599909327866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (-1) ^ (k + 1) * ((k + 1) ^ 3 : ℤ)

end

end A395241.P9802696599909327866

namespace A395241

/-- `∑{#}[2*n-1, (-1)^(#+1)*(#+1)^3]` -/
def P9802696599909327866.Spec : Prop :=
  ∀ n, P9802696599909327866.a n = A395241 n

end A395241

/-! ## A395241.P17559037802340692246

`n²*record[xor(3, n)]`
-/

namespace A395241.P17559037802340692246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A395241.P17559037802340692246

namespace A395241

/-- `n²*record[xor(3, n)]` -/
def P17559037802340692246.Spec : Prop :=
  ∀ n, (P17559037802340692246.a n : ℤ) = A395241 n

end A395241

/-! ## A395241.P1127256840111845987

`Δ[lcm(n-1, n^3)]-n`
-/

namespace A395241.P1127256840111845987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) (n ^ 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)

end

end A395241.P1127256840111845987

namespace A395241

/-- `Δ[lcm(n-1, n^3)]-n` -/
def P1127256840111845987.Spec : Prop :=
  ∀ n, P1127256840111845987.a n = A395241 n

end A395241

/-! ## A395241.P5632773087399153452

`lcm(n, Δ[n²]²)-∑[2*n]`
-/

namespace A395241.P5632773087399153452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A395241.P5632773087399153452

namespace A395241

/-- `lcm(n, Δ[n²]²)-∑[2*n]` -/
def P5632773087399153452.Spec : Prop :=
  ∀ n, P5632773087399153452.a n = A395241 n

end A395241

/-! ## A395241.P2599465373474373422

`floor(n*∑[a(n-1)+8])` with `a(0)=0, a(1)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A395241.P2599465373474373422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A395241.P2599465373474373422

namespace A395241

/-- `floor(n*∑[a(n-1)+8])` -/
def P2599465373474373422.Spec : Prop :=
  ∀ n, (P2599465373474373422.a n : ℤ) = A395241 n

end A395241

/-! ## A395241.P15096496486803122762

`n-n*∑[a(n-1)-8]` with `a(0)=1`
-/

namespace A395241.P15096496486803122762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A395241.P15096496486803122762

namespace A395241

/-- `n-n*∑[a(n-1)-8]` -/
def P15096496486803122762.Spec : Prop :=
  ∀ n, P15096496486803122762.a n = A395241 n

end A395241

/-! ## A395241.P11340829971228619222

`n*(lcm(2*n+1, 2*n)+n+1)-n`
-/

namespace A395241.P11340829971228619222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (Nat.lcm (2 * n + 1) (2 * n) + (n + 1)) : ℤ) - (n : ℤ)

end

end A395241.P11340829971228619222

namespace A395241

/-- `n*(lcm(2*n+1, 2*n)+n+1)-n` -/
def P11340829971228619222.Spec : Prop :=
  ∀ n, P11340829971228619222.a n = A395241 n

end A395241

/-! ## A395241.P3066720097108553801

`(2*n+1)*C(2*n+1, 2)-∑[2*n]`
-/

namespace A395241.P3066720097108553801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * Nat.choose (2 * n + 1) 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A395241.P3066720097108553801

namespace A395241

/-- `(2*n+1)*C(2*n+1, 2)-∑[2*n]` -/
def P3066720097108553801.Spec : Prop :=
  ∀ n, P3066720097108553801.a n = A395241 n

end A395241

/-! ## A395241.P12522689273846519548

`∑[A386477(n)-1]`
-/

namespace A395241.P12522689273846519548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386477 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395241.P12522689273846519548

namespace A395241

/-- `∑[A386477(n)-1]` -/
def P12522689273846519548.Spec : Prop :=
  ∀ n, P12522689273846519548.a n = A395241 n

end A395241

/-! ## A395241.P2976906404661452062

`∑[A152746(n)]+n`
-/

namespace A395241.P2976906404661452062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152746 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A395241.P2976906404661452062

namespace A395241

/-- `∑[A152746(n)]+n` -/
def P2976906404661452062.Spec : Prop :=
  ∀ n, P2976906404661452062.a n = A395241 n

end A395241

/-! ## A395241.P393094331262751421

`Δ[A085537(n)]-n`
-/

namespace A395241.P393094331262751421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A395241.P393094331262751421

namespace A395241

/-- `Δ[A085537(n)]-n` -/
def P393094331262751421.Spec : Prop :=
  ∀ n, P393094331262751421.a n = A395241 n

theorem P393094331262751421.correct : P393094331262751421.Spec := by
  intro n
  simp only [A395241, Nat.add_sub_cancel, A395241.P393094331262751421.f1, A395241.P393094331262751421.a, A395241.P8661816280605708552.a, A085537, A085537.P16655703013365461026.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A395241

/-! ## A395241.P15689750822484735278

`3*A268684(n)+n`
-/

namespace A395241.P15689750822484735278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A268684 n + (n : ℤ)

end

end A395241.P15689750822484735278

namespace A395241

/-- `3*A268684(n)+n` -/
def P15689750822484735278.Spec : Prop :=
  ∀ n, P15689750822484735278.a n = A395241 n

theorem P15689750822484735278.correct : P15689750822484735278.Spec := by
  intro n
  simp only [A395241, Nat.add_sub_cancel, A395241.P15689750822484735278.a, A395241.P8661816280605708552.a, A268684, A268684.P10617599458103783090.f1, A268684.P10617599458103783090.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A395241

/-! ## A395241.P673883743010899634

`(A316224(n)-n)/2`
-/

namespace A395241.P673883743010899634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316224 n - (n : ℤ) : ℚ) / 2

end

end A395241.P673883743010899634

namespace A395241

/-- `(A316224(n)-n)/2` -/
def P673883743010899634.Spec : Prop :=
  ∀ n, P673883743010899634.a n = (A395241 n : ℚ)

theorem P673883743010899634.correct : P673883743010899634.Spec := by
  intro n
  simp only [A395241, Nat.add_sub_cancel, A395241.P673883743010899634.a, A395241.P8661816280605708552.a, A316224, A316224.P13763735533833760107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A395241

/-! ## A395241.P17943721133729711739

`n*A033587(n)/2`
-/

namespace A395241.P17943721133729711739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A033587 n : ℚ) / 2

end

end A395241.P17943721133729711739

namespace A395241

/-- `n*A033587(n)/2` -/
def P17943721133729711739.Spec : Prop :=
  ∀ n, P17943721133729711739.a n = (A395241 n : ℚ)

theorem P17943721133729711739.correct : P17943721133729711739.Spec := by
  intro n
  simp only [A395241, Nat.add_sub_cancel, A395241.P17943721133729711739.a, A395241.P8661816280605708552.a, A033587, A033587.P16272004082571904291.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A395241

/-! ## A395241.P11802348285374923404

`∑[A014642(n)]-n²`
-/

namespace A395241.P11802348285374923404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A395241.P11802348285374923404

namespace A395241

/-- `∑[A014642(n)]-n²` -/
def P11802348285374923404.Spec : Prop :=
  ∀ n, P11802348285374923404.a n = A395241 n

end A395241

/-! ## A395241.P2500364913781452150

`A056578(n)-(2*n+1)`
-/

namespace A395241.P2500364913781452150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056578 n - (2 * n + 1 : ℤ)

end

end A395241.P2500364913781452150

namespace A395241

/-- `A056578(n)-(2*n+1)` -/
def P2500364913781452150.Spec : Prop :=
  ∀ n, P2500364913781452150.a n = A395241 n

theorem P2500364913781452150.correct : P2500364913781452150.Spec := by
  intro n
  simp only [A395241, Nat.add_sub_cancel, A395241.P2500364913781452150.a, A395241.P8661816280605708552.a, A056578, A056578.P9350945664084925479.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A395241

/-!
# A395242: Numbers whose binary representation contains isolated digits "11" at least once.

The programs for A395242, the canonical program `A395242.P15390615474782616163` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395242 has offset 1).

The definition of A395242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395242.P15390615474782616163

`comp[or(n, 2*and(2*n, n))]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395242

/-- `comp[or(n, 2*and(2*n, n))]` -/
def P15390615474782616163.Spec : Prop :=
  ∀ n, (P15390615474782616163.a n : ℤ) = A395242 (n + 1)

theorem P15390615474782616163.correct : P15390615474782616163.Spec := by
  intro n
  simp only [A395242, Nat.add_sub_cancel]

end A395242

/-! ## A395242.P16712400121954164352

`lt[A055641(val(A246029(n), 3)), 1]`
-/

namespace A395242.P16712400121954164352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (SequenceMachineLib.valuation (A246029 n).toNat 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A395242.P16712400121954164352

namespace A395242

/-- `lt[A055641(val(A246029(n), 3)), 1]` -/
def P16712400121954164352.Spec : Prop :=
  ∀ n, (P16712400121954164352.a n : ℤ) = A395242 (n + 1)

end A395242

/-! ## A395242.P3240158572067468959

`comp[or(n, A184617(n))]`
-/

namespace A395242.P3240158572067468959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A184617 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A395242.P3240158572067468959

namespace A395242

/-- `comp[or(n, A184617(n))]` -/
def P3240158572067468959.Spec : Prop :=
  ∀ n, (P3240158572067468959.a n : ℤ) = A395242 (n + 1)

end A395242

/-! ## A395242.P4949642883788860786

`comp[A173025(n+1)]`
-/

namespace A395242.P4949642883788860786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A395242.P4949642883788860786

namespace A395242

/-- `comp[A173025(n+1)]` -/
def P4949642883788860786.Spec : Prop :=
  ∀ n, (P4949642883788860786.a n : ℤ) = A395242 (n + 1)

end A395242

/-! ## A395242.P6236943290724692639

`eq[0, A087606(A246029(n))]`
-/

namespace A395242.P6236943290724692639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087606 (A246029 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A395242.P6236943290724692639

namespace A395242

/-- `eq[0, A087606(A246029(n))]` -/
def P6236943290724692639.Spec : Prop :=
  ∀ n, (P6236943290724692639.a n : ℤ) = A395242 (n + 1)

end A395242

/-! ## A395242.P16565166937436222032

`eq[1, A074805(A255445(n))]`
-/

namespace A395242.P16565166937436222032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074805 (A255445 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A395242.P16565166937436222032

namespace A395242

/-- `eq[1, A074805(A255445(n))]` -/
def P16565166937436222032.Spec : Prop :=
  ∀ n, (P16565166937436222032.a n : ℤ) = A395242 (n + 1)

end A395242

/-!
# A395243: Number A(n,k) of ways to place nonattacking knights on a k X n board; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A395243, there is no canonical definition to state claims against.
-/

/-! ## A395243.P6413659464895357502

`A220525(A372068(n))`
-/

namespace A395243.P6413659464895357502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220525 (A372068 n).toNat

end

end A395243.P6413659464895357502

/-! ## A395243.P9000956875290503370

`A382381(ceil(A340704(2*n+5)/10)*A077028(n))`
-/

namespace A395243.P9000956875290503370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382381 (⌈(A340704 (2 * n + 5) : ℚ) / 10⌉ * A077028 n).toNat

end

end A395243.P9000956875290503370

/-!
# A395244: Numbers which are the Collatz iteration encoding of some Collatz trajectory.

The programs for A395244, there is no canonical definition to state claims against.
-/

/-! ## A395244.P9505700548971455819

`eq[((n+1)/2^val(n+1, 2)+1)/2, A144284(((n+1)/2^val(n+1, 2)+1)/2)]`
-/

namespace A395244.P9505700548971455819
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + 1) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144284 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + 1) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A395244.P9505700548971455819

/-! ## A395244.P2128304410593733115

`eq[A070879(n), A295895(n)]`
-/

namespace A395244.P2128304410593733115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070879 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395244.P2128304410593733115

/-! ## A395244.P3782631086857162214

`eq[1, A035170(A277699(n+1))]`
-/

namespace A395244.P3782631086857162214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035170 (A277699 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A395244.P3782631086857162214

/-! ## A395244.P5480829251819867356

`eq[3, A359862(A064989(n+1))]`
-/

namespace A395244.P5480829251819867356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359862 (A064989 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A395244.P5480829251819867356

/-! ## A395244.P17015169501137080642

`eq[A070879(n), A319522(n+1)]`
-/

namespace A395244.P17015169501137080642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070879 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319522 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395244.P17015169501137080642

/-!
# A395245: Sum over all permutations of [n] of the number of doubly shaded squares in a certain graphical representation of the permutations.

The programs for A395245, the canonical program `A395245.P3705972980554811711` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395245 has offset 0).

The definition of A395245 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395245.P3705972980554811711

`(n-2)*a(n-1)+(n-1)!*floor(n²/4)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395245

/-- `(n-2)*a(n-1)+(n-1)!*floor(n²/4)` -/
def P3705972980554811711.Spec : Prop :=
  ∀ n, P3705972980554811711.a n = A395245 n

theorem P3705972980554811711.correct : P3705972980554811711.Spec := by
  intro n
  simp only [A395245]

end A395245

/-! ## A395245.P15807858390987083886

`A027870(A154636(n)+5)`
-/

namespace A395245.P15807858390987083886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027870 (A154636 n + 5).toNat

end

end A395245.P15807858390987083886

namespace A395245

/-- `A027870(A154636(n)+5)` -/
def P15807858390987083886.Spec : Prop :=
  ∀ n, P15807858390987083886.a n = A395245 n

end A395245

/-!
# A395251: a(n) gives positions k >= 1 where the equation b(b(k)+b(k-1)) = k fails, for b(k) = floor(k/sqrt(2) + 2*(sqrt(2)-1)).

The programs for A395251, the canonical program `A395251.P13720670033681036438` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395251 has offset 1).

The definition of A395251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1034 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395251.P13720670033681036438

`eq[A288997(2*n+3)+1, A288997(n+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A395251

/-- `eq[A288997(2*n+3)+1, A288997(n+1)]` -/
def P13720670033681036438.Spec : Prop :=
  ∀ n, (P13720670033681036438.a n : ℤ) = A395251 (n + 1)

theorem P13720670033681036438.correct : P13720670033681036438.Spec := by
  intro n
  simp only [A395251, Nat.add_sub_cancel]

end A395251

/-!
# A395253: Differences of A395251.

The programs for A395253, the canonical program `A395253.P18042258813510098844` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395253 has offset 1).

The definition of A395253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395253.P18042258813510098844

`Δ[A395251(n+1)]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A395253

/-- `Δ[A395251(n+1)]` -/
def P18042258813510098844.Spec : Prop :=
  ∀ n, P18042258813510098844.a n = A395253 (n + 1)

theorem P18042258813510098844.correct : P18042258813510098844.Spec := by
  intro n
  simp only [A395253, Nat.add_sub_cancel]

end A395253

/-! ## A395253.P2751969387074568401

`A395251(n+2)-A395251(n+1)`
-/

namespace A395253.P2751969387074568401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395251 (n + 2) - A395251 (n + 1)

end

end A395253.P2751969387074568401

namespace A395253

/-- `A395251(n+2)-A395251(n+1)` -/
def P2751969387074568401.Spec : Prop :=
  ∀ n, P2751969387074568401.a n = A395253 (n + 1)

theorem P2751969387074568401.correct : P2751969387074568401.Spec := by
  intro n
  simp only [A395253, Nat.add_sub_cancel, A395253.P2751969387074568401.a, A395253.P18042258813510098844.f1, A395253.P18042258813510098844.a, SequenceMachineLib.memo_apply]

end A395253

/-! ## A395253.P7852738649811682695

`Δ[eq[A288997(2*n+3)+1, A288997(n+1)]]`
-/

namespace A395253.P7852738649811682695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288997 (2 * n + 3) + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288997 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A395253.P7852738649811682695

namespace A395253

/-- `Δ[eq[A288997(2*n+3)+1, A288997(n+1)]]` -/
def P7852738649811682695.Spec : Prop :=
  ∀ n, P7852738649811682695.a n = A395253 (n + 1)

end A395253

/-!
# A395254: Smallest prime p such that (q^2 - p^2) is divisible by n!, where q is the next prime after p, and -1 if no such number exists.

The programs for A395254, there is no canonical definition to state claims against.
-/

/-! ## A395254.P11863809090591941736

`A209494(A150934(n))`
-/

namespace A395254.P11863809090591941736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209494 (A150934 n).toNat

end

end A395254.P11863809090591941736

/-! ## A395254.P10783681522601100913

`A001122(A328171(a(n-1)+n))` with `a(0)=2`
-/

namespace A395254.P10783681522601100913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001122 (A328171 (a (n - 1) + (n : ℤ)).toNat).toNat

end

end A395254.P10783681522601100913

/-!
# A395255: a(n) = number of triples (x, y, z) such that x^2 + y*z = n, where x, y, z are primes satisfying x <= y <= z.

The programs for A395255, there is no canonical definition to state claims against.
-/

/-! ## A395255.P6957424940830655212

`A122840(A064438(n+1)*A316719(n))`
-/

namespace A395255.P6957424940830655212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (A064438 (n + 1) * A316719 n).toNat

end

end A395255.P6957424940830655212

/-! ## A395255.P10552552626979196652

`A007318(n+1)%A090822(A209100(n+1))`
-/

namespace A395255.P10552552626979196652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (n + 1)) (A090822 (A209100 (n + 1)).toNat)

end

end A395255.P10552552626979196652

/-! ## A395255.P3546312822069921347

`A046660(A000070(n)*A062610(n+1)+1)`
-/

namespace A395255.P3546312822069921347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A000070 n * A062610 (n + 1) + 1).toNat

end

end A395255.P3546312822069921347

/-!
# A395256: Number of transitive relations that are not posets.

The programs for A395256, there is no canonical definition to state claims against.
-/

/-! ## A395256.P2840666557818607998

`A006905(n)-A001035(n)`
-/

namespace A395256.P2840666557818607998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006905 n - A001035 n

end

end A395256.P2840666557818607998

/-! ## A395256.P16115298918434200847

`A394405(n)+A376064(n)`
-/

namespace A395256.P16115298918434200847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394405 n + A376064 n

end

end A395256.P16115298918434200847

/-! ## A395256.P15274217983484824161

`A006905(n)-A245767(∑[n])`
-/

namespace A395256.P15274217983484824161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006905 n - A245767 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A395256.P15274217983484824161

/-! ## A395256.P12832502279169345440

`A006905(n)-A280192(∑[n]+n)`
-/

namespace A395256.P12832502279169345440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006905 n - A280192 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A395256.P12832502279169345440

/-! ## A395256.P6434463883730517220

`A006905(n)-(2*A105974(n)+1)`
-/

namespace A395256.P6434463883730517220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006905 n - (2 * A105974 n + 1)

end

end A395256.P6434463883730517220

/-!
# A395257: Number of strict integer partitions of 2*n with reverse-alternating sum 6.

The programs for A395257, there is no canonical definition to state claims against.
-/

/-! ## A395257.P18214021518942188983

`A344649(∑[n]+3)`
-/

namespace A395257.P18214021518942188983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344649 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A395257.P18214021518942188983

/-!
# A395258: Numbers k such that k-2 and k+2 are prime and gcd(k, sigma(k)) is prime.

The programs for A395258, there is no canonical definition to state claims against.
-/

/-! ## A395258.P10809623515412882782

`∩[A029708(n+1), A392199(n+1)]`
-/

namespace A395258.P10809623515412882782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395258.P10809623515412882782

/-! ## A395258.P14597634794866671998

`∩[A087679(n+1), A392199(n+1)]`
-/

namespace A395258.P14597634794866671998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395258.P14597634794866671998

/-! ## A395258.P17343051509356169934

`∩[A349751(n+1), A162800(n)]`
-/

namespace A395258.P17343051509356169934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395258.P17343051509356169934

/-! ## A395258.P4108267902514944375

`∩[A024675(n+1), A349751(n+1)]`
-/

namespace A395258.P4108267902514944375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395258.P4108267902514944375

/-! ## A395258.P3000998379085936214

`∩[A029708(n+1), A349751(n+1)]`
-/

namespace A395258.P3000998379085936214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395258.P3000998379085936214

/-!
# A395260: Number of order-convex subsets of the rectangular grid poset [2] X [n] with componentwise partial order.

The programs for A395260, the canonical program `A395260.P1935786938111893379` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395260 has offset 1).

The definition of A395260 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395260.P1782678452075535

`ogf((4-7x+8x^2-4x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A395260.P1782678452075535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -7, 8, -4, 1] [1, -5, 10, -10, 5, -1] n

end

end A395260.P1782678452075535

namespace A395260

/-- `ogf((4-7x+8x^2-4x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P1782678452075535.Spec : Prop :=
  ∀ n, P1782678452075535.a n = A395260 (n + 1)

end A395260

/-! ## A395260.P14178812200727971962

`((n+1)^4+4*(n+1)^3+17*(n+1)²+14*(n+1)+12)/12`
-/

namespace A395260.P14178812200727971962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 + 4 * (n + 1) ^ 3 + 17 * (n + 1) ^ 2 + 14 * (n + 1) + 12 : ℚ) / 12

end

end A395260.P14178812200727971962

namespace A395260

/-- `((n+1)^4+4*(n+1)^3+17*(n+1)²+14*(n+1)+12)/12` -/
def P14178812200727971962.Spec : Prop :=
  ∀ n, P14178812200727971962.a n = (A395260 (n + 1) : ℚ)

theorem P14178812200727971962.correct : P14178812200727971962.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A395260, Nat.add_sub_cancel, A395260.P14178812200727971962.a, A395260.P1935786938111893379.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A395260, Nat.add_sub_cancel, A395260.P14178812200727971962.a, A395260.P1935786938111893379.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A395260

/-! ## A395260.P1935786938111893379

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=4, a(1)=13, a(2)=33, a(3)=71, a(4)=136`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395260

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P1935786938111893379.Spec : Prop :=
  ∀ n, P1935786938111893379.a n = A395260 (n + 1)

theorem P1935786938111893379.correct : P1935786938111893379.Spec := by
  intro n
  simp only [A395260, Nat.add_sub_cancel]

end A395260

/-! ## A395260.P12095337284502884905

`A079034(n)+A037237(n)`
-/

namespace A395260.P12095337284502884905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079034 n + A037237 n

end

end A395260.P12095337284502884905

namespace A395260

/-- `A079034(n)+A037237(n)` -/
def P12095337284502884905.Spec : Prop :=
  ∀ n, P12095337284502884905.a n = A395260 (n + 1)

end A395260

/-! ## A395260.P10831058173164422758

`A005701(n)-A108766(n)`
-/

namespace A395260.P10831058173164422758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005701 n - A108766 n

end

end A395260.P10831058173164422758

namespace A395260

/-- `A005701(n)-A108766(n)` -/
def P10831058173164422758.Spec : Prop :=
  ∀ n, P10831058173164422758.a n = A395260 (n + 1)

end A395260

/-! ## A395260.P705237121200752359

`A136396(n)+A047667(n+1)`
-/

namespace A395260.P705237121200752359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136396 n + A047667 (n + 1)

end

end A395260.P705237121200752359

namespace A395260

/-- `A136396(n)+A047667(n+1)` -/
def P705237121200752359.Spec : Prop :=
  ∀ n, P705237121200752359.a n = A395260 (n + 1)

end A395260

/-! ## A395260.P12441778917845636363

`A219621(n+1)+A056520(n)`
-/

namespace A395260.P12441778917845636363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219621 (n + 1) + A056520 n

end

end A395260.P12441778917845636363

namespace A395260

/-- `A219621(n+1)+A056520(n)` -/
def P12441778917845636363.Spec : Prop :=
  ∀ n, P12441778917845636363.a n = A395260 (n + 1)

end A395260

/-! ## A395260.P943953312543875807

`A220147(n+1)+A100119(n)`
-/

namespace A395260.P943953312543875807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220147 (n + 1) + A100119 n

end

end A395260.P943953312543875807

namespace A395260

/-- `A220147(n+1)+A100119(n)` -/
def P943953312543875807.Spec : Prop :=
  ∀ n, P943953312543875807.a n = A395260 (n + 1)

end A395260

/-! ## A395260.P5880013808703557288

`A014628(n+3)+A008778(n)`
-/

namespace A395260.P5880013808703557288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014628 (n + 3) + A008778 n

end

end A395260.P5880013808703557288

namespace A395260

/-- `A014628(n+3)+A008778(n)` -/
def P5880013808703557288.Spec : Prop :=
  ∀ n, P5880013808703557288.a n = A395260 (n + 1)

end A395260

/-! ## A395260.P12720140513190661089

`A006008(n+1)+A074742(n+1)+A004006(n)`
-/

namespace A395260.P12720140513190661089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006008 (n + 1) + (A074742 (n + 1) + A004006 n)

end

end A395260.P12720140513190661089

namespace A395260

/-- `A006008(n+1)+A074742(n+1)+A004006(n)` -/
def P12720140513190661089.Spec : Prop :=
  ∀ n, P12720140513190661089.a n = A395260 (n + 1)

end A395260

/-! ## A395260.P5191844321292378507

`A006008(n+1)+A027965(n+2)+A004006(n)`
-/

namespace A395260.P5191844321292378507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006008 (n + 1) + (A027965 (n + 2) + A004006 n)

end

end A395260.P5191844321292378507

namespace A395260

/-- `A006008(n+1)+A027965(n+2)+A004006(n)` -/
def P5191844321292378507.Spec : Prop :=
  ∀ n, P5191844321292378507.a n = A395260 (n + 1)

end A395260

/-! ## A395260.P12779049202350826178

`∑[A049480(n+2)]-n`
-/

namespace A395260.P12779049202350826178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049480 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A395260.P12779049202350826178

namespace A395260

/-- `∑[A049480(n+2)]-n` -/
def P12779049202350826178.Spec : Prop :=
  ∀ n, P12779049202350826178.a n = A395260 (n + 1)

end A395260

/-! ## A395260.P6185845371253471841

`A006008(n+2)-(n+1)`
-/

namespace A395260.P6185845371253471841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006008 (n + 2) - (n + 1 : ℤ)

end

end A395260.P6185845371253471841

namespace A395260

/-- `A006008(n+2)-(n+1)` -/
def P6185845371253471841.Spec : Prop :=
  ∀ n, P6185845371253471841.a n = A395260 (n + 1)

end A395260

/-! ## A395260.P3911429566379039660

`∑[A153057(n+1)]+n²`
-/

namespace A395260.P3911429566379039660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A395260.P3911429566379039660

namespace A395260

/-- `∑[A153057(n+1)]+n²` -/
def P3911429566379039660.Spec : Prop :=
  ∀ n, P3911429566379039660.a n = A395260 (n + 1)

end A395260

/-! ## A395260.P13233258038334909773

`A136396(n+1)+∑[(n+1)²]`
-/

namespace A395260.P13233258038334909773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136396 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A395260.P13233258038334909773

namespace A395260

/-- `A136396(n+1)+∑[(n+1)²]` -/
def P13233258038334909773.Spec : Prop :=
  ∀ n, P13233258038334909773.a n = A395260 (n + 1)

end A395260

/-!
# A395261: Self-convolution of A000293.

The programs for A395261, there is no canonical definition to state claims against.
-/

/-! ## A395261.P5774239931529634886

`∑{#}[n, A000293(#)*A000293(n-#)]`
-/

namespace A395261.P5774239931529634886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000293 k * A000293 (n - k)

end

end A395261.P5774239931529634886

/-!
# A395262: Triangle read by rows: Expansion of g.f. A(x,y) that satisfies the functional equation A(x,y) = Sum_{j>=0} x^(j*(j+1)/2) * y^j * A(x,y)^j / Product_{k=1..j} (1 - x^k * y * A(x,y)).

The programs for A395262, there is no canonical definition to state claims against.
-/

/-! ## A395262.P15625162552982853971

`A122890(n)%A096817(A304442(3*n+2))`
-/

namespace A395262.P15625162552982853971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122890 n) (A096817 (A304442 (3 * n + 2)).toNat)

end

end A395262.P15625162552982853971

/-! ## A395262.P1826170367326532234

`A395304(n)-A198381(A051390(n+1))`
-/

namespace A395262.P1826170367326532234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395304 n - A198381 (A051390 (n + 1)).toNat

end

end A395262.P1826170367326532234

/-! ## A395262.P9105976635240970592

`A126302(A343088(n))`
-/

namespace A395262.P9105976635240970592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126302 (A343088 n).toNat

end

end A395262.P9105976635240970592

/-! ## A395262.P10503251724334757120

`A122890(A247167(n+1))`
-/

namespace A395262.P10503251724334757120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122890 (A247167 (n + 1)).toNat

end

end A395262.P10503251724334757120

/-! ## A395262.P3806259291836371643

`and(A000217(A395480(n)), A395304(n))`
-/

namespace A395262.P3806259291836371643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000217 (A395480 n).toNat) (A395304 n)

end

end A395262.P3806259291836371643

/-!
# A395264: Primes p such that the number of quadratic residues in the Lucas sequence A000032 modulo p over a full Lucas sequence period A106291(p) equals the number of nonresidues plus the number of terms divisible by p.

The programs for A395264, there is no canonical definition to state claims against.
-/

/-! ## A395264.P13596643501775155849

`∩[A191116(n+1), A299791(n+1)]`
-/

namespace A395264.P13596643501775155849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395264.P13596643501775155849

/-! ## A395264.P15957603823711799689

`∩[A191129(n+1), A299791(n+1)]`
-/

namespace A395264.P15957603823711799689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395264.P15957603823711799689

/-! ## A395264.P8836807922017950607

`∩[A191116(n+1), A326836(n+1)]`
-/

namespace A395264.P8836807922017950607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395264.P8836807922017950607

/-!
# A395265: a(n) is the minimum diameter of an n-element set of integers for which no nonzero d has more than 5 representations as a difference of elements of the set.

The programs for A395265, there is no canonical definition to state claims against.
-/

/-! ## A395265.P3887371570948814309

`A090532(A068912(n))`
-/

namespace A395265.P3887371570948814309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090532 (A068912 n).toNat

end

end A395265.P3887371570948814309

/-! ## A395265.P10785780196634349113

`A090532(A320452(n))`
-/

namespace A395265.P10785780196634349113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090532 (A320452 n).toNat

end

end A395265.P10785780196634349113

/-! ## A395265.P2246321780887262554

`A090532(A008937(n+1))`
-/

namespace A395265.P2246321780887262554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090532 (A008937 (n + 1)).toNat

end

end A395265.P2246321780887262554

/-! ## A395265.P14890901112811791257

`A090532(A292168(n+2))`
-/

namespace A395265.P14890901112811791257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090532 (A292168 (n + 2)).toNat

end

end A395265.P14890901112811791257

/-!
# A395266: a(n) = a(n-1) + a(n-3) + a(n-4), a(0) = 1, a(1) = 5, a(2) = 25, a(3) = 30.

The programs for A395266, the canonical program `A395266.P17042320103219594228` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395266 has offset 0).

The definition of A395266 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A395266.P17042320103219594228`, by `A395266.P17042320103219594228.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A395266.P4684482240201441213

`ogf((1+4x+20x^2+4x^3)/(1-x-x^3-x^4))`
-/

namespace A395266.P4684482240201441213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 20, 4] [1, -1, 0, -1, -1] n

end

end A395266.P4684482240201441213

namespace A395266

/-- `ogf((1+4x+20x^2+4x^3)/(1-x-x^3-x^4))` -/
def P4684482240201441213.Spec : Prop :=
  ∀ n, P4684482240201441213.a n = A395266 n

end A395266

/-! ## A395266.P17042320103219594228

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=30`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395266

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P17042320103219594228.Spec : Prop :=
  ∀ n, (P17042320103219594228.a n : ℤ) = A395266 n

theorem P17042320103219594228.correct : P17042320103219594228.Spec := by
  intro n
  simp only [A395266]

end A395266

/-!
# A395268: Decimal expansion of 1/3 + sqrt(3)/(2*Pi).

The programs for A395268, there is no canonical definition to state claims against.
-/

/-! ## A395268.P12519445966557056398

`9-A258147(n)`
-/

namespace A395268.P12519445966557056398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A258147 n

end

end A395268.P12519445966557056398

/-!
# A395269: E.g.f. A(x) satisfies A'(x) = 1 + A^5(x), where A^l(x) denotes the l-th iterate of A, with A(0) = 0.

The programs for A395269, there is no canonical definition to state claims against.
-/

/-! ## A395269.P14073233540131694555

`A396973(∑[n+2])`
-/

namespace A395269.P14073233540131694555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396973 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A395269.P14073233540131694555

/-!
# A395270: Numbers that are radicals of abundant numbers.

The programs for A395270, the canonical program `A395270.P17244589602935654934` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395270 has offset 1).

The definition of A395270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395270.P17244589602935654934

`filter[A005117(n+1), A323170(#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A395270

/-- `filter[A005117(n+1), A323170(#)]` -/
def P17244589602935654934.Spec : Prop :=
  ∀ n, P17244589602935654934.a n = A395270 (n + 1)

theorem P17244589602935654934.correct : P17244589602935654934.Spec := by
  intro n
  simp only [A395270, Nat.add_sub_cancel]

end A395270

/-! ## A395270.P1707680225757047534

`filter[A120944(n+1), A323170(#)]`
-/

namespace A395270.P1707680225757047534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A395270.P1707680225757047534

namespace A395270

/-- `filter[A120944(n+1), A323170(#)]` -/
def P1707680225757047534.Spec : Prop :=
  ∀ n, P1707680225757047534.a n = A395270 (n + 1)

end A395270

/-! ## A395270.P17291775715110369690

`filter[A000469(n+1), A323170(#)]`
-/

namespace A395270.P17291775715110369690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A395270.P17291775715110369690

namespace A395270

/-- `filter[A000469(n+1), A323170(#)]` -/
def P17291775715110369690.Spec : Prop :=
  ∀ n, P17291775715110369690.a n = A395270 (n + 1)

end A395270

/-! ## A395270.P7547065504968635817

`filter[A388427(n+1), A323170(#)]`
-/

namespace A395270.P7547065504968635817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A395270.P7547065504968635817

namespace A395270

/-- `filter[A388427(n+1), A323170(#)]` -/
def P7547065504968635817.Spec : Prop :=
  ∀ n, P7547065504968635817.a n = A395270 (n + 1)

end A395270

/-! ## A395270.P4028804749329532589

`filter[A054741(n+1), A008966(#)]`
-/

namespace A395270.P4028804749329532589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A395270.P4028804749329532589

namespace A395270

/-- `filter[A054741(n+1), A008966(#)]` -/
def P4028804749329532589.Spec : Prop :=
  ∀ n, P4028804749329532589.a n = A395270 (n + 1)

end A395270

/-! ## A395270.P10772384368551959342

`filter[A054741(n+1), A354819(#)]`
-/

namespace A395270.P10772384368551959342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A395270.P10772384368551959342

namespace A395270

/-- `filter[A054741(n+1), A354819(#)]` -/
def P10772384368551959342.Spec : Prop :=
  ∀ n, P10772384368551959342.a n = A395270 (n + 1)

end A395270

/-! ## A395270.P6861365428625871755

`∩[A000469(n+1), A054741(n+1)]`
-/

namespace A395270.P6861365428625871755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395270.P6861365428625871755

namespace A395270

/-- `∩[A000469(n+1), A054741(n+1)]` -/
def P6861365428625871755.Spec : Prop :=
  ∀ n, (P6861365428625871755.a n : ℤ) = A395270 (n + 1)

end A395270

/-! ## A395270.P17867030865360282491

`∩[A005117(n+1), A054741(n+1)]`
-/

namespace A395270.P17867030865360282491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395270.P17867030865360282491

namespace A395270

/-- `∩[A005117(n+1), A054741(n+1)]` -/
def P17867030865360282491.Spec : Prop :=
  ∀ n, (P17867030865360282491.a n : ℤ) = A395270 (n + 1)

end A395270

/-! ## A395270.P797301431599575356

`∩[A054741(n+1), A120944(n+1)]`
-/

namespace A395270.P797301431599575356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395270.P797301431599575356

namespace A395270

/-- `∩[A054741(n+1), A120944(n+1)]` -/
def P797301431599575356.Spec : Prop :=
  ∀ n, (P797301431599575356.a n : ℤ) = A395270 (n + 1)

end A395270

/-! ## A395270.P9448537779513059695

`filter[A119432(n+1), A354819(#)]`
-/

namespace A395270.P9448537779513059695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A395270.P9448537779513059695

namespace A395270

/-- `filter[A119432(n+1), A354819(#)]` -/
def P9448537779513059695.Spec : Prop :=
  ∀ n, P9448537779513059695.a n = A395270 (n + 1)

end A395270

/-! ## A395270.P14261714913377205212

`∩[A000469(n+1), A119432(n+1)]`
-/

namespace A395270.P14261714913377205212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395270.P14261714913377205212

namespace A395270

/-- `∩[A000469(n+1), A119432(n+1)]` -/
def P14261714913377205212.Spec : Prop :=
  ∀ n, (P14261714913377205212.a n : ℤ) = A395270 (n + 1)

end A395270

/-! ## A395270.P16551286005700955859

`∩[A119432(n+1), A120944(n+1)]`
-/

namespace A395270.P16551286005700955859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395270.P16551286005700955859

namespace A395270

/-- `∩[A119432(n+1), A120944(n+1)]` -/
def P16551286005700955859.Spec : Prop :=
  ∀ n, (P16551286005700955859.a n : ℤ) = A395270 (n + 1)

end A395270

/-! ## A395270.P15868289917890772377

`filter[A144338(n+1), A323170(#)]`
-/

namespace A395270.P15868289917890772377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A395270.P15868289917890772377

namespace A395270

/-- `filter[A144338(n+1), A323170(#)]` -/
def P15868289917890772377.Spec : Prop :=
  ∀ n, P15868289917890772377.a n = A395270 (n + 1)

end A395270

/-! ## A395270.P9996961211219104437

`∩[A054741(n+1), A144338(n+1)]`
-/

namespace A395270.P9996961211219104437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395270.P9996961211219104437

namespace A395270

/-- `∩[A054741(n+1), A144338(n+1)]` -/
def P9996961211219104437.Spec : Prop :=
  ∀ n, (P9996961211219104437.a n : ℤ) = A395270 (n + 1)

end A395270

/-! ## A395270.P5339209437516211099

`filter[A167207(n+1), A323170(#)]`
-/

namespace A395270.P5339209437516211099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A395270.P5339209437516211099

namespace A395270

/-- `filter[A167207(n+1), A323170(#)]` -/
def P5339209437516211099.Spec : Prop :=
  ∀ n, P5339209437516211099.a n = A395270 (n + 1)

end A395270

/-! ## A395270.P14899855746767027482

`∩[A054741(n+1), A167207(n+1)]`
-/

namespace A395270.P14899855746767027482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395270.P14899855746767027482

namespace A395270

/-- `∩[A054741(n+1), A167207(n+1)]` -/
def P14899855746767027482.Spec : Prop :=
  ∀ n, (P14899855746767027482.a n : ℤ) = A395270 (n + 1)

end A395270

/-! ## A395270.P12232820618813069250

`filter[A303554(n+1), A323170(#)]`
-/

namespace A395270.P12232820618813069250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A395270.P12232820618813069250

namespace A395270

/-- `filter[A303554(n+1), A323170(#)]` -/
def P12232820618813069250.Spec : Prop :=
  ∀ n, P12232820618813069250.a n = A395270 (n + 1)

end A395270

/-! ## A395270.P12350753543917916200

`∩[A054741(n+1), A303554(n+1)]`
-/

namespace A395270.P12350753543917916200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395270.P12350753543917916200

namespace A395270

/-- `∩[A054741(n+1), A303554(n+1)]` -/
def P12350753543917916200.Spec : Prop :=
  ∀ n, (P12350753543917916200.a n : ℤ) = A395270 (n + 1)

end A395270

/-! ## A395270.P12701578511499581106

`filter[A163814(n+1), A323170(#)]`
-/

namespace A395270.P12701578511499581106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A395270.P12701578511499581106

namespace A395270

/-- `filter[A163814(n+1), A323170(#)]` -/
def P12701578511499581106.Spec : Prop :=
  ∀ n, P12701578511499581106.a n = A395270 (n + 1)

end A395270

/-! ## A395270.P1671724971885612734

`∏{p}[A395271(n+1), #]`
-/

namespace A395270.P1671724971885612734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395271 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A395270.P1671724971885612734

namespace A395270

/-- `∏{p}[A395271(n+1), #]` -/
def P1671724971885612734.Spec : Prop :=
  ∀ n, (P1671724971885612734.a n : ℤ) = A395270 (n + 1)

end A395270

/-!
# A395278: a(n) = number of 4-tuples (w, x, y, z) of primes such that w < x < y < z and w*x + y*z = n.

The programs for A395278, there is no canonical definition to state claims against.
-/

/-! ## A395278.P14419989197069410051

`A087269(3*n+1)%A001285(A144331(n))`
-/

namespace A395278.P14419989197069410051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087269 (3 * n + 1)) (A001285 (A144331 n).toNat)

end

end A395278.P14419989197069410051

/-! ## A395278.P15158164714272934420

`and(A005369(n), A194351(n))`
-/

namespace A395278.P15158164714272934420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005369 n) (A194351 n)

end

end A395278.P15158164714272934420

/-! ## A395278.P16457776249389982216

`and(A127693(n), A194351(n))`
-/

namespace A395278.P16457776249389982216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127693 n) (A194351 n)

end

end A395278.P16457776249389982216

/-! ## A395278.P15523642915024899124

`and(A005369(n), A320784(n))`
-/

namespace A395278.P15523642915024899124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005369 n) (A320784 n)

end

end A395278.P15523642915024899124

/-! ## A395278.P1189076713013327875

`and(A005369(n), A050339(n+1))`
-/

namespace A395278.P1189076713013327875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005369 n) (A050339 (n + 1))

end

end A395278.P1189076713013327875

/-!
# A395282: a(n) = Sum_{d|n} mu(d)*Fibonacci(2*(n/d)+1).

The programs for A395282, the canonical program `A395282.P88056068259505697` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395282 has offset 1).

The definition of A395282 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A008683(#)*A000045(2*(n+1)/#+1)]` (program `A395282.P88056068259505697`, by `A395282.P88056068259505697.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A395282.P88056068259505697

`∑{d}[n+1, A008683(#)*A000045(2*(n+1)/#+1)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A395282

/-- `∑{d}[n+1, A008683(#)*A000045(2*(n+1)/#+1)]` -/
def P88056068259505697.Spec : Prop :=
  ∀ n, P88056068259505697.a n = A395282 (n + 1)

theorem P88056068259505697.correct : P88056068259505697.Spec := by
  intro n
  simp only [A395282, Nat.add_sub_cancel]

end A395282

/-! ## A395282.P4869537209626327474

`∑{d}[n+1, A008683(#)*A048575((n+1)/#-1)]`
-/

namespace A395282.P4869537209626327474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A048575 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A395282.P4869537209626327474

namespace A395282

/-- `∑{d}[n+1, A008683(#)*A048575((n+1)/#-1)]` -/
def P4869537209626327474.Spec : Prop :=
  ∀ n, P4869537209626327474.a n = A395282 (n + 1)

end A395282

/-!
# A395285: a(n) is the apex of the following triangle: start with the binary expansion of n, say (1, b_2, ..., b_w), as the first row; for k = 2..w, the k-th row is obtained by performing between adjacent terms of the prior row the AND operation when b_k = 0, the OR operation when b_k = 1; a(0) = 0.

The programs for A395285, there is no canonical definition to state claims against.
-/

/-! ## A395285.P16989806662184659952

`A021913(A054405(n)+A001222(n+1))`
-/

namespace A395285.P16989806662184659952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A054405 n + A001222 (n + 1)).toNat

end

end A395285.P16989806662184659952

/-! ## A395285.P10550511995862937325

`A331625(n+1)%A118916(n+1)`
-/

namespace A395285.P10550511995862937325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331625 (n + 1)) (A118916 (n + 1))

end

end A395285.P10550511995862937325

/-! ## A395285.P1969036598232747197

`A000035(A261461(n)+A098147(3*n+2))`
-/

namespace A395285.P1969036598232747197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A261461 n + A098147 (3 * n + 2)).toNat

end

end A395285.P1969036598232747197

/-! ## A395285.P10214631879836781366

`(or(A069517(A100851(n)), A261922(n))+1)%2`
-/

namespace A395285.P10214631879836781366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (A069517 (A100851 n).toNat) (A261922 n) + 1) 2

end

end A395285.P10214631879836781366

/-! ## A395285.P6632530504661829157

`(or(A069517(A127105(n+1)), A261922(n))+1)%2`
-/

namespace A395285.P6632530504661829157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (A069517 (A127105 (n + 1)).toNat) (A261922 n) + 1) 2

end

end A395285.P6632530504661829157

/-!
# A395288: Number of partitions of [2n] where exactly n blocks contain their own index element.

The programs for A395288, there is no canonical definition to state claims against.
-/

/-! ## A395288.P3308599971593411814

`A347462(∑[n²])`
-/

namespace A395288.P3308599971593411814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347462 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A395288.P3308599971593411814

/-!
# A395291: a(n) = (2*n)! * [x^(2*n)] cos(x)^2 / cos(sqrt(2)*x).

The programs for A395291, there is no canonical definition to state claims against.
-/

/-! ## A395291.P16234563113129763621

`A109499(n)*A340596(A109467(n))`
-/

namespace A395291.P16234563113129763621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109499 n * A340596 (A109467 n).toNat

end

end A395291.P16234563113129763621

/-!
# A395296: a(n) = (2*n)! * [x^(2*n)] cosh(x)^3 / cos(x).

The programs for A395296, there is no canonical definition to state claims against.
-/

/-! ## A395296.P16865488181991163499

`1/4*∑{#}[n, (3+9^(n-#))*C(2*n, 2*#)*A000364(#)]`
-/

namespace A395296.P16865488181991163499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (∑ k ∈ Finset.range (f1 n + 1), (3 + (9 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)) * (Nat.choose (2 * n) (2 * k) : ℚ) * (A000364 k : ℚ))

end

end A395296.P16865488181991163499

/-!
# A395298: a(n) = (2*n)! * [x^(2*n)] cosh(x)^5 / cos(x).

The programs for A395298, there is no canonical definition to state claims against.
-/

/-! ## A395298.P17621264608589713475

`1/16*∑{#}[n, (10+5*9^(n-#)+25^(n-#))*C(2*n, 2*#)*A000364(#)]`
-/

namespace A395298.P17621264608589713475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 16 * (∑ k ∈ Finset.range (f1 n + 1), (10 + 5 * (9 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) + (25 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)) * (Nat.choose (2 * n) (2 * k) : ℚ) * (A000364 k : ℚ))

end

end A395298.P17621264608589713475

