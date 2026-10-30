import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C018
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A233500: Number of (3+2)X(n+2) 0..2 arrays with no increasing sequence of length 3 horizontally or antidiagonally downwards.

The programs for A233500, there is no canonical definition to state claims against.
-/

/-! ## A233500.P6788681190471204999

`A233497(A167614(n+1))`
-/

namespace A233500.P6788681190471204999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233497 (A167614 (n + 1)).toNat

end

end A233500.P6788681190471204999

/-!
# A233502: Number of (5+2) X (n+2) 0..2 arrays with no increasing sequence of length 3 horizontally or antidiagonally downwards.

The programs for A233502, there is no canonical definition to state claims against.
-/

/-! ## A233502.P17354804040575732219

`A233497(A155212(n)+13)`
-/

namespace A233502.P17354804040575732219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233497 (A155212 n + 13).toNat

end

end A233502.P17354804040575732219

/-!
# A233505: Number of tilings of a 2 X 2 X n box using bricks of shape 3 X 1 X 1 and 2 X 1 X 1.

The programs for A233505, there is no canonical definition to state claims against.
-/

/-! ## A233505.P13526846665874375126

`A166097(A149978(n))`
-/

namespace A233505.P13526846665874375126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166097 (A149978 n).toNat

end

end A233505.P13526846665874375126

/-!
# A233508: Numerators of the triangle of polynomial coefficients P(0,x)=1, 2*P(n)=(1+x)*((1+x)^(n-1)+x^(n-1)). Of the first array of A133135.

The programs for A233508, there is no canonical definition to state claims against.
-/

/-! ## A233508.P13926211890817390147

`lcm(2, A133138(n))/2`
-/

namespace A233508.P13926211890817390147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A133138 n) : ℚ) / 2

end

end A233508.P13926211890817390147

/-! ## A233508.P9359495067484672637

`A026741(A133138(n))`
-/

namespace A233508.P9359495067484672637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A133138 n).toNat

end

end A233508.P9359495067484672637

/-! ## A233508.P5326508907789115114

`A173234(A131108(n))`
-/

namespace A233508.P5326508907789115114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173234 (A131108 n).toNat

end

end A233508.P5326508907789115114

/-! ## A233508.P13036717544029343338

`A060819(2*A133138(n))`
-/

namespace A233508.P13036717544029343338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (2 * A133138 n).toNat

end

end A233508.P13036717544029343338

/-! ## A233508.P2815171924434569487

`A173234(2*A133138(n))`
-/

namespace A233508.P2815171924434569487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173234 (2 * A133138 n).toNat

end

end A233508.P2815171924434569487

/-! ## A233508.P2715538027972389368

`A060789(3*A133138(n))`
-/

namespace A233508.P2715538027972389368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (3 * A133138 n).toNat

end

end A233508.P2715538027972389368

/-! ## A233508.P17400813547308994688

`A106609(4*A133138(n))`
-/

namespace A233508.P17400813547308994688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (4 * A133138 n).toNat

end

end A233508.P17400813547308994688

/-! ## A233508.P6893362560072988439

`A051724(6*A133138(n))`
-/

namespace A233508.P6893362560072988439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (6 * A133138 n).toNat

end

end A233508.P6893362560072988439

/-! ## A233508.P18234485869543946926

`A106617(8*A133138(n))`
-/

namespace A233508.P18234485869543946926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (8 * A133138 n).toNat

end

end A233508.P18234485869543946926

/-! ## A233508.P11737394812232079344

`A001281(lcm(2, A133138(n)))`
-/

namespace A233508.P11737394812232079344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (Int.lcm 2 (A133138 n))

end

end A233508.P11737394812232079344

/-!
# A233510: Least number k such that the number of iterations of h(m) = (greatest prime divisor of m) - (least prime divisor of m) that map k to 0 is n; see Comments.

The programs for A233510, there is no canonical definition to state claims against.
-/

/-! ## A233510.P8428644572431602554

`lt[log(A052938(n+1)), A231813(n)]`
-/

namespace A233510.P8428644572431602554
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A052938 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A233510.P8428644572431602554

/-!
# A233511: Replace the largest prime factor p>2 in n (if any) with the prime preceding p.

The programs for A233511, the canonical program `A233511.P8119141786447054312` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233511 has offset 1).

The definition of A233511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A233511.P8119141786447054312

`lcm(A006519(n+1), A252462(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A233511

/-- `lcm(A006519(n+1), A252462(n+1))` -/
def P8119141786447054312.Spec : Prop :=
  ∀ n, (P8119141786447054312.a n : ℤ) = A233511 (n + 1)

theorem P8119141786447054312.correct : P8119141786447054312.Spec := by
  intro n
  simp only [A233511, Nat.add_sub_cancel]

end A233511

/-! ## A233511.P10989014262835542639

`A252462(n+1)*A318318(A006530(n+1))`
-/

namespace A233511.P10989014262835542639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252462 (n + 1) * A318318 (A006530 (n + 1)).toNat

end

end A233511.P10989014262835542639

namespace A233511

/-- `A252462(n+1)*A318318(A006530(n+1))` -/
def P10989014262835542639.Spec : Prop :=
  ∀ n, P10989014262835542639.a n = A233511 (n + 1)

end A233511

/-! ## A233511.P16622291212182647895

`A252462((n+1)*(A209229(n+1)+1))`
-/

namespace A233511.P16622291212182647895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252462 ((n + 1 : ℤ) * (A209229 (n + 1) + 1)).toNat

end

end A233511.P16622291212182647895

namespace A233511

/-- `A252462((n+1)*(A209229(n+1)+1))` -/
def P16622291212182647895.Spec : Prop :=
  ∀ n, P16622291212182647895.a n = A233511 (n + 1)

end A233511

/-! ## A233511.P12554010148384794057

`A252462(gcd(A103517(n), A253560(n+1)))`
-/

namespace A233511.P12554010148384794057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252462 (Int.gcd (A103517 n) (A253560 (n + 1)))

end

end A233511.P12554010148384794057

namespace A233511

/-- `A252462(gcd(A103517(n), A253560(n+1)))` -/
def P12554010148384794057.Spec : Prop :=
  ∀ n, P12554010148384794057.a n = A233511 (n + 1)

end A233511

/-! ## A233511.P10343756926475845519

`A252462(2*(n+1))/A043529(n)`
-/

namespace A233511.P10343756926475845519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252462 (2 * (n + 1)) : ℚ) / (A043529 n : ℚ)

end

end A233511.P10343756926475845519

namespace A233511

/-- `A252462(2*(n+1))/A043529(n)` -/
def P10343756926475845519.Spec : Prop :=
  ∀ n, P10343756926475845519.a n = (A233511 (n + 1) : ℚ)

end A233511

/-! ## A233511.P6224798376429188508

`A014963(2*(n+1))*A252462(2*(n+1))/2`
-/

namespace A233511.P6224798376429188508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (2 * (n + 1)) * A252462 (2 * (n + 1)) : ℚ) / 2

end

end A233511.P6224798376429188508

namespace A233511

/-- `A014963(2*(n+1))*A252462(2*(n+1))/2` -/
def P6224798376429188508.Spec : Prop :=
  ∀ n, P6224798376429188508.a n = (A233511 (n + 1) : ℚ)

end A233511

/-! ## A233511.P11331223580226675295

`A014963(A103517(n))*A252462(n+1)`
-/

namespace A233511.P11331223580226675295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A103517 n).toNat * A252462 (n + 1)

end

end A233511.P11331223580226675295

namespace A233511

/-- `A014963(A103517(n))*A252462(n+1)` -/
def P11331223580226675295.Spec : Prop :=
  ∀ n, P11331223580226675295.a n = A233511 (n + 1)

end A233511

/-! ## A233511.P11820406305562073182

`lcm(A003557(2*(n+1)), A252462(A060681(2*(n+1))))`
-/

namespace A233511.P11820406305562073182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003557 (2 * (n + 1))) (A252462 (A060681 (2 * (n + 1))).toNat)

end

end A233511.P11820406305562073182

namespace A233511

/-- `lcm(A003557(2*(n+1)), A252462(A060681(2*(n+1))))` -/
def P11820406305562073182.Spec : Prop :=
  ∀ n, (P11820406305562073182.a n : ℤ) = A233511 (n + 1)

end A233511

/-! ## A233511.P4090940074521938433

`A252462(A008585(n+1))-A252462(2*(n+1))`
-/

namespace A233511.P4090940074521938433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252462 (A008585 (n + 1)).toNat - A252462 (2 * (n + 1))

end

end A233511.P4090940074521938433

namespace A233511

/-- `A252462(A008585(n+1))-A252462(2*(n+1))` -/
def P4090940074521938433.Spec : Prop :=
  ∀ n, P4090940074521938433.a n = A233511 (n + 1)

end A233511

/-! ## A233511.P15202660443723999283

`A014963(A200746(n+1))*A252462(n+1)`
-/

namespace A233511.P15202660443723999283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A200746 (n + 1)).toNat * A252462 (n + 1)

end

end A233511.P15202660443723999283

namespace A233511

/-- `A014963(A200746(n+1))*A252462(n+1)` -/
def P15202660443723999283.Spec : Prop :=
  ∀ n, P15202660443723999283.a n = A233511 (n + 1)

end A233511

/-! ## A233511.P2795918554259150898

`gcd(2*A252462(n+1), A252462(A253560(n+1)))`
-/

namespace A233511.P2795918554259150898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A252462 (n + 1)) (A252462 (A253560 (n + 1)).toNat)

end

end A233511.P2795918554259150898

namespace A233511

/-- `gcd(2*A252462(n+1), A252462(A253560(n+1)))` -/
def P2795918554259150898.Spec : Prop :=
  ∀ n, (P2795918554259150898.a n : ℤ) = A233511 (n + 1)

end A233511

/-!
# A233512: The first n cyclotomic polynomials are simultaneously prime for these arguments.

The programs for A233512, there is no canonical definition to state claims against.
-/

/-! ## A233512.P10708844402534110688

`lcm(A057778(n)², A070737(n+1))`
-/

namespace A233512.P10708844402534110688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057778 n ^ 2) (A070737 (n + 1))

end

end A233512.P10708844402534110688

/-!
# A233514: Numbers n such that all numbers of the form Fib(n)/d + d are prime (or nonexistent), where Fib(n) is the n-th Fibonacci number and d is a nontrivial divisor of Fib(n).

The programs for A233514, there is no canonical definition to state claims against.
-/

/-! ## A233514.P10072997006533002385

`∪[A179187(A000040(n+1)), A001605(n+1)]`
-/

namespace A233514.P10072997006533002385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179187 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A233514.P10072997006533002385

/-! ## A233514.P2606329610261830488

`eq[A214878(n), A238529(n)]`
-/

namespace A233514.P2606329610261830488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214878 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238529 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233514.P2606329610261830488

/-! ## A233514.P4801866711819466736

`lt[A214878(n), A221646(n+1)+1]`
-/

namespace A233514.P4801866711819466736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214878 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221646 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A233514.P4801866711819466736

/-! ## A233514.P6033866327043190427

`eq[A022307(n), A032742(A327642(n))]`
-/

namespace A233514.P6033866327043190427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A327642 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233514.P6033866327043190427

/-! ## A233514.P13231350109637348859

`eq[A000034(A337604(n)), A214878(n)]`
-/

namespace A233514.P13231350109637348859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A337604 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233514.P13231350109637348859

/-!
# A233515: Fibonacci numbers whose index is in A233514.

The programs for A233515, there is no canonical definition to state claims against.
-/

/-! ## A233515.P13856329607219911634

`A000045(A233514(n+1))`
-/

namespace A233515.P13856329607219911634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A233514 (n + 1)).toNat

end

end A233515.P13856329607219911634

/-! ## A233515.P13044370284716385157

`A212804(A233514(n+1)+1)`
-/

namespace A233515.P13044370284716385157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A233514 (n + 1) + 1).toNat

end

end A233515.P13044370284716385157

/-! ## A233515.P4920507017072427794

`A053602(2*A233514(n+1))`
-/

namespace A233515.P4920507017072427794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A233514 (n + 1)).toNat

end

end A233515.P4920507017072427794

/-! ## A233515.P16964262085288317628

`A103609(2*A233514(n+1))`
-/

namespace A233515.P16964262085288317628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A233514 (n + 1)).toNat

end

end A233515.P16964262085288317628

/-! ## A233515.P18224235382984175381

`gcd(A000038(n), A069110(A233514(n+1)))`
-/

namespace A233515.P18224235382984175381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A069110 (A233514 (n + 1)).toNat)

end

end A233515.P18224235382984175381

/-!
# A233516: Where records occur in A061026, the smallest number m such that n divides phi(m), where phi is Euler's totient function.

The programs for A233516, there is no canonical definition to state claims against.
-/

/-! ## A233516.P10299974862973871488

`∩[A120857(n+1), A298536(n+1)]`
-/

namespace A233516.P10299974862973871488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233516.P10299974862973871488

/-! ## A233516.P11452713864781617886

`∩[A120857(n+1), A324769(n+1)]`
-/

namespace A233516.P11452713864781617886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233516.P11452713864781617886

/-! ## A233516.P13441318844308931767

`∩[A120857(n+1), A123093(n+1)]`
-/

namespace A233516.P13441318844308931767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233516.P13441318844308931767

/-! ## A233516.P14579525588538489400

`∩[A120857(n+1), A183106(n+1)]`
-/

namespace A233516.P14579525588538489400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233516.P14579525588538489400

/-! ## A233516.P10895184177022833360

`∩[A120857(n+1), A257144(n+1)]`
-/

namespace A233516.P10895184177022833360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233516.P10895184177022833360

/-!
# A233517: Record values in A061026, the smallest number m such that n divides phi(m), where phi is Euler's totient function.

The programs for A233517, there is no canonical definition to state claims against.
-/

/-! ## A233517.P8829980320831889972

`record[A061026(n+1)]`
-/

namespace A233517.P8829980320831889972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233517.P8829980320831889972

/-! ## A233517.P17843029968177002440

`A061026(A233516(n+1))`
-/

namespace A233517.P17843029968177002440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (A233516 (n + 1)).toNat

end

end A233517.P17843029968177002440

/-! ## A233517.P15266675823988903652

`A034694(A233516(n+1))-A000007(n)`
-/

namespace A233517.P15266675823988903652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A233516 (n + 1)).toNat - A000007 n

end

end A233517.P15266675823988903652

/-! ## A233517.P301211728393137468

`or(A066678(A233516(n+1)), A177849(n))`
-/

namespace A233517.P301211728393137468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A066678 (A233516 (n + 1)).toNat) (A177849 n)

end

end A233517.P301211728393137468

/-! ## A233517.P17824970558027671149

`A034694(A233516(n+1))^(A000040(n+1)%2)`
-/

namespace A233517.P17824970558027671149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034694 (A233516 (n + 1)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A233517.P17824970558027671149

/-!
# A233518: Primes p such that x^x == x (mod p) for some number x with 1 < x < p.

The programs for A233518, there is no canonical definition to state claims against.
-/

/-! ## A233518.P73010477341090508

`A000040(lt[1, A233519(n+1)]+1)`
-/

namespace A233518.P73010477341090508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A233518.P73010477341090508

/-! ## A233518.P4947136378978068068

`lt[A338128(A233583(n+1)), A055672(n)]`
-/

namespace A233518.P4947136378978068068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338128 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A233518.P4947136378978068068

/-! ## A233518.P3722169432693199975

`A118759(record[A076567(A334819(n+3))])`
-/

namespace A233518.P3722169432693199975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076567 (A334819 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A233518.P3722169432693199975

/-! ## A233518.P8754251814227226312

`A000040(eq[0, A235682(3*n+5)])`
-/

namespace A233518.P8754251814227226312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235682 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233518.P8754251814227226312

/-! ## A233518.P6280734170558895042

`A000040(lt[A235682(3*n+5), 1])`
-/

namespace A233518.P6280734170558895042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235682 (3 * n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A233518.P6280734170558895042

/-!
# A233519: The number of times x^x == x (mod prime(n)) for x in 0 < x < prime(n).

The programs for A233519, there is no canonical definition to state claims against.
-/

/-! ## A233519.P658720747043860225

`A065295(p?[comp[n²]])`
-/

namespace A233519.P658720747043860225
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065295 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A233519.P658720747043860225

/-! ## A233519.P7278115240253894107

`A065295(Δ[A007504(n)])`
-/

namespace A233519.P7278115240253894107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065295 (f1 (n + 1) - f1 n).toNat

end

end A233519.P7278115240253894107

/-! ## A233519.P15874624217809514800

`A065295(record[A051698(n)])`
-/

namespace A233519.P15874624217809514800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065295 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A233519.P15874624217809514800

/-! ## A233519.P17140082234735597283

`A065295(A000040(1+n))`
-/

namespace A233519.P17140082234735597283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065295 (A000040 (1 + n)).toNat

end

end A233519.P17140082234735597283

/-! ## A233519.P18349210968811843423

`A065295(A063884(n+1))`
-/

namespace A233519.P18349210968811843423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065295 (A063884 (n + 1)).toNat

end

end A233519.P18349210968811843423

/-! ## A233519.P9170151674834493516

`A387400(A000040(n+1))`
-/

namespace A233519.P9170151674834493516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387400 (A000040 (n + 1)).toNat

end

end A233519.P9170151674834493516

/-! ## A233519.P9616189394338700270

`A387400(A006005(n+1))`
-/

namespace A233519.P9616189394338700270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387400 (A006005 (n + 1)).toNat

end

end A233519.P9616189394338700270

/-! ## A233519.P3033656282597156835

`A387400(A161847(n+1))`
-/

namespace A233519.P3033656282597156835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387400 (A161847 (n + 1)).toNat

end

end A233519.P3033656282597156835

/-! ## A233519.P2810908692550888030

`A065295(A008578(n+2))`
-/

namespace A233519.P2810908692550888030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065295 (A008578 (n + 2)).toNat

end

end A233519.P2810908692550888030

/-! ## A233519.P8330670205130516204

`A065295(A182986(n+2))`
-/

namespace A233519.P8330670205130516204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065295 (A182986 (n + 2)).toNat

end

end A233519.P8330670205130516204

/-! ## A233519.P5694341901680895369

`A387400(A075643(n+2))`
-/

namespace A233519.P5694341901680895369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387400 (A075643 (n + 2)).toNat

end

end A233519.P5694341901680895369

/-! ## A233519.P15329652861115673012

`A065295(record[A006530(n+2)])`
-/

namespace A233519.P15329652861115673012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065295 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A233519.P15329652861115673012

/-! ## A233519.P6457075672465699846

`A065295(record[A014963(n+2)])`
-/

namespace A233519.P6457075672465699846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065295 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A233519.P6457075672465699846

/-! ## A233519.P15929919012257286683

`A065295(record[A020639(n+2)])`
-/

namespace A233519.P15929919012257286683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065295 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A233519.P15929919012257286683

/-! ## A233519.P3002744634850151966

`A065295(A065309(n+1)+A065308(n+1))`
-/

namespace A233519.P3002744634850151966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065295 (A065309 (n + 1) + A065308 (n + 1)).toNat

end

end A233519.P3002744634850151966

/-!
# A233520: The number of distinct values of x^x (mod n) - x for x in 0 < x < n.

The programs for A233520, there is no canonical definition to state claims against.
-/

/-! ## A233520.P13604433859095407612

`A102572(lcm(floor(n/(xor(n, n+1)+1))+1, lcm(6, (n+1)^3)/6))`
-/

namespace A233520.P13604433859095407612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102572 (Int.lcm (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) (SequenceMachineLib.roundAway ((Nat.lcm 6 ((n + 1) ^ 3) : ℚ) / 6)))

end

end A233520.P13604433859095407612

/-! ## A233520.P13911787723347912699

`A323014(record[A059343(n)])`
-/

namespace A233520.P13911787723347912699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059343 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A233520.P13911787723347912699

/-! ## A233520.P10637971512984213926

`A323014(record[A060821(n)])`
-/

namespace A233520.P10637971512984213926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A233520.P10637971512984213926

/-! ## A233520.P14859541857463480713

`A371883(A080506(n+1))`
-/

namespace A233520.P14859541857463480713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371883 (A080506 (n + 1)).toNat

end

end A233520.P14859541857463480713

/-! ## A233520.P4445866251851949359

`A001222(A207647(n)+3*n)`
-/

namespace A233520.P4445866251851949359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A207647 n + (3 * n : ℤ)).toNat

end

end A233520.P4445866251851949359

/-!
# A233521: Number of disjoint subsets s of 0..(n-1) such that, for every x in s, x^x (mod n) is in s.

The programs for A233521, there is no canonical definition to state claims against.
-/

/-! ## A233521.P17796866382011508948

`or(A065295(n+1), A353350(A050071(3*n+1)))`
-/

namespace A233521.P17796866382011508948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A065295 (n + 1)) (A353350 (A050071 (3 * n + 1)).toNat)

end

end A233521.P17796866382011508948

/-! ## A233521.P6078981144497645116

`or(char[n²], A065295(A187829(n+1)))`
-/

namespace A233521.P6078981144497645116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A065295 (A187829 (n + 1)).toNat)

end

end A233521.P6078981144497645116

/-! ## A233521.P6091359725031160600

`or(A010055(A000465(n)), A065295(n+1))`
-/

namespace A233521.P6091359725031160600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010055 (A000465 n).toNat) (A065295 (n + 1))

end

end A233521.P6091359725031160600

/-! ## A233521.P1602470930064445159

`or(A065295(n+1), A247795(A022106(n)))`
-/

namespace A233521.P1602470930064445159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A065295 (n + 1)) (A247795 (A022106 n).toNat)

end

end A233521.P1602470930064445159

/-! ## A233521.P13617855225539260771

`A065295(A187829(n+1))+char[A066568(n)]`
-/

namespace A233521.P13617855225539260771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065295 (A187829 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A233521.P13617855225539260771

/-!
# A233522: Expansion of 1 / (1 - x - x^4 + x^9) in powers of x.

The programs for A233522, the canonical program `A233522.P8961407996369992403` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233522 has offset 0).

The definition of A233522 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^4+x^9))` (program `A233522.P8961407996369992403`, by `A233522.P8961407996369992403.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A233522.P8961407996369992403

`ogf(1/(1-x-x^4+x^9))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A233522

/-- `ogf(1/(1-x-x^4+x^9))` -/
def P8961407996369992403.Spec : Prop :=
  ∀ n, P8961407996369992403.a n = A233522 n

theorem P8961407996369992403.correct : P8961407996369992403.Spec := by
  intro n
  simp only [A233522]

end A233522

/-! ## A233522.P14911725069614963087

`a(n-1)+a(n-4)-a(n-9)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=3, a(6)=4, a(7)=5, a(8)=7`
-/

namespace A233522.P14911725069614963087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 2, 3, 4, 5, 7] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 9)

end

end A233522.P14911725069614963087

namespace A233522

/-- `a(n-1)+a(n-4)-a(n-9)` -/
def P14911725069614963087.Spec : Prop :=
  ∀ n, P14911725069614963087.a n = A233522 n

end A233522

/-! ## A233522.P12415722878122892401

`∑[A017830(n)]`
-/

namespace A233522.P12415722878122892401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233522.P12415722878122892401

namespace A233522

/-- `∑[A017830(n)]` -/
def P12415722878122892401.Spec : Prop :=
  ∀ n, P12415722878122892401.a n = A233522 n

end A233522

/-! ## A233522.P3836489403284604907

`A017830(A004524(Δ[n²]))+a(n-1)` with `a(0)=1`
-/

namespace A233522.P3836489403284604907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017830 (A004524 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat + a (n - 1)

end

end A233522.P3836489403284604907

namespace A233522

/-- `A017830(A004524(Δ[n²]))+a(n-1)` -/
def P3836489403284604907.Spec : Prop :=
  ∀ n, P3836489403284604907.a n = A233522 n

end A233522

/-! ## A233522.P7512900248952118609

`A193771(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A233522.P7512900248952118609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A193771 n - a (n - 3)

end

end A233522.P7512900248952118609

namespace A233522

/-- `A193771(n)-a(n-3)` -/
def P7512900248952118609.Spec : Prop :=
  ∀ n, P7512900248952118609.a n = A233522 n

end A233522

/-! ## A233522.P13380861601579086510

`A247907(n)-a(n-1)` with `a(0)=1`
-/

namespace A233522.P13380861601579086510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A247907 n - a (n - 1)

end

end A233522.P13380861601579086510

namespace A233522

/-- `A247907(n)-a(n-1)` -/
def P13380861601579086510.Spec : Prop :=
  ∀ n, P13380861601579086510.a n = A233522 n

end A233522

/-! ## A233522.P3206897275448083882

`(A247907(n)+A017830(n))/2`
-/

namespace A233522.P3206897275448083882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247907 n + A017830 n : ℚ) / 2

end

end A233522.P3206897275448083882

namespace A233522

/-- `(A247907(n)+A017830(n))/2` -/
def P3206897275448083882.Spec : Prop :=
  ∀ n, P3206897275448083882.a n = (A233522 n : ℚ)

end A233522

/-! ## A233522.P102105178858482387

`round(A247907(n)/ratio[A060945(n)])`
-/

namespace A233522.P102105178858482387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A247907 n : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ)))

end

end A233522.P102105178858482387

namespace A233522

/-- `round(A247907(n)/ratio[A060945(n)])` -/
def P102105178858482387.Spec : Prop :=
  ∀ n, P102105178858482387.a n = A233522 n

end A233522

/-!
# A233523: Prime(n), where n is such that (1+sum_{i=1..n} prime(i)) / n is an integer.

The programs for A233523, there is no canonical definition to state claims against.
-/

/-! ## A233523.P13499554555661618354

`A001748(A128165(n+1))/3`
-/

namespace A233523.P13499554555661618354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A128165 (n + 1)).toNat : ℚ) / 3

end

end A233523.P13499554555661618354

/-! ## A233523.P18433369507197393438

`A000040(A128165(1+n))`
-/

namespace A233523.P18433369507197393438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A128165 (1 + n)).toNat

end

end A233523.P18433369507197393438

/-! ## A233523.P17570557086924629354

`A006093(A128165(n+1))+1`
-/

namespace A233523.P17570557086924629354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A128165 (n + 1)).toNat + 1

end

end A233523.P17570557086924629354

/-! ## A233523.P12758416471451649670

`A008578(A128165(n+1)+1)`
-/

namespace A233523.P12758416471451649670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A128165 (n + 1) + 1).toNat

end

end A233523.P12758416471451649670

/-! ## A233523.P11871052099932101359

`A182986(A128165(n+1)+1)`
-/

namespace A233523.P11871052099932101359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A128165 (n + 1) + 1).toNat

end

end A233523.P11871052099932101359

/-!
# A233525: Start with a(1) = 1, a(2) = 1, then a(n)*3^k = a(n+1) + a(n+2), with 3^k the smallest power of 3 (k>0) such that all terms a(n) are positive integers.

The programs for A233525, there is no canonical definition to state claims against.
-/

/-! ## A233525.P12085967195726983872

`A000196(A347562(n+1)^xor(n, floor(n/4)))`
-/

namespace A233525.P12085967195726983872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((A347562 (n + 1) : ℚ) ^ (Int.xor (n : ℤ) ⌊(n : ℚ) / 4⌋ : ℤ))).toNat

end

end A233525.P12085967195726983872

/-! ## A233525.P12355748885123141176

`A193592(A056593(n)/A009999(n))`
-/

namespace A233525.P12355748885123141176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (SequenceMachineLib.roundAway ((A056593 n : ℚ) / (A009999 n : ℚ))).toNat

end

end A233525.P12355748885123141176

/-! ## A233525.P8745806034218744822

`A117535(A294796(n+1)*A302242(n+1))`
-/

namespace A233525.P8745806034218744822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117535 (A294796 (n + 1) * A302242 (n + 1)).toNat

end

end A233525.P8745806034218744822

/-! ## A233525.P7479668100207881521

`A060775(A002808(3*(n+1))^A356225(2*(n+1)))`
-/

namespace A233525.P7479668100207881521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060775 (SequenceMachineLib.roundAway ((A002808 (3 * (n + 1)) : ℚ) ^ (A356225 (2 * (n + 1)) : ℤ))).toNat

end

end A233525.P7479668100207881521

/-!
# A233529: a(n) = |{0 < k <= n/2: prime(k)*prime(n-k) - 6 is prime}|.

The programs for A233529, there is no canonical definition to state claims against.
-/

/-! ## A233529.P5197103481699952487

`A064692(A008833(n+1)*A027306(n))`
-/

namespace A233529.P5197103481699952487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A008833 (n + 1) * A027306 n).toNat

end

end A233529.P5197103481699952487

/-! ## A233529.P14004523349880744358

`A066017(n+1)%A046042(A180868(n+1))`
-/

namespace A233529.P14004523349880744358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066017 (n + 1)) (A046042 (A180868 (n + 1)).toNat)

end

end A233529.P14004523349880744358

/-! ## A233529.P9808607375832103486

`A213911(and(A233585(n+1), A233635(n+1)))`
-/

namespace A233529.P9808607375832103486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (Int.land (A233585 (n + 1)) (A233635 (n + 1))).toNat

end

end A233529.P9808607375832103486

/-! ## A233529.P4558630360136889772

`A343030(or(1, A117647(n)))`
-/

namespace A233529.P4558630360136889772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 (Int.lor 1 (A117647 n)).toNat

end

end A233529.P4558630360136889772

/-! ## A233529.P11457221080186063433

`A242775(A032020(n)*A321738(n+1))`
-/

namespace A233529.P11457221080186063433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242775 (A032020 n * A321738 (n + 1)).toNat

end

end A233529.P11457221080186063433

/-!
# A233530: Triangle, read by rows, that transforms diagonals in the table of coefficients in the successive iterations of the g.f. (A233531) such that column 0 consists of all zeros after row 1.

The programs for A233530, there is no canonical definition to state claims against.
-/

/-! ## A233530.P4009076089180058701

`A319951(A162971(n+1)+C(2, n))`
-/

namespace A233530.P4009076089180058701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A162971 (n + 1) + (Nat.choose 2 n : ℤ)).toNat

end

end A233530.P4009076089180058701

/-! ## A233530.P18117616558489191279

`A009998(n)-A285530(A136391(n+1))`
-/

namespace A233530.P18117616558489191279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 n - A285530 (A136391 (n + 1)).toNat

end

end A233530.P18117616558489191279

/-! ## A233530.P15754304965230839956

`A048766(A008275(n+1)*A227342(n))`
-/

namespace A233530.P15754304965230839956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A008275 (n + 1) * A227342 n).toNat

end

end A233530.P15754304965230839956

/-! ## A233530.P17060035512429128352

`A009998(n)-A010051(A331755(2*(n+2)))`
-/

namespace A233530.P17060035512429128352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 n - A010051 (A331755 (2 * (n + 2))).toNat

end

end A233530.P17060035512429128352

/-! ## A233530.P14171624905513961449

`A113993(n)-A003849(A055572(3*n+2))`
-/

namespace A233530.P14171624905513961449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113993 n - A003849 (A055572 (3 * n + 2)).toNat

end

end A233530.P14171624905513961449

/-!
# A233532: Second column of triangle A233530.

The programs for A233532, there is no canonical definition to state claims against.
-/

/-! ## A233532.P1888005303130390731

`A233530(∑[n+1]+1)`
-/

namespace A233532.P1888005303130390731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233530 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233532.P1888005303130390731

/-! ## A233532.P5958403111737318289

`record[abs(Δ[A233530(n+2)])]`
-/

namespace A233532.P5958403111737318289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233532.P5958403111737318289

/-! ## A233532.P5848296430621137155

`record[A233530(A036406(n))]`
-/

namespace A233532.P5848296430621137155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233530 (A036406 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233532.P5848296430621137155

/-! ## A233532.P17372748630268276887

`record[A233530(A329854(n))]`
-/

namespace A233532.P17372748630268276887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233530 (A329854 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233532.P17372748630268276887

/-! ## A233532.P2490938200498602976

`record[A233530(∑[A057979(n)])]`
-/

namespace A233532.P2490938200498602976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233530 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233532.P2490938200498602976

/-!
# A233533: Third column of triangle A233530.

The programs for A233533, there is no canonical definition to state claims against.
-/

/-! ## A233533.P8095309971790921602

`record[A233530(∑[n]+2)]`
-/

namespace A233533.P8095309971790921602
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233530 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233533.P8095309971790921602

/-! ## A233533.P395591897386323877

`A233530(∑[n+2]+3)`
-/

namespace A233533.P395591897386323877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233530 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A233533.P395591897386323877

/-! ## A233533.P2252055903335720182

`record[A233530(n)*A328682(n)]`
-/

namespace A233533.P2252055903335720182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233530 n * A328682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233533.P2252055903335720182

/-! ## A233533.P17324062035299295632

`record[A010054(n)*A233530(n+2)]`
-/

namespace A233533.P17324062035299295632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A233530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233533.P17324062035299295632

/-! ## A233533.P5466477263274389654

`record[A233530(n+2)*A305161(n)]`
-/

namespace A233533.P5466477263274389654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233530 (n + 2) * A305161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233533.P5466477263274389654

/-!
# A233534: Fourth column of triangle A233530.

The programs for A233534, there is no canonical definition to state claims against.
-/

/-! ## A233534.P9051412931086903571

`A233530(∑[a(n-1)+1])` with `a(0)=9, a(1)=4`
-/

namespace A233534.P9051412931086903571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9, 4] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233530 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233534.P9051412931086903571

/-! ## A233534.P509465953656709854

`A233530(A167614(n+2))`
-/

namespace A233534.P509465953656709854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233530 (A167614 (n + 2)).toNat

end

end A233534.P509465953656709854

/-! ## A233534.P8465607177403694588

`A233530(A141214(n)+6)`
-/

namespace A233534.P8465607177403694588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233530 (A141214 n + 6).toNat

end

end A233534.P8465607177403694588

/-! ## A233534.P10512089592968675754

`A233530(A052905(n)+8)`
-/

namespace A233534.P10512089592968675754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233530 (A052905 n + 8).toNat

end

end A233534.P10512089592968675754

/-! ## A233534.P3372450971202287850

`A233530(A055999(n)+9)`
-/

namespace A233534.P3372450971202287850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233530 (A055999 n + 9).toNat

end

end A233534.P3372450971202287850

/-!
# A233535: Row sums of triangle A233530.

The programs for A233535, there is no canonical definition to state claims against.
-/

/-! ## A233535.P10328990878256613673

`A000270(n)+A000193(A151226(n))`
-/

namespace A233535.P10328990878256613673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000270 n + A000193 (A151226 n).toNat

end

end A233535.P10328990878256613673

/-! ## A233535.P11181930949389794163

`A000270(n)+A000193(A151232(n))`
-/

namespace A233535.P11181930949389794163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000270 n + A000193 (A151232 n).toNat

end

end A233535.P11181930949389794163

/-! ## A233535.P10925983801119667955

`A000270(n)+A000193(A000259(n+1))`
-/

namespace A233535.P10925983801119667955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000270 n + A000193 (A000259 (n + 1)).toNat

end

end A233535.P10925983801119667955

/-!
# A233536: E.g.f. satisfies: A(x) = exp( Integral (1 + x*A(x) + x^2*A(x)^2)/A(x) dx ).

The programs for A233536, there is no canonical definition to state claims against.
-/

/-! ## A233536.P17952288244680957161

`A232499(A232534(n+1)+A066304(n))`
-/

namespace A233536.P17952288244680957161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232499 (A232534 (n + 1) + A066304 n).toNat

end

end A233536.P17952288244680957161

/-!
# A233537: E.g.f. satisfies: A'(x) = (1 + x*A(x))*(1 + 2*x*A(x)).

The programs for A233537, there is no canonical definition to state claims against.
-/

/-! ## A233537.P16754281007153678972

`A321585(n)-A339274(A000108(n))`
-/

namespace A233537.P16754281007153678972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321585 n - A339274 (A000108 n).toNat

end

end A233537.P16754281007153678972

/-! ## A233537.P7703400272023386440

`A321732(n)-A080791(A028244(n+1))`
-/

namespace A233537.P7703400272023386440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321732 n - A080791 (A028244 (n + 1)).toNat

end

end A233537.P7703400272023386440

/-!
# A233540: Primes p such that p+2, p+8, and p+12 are all prime.

The programs for A233540, there is no canonical definition to state claims against.
-/

/-! ## A233540.P15278043447644861955

`∪[A022006(n+1), A078848(n+1)]`
-/

namespace A233540.P15278043447644861955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A233540.P15278043447644861955

/-! ## A233540.P4589924586606086302

`∩[A046134(n+1), A046141(n+1)]`
-/

namespace A233540.P4589924586606086302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233540.P4589924586606086302

/-! ## A233540.P363085305271900772

`∩[A001359(n+1), A046141(n+1)]`
-/

namespace A233540.P363085305271900772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233540.P363085305271900772

/-! ## A233540.P9462366353750953091

`∩[A046134(n+1), A046135(n+1)]`
-/

namespace A233540.P9462366353750953091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233540.P9462366353750953091

/-! ## A233540.P1688286203860487918

`∩[A046135(n+1), A046141(n+1)]`
-/

namespace A233540.P1688286203860487918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233540.P1688286203860487918

/-! ## A233540.P16700305366048152936

`∩[A046135(n+1), A049436(n+1)]`
-/

namespace A233540.P16700305366048152936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233540.P16700305366048152936

/-! ## A233540.P17992979344817047492

`∩[A046141(n+1), A141830(n+1)]`
-/

namespace A233540.P17992979344817047492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233540.P17992979344817047492

/-! ## A233540.P14677542739064358721

`∩[A046141(n+1), A378983(n+1)]`
-/

namespace A233540.P14677542739064358721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233540.P14677542739064358721

/-! ## A233540.P12338029015376123743

`∩[A046141(n+1), A054799(n+1)]`
-/

namespace A233540.P12338029015376123743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233540.P12338029015376123743

/-! ## A233540.P12411809905544585320

`∩[A046141(n+1), A063700(n+1)]`
-/

namespace A233540.P12411809905544585320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233540.P12411809905544585320

/-! ## A233540.P16592327516011041947

`∩[A046141(n+1), A111166(n+1)]`
-/

namespace A233540.P16592327516011041947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233540.P16592327516011041947

/-! ## A233540.P1493310575489044559

`∩[A046141(n+1), A124588(n+1)]`
-/

namespace A233540.P1493310575489044559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233540.P1493310575489044559

/-! ## A233540.P10521494434907409510

`∩[A046141(n+1), A181747(n+1)]`
-/

namespace A233540.P10521494434907409510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233540.P10521494434907409510

/-! ## A233540.P3061454682388358612

`∩[A046141(n+1), A238528(n+1)]`
-/

namespace A233540.P3061454682388358612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233540.P3061454682388358612

/-! ## A233540.P574469042124018959

`∩[A046141(n+1), A063693(n+1)]`
-/

namespace A233540.P574469042124018959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233540.P574469042124018959

/-! ## A233540.P2531454018844663435

`∩[A046141(n+1), A229064(n+1)]`
-/

namespace A233540.P2531454018844663435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233540.P2531454018844663435

/-! ## A233540.P8912127094986902858

`∩[A046141(n+1), A280255(n+1)]`
-/

namespace A233540.P8912127094986902858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233540.P8912127094986902858

/-! ## A233540.P1024088497658981532

`∩[A015915(n+1), A046135(n+1)]`
-/

namespace A233540.P1024088497658981532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233540.P1024088497658981532

/-! ## A233540.P9127339759547363186

`∩[A023202(n+1), A046135(n+1)]`
-/

namespace A233540.P9127339759547363186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233540.P9127339759547363186

/-! ## A233540.P1118777674663783136

`∩[A046134(n+1), A086136(n+1)]`
-/

namespace A233540.P1118777674663783136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233540.P1118777674663783136

/-!
# A233541: a(n) = sigma(n) + phi(n) + d(n).

The programs for A233541, the canonical program `A233541.P8613134617587554925` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233541 has offset 1).

The definition of A233541 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A233541.P8613134617587554925

`A000203(n+1)+A000010(n+1)+A000005(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A233541

/-- `A000203(n+1)+A000010(n+1)+A000005(n+1)` -/
def P8613134617587554925.Spec : Prop :=
  ∀ n, P8613134617587554925.a n = A233541 (n + 1)

theorem P8613134617587554925.correct : P8613134617587554925.Spec := by
  intro n
  simp only [A233541, Nat.add_sub_cancel]

end A233541

/-! ## A233541.P17186783558556575044

`∑{d}[n+1, #+1]+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A233541.P17186783558556575044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A233541.P17186783558556575044

namespace A233541

/-- `∑{d}[n+1, #+1]+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]` -/
def P17186783558556575044.Spec : Prop :=
  ∀ n, P17186783558556575044.a n = (A233541 (n + 1) : ℚ)

end A233541

/-! ## A233541.P1100163476355245821

`∑{d}[n+1, #+1]+A000010(n+1)`
-/

namespace A233541.P1100163476355245821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) + A000010 (n + 1)

end

end A233541.P1100163476355245821

namespace A233541

/-- `∑{d}[n+1, #+1]+A000010(n+1)` -/
def P1100163476355245821.Spec : Prop :=
  ∀ n, P1100163476355245821.a n = A233541 (n + 1)

end A233541

/-! ## A233541.P3805793464133662315

`A065387(n+1)+∑{d}[n+1, gcd(n, #)]`
-/

namespace A233541.P3805793464133662315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065387 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℤ)

end

end A233541.P3805793464133662315

namespace A233541

/-- `A065387(n+1)+∑{d}[n+1, gcd(n, #)]` -/
def P3805793464133662315.Spec : Prop :=
  ∀ n, P3805793464133662315.a n = A233541 (n + 1)

end A233541

/-! ## A233541.P16699451281304210286

`∑{d}[n+1, #+1]+A109606(n+1)+1`
-/

namespace A233541.P16699451281304210286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) + (A109606 (n + 1) + 1)

end

end A233541.P16699451281304210286

namespace A233541

/-- `∑{d}[n+1, #+1]+A109606(n+1)+1` -/
def P16699451281304210286.Spec : Prop :=
  ∀ n, P16699451281304210286.a n = A233541 (n + 1)

end A233541

/-! ## A233541.P14565949212304834499

`∑{d}[n+1, #+1]+A039649(n+1)-1`
-/

namespace A233541.P14565949212304834499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) + (A039649 (n + 1) - 1)

end

end A233541.P14565949212304834499

namespace A233541

/-- `∑{d}[n+1, #+1]+A039649(n+1)-1` -/
def P14565949212304834499.Spec : Prop :=
  ∀ n, P14565949212304834499.a n = A233541 (n + 1)

end A233541

/-! ## A233541.P3540594026255543036

`A065387(n+1)+Δ[A006218(n)]`
-/

namespace A233541.P3540594026255543036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065387 (n + 1) + (f1 (n + 1) - f1 n)

end

end A233541.P3540594026255543036

namespace A233541

/-- `A065387(n+1)+Δ[A006218(n)]` -/
def P3540594026255543036.Spec : Prop :=
  ∀ n, P3540594026255543036.a n = A233541 (n + 1)

end A233541

/-! ## A233541.P16121350705219447090

`A065387(n+1)+Δ[A054519(n)]`
-/

namespace A233541.P16121350705219447090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065387 (n + 1) + (f1 (n + 1) - f1 n)

end

end A233541.P16121350705219447090

namespace A233541

/-- `A065387(n+1)+Δ[A054519(n)]` -/
def P16121350705219447090.Spec : Prop :=
  ∀ n, P16121350705219447090.a n = A233541 (n + 1)

end A233541

/-! ## A233541.P5267336777243976384

`A007503(n+1)+A000010(n+1)`
-/

namespace A233541.P5267336777243976384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) + A000010 (n + 1)

end

end A233541.P5267336777243976384

namespace A233541

/-- `A007503(n+1)+A000010(n+1)` -/
def P5267336777243976384.Spec : Prop :=
  ∀ n, P5267336777243976384.a n = A233541 (n + 1)

theorem P5267336777243976384.correct : P5267336777243976384.Spec := by
  intro n
  simp only [A233541, Nat.add_sub_cancel, A233541.P5267336777243976384.a, A233541.P8613134617587554925.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007503, A007503.P13484425310514315912.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A233541

/-! ## A233541.P2307771846826729536

`A061468(n+1)+A000203(n+1)`
-/

namespace A233541.P2307771846826729536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061468 (n + 1) + A000203 (n + 1)

end

end A233541.P2307771846826729536

namespace A233541

/-- `A061468(n+1)+A000203(n+1)` -/
def P2307771846826729536.Spec : Prop :=
  ∀ n, P2307771846826729536.a n = A233541 (n + 1)

theorem P2307771846826729536.correct : P2307771846826729536.Spec := by
  intro n
  simp only [A233541, Nat.add_sub_cancel, A233541.P2307771846826729536.a, A233541.P8613134617587554925.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A061468, A061468.P5735709615131522244.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A233541

/-! ## A233541.P9439181472691001110

`A065387(n+1)+A000005(n+1)`
-/

namespace A233541.P9439181472691001110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065387 (n + 1) + A000005 (n + 1)

end

end A233541.P9439181472691001110

namespace A233541

/-- `A065387(n+1)+A000005(n+1)` -/
def P9439181472691001110.Spec : Prop :=
  ∀ n, P9439181472691001110.a n = A233541 (n + 1)

end A233541

/-! ## A233541.P13899180636477097381

`A088580(n+1)+A073757(n+1)`
-/

namespace A233541.P13899180636477097381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) + A073757 (n + 1)

end

end A233541.P13899180636477097381

namespace A233541

/-- `A088580(n+1)+A073757(n+1)` -/
def P13899180636477097381.Spec : Prop :=
  ∀ n, P13899180636477097381.a n = A233541 (n + 1)

theorem P13899180636477097381.correct : P13899180636477097381.Spec := by
  intro n
  simp only [A233541, Nat.add_sub_cancel, A233541.P13899180636477097381.a, A233541.P8613134617587554925.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A073757, A073757.P6861480467973211752.a, A088580, A088580.P3089093194242277422.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A233541

/-! ## A233541.P9262394808322080242

`A140482(n+1)+A051709(n+1)`
-/

namespace A233541.P9262394808322080242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140482 (n + 1) + A051709 (n + 1)

end

end A233541.P9262394808322080242

namespace A233541

/-- `A140482(n+1)+A051709(n+1)` -/
def P9262394808322080242.Spec : Prop :=
  ∀ n, P9262394808322080242.a n = A233541 (n + 1)

theorem P9262394808322080242.correct : P9262394808322080242.Spec := by
  intro n
  simp only [A233541, Nat.add_sub_cancel, A233541.P9262394808322080242.a, A233541.P8613134617587554925.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051709, A051709.P8066883811744733228.a, A140482, A140482.P11303161972345714232.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A233541

/-! ## A233541.P14643410705260866880

`A209187(n+1)+A062249(n+1)`
-/

namespace A233541.P14643410705260866880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209187 (n + 1) + A062249 (n + 1)

end

end A233541.P14643410705260866880

namespace A233541

/-- `A209187(n+1)+A062249(n+1)` -/
def P14643410705260866880.Spec : Prop :=
  ∀ n, P14643410705260866880.a n = A233541 (n + 1)

theorem P14643410705260866880.correct : P14643410705260866880.Spec := by
  intro n
  simp only [A233541, Nat.add_sub_cancel, A233541.P14643410705260866880.a, A233541.P8613134617587554925.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A062249, A062249.P5473932307129171226.a, A209187, A209187.P1822992089248699320.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051953, A051953.P11179276897610979764.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A233541

/-! ## A233541.P3176761868647077605

`A163163(n+1)+A121048(n+1)`
-/

namespace A233541.P3176761868647077605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163163 (n + 1) + A121048 (n + 1)

end

end A233541.P3176761868647077605

namespace A233541

/-- `A163163(n+1)+A121048(n+1)` -/
def P3176761868647077605.Spec : Prop :=
  ∀ n, P3176761868647077605.a n = A233541 (n + 1)

theorem P3176761868647077605.correct : P3176761868647077605.Spec := by
  intro n
  simp only [A233541, Nat.add_sub_cancel, A233541.P3176761868647077605.a, A233541.P8613134617587554925.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A121048, A121048.P10222907602682812102.a, A163163, A163163.P5673829929796067677.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A233541

/-! ## A233541.P14598282707832749661

`A255385(n+1)+A062011(n+1)`
-/

namespace A233541.P14598282707832749661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255385 (n + 1) + A062011 (n + 1)

end

end A233541.P14598282707832749661

namespace A233541

/-- `A255385(n+1)+A062011(n+1)` -/
def P14598282707832749661.Spec : Prop :=
  ∀ n, P14598282707832749661.a n = A233541 (n + 1)

theorem P14598282707832749661.correct : P14598282707832749661.Spec := by
  intro n
  simp only [A233541, Nat.add_sub_cancel, A233541.P14598282707832749661.a, A233541.P8613134617587554925.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A062011, A062011.P17525320077853469406.a, A255385, A255385.P15739975789967617263.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A233541

/-! ## A233541.P14683718750885150264

`A380449(n+1)+A057859(n+1)`
-/

namespace A233541.P14683718750885150264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380449 (n + 1) + A057859 (n + 1)

end

end A233541.P14683718750885150264

namespace A233541

/-- `A380449(n+1)+A057859(n+1)` -/
def P14683718750885150264.Spec : Prop :=
  ∀ n, P14683718750885150264.a n = A233541 (n + 1)

theorem P14683718750885150264.correct : P14683718750885150264.Spec := by
  intro n
  simp only [A233541, Nat.add_sub_cancel, A233541.P14683718750885150264.a, A233541.P8613134617587554925.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A057859, A057859.P5441024818850006693.a, A380449, A380449.P8792025045371275510.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A033273, A033273.P18420659424697249895.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A233541

/-! ## A233541.P7692359011459830435

`A074400(n+1)-A046520(n+1)`
-/

namespace A233541.P7692359011459830435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) - A046520 (n + 1)

end

end A233541.P7692359011459830435

namespace A233541

/-- `A074400(n+1)-A046520(n+1)` -/
def P7692359011459830435.Spec : Prop :=
  ∀ n, P7692359011459830435.a n = A233541 (n + 1)

theorem P7692359011459830435.correct : P7692359011459830435.Spec := by
  intro n
  simp only [A233541, Nat.add_sub_cancel, A233541.P7692359011459830435.a, A233541.P8613134617587554925.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A046520, A046520.P408125302691526791.a, A074400, A074400.P16312391460013478761.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A233541

/-! ## A233541.P18379793024329469436

`A064212(n+1)-A063085(n+1)`
-/

namespace A233541.P18379793024329469436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064212 (n + 1) - A063085 (n + 1)

end

end A233541.P18379793024329469436

namespace A233541

/-- `A064212(n+1)-A063085(n+1)` -/
def P18379793024329469436.Spec : Prop :=
  ∀ n, P18379793024329469436.a n = A233541 (n + 1)

theorem P18379793024329469436.correct : P18379793024329469436.Spec := by
  intro n
  simp only [A233541, Nat.add_sub_cancel, A233541.P18379793024329469436.a, A233541.P8613134617587554925.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A063085, A063085.P4754823976141225556.a, A064212, A064212.P10229143328642602721.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A034448, A034448.P11229265544409245030.f1, A034448.P11229265544409245030.a, A061468, A061468.P5735709615131522244.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A051731, A051731.P11318043630102858095.a, A254503, A254503.P16877197465467938331.a, A000007, A000007.P6599383543502402472.a, A002618, A002618.P8397693677428532773.a, A048158, A048158.P1757030368331788429.a, A384050, A384050.P7808103291810137926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A233541

/-! ## A233541.P11828031702014741140

`A000203(n+1)+A073757(n+1)+1`
-/

namespace A233541.P11828031702014741140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A073757 (n + 1) + 1)

end

end A233541.P11828031702014741140

namespace A233541

/-- `A000203(n+1)+A073757(n+1)+1` -/
def P11828031702014741140.Spec : Prop :=
  ∀ n, P11828031702014741140.a n = A233541 (n + 1)

theorem P11828031702014741140.correct : P11828031702014741140.Spec := by
  intro n
  simp only [A233541, Nat.add_sub_cancel, A233541.P11828031702014741140.a, A233541.P8613134617587554925.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A073757, A073757.P6861480467973211752.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A233541

/-!
# A233543: Triangle read by rows: T(n,k) = k!.

The programs for A233543, the canonical program `A233543.P8120853931293690238` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233543 has offset 0).

The definition of A233543 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `col(n)!` (program `A233543.P8120853931293690238`, by `A233543.P8120853931293690238.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A233543.P8120853931293690238

`col(n)!`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A233543

/-- `col(n)!` -/
def P8120853931293690238.Spec : Prop :=
  ∀ n, (P8120853931293690238.a n : ℤ) = A233543 n

theorem P8120853931293690238.correct : P8120853931293690238.Spec := by
  intro n
  simp only [A233543]

end A233543

/-! ## A233543.P15741796814089810635

`A000142(col(n))`
-/

namespace A233543.P15741796814089810635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (SequenceMachineLib.triCol n)

end

end A233543.P15741796814089810635

namespace A233543

/-- `A000142(col(n))` -/
def P15741796814089810635.Spec : Prop :=
  ∀ n, P15741796814089810635.a n = A233543 n

end A233543

/-! ## A233543.P11309147195807881974

`gcd(col(n)*T(n-1,k-1), T(n-1,k+1))` with `a(0)=1, a(1)=1`
-/

namespace A233543.P11309147195807881974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.gcd (SequenceMachineLib.triCol n * SequenceMachineLib.triUpLeft a n) (SequenceMachineLib.triUpRight a n)

end

end A233543.P11309147195807881974

namespace A233543

/-- `gcd(col(n)*T(n-1,k-1), T(n-1,k+1))` -/
def P11309147195807881974.Spec : Prop :=
  ∀ n, (P11309147195807881974.a n : ℤ) = A233543 n

end A233543

/-! ## A233543.P12030410879414560805

`(n-C(∑[char[∑[n]]], 2))!`
-/

namespace A233543.P12030410879414560805
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat

end

end A233543.P12030410879414560805

namespace A233543

/-- `(n-C(∑[char[∑[n]]], 2))!` -/
def P12030410879414560805.Spec : Prop :=
  ∀ n, (P12030410879414560805.a n : ℤ) = A233543 n

end A233543

/-! ## A233543.P13461467584235208920

`T(n-1,k)+(T(n-1,k-1)-T(n-2,k-1))*col(n)` with `a(0)=1`
-/

namespace A233543.P13461467584235208920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + (SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2Left a n) * (SequenceMachineLib.triCol n : ℤ)

end

end A233543.P13461467584235208920

namespace A233543

/-- `T(n-1,k)+(T(n-1,k-1)-T(n-2,k-1))*col(n)` -/
def P13461467584235208920.Spec : Prop :=
  ∀ n, P13461467584235208920.a n = A233543 n

end A233543

/-! ## A233543.P1197095683774176508

`T(n-1,k)+(T(n-1,k-1)-T(n-2,k-1))*row(n)` with `a(0)=1`
-/

namespace A233543.P1197095683774176508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + (SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2Left a n) * (SequenceMachineLib.triRow n : ℤ)

end

end A233543.P1197095683774176508

namespace A233543

/-- `T(n-1,k)+(T(n-1,k-1)-T(n-2,k-1))*row(n)` -/
def P1197095683774176508.Spec : Prop :=
  ∀ n, P1197095683774176508.a n = A233543 n

end A233543

/-! ## A233543.P4584014858561801397

`T(n-1,k)+(T(n,k-1)-T(n-2,k-1))*col(n)` with `a(0)=1`
-/

namespace A233543.P4584014858561801397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + (SequenceMachineLib.triLeft a n - SequenceMachineLib.triUp2Left a n) * (SequenceMachineLib.triCol n : ℤ)

end

end A233543.P4584014858561801397

namespace A233543

/-- `T(n-1,k)+(T(n,k-1)-T(n-2,k-1))*col(n)` -/
def P4584014858561801397.Spec : Prop :=
  ∀ n, P4584014858561801397.a n = A233543 n

end A233543

/-! ## A233543.P6641777913654741218

`T(n-1,k)-(T(n-2,k-1)-T(n-1,k-1))*col(n)` with `a(0)=1`
-/

namespace A233543.P6641777913654741218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n - (SequenceMachineLib.triUp2Left a n - SequenceMachineLib.triUpLeft a n) * (SequenceMachineLib.triCol n : ℤ)

end

end A233543.P6641777913654741218

namespace A233543

/-- `T(n-1,k)-(T(n-2,k-1)-T(n-1,k-1))*col(n)` -/
def P6641777913654741218.Spec : Prop :=
  ∀ n, P6641777913654741218.a n = A233543 n

end A233543

/-! ## A233543.P12024865857806056955

`T(n-1,k)+(T(n,k-1)-T(n-2,k-1))*row(n)` with `a(0)=1`
-/

namespace A233543.P12024865857806056955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + (SequenceMachineLib.triLeft a n - SequenceMachineLib.triUp2Left a n) * (SequenceMachineLib.triRow n : ℤ)

end

end A233543.P12024865857806056955

namespace A233543

/-- `T(n-1,k)+(T(n,k-1)-T(n-2,k-1))*row(n)` -/
def P12024865857806056955.Spec : Prop :=
  ∀ n, P12024865857806056955.a n = A233543 n

end A233543

/-! ## A233543.P12096579771381816923

`T(n-1,k)-(T(n-2,k-1)-T(n-1,k-1))*row(n)` with `a(0)=1`
-/

namespace A233543.P12096579771381816923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n - (SequenceMachineLib.triUp2Left a n - SequenceMachineLib.triUpLeft a n) * (SequenceMachineLib.triRow n : ℤ)

end

end A233543.P12096579771381816923

namespace A233543

/-- `T(n-1,k)-(T(n-2,k-1)-T(n-1,k-1))*row(n)` -/
def P12096579771381816923.Spec : Prop :=
  ∀ n, P12096579771381816923.a n = A233543 n

end A233543

/-! ## A233543.P6677260306869961495

`T(n-1,k)-(T(n-2,k-1)-T(n,k-1))*col(n)` with `a(0)=1`
-/

namespace A233543.P6677260306869961495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n - (SequenceMachineLib.triUp2Left a n - SequenceMachineLib.triLeft a n) * (SequenceMachineLib.triCol n : ℤ)

end

end A233543.P6677260306869961495

namespace A233543

/-- `T(n-1,k)-(T(n-2,k-1)-T(n,k-1))*col(n)` -/
def P6677260306869961495.Spec : Prop :=
  ∀ n, P6677260306869961495.a n = A233543 n

end A233543

/-! ## A233543.P2127529070661165499

`T(n-1,k)-(T(n-2,k-1)-T(n,k-1))*row(n)` with `a(0)=1`
-/

namespace A233543.P2127529070661165499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n - (SequenceMachineLib.triUp2Left a n - SequenceMachineLib.triLeft a n) * (SequenceMachineLib.triRow n : ℤ)

end

end A233543.P2127529070661165499

namespace A233543

/-- `T(n-1,k)-(T(n-2,k-1)-T(n,k-1))*row(n)` -/
def P2127529070661165499.Spec : Prop :=
  ∀ n, P2127529070661165499.a n = A233543 n

end A233543

/-! ## A233543.P4562964555199896584

`T(T(n-1,k-1), 2*T(n-1,k-1))+col(n)*T(n-1,k-1)` with `a(0)=1`
-/

namespace A233543.P4562964555199896584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) (2 * SequenceMachineLib.triUpLeft a n : ℤ) + SequenceMachineLib.triCol n * SequenceMachineLib.triUpLeft a n

end

end A233543.P4562964555199896584

namespace A233543

/-- `T(T(n-1,k-1), 2*T(n-1,k-1))+col(n)*T(n-1,k-1)` -/
def P4562964555199896584.Spec : Prop :=
  ∀ n, (P4562964555199896584.a n : ℤ) = A233543 n

end A233543

/-! ## A233543.P8561014552405411590

`T(n-1,k)+(1-T(n-1,k))*(col(n)*T(n-1,k-1)-T(n-1,k))` with `a(0)=1`
-/

namespace A233543.P8561014552405411590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + (1 - SequenceMachineLib.triUp a n) * ((SequenceMachineLib.triCol n : ℤ) * SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp a n)

end

end A233543.P8561014552405411590

namespace A233543

/-- `T(n-1,k)+(1-T(n-1,k))*(col(n)*T(n-1,k-1)-T(n-1,k))` -/
def P8561014552405411590.Spec : Prop :=
  ∀ n, P8561014552405411590.a n = A233543 n

end A233543

/-! ## A233543.P470809607486565926

`T(n-1,k)+(1-T(n-1,k))*(col(n)*T(n,k-1)-T(n-1,k))` with `a(0)=1`
-/

namespace A233543.P470809607486565926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + (1 - SequenceMachineLib.triUp a n) * ((SequenceMachineLib.triCol n : ℤ) * SequenceMachineLib.triLeft a n - SequenceMachineLib.triUp a n)

end

end A233543.P470809607486565926

namespace A233543

/-- `T(n-1,k)+(1-T(n-1,k))*(col(n)*T(n,k-1)-T(n-1,k))` -/
def P470809607486565926.Spec : Prop :=
  ∀ n, P470809607486565926.a n = A233543 n

end A233543

/-! ## A233543.P1390823847651110036

`T(n-1,k)-(1-T(n-1,k))*(T(n-1,k)-col(n)*T(n-1,k-1))` with `a(0)=1`
-/

namespace A233543.P1390823847651110036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n - (1 - SequenceMachineLib.triUp a n) * (SequenceMachineLib.triUp a n - (SequenceMachineLib.triCol n : ℤ) * SequenceMachineLib.triUpLeft a n)

end

end A233543.P1390823847651110036

namespace A233543

/-- `T(n-1,k)-(1-T(n-1,k))*(T(n-1,k)-col(n)*T(n-1,k-1))` -/
def P1390823847651110036.Spec : Prop :=
  ∀ n, P1390823847651110036.a n = A233543 n

end A233543

/-! ## A233543.P5450634603348976193

`T(n-1,k)-(1-T(n-1,k))*(T(n-1,k)-col(n)*T(n,k-1))` with `a(0)=1`
-/

namespace A233543.P5450634603348976193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n - (1 - SequenceMachineLib.triUp a n) * (SequenceMachineLib.triUp a n - (SequenceMachineLib.triCol n : ℤ) * SequenceMachineLib.triLeft a n)

end

end A233543.P5450634603348976193

namespace A233543

/-- `T(n-1,k)-(1-T(n-1,k))*(T(n-1,k)-col(n)*T(n,k-1))` -/
def P5450634603348976193.Spec : Prop :=
  ∀ n, P5450634603348976193.a n = A233543 n

end A233543

/-! ## A233543.P12517842339894941864

`T(n-1,k)+row(n)*T(n-1,k-1)*T(1, 2*T(n-1,k))` with `a(0)=1`
-/

namespace A233543.P12517842339894941864
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + SequenceMachineLib.triRow n * SequenceMachineLib.triUpLeft a n * SequenceMachineLib.triAt a 1 (2 * SequenceMachineLib.triUp a n : ℤ)

end

end A233543.P12517842339894941864

namespace A233543

/-- `T(n-1,k)+row(n)*T(n-1,k-1)*T(1, 2*T(n-1,k))` -/
def P12517842339894941864.Spec : Prop :=
  ∀ n, (P12517842339894941864.a n : ℤ) = A233543 n

end A233543

/-! ## A233543.P13590761286846120737

`T(n-1,k)+col(n)*T(col(n)-1, row(n)-1)` with `a(0)=1`
-/

namespace A233543.P13590761286846120737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + SequenceMachineLib.triCol n * SequenceMachineLib.triAt a ((SequenceMachineLib.triCol n : ℤ) - 1) ((SequenceMachineLib.triRow n : ℤ) - 1)

end

end A233543.P13590761286846120737

namespace A233543

/-- `T(n-1,k)+col(n)*T(col(n)-1, row(n)-1)` -/
def P13590761286846120737.Spec : Prop :=
  ∀ n, (P13590761286846120737.a n : ℤ) = A233543 n

end A233543

/-! ## A233543.P10552377756496973026

`T(n-1,k)+col(n)*T(col(n), col(n)-(T(n-1,k)+1))` with `a(0)=1`
-/

namespace A233543.P10552377756496973026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + SequenceMachineLib.triCol n * SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) ((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triUp a n + 1 : ℤ))

end

end A233543.P10552377756496973026

namespace A233543

/-- `T(n-1,k)+col(n)*T(col(n), col(n)-(T(n-1,k)+1))` -/
def P10552377756496973026.Spec : Prop :=
  ∀ n, (P10552377756496973026.a n : ℤ) = A233543 n

end A233543

/-!
# A233546: Smallest k such that 6^n+k, 6^n+k+g, 6^n+k+2*g are consecutive primes in arithmetic progression.

The programs for A233546, there is no canonical definition to state claims against.
-/

/-! ## A233546.P10629157226964526426

`A233823(n+2)-A000400(n+2)`
-/

namespace A233546.P10629157226964526426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233823 (n + 2) - A000400 (n + 2)

end

end A233546.P10629157226964526426

/-! ## A233546.P5639726259766507315

`A233823(n+2)%Δ[A168610(n+2)]`
-/

namespace A233546.P5639726259766507315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168610 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233823 (n + 2)) (f1 (n + 1) - f1 n)

end

end A233546.P5639726259766507315

/-! ## A233546.P13137794234225146092

`A233823(n+2)%A008458(Δ[A168610(n)])`
-/

namespace A233546.P13137794234225146092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233823 (n + 2)) (A008458 (f1 (n + 1) - f1 n).toNat)

end

end A233546.P13137794234225146092

/-!
# A233548: 1, 1, followed by denominators of A000217(n)*A164555(n)/A027642(n).

The programs for A233548, there is no canonical definition to state claims against.
-/

/-! ## A233548.P4628038501014981731

`A053383(∑[n]+floor(n-atan(n)))`
-/

namespace A233548.P4628038501014981731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053383 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋).toNat

end

end A233548.P4628038501014981731

/-! ## A233548.P14490133376912184373

`A053383(∑[A131209(n)])`
-/

namespace A233548.P14490133376912184373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053383 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A233548.P14490133376912184373

/-! ## A233548.P8685213200243423873

`A053383(∑[A326178(n)])`
-/

namespace A233548.P8685213200243423873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053383 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A233548.P8685213200243423873

/-! ## A233548.P15028247218134611711

`A053383(record[A069981(n)])`
-/

namespace A233548.P15028247218134611711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053383 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A233548.P15028247218134611711

/-! ## A233548.P9239211377814300108

`A053383(A027379(abs(1-n)))`
-/

namespace A233548.P9239211377814300108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053383 (A027379 |1 - (n : ℤ)|.toNat).toNat

end

end A233548.P9239211377814300108

/-! ## A233548.P12421461489038141120

`A053383(A055998(abs(1-n)))`
-/

namespace A233548.P12421461489038141120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053383 (A055998 |1 - (n : ℤ)|.toNat).toNat

end

end A233548.P12421461489038141120

/-! ## A233548.P3395766179746283410

`A053383(A289207(∑[n]+n))`
-/

namespace A233548.P3395766179746283410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053383 (A289207 (∑ j ∈ Finset.range (n + 1), f1 j + n)).toNat

end

end A233548.P3395766179746283410

/-! ## A233548.P8699136492197539764

`A053383(A004275(n)+C(n, 2))`
-/

namespace A233548.P8699136492197539764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053383 (A004275 n + (Nat.choose n 2 : ℤ)).toNat

end

end A233548.P8699136492197539764

/-! ## A233548.P6993151828209998282

`A053383(A004275(n)+∑[n]-n)`
-/

namespace A233548.P6993151828209998282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053383 (A004275 n + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))).toNat

end

end A233548.P6993151828209998282

/-! ## A233548.P17447417124529503892

`A053383(∑[lcm(n+1, A173950(n+1))])`
-/

namespace A233548.P17447417124529503892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A173950 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053383 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233548.P17447417124529503892

/-!
# A233549: Number of ways to write n = p + q (q > 0) with p and (phi(p)*phi(q))^4 + 1 prime, where phi(.) is Euler's totient function (A000010).

The programs for A233549, there is no canonical definition to state claims against.
-/

/-! ## A233549.P5890609560641289862

`A360676(A360961(n+3)+A007438(2*n+1))`
-/

namespace A233549.P5890609560641289862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360676 (A360961 (n + 3) + A007438 (2 * n + 1)).toNat

end

end A233549.P5890609560641289862

/-! ## A233549.P3923232500418380572

`A129985(A014668(n+2))`
-/

namespace A233549.P3923232500418380572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129985 (A014668 (n + 2)).toNat

end

end A233549.P3923232500418380572

/-! ## A233549.P14824313006306208280

`A001221(A160643(n+1)+ceil(∑[3^(n-2)]))`
-/

namespace A233549.P14824313006306208280
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A160643 (n + 1) + ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉).toNat

end

end A233549.P14824313006306208280

/-!
# A233550: Gap g between 3 consecutive primes for the smallest k such that 6^n+k, 6^n+k+g, 6^n+k+2*g are consecutive primes in arithmetic progression.

The programs for A233550, there is no canonical definition to state claims against.
-/

/-! ## A233550.P12280365203502488879

`6*A233742(n+2)`
-/

namespace A233550.P12280365203502488879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A233742 (n + 2)

end

end A233550.P12280365203502488879

/-! ## A233550.P5147508868136121387

`A008458(A233742(n+2))`
-/

namespace A233550.P5147508868136121387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A233742 (n + 2)).toNat

end

end A233550.P5147508868136121387

/-! ## A233550.P15985501758399731373

`A008588(and(-1, A233742(n+2)))`
-/

namespace A233550.P15985501758399731373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (Int.land (-1) (A233742 (n + 2))).toNat

end

end A233550.P15985501758399731373

/-! ## A233550.P1675407405643229411

`A101328(A233742(n+2)+2)+1`
-/

namespace A233550.P1675407405643229411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101328 (A233742 (n + 2) + 2).toNat + 1

end

end A233550.P1675407405643229411

/-! ## A233550.P15892193234881430507

`A008588(A233742(n+2)%(n+8))`
-/

namespace A233550.P15892193234881430507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (Int.tmod (A233742 (n + 2)) (n + 8 : ℤ)).toNat

end

end A233550.P15892193234881430507

/-! ## A233550.P111449187305951850

`A008588(A233742(floor(acot(n)²)+n+2))`
-/

namespace A233550.P111449187305951850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A233742 (⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ + (n + 2 : ℤ)).toNat).toNat

end

end A233550.P111449187305951850

/-! ## A233550.P7411603913059206525

`A008588(A233742(floor(1/(n+1))+n+2))`
-/

namespace A233550.P7411603913059206525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A233742 (⌊1 / (n + 1 : ℚ)⌋ + (n : ℤ) + 2).toNat).toNat

end

end A233550.P7411603913059206525

/-! ## A233550.P2416658803447329637

`lcm(A008588(A233742(n+2)), A020985(n))`
-/

namespace A233550.P2416658803447329637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008588 (A233742 (n + 2)).toNat) (A020985 n)

end

end A233550.P2416658803447329637

/-!
# A233553: Amicable 5-tuples: (x1,...,x5) such that sigma(x1)=...=sigma(x5)=x1+...+x5. Groups of 5 subsequent terms list the five members in increasing size.

The programs for A233553, there is no canonical definition to state claims against.
-/

/-! ## A233553.P16337966642179828105

`A233538(n+11)`
-/

namespace A233553.P16337966642179828105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233538 (n + 11)

end

end A233553.P16337966642179828105

/-!
# A233554: Indices of primes in the tribonacci-like sequence, A020992.

The programs for A233554, there is no canonical definition to state claims against.
-/

/-! ## A233554.P13581677542883845923

`A008480(A152124(n))+A000096(n)`
-/

namespace A233554.P13581677542883845923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A152124 n).toNat + A000096 n

end

end A233554.P13581677542883845923

/-!
# A233556: Numbers k such that k divides 1 + Sum_{j=1..k} prime(j)^17.

The programs for A233556, there is no canonical definition to state claims against.
-/

/-! ## A233556.P6093006095886269977

`A000720(A233557(n+1))`
-/

namespace A233556.P6093006095886269977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A233557 (n + 1)).toNat

end

end A233556.P6093006095886269977

/-! ## A233556.P5079870130078692352

`A061395(2*A233557(n+1))`
-/

namespace A233556.P5079870130078692352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A233557 (n + 1)).toNat

end

end A233556.P5079870130078692352

/-! ## A233556.P6797240590462300784

`A061395(lcm(2, A233557(n+1)))`
-/

namespace A233556.P6797240590462300784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A233557 (n + 1)))

end

end A233556.P6797240590462300784

/-! ## A233556.P18413349449649617425

`∑{d}[A233557(n+1), A061395(#)]`
-/

namespace A233556.P18413349449649617425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A233556.P18413349449649617425

/-!
# A233557: Prime(k), where k is such that (1 + Sum_{i=1..k} prime(i)^17) / k is an integer.

The programs for A233557, there is no canonical definition to state claims against.
-/

/-! ## A233557.P5632028693986220907

`A000040(A233556(n+1))`
-/

namespace A233557.P5632028693986220907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A233556 (n + 1)).toNat

end

end A233557.P5632028693986220907

/-! ## A233557.P3847359080984215563

`A008578(A233556(n+1)+1)`
-/

namespace A233557.P3847359080984215563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A233556 (n + 1) + 1).toNat

end

end A233557.P3847359080984215563

/-! ## A233557.P13571492074641071663

`A182986(A233556(n+1)+1)`
-/

namespace A233557.P13571492074641071663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A233556 (n + 1) + 1).toNat

end

end A233557.P13571492074641071663

/-! ## A233557.P6373505545864772600

`A158611(A233556(n+1)+2)`
-/

namespace A233557.P6373505545864772600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A233556 (n + 1) + 2).toNat

end

end A233557.P6373505545864772600

/-! ## A233557.P551912085806737739

`∑{d}[A233556(n+1), A007444(#)]`
-/

namespace A233557.P551912085806737739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A233557.P551912085806737739

/-!
# A233558: Triangle read by rows: T(n,k) = real part mod n of (n + ki)^2, where k=1..n-1 and i is the imaginary unit.

The programs for A233558, the canonical program `A233558.P15177050206559062068` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233558 has offset 2).

The definition of A233558 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A233558.P17632822709720274026

`A003991(n+1)%(row(n)+2)`
-/

namespace A233558.P17632822709720274026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003991 (n + 1)) (SequenceMachineLib.triRow n + 2 : ℤ)

end

end A233558.P17632822709720274026

namespace A233558

/-- `A003991(n+1)%(row(n)+2)` -/
def P17632822709720274026.Spec : Prop :=
  ∀ n, P17632822709720274026.a n = A233558 (n + 2)

end A233558

/-! ## A233558.P15426364498969040216

`comp[∑[n]]-(A385865(n+2)+n)`
-/

namespace A233558.P15426364498969040216
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (A385865 (n + 2) + (n : ℤ))

end

end A233558.P15426364498969040216

namespace A233558

/-- `comp[∑[n]]-(A385865(n+2)+n)` -/
def P15426364498969040216.Spec : Prop :=
  ∀ n, P15426364498969040216.a n = A233558 (n + 2)

end A233558

/-! ## A233558.P633853574724099007

`A056203(n+1)%(comp[∑[n]]-n)`
-/

namespace A233558.P633853574724099007
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056203 (n + 1)) ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))

end

end A233558.P633853574724099007

namespace A233558

/-- `A056203(n+1)%(comp[∑[n]]-n)` -/
def P633853574724099007.Spec : Prop :=
  ∀ n, P633853574724099007.a n = A233558 (n + 2)

end A233558

/-! ## A233558.P1590552811366663021

`(A059036(n)+1)%(comp[∑[n]]-n)`
-/

namespace A233558.P1590552811366663021
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059036 n + 1) ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))

end

end A233558.P1590552811366663021

namespace A233558

/-- `(A059036(n)+1)%(comp[∑[n]]-n)` -/
def P1590552811366663021.Spec : Prop :=
  ∀ n, P1590552811366663021.a n = A233558 (n + 2)

end A233558

/-! ## A233558.P6052415859311735572

`A120070(n+2)%(n-comp[∑[n]])`
-/

namespace A233558.P6052415859311735572
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120070 (n + 2)) ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ))

end

end A233558.P6052415859311735572

namespace A233558

/-- `A120070(n+2)%(n-comp[∑[n]])` -/
def P6052415859311735572.Spec : Prop :=
  ∀ n, P6052415859311735572.a n = A233558 (n + 2)

end A233558

/-! ## A233558.P12206569939633031828

`sqrt(A165447(n+2))%(comp[∑[n]]-n)`
-/

namespace A233558.P12206569939633031828
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A165447 (n + 2) : ℝ))) ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))

end

end A233558.P12206569939633031828

namespace A233558

/-- `sqrt(A165447(n+2))%(comp[∑[n]]-n)` -/
def P12206569939633031828.Spec : Prop :=
  ∀ n, P12206569939633031828.a n = A233558 (n + 2)

end A233558

/-! ## A233558.P8210838179629347170

`A237451(∑[A099375(n)+2])`
-/

namespace A233558.P8210838179629347170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237451 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A233558.P8210838179629347170

namespace A233558

/-- `A237451(∑[A099375(n)+2])` -/
def P8210838179629347170.Spec : Prop :=
  ∀ n, P8210838179629347170.a n = A233558 (n + 2)

end A233558

/-! ## A233558.P18131008983130645209

`A003057(n+2)-A385865(n+2)`
-/

namespace A233558.P18131008983130645209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) - A385865 (n + 2)

end

end A233558.P18131008983130645209

namespace A233558

/-- `A003057(n+2)-A385865(n+2)` -/
def P18131008983130645209.Spec : Prop :=
  ∀ n, P18131008983130645209.a n = A233558 (n + 2)

theorem P18131008983130645209.correct : P18131008983130645209.Spec := by
  intro n
  simp only [A233558, Nat.add_sub_cancel, A233558.P18131008983130645209.a, A233558.P15177050206559062068.a, A003057, A003057.P16308936517940939054.a, A128142, A128142.P9126956890442312540.a, A385865, A385865.P12036821787748699265.a, A004736, A004736.P10337537277358081527.a, A104634, A104634.P15724108096827104955.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A233558

/-! ## A233558.P15177050206559062068

`A128142(n+1)%A003057(n+2)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A233558

/-- `A128142(n+1)%A003057(n+2)` -/
def P15177050206559062068.Spec : Prop :=
  ∀ n, P15177050206559062068.a n = A233558 (n + 2)

theorem P15177050206559062068.correct : P15177050206559062068.Spec := by
  intro n
  simp only [A233558, Nat.add_sub_cancel]

end A233558

/-! ## A233558.P10712625795157060072

`A237451(∑[A005408(A004736(n+1))])`
-/

namespace A233558.P10712625795157060072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A004736 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237451 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A233558.P10712625795157060072

namespace A233558

/-- `A237451(∑[A005408(A004736(n+1))])` -/
def P10712625795157060072.Spec : Prop :=
  ∀ n, P10712625795157060072.a n = A233558 (n + 2)

end A233558

/-! ## A233558.P5701587783972000281

`A086416(A247714(n))%∑[A073423(n)]`
-/

namespace A233558.P5701587783972000281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086416 (A247714 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233558.P5701587783972000281

namespace A233558

/-- `A086416(A247714(n))%∑[A073423(n)]` -/
def P5701587783972000281.Spec : Prop :=
  ∀ n, P5701587783972000281.a n = A233558 (n + 2)

end A233558

/-! ## A233558.P17856436074205490269

`A301977(A099627(n))%∑[A073423(n)]`
-/

namespace A233558.P17856436074205490269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301977 (A099627 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233558.P17856436074205490269

namespace A233558

/-- `A301977(A099627(n))%∑[A073423(n)]` -/
def P17856436074205490269.Spec : Prop :=
  ∀ n, P17856436074205490269.a n = A233558 (n + 2)

end A233558

/-! ## A233558.P6575379509943665986

`(A003057(n+2)-A176270(n))%A003057(n+2)`
-/

namespace A233558.P6575379509943665986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003057 (n + 2) - A176270 n) (A003057 (n + 2))

end

end A233558.P6575379509943665986

namespace A233558

/-- `(A003057(n+2)-A176270(n))%A003057(n+2)` -/
def P6575379509943665986.Spec : Prop :=
  ∀ n, P6575379509943665986.a n = A233558 (n + 2)

end A233558

/-! ## A233558.P12999284059588902598

`(A002260(n+1)*A004736(n+1))%A003057(n+2)`
-/

namespace A233558.P12999284059588902598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (n + 1) * A004736 (n + 1)) (A003057 (n + 2))

end

end A233558.P12999284059588902598

namespace A233558

/-- `(A002260(n+1)*A004736(n+1))%A003057(n+2)` -/
def P12999284059588902598.Spec : Prop :=
  ∀ n, P12999284059588902598.a n = A233558 (n + 2)

end A233558

/-! ## A233558.P9910537089197945920

`(A002024(n+1)*A055096(n+2))%A003057(n+2)`
-/

namespace A233558.P9910537089197945920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002024 (n + 1) * A055096 (n + 2)) (A003057 (n + 2))

end

end A233558.P9910537089197945920

namespace A233558

/-- `(A002024(n+1)*A055096(n+2))%A003057(n+2)` -/
def P9910537089197945920.Spec : Prop :=
  ∀ n, P9910537089197945920.a n = A233558 (n + 2)

end A233558

/-!
# A233561: Products p*q of distinct primes such that (p*q - 1)/2 is prime.

The programs for A233561, the canonical program `A233561.P15948231251641810662` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233561 has offset 1).

The definition of A233561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2956 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A233561.P10984813587252424240

`2*A234095(n+1)+1`
-/

namespace A233561.P10984813587252424240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A234095 (n + 1) + 1

end

end A233561.P10984813587252424240

namespace A233561

/-- `2*A234095(n+1)+1` -/
def P10984813587252424240.Spec : Prop :=
  ∀ n, P10984813587252424240.a n = A233561 (n + 1)

end A233561

/-! ## A233561.P7594055943955013686

`2*A276045((n+1)%(2*n+1)+1)+1`
-/

namespace A233561.P7594055943955013686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276045 ((n + 1) % (2 * n + 1) + 1) + 1

end

end A233561.P7594055943955013686

namespace A233561

/-- `2*A276045((n+1)%(2*n+1)+1)+1` -/
def P7594055943955013686.Spec : Prop :=
  ∀ n, P7594055943955013686.a n = A233561 (n + 1)

end A233561

/-! ## A233561.P15948231251641810662

`∩[A053177(n+1), A083793(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A233561

/-- `∩[A053177(n+1), A083793(n+1)]` -/
def P15948231251641810662.Spec : Prop :=
  ∀ n, (P15948231251641810662.a n : ℤ) = A233561 (n + 1)

theorem P15948231251641810662.correct : P15948231251641810662.Spec := by
  intro n
  simp only [A233561, Nat.add_sub_cancel]

end A233561

/-! ## A233561.P1254537330098408680

`∩[A053177(n+1), A109288(n+1)]`
-/

namespace A233561.P1254537330098408680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233561.P1254537330098408680

namespace A233561

/-- `∩[A053177(n+1), A109288(n+1)]` -/
def P1254537330098408680.Spec : Prop :=
  ∀ n, (P1254537330098408680.a n : ℤ) = A233561 (n + 1)

end A233561

/-! ## A233561.P11262359231630962230

`∩[A053177(n+1), A109373(n+1)]`
-/

namespace A233561.P11262359231630962230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233561.P11262359231630962230

namespace A233561

/-- `∩[A053177(n+1), A109373(n+1)]` -/
def P11262359231630962230.Spec : Prop :=
  ∀ n, (P11262359231630962230.a n : ℤ) = A233561 (n + 1)

end A233561

/-! ## A233561.P4363824788690007242

`∩[A072055(n+1), A083793(n+1)]`
-/

namespace A233561.P4363824788690007242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233561.P4363824788690007242

namespace A233561

/-- `∩[A072055(n+1), A083793(n+1)]` -/
def P4363824788690007242.Spec : Prop :=
  ∀ n, (P4363824788690007242.a n : ℤ) = A233561 (n + 1)

end A233561

/-! ## A233561.P5617823267685493992

`∩[A072055(n+1), A109288(n+1)]`
-/

namespace A233561.P5617823267685493992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233561.P5617823267685493992

namespace A233561

/-- `∩[A072055(n+1), A109288(n+1)]` -/
def P5617823267685493992.Spec : Prop :=
  ∀ n, (P5617823267685493992.a n : ℤ) = A233561 (n + 1)

end A233561

/-! ## A233561.P17887651180083658370

`∩[A072055(n+1), A109373(n+1)]`
-/

namespace A233561.P17887651180083658370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233561.P17887651180083658370

namespace A233561

/-- `∩[A072055(n+1), A109373(n+1)]` -/
def P17887651180083658370.Spec : Prop :=
  ∀ n, (P17887651180083658370.a n : ℤ) = A233561 (n + 1)

end A233561

/-! ## A233561.P12930772743185453676

`∩[A083793(n+1), A166496(n+1)]`
-/

namespace A233561.P12930772743185453676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233561.P12930772743185453676

namespace A233561

/-- `∩[A083793(n+1), A166496(n+1)]` -/
def P12930772743185453676.Spec : Prop :=
  ∀ n, (P12930772743185453676.a n : ℤ) = A233561 (n + 1)

end A233561

/-! ## A233561.P13689499430860440025

`∩[A109288(n+1), A166496(n+1)]`
-/

namespace A233561.P13689499430860440025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233561.P13689499430860440025

namespace A233561

/-- `∩[A109288(n+1), A166496(n+1)]` -/
def P13689499430860440025.Spec : Prop :=
  ∀ n, (P13689499430860440025.a n : ℤ) = A233561 (n + 1)

end A233561

/-! ## A233561.P13767527539623141051

`∩[A109373(n+1), A166496(n+1)]`
-/

namespace A233561.P13767527539623141051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233561.P13767527539623141051

namespace A233561

/-- `∩[A109373(n+1), A166496(n+1)]` -/
def P13767527539623141051.Spec : Prop :=
  ∀ n, (P13767527539623141051.a n : ℤ) = A233561 (n + 1)

end A233561

/-! ## A233561.P16641842406290121361

`∩[A038456(n+1), A080774(n+1)]`
-/

namespace A233561.P16641842406290121361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233561.P16641842406290121361

namespace A233561

/-- `∩[A038456(n+1), A080774(n+1)]` -/
def P16641842406290121361.Spec : Prop :=
  ∀ n, (P16641842406290121361.a n : ℤ) = A233561 (n + 1)

end A233561

/-! ## A233561.P5919065174233149762

`∩[A053177(n+1), A080774(n+1)]`
-/

namespace A233561.P5919065174233149762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233561.P5919065174233149762

namespace A233561

/-- `∩[A053177(n+1), A080774(n+1)]` -/
def P5919065174233149762.Spec : Prop :=
  ∀ n, (P5919065174233149762.a n : ℤ) = A233561 (n + 1)

end A233561

/-! ## A233561.P15907678332904131074

`∩[A072055(n+1), A080774(n+1)]`
-/

namespace A233561.P15907678332904131074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233561.P15907678332904131074

namespace A233561

/-- `∩[A072055(n+1), A080774(n+1)]` -/
def P15907678332904131074.Spec : Prop :=
  ∀ n, (P15907678332904131074.a n : ℤ) = A233561 (n + 1)

end A233561

/-! ## A233561.P9070701799144177057

`∩[A080774(n+1), A083793(n+1)]`
-/

namespace A233561.P9070701799144177057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233561.P9070701799144177057

namespace A233561

/-- `∩[A080774(n+1), A083793(n+1)]` -/
def P9070701799144177057.Spec : Prop :=
  ∀ n, (P9070701799144177057.a n : ℤ) = A233561 (n + 1)

end A233561

/-! ## A233561.P2922932323871918777

`∩[A080774(n+1), A109288(n+1)]`
-/

namespace A233561.P2922932323871918777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233561.P2922932323871918777

namespace A233561

/-- `∩[A080774(n+1), A109288(n+1)]` -/
def P2922932323871918777.Spec : Prop :=
  ∀ n, (P2922932323871918777.a n : ℤ) = A233561 (n + 1)

end A233561

/-! ## A233561.P7548783519124260701

`∩[A080774(n+1), A109373(n+1)]`
-/

namespace A233561.P7548783519124260701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233561.P7548783519124260701

namespace A233561

/-- `∩[A080774(n+1), A109373(n+1)]` -/
def P7548783519124260701.Spec : Prop :=
  ∀ n, (P7548783519124260701.a n : ℤ) = A233561 (n + 1)

end A233561

/-! ## A233561.P14893161507249539614

`∩[A080774(n+1), A166496(n+1)]`
-/

namespace A233561.P14893161507249539614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233561.P14893161507249539614

namespace A233561

/-- `∩[A080774(n+1), A166496(n+1)]` -/
def P14893161507249539614.Spec : Prop :=
  ∀ n, (P14893161507249539614.a n : ℤ) = A233561 (n + 1)

end A233561

/-! ## A233561.P2060082510579613165

`∩[A053177(n+1), A254923(n+1)]`
-/

namespace A233561.P2060082510579613165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254923 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233561.P2060082510579613165

namespace A233561

/-- `∩[A053177(n+1), A254923(n+1)]` -/
def P2060082510579613165.Spec : Prop :=
  ∀ n, (P2060082510579613165.a n : ℤ) = A233561 (n + 1)

end A233561

/-! ## A233561.P17044921160565131751

`∩[A072055(n+1), A254923(n+1)]`
-/

namespace A233561.P17044921160565131751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254923 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233561.P17044921160565131751

namespace A233561

/-- `∩[A072055(n+1), A254923(n+1)]` -/
def P17044921160565131751.Spec : Prop :=
  ∀ n, (P17044921160565131751.a n : ℤ) = A233561 (n + 1)

end A233561

/-!
# A233562: Products p*q of distinct primes such that (p*q + 1)/2 is a prime.

The programs for A233562, the canonical program `A233562.P4039187579232823503` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233562 has offset 1).

The definition of A233562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3672 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A233562.P4039187579232823503

`2*A234098(n+1)-1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A233562

/-- `2*A234098(n+1)-1` -/
def P4039187579232823503.Spec : Prop :=
  ∀ n, P4039187579232823503.a n = A233562 (n + 1)

theorem P4039187579232823503.correct : P4039187579232823503.Spec := by
  intro n
  simp only [A233562, Nat.add_sub_cancel]

end A233562

/-! ## A233562.P10479017045862278204

`lcm(2, A234098(C(n+1, n)))-1`
-/

namespace A233562.P10479017045862278204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A234098 (Nat.choose (n + 1) n)) : ℤ) - 1

end

end A233562.P10479017045862278204

namespace A233562

/-- `lcm(2, A234098(C(n+1, n)))-1` -/
def P10479017045862278204.Spec : Prop :=
  ∀ n, P10479017045862278204.a n = A233562 (n + 1)

end A233562

/-! ## A233562.P18061485598001464927

`∩[A039832(n+1), A076274(n+1)]`
-/

namespace A233562.P18061485598001464927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233562.P18061485598001464927

namespace A233562

/-- `∩[A039832(n+1), A076274(n+1)]` -/
def P18061485598001464927.Spec : Prop :=
  ∀ n, (P18061485598001464927.a n : ℤ) = A233562 (n + 1)

end A233562

/-! ## A233562.P18197146040784257673

`∩[A038456(n+1), A076274(n+1)]`
-/

namespace A233562.P18197146040784257673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233562.P18197146040784257673

namespace A233562

/-- `∩[A038456(n+1), A076274(n+1)]` -/
def P18197146040784257673.Spec : Prop :=
  ∀ n, (P18197146040784257673.a n : ℤ) = A233562 (n + 1)

end A233562

/-! ## A233562.P3413167985327283631

`∩[A076274(n+1), A086263(n+1)]`
-/

namespace A233562.P3413167985327283631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233562.P3413167985327283631

namespace A233562

/-- `∩[A076274(n+1), A086263(n+1)]` -/
def P3413167985327283631.Spec : Prop :=
  ∀ n, (P3413167985327283631.a n : ℤ) = A233562 (n + 1)

end A233562

/-! ## A233562.P5300714132042426655

`∩[A052213(n+1), A076274(n+1)]`
-/

namespace A233562.P5300714132042426655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233562.P5300714132042426655

namespace A233562

/-- `∩[A052213(n+1), A076274(n+1)]` -/
def P5300714132042426655.Spec : Prop :=
  ∀ n, (P5300714132042426655.a n : ℤ) = A233562 (n + 1)

end A233562

/-! ## A233562.P5074729493530818624

`∩[A033945(n+1), A190299(n+1)]`
-/

namespace A233562.P5074729493530818624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233562.P5074729493530818624

namespace A233562

/-- `∩[A033945(n+1), A190299(n+1)]` -/
def P5074729493530818624.Spec : Prop :=
  ∀ n, (P5074729493530818624.a n : ℤ) = A233562 (n + 1)

end A233562

/-! ## A233562.P16881844793784323078

`∩[A038456(n+1), A190299(n+1)]`
-/

namespace A233562.P16881844793784323078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233562.P16881844793784323078

namespace A233562

/-- `∩[A038456(n+1), A190299(n+1)]` -/
def P16881844793784323078.Spec : Prop :=
  ∀ n, (P16881844793784323078.a n : ℤ) = A233562 (n + 1)

end A233562

/-! ## A233562.P3486423352889581439

`∩[A039832(n+1), A190299(n+1)]`
-/

namespace A233562.P3486423352889581439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233562.P3486423352889581439

namespace A233562

/-- `∩[A039832(n+1), A190299(n+1)]` -/
def P3486423352889581439.Spec : Prop :=
  ∀ n, (P3486423352889581439.a n : ℤ) = A233562 (n + 1)

end A233562

/-! ## A233562.P4060565128918874198

`∩[A033945(n+1), A189986(n+1)]`
-/

namespace A233562.P4060565128918874198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233562.P4060565128918874198

namespace A233562

/-- `∩[A033945(n+1), A189986(n+1)]` -/
def P4060565128918874198.Spec : Prop :=
  ∀ n, (P4060565128918874198.a n : ℤ) = A233562 (n + 1)

end A233562

/-! ## A233562.P13335223786205832386

`∩[A038456(n+1), A189986(n+1)]`
-/

namespace A233562.P13335223786205832386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233562.P13335223786205832386

namespace A233562

/-- `∩[A038456(n+1), A189986(n+1)]` -/
def P13335223786205832386.Spec : Prop :=
  ∀ n, (P13335223786205832386.a n : ℤ) = A233562 (n + 1)

end A233562

/-! ## A233562.P14199490665877452316

`∩[A039832(n+1), A189986(n+1)]`
-/

namespace A233562.P14199490665877452316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233562.P14199490665877452316

namespace A233562

/-- `∩[A039832(n+1), A189986(n+1)]` -/
def P14199490665877452316.Spec : Prop :=
  ∀ n, (P14199490665877452316.a n : ℤ) = A233562 (n + 1)

end A233562

/-! ## A233562.P4403731681860728267

`∩[A038456(n+1), A108181(n+1)]`
-/

namespace A233562.P4403731681860728267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233562.P4403731681860728267

namespace A233562

/-- `∩[A038456(n+1), A108181(n+1)]` -/
def P4403731681860728267.Spec : Prop :=
  ∀ n, (P4403731681860728267.a n : ℤ) = A233562 (n + 1)

end A233562

/-! ## A233562.P8635526120392577962

`∩[A039832(n+1), A108181(n+1)]`
-/

namespace A233562.P8635526120392577962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233562.P8635526120392577962

namespace A233562

/-- `∩[A039832(n+1), A108181(n+1)]` -/
def P8635526120392577962.Spec : Prop :=
  ∀ n, (P8635526120392577962.a n : ℤ) = A233562 (n + 1)

end A233562

/-! ## A233562.P7856245134965083794

`∩[A052213(n+1), A108181(n+1)]`
-/

namespace A233562.P7856245134965083794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233562.P7856245134965083794

namespace A233562

/-- `∩[A052213(n+1), A108181(n+1)]` -/
def P7856245134965083794.Spec : Prop :=
  ∀ n, (P7856245134965083794.a n : ℤ) = A233562 (n + 1)

end A233562

/-! ## A233562.P13798419321212544393

`∩[A086263(n+1), A108181(n+1)]`
-/

namespace A233562.P13798419321212544393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233562.P13798419321212544393

namespace A233562

/-- `∩[A086263(n+1), A108181(n+1)]` -/
def P13798419321212544393.Spec : Prop :=
  ∀ n, (P13798419321212544393.a n : ℤ) = A233562 (n + 1)

end A233562

/-! ## A233562.P13201360830441304925

`∩[2*n+1, A039832(n+1)]`
-/

namespace A233562.P13201360830441304925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233562.P13201360830441304925

namespace A233562

/-- `∩[2*n+1, A039832(n+1)]` -/
def P13201360830441304925.Spec : Prop :=
  ∀ n, (P13201360830441304925.a n : ℤ) = A233562 (n + 1)

end A233562

/-! ## A233562.P2938738392204046203

`∩[2*n+1, A263990(n+1)]`
-/

namespace A233562.P2938738392204046203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233562.P2938738392204046203

namespace A233562

/-- `∩[2*n+1, A263990(n+1)]` -/
def P2938738392204046203.Spec : Prop :=
  ∀ n, (P2938738392204046203.a n : ℤ) = A233562 (n + 1)

end A233562

/-! ## A233562.P17530376310810961772

`record[A000265(A039832(n+2))]`
-/

namespace A233562.P17530376310810961772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A039832 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233562.P17530376310810961772

namespace A233562

/-- `record[A000265(A039832(n+2))]` -/
def P17530376310810961772.Spec : Prop :=
  ∀ n, P17530376310810961772.a n = A233562 (n + 1)

end A233562

/-! ## A233562.P3818276021778431672

`record[A000265(A263990(n+2))]`
-/

namespace A233562.P3818276021778431672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A263990 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233562.P3818276021778431672

namespace A233562

/-- `record[A000265(A263990(n+2))]` -/
def P3818276021778431672.Spec : Prop :=
  ∀ n, P3818276021778431672.a n = A233562 (n + 1)

end A233562

/-!
# A233564: c-squarefree numbers: positive integers which in binary are concatenation of distinct parts of the form 10...0 with nonnegative number of zeros.

The programs for A233564, there is no canonical definition to state claims against.
-/

/-! ## A233564.P6699474207038830798

`eq[A000217(A000120(n)), A124770(n)]`
-/

namespace A233564.P6699474207038830798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124770 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233564.P6699474207038830798

/-! ## A233564.P15818260897015546367

`lt[A000217(A000120(n)), A124771(n)]`
-/

namespace A233564.P15818260897015546367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124771 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A233564.P15818260897015546367

/-! ## A233564.P16993363281951439304

`eq[A038573(n), A334300(n)]`
-/

namespace A233564.P16993363281951439304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334300 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233564.P16993363281951439304

/-! ## A233564.P2679686985216516105

`eq[A000120(n), A000120(A334300(n))]`
-/

namespace A233564.P2679686985216516105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A334300 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233564.P2679686985216516105

/-! ## A233564.P15059287923226094032

`eq[A048883(n), A048883(A334300(n))]`
-/

namespace A233564.P15059287923226094032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (A334300 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233564.P15059287923226094032

/-! ## A233564.P10855205662088803280

`∪[A333222(n+1), A337453(n+1)]`
-/

namespace A233564.P10855205662088803280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A233564.P10855205662088803280

/-!
# A233567: Number of ways to write n = p + q (q > 0) with p and p^4 + phi(q)^4 both prime, where phi(.) is Euler's totient function (A000010).

The programs for A233567, there is no canonical definition to state claims against.
-/

/-! ## A233567.P165024019536922676

`A139351(p?[A028242(A326668(n+1))])`
-/

namespace A233567.P165024019536922676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A326668 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A233567.P165024019536922676

/-! ## A233567.P16258707831225372793

`A164002(A136087(n+1)+1)-1`
-/

namespace A233567.P16258707831225372793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164002 (A136087 (n + 1) + 1).toNat - 1

end

end A233567.P16258707831225372793

/-! ## A233567.P8601150538012964935

`A196564(A087462(n)+A039822(n+1))`
-/

namespace A233567.P8601150538012964935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A087462 n + A039822 (n + 1)).toNat

end

end A233567.P8601150538012964935

/-! ## A233567.P11347269067796901419

`A275849(A011782(n+2)-A274521(n+1))`
-/

namespace A233567.P11347269067796901419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275849 (A011782 (n + 2) - A274521 (n + 1)).toNat

end

end A233567.P11347269067796901419

/-! ## A233567.P6551877275393937321

`A069010(A069065(n+2)%A069041(n+1))`
-/

namespace A233567.P6551877275393937321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (Int.tmod (A069065 (n + 2)) (A069041 (n + 1))).toNat

end

end A233567.P6551877275393937321

/-!
# A233568: a(n) is number in A114994 which c-equivalent to c-factorial of n (A047778).

The programs for A233568, there is no canonical definition to state claims against.
-/

/-! ## A233568.P16358446356352709623

`A233249((n+2)!)`
-/

namespace A233568.P16358446356352709623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233249 (Nat.factorial (n + 2))

end

end A233568.P16358446356352709623

/-!
# A233569: Canonical parts power representation of n: n = concatenation((1)^k_1,(10)^k_2,...).

The programs for A233569, there is no canonical definition to state claims against.
-/

/-! ## A233569.P9238976923749323228

`A333220(A333219(n+1))`
-/

namespace A233569.P9238976923749323228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333220 (A333219 (n + 1)).toNat

end

end A233569.P9238976923749323228

/-! ## A233569.P12997161484804043062

`A333220(A358506(n+1))`
-/

namespace A233569.P12997161484804043062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333220 (A358506 (n + 1)).toNat

end

end A233569.P12997161484804043062

/-! ## A233569.P14522916867070514467

`A333220(∏{e}[A057335(n), A000040(#)])`
-/

namespace A233569.P14522916867070514467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333220 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A233569.P14522916867070514467

/-! ## A233569.P16399989840911512699

`A333220(∏{e}[A057335(n), A003459(#)])`
-/

namespace A233569.P16399989840911512699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333220 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A003459 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A233569.P16399989840911512699

/-! ## A233569.P5744233005674439680

`A333220(∏{e}[A057335(n), A007500(#)])`
-/

namespace A233569.P5744233005674439680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333220 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A007500 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A233569.P5744233005674439680

/-! ## A233569.P8684809448882266601

`A333220(∏{e}[A057335(n), A016114(#)])`
-/

namespace A233569.P8684809448882266601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333220 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A016114 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A233569.P8684809448882266601

/-! ## A233569.P13319053426443733191

`A333220(∏{e}[A057335(n), A028905(#)])`
-/

namespace A233569.P13319053426443733191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333220 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A028905 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A233569.P13319053426443733191

/-! ## A233569.P8406656018537397452

`A333220(∏{e}[A057335(n), A030291(#)])`
-/

namespace A233569.P8406656018537397452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333220 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A030291 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A233569.P8406656018537397452

/-! ## A233569.P2411267321986134673

`A333220(∏{e}[A057335(n), A040986(#)])`
-/

namespace A233569.P2411267321986134673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333220 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A040986 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A233569.P2411267321986134673

/-!
# A233570: Replace the smallest prime factor p in n (if any) with the prime following p.

The programs for A233570, there is no canonical definition to state claims against.
-/

/-! ## A233570.P7807505840808698047

`A003961(A020639(n+1))*A032742(n+1)`
-/

namespace A233570.P7807505840808698047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A020639 (n + 1)).toNat * A032742 (n + 1)

end

end A233570.P7807505840808698047

/-! ## A233570.P14664327061688892593

`A028234(n+1)*A253550(A028233(n+1))`
-/

namespace A233570.P14664327061688892593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (n + 1) * A253550 (A028233 (n + 1)).toNat

end

end A233570.P14664327061688892593

/-! ## A233570.P10365178383857505304

`A020639(A280702(n+1))*A032742(n+1)`
-/

namespace A233570.P10365178383857505304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A280702 (n + 1)).toNat * A032742 (n + 1)

end

end A233570.P10365178383857505304

/-! ## A233570.P18350981128566864332

`(n+1-A060681(n+1))*A003961(A020639(n+1))`
-/

namespace A233570.P18350981128566864332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A060681 (n + 1)) * A003961 (A020639 (n + 1)).toNat

end

end A233570.P18350981128566864332

/-! ## A233570.P13741705248558841293

`A003961((n+1)/A032742(n+1))*A032742(n+1)`
-/

namespace A233570.P13741705248558841293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A032742 (n + 1) : ℚ))).toNat * A032742 (n + 1)

end

end A233570.P13741705248558841293

/-! ## A233570.P2335984119506553363

`A020639(A250469(n+1))*A032742(n+1)`
-/

namespace A233570.P2335984119506553363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A250469 (n + 1)).toNat * A032742 (n + 1)

end

end A233570.P2335984119506553363

/-! ## A233570.P17363884736887897898

`A020639(A003961(n+1))*A032742(n+1)`
-/

namespace A233570.P17363884736887897898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003961 (n + 1)).toNat * A032742 (n + 1)

end

end A233570.P17363884736887897898

/-! ## A233570.P11982772721554703202

`(n+1-A060681(n+1))*A020639(A003961(n+1))`
-/

namespace A233570.P11982772721554703202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A060681 (n + 1)) * A020639 (A003961 (n + 1)).toNat

end

end A233570.P11982772721554703202

/-! ## A233570.P10758225234778064939

`(n+1-A060681(n+1))*A020639(A253885(n)+1)`
-/

namespace A233570.P10758225234778064939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A060681 (n + 1)) * A020639 (A253885 n + 1).toNat

end

end A233570.P10758225234778064939

/-! ## A233570.P5703373332929442936

`(n+1)/A020639(n+1)*A020639(A253885(n)+1)`
-/

namespace A233570.P5703373332929442936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (n + 1) : ℚ) * (A020639 (A253885 n + 1).toNat : ℚ)

end

end A233570.P5703373332929442936

/-! ## A233570.P10478946323240167622

`(n+1-A060681(n+1))*A020639(2*A048673(n+1)-1)`
-/

namespace A233570.P10478946323240167622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A060681 (n + 1)) * A020639 (2 * A048673 (n + 1) - 1).toNat

end

end A233570.P10478946323240167622

/-! ## A233570.P5610985087945317679

`(n+1)/A020639(n+1)*A020639(2*A048673(n+1)-1)`
-/

namespace A233570.P5610985087945317679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (n + 1) : ℚ) * (A020639 (2 * A048673 (n + 1) - 1).toNat : ℚ)

end

end A233570.P5610985087945317679

/-! ## A233570.P2183427401305964209

`(n+1)/A020639(n+1)*A020639(round(A246676(4*n+2)/3))`
-/

namespace A233570.P2183427401305964209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (n + 1) : ℚ) * (A020639 (SequenceMachineLib.roundAway ((A246676 (4 * n + 2) : ℚ) / 3)).toNat : ℚ)

end

end A233570.P2183427401305964209

/-! ## A233570.P2735095352530665789

`A277886(A285109(n+1))`
-/

namespace A233570.P2735095352530665789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277886 (A285109 (n + 1)).toNat

end

end A233570.P2735095352530665789

/-! ## A233570.P7118028438923964128

`A277886((n+1)*A020639(n+1))`
-/

namespace A233570.P7118028438923964128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277886 ((n + 1 : ℤ) * A020639 (n + 1)).toNat

end

end A233570.P7118028438923964128

/-! ## A233570.P5442819365981747374

`A032742((n+1)*A020639(A003961(n+1)))`
-/

namespace A233570.P5442819365981747374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 ((n + 1 : ℤ) * A020639 (A003961 (n + 1)).toNat).toNat

end

end A233570.P5442819365981747374

/-! ## A233570.P5098605218895696348

`A032742((n+1)*A280702(A020639(n+1)))`
-/

namespace A233570.P5098605218895696348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 ((n + 1 : ℤ) * A280702 (A020639 (n + 1)).toNat).toNat

end

end A233570.P5098605218895696348

/-! ## A233570.P4922930421021002326

`A032742((n+1)*A324886(A020639(n+1)))`
-/

namespace A233570.P4922930421021002326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 ((n + 1 : ℤ) * A324886 (A020639 (n + 1)).toNat).toNat

end

end A233570.P4922930421021002326

/-!
# A233571: In balanced ternary notation, reverse digits of a(n) equals to -a(n).

The programs for A233571, there is no canonical definition to state claims against.
-/

/-! ## A233571.P3286713493984298814

`record[A106610(A233572(n+1))]`
-/

namespace A233571.P3286713493984298814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A233572 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233571.P3286713493984298814

/-! ## A233571.P15606460902230007065

`eq[n, -A134028(n)]`
-/

namespace A233571.P15606460902230007065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A134028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A233571.P15606460902230007065

/-! ## A233571.P18210393366775757706

`eq[A001489(n), A134028(n)]`
-/

namespace A233571.P18210393366775757706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233571.P18210393366775757706

/-! ## A233571.P2211224289080839819

`eq[A004488(n), A274107(n)]`
-/

namespace A233571.P2211224289080839819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274107 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233571.P2211224289080839819

/-! ## A233571.P17680449182580687294

`eq[n, A274107(A060372(n))]`
-/

namespace A233571.P17680449182580687294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274107 (A060372 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A233571.P17680449182580687294

/-! ## A233571.P7084774962775102487

`filter[A233572(n+1), A267208(#)]`
-/

namespace A233571.P7084774962775102487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A233571.P7084774962775102487

/-! ## A233571.P13531352050069090822

`eq[2*A001057(n), A134028(n)]`
-/

namespace A233571.P13531352050069090822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233571.P13531352050069090822

/-! ## A233571.P11761300869352034853

`eq[n, A134028(n)+A005843(n)]`
-/

namespace A233571.P11761300869352034853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134028 n + A005843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A233571.P11761300869352034853

/-! ## A233571.P823669052302035269

`eq[A117966(n)+n, A274107(n)]`
-/

namespace A233571.P823669052302035269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274107 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233571.P823669052302035269

/-! ## A233571.P4432752338017233316

`lt[(A134028(n)+n)², A000034(n)]`
-/

namespace A233571.P4432752338017233316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A134028 n + (n : ℤ)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A233571.P4432752338017233316

/-!
# A233572: In balanced ternary notation, if prepending same numbers of zeros, reverse digits of a(n) equals to -a(n).

The programs for A233572, there is no canonical definition to state claims against.
-/

/-! ## A233572.P13418099079526752770

`eq[n, -A160652(n)]`
-/

namespace A233572.P13418099079526752770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A160652 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A233572.P13418099079526752770

/-! ## A233572.P2618678647223993069

`eq[A001489(n), A160652(n)]`
-/

namespace A233572.P2618678647223993069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160652 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233572.P2618678647223993069

/-! ## A233572.P16031005719203907328

`eq[1, A160652(n)+A079097(n)]`
-/

namespace A233572.P16031005719203907328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160652 n + A079097 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A233572.P16031005719203907328

/-! ## A233572.P1037845435439449250

`eq[A160652(n)+n, A065363(n)]`
-/

namespace A233572.P1037845435439449250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160652 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233572.P1037845435439449250

/-! ## A233572.P14145567700812573647

`lt[(A160652(n)+n)², A055642(n)]`
-/

namespace A233572.P14145567700812573647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A160652 n + (n : ℤ)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A233572.P14145567700812573647

/-! ## A233572.P2524857414550238495

`eq[-A030102(A030102(n)), A134028(n)]`
-/

namespace A233572.P2524857414550238495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A030102 (A030102 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233572.P2524857414550238495

/-!
# A233573: Number of ways n can be partitioned as A233010(i)+A233572(j), where i,j >= 1.

The programs for A233573, there is no canonical definition to state claims against.
-/

/-! ## A233573.P14174199300618407044

`A331596(A017992(n+1))+A045827(A131355(n))`
-/

namespace A233573.P14174199300618407044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331596 (A017992 (n + 1)).toNat + A045827 (A131355 n).toNat

end

end A233573.P14174199300618407044

/-! ## A233573.P3238967718532787120

`A001221(A351420(n+3)+A000079(n))`
-/

namespace A233573.P3238967718532787120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A351420 (n + 3) + A000079 n).toNat

end

end A233573.P3238967718532787120

/-! ## A233573.P6387346165082349433

`A001221(A351420(n+3)+A247208(n+1))`
-/

namespace A233573.P6387346165082349433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A351420 (n + 3) + A247208 (n + 1)).toNat

end

end A233573.P6387346165082349433

/-! ## A233573.P9895570690068306836

`A324837(A257918(A284254(n+1))+A183207(n+1))`
-/

namespace A233573.P9895570690068306836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324837 (A257918 (A284254 (n + 1)).toNat + A183207 (n + 1)).toNat

end

end A233573.P9895570690068306836

/-! ## A233573.P12089194818010019928

`A322306(A024647(n)+3)`
-/

namespace A233573.P12089194818010019928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322306 (A024647 n + 3).toNat

end

end A233573.P12089194818010019928

/-!
# A233576: Numbers k such that k divides 1 + Sum_{j=1..k} prime(j)^18.

The programs for A233576, there is no canonical definition to state claims against.
-/

/-! ## A233576.P12110445744885565899

`A000720(A233577(n+1))`
-/

namespace A233576.P12110445744885565899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A233577 (n + 1)).toNat

end

end A233576.P12110445744885565899

/-! ## A233576.P2137446378992948786

`∑{d}[A233577(n+1), A061395(#)]`
-/

namespace A233576.P2137446378992948786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A233576.P2137446378992948786

/-! ## A233576.P6866902192232043906

`A061395(A233577(n+1)%A017510(n))`
-/

namespace A233576.P6866902192232043906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A233577 (n + 1)) (A017510 n)).toNat

end

end A233576.P6866902192232043906

/-! ## A233576.P395546406249704603

`A061395(or(A000035(n), A233577(n+1)))`
-/

namespace A233576.P395546406249704603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor (A000035 n) (A233577 (n + 1))).toNat

end

end A233576.P395546406249704603

/-! ## A233576.P5653351698395105290

`A061395(or(A010051(n+1), A233577(n+1)))`
-/

namespace A233576.P5653351698395105290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor (A010051 (n + 1)) (A233577 (n + 1))).toNat

end

end A233576.P5653351698395105290

/-! ## A233576.P12405619561612314122

`A061395(A233577(n+1))%A233577(A008574(n))`
-/

namespace A233576.P12405619561612314122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A233577 (n + 1)).toNat) (A233577 (A008574 n).toNat)

end

end A233576.P12405619561612314122

/-! ## A233576.P2849710175710793365

`A061395(2*A233577(n+1))`
-/

namespace A233576.P2849710175710793365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A233577 (n + 1)).toNat

end

end A233576.P2849710175710793365

/-!
# A233577: Prime(k), where k is such that (1+Sum_{i=1..k} prime(i)^18) / k is an integer.

The programs for A233577, there is no canonical definition to state claims against.
-/

/-! ## A233577.P1163488594857972272

`A001749(A233576(1+n))/4`
-/

namespace A233577.P1163488594857972272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (A233576 (1 + n)).toNat : ℚ) / 4

end

end A233577.P1163488594857972272

/-! ## A233577.P7080880809731443903

`A000040(A233576(n+1))`
-/

namespace A233577.P7080880809731443903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A233576 (n + 1)).toNat

end

end A233577.P7080880809731443903

/-! ## A233577.P14710240783116755500

`A008578(A233576(n+1)+1)`
-/

namespace A233577.P14710240783116755500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A233576 (n + 1) + 1).toNat

end

end A233577.P14710240783116755500

/-! ## A233577.P13065879257636003381

`A182986(A233576(n+1)+1)`
-/

namespace A233577.P13065879257636003381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A233576 (n + 1) + 1).toNat

end

end A233577.P13065879257636003381

/-! ## A233577.P6411321177662086599

`A158611(A233576(n+1)+2)`
-/

namespace A233577.P6411321177662086599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A233576 (n + 1) + 2).toNat

end

end A233577.P6411321177662086599

/-! ## A233577.P16062293755225697773

`∑{d}[A233576(n+1), A007444(#)]`
-/

namespace A233577.P16062293755225697773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A233577.P16062293755225697773

/-! ## A233577.P16544604745501417932

`A006093(A233576(floor(n/2)+floor((n+3)/2)))+1`
-/

namespace A233577.P16544604745501417932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A233576 (⌊(n : ℚ) / 2⌋ + ⌊(n + 3 : ℚ) / 2⌋).toNat).toNat + 1

end

end A233577.P16544604745501417932

/-! ## A233577.P16402517580651475652

`A006005(A233576(n+1))+A000007(n)`
-/

namespace A233577.P16402517580651475652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A233576 (n + 1)).toNat + A000007 n

end

end A233577.P16402517580651475652

/-! ## A233577.P7289309747309734354

`gcd(A000038(n), A273960(A233576(n+1)))`
-/

namespace A233577.P7289309747309734354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A273960 (A233576 (n + 1)).toNat)

end

end A233577.P7289309747309734354

/-! ## A233577.P8313793533483417089

`lcm(A020985(n), A273960(A233576(n+1)))`
-/

namespace A233577.P8313793533483417089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A273960 (A233576 (n + 1)).toNat)

end

end A233577.P8313793533483417089

/-! ## A233577.P4957639038138888680

`A219606(2*A233576(n+1))`
-/

namespace A233577.P4957639038138888680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219606 (2 * A233576 (n + 1)).toNat

end

end A233577.P4957639038138888680

/-!
# A233578: n >= 2 such that the denominator/6 of Bernoulli(n) is congruent to {1, 5, 7, 13 or 19} modulo 30.

The programs for A233578, the canonical program `A233578.P4142982616285713528` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233578 has offset 1).

The definition of A233578 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3018 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A233578.P7778525057392182993

`eq[6, dr(A288872(n))]`
-/

namespace A233578.P7778525057392182993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A288872 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233578.P7778525057392182993

namespace A233578

/-- `eq[6, dr(A288872(n))]` -/
def P7778525057392182993.Spec : Prop :=
  ∀ n, (P7778525057392182993.a n : ℤ) = A233578 (n + 1)

end A233578

/-! ## A233578.P4142982616285713528

`eq[3, dr(lcm(5, A027642(n)))]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A233578

/-- `eq[3, dr(lcm(5, A027642(n)))]` -/
def P4142982616285713528.Spec : Prop :=
  ∀ n, (P4142982616285713528.a n : ℤ) = A233578 (n + 1)

theorem P4142982616285713528.correct : P4142982616285713528.Spec := by
  intro n
  simp only [A233578, Nat.add_sub_cancel]

end A233578

/-! ## A233578.P6929916805941629692

`eq[A288872(n)%9, A040008(A008574(n))]`
-/

namespace A233578.P6929916805941629692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288872 n) 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040008 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233578.P6929916805941629692

namespace A233578

/-- `eq[A288872(n)%9, A040008(A008574(n))]` -/
def P6929916805941629692.Spec : Prop :=
  ∀ n, (P6929916805941629692.a n : ℤ) = A233578 (n + 1)

end A233578

/-! ## A233578.P4338715822697353248

`eq[A019426(n), A090629(A004525(n))]`
-/

namespace A233578.P4338715822697353248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090629 (A004525 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233578.P4338715822697353248

namespace A233578

/-- `eq[A019426(n), A090629(A004525(n))]` -/
def P4338715822697353248.Spec : Prop :=
  ∀ n, (P4338715822697353248.a n : ℤ) = A233578 (n + 1)

end A233578

/-! ## A233578.P9728960164629168439

`eq[A019426(n), A090629(A004526(n))]`
-/

namespace A233578.P9728960164629168439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090629 (A004526 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233578.P9728960164629168439

namespace A233578

/-- `eq[A019426(n), A090629(A004526(n))]` -/
def P9728960164629168439.Spec : Prop :=
  ∀ n, (P9728960164629168439.a n : ℤ) = A233578 (n + 1)

end A233578

/-! ## A233578.P12401199592644992433

`eq[A019428(n), A090629(A004525(n))]`
-/

namespace A233578.P12401199592644992433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090629 (A004525 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233578.P12401199592644992433

namespace A233578

/-- `eq[A019428(n), A090629(A004525(n))]` -/
def P12401199592644992433.Spec : Prop :=
  ∀ n, (P12401199592644992433.a n : ℤ) = A233578 (n + 1)

end A233578

/-! ## A233578.P4437764326710266105

`eq[A019428(n), A090629(A004526(n))]`
-/

namespace A233578.P4437764326710266105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090629 (A004526 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233578.P4437764326710266105

namespace A233578

/-- `eq[A019428(n), A090629(A004526(n))]` -/
def P4437764326710266105.Spec : Prop :=
  ∀ n, (P4437764326710266105.a n : ℤ) = A233578 (n + 1)

end A233578

/-! ## A233578.P5606031236243691089

`eq[A019429(n), A090629(A004525(n))]`
-/

namespace A233578.P5606031236243691089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090629 (A004525 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233578.P5606031236243691089

namespace A233578

/-- `eq[A019429(n), A090629(A004525(n))]` -/
def P5606031236243691089.Spec : Prop :=
  ∀ n, (P5606031236243691089.a n : ℤ) = A233578 (n + 1)

end A233578

/-! ## A233578.P5750497203912266564

`eq[A019429(n), A090629(A004526(n))]`
-/

namespace A233578.P5750497203912266564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090629 (A004526 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233578.P5750497203912266564

namespace A233578

/-- `eq[A019429(n), A090629(A004526(n))]` -/
def P5750497203912266564.Spec : Prop :=
  ∀ n, (P5750497203912266564.a n : ℤ) = A233578 (n + 1)

end A233578

/-! ## A233578.P1332852899181563589

`eq[A019426(n), A090629(A025480(n))]`
-/

namespace A233578.P1332852899181563589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090629 (A025480 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233578.P1332852899181563589

namespace A233578

/-- `eq[A019426(n), A090629(A025480(n))]` -/
def P1332852899181563589.Spec : Prop :=
  ∀ n, (P1332852899181563589.a n : ℤ) = A233578 (n + 1)

end A233578

/-! ## A233578.P6719782365501316221

`eq[A019428(n), A090629(A025480(n))]`
-/

namespace A233578.P6719782365501316221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090629 (A025480 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233578.P6719782365501316221

namespace A233578

/-- `eq[A019428(n), A090629(A025480(n))]` -/
def P6719782365501316221.Spec : Prop :=
  ∀ n, (P6719782365501316221.a n : ℤ) = A233578 (n + 1)

end A233578

/-! ## A233578.P1318622504176577776

`eq[A019429(n), A090629(A025480(n))]`
-/

namespace A233578.P1318622504176577776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090629 (A025480 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233578.P1318622504176577776

namespace A233578

/-- `eq[A019429(n), A090629(A025480(n))]` -/
def P1318622504176577776.Spec : Prop :=
  ∀ n, (P1318622504176577776.a n : ℤ) = A233578 (n + 1)

end A233578

/-! ## A233578.P7712995773626685661

`eq[A019426(n), A090629(A142150(n))]`
-/

namespace A233578.P7712995773626685661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090629 (A142150 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233578.P7712995773626685661

namespace A233578

/-- `eq[A019426(n), A090629(A142150(n))]` -/
def P7712995773626685661.Spec : Prop :=
  ∀ n, (P7712995773626685661.a n : ℤ) = A233578 (n + 1)

end A233578

/-! ## A233578.P131123023756628200

`eq[A090629(A004525(n)), A166333(n+1)]`
-/

namespace A233578.P131123023756628200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090629 (A004525 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233578.P131123023756628200

namespace A233578

/-- `eq[A090629(A004525(n)), A166333(n+1)]` -/
def P131123023756628200.Spec : Prop :=
  ∀ n, (P131123023756628200.a n : ℤ) = A233578 (n + 1)

end A233578

/-!
# A233579: Numbers n such that the denominator/6 of Bernoulli(n) is congruent to {11, 17, 23, 25 or 29} modulo 30.

The programs for A233579, the canonical program `A233579.P2841553801707049944` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233579 has offset 1).

The definition of A233579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1982 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A233579.P17974357809693495345

`eq[3, dr(A288872(n))]`
-/

namespace A233579.P17974357809693495345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A288872 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233579.P17974357809693495345

namespace A233579

/-- `eq[3, dr(A288872(n))]` -/
def P17974357809693495345.Spec : Prop :=
  ∀ n, (P17974357809693495345.a n : ℤ) = A233579 (n + 1)

end A233579

/-! ## A233579.P2841553801707049944

`eq[6, dr(lcm(5, A027642(n)))]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A233579

/-- `eq[6, dr(lcm(5, A027642(n)))]` -/
def P2841553801707049944.Spec : Prop :=
  ∀ n, (P2841553801707049944.a n : ℤ) = A233579 (n + 1)

theorem P2841553801707049944.correct : P2841553801707049944.Spec := by
  intro n
  simp only [A233579, Nat.add_sub_cancel]

end A233579

/-! ## A233579.P4848944834142772202

`eq[A288872(n)%9, A010702(n)]`
-/

namespace A233579.P4848944834142772202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288872 n) 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010702 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233579.P4848944834142772202

namespace A233579

/-- `eq[A288872(n)%9, A010702(n)]` -/
def P4848944834142772202.Spec : Prop :=
  ∀ n, (P4848944834142772202.a n : ℤ) = A233579 (n + 1)

end A233579

/-! ## A233579.P10562523574937006069

`2*lt[1, A090629(n)]`
-/

namespace A233579.P10562523574937006069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090629 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A233579.P10562523574937006069

namespace A233579

/-- `2*lt[1, A090629(n)]` -/
def P10562523574937006069.Spec : Prop :=
  ∀ n, (P10562523574937006069.a n : ℤ) = A233579 (n + 1)

end A233579

/-! ## A233579.P17603318047707257521

`record[(n+5)*A090629(n+5)]`
-/

namespace A233579.P17603318047707257521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) * A090629 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233579.P17603318047707257521

namespace A233579

/-- `record[(n+5)*A090629(n+5)]` -/
def P17603318047707257521.Spec : Prop :=
  ∀ n, P17603318047707257521.a n = A233579 (n + 1)

end A233579

/-! ## A233579.P18015073684769896001

`A005843(eq[2, A090629(n)])`
-/

namespace A233579.P18015073684769896001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233579.P18015073684769896001

namespace A233579

/-- `A005843(eq[2, A090629(n)])` -/
def P18015073684769896001.Spec : Prop :=
  ∀ n, P18015073684769896001.a n = A233579 (n + 1)

end A233579

/-! ## A233579.P15766228424119422263

`eq[2, A090629(A142150(n))]`
-/

namespace A233579.P15766228424119422263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090629 (A142150 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A233579.P15766228424119422263

namespace A233579

/-- `eq[2, A090629(A142150(n))]` -/
def P15766228424119422263.Spec : Prop :=
  ∀ n, (P15766228424119422263.a n : ℤ) = A233579 (n + 1)

end A233579

/-! ## A233579.P10731241666880803868

`A317108(eq[2, A090629(n)])`
-/

namespace A233579.P10731241666880803868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233579.P10731241666880803868

namespace A233579

/-- `A317108(eq[2, A090629(n)])` -/
def P10731241666880803868.Spec : Prop :=
  ∀ n, P10731241666880803868.a n = A233579 (n + 1)

end A233579

/-! ## A233579.P3470345519590820518

`A317440(eq[2, A090629(n)])`
-/

namespace A233579.P3470345519590820518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317440 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233579.P3470345519590820518

namespace A233579

/-- `A317440(eq[2, A090629(n)])` -/
def P3470345519590820518.Spec : Prop :=
  ∀ n, P3470345519590820518.a n = A233579 (n + 1)

end A233579

/-! ## A233579.P5999792172205999188

`eq[A085058(n), A090629(A004525(n))]`
-/

namespace A233579.P5999792172205999188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090629 (A004525 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233579.P5999792172205999188

namespace A233579

/-- `eq[A085058(n), A090629(A004525(n))]` -/
def P5999792172205999188.Spec : Prop :=
  ∀ n, (P5999792172205999188.a n : ℤ) = A233579 (n + 1)

end A233579

/-! ## A233579.P4343220241596585012

`eq[A085058(n), A090629(A025480(n))]`
-/

namespace A233579.P4343220241596585012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090629 (A025480 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233579.P4343220241596585012

namespace A233579

/-- `eq[A085058(n), A090629(A025480(n))]` -/
def P4343220241596585012.Spec : Prop :=
  ∀ n, (P4343220241596585012.a n : ℤ) = A233579 (n + 1)

end A233579

/-! ## A233579.P8123728373391921106

`eq[A020639(n+2), A090629(A004525(n))]`
-/

namespace A233579.P8123728373391921106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090629 (A004525 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233579.P8123728373391921106

namespace A233579

/-- `eq[A020639(n+2), A090629(A004525(n))]` -/
def P8123728373391921106.Spec : Prop :=
  ∀ n, (P8123728373391921106.a n : ℤ) = A233579 (n + 1)

end A233579

/-! ## A233579.P13598183403840615875

`eq[A020639(n+2), A090629(A004526(n))]`
-/

namespace A233579.P13598183403840615875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090629 (A004526 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233579.P13598183403840615875

namespace A233579

/-- `eq[A020639(n+2), A090629(A004526(n))]` -/
def P13598183403840615875.Spec : Prop :=
  ∀ n, (P13598183403840615875.a n : ℤ) = A233579 (n + 1)

end A233579

/-! ## A233579.P789189169907833198

`eq[3-A090629(A004525(n)), A019428(n)]`
-/

namespace A233579.P789189169907833198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A090629 (A004525 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233579.P789189169907833198

namespace A233579

/-- `eq[3-A090629(A004525(n)), A019428(n)]` -/
def P789189169907833198.Spec : Prop :=
  ∀ n, (P789189169907833198.a n : ℤ) = A233579 (n + 1)

end A233579

/-! ## A233579.P13203112028171759674

`eq[3-A090629(A004525(n)), A019429(n)]`
-/

namespace A233579.P13203112028171759674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A090629 (A004525 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233579.P13203112028171759674

namespace A233579

/-- `eq[3-A090629(A004525(n)), A019429(n)]` -/
def P13203112028171759674.Spec : Prop :=
  ∀ n, (P13203112028171759674.a n : ℤ) = A233579 (n + 1)

end A233579

/-! ## A233579.P10079669911179698069

`eq[3-A090629(A004526(n)), A019428(n)]`
-/

namespace A233579.P10079669911179698069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A090629 (A004526 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233579.P10079669911179698069

namespace A233579

/-- `eq[3-A090629(A004526(n)), A019428(n)]` -/
def P10079669911179698069.Spec : Prop :=
  ∀ n, (P10079669911179698069.a n : ℤ) = A233579 (n + 1)

end A233579

/-! ## A233579.P10439611490601413821

`eq[3-A090629(A004526(n)), A019429(n)]`
-/

namespace A233579.P10439611490601413821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A090629 (A004526 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233579.P10439611490601413821

namespace A233579

/-- `eq[3-A090629(A004526(n)), A019429(n)]` -/
def P10439611490601413821.Spec : Prop :=
  ∀ n, (P10439611490601413821.a n : ℤ) = A233579 (n + 1)

end A233579

/-! ## A233579.P5784176878298604382

`eq[3-A090629(A025480(n)), A019428(n)]`
-/

namespace A233579.P5784176878298604382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A090629 (A025480 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233579.P5784176878298604382

namespace A233579

/-- `eq[3-A090629(A025480(n)), A019428(n)]` -/
def P5784176878298604382.Spec : Prop :=
  ∀ n, (P5784176878298604382.a n : ℤ) = A233579 (n + 1)

end A233579

/-! ## A233579.P3830852910864477348

`eq[A090629(A004525(n))/2, A019426(n)]`
-/

namespace A233579.P3830852910864477348
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090629 (A004525 n).toNat : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A233579.P3830852910864477348

namespace A233579

/-- `eq[A090629(A004525(n))/2, A019426(n)]` -/
def P3830852910864477348.Spec : Prop :=
  ∀ n, (P3830852910864477348.a n : ℤ) = A233579 (n + 1)

end A233579

/-! ## A233579.P10928403926521241396

`eq[A090629(A004526(n))/2, A019426(n)]`
-/

namespace A233579.P10928403926521241396
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090629 (A004526 n).toNat : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A233579.P10928403926521241396

namespace A233579

/-- `eq[A090629(A004526(n))/2, A019426(n)]` -/
def P10928403926521241396.Spec : Prop :=
  ∀ n, (P10928403926521241396.a n : ℤ) = A233579 (n + 1)

end A233579

/-!
# A233581: a(n) = 2*a(n-1) - 3*a(n-2) + a(n-3), a(0) = 1, a(1) = 0, a(2) = -1.

The programs for A233581, the canonical program `A233581.P10310048074549456659` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233581 has offset 0).

The definition of A233581 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-3*a(n-2)+a(n-3)` (program `A233581.P10310048074549456659`, by `A233581.P10310048074549456659.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A233581.P579741221193852959

`ogf((1-2x+2x^2)/(1-2x+3x^2-x^3))`
-/

namespace A233581.P579741221193852959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2] [1, -2, 3, -1] n

end

end A233581.P579741221193852959

namespace A233581

/-- `ogf((1-2x+2x^2)/(1-2x+3x^2-x^3))` -/
def P579741221193852959.Spec : Prop :=
  ∀ n, P579741221193852959.a n = A233581 n

end A233581

/-! ## A233581.P10310048074549456659

`2*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=-1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A233581

/-- `2*a(n-1)-3*a(n-2)+a(n-3)` -/
def P10310048074549456659.Spec : Prop :=
  ∀ n, P10310048074549456659.a n = A233581 n

theorem P10310048074549456659.correct : P10310048074549456659.Spec := by
  intro n
  simp only [A233581]

end A233581

/-! ## A233581.P10022568608188702800

`A176971(floor(2*n²/(1+n))+n)`
-/

namespace A233581.P10022568608188702800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176971 (⌊(2 * n ^ 2 : ℚ) / (1 + n : ℚ)⌋ + (n : ℤ)).toNat

end

end A233581.P10022568608188702800

namespace A233581

/-- `A176971(floor(2*n²/(1+n))+n)` -/
def P10022568608188702800.Spec : Prop :=
  ∀ n, P10022568608188702800.a n = A233581 n

end A233581

/-!
# A233583: Coefficients of the generalized continued fraction expansion e = a(1) +a(1)/(a(2) +a(2)/(a(3) +a(3)/(a(4) +a(4)/....))).

The programs for A233583, the canonical program `A233583.P15026547221992958741` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233583 has offset 1).

The definition of A233583 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A233583.P15026547221992958741

`round(acot(n)+n)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A233583

/-- `round(acot(n)+n)` -/
def P15026547221992958741.Spec : Prop :=
  ∀ n, P15026547221992958741.a n = A233583 (n + 1)

theorem P15026547221992958741.correct : P15026547221992958741.Spec := by
  intro n
  simp only [A233583, Nat.add_sub_cancel]

end A233583

/-!
# A233584: Coefficients of the generalized continued fraction expansion sqrt(e) = a(1) +a(1)/(a(2) +a(2)/(a(3) +a(3)/(a(4) +a(4)/....))).

The programs for A233584, there is no canonical definition to state claims against.
-/

/-! ## A233584.P12874287812618757923

`A243854(A149868(n))`
-/

namespace A233584.P12874287812618757923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243854 (A149868 n).toNat

end

end A233584.P12874287812618757923

/-! ## A233584.P2817549223561136490

`A131061(A122921(n!))`
-/

namespace A233584.P2817549223561136490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131061 (A122921 (Nat.factorial n)).toNat

end

end A233584.P2817549223561136490

/-! ## A233584.P15287597967547229077

`A266222(A345990(n!))`
-/

namespace A233584.P15287597967547229077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266222 (A345990 (Nat.factorial n)).toNat

end

end A233584.P15287597967547229077

/-! ## A233584.P11397374894111939652

`A277227(floor(A006125(n)/A290384(n)))`
-/

namespace A233584.P11397374894111939652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 ⌊(A006125 n : ℚ) / (A290384 n : ℚ)⌋.toNat

end

end A233584.P11397374894111939652

/-!
# A233585: Coefficients of the generalized continued fraction expansion of the inverse of Euler constant, 1/gamma = a(1) +a(1)/(a(2) +a(2)/(a(3) +a(3)/(a(4) +a(4)/....))).

The programs for A233585, there is no canonical definition to state claims against.
-/

/-! ## A233585.P16227195276005136754

`A364925(A148693(n))`
-/

namespace A233585.P16227195276005136754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364925 (A148693 n).toNat

end

end A233585.P16227195276005136754

/-! ## A233585.P2843317653940783601

`A364925(A148694(n))`
-/

namespace A233585.P2843317653940783601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364925 (A148694 n).toNat

end

end A233585.P2843317653940783601

/-! ## A233585.P16717177781653713143

`A292583(p?[Δ[A323093(n)]])`
-/

namespace A233585.P16717177781653713143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323093 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292583 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A233585.P16717177781653713143

/-! ## A233585.P17930768381118657035

`A375603(A007632(n+1)+2)`
-/

namespace A233585.P17930768381118657035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375603 (A007632 (n + 1) + 2).toNat

end

end A233585.P17930768381118657035

/-! ## A233585.P3253027718638955625

`A087062(A001731(n)+A001384(n))`
-/

namespace A233585.P3253027718638955625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087062 (A001731 n + A001384 n).toNat

end

end A233585.P3253027718638955625

/-!
# A233586: Coefficients of the generalized continued fraction expansion of twice the Euler constant, 2*gamma = a(1) +a(1)/(a(2) +a(2)/(a(3) +a(3)/(a(4) +a(4)/....))).

The programs for A233586, there is no canonical definition to state claims against.
-/

/-! ## A233586.P1751900534440605494

`A327146(n)+A008458(A263256(n))`
-/

namespace A233586.P1751900534440605494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327146 n + A008458 (A263256 n).toNat

end

end A233586.P1751900534440605494

/-! ## A233586.P9179423906020158070

`A357847(2*(n+2))+A172471(A217032(3*n+2))`
-/

namespace A233586.P9179423906020158070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357847 (2 * (n + 2)) + A172471 (A217032 (3 * n + 2)).toNat

end

end A233586.P9179423906020158070

/-!
# A233587: Coefficients of the generalized continued fraction expansion sqrt(7) = a(1) +a(1)/(a(2) +a(2)/(a(3) +a(3)/(a(4) +a(4)/....))).

The programs for A233587, there is no canonical definition to state claims against.
-/

/-! ## A233587.P818678341068679203

`A093681(A095816(n))+∏{e}[n+1, #+1]`
-/

namespace A233587.P818678341068679203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093681 (A095816 n).toNat + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A233587.P818678341068679203

/-!
# A233592: Positive integers k such that the continued fraction expansion sqrt(k) = c(1) + c(1)/(c(2) + c(2)/(c(3) + c(3)/...)) is periodic.

The programs for A233592, the canonical program `A233592.P7488321416657803819` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233592 has offset 1).

The definition of A233592 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A233592.P7488321416657803819

`eq[1, floor(lcm(2*n, A053186(n))/(n+1))]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A233592

/-- `eq[1, floor(lcm(2*n, A053186(n))/(n+1))]` -/
def P7488321416657803819.Spec : Prop :=
  ∀ n, (P7488321416657803819.a n : ℤ) = A233592 (n + 1)

theorem P7488321416657803819.correct : P7488321416657803819.Spec := by
  intro n
  simp only [A233592, Nat.add_sub_cancel]

end A233592

/-! ## A233592.P14447972419806340534

`eq[lcm(2*n, A053186(n)), A004277(n)]`
-/

namespace A233592.P14447972419806340534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n : ℤ) (A053186 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A233592.P14447972419806340534

namespace A233592

/-- `eq[lcm(2*n, A053186(n)), A004277(n)]` -/
def P14447972419806340534.Spec : Prop :=
  ∀ n, (P14447972419806340534.a n : ℤ) = A233592 (n + 1)

end A233592

/-! ## A233592.P12971207612584956189

`∪[A117045(n+1), A324332(n+1)]`
-/

namespace A233592.P12971207612584956189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A233592.P12971207612584956189

namespace A233592

/-- `∪[A117045(n+1), A324332(n+1)]` -/
def P12971207612584956189.Spec : Prop :=
  ∀ n, (P12971207612584956189.a n : ℤ) = A233592 (n + 1)

end A233592

/-! ## A233592.P16550392116601557996

`record[A320773(n+1)%or(46, A186038(n))]`
-/

namespace A233592.P16550392116601557996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320773 (n + 1)) (Int.lor 46 (A186038 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233592.P16550392116601557996

namespace A233592

/-- `record[A320773(n+1)%or(46, A186038(n))]` -/
def P16550392116601557996.Spec : Prop :=
  ∀ n, P16550392116601557996.a n = A233592 (n + 1)

end A233592

/-! ## A233592.P2833718696530144096

`A320773(n+1)%A065505(n)`
-/

namespace A233592.P2833718696530144096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320773 (n + 1)) (A065505 n)

end

end A233592.P2833718696530144096

namespace A233592

/-- `A320773(n+1)%A065505(n)` -/
def P2833718696530144096.Spec : Prop :=
  ∀ n, P2833718696530144096.a n = A233592 (n + 1)

end A233592

/-!
# A233593: Positive integers k such that the continued fraction expansion sqrt(k) = c(1) + c(1)/(c(2) + c(2)/(c(3) + c(3)/....)) is aperiodic.

The programs for A233593, the canonical program `A233593.P5298576435529146964` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233593 has offset 1).

The definition of A233593 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A233593.P5298576435529146964

`lt[2*n, lcm(n, n-floor(sqrt(n))²)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A233593

/-- `lt[2*n, lcm(n, n-floor(sqrt(n))²)]` -/
def P5298576435529146964.Spec : Prop :=
  ∀ n, (P5298576435529146964.a n : ℤ) = A233593 (n + 1)

theorem P5298576435529146964.correct : P5298576435529146964.Spec := by
  intro n
  simp only [A233593, Nat.add_sub_cancel]

end A233593

/-! ## A233593.P18140290641288436928

`lt[n, lcm(n, A053186(n))/2]`
-/

namespace A233593.P18140290641288436928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) (A053186 n) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A233593.P18140290641288436928

namespace A233593

/-- `lt[n, lcm(n, A053186(n))/2]` -/
def P18140290641288436928.Spec : Prop :=
  ∀ n, (P18140290641288436928.a n : ℤ) = A233593 (n + 1)

end A233593

/-! ## A233593.P12964967190868750327

`eq[char[A233592(n+1)], A000122(n)]`
-/

namespace A233593.P12964967190868750327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233592 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A233593.P12964967190868750327

namespace A233593

/-- `eq[char[A233592(n+1)], A000122(n)]` -/
def P12964967190868750327.Spec : Prop :=
  ∀ n, (P12964967190868750327.a n : ℤ) = A233593 (n + 1)

end A233593

/-! ## A233593.P10052305491253932604

`eq[char[A233592(n+1)], A002448(n)]`
-/

namespace A233593.P10052305491253932604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233592 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A233593.P10052305491253932604

namespace A233593

/-- `eq[char[A233592(n+1)], A002448(n)]` -/
def P10052305491253932604.Spec : Prop :=
  ∀ n, (P10052305491253932604.a n : ℤ) = A233593 (n + 1)

end A233593

/-! ## A233593.P4742937371538946485

`eq[char[A233592(n+1)], A010052(n)]`
-/

namespace A233593.P4742937371538946485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233592 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A233593.P4742937371538946485

namespace A233593

/-- `eq[char[A233592(n+1)], A010052(n)]` -/
def P4742937371538946485.Spec : Prop :=
  ∀ n, (P4742937371538946485.a n : ℤ) = A233593 (n + 1)

end A233593

/-! ## A233593.P2762821177068257270

`eq[char[A233592(n+1)], A089810(n)]`
-/

namespace A233593.P2762821177068257270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233592 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089810 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A233593.P2762821177068257270

namespace A233593

/-- `eq[char[A233592(n+1)], A089810(n)]` -/
def P2762821177068257270.Spec : Prop :=
  ∀ n, (P2762821177068257270.a n : ℤ) = A233593 (n + 1)

end A233593

/-!
# A233594: Number of (n+2)X(n+2) 0..2 arrays with no increasing sequence of length 3 horizontally, vertically or antidiagonally downwards.

The programs for A233594, there is no canonical definition to state claims against.
-/

/-! ## A233594.P8278681459287270442

`A233602(∑[4*n]+1)`
-/

namespace A233594.P8278681459287270442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233602 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233594.P8278681459287270442

/-!
# A233595: Number of (n+2)X(1+2) 0..2 arrays with no increasing sequence of length 3 horizontally, vertically or antidiagonally downwards.

The programs for A233595, there is no canonical definition to state claims against.
-/

/-! ## A233595.P17918078433919624263

`A233602(∑[n+1])`
-/

namespace A233595.P17918078433919624263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233602 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233595.P17918078433919624263

/-! ## A233595.P9649958471895142762

`record[root(A233602(n+1), A094527(n))]`
-/

namespace A233595.P9649958471895142762
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233602 (n + 1) : ℝ) ^ (1 / (A094527 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233595.P9649958471895142762

/-! ## A233595.P9164696538251202695

`record[root(A233602(n+1), A140303(n))]`
-/

namespace A233595.P9164696538251202695
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233602 (n + 1) : ℝ) ^ (1 / (A140303 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233595.P9164696538251202695

/-! ## A233595.P17454793952910024482

`record[gcd(A025581(n), A233602(n+1))]`
-/

namespace A233595.P17454793952910024482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A233602 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233595.P17454793952910024482

/-! ## A233595.P8518163297432016640

`record[root(A233602(n+1), A055461(n+1))]`
-/

namespace A233595.P8518163297432016640
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233602 (n + 1) : ℝ) ^ (1 / (A055461 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233595.P8518163297432016640

/-!
# A233596: Number of (n+2)X(2+2) 0..2 arrays with no increasing sequence of length 3 horizontally, vertically or antidiagonally downwards.

The programs for A233596, there is no canonical definition to state claims against.
-/

/-! ## A233596.P16941046740979057638

`A233602(∑[n+2])`
-/

namespace A233596.P16941046740979057638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233602 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233596.P16941046740979057638

/-!
# A233597: Number of (n+2)X(3+2) 0..2 arrays with no increasing sequence of length 3 horizontally, vertically or antidiagonally downwards.

The programs for A233597, there is no canonical definition to state claims against.
-/

/-! ## A233597.P14808888212588513025

`A233602(eq[2, A193592(n)])`
-/

namespace A233597.P14808888212588513025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233602 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233597.P14808888212588513025

/-! ## A233597.P6328290526216555478

`A233602(A000124(n+3)-3)`
-/

namespace A233597.P6328290526216555478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233602 (A000124 (n + 3) - 3).toNat

end

end A233597.P6328290526216555478

/-!
# A233598: Number of (n+2)X(4+2) 0..2 arrays with no increasing sequence of length 3 horizontally, vertically or antidiagonally downwards.

The programs for A233598, there is no canonical definition to state claims against.
-/

/-! ## A233598.P13214054942481903606

`A233602(A027379(n+2))`
-/

namespace A233598.P13214054942481903606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233602 (A027379 (n + 2)).toNat

end

end A233598.P13214054942481903606

/-! ## A233598.P16100575288193269454

`A233602(eq[3, A025581(n)]+1)`
-/

namespace A233598.P16100575288193269454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233602 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A233598.P16100575288193269454

/-!
# A233599: Number of (n+2)X(5+2) 0..2 arrays with no increasing sequence of length 3 horizontally, vertically or antidiagonally downwards.

The programs for A233599, there is no canonical definition to state claims against.
-/

/-! ## A233599.P12045174621546603252

`A233602(Δ[A264443(n)])`
-/

namespace A233599.P12045174621546603252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233602 (f1 (n + 1) - f1 n).toNat

end

end A233599.P12045174621546603252

/-! ## A233599.P14733726378516686936

`A233602(A046691(n+3))`
-/

namespace A233599.P14733726378516686936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233602 (A046691 (n + 3)).toNat

end

end A233599.P14733726378516686936

/-! ## A233599.P6535541086706873832

`A233602(eq[4, A193592(n)])`
-/

namespace A233599.P6535541086706873832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233602 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233599.P6535541086706873832

/-! ## A233599.P13230220495794252038

`A233602(A052905(n+2)+1)`
-/

namespace A233599.P13230220495794252038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233602 (A052905 (n + 2) + 1).toNat

end

end A233599.P13230220495794252038

