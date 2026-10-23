import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
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
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A371000: a(n) are the records of the number of addends of the form j*(j+1)/2 (A000217) producing a sequence of consecutive composites starting at A370999(n).

The programs for A371000, there is no canonical definition to state claims against.
-/

/-! ## A371000.P9073444226054059192

`lt[A000926(n+1), A333396(A333363(n+3))]`
-/

namespace A371000.P9073444226054059192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333396 (A333363 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371000.P9073444226054059192

/-! ## A371000.P13197206141777288767

`lt[A375740(n+1), A333354(A333363(n+3))]`
-/

namespace A371000.P13197206141777288767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333354 (A333363 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371000.P13197206141777288767

/-! ## A371000.P9735545128170621904

`lt[A000051(n), A380242(A059126(2*(n+2)))]`
-/

namespace A371000.P9735545128170621904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380242 (A059126 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371000.P9735545128170621904

/-! ## A371000.P9494740766792068075

`lt[A241509(n), A270664(A059126(2*(n+2)))]`
-/

namespace A371000.P9494740766792068075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241509 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270664 (A059126 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371000.P9494740766792068075

/-! ## A371000.P6903588117443555434

`lt[A182009(n+1), A182009(A059136(2*(n+2)))]`
-/

namespace A371000.P6903588117443555434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182009 (A059136 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371000.P6903588117443555434

/-!
# A371002: a(n) are the records of the number of square addends producing a sequence of consecutive composites starting at A371001(n).

The programs for A371002, there is no canonical definition to state claims against.
-/

/-! ## A371002.P4046286968835232998

`record[A056898(n+1)-1]`
-/

namespace A371002.P4046286968835232998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056898 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371002.P4046286968835232998

/-! ## A371002.P1396002858864772771

`record[sqrt(A056897(n))-1]`
-/

namespace A371002.P1396002858864772771
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056897 n : ℝ) - 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371002.P1396002858864772771

/-! ## A371002.P3395497525776135987

`A316568(A371001(n+1))`
-/

namespace A371002.P3395497525776135987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316568 (A371001 (n + 1)).toNat

end

end A371002.P3395497525776135987

/-! ## A371002.P17730272906667750879

`record[A085099(n+1)-A014963(n+1)²]`
-/

namespace A371002.P17730272906667750879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 (n + 1) - A014963 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371002.P17730272906667750879

/-! ## A371002.P2910527470200957868

`A214526(record[A056897(n)])`
-/

namespace A371002.P2910527470200957868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A371002.P2910527470200957868

/-!
# A371003: a(n) = binomial(2*n-1,n) - binomial(n,2)*(binomial(n-1,2) + 2) - 1.

The programs for A371003, the canonical program `A371003.P568380792560173461` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371003 has offset 1).

The definition of A371003 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*(n+1)-1, n+1)-C(n+1, 2)*(C(n, 2)+2)-1` (program `A371003.P568380792560173461`, by `A371003.P568380792560173461.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A371003.P568380792560173461

`C(2*(n+1)-1, n+1)-C(n+1, 2)*(C(n, 2)+2)-1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A371003

/-- `C(2*(n+1)-1, n+1)-C(n+1, 2)*(C(n, 2)+2)-1` -/
def P568380792560173461.Spec : Prop :=
  ∀ n, P568380792560173461.a n = A371003 (n + 1)

theorem P568380792560173461.correct : P568380792560173461.Spec := by
  intro n
  simp only [A371003, Nat.add_sub_cancel]

end A371003

/-! ## A371003.P1518712515036524633

`A352027(n+1)-A006011(n)`
-/

namespace A371003.P1518712515036524633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352027 (n + 1) - A006011 n

end

end A371003.P1518712515036524633

namespace A371003

/-- `A352027(n+1)-A006011(n)` -/
def P1518712515036524633.Spec : Prop :=
  ∀ n, P1518712515036524633.a n = A371003 (n + 1)

end A371003

/-! ## A371003.P9792990668283300462

`A010763(n)-A352405(n+1)`
-/

namespace A371003.P9792990668283300462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010763 n - A352405 (n + 1)

end

end A371003.P9792990668283300462

namespace A371003

/-- `A010763(n)-A352405(n+1)` -/
def P9792990668283300462.Spec : Prop :=
  ∀ n, P9792990668283300462.a n = A371003 (n + 1)

end A371003

/-! ## A371003.P6210084088019413919

`A352027(n+1)-A054925(n²)`
-/

namespace A371003.P6210084088019413919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352027 (n + 1) - A054925 (n ^ 2)

end

end A371003.P6210084088019413919

namespace A371003

/-- `A352027(n+1)-A054925(n²)` -/
def P6210084088019413919.Spec : Prop :=
  ∀ n, P6210084088019413919.a n = A371003 (n + 1)

end A371003

/-!
# A371004: Fourth powers whose digital sum is also a fourth power.

The programs for A371004, there is no canonical definition to state claims against.
-/

/-! ## A371004.P8106376237826721280

`A371047(n+1)^4`
-/

namespace A371004.P8106376237826721280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371047 (n + 1) ^ 4

end

end A371004.P8106376237826721280

/-! ## A371004.P7392575067251026803

`A371047(A000027(n+1))²²`
-/

namespace A371004.P7392575067251026803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A371047 (A000027 (n + 1)).toNat ^ 2) ^ 2

end

end A371004.P7392575067251026803

/-! ## A371004.P10638620712909856383

`A000583(A371047(n+1))`
-/

namespace A371004.P10638620712909856383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A371047 (n + 1)).toNat

end

end A371004.P10638620712909856383

/-! ## A371004.P2414690688232644376

`A000583(A043681(n+1))`
-/

namespace A371004.P2414690688232644376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A043681 (n + 1)).toNat

end

end A371004.P2414690688232644376

/-! ## A371004.P6391274815181948799

`A000583(A234472(n+1))`
-/

namespace A371004.P6391274815181948799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A234472 (n + 1)).toNat

end

end A371004.P6391274815181948799

/-!
# A371005: Expansion of e.g.f. (1/x) * Series_Reversion( x/(2*exp(x) - 1) ).

The programs for A371005, there is no canonical definition to state claims against.
-/

/-! ## A371005.P4282537219533145846

`A052316(n+1)/(n+1)`
-/

namespace A371005.P4282537219533145846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052316 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A371005.P4282537219533145846

/-!
# A371007: Expansion of e.g.f. (1/x) * Series_Reversion( 2*x/(3*exp(2*x) - 1) ).

The programs for A371007, there is no canonical definition to state claims against.
-/

/-! ## A371007.P12271082365373889772

`A239053(n*a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A371007.P12271082365373889772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A239053 ((n : ℤ) * a (n - 1)).toNat

end

end A371007.P12271082365373889772

/-!
# A371010: Powerful numbers that are the sum of 2 squares.

The programs for A371010, there is no canonical definition to state claims against.
-/

/-! ## A371010.P2727398081760920643

`filter[A001694(n+1), A229062(#)]`
-/

namespace A371010.P2727398081760920643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A371010.P2727398081760920643

/-! ## A371010.P14456303459016157183

`∩[A001694(n+1), A020668(n+1)]`
-/

namespace A371010.P14456303459016157183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020668 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371010.P14456303459016157183

/-! ## A371010.P5883329187767771825

`∩[A020668(n+1), A335851(n+1)]`
-/

namespace A371010.P5883329187767771825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371010.P5883329187767771825

/-! ## A371010.P970834802815112171

`∩[A001481(n+1), A001694(n+1)]`
-/

namespace A371010.P970834802815112171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371010.P970834802815112171

/-! ## A371010.P18162430487638103793

`record[A057521(A001481(n+2))]`
-/

namespace A371010.P18162430487638103793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A001481 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371010.P18162430487638103793

/-! ## A371010.P7991774075387401087

`filter[A245226(n+1), A112526(#)]`
-/

namespace A371010.P7991774075387401087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A371010.P7991774075387401087

/-! ## A371010.P1321795041978038187

`filter[A020668(n+2), A112526(#)]`
-/

namespace A371010.P1321795041978038187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020668 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A371010.P1321795041978038187

/-!
# A371011: Cubefull numbers that are the sum of 2 squares.

The programs for A371011, there is no canonical definition to state claims against.
-/

/-! ## A371011.P10433625952997906255

`∩[A036966(n+1), A371010(n+1)]`
-/

namespace A371011.P10433625952997906255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371011.P10433625952997906255

/-! ## A371011.P14118025760259970107

`filter[A036966(n+1), A229062(#)]`
-/

namespace A371011.P14118025760259970107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A371011.P14118025760259970107

/-! ## A371011.P14584383564143879580

`∩[A020668(n+1), A036966(n+1)]`
-/

namespace A371011.P14584383564143879580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371011.P14584383564143879580

/-! ## A371011.P15222477925361256277

`∩[A001481(n+1), A036966(n+1)]`
-/

namespace A371011.P15222477925361256277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371011.P15222477925361256277

/-! ## A371011.P10346952849958595725

`∩[A337050(n+1), A371010(n+1)]`
-/

namespace A371011.P10346952849958595725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371011.P10346952849958595725

/-!
# A371012: The largest prime that divides the n-th number that is the sum of 2 squares; a(2) = 1.

The programs for A371012, the canonical program `A371012.P16977232108696174586` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371012 has offset 2).

The definition of A371012 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001481, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A371012.P16977232108696174586

`A006530(A001481(n+2))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A371012

/-- `A006530(A001481(n+2))` -/
def P16977232108696174586.Spec : Prop :=
  ∀ n, P16977232108696174586.a n = A371012 (n + 2)

theorem P16977232108696174586.correct : P16977232108696174586.Spec := by
  intro n
  simp only [A371012, Nat.add_sub_cancel]

end A371012

/-! ## A371012.P5838006454357865131

`A006530(A166687(n+2)-1)`
-/

namespace A371012.P5838006454357865131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A166687 (n + 2) - 1).toNat

end

end A371012.P5838006454357865131

namespace A371012

/-- `A006530(A166687(n+2)-1)` -/
def P5838006454357865131.Spec : Prop :=
  ∀ n, P5838006454357865131.a n = A371012 (n + 2)

end A371012

/-! ## A371012.P2833006854324025130

`A006530(A128106(n+2)/2)`
-/

namespace A371012.P2833006854324025130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A128106 (n + 2) : ℚ) / 2)).toNat

end

end A371012.P2833006854324025130

namespace A371012

/-- `A006530(A128106(n+2)/2)` -/
def P2833006854324025130.Spec : Prop :=
  ∀ n, P2833006854324025130.a n = A371012 (n + 2)

end A371012

/-! ## A371012.P10167446712438452361

`A006530(lt[1, A004018(n)])`
-/

namespace A371012.P10167446712438452361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A371012.P10167446712438452361

namespace A371012

/-- `A006530(lt[1, A004018(n)])` -/
def P10167446712438452361.Spec : Prop :=
  ∀ n, P10167446712438452361.a n = A371012 (n + 2)

end A371012

/-! ## A371012.P15977334225711341083

`A085392(A128106(n+2))`
-/

namespace A371012.P15977334225711341083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A128106 (n + 2)).toNat

end

end A371012.P15977334225711341083

namespace A371012

/-- `A085392(A128106(n+2))` -/
def P15977334225711341083.Spec : Prop :=
  ∀ n, P15977334225711341083.a n = A371012 (n + 2)

end A371012

/-! ## A371012.P9550418418103112165

`A006530(lt[A000161(3*n), A000161(n)])`
-/

namespace A371012.P9550418418103112165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A371012.P9550418418103112165

namespace A371012

/-- `A006530(lt[A000161(3*n), A000161(n)])` -/
def P9550418418103112165.Spec : Prop :=
  ∀ n, P9550418418103112165.a n = A371012 (n + 2)

end A371012

/-! ## A371012.P684460222963755705

`A085392(A354776(n+2))`
-/

namespace A371012.P684460222963755705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A354776 (n + 2)).toNat

end

end A371012.P684460222963755705

namespace A371012

/-- `A085392(A354776(n+2))` -/
def P684460222963755705.Spec : Prop :=
  ∀ n, P684460222963755705.a n = A371012 (n + 2)

end A371012

/-!
# A371013: Numbers that are the sum of 2 squares and divisible by the square of their largest prime factor.

The programs for A371013, the canonical program `A371013.P10224637008819936297` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371013 has offset 1).

The definition of A371013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 688 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371013.P7166310092789652537

`∩[A070003(n+1), A034023(n)]`
-/

namespace A371013.P7166310092789652537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034023 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371013.P7166310092789652537

namespace A371013

/-- `∩[A070003(n+1), A034023(n)]` -/
def P7166310092789652537.Spec : Prop :=
  ∀ n, (P7166310092789652537.a n : ℤ) = A371013 (n + 1)

end A371013

/-! ## A371013.P14117709921805322594

`filter[A034023(n), A319988(#)]`
-/

namespace A371013.P14117709921805322594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319988 (f1 j).toNat = 1) n)

end

end A371013.P14117709921805322594

namespace A371013

/-- `filter[A034023(n), A319988(#)]` -/
def P14117709921805322594.Spec : Prop :=
  ∀ n, P14117709921805322594.a n = A371013 (n + 1)

end A371013

/-! ## A371013.P10224637008819936297

`filter[A070003(n+1), A229062(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A371013

/-- `filter[A070003(n+1), A229062(#)]` -/
def P10224637008819936297.Spec : Prop :=
  ∀ n, P10224637008819936297.a n = A371013 (n + 1)

theorem P10224637008819936297.correct : P10224637008819936297.Spec := by
  intro n
  simp only [A371013, Nat.add_sub_cancel]

end A371013

/-! ## A371013.P10352304015553485503

`∩[A001481(n+1), A070003(n+1)]`
-/

namespace A371013.P10352304015553485503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371013.P10352304015553485503

namespace A371013

/-- `∩[A001481(n+1), A070003(n+1)]` -/
def P10352304015553485503.Spec : Prop :=
  ∀ n, (P10352304015553485503.a n : ℤ) = A371013 (n + 1)

end A371013

/-! ## A371013.P170766120710438471

`filter[A378294(n+1), A319988(#)]`
-/

namespace A371013.P170766120710438471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319988 (f1 j).toNat = 1) n)

end

end A371013.P170766120710438471

namespace A371013

/-- `filter[A378294(n+1), A319988(#)]` -/
def P170766120710438471.Spec : Prop :=
  ∀ n, P170766120710438471.a n = A371013 (n + 1)

end A371013

/-!
# A371014: The number of divisors of n that are the sum of 2 squares.

The programs for A371014, the canonical program `A371014.P1386548091365000844` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371014 has offset 1).

The definition of A371014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371014.P1386548091365000844

`∑{d}[n+1, A229062(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A371014

/-- `∑{d}[n+1, A229062(#)]` -/
def P1386548091365000844.Spec : Prop :=
  ∀ n, P1386548091365000844.a n = A371014 (n + 1)

theorem P1386548091365000844.correct : P1386548091365000844.Spec := by
  intro n
  simp only [A371014, Nat.add_sub_cancel]

end A371014

/-! ## A371014.P308907681746812437

`A000005(lcm(A000188(n+1), A072436(n+1)))`
-/

namespace A371014.P308907681746812437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lcm (A000188 (n + 1)) (A072436 (n + 1)))

end

end A371014.P308907681746812437

namespace A371014

/-- `A000005(lcm(A000188(n+1), A072436(n+1)))` -/
def P308907681746812437.Spec : Prop :=
  ∀ n, P308907681746812437.a n = A371014 (n + 1)

end A371014

/-! ## A371014.P126337812903891948

`A065704(lcm(A005940(3*(n+1)), A318456(2*n+1)))`
-/

namespace A371014.P126337812903891948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065704 (Int.lcm (A005940 (3 * (n + 1))) (A318456 (2 * n + 1)))

end

end A371014.P126337812903891948

namespace A371014

/-- `A065704(lcm(A005940(3*(n+1)), A318456(2*n+1)))` -/
def P126337812903891948.Spec : Prop :=
  ∀ n, P126337812903891948.a n = A371014 (n + 1)

end A371014

/-! ## A371014.P13094722692508713020

`A124778(A056962(n+1))+A124763(3*n+2)`
-/

namespace A371014.P13094722692508713020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (A056962 (n + 1)).toNat + A124763 (3 * n + 2)

end

end A371014.P13094722692508713020

namespace A371014

/-- `A124778(A056962(n+1))+A124763(3*n+2)` -/
def P13094722692508713020.Spec : Prop :=
  ∀ n, P13094722692508713020.a n = A371014 (n + 1)

end A371014

/-! ## A371014.P9210100924395532818

`A337243(A106633(n))+A007814(n+1)`
-/

namespace A371014.P9210100924395532818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337243 (A106633 n).toNat + A007814 (n + 1)

end

end A371014.P9210100924395532818

namespace A371014

/-- `A337243(A106633(n))+A007814(n+1)` -/
def P9210100924395532818.Spec : Prop :=
  ∀ n, P9210100924395532818.a n = A371014 (n + 1)

end A371014

/-!
# A371015: The largest divisor of n that is the sum of 2 squares.

The programs for A371015, the canonical program `A371015.P13355970796855090247` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371015 has offset 1).

The definition of A371015 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363340, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A371015.P13355970796855090247

`(n+1)/A363340(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A371015

/-- `(n+1)/A363340(n+1)` -/
def P13355970796855090247.Spec : Prop :=
  ∀ n, P13355970796855090247.a n = (A371015 (n + 1) : ℚ)

end A371015

/-! ## A371015.P3239054536335486103

`(n+1)²/A390693(n+1)`
-/

namespace A371015.P3239054536335486103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A390693 (n + 1) : ℚ)

end

end A371015.P3239054536335486103

namespace A371015

/-- `(n+1)²/A390693(n+1)` -/
def P3239054536335486103.Spec : Prop :=
  ∀ n, P3239054536335486103.a n = (A371015 (n + 1) : ℚ)

end A371015

/-! ## A371015.P17024009986418256228

`(n+1)/A097706(A364900(n))`
-/

namespace A371015.P17024009986418256228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A097706 (A364900 n).toNat : ℚ)

end

end A371015.P17024009986418256228

namespace A371015

/-- `(n+1)/A097706(A364900(n))` -/
def P17024009986418256228.Spec : Prop :=
  ∀ n, P17024009986418256228.a n = (A371015 (n + 1) : ℚ)

end A371015

/-! ## A371015.P1108554008210625488

`(n+1)/A097706(A007913(n+1))`
-/

namespace A371015.P1108554008210625488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A097706 (A007913 (n + 1)).toNat : ℚ)

end

end A371015.P1108554008210625488

namespace A371015

/-- `(n+1)/A097706(A007913(n+1))` -/
def P1108554008210625488.Spec : Prop :=
  ∀ n, P1108554008210625488.a n = (A371015 (n + 1) : ℚ)

end A371015

/-! ## A371015.P2366529389407157691

`(n+1)/A245474(A097706(n+1))`
-/

namespace A371015.P2366529389407157691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A245474 (A097706 (n + 1)).toNat : ℚ)

end

end A371015.P2366529389407157691

namespace A371015

/-- `(n+1)/A245474(A097706(n+1))` -/
def P2366529389407157691.Spec : Prop :=
  ∀ n, P2366529389407157691.a n = (A371015 (n + 1) : ℚ)

end A371015

/-! ## A371015.P13415127760013270224

`(n+1)/A170819(A245474(n+1))`
-/

namespace A371015.P13415127760013270224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A170819 (A245474 (n + 1)).toNat : ℚ)

end

end A371015.P13415127760013270224

namespace A371015

/-- `(n+1)/A170819(A245474(n+1))` -/
def P13415127760013270224.Spec : Prop :=
  ∀ n, P13415127760013270224.a n = (A371015 (n + 1) : ℚ)

end A371015

/-! ## A371015.P12869942656762147080

`lcm(A008833(n+1), A072436(n+1))`
-/

namespace A371015.P12869942656762147080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008833 (n + 1)) (A072436 (n + 1))

end

end A371015.P12869942656762147080

namespace A371015

/-- `lcm(A008833(n+1), A072436(n+1))` -/
def P12869942656762147080.Spec : Prop :=
  ∀ n, (P12869942656762147080.a n : ℤ) = A371015 (n + 1)

end A371015

/-! ## A371015.P17296914108669827922

`(n+1)/A000265(A302690(n+1))`
-/

namespace A371015.P17296914108669827922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000265 (A302690 (n + 1)).toNat : ℚ)

end

end A371015.P17296914108669827922

namespace A371015

/-- `(n+1)/A000265(A302690(n+1))` -/
def P17296914108669827922.Spec : Prop :=
  ∀ n, P17296914108669827922.a n = (A371015 (n + 1) : ℚ)

end A371015

/-!
# A371016: Centered square numbers which are semiprime.

The programs for A371016, the canonical program `A371016.P443611739013701360` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371016 has offset 1).

The definition of A371016 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3705 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371016.P443611739013701360

`A099776(A108769(2*n+1-n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A371016

/-- `A099776(A108769(2*n+1-n))` -/
def P443611739013701360.Spec : Prop :=
  ∀ n, P443611739013701360.a n = A371016 (n + 1)

theorem P443611739013701360.correct : P443611739013701360.Spec := by
  intro n
  simp only [A371016, Nat.add_sub_cancel]

end A371016

/-! ## A371016.P12036427638355139680

`A099776(A108769(n+1)%A087484(n+1))`
-/

namespace A371016.P12036427638355139680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099776 (Int.tmod (A108769 (n + 1)) (A087484 (n + 1))).toNat

end

end A371016.P12036427638355139680

namespace A371016

/-- `A099776(A108769(n+1)%A087484(n+1))` -/
def P12036427638355139680.Spec : Prop :=
  ∀ n, P12036427638355139680.a n = A371016 (n + 1)

end A371016

/-! ## A371016.P2583784907103659484

`A099776(A108769(n+1))%A001160(n+2)`
-/

namespace A371016.P2583784907103659484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099776 (A108769 (n + 1)).toNat) (A001160 (n + 2))

end

end A371016.P2583784907103659484

namespace A371016

/-- `A099776(A108769(n+1))%A001160(n+2)` -/
def P2583784907103659484.Spec : Prop :=
  ∀ n, P2583784907103659484.a n = A371016 (n + 1)

end A371016

/-! ## A371016.P14039102908251075695

`A001844(A108769(n+1))`
-/

namespace A371016.P14039102908251075695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (A108769 (n + 1)).toNat

end

end A371016.P14039102908251075695

namespace A371016

/-- `A001844(A108769(n+1))` -/
def P14039102908251075695.Spec : Prop :=
  ∀ n, P14039102908251075695.a n = A371016 (n + 1)

end A371016

/-! ## A371016.P12058048863219459200

`A099776(A108769(n+1))*A267594(A136151(n+1))`
-/

namespace A371016.P12058048863219459200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099776 (A108769 (n + 1)).toNat * A267594 (A136151 (n + 1)).toNat

end

end A371016.P12058048863219459200

namespace A371016

/-- `A099776(A108769(n+1))*A267594(A136151(n+1))` -/
def P12058048863219459200.Spec : Prop :=
  ∀ n, P12058048863219459200.a n = A371016 (n + 1)

end A371016

/-! ## A371016.P4037395513035689284

`∩[A121387(n+1), A000982(n)]`
-/

namespace A371016.P4037395513035689284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371016.P4037395513035689284

namespace A371016

/-- `∩[A121387(n+1), A000982(n)]` -/
def P4037395513035689284.Spec : Prop :=
  ∀ n, (P4037395513035689284.a n : ℤ) = A371016 (n + 1)

end A371016

/-! ## A371016.P8305490539780505434

`∩[A121387(n+1), A001844(n)]`
-/

namespace A371016.P8305490539780505434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371016.P8305490539780505434

namespace A371016

/-- `∩[A121387(n+1), A001844(n)]` -/
def P8305490539780505434.Spec : Prop :=
  ∀ n, (P8305490539780505434.a n : ℤ) = A371016 (n + 1)

end A371016

/-! ## A371016.P12460334389615264879

`∩[A121387(n+1), A030978(n)]`
-/

namespace A371016.P12460334389615264879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030978 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371016.P12460334389615264879

namespace A371016

/-- `∩[A121387(n+1), A030978(n)]` -/
def P12460334389615264879.Spec : Prop :=
  ∀ n, (P12460334389615264879.a n : ℤ) = A371016 (n + 1)

end A371016

/-! ## A371016.P3341461090617048254

`∩[A121387(n+1), A104563(n)]`
-/

namespace A371016.P3341461090617048254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104563 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371016.P3341461090617048254

namespace A371016

/-- `∩[A121387(n+1), A104563(n)]` -/
def P3341461090617048254.Spec : Prop :=
  ∀ n, (P3341461090617048254.a n : ℤ) = A371016 (n + 1)

end A371016

/-! ## A371016.P18406605340278366740

`∩[A121387(n+1), A266723(n)]`
-/

namespace A371016.P18406605340278366740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266723 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371016.P18406605340278366740

namespace A371016

/-- `∩[A121387(n+1), A266723(n)]` -/
def P18406605340278366740.Spec : Prop :=
  ∀ n, (P18406605340278366740.a n : ℤ) = A371016 (n + 1)

end A371016

/-! ## A371016.P16289460790150917489

`∩[A121387(n+1), A266725(n)]`
-/

namespace A371016.P16289460790150917489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266725 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371016.P16289460790150917489

namespace A371016

/-- `∩[A121387(n+1), A266725(n)]` -/
def P16289460790150917489.Spec : Prop :=
  ∀ n, (P16289460790150917489.a n : ℤ) = A371016 (n + 1)

end A371016

/-! ## A371016.P10097149433892903977

`∩[A031878(n+1), A121387(n+1)]`
-/

namespace A371016.P10097149433892903977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371016.P10097149433892903977

namespace A371016

/-- `∩[A031878(n+1), A121387(n+1)]` -/
def P10097149433892903977.Spec : Prop :=
  ∀ n, (P10097149433892903977.a n : ℤ) = A371016 (n + 1)

end A371016

/-! ## A371016.P5746690122005943031

`∩[A087327(n+1), A121387(n+1)]`
-/

namespace A371016.P5746690122005943031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371016.P5746690122005943031

namespace A371016

/-- `∩[A087327(n+1), A121387(n+1)]` -/
def P5746690122005943031.Spec : Prop :=
  ∀ n, (P5746690122005943031.a n : ℤ) = A371016 (n + 1)

end A371016

/-! ## A371016.P11605106157864793875

`∩[A099776(n+1), A121387(n+1)]`
-/

namespace A371016.P11605106157864793875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371016.P11605106157864793875

namespace A371016

/-- `∩[A099776(n+1), A121387(n+1)]` -/
def P11605106157864793875.Spec : Prop :=
  ∀ n, (P11605106157864793875.a n : ℤ) = A371016 (n + 1)

end A371016

/-! ## A371016.P5402412738981232934

`∩[A109094(n+1), A121387(n+1)]`
-/

namespace A371016.P5402412738981232934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371016.P5402412738981232934

namespace A371016

/-- `∩[A109094(n+1), A121387(n+1)]` -/
def P5402412738981232934.Spec : Prop :=
  ∀ n, (P5402412738981232934.a n : ℤ) = A371016 (n + 1)

end A371016

/-! ## A371016.P17278125965981259561

`∩[A121387(n+1), A166080(n+1)]`
-/

namespace A371016.P17278125965981259561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371016.P17278125965981259561

namespace A371016

/-- `∩[A121387(n+1), A166080(n+1)]` -/
def P17278125965981259561.Spec : Prop :=
  ∀ n, (P17278125965981259561.a n : ℤ) = A371016 (n + 1)

end A371016

/-! ## A371016.P4252561741790237551

`∩[A121387(n+1), A236283(n+1)]`
-/

namespace A371016.P4252561741790237551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371016.P4252561741790237551

namespace A371016

/-- `∩[A121387(n+1), A236283(n+1)]` -/
def P4252561741790237551.Spec : Prop :=
  ∀ n, (P4252561741790237551.a n : ℤ) = A371016 (n + 1)

end A371016

/-! ## A371016.P11028148368146126513

`∩[A121387(n+1), A301758(n+1)]`
-/

namespace A371016.P11028148368146126513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371016.P11028148368146126513

namespace A371016

/-- `∩[A121387(n+1), A301758(n+1)]` -/
def P11028148368146126513.Spec : Prop :=
  ∀ n, (P11028148368146126513.a n : ℤ) = A371016 (n + 1)

end A371016

/-! ## A371016.P7278371873692385868

`∩[A121387(n+1), A340528(n+1)]`
-/

namespace A371016.P7278371873692385868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371016.P7278371873692385868

namespace A371016

/-- `∩[A121387(n+1), A340528(n+1)]` -/
def P7278371873692385868.Spec : Prop :=
  ∀ n, (P7278371873692385868.a n : ℤ) = A371016 (n + 1)

end A371016

/-! ## A371016.P17933523828608118180

`∩[A121387(n+1), A348484(n+1)]`
-/

namespace A371016.P17933523828608118180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371016.P17933523828608118180

namespace A371016

/-- `∩[A121387(n+1), A348484(n+1)]` -/
def P17933523828608118180.Spec : Prop :=
  ∀ n, (P17933523828608118180.a n : ℤ) = A371016 (n + 1)

end A371016

/-!
# A371017: The second row of generalized Knuth's old sum.

The programs for A371017, the canonical program `A371017.P11316669434621766616` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371017 has offset 1).

The definition of A371017 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A371017.P11316669434621766616

`4*(8*(n+1)-3)*C(2*(n+1)-2, n)*C(2*(n+1)+1, 2*(n+1)-2)/(n+1)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A371017

/-- `4*(8*(n+1)-3)*C(2*(n+1)-2, n)*C(2*(n+1)+1, 2*(n+1)-2)/(n+1)` -/
def P11316669434621766616.Spec : Prop :=
  ∀ n, P11316669434621766616.a n = (A371017 (n + 1) : ℚ)

end A371017

/-! ## A371017.P10572302603152977507

`A002802(n)*A008574(A004766(2*n+1))`
-/

namespace A371017.P10572302603152977507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002802 n * A008574 (A004766 (2 * n + 1)).toNat

end

end A371017.P10572302603152977507

namespace A371017

/-- `A002802(n)*A008574(A004766(2*n+1))` -/
def P10572302603152977507.Spec : Prop :=
  ∀ n, P10572302603152977507.a n = A371017 (n + 1)

end A371017

/-!
# A371018: Expansion of e.g.f. (1/x) * Series_Reversion( x/(1 + x^2*exp(x)) ).

The programs for A371018, there is no canonical definition to state claims against.
-/

/-! ## A371018.P8705722916576021499

`A069557(A001405(n))-n`
-/

namespace A371018.P8705722916576021499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069557 (A001405 n).toNat - (n : ℤ)

end

end A371018.P8705722916576021499

/-! ## A371018.P16197088371917109958

`A069557(A054357(n))-n`
-/

namespace A371018.P16197088371917109958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069557 (A054357 n).toNat - (n : ℤ)

end

end A371018.P16197088371917109958

/-!
# A371019: Expansion of e.g.f. (1/x) * Series_Reversion( x/(1 + x^3*exp(x)) ).

The programs for A371019, there is no canonical definition to state claims against.
-/

/-! ## A371019.P10013068816459997914

`A245092(A390649(n))`
-/

namespace A371019.P10013068816459997914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A390649 n).toNat

end

end A371019.P10013068816459997914

/-! ## A371019.P11509231248545905066

`A390649(A228910(n)+n)`
-/

namespace A371019.P11509231248545905066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390649 (A228910 n + (n : ℤ)).toNat

end

end A371019.P11509231248545905066

/-! ## A371019.P1315371090349158755

`A390649(n*A250664(n))`
-/

namespace A371019.P1315371090349158755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390649 ((n : ℤ) * A250664 n).toNat

end

end A371019.P1315371090349158755

/-!
# A371020: Expansion of e.g.f. (1/x) * Series_Reversion( x/(1 + x^2/2*exp(x)) ).

The programs for A371020, there is no canonical definition to state claims against.
-/

/-! ## A371020.P6586988615997996087

`A060426(A224916(n))`
-/

namespace A371020.P6586988615997996087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060426 (A224916 n).toNat

end

end A371020.P6586988615997996087

/-! ## A371020.P4798164774726894473

`A381575(n)%A030996(A163511(n))`
-/

namespace A371020.P4798164774726894473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381575 n) (A030996 (A163511 n).toNat)

end

end A371020.P4798164774726894473

/-!
# A371022: Numbers k with the property that there is a finite set W of groups of order divisible by k such that if k divides the order of a group G, then G has a subgroup isomorphic to a group in W.

The programs for A371022, there is no canonical definition to state claims against.
-/

/-! ## A371022.P12887286741982643050

`lt[A151708(A327778(n)), A008578(n+1)]`
-/

namespace A371022.P12887286741982643050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151708 (A327778 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371022.P12887286741982643050

/-! ## A371022.P8922509608861768582

`lt[A113196(n+1), A113219(2*n+1)]+1`
-/

namespace A371022.P8922509608861768582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113219 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A371022.P8922509608861768582

/-!
# A371023: E.g.f. satisfies log(A(x)) = x*A(x)^2 * (exp(x*A(x)^2) - 1).

The programs for A371023, there is no canonical definition to state claims against.
-/

/-! ## A371023.P16983818304387616948

`A004525(A371271(n)+A371270(n))`
-/

namespace A371023.P16983818304387616948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A371271 n + A371270 n).toNat

end

end A371023.P16983818304387616948

/-! ## A371023.P8968033725582740

`A004526(A371271(n)+A371270(n))`
-/

namespace A371023.P8968033725582740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A371271 n + A371270 n).toNat

end

end A371023.P8968033725582740

/-!
# A371024: a(n) is the least prime p such that p + 4*k*(k+1) is prime for 0 <= k <= n-1 but not for k=n.

The programs for A371024, there is no canonical definition to state claims against.
-/

/-! ## A371024.P3401587578061148920

`A052180(or(A003689(n+1), A059851(2*n)))`
-/

namespace A371024.P3401587578061148920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (Int.lor (A003689 (n + 1)) (A059851 (2 * n))).toNat

end

end A371024.P3401587578061148920

/-!
# A371027: a(n) = Sum_{k=1..n} binomial(n, k) * Pochhammer(1/4, k) * 4^k * a(n - k) for n > 0 and a(0) = 1. Row sums of triangle A371026.

The programs for A371027, there is no canonical definition to state claims against.
-/

/-! ## A371027.P1974229276921509777

`A057363(2*A008548(n))`
-/

namespace A371027.P1974229276921509777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057363 (2 * A008548 n).toNat

end

end A371027.P1974229276921509777

/-!
# A371028: a(n) = Sum_{k=1..n} (n + k - 1)! / (k!*(n - k)!) if n > 0 and a(0) = 1. Row sums of A370983.

The programs for A371028, there is no canonical definition to state claims against.
-/

/-! ## A371028.P7733251008070609019

`A126570(A038163(n))`
-/

namespace A371028.P7733251008070609019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126570 (A038163 n).toNat

end

end A371028.P7733251008070609019

/-!
# A371029: Numbers m such that if k = 27*m^3 + 3*m then k-1 and k+1 are primes.

The programs for A371029, there is no canonical definition to state claims against.
-/

/-! ## A371029.P16400345304705023862

`A236526(n+1)/3`
-/

namespace A371029.P16400345304705023862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236526 (n + 1) : ℚ) / 3

end

end A371029.P16400345304705023862

/-! ## A371029.P8563743668149748969

`A002264(A236526(n+1))`
-/

namespace A371029.P8563743668149748969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A236526 (n + 1)).toNat

end

end A371029.P8563743668149748969

/-! ## A371029.P2060082909606243311

`A152467(2*A236526(n+1))`
-/

namespace A371029.P2060082909606243311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (2 * A236526 (n + 1)).toNat

end

end A371029.P2060082909606243311

/-!
# A371030: n written in compositorial base.

The programs for A371030, there is no canonical definition to state claims against.
-/

/-! ## A371030.P16431528378586380504

`A007092(2*n-n/2-n%4/2)`
-/

namespace A371030.P16431528378586380504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (SequenceMachineLib.roundAway ((2 * n : ℚ) - (n : ℚ) / 2 - ((n % 4 : ℕ) : ℚ) / 2)).toNat

end

end A371030.P16431528378586380504

/-! ## A371030.P10128291951029238455

`A055643(A390774(n))`
-/

namespace A371030.P10128291951029238455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (A390774 n).toNat

end

end A371030.P10128291951029238455

/-! ## A371030.P15755738560258719796

`A007092(A047246(n+1))`
-/

namespace A371030.P15755738560258719796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A047246 (n + 1)).toNat

end

end A371030.P15755738560258719796

/-! ## A371030.P1034062553544416513

`∩[A007092(n), A235499(n)]`
-/

namespace A371030.P1034062553544416513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235499 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371030.P1034062553544416513

/-! ## A371030.P15564292493376992708

`∩[A007092(n), A390774(n)]`
-/

namespace A371030.P15564292493376992708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390774 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371030.P15564292493376992708

/-! ## A371030.P14296454310971846551

`A007092(comp[A047257(n+1)])`
-/

namespace A371030.P14296454310971846551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047257 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A371030.P14296454310971846551

/-! ## A371030.P10058661944608902293

`A007092(A047227(n+1)-1)`
-/

namespace A371030.P10058661944608902293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A047227 (n + 1) - 1).toNat

end

end A371030.P10058661944608902293

/-! ## A371030.P16263959742809792714

`∩[A007092(n)-2, A007093(n)]`
-/

namespace A371030.P16263959742809792714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371030.P16263959742809792714

/-! ## A371030.P12482298963397151490

`∩[A007092(n+1)-2, A007092(n)]`
-/

namespace A371030.P12482298963397151490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371030.P12482298963397151490

/-!
# A371032: a(n) is the integer whose decimal digits are 0's or 1's in alternating runs of lengths n, n-1, n-2, ..., 3, 2, 1.

The programs for A371032, the canonical program `A371032.P15007671236305901022` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371032 has offset 1).

The definition of A371032 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A371032.P15007671236305901022

`(10^((n+1)*(n+2)/2)-1)/9-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A371032

/-- `(10^((n+1)*(n+2)/2)-1)/9-a(n-1)` -/
def P15007671236305901022.Spec : Prop :=
  ∀ n, P15007671236305901022.a n = (A371032 (n + 1) : ℝ)

end A371032

/-!
# A371033: a(n) is the integer whose binary expansion starts with 1 and such that the runs of identical bits have lengths n, n-1, n-2, ..., 3, 2, 1.

The programs for A371033, the canonical program `A371033.P16093602155422367399` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371033 has offset 1).

The definition of A371033 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A371033.P16093602155422367399

`2^((n+1)*(n+2)/2)-1-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A371033

/-- `2^((n+1)*(n+2)/2)-1-a(n-1)` -/
def P16093602155422367399.Spec : Prop :=
  ∀ n, P16093602155422367399.a n = (A371033 (n + 1) : ℝ)

end A371033

/-! ## A371033.P15240616321917231216

`2^∑[n+1]-(a(n-1)+1)` with `a(0)=1`
-/

namespace A371033.P15240616321917231216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - (a (n - 1) + 1)

end

end A371033.P15240616321917231216

namespace A371033

/-- `2^∑[n+1]-(a(n-1)+1)` -/
def P15240616321917231216.Spec : Prop :=
  ∀ n, P15240616321917231216.a n = A371033 (n + 1)

end A371033

/-! ## A371033.P15488708477595240861

`A355653(A279751(n+1))`
-/

namespace A371033.P15488708477595240861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355653 (A279751 (n + 1)).toNat

end

end A371033.P15488708477595240861

namespace A371033

/-- `A355653(A279751(n+1))` -/
def P15488708477595240861.Spec : Prop :=
  ∀ n, P15488708477595240861.a n = A371033 (n + 1)

end A371033

/-! ## A371033.P18391638496192086541

`A355653(A280148(n+1))`
-/

namespace A371033.P18391638496192086541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355653 (A280148 (n + 1)).toNat

end

end A371033.P18391638496192086541

namespace A371033

/-- `A355653(A280148(n+1))` -/
def P18391638496192086541.Spec : Prop :=
  ∀ n, P18391638496192086541.a n = A371033 (n + 1)

end A371033

/-! ## A371033.P15958853726688464389

`A355653(A000975(n+2))`
-/

namespace A371033.P15958853726688464389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355653 (A000975 (n + 2)).toNat

end

end A371033.P15958853726688464389

namespace A371033

/-- `A355653(A000975(n+2))` -/
def P15958853726688464389.Spec : Prop :=
  ∀ n, P15958853726688464389.a n = A371033 (n + 1)

end A371033

/-!
# A371034: For n >= 1, a(n) = A004086(n) if A055483(n) = 1, otherwise a(n) = n / A055483(n).

The programs for A371034, there is no canonical definition to state claims against.
-/

/-! ## A371034.P9134550973877564252

`A336168(C(n, 10))`
-/

namespace A371034.P9134550973877564252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336168 (Nat.choose n 10)

end

end A371034.P9134550973877564252

/-! ## A371034.P5403118643561822467

`A146564((a(n-1)+val(n, 11))!)` with `a(0)=1`
-/

namespace A371034.P5403118643561822467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A146564 (Nat.factorial (a (n - 1) + (SequenceMachineLib.valuation n 11 : ℤ)).toNat)

end

end A371034.P5403118643561822467

/-! ## A371034.P2457105375142286236

`A163253((a(n-1)+val(n, 11))!)` with `a(0)=1`
-/

namespace A371034.P2457105375142286236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A163253 (Nat.factorial (a (n - 1) + (SequenceMachineLib.valuation n 11 : ℤ)).toNat)

end

end A371034.P2457105375142286236

/-! ## A371034.P8844664631427161880

`A003263((2^∑{digits}[n, #%C(n, #)])²²)`
-/

namespace A371034.P8844664631427161880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003263 (((2 ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % Nat.choose n x).sum) ^ 2) ^ 2)

end

end A371034.P8844664631427161880

/-! ## A371034.P1703906328611003425

`A132207(A036426(n))`
-/

namespace A371034.P1703906328611003425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132207 (A036426 n).toNat

end

end A371034.P1703906328611003425

/-!
# A371035: a(n) = A086330(prime(n)).

The programs for A371035, there is no canonical definition to state claims against.
-/

/-! ## A371035.P16764897474429025175

`A086330(A000040(n+1))`
-/

namespace A371035.P16764897474429025175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086330 (A000040 (n + 1)).toNat

end

end A371035.P16764897474429025175

/-! ## A371035.P3068606235494225350

`A086330(A008578(n+2))`
-/

namespace A371035.P3068606235494225350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086330 (A008578 (n + 2)).toNat

end

end A371035.P3068606235494225350

/-! ## A371035.P15437552832597309350

`A086330(A182986(n+2))`
-/

namespace A371035.P15437552832597309350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086330 (A182986 (n + 2)).toNat

end

end A371035.P15437552832597309350

/-! ## A371035.P1226791269267733303

`A086330(A008864(n+1)-1)`
-/

namespace A371035.P1226791269267733303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086330 (A008864 (n + 1) - 1).toNat

end

end A371035.P1226791269267733303

/-! ## A371035.P9394879806149036157

`A086330(A067747(2*n+1))`
-/

namespace A371035.P9394879806149036157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086330 (A067747 (2 * n + 1)).toNat

end

end A371035.P9394879806149036157

/-!
# A371036: a(n) is the number of ways to place n indistinguishable balls into n distinguishable boxes with at least one box remaining empty and not all balls placed in a single box.

The programs for A371036, the canonical program `A371036.P3088427061520026793` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371036 has offset 1).

The definition of A371036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371036.P3088427061520026793

`A134759(n)-A141351(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A371036

/-- `A134759(n)-A141351(n)` -/
def P3088427061520026793.Spec : Prop :=
  ∀ n, P3088427061520026793.a n = A371036 (n + 1)

theorem P3088427061520026793.correct : P3088427061520026793.Spec := by
  intro n
  simp only [A371036, Nat.add_sub_cancel]

end A371036

/-! ## A371036.P8957354182892997415

`A001700(n)-A065475(n+1)`
-/

namespace A371036.P8957354182892997415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n - A065475 (n + 1)

end

end A371036.P8957354182892997415

namespace A371036

/-- `A001700(n)-A065475(n+1)` -/
def P8957354182892997415.Spec : Prop :=
  ∀ n, P8957354182892997415.a n = A371036 (n + 1)

end A371036

/-! ## A371036.P1745499686448268670

`A010763(n)-A087156(n+1)`
-/

namespace A371036.P1745499686448268670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010763 n - A087156 (n + 1)

end

end A371036.P1745499686448268670

namespace A371036

/-- `A010763(n)-A087156(n+1)` -/
def P1745499686448268670.Spec : Prop :=
  ∀ n, P1745499686448268670.a n = A371036 (n + 1)

end A371036

/-! ## A371036.P10054394682967312647

`A242429(n+1)-A052940(n)`
-/

namespace A371036.P10054394682967312647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242429 (n + 1) - A052940 n

end

end A371036.P10054394682967312647

namespace A371036

/-- `A242429(n+1)-A052940(n)` -/
def P10054394682967312647.Spec : Prop :=
  ∀ n, P10054394682967312647.a n = A371036 (n + 1)

end A371036

/-! ## A371036.P4749425554716348559

`A001700(n)+n-A103517(n)`
-/

namespace A371036.P4749425554716348559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n + ((n : ℤ) - A103517 n)

end

end A371036.P4749425554716348559

namespace A371036

/-- `A001700(n)+n-A103517(n)` -/
def P4749425554716348559.Spec : Prop :=
  ∀ n, P4749425554716348559.a n = A371036 (n + 1)

end A371036

/-! ## A371036.P15690999884160480226

`A112849(n+1)-A171463(n+1)`
-/

namespace A371036.P15690999884160480226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112849 (n + 1) - A171463 (n + 1)

end

end A371036.P15690999884160480226

namespace A371036

/-- `A112849(n+1)-A171463(n+1)` -/
def P15690999884160480226.Spec : Prop :=
  ∀ n, P15690999884160480226.a n = A371036 (n + 1)

end A371036

/-! ## A371036.P3241130320948667734

`A001405(A004280(n+2))-(n+2)`
-/

namespace A371036.P3241130320948667734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A004280 (n + 2)).toNat - (n + 2 : ℤ)

end

end A371036.P3241130320948667734

namespace A371036

/-- `A001405(A004280(n+2))-(n+2)` -/
def P3241130320948667734.Spec : Prop :=
  ∀ n, P3241130320948667734.a n = A371036 (n + 1)

end A371036

/-! ## A371036.P3432124107120711554

`A001700(n)-(A036453(n+1)+n)`
-/

namespace A371036.P3432124107120711554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n - (A036453 (n + 1) + (n : ℤ))

end

end A371036.P3432124107120711554

namespace A371036

/-- `A001700(n)-(A036453(n+1)+n)` -/
def P3432124107120711554.Spec : Prop :=
  ∀ n, P3432124107120711554.a n = A371036 (n + 1)

end A371036

/-! ## A371036.P12430074633945789272

`A037952(2*n+1)-A184985(n+2)`
-/

namespace A371036.P12430074633945789272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (2 * n + 1) - A184985 (n + 2)

end

end A371036.P12430074633945789272

namespace A371036

/-- `A037952(2*n+1)-A184985(n+2)` -/
def P12430074633945789272.Spec : Prop :=
  ∀ n, P12430074633945789272.a n = A371036 (n + 1)

end A371036

/-! ## A371036.P11952686165566212418

`A088218(n+1)-A080820(A080820(2*n+1))`
-/

namespace A371036.P11952686165566212418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 1) - A080820 (A080820 (2 * n + 1)).toNat

end

end A371036.P11952686165566212418

namespace A371036

/-- `A088218(n+1)-A080820(A080820(2*n+1))` -/
def P11952686165566212418.Spec : Prop :=
  ∀ n, P11952686165566212418.a n = A371036 (n + 1)

end A371036

/-! ## A371036.P5105361095084387131

`A124133(n+1)%A000346(n)`
-/

namespace A371036.P5105361095084387131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124133 (n + 1)) (A000346 n)

end

end A371036.P5105361095084387131

namespace A371036

/-- `A124133(n+1)%A000346(n)` -/
def P5105361095084387131.Spec : Prop :=
  ∀ n, P5105361095084387131.a n = A371036 (n + 1)

end A371036

/-! ## A371036.P15701724628190893413

`A092443(n+1)%A112849(n+1)`
-/

namespace A371036.P15701724628190893413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092443 (n + 1)) (A112849 (n + 1))

end

end A371036.P15701724628190893413

namespace A371036

/-- `A092443(n+1)%A112849(n+1)` -/
def P15701724628190893413.Spec : Prop :=
  ∀ n, P15701724628190893413.a n = A371036 (n + 1)

end A371036

/-! ## A371036.P11920445265193731418

`lcm(gcd(2, n), C(2*n+1, n))-(n+2)`
-/

namespace A371036.P11920445265193731418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (Nat.gcd 2 n) (Nat.choose (2 * n + 1) n) : ℤ) - (n + 2 : ℤ)

end

end A371036.P11920445265193731418

namespace A371036

/-- `lcm(gcd(2, n), C(2*n+1, n))-(n+2)` -/
def P11920445265193731418.Spec : Prop :=
  ∀ n, P11920445265193731418.a n = A371036 (n + 1)

end A371036

/-! ## A371036.P4488180267183421371

`C(2, n+2)+C(2*n+1, n)-(n+2)`
-/

namespace A371036.P4488180267183421371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) + ((Nat.choose (2 * n + 1) n : ℤ) - (n + 2 : ℤ))

end

end A371036.P4488180267183421371

namespace A371036

/-- `C(2, n+2)+C(2*n+1, n)-(n+2)` -/
def P4488180267183421371.Spec : Prop :=
  ∀ n, P4488180267183421371.a n = A371036 (n + 1)

end A371036

/-!
# A371037: Orders of almost simple groups.

The programs for A371037, there is no canonical definition to state claims against.
-/

/-! ## A371037.P4107751979865786163

`∩[A060793(n+1), A304391(n+1)]`
-/

namespace A371037.P4107751979865786163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371037.P4107751979865786163

/-! ## A371037.P16139611368289068505

`A060793(A032555(n+2))`
-/

namespace A371037.P16139611368289068505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060793 (A032555 (n + 2)).toNat

end

end A371037.P16139611368289068505

/-! ## A371037.P17119922115515797523

`A060793(A032557(n+2))`
-/

namespace A371037.P17119922115515797523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060793 (A032557 (n + 2)).toNat

end

end A371037.P17119922115515797523

/-! ## A371037.P2371735954501799913

`A060793(A032559(n+2))`
-/

namespace A371037.P2371735954501799913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060793 (A032559 (n + 2)).toNat

end

end A371037.P2371735954501799913

/-!
# A371038: E.g.f. satisfies A(x) = exp(x^2*A(x)) / (1-x).

The programs for A371038, there is no canonical definition to state claims against.
-/

/-! ## A371038.P14620926794523377705

`filter[A396146(n), A004539(#)]`
-/

namespace A371038.P14620926794523377705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396146 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A004539 (f1 j).toNat = 1) n)

end

end A371038.P14620926794523377705

/-! ## A371038.P9801651430623207973

`A047226(A063007(n)+A001147(n))`
-/

namespace A371038.P9801651430623207973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047226 (A063007 n + A001147 n).toNat

end

end A371038.P9801651430623207973

/-!
# A371039: E.g.f. satisfies A(x) = exp(x^3*A(x)) / (1-x).

The programs for A371039, there is no canonical definition to state claims against.
-/

/-! ## A371039.P13437721093171638479

`A108548(A375607(n))`
-/

namespace A371039.P13437721093171638479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (A375607 n).toNat

end

end A371039.P13437721093171638479

/-! ## A371039.P6671922308416879805

`A032742(A000142(n)*A117117(n))`
-/

namespace A371039.P6671922308416879805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A000142 n * A117117 n).toNat

end

end A371039.P6671922308416879805

/-! ## A371039.P10320841307369023310

`A004525(A000142(n)*A325557(n))`
-/

namespace A371039.P10320841307369023310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A000142 n * A325557 n).toNat

end

end A371039.P10320841307369023310

/-!
# A371042: E.g.f. satisfies A(x) = 1 + x^2*exp(x*A(x)).

The programs for A371042, there is no canonical definition to state claims against.
-/

/-! ## A371042.P15929833927241623265

`A241477(A026787(n))`
-/

namespace A371042.P15929833927241623265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241477 (A026787 n).toNat

end

end A371042.P15929833927241623265

/-! ## A371042.P12737374814666255555

`A241477(∑[A002799(n)])`
-/

namespace A371042.P12737374814666255555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241477 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A371042.P12737374814666255555

/-!
# A371043: E.g.f. satisfies A(x) = 1 + x^2*A(x)*exp(x*A(x)).

The programs for A371043, there is no canonical definition to state claims against.
-/

/-! ## A371043.P13543539160366649046

`A360952(A294563(n)-1)`
-/

namespace A371043.P13543539160366649046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360952 (A294563 n - 1).toNat

end

end A371043.P13543539160366649046

/-! ## A371043.P9588534915258353614

`A213424(A025202(n+3))`
-/

namespace A371043.P9588534915258353614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213424 ((A025202 (n + 3)).toNat + 10)

end

end A371043.P9588534915258353614

/-!
# A371044: E.g.f. satisfies A(x) = 1 + x^3*exp(x*A(x)).

The programs for A371044, there is no canonical definition to state claims against.
-/

/-! ## A371044.P13783905109315426131

`A010054(4^n)+6*C(n, 3)`
-/

namespace A371044.P13783905109315426131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (4 ^ n) + (6 * Nat.choose n 3 : ℤ)

end

end A371044.P13783905109315426131

/-! ## A371044.P308963639244794852

`xor(6*C(n, 3), A010054(∑[4*n]²))`
-/

namespace A371044.P308963639244794852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (6 * Nat.choose n 3 : ℤ) (A010054 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2))

end

end A371044.P308963639244794852

/-! ## A371044.P10405369462844954966

`(6*C(n, 3))^A094337(2^∑{e}[n+1, #])`
-/

namespace A371044.P10405369462844954966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * Nat.choose n 3 : ℚ) ^ (A094337 (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) : ℤ)

end

end A371044.P10405369462844954966

/-!
# A371046: E.g.f. satisfies A(x) = 1 + x^3*A(x)^2*exp(x*A(x)).

The programs for A371046, there is no canonical definition to state claims against.
-/

/-! ## A371046.P11370643450328471020

`A057889(A390648(n))`
-/

namespace A371046.P11370643450328471020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A390648 n).toNat

end

end A371046.P11370643450328471020

/-! ## A371046.P6924080835014168983

`A245092(A362703(n))`
-/

namespace A371046.P6924080835014168983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A362703 n).toNat

end

end A371046.P6924080835014168983

/-! ## A371046.P13621668242573503796

`A023443(A390648(n)+1)`
-/

namespace A371046.P13621668242573503796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A390648 n + 1).toNat

end

end A371046.P13621668242573503796

/-!
# A371047: Numbers k such that the digital sum of k^4 is a fourth power.

The programs for A371047, there is no canonical definition to state claims against.
-/

/-! ## A371047.P15115336625787836568

`A371004(n+1)^(1/4)`
-/

namespace A371047.P15115336625787836568
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A371004 (n + 1) : ℝ) ^ ((1 : ℚ) / 4 : ℝ)

end

end A371047.P15115336625787836568

/-! ## A371047.P14997675597390080427

`sqrt(sqrt(A371004(n+1)))`
-/

namespace A371047.P14997675597390080427
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A371004 (n + 1) : ℝ))

end

end A371047.P14997675597390080427

/-!
# A371050: Numbers whose ternary representation consists of a run of 1's, then a run of 2's, then a run of 0's.

The programs for A371050, there is no canonical definition to state claims against.
-/

/-! ## A371050.P1862663243821360211

`∩[A043583(n+1), A044058(n+1)]`
-/

namespace A371050.P1862663243821360211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371050.P1862663243821360211

/-! ## A371050.P2513662908447464831

`∩[A026222(n+1), A043583(n+1)]`
-/

namespace A371050.P2513662908447464831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371050.P2513662908447464831

/-!
# A371051: Ternary numbers consisting of a run of 1's, then a run of 2's, then a run of 0's.

The programs for A371051, there is no canonical definition to state claims against.
-/

/-! ## A371051.P8493318892020162891

`A007089(A371050(n+1))`
-/

namespace A371051.P8493318892020162891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A371050 (n + 1)).toNat

end

end A371051.P8493318892020162891

/-! ## A371051.P18431721546452312433

`A343810(∩[A026222(n+1), A043583(n+1)])/4`
-/

namespace A371051.P18431721546452312433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043583 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343810 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) : ℚ) / 4

end

end A371051.P18431721546452312433

/-!
# A371052: Numbers whose ternary representation consists of a run of 2's, then a run of 1's, then a run of 0's.

The programs for A371052, there is no canonical definition to state claims against.
-/

/-! ## A371052.P12157773381959345303

`∩[A023759(n+1), A043583(n+1)]`
-/

namespace A371052.P12157773381959345303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371052.P12157773381959345303

/-! ## A371052.P15507852483231842392

`∩[A026229(n+1), A043583(n+1)]`
-/

namespace A371052.P15507852483231842392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371052.P15507852483231842392

/-! ## A371052.P8444145429931966354

`∩[A043583(n+1), A155504(n+1)]`
-/

namespace A371052.P8444145429931966354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371052.P8444145429931966354

/-!
# A371053: Ternary numbers consisting of a run of 2's, then a run of 1's, then a run of 0's.

The programs for A371053, there is no canonical definition to state claims against.
-/

/-! ## A371053.P4134450249608601927

`A007089(A371052(n+1))`
-/

namespace A371053.P4134450249608601927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A371052 (n + 1)).toNat

end

end A371053.P4134450249608601927

/-!
# A371054: Numbers whose ternary representation consists of a run of 1's, then a run of 0's, then a run of 2's.

The programs for A371054, the canonical program `A371054.P16164343174787979327` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371054 has offset 1).

The definition of A371054 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 375 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371054.P6931107053434447671

`A089118(A238246(n+1))`
-/

namespace A371054.P6931107053434447671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089118 (A238246 (n + 1)).toNat

end

end A371054.P6931107053434447671

namespace A371054

/-- `A089118(A238246(n+1))` -/
def P6931107053434447671.Spec : Prop :=
  ∀ n, P6931107053434447671.a n = A371054 (n + 1)

end A371054

/-! ## A371054.P16164343174787979327

`∩[A043583(n+1), A089118(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A371054

/-- `∩[A043583(n+1), A089118(n+1)]` -/
def P16164343174787979327.Spec : Prop :=
  ∀ n, (P16164343174787979327.a n : ℤ) = A371054 (n + 1)

theorem P16164343174787979327.correct : P16164343174787979327.Spec := by
  intro n
  simp only [A371054, Nat.add_sub_cancel]

end A371054

/-! ## A371054.P8214869513462645745

`∩[A043583(n+1), A297251(n+1)]`
-/

namespace A371054.P8214869513462645745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371054.P8214869513462645745

namespace A371054

/-- `∩[A043583(n+1), A297251(n+1)]` -/
def P8214869513462645745.Spec : Prop :=
  ∀ n, (P8214869513462645745.a n : ℤ) = A371054 (n + 1)

end A371054

/-! ## A371054.P7577535431456378277

`A004488(A371056(n+1))`
-/

namespace A371054.P7577535431456378277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A371056 (n + 1)).toNat

end

end A371054.P7577535431456378277

namespace A371054

/-- `A004488(A371056(n+1))` -/
def P7577535431456378277.Spec : Prop :=
  ∀ n, P7577535431456378277.a n = A371054 (n + 1)

end A371054

/-! ## A371054.P7443692952839751645

`∩[A043583(n+1), A356447(n+1)]`
-/

namespace A371054.P7443692952839751645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371054.P7443692952839751645

namespace A371054

/-- `∩[A043583(n+1), A356447(n+1)]` -/
def P7443692952839751645.Spec : Prop :=
  ∀ n, (P7443692952839751645.a n : ℤ) = A371054 (n + 1)

end A371054

/-!
# A371055: Ternary numbers consisting of a run of 1's, then a run of 0's, then a run of 2's.

The programs for A371055, there is no canonical definition to state claims against.
-/

/-! ## A371055.P7859008133207242595

`A007089(A371054(n+1))`
-/

namespace A371055.P7859008133207242595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A371054 (n + 1)).toNat

end

end A371055.P7859008133207242595

/-!
# A371056: Numbers whose ternary representation consists of a run of 2's, then a run of 0's, then a run of 1's.

The programs for A371056, the canonical program `A371056.P7401130399935352017` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371056 has offset 1).

The definition of A371056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371056.P7401130399935352017

`A004488(A371054(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A371056

/-- `A004488(A371054(n+1))` -/
def P7401130399935352017.Spec : Prop :=
  ∀ n, P7401130399935352017.a n = A371056 (n + 1)

theorem P7401130399935352017.correct : P7401130399935352017.Spec := by
  intro n
  simp only [A371056, Nat.add_sub_cancel]

end A371056

/-! ## A371056.P6882857056214349111

`A004488(∩[A043583(n+1), A089118(n+1)])`
-/

namespace A371056.P6882857056214349111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089118 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A371056.P6882857056214349111

namespace A371056

/-- `A004488(∩[A043583(n+1), A089118(n+1)])` -/
def P6882857056214349111.Spec : Prop :=
  ∀ n, P6882857056214349111.a n = A371056 (n + 1)

end A371056

/-! ## A371056.P2109231042084969124

`A372317(A371052(n+1))`
-/

namespace A371056.P2109231042084969124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372317 (A371052 (n + 1)).toNat

end

end A371056.P2109231042084969124

namespace A371056

/-- `A372317(A371052(n+1))` -/
def P2109231042084969124.Spec : Prop :=
  ∀ n, P2109231042084969124.a n = A371056 (n + 1)

end A371056

/-!
# A371057: Ternary numbers consisting of a run of 2's, then a run of 0's, then a run of 1's.

The programs for A371057, there is no canonical definition to state claims against.
-/

/-! ## A371057.P16410691213071502376

`A007089(A371056(n+1))`
-/

namespace A371057.P16410691213071502376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A371056 (n + 1)).toNat

end

end A371057.P16410691213071502376

/-!
# A371058: Numbers k divisible by A075860(k).

The programs for A371058, there is no canonical definition to state claims against.
-/

/-! ## A371058.P2392024853838106229

`filter[A094275(n+2), A344885(#)]`
-/

namespace A371058.P2392024853838106229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094275 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344885 (f1 j).toNat = 1) n)

end

end A371058.P2392024853838106229

/-! ## A371058.P1001373744513060352

`filter[A261466(n+2), A344885(#)]`
-/

namespace A371058.P1001373744513060352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344885 (f1 j).toNat = 1) n)

end

end A371058.P1001373744513060352

/-! ## A371058.P2175542070802842103

`filter[A113322(2*(n+1)), A344885(#)]`
-/

namespace A371058.P2175542070802842103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113322 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344885 (f1 j).toNat = 1) n)

end

end A371058.P2175542070802842103

/-! ## A371058.P15956039763329467950

`filter[A288966(2*(n+1)), A344885(#)]`
-/

namespace A371058.P15956039763329467950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288966 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344885 (f1 j).toNat = 1) n)

end

end A371058.P15956039763329467950

/-!
# A371061: a(1)=1, a(2)=2; for n > 2, a(n) is the sum of the largest proper divisor of each of the previous two terms, except that the term itself is used if it has no proper divisors > 1.

The programs for A371061, there is no canonical definition to state claims against.
-/

/-! ## A371061.P6701767755374458246

`A117818(a(n-1))+A117818(a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A371061.P6701767755374458246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A117818 (a (n - 1)).toNat + A117818 (a (n - 2)).toNat

end

end A371061.P6701767755374458246

/-!
# A371064: Array read by ascending antidiagonals where T(n,k) is the number of paths of length k from the origin to a facet of the cross polytope of size k in Z^n.

The programs for A371064, there is no canonical definition to state claims against.
-/

/-! ## A371064.P12719702200606365988

`A104000(A043318(n+1))`
-/

namespace A371064.P12719702200606365988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104000 (A043318 (n + 1)).toNat

end

end A371064.P12719702200606365988

/-! ## A371064.P5827560884440190576

`A104000(A044915(n+1))`
-/

namespace A371064.P5827560884440190576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104000 (A044915 (n + 1)).toNat

end

end A371064.P5827560884440190576

/-! ## A371064.P12570007211232367099

`A104000(A055647(n+1))`
-/

namespace A371064.P12570007211232367099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104000 (A055647 (n + 1)).toNat

end

end A371064.P12570007211232367099

/-! ## A371064.P12300645600808029899

`A104000(A055648(n)+1)`
-/

namespace A371064.P12300645600808029899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104000 (A055648 n + 1).toNat

end

end A371064.P12300645600808029899

/-! ## A371064.P12308401983321688849

`A104000(A161951(n+1))`
-/

namespace A371064.P12308401983321688849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104000 (A161951 (n + 1)).toNat

end

end A371064.P12308401983321688849

/-!
# A371065: a(1)=2; for n > 1, a(n) is the least prime number p > a(n-1) such that p + 2^(n-1) is a prime number.

The programs for A371065, there is no canonical definition to state claims against.
-/

/-! ## A371065.P3205939877361481456

`A000040(lt[A003106(n), A134194(n+1)])`
-/

namespace A371065.P3205939877361481456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A371065.P3205939877361481456

/-! ## A371065.P2161121500018909799

`A000040(lt[A000929(n), A360457(n+1)])`
-/

namespace A371065.P2161121500018909799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000929 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A371065.P2161121500018909799

/-! ## A371065.P13042953196191290794

`A000040(lt[A352833(n), A126773(n+1)])`
-/

namespace A371065.P13042953196191290794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352833 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A371065.P13042953196191290794

/-! ## A371065.P7312455117202123876

`A000040(lt[A298642(n), A326060(n+1)])`
-/

namespace A371065.P7312455117202123876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A371065.P7312455117202123876

/-! ## A371065.P17335548224138242043

`A000040(lt[A342516(n), A367580(n+1)])`
-/

namespace A371065.P17335548224138242043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342516 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A371065.P17335548224138242043

/-!
# A371067: E.g.f. satisfies A(x) = 1 + x*exp(x^2*A(x)^2).

The programs for A371067, there is no canonical definition to state claims against.
-/

/-! ## A371067.P7856182092197740773

`n*A003005(a(n-1)+1)*A062110(n+4)` with `a(0)=1, a(1)=1`
-/

namespace A371067.P7856182092197740773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) * A003005 (a (n - 1) + 1).toNat * A062110 (n + 4)

end

end A371067.P7856182092197740773

/-! ## A371067.P15657537668868346755

`A278085(A144904(n)+A143338(n))`
-/

namespace A371067.P15657537668868346755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278085 (A144904 n + A143338 n).toNat

end

end A371067.P15657537668868346755

/-!
# A371068: E.g.f. satisfies A(x) = 1 + x*exp(x^3*A(x)^3).

The programs for A371068, there is no canonical definition to state claims against.
-/

/-! ## A371068.P14990459075365364092

`and(n!, -7)*A087436(A147878(3*(n+1)))`
-/

namespace A371068.P14990459075365364092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial n : ℤ) (-7) * A087436 (A147878 (3 * (n + 1))).toNat

end

end A371068.P14990459075365364092

/-! ## A371068.P17812944055573932029

`A000142(n)*A124769(A002464(n))`
-/

namespace A371068.P17812944055573932029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A124769 (A002464 n).toNat

end

end A371068.P17812944055573932029

/-! ## A371068.P9697766322871172193

`A250248(A293488(n))*A353392(n)`
-/

namespace A371068.P9697766322871172193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250248 (A293488 n).toNat * A353392 n

end

end A371068.P9697766322871172193

/-!
# A371069: Positions of records in A370998.

The programs for A371069, there is no canonical definition to state claims against.
-/

/-! ## A371069.P10746280128095689110

`A000720(A101045(n+1))`
-/

namespace A371069.P10746280128095689110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A101045 (n + 1)).toNat

end

end A371069.P10746280128095689110

/-! ## A371069.P812996357506999198

`A036234(A101045(n+1)-1)`
-/

namespace A371069.P812996357506999198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A101045 (n + 1) - 1).toNat

end

end A371069.P812996357506999198

/-! ## A371069.P11887768531891935290

`A003963(2*A101045(n+1))`
-/

namespace A371069.P11887768531891935290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A101045 (n + 1)).toNat

end

end A371069.P11887768531891935290

/-! ## A371069.P1255322751879938372

`A061395(2*A101045(n+1))`
-/

namespace A371069.P1255322751879938372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A101045 (n + 1)).toNat

end

end A371069.P1255322751879938372

/-! ## A371069.P34469480976997078

`A156061(2*A101045(n+1))`
-/

namespace A371069.P34469480976997078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (2 * A101045 (n + 1)).toNat

end

end A371069.P34469480976997078

/-! ## A371069.P4505243489991234801

`A003963(∏{p}[A101045(n+1), #])`
-/

namespace A371069.P4505243489991234801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A371069.P4505243489991234801

/-! ## A371069.P4038633998945228640

`A056239(∏{p}[A101045(n+1), #])`
-/

namespace A371069.P4038633998945228640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A371069.P4038633998945228640

/-! ## A371069.P10737122941171916903

`A156061(∏{p}[A101045(n+1), #])`
-/

namespace A371069.P10737122941171916903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A371069.P10737122941171916903

/-! ## A371069.P6007148917163914908

`A056239(A101045(n+1))%A023272(n+1)`
-/

namespace A371069.P6007148917163914908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A101045 (n + 1)).toNat) (A023272 (n + 1))

end

end A371069.P6007148917163914908

/-! ## A371069.P8976202994966052517

`A056239(A101045(n+1)%A050278(n+1))`
-/

namespace A371069.P8976202994966052517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.tmod (A101045 (n + 1)) (A050278 (n + 1))).toNat

end

end A371069.P8976202994966052517

/-!
# A371073: a(n)/144 is the maximum squared volume of a tetrahedron with the sum of its integer edge lengths equal to n.

The programs for A371073, there is no canonical definition to state claims against.
-/

/-! ## A371073.P14071584311118622660

`A174800(A349016(n)+A038804(n+1))`
-/

namespace A371073.P14071584311118622660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174800 (A349016 n + A038804 (n + 1)).toNat

end

end A371073.P14071584311118622660

/-!
# A371074: Number of the rightmost decimal digits of n that are the same as those of n^n.

The programs for A371074, there is no canonical definition to state claims against.
-/

/-! ## A371074.P8831997613346266518

`and(A002414(A268261(2*(n+1))), A038548(3*n+2))`
-/

namespace A371074.P8831997613346266518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002414 (A268261 (2 * (n + 1))).toNat) (A038548 (3 * n + 2))

end

end A371074.P8831997613346266518

/-! ## A371074.P17304951006249291185

`A036584(n)%A036584(A036565(n+2))`
-/

namespace A371074.P17304951006249291185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036584 n) (A036584 (A036565 (n + 2)).toNat)

end

end A371074.P17304951006249291185

/-! ## A371074.P5108660987626855230

`A269247(A103385(n+1)-A269247(n))`
-/

namespace A371074.P5108660987626855230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269247 (A103385 (n + 1) - A269247 n).toNat

end

end A371074.P5108660987626855230

/-! ## A371074.P6772284979230421386

`A269247(A163331(n)+A111553(n+4))`
-/

namespace A371074.P6772284979230421386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269247 (A163331 n + A111553 (n + 4)).toNat

end

end A371074.P6772284979230421386

/-!
# A371076: Triangle read by rows: T(n, k) = 3^n*Sum_{j=0..k} (-1)^(k - j)*binomial(k, j) * Pochhammer(j/3, n).

The programs for A371076, there is no canonical definition to state claims against.
-/

/-! ## A371076.P2920967370682455086

`A233543(n)*A371080(n)`
-/

namespace A371076.P2920967370682455086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n * A371080 n

end

end A371076.P2920967370682455086

/-!
# A371077: Square array read by ascending antidiagonals: A(n, k) = 3^n*Pochhammer(k/3, n).

The programs for A371077, there is no canonical definition to state claims against.
-/

/-! ## A371077.P10600070382652193463

`A333223(A380841(n)+1)`
-/

namespace A371077.P10600070382652193463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333223 (A380841 n + 1).toNat

end

end A371077.P10600070382652193463

/-! ## A371077.P3339673805772317540

`A265435(n)+A108611(A265435(n))²`
-/

namespace A371077.P3339673805772317540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265435 n + A108611 (A265435 n).toNat ^ 2

end

end A371077.P3339673805772317540

/-! ## A371077.P13439786471684757865

`A233763(A394530(n))`
-/

namespace A371077.P13439786471684757865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233763 (A394530 n).toNat

end

end A371077.P13439786471684757865

/-! ## A371077.P16583836536797886306

`A374521(A255494(n))+A357705(n)`
-/

namespace A371077.P16583836536797886306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374521 (A255494 n).toNat + A357705 n

end

end A371077.P16583836536797886306

/-!
# A371079: a(n) = Sum_{k=0..n} 3^(n - k)*Pochhammer(k/3, n - k). Row sums of A371077.

The programs for A371079, there is no canonical definition to state claims against.
-/

/-! ## A371079.P15941504122329205548

`A191795(A297708(n))`
-/

namespace A371079.P15941504122329205548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191795 (A297708 n).toNat

end

end A371079.P15941504122329205548

/-! ## A371079.P6610279484613692622

`A008621(A005272(n+2))`
-/

namespace A371079.P6610279484613692622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A005272 (n + 2)).toNat

end

end A371079.P6610279484613692622

/-!
# A371080: Triangle read by rows: BellMatrix(Product_{p in P(n)} p), where P(n) = {k : k mod m = 1 and 1 <= k <= m*(n + 1)} and m = 3.

The programs for A371080, there is no canonical definition to state claims against.
-/

/-! ## A371080.P12387293932315365974

`A371076(n)/A233543(n)`
-/

namespace A371080.P12387293932315365974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A371076 n : ℚ) / (A233543 n : ℚ)

end

end A371080.P12387293932315365974

/-!
# A371082: Composite numbers for which A324644(n)/A324198(n) = 2 and sigma(n) == 2 (mod 4).

The programs for A371082, there is no canonical definition to state claims against.
-/

/-! ## A371082.P9365224669723633622

`∩[A228058(n+1), A364286(n+1)]`
-/

namespace A371082.P9365224669723633622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371082.P9365224669723633622

/-! ## A371082.P3789604767614228619

`∩[A191218(n+1), A364286(n+1)]`
-/

namespace A371082.P3789604767614228619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371082.P3789604767614228619

/-! ## A371082.P14735857482110266989

`filter[A364286(n+1), A347870(#)]`
-/

namespace A371082.P14735857482110266989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347870 (f1 j).toNat = 1) n)

end

end A371082.P14735857482110266989

/-! ## A371082.P7999088986200070161

`∩[A348938(n+1), A364286(n+1)]`
-/

namespace A371082.P7999088986200070161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371082.P7999088986200070161

/-!
# A371083: Nonsquarefree numbers that are not divisible by p^p for any prime p.

The programs for A371083, the canonical program `A371083.P15128586750102198142` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371083 has offset 1).

The definition of A371083 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8024 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371083.P15128586750102198142

`filter[A319927(n+1), A359550(#)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A371083

/-- `filter[A319927(n+1), A359550(#)]` -/
def P15128586750102198142.Spec : Prop :=
  ∀ n, P15128586750102198142.a n = A371083 (n + 1)

theorem P15128586750102198142.correct : P15128586750102198142.Spec := by
  intro n
  simp only [A371083, Nat.add_sub_cancel]

end A371083

/-! ## A371083.P10027000340149255964

`filter[A319927(n+1), A371084(#)]`
-/

namespace A371083.P10027000340149255964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371084 (f1 j).toNat = 1) n)

end

end A371083.P10027000340149255964

namespace A371083

/-- `filter[A319927(n+1), A371084(#)]` -/
def P10027000340149255964.Spec : Prop :=
  ∀ n, P10027000340149255964.a n = A371083 (n + 1)

end A371083

/-! ## A371083.P10585909160618063360

`filter[A307579(n+1), A359550(#)]`
-/

namespace A371083.P10585909160618063360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A371083.P10585909160618063360

namespace A371083

/-- `filter[A307579(n+1), A359550(#)]` -/
def P10585909160618063360.Spec : Prop :=
  ∀ n, P10585909160618063360.a n = A371083 (n + 1)

end A371083

/-! ## A371083.P14067829788959328658

`filter[A307579(n+1), A371084(#)]`
-/

namespace A371083.P14067829788959328658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371084 (f1 j).toNat = 1) n)

end

end A371083.P14067829788959328658

namespace A371083

/-- `filter[A307579(n+1), A371084(#)]` -/
def P14067829788959328658.Spec : Prop :=
  ∀ n, P14067829788959328658.a n = A371083 (n + 1)

end A371083

/-! ## A371083.P4060309336459590697

`filter[A038838(n+1), A359550(#)]`
-/

namespace A371083.P4060309336459590697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A371083.P4060309336459590697

namespace A371083

/-- `filter[A038838(n+1), A359550(#)]` -/
def P4060309336459590697.Spec : Prop :=
  ∀ n, P4060309336459590697.a n = A371083 (n + 1)

end A371083

/-! ## A371083.P970491924608908095

`filter[A038838(n+1), A371084(#)]`
-/

namespace A371083.P970491924608908095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371084 (f1 j).toNat = 1) n)

end

end A371083.P970491924608908095

namespace A371083

/-- `filter[A038838(n+1), A371084(#)]` -/
def P970491924608908095.Spec : Prop :=
  ∀ n, P970491924608908095.a n = A371083 (n + 1)

end A371083

/-! ## A371083.P17628557101931591114

`filter[A335437(n+1), A359550(#)]`
-/

namespace A371083.P17628557101931591114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A371083.P17628557101931591114

namespace A371083

/-- `filter[A335437(n+1), A359550(#)]` -/
def P17628557101931591114.Spec : Prop :=
  ∀ n, P17628557101931591114.a n = A371083 (n + 1)

end A371083

/-! ## A371083.P5204890612846906305

`filter[A335437(n+1), A371084(#)]`
-/

namespace A371083.P5204890612846906305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371084 (f1 j).toNat = 1) n)

end

end A371083.P5204890612846906305

namespace A371083

/-- `filter[A335437(n+1), A371084(#)]` -/
def P5204890612846906305.Spec : Prop :=
  ∀ n, P5204890612846906305.a n = A371083 (n + 1)

end A371083

/-! ## A371083.P1775719611902056960

`filter[A392815(n+1), A359550(#)]`
-/

namespace A371083.P1775719611902056960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A371083.P1775719611902056960

namespace A371083

/-- `filter[A392815(n+1), A359550(#)]` -/
def P1775719611902056960.Spec : Prop :=
  ∀ n, P1775719611902056960.a n = A371083 (n + 1)

end A371083

/-! ## A371083.P1721869899937089512

`filter[A392815(n+1), A371084(#)]`
-/

namespace A371083.P1721869899937089512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371084 (f1 j).toNat = 1) n)

end

end A371083.P1721869899937089512

namespace A371083

/-- `filter[A392815(n+1), A371084(#)]` -/
def P1721869899937089512.Spec : Prop :=
  ∀ n, P1721869899937089512.a n = A371083 (n + 1)

end A371083

/-! ## A371083.P4153670556763770426

`filter[A046790(n+1), A359550(#)]`
-/

namespace A371083.P4153670556763770426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A371083.P4153670556763770426

namespace A371083

/-- `filter[A046790(n+1), A359550(#)]` -/
def P4153670556763770426.Spec : Prop :=
  ∀ n, P4153670556763770426.a n = A371083 (n + 1)

end A371083

/-! ## A371083.P15795017996780492885

`filter[A046790(n+1), A371084(#)]`
-/

namespace A371083.P15795017996780492885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371084 (f1 j).toNat = 1) n)

end

end A371083.P15795017996780492885

namespace A371083

/-- `filter[A046790(n+1), A371084(#)]` -/
def P15795017996780492885.Spec : Prop :=
  ∀ n, P15795017996780492885.a n = A371083 (n + 1)

end A371083

/-! ## A371083.P15424853497750808442

`filter[A072903(n+1), A359550(#)]`
-/

namespace A371083.P15424853497750808442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A371083.P15424853497750808442

namespace A371083

/-- `filter[A072903(n+1), A359550(#)]` -/
def P15424853497750808442.Spec : Prop :=
  ∀ n, P15424853497750808442.a n = A371083 (n + 1)

end A371083

/-! ## A371083.P17329819832899560373

`filter[A072903(n+1), A371084(#)]`
-/

namespace A371083.P17329819832899560373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371084 (f1 j).toNat = 1) n)

end

end A371083.P17329819832899560373

namespace A371083

/-- `filter[A072903(n+1), A371084(#)]` -/
def P17329819832899560373.Spec : Prop :=
  ∀ n, P17329819832899560373.a n = A371083 (n + 1)

end A371083

/-! ## A371083.P915905069326041207

`filter[A359468(n+1), A359550(#)]`
-/

namespace A371083.P915905069326041207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A371083.P915905069326041207

namespace A371083

/-- `filter[A359468(n+1), A359550(#)]` -/
def P915905069326041207.Spec : Prop :=
  ∀ n, P915905069326041207.a n = A371083 (n + 1)

end A371083

/-! ## A371083.P12021710714976814014

`filter[A359468(n+2), A371084(#)]`
-/

namespace A371083.P12021710714976814014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371084 (f1 j).toNat = 1) n)

end

end A371083.P12021710714976814014

namespace A371083

/-- `filter[A359468(n+2), A371084(#)]` -/
def P12021710714976814014.Spec : Prop :=
  ∀ n, P12021710714976814014.a n = A371083 (n + 1)

end A371083

/-! ## A371083.P1879480361842547343

`filter[A143720(n+1), A359550(#)]`
-/

namespace A371083.P1879480361842547343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A371083.P1879480361842547343

namespace A371083

/-- `filter[A143720(n+1), A359550(#)]` -/
def P1879480361842547343.Spec : Prop :=
  ∀ n, P1879480361842547343.a n = A371083 (n + 1)

end A371083

/-! ## A371083.P2728506150093200963

`filter[A143720(n+1), A371084(#)]`
-/

namespace A371083.P2728506150093200963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371084 (f1 j).toNat = 1) n)

end

end A371083.P2728506150093200963

namespace A371083

/-- `filter[A143720(n+1), A371084(#)]` -/
def P2728506150093200963.Spec : Prop :=
  ∀ n, P2728506150093200963.a n = A371083 (n + 1)

end A371083

/-! ## A371083.P7400539100885721244

`filter[A013929(n+1), A359550(#)]`
-/

namespace A371083.P7400539100885721244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A371083.P7400539100885721244

namespace A371083

/-- `filter[A013929(n+1), A359550(#)]` -/
def P7400539100885721244.Spec : Prop :=
  ∀ n, P7400539100885721244.a n = A371083 (n + 1)

end A371083

/-! ## A371083.P13338152476354391659

`filter[A013929(n+1), A371084(#)]`
-/

namespace A371083.P13338152476354391659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371084 (f1 j).toNat = 1) n)

end

end A371083.P13338152476354391659

namespace A371083

/-- `filter[A013929(n+1), A371084(#)]` -/
def P13338152476354391659.Spec : Prop :=
  ∀ n, P13338152476354391659.a n = A371083 (n + 1)

end A371083

/-!
# A371084: a(n) = 1 if n is a nonsquarefree number not divisible by p^p for any prime p, otherwise 0.

The programs for A371084, the canonical program `A371084.P12406112099946689418` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371084 has offset 1).

The definition of A371084 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A359550, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A371084.P12406112099946689418

`(1-A008966(n+1))*A359550(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A371084

/-- `(1-A008966(n+1))*A359550(n+1)` -/
def P12406112099946689418.Spec : Prop :=
  ∀ n, P12406112099946689418.a n = A371084 (n + 1)

theorem P12406112099946689418.correct : P12406112099946689418.Spec := by
  intro n
  simp only [A371084, Nat.add_sub_cancel]

end A371084

/-! ## A371084.P17611554031483166291

`char[A371083(n+1)-1]`
-/

namespace A371084.P17611554031483166291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371083 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A371084.P17611554031483166291

namespace A371084

/-- `char[A371083(n+1)-1]` -/
def P17611554031483166291.Spec : Prop :=
  ∀ n, (P17611554031483166291.a n : ℤ) = A371084 (n + 1)

end A371084

/-! ## A371084.P12662025318864663424

`Δ[A377982(n)]%∏{p}[n+1, #^val(n+1, #²)]`
-/

namespace A371084.P12662025318864663424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377982 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) ((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℤ)

end

end A371084.P12662025318864663424

namespace A371084

/-- `Δ[A377982(n)]%∏{p}[n+1, #^val(n+1, #²)]` -/
def P12662025318864663424.Spec : Prop :=
  ∀ n, P12662025318864663424.a n = A371084 (n + 1)

end A371084

/-! ## A371084.P6292581972175690554

`A359550(n+1)-A008966(n+1)`
-/

namespace A371084.P6292581972175690554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (n + 1) - A008966 (n + 1)

end

end A371084.P6292581972175690554

namespace A371084

/-- `A359550(n+1)-A008966(n+1)` -/
def P6292581972175690554.Spec : Prop :=
  ∀ n, P6292581972175690554.a n = A371084 (n + 1)

end A371084

/-! ## A371084.P4870443944459727296

`A107078(n+1)-A342023(n+1)`
-/

namespace A371084.P4870443944459727296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107078 (n + 1) - A342023 (n + 1)

end

end A371084.P4870443944459727296

namespace A371084

/-- `A107078(n+1)-A342023(n+1)` -/
def P4870443944459727296.Spec : Prop :=
  ∀ n, P4870443944459727296.a n = A371084 (n + 1)

end A371084

/-! ## A371084.P18286036977814560075

`A359550((n+1)*A107078(n+1))`
-/

namespace A371084.P18286036977814560075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 ((n + 1 : ℤ) * A107078 (n + 1)).toNat

end

end A371084.P18286036977814560075

namespace A371084

/-- `A359550((n+1)*A107078(n+1))` -/
def P18286036977814560075.Spec : Prop :=
  ∀ n, P18286036977814560075.a n = A371084 (n + 1)

end A371084

/-! ## A371084.P17956094783291122805

`A008683(A327939(n+1))-A008683(n+1)²`
-/

namespace A371084.P17956094783291122805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A327939 (n + 1)).toNat - A008683 (n + 1) ^ 2

end

end A371084.P17956094783291122805

namespace A371084

/-- `A008683(A327939(n+1))-A008683(n+1)²` -/
def P17956094783291122805.Spec : Prop :=
  ∀ n, P17956094783291122805.a n = A371084 (n + 1)

end A371084

/-! ## A371084.P12710829871489775498

`and(A007097(∏{e}[n+1, #]), A359550(n+1))`
-/

namespace A371084.P12710829871489775498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007097 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) (A359550 (n + 1))

end

end A371084.P12710829871489775498

namespace A371084

/-- `and(A007097(∏{e}[n+1, #]), A359550(n+1))` -/
def P12710829871489775498.Spec : Prop :=
  ∀ n, P12710829871489775498.a n = A371084 (n + 1)

end A371084

/-! ## A371084.P10945558101106012595

`A111701(n+1)%A053589(A327012(n+1))`
-/

namespace A371084.P10945558101106012595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111701 (n + 1)) (A053589 (A327012 (n + 1)).toNat)

end

end A371084.P10945558101106012595

namespace A371084

/-- `A111701(n+1)%A053589(A327012(n+1))` -/
def P10945558101106012595.Spec : Prop :=
  ∀ n, P10945558101106012595.a n = A371084 (n + 1)

end A371084

/-! ## A371084.P16610368140827075527

`A323878(A000688(n+1)^A105826(n+1))`
-/

namespace A371084.P16610368140827075527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323878 (SequenceMachineLib.roundAway ((A000688 (n + 1) : ℚ) ^ (A105826 (n + 1) : ℤ))).toNat

end

end A371084.P16610368140827075527

namespace A371084

/-- `A323878(A000688(n+1)^A105826(n+1))` -/
def P16610368140827075527.Spec : Prop :=
  ∀ n, P16610368140827075527.a n = A371084 (n + 1)

end A371084

/-!
# A371085: Nonsquarefree numbers k such that A003415(k) divides A276086(k), where A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

The programs for A371085, there is no canonical definition to state claims against.
-/

/-! ## A371085.P11121538483245553673

`∩[A358222(n+1), A371086(n+1)]`
-/

namespace A371085.P11121538483245553673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371085.P11121538483245553673

/-! ## A371085.P8183355267797932630

`∩[A013929(n+1), A358222(n+1)]`
-/

namespace A371085.P8183355267797932630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371085.P8183355267797932630

/-! ## A371085.P16281312375434008118

`filter[A358222(n+1), A371084(#)]`
-/

namespace A371085.P16281312375434008118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371084 (f1 j).toNat = 1) n)

end

end A371085.P16281312375434008118

/-! ## A371085.P8503695172642514329

`filter[A371086(n+1), A358220(#)]`
-/

namespace A371085.P8503695172642514329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358220 (f1 j).toNat = 1) n)

end

end A371085.P8503695172642514329

/-! ## A371085.P9413934942500864636

`∩[A013929(n+1), A358221(n+1)]`
-/

namespace A371085.P9413934942500864636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371085.P9413934942500864636

/-! ## A371085.P5769762306437756355

`∩[A358222(n+1), A371083(n+1)]`
-/

namespace A371085.P5769762306437756355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371085.P5769762306437756355

/-! ## A371085.P7269730220362813432

`∩[A371083(n+1), A358221(n+1)]`
-/

namespace A371085.P7269730220362813432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371085.P7269730220362813432

/-! ## A371085.P13203607976192900761

`∩[A319927(n+1), A358221(n+1)]`
-/

namespace A371085.P13203607976192900761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371085.P13203607976192900761

/-! ## A371085.P2209819242974215504

`∩[A319927(n+1), A358222(n+1)]`
-/

namespace A371085.P2209819242974215504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371085.P2209819242974215504

/-!
# A371086: Nonsquarefree numbers k such that A003557(k) divides A276086(k), where A003557(k) is k divided by its largest squarefree divisor, and A276086 is the primorial base exp-function.

The programs for A371086, there is no canonical definition to state claims against.
-/

/-! ## A371086.P14910058198076418983

`filter[A319927(n+1), A371087(#)]`
-/

namespace A371086.P14910058198076418983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A371086.P14910058198076418983

/-! ## A371086.P10799553914222098966

`filter[A307579(n+1), A371087(#)]`
-/

namespace A371086.P10799553914222098966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A371086.P10799553914222098966

/-! ## A371086.P8149636461072619154

`filter[A038838(n+1), A371087(#)]`
-/

namespace A371086.P8149636461072619154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A371086.P8149636461072619154

/-! ## A371086.P9942774527458959689

`filter[A335437(n+1), A371087(#)]`
-/

namespace A371086.P9942774527458959689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A371086.P9942774527458959689

/-! ## A371086.P18363382533074450727

`filter[A393869(n+1), A371087(#)]`
-/

namespace A371086.P18363382533074450727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A371086.P18363382533074450727

/-! ## A371086.P7895735406477905312

`filter[A046790(n+1), A371087(#)]`
-/

namespace A371086.P7895735406477905312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A371086.P7895735406477905312

/-! ## A371086.P12523600527233835465

`filter[A072903(n+1), A371087(#)]`
-/

namespace A371086.P12523600527233835465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A371086.P12523600527233835465

/-! ## A371086.P3824138495337277129

`filter[A359468(n+1), A371087(#)]`
-/

namespace A371086.P3824138495337277129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A371086.P3824138495337277129

/-! ## A371086.P2065260681445153058

`filter[A143720(n+1), A371087(#)]`
-/

namespace A371086.P2065260681445153058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A371086.P2065260681445153058

/-! ## A371086.P11811314677851772694

`filter[A013929(n+1), A371087(#)]`
-/

namespace A371086.P11811314677851772694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A371086.P11811314677851772694

/-! ## A371086.P18103330018569952418

`filter[A080756(n+1), A371087(#)]`
-/

namespace A371086.P18103330018569952418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A371086.P18103330018569952418

/-! ## A371086.P10344876610127535460

`filter[A162966(n+2), A371087(#)]`
-/

namespace A371086.P10344876610127535460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A371086.P10344876610127535460

/-! ## A371086.P16648343537140973346

`filter[A230542(n+1), A371087(#)]`
-/

namespace A371086.P16648343537140973346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A371086.P16648343537140973346

/-! ## A371086.P781462782346836891

`filter[A159836(n+1), A371087(#)]`
-/

namespace A371086.P781462782346836891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A371086.P781462782346836891

/-! ## A371086.P6238848343080667436

`∩[A013929(n+1), A371088(n+1)]`
-/

namespace A371086.P6238848343080667436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371086.P6238848343080667436

/-! ## A371086.P2031100124358287054

`∩[A038838(n+1), A371088(n+1)]`
-/

namespace A371086.P2031100124358287054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371086.P2031100124358287054

/-! ## A371086.P5096581548608558435

`∩[A046790(n+1), A371088(n+1)]`
-/

namespace A371086.P5096581548608558435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371086.P5096581548608558435

/-! ## A371086.P15866614385439583790

`∩[A072903(n+1), A371088(n+1)]`
-/

namespace A371086.P15866614385439583790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371086.P15866614385439583790

/-! ## A371086.P4236759012487874915

`∩[A080756(n+1), A371088(n+1)]`
-/

namespace A371086.P4236759012487874915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371086.P4236759012487874915

/-! ## A371086.P16805091629571780166

`∩[A143720(n+1), A371088(n+1)]`
-/

namespace A371086.P16805091629571780166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371086.P16805091629571780166

/-!
# A371087: a(n) = 1 if A003557(n) divides A276086(n), otherwise a(n) = 0, where A003557(k) is k divided by its largest squarefree divisor, and A276086 is the primorial base exp-function.

The programs for A371087, there is no canonical definition to state claims against.
-/

/-! ## A371087.P3477128994577485379

`char[A371088(n+1)-1]`
-/

namespace A371087.P3477128994577485379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371088 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A371087.P3477128994577485379

/-! ## A371087.P3049014522218859696

`A008966(A351250(n+1))`
-/

namespace A371087.P3049014522218859696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A351250 (n + 1)).toNat

end

end A371087.P3049014522218859696

/-! ## A371087.P14122170527994951616

`A008966((n+1)/A324198(n+1))`
-/

namespace A371087.P14122170527994951616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A324198 (n + 1) : ℚ))).toNat

end

end A371087.P14122170527994951616

/-! ## A371087.P14264032357681296103

`A000007(A276086(n+1)%((n+1)/∏{p}[n+1, #]))`
-/

namespace A371087.P14264032357681296103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A276086 (n + 1)) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)))).toNat

end

end A371087.P14264032357681296103

/-! ## A371087.P9567844495144917654

`A000007(A276086(n+1)%A003557(n+1))`
-/

namespace A371087.P9567844495144917654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A276086 (n + 1)) (A003557 (n + 1))).toNat

end

end A371087.P9567844495144917654

/-! ## A371087.P4203617759851444288

`A359550(A165998(n)%A234208(n+1))`
-/

namespace A371087.P4203617759851444288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (Int.tmod (A165998 n) (A234208 (n + 1))).toNat

end

end A371087.P4203617759851444288

/-! ## A371087.P8705633310581745254

`A359550(A003961(n+1)*A058035(n+1))`
-/

namespace A371087.P8705633310581745254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (A003961 (n + 1) * A058035 (n + 1)).toNat

end

end A371087.P8705633310581745254

/-! ## A371087.P1239741027056249203

`A359550(A058035(2*(n+1))/2*A332818(n+1))`
-/

namespace A371087.P1239741027056249203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (SequenceMachineLib.roundAway ((A058035 (2 * (n + 1)) : ℚ) / 2 * (A332818 (n + 1) : ℚ))).toNat

end

end A371087.P1239741027056249203

/-! ## A371087.P6109815236244043385

`A359550(A165998(n)*A284260(3*n+2))`
-/

namespace A371087.P6109815236244043385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (A165998 n * A284260 (3 * n + 2)).toNat

end

end A371087.P6109815236244043385

/-! ## A371087.P7462896154422269989

`A359550((n+1)*A003961(n+1))`
-/

namespace A371087.P7462896154422269989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 ((n + 1 : ℤ) * A003961 (n + 1)).toNat

end

end A371087.P7462896154422269989

/-!
# A371088: Numbers k such that A003557(k) divides A276086(k), where A003557(k) is k divided by its largest squarefree divisor, and A276086 is the primorial base exp-function.

The programs for A371088, there is no canonical definition to state claims against.
-/

/-! ## A371088.P11049011727798631019

`eq[1, A371087(n+1)]+1`
-/

namespace A371088.P11049011727798631019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371087 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A371088.P11049011727798631019

/-! ## A371088.P11146324165300985770

`comp[A371089(n+1)-1]+1`
-/

namespace A371088.P11146324165300985770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371089 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A371088.P11146324165300985770

/-! ## A371088.P17929132233045149274

`record[A000027(n+1)*A371087(n+1)]`
-/

namespace A371088.P17929132233045149274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A371087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371088.P17929132233045149274

/-! ## A371088.P3009887668274776017

`filter[A048103(n+1), A371087(#)]`
-/

namespace A371088.P3009887668274776017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A371088.P3009887668274776017

/-! ## A371088.P17097307522532840206

`filter[A042968(n+1), A371087(#)]`
-/

namespace A371088.P17097307522532840206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A371088.P17097307522532840206

/-! ## A371088.P6348787360104379675

`filter[A359794(n+1), A371087(#)]`
-/

namespace A371088.P6348787360104379675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A371088.P6348787360104379675

/-! ## A371088.P7784016141659596130

`filter[A207481(n+1), A371087(#)]`
-/

namespace A371088.P7784016141659596130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A371088.P7784016141659596130

/-! ## A371088.P14109964869159363472

`filter[A047592(n+1), A371087(#)]`
-/

namespace A371088.P14109964869159363472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A371088.P14109964869159363472

/-! ## A371088.P10995269371708189585

`filter[A047588(n+2), A371087(#)]`
-/

namespace A371088.P10995269371708189585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A371088.P10995269371708189585

/-! ## A371088.P16055193592674178246

`filter[A317468(n+1), A371087(#)]`
-/

namespace A371088.P16055193592674178246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A371088.P16055193592674178246

/-! ## A371088.P4240241784872361900

`filter[A382746(n+1), A371087(#)]`
-/

namespace A371088.P4240241784872361900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A371088.P4240241784872361900

/-! ## A371088.P12156398748440847090

`filter[A168186(n+1), A371087(#)]`
-/

namespace A371088.P12156398748440847090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A371088.P12156398748440847090

/-! ## A371088.P10787076245119533447

`filter[A064598(n+1), A371087(#)]`
-/

namespace A371088.P10787076245119533447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A371088.P10787076245119533447

/-! ## A371088.P1234324159615672780

`filter[A110303(n+1), A371087(#)]`
-/

namespace A371088.P1234324159615672780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A371088.P1234324159615672780

/-! ## A371088.P972469031780199446

`filter[A386807(n+1), A371087(#)]`
-/

namespace A371088.P972469031780199446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A371088.P972469031780199446

/-! ## A371088.P5149058261023921540

`filter[A352796(n+1), A371087(#)]`
-/

namespace A371088.P5149058261023921540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A371088.P5149058261023921540

/-! ## A371088.P14087420936755227851

`filter[A144972(n+1), A371087(#)]`
-/

namespace A371088.P14087420936755227851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A371088.P14087420936755227851

/-! ## A371088.P8401931247609053329

`filter[A068937(n+1), A371087(#)]`
-/

namespace A371088.P8401931247609053329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A371088.P8401931247609053329

/-! ## A371088.P6940825532585240313

`filter[n+1, A371087(#)]`
-/

namespace A371088.P6940825532585240313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j) = 1) n)

end

end A371088.P6940825532585240313

/-!
# A371089: Numbers k such that A003557(k) does not divide A276086(k), where A003557(k) is k divided by its largest squarefree divisor, and A276086 is the primorial base exp-function.

The programs for A371089, there is no canonical definition to state claims against.
-/

/-! ## A371089.P456986110941875557

`eq[0, A371087(n+1)]+1`
-/

namespace A371089.P456986110941875557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371087 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A371089.P456986110941875557

/-! ## A371089.P6898872483834281029

`comp[A000027(n+1)*A371087(n+1)]`
-/

namespace A371089.P6898872483834281029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A371087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A371089.P6898872483834281029

/-! ## A371089.P8821475060162738437

`lt[A371087(n+1), A157928(n)]+1`
-/

namespace A371089.P8821475060162738437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A371089.P8821475060162738437

/-! ## A371089.P6255615421299443686

`∪[A195330(n+1), A387113(n+1)]`
-/

namespace A371089.P6255615421299443686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A371089.P6255615421299443686

/-! ## A371089.P7815235661890067635

`∪[A376254(n+1), A387113(n+1)]`
-/

namespace A371089.P7815235661890067635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A371089.P7815235661890067635

/-!
# A371092: a(n) = floor((A000265(3*n+1)+5)/6), where A000265 gives the odd part of its argument.

The programs for A371092, the canonical program `A371092.P362407384602994436` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371092 has offset 0).

The definition of A371092 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A371092.P1671906542229753097

`floor((A000265(1+3*n)+5)/6)`
-/

namespace A371092.P1671906542229753097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000265 (1 + 3 * n) + 5 : ℚ) / 6⌋

end

end A371092.P1671906542229753097

namespace A371092

/-- `floor((A000265(1+3*n)+5)/6)` -/
def P1671906542229753097.Spec : Prop :=
  ∀ n, P1671906542229753097.a n = A371092 n

theorem P1671906542229753097.correct : P1671906542229753097.Spec := by
  intro n
  simp only [A371092, Nat.add_sub_cancel, A371092.P1671906542229753097.a, A371092.P362407384602994436.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A371092

/-! ## A371092.P362407384602994436

`floor((A000265(3*n+1)+5)/6)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A371092

/-- `floor((A000265(3*n+1)+5)/6)` -/
def P362407384602994436.Spec : Prop :=
  ∀ n, P362407384602994436.a n = A371092 n

theorem P362407384602994436.correct : P362407384602994436.Spec := by
  intro n
  simp only [A371092]

end A371092

/-! ## A371092.P15919955939456391271

`ceil(A000265(3*n+1)/6)`
-/

namespace A371092.P15919955939456391271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000265 (3 * n + 1) : ℚ) / 6⌉

end

end A371092.P15919955939456391271

namespace A371092

/-- `ceil(A000265(3*n+1)/6)` -/
def P15919955939456391271.Spec : Prop :=
  ∀ n, P15919955939456391271.a n = A371092 n

end A371092

/-! ## A371092.P5080868269877121413

`ceil(A003602(3*n+1)/3)`
-/

namespace A371092.P5080868269877121413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003602 (3 * n + 1) : ℚ) / 3⌉

end

end A371092.P5080868269877121413

namespace A371092

/-- `ceil(A003602(3*n+1)/3)` -/
def P5080868269877121413.Spec : Prop :=
  ∀ n, P5080868269877121413.a n = A371092 n

end A371092

/-! ## A371092.P13570988122323793357

`A097992(A067745(n+1))`
-/

namespace A371092.P13570988122323793357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A067745 (n + 1)).toNat

end

end A371092.P13570988122323793357

namespace A371092

/-- `A097992(A067745(n+1))` -/
def P13570988122323793357.Spec : Prop :=
  ∀ n, P13570988122323793357.a n = A371092 n

end A371092

/-! ## A371092.P17265355492404049082

`A008615(A067745(n+1)+1)`
-/

namespace A371092.P17265355492404049082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A067745 (n + 1) + 1).toNat

end

end A371092.P17265355492404049082

namespace A371092

/-- `A008615(A067745(n+1)+1)` -/
def P17265355492404049082.Spec : Prop :=
  ∀ n, P17265355492404049082.a n = A371092 n

end A371092

/-! ## A371092.P10707580539841490564

`A008615(A075677(2*n+1)+1)`
-/

namespace A371092.P10707580539841490564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A075677 (2 * n + 1) + 1).toNat

end

end A371092.P10707580539841490564

namespace A371092

/-- `A008615(A075677(2*n+1)+1)` -/
def P10707580539841490564.Spec : Prop :=
  ∀ n, P10707580539841490564.a n = A371092 n

end A371092

/-!
# A371093: a(n) is the 2-adic valuation of 3n+1.

The programs for A371093, the canonical program `A371093.P8625920196172340784` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371093 has offset 0).

The definition of A371093 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A371093.P8795550066380334970

`val(1+3*n, 2)`
-/

namespace A371093.P8795550066380334970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (1 + 3 * n) 2

end

end A371093.P8795550066380334970

namespace A371093

/-- `val(1+3*n, 2)` -/
def P8795550066380334970.Spec : Prop :=
  ∀ n, (P8795550066380334970.a n : ℤ) = A371093 n

end A371093

/-! ## A371093.P8625920196172340784

`A007814(A016777(n))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A371093

/-- `A007814(A016777(n))` -/
def P8625920196172340784.Spec : Prop :=
  ∀ n, P8625920196172340784.a n = A371093 n

theorem P8625920196172340784.correct : P8625920196172340784.Spec := by
  intro n
  simp only [A371093]

end A371093

/-! ## A371093.P8238742553876021324

`A375961(n)-1`
-/

namespace A371093.P8238742553876021324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375961 n - 1

end

end A371093.P8238742553876021324

namespace A371093

/-- `A375961(n)-1` -/
def P8238742553876021324.Spec : Prop :=
  ∀ n, P8238742553876021324.a n = A371093 n

end A371093

/-! ## A371093.P8200878778211984517

`A087229(n)-2`
-/

namespace A371093.P8200878778211984517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087229 n - 2

end

end A371093.P8200878778211984517

namespace A371093

/-- `A087229(n)-2` -/
def P8200878778211984517.Spec : Prop :=
  ∀ n, P8200878778211984517.a n = A371093 n

end A371093

/-! ## A371093.P12215266296710756118

`val(A016933(n), 2)-1`
-/

namespace A371093.P12215266296710756118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A016933 n).toNat 2 : ℤ) - 1

end

end A371093.P12215266296710756118

namespace A371093

/-- `val(A016933(n), 2)-1` -/
def P12215266296710756118.Spec : Prop :=
  ∀ n, P12215266296710756118.a n = A371093 n

end A371093

/-! ## A371093.P569019831826000563

`val(A017198(n), 2)/2`
-/

namespace A371093.P569019831826000563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A017198 n).toNat 2 : ℚ) / 2

end

end A371093.P569019831826000563

namespace A371093

/-- `val(A017198(n), 2)/2` -/
def P569019831826000563.Spec : Prop :=
  ∀ n, P569019831826000563.a n = (A371093 n : ℚ)

end A371093

/-! ## A371093.P3503578152224172973

`A023444(A087229(n))`
-/

namespace A371093.P3503578152224172973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A087229 n).toNat

end

end A371093.P3503578152224172973

namespace A371093

/-- `A023444(A087229(n))` -/
def P3503578152224172973.Spec : Prop :=
  ∀ n, P3503578152224172973.a n = A371093 n

end A371093

/-! ## A371093.P11598560976508260076

`A036555(n)-A240883(n)`
-/

namespace A371093.P11598560976508260076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036555 n - A240883 n

end

end A371093.P11598560976508260076

namespace A371093

/-- `A036555(n)-A240883(n)` -/
def P11598560976508260076.Spec : Prop :=
  ∀ n, P11598560976508260076.a n = A371093 n

end A371093

/-! ## A371093.P11772890964799770785

`A268726(A396059(n))`
-/

namespace A371093.P11772890964799770785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268726 (A396059 n).toNat

end

end A371093.P11772890964799770785

namespace A371093

/-- `A268726(A396059(n))` -/
def P11772890964799770785.Spec : Prop :=
  ∀ n, P11772890964799770785.a n = A371093 n

end A371093

/-! ## A371093.P4591793650939374199

`A244417(3*n+1)`
-/

namespace A371093.P4591793650939374199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244417 (3 * n + 1)

end

end A371093.P4591793650939374199

namespace A371093

/-- `A244417(3*n+1)` -/
def P4591793650939374199.Spec : Prop :=
  ∀ n, P4591793650939374199.a n = A371093 n

end A371093

/-! ## A371093.P18143596395732932828

`A085058(3*n)-2`
-/

namespace A371093.P18143596395732932828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 (3 * n) - 2

end

end A371093.P18143596395732932828

namespace A371093

/-- `A085058(3*n)-2` -/
def P18143596395732932828.Spec : Prop :=
  ∀ n, P18143596395732932828.a n = A371093 n

end A371093

/-! ## A371093.P4200521484776823288

`A087230(2*n)-2`
-/

namespace A371093.P4200521484776823288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087230 (2 * n) - 2

end

end A371093.P4200521484776823288

namespace A371093

/-- `A087230(2*n)-2` -/
def P4200521484776823288.Spec : Prop :=
  ∀ n, P4200521484776823288.a n = A371093 n

end A371093

/-! ## A371093.P7622091884157800961

`A063574(A266303(n))`
-/

namespace A371093.P7622091884157800961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063574 (A266303 n).toNat

end

end A371093.P7622091884157800961

namespace A371093

/-- `A063574(A266303(n))` -/
def P7622091884157800961.Spec : Prop :=
  ∀ n, P7622091884157800961.a n = A371093 n

end A371093

/-! ## A371093.P11138263016430443438

`A007814(A048724(n)+1)`
-/

namespace A371093.P11138263016430443438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A048724 n + 1).toNat

end

end A371093.P11138263016430443438

namespace A371093

/-- `A007814(A048724(n)+1)` -/
def P11138263016430443438.Spec : Prop :=
  ∀ n, P11138263016430443438.a n = A371093 n

end A371093

/-! ## A371093.P5757178217343758963

`A007814(A003188(2*n)+1)`
-/

namespace A371093.P5757178217343758963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A003188 (2 * n) + 1).toNat

end

end A371093.P5757178217343758963

namespace A371093

/-- `A007814(A003188(2*n)+1)` -/
def P5757178217343758963.Spec : Prop :=
  ∀ n, P5757178217343758963.a n = A371093 n

end A371093

/-! ## A371093.P17887317406884626088

`A007814(A105081(2*n+1))`
-/

namespace A371093.P17887317406884626088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A105081 (2 * n + 1)).toNat

end

end A371093.P17887317406884626088

namespace A371093

/-- `A007814(A105081(2*n+1))` -/
def P17887317406884626088.Spec : Prop :=
  ∀ n, P17887317406884626088.a n = A371093 n

end A371093

/-! ## A371093.P2504078746424764050

`A007814(3*n+1)`
-/

namespace A371093.P2504078746424764050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (3 * n + 1)

end

end A371093.P2504078746424764050

namespace A371093

/-- `A007814(3*n+1)` -/
def P2504078746424764050.Spec : Prop :=
  ∀ n, P2504078746424764050.a n = A371093 n

end A371093

/-! ## A371093.P1772534206596525579

`A169611(3*n+1)`
-/

namespace A371093.P1772534206596525579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (3 * n + 1)

end

end A371093.P1772534206596525579

namespace A371093

/-- `A169611(3*n+1)` -/
def P1772534206596525579.Spec : Prop :=
  ∀ n, P1772534206596525579.a n = A371093 n

end A371093

/-! ## A371093.P8815211146804857563

`A375782(A016813(n))-1`
-/

namespace A371093.P8815211146804857563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375782 (A016813 n).toNat - 1

end

end A371093.P8815211146804857563

namespace A371093

/-- `A375782(A016813(n))-1` -/
def P8815211146804857563.Spec : Prop :=
  ∀ n, P8815211146804857563.a n = A371093 n

end A371093

/-! ## A371093.P10542637312270589697

`A050605(A048726(n))`
-/

namespace A371093.P10542637312270589697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (A048726 n).toNat

end

end A371093.P10542637312270589697

namespace A371093

/-- `A050605(A048726(n))` -/
def P10542637312270589697.Spec : Prop :=
  ∀ n, P10542637312270589697.a n = A371093 n

end A371093

/-!
# A371094: a(n) = m*(2^e) + ((4^e)-1)/3, where m = 3n+1, and e is the 2-adic valuation of m.

The programs for A371094, there is no canonical definition to state claims against.
-/

/-! ## A371094.P2905489187249185875

`A372289(A016777(n))`
-/

namespace A371094.P2905489187249185875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372289 (A016777 n).toNat

end

end A371094.P2905489187249185875

/-! ## A371094.P3388193860731898362

`A372289(3*n+1)`
-/

namespace A371094.P3388193860731898362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372289 (3 * n + 1)

end

end A371094.P3388193860731898362

/-!
# A371097: Array A read by upward antidiagonals in which the entry A(n,k) in row n and column k is defined by A(n, k) = A371092(A371095(n, k)), n,k >= 1.

The programs for A371097, there is no canonical definition to state claims against.
-/

/-! ## A371097.P4654188037348844574

`A371092(A371095(n+1))`
-/

namespace A371097.P4654188037348844574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371092 (A371095 (n + 1)).toNat

end

end A371097.P4654188037348844574

/-! ## A371097.P16531519733634132047

`A371092(A000265(A371095(A371092(2*n))))`
-/

namespace A371097.P16531519733634132047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371092 (A000265 (A371095 (A371092 (2 * n)).toNat).toNat).toNat

end

end A371097.P16531519733634132047

/-! ## A371097.P3658268837908037955

`A001222(∑[A007053(n+3)-A060683(n+1)])`
-/

namespace A371097.P3658268837908037955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 3) - A060683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A371097.P3658268837908037955

/-! ## A371097.P6298962057428504678

`A007862(∪[A000351(n), A079078(n)])`
-/

namespace A371097.P6298962057428504678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A371097.P6298962057428504678

/-! ## A371097.P12598755987206530417

`A377282(A039915(n+1)+A000014(n))`
-/

namespace A371097.P12598755987206530417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377282 (A039915 (n + 1) + A000014 n).toNat

end

end A371097.P12598755987206530417

/-!
# A371098: a(n) = gcd(2n+1, A276086(2n+1)), where A276086 is the primorial base exp-function.

The programs for A371098, there is no canonical definition to state claims against.
-/

/-! ## A371098.P3018448202097454328

`A324198(2*n+1)`
-/

namespace A371098.P3018448202097454328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 (2 * n + 1)

end

end A371098.P3018448202097454328

/-! ## A371098.P1484971539305867927

`gcd(2*n+1, A276086(2*n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A371098.P1484971539305867927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 1 : ℤ) (A276086 (2 * n))

end

end A371098.P1484971539305867927

/-! ## A371098.P18049894779714331695

`gcd(2*n+1, A276086(2*n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A371098.P18049894779714331695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 1 : ℤ) (A276086 (2 * n + 1))

end

end A371098.P18049894779714331695

/-! ## A371098.P10218434447404585719

`A324646(Δ[n²])`
-/

namespace A371098.P10218434447404585719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324646 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A371098.P10218434447404585719

/-! ## A371098.P10661201435508869077

`(2*n+1)/A351250(2*n+1)`
-/

namespace A371098.P10661201435508869077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (A351250 (2 * n + 1) : ℚ)

end

end A371098.P10661201435508869077

/-! ## A371098.P2675410717908232233

`A276086(A351254(2*n+1))`
-/

namespace A371098.P2675410717908232233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A351254 (2 * n + 1)).toNat

end

end A371098.P2675410717908232233

/-! ## A371098.P5448986101236513861

`filter[A324646(2*n+1), A035263(#)]`
-/

namespace A371098.P5448986101236513861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324646 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A371098.P5448986101236513861

/-! ## A371098.P1081997117765659760

`filter[A324646(2*n+1), A039982(#)]`
-/

namespace A371098.P1081997117765659760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324646 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A371098.P1081997117765659760

/-! ## A371098.P1030108206710854587

`A276086(2*n+1-A351253(2*n+1))`
-/

namespace A371098.P1030108206710854587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 ((2 * n + 1 : ℤ) - A351253 (2 * n + 1)).toNat

end

end A371098.P1030108206710854587

/-! ## A371098.P4006182224014402501

`A346243(2*n+1)-A346242(2*n+1)`
-/

namespace A371098.P4006182224014402501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346243 (2 * n + 1) - A346242 (2 * n + 1)

end

end A371098.P4006182224014402501

/-! ## A371098.P4792844684364419589

`filter[A324646(2*n+1), A000035(#)]`
-/

namespace A371098.P4792844684364419589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324646 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A371098.P4792844684364419589

/-! ## A371098.P459001981247981319

`gcd(A000027(2*n+1), A328584(2*n))`
-/

namespace A371098.P459001981247981319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (2 * n + 1)) (A328584 (2 * n))

end

end A371098.P459001981247981319

/-! ## A371098.P16837064283207700893

`filter[A324646(n+1), A104106(#)]`
-/

namespace A371098.P16837064283207700893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104106 (f1 j).toNat = 1) n)

end

end A371098.P16837064283207700893

/-! ## A371098.P9571874051371257385

`filter[A324646(n+1), A141260(#)]`
-/

namespace A371098.P9571874051371257385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A141260 (f1 j).toNat = 1) n)

end

end A371098.P9571874051371257385

/-! ## A371098.P16230688741412901764

`filter[A324646(n+1), A152822(#)]`
-/

namespace A371098.P16230688741412901764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A371098.P16230688741412901764

/-! ## A371098.P12651978143413836824

`filter[A324646(n+1), A259044(#)]`
-/

namespace A371098.P12651978143413836824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A259044 (f1 j).toNat = 1) n)

end

end A371098.P12651978143413836824

/-! ## A371098.P4922766466904695038

`filter[A324646(n+1), A259599(#)]`
-/

namespace A371098.P4922766466904695038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A259599 (f1 j).toNat = 1) n)

end

end A371098.P4922766466904695038

/-! ## A371098.P8013989854707321759

`filter[A324646(n+1), A260390(#)]`
-/

namespace A371098.P8013989854707321759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260390 (f1 j).toNat = 1) n)

end

end A371098.P8013989854707321759

/-! ## A371098.P6867809097507787978

`filter[A324646(n+1), A373157(#)]`
-/

namespace A371098.P6867809097507787978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A371098.P6867809097507787978

/-! ## A371098.P16220529503515870933

`gcd(A131738(2*n), A351251(2*n))`
-/

namespace A371098.P16220529503515870933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131738 (2 * n)) (A351251 (2 * n))

end

end A371098.P16220529503515870933

/-!
# A371099: a(n) = gcd(36*n+9, A276086(36*n+9)), where A276086 is the primorial base exp-function.

The programs for A371099, there is no canonical definition to state claims against.
-/

/-! ## A371099.P2326464606676642411

`A324198(36*n+9)`
-/

namespace A371099.P2326464606676642411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 (36 * n + 9)

end

end A371099.P2326464606676642411

/-! ## A371099.P15014661802858807569

`gcd(36*n+9, A276086(36*n+9))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A371099.P15014661802858807569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (36 * n + 9 : ℤ) (A276086 (36 * n + 9))

end

end A371099.P15014661802858807569

/-! ## A371099.P10405632698051705612

`A371098(A350521(n))`
-/

namespace A371099.P10405632698051705612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371098 (A350521 n).toNat

end

end A371099.P10405632698051705612

/-! ## A371099.P6467466648300158048

`A324646(A139609(n))`
-/

namespace A371099.P6467466648300158048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324646 (A139609 n).toNat

end

end A371099.P6467466648300158048

/-! ## A371099.P11918465490593195545

`A324646(A044102(n)+9)`
-/

namespace A371099.P11918465490593195545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324646 (A044102 n + 9).toNat

end

end A371099.P11918465490593195545

/-! ## A371099.P297392500456055570

`A324646(A017533(2*n)+A016933(2*n+1))`
-/

namespace A371099.P297392500456055570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324646 (A017533 (2 * n) + A016933 (2 * n + 1)).toNat

end

end A371099.P297392500456055570

