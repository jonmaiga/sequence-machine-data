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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
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
import Seq.B001.C013
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
# A335400: Numbers m such that sigma(m)/isigma(m) > sigma(k)/isigma(k) for all k < m, where sigma(m) is the sum of divisors of m (A000203) and isigma(m) is the sum of infinitary divisors of m (A049417).

The programs for A335400, there is no canonical definition to state claims against.
-/

/-! ## A335400.P7134847771967550011

`record[A046523(A347703(n))²]`
-/

namespace A335400.P7134847771967550011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A347703 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335400.P7134847771967550011

/-! ## A335400.P13042294057346683071

`A278238(∪[A279248(2*n), A356062(n+2)])`
-/

namespace A335400.P13042294057346683071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279248 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356062 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278238 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A335400.P13042294057346683071

/-!
# A335401: a(n) is the smallest positive number such that the decimal digits of n*a(n) are all 0, 1, 2 or 3.

The programs for A335401, there is no canonical definition to state claims against.
-/

/-! ## A335401.P17236657268119809463

`A334914(n+1)/(n+1)`
-/

namespace A335401.P17236657268119809463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334914 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A335401.P17236657268119809463

/-! ## A335401.P11741661320350684681

`A185314(A109906(n+3)+1)`
-/

namespace A335401.P11741661320350684681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185314 (A109906 (n + 3) + 1).toNat

end

end A335401.P11741661320350684681

/-! ## A335401.P4127329873668252475

`A103514(A157006(n+1)+∏{p}[n+1, #])`
-/

namespace A335401.P4127329873668252475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103514 (A157006 (n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)).toNat

end

end A335401.P4127329873668252475

/-! ## A335401.P8143474611125303788

`A235791(A346920(n)+A329038(n))`
-/

namespace A335401.P8143474611125303788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235791 (A346920 n + A329038 n).toNat

end

end A335401.P8143474611125303788

/-! ## A335401.P15229887769935560558

`and(A227494(n), A244232(A308381(n)))`
-/

namespace A335401.P15229887769935560558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A227494 n) (A244232 (A308381 n).toNat)

end

end A335401.P15229887769935560558

/-!
# A335402: Numbers m such that the only normal integer partition of m whose run-lengths are a palindrome is (1)^m.

The programs for A335402, the canonical program `A335402.P11597769619180646528` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335402 has offset 1).

The definition of A335402 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335402.P18248520121494584557

`A158611(n+1)+char[3]`
-/

namespace A335402.P18248520121494584557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A335402.P18248520121494584557

namespace A335402

/-- `A158611(n+1)+char[3]` -/
def P18248520121494584557.Spec : Prop :=
  ∀ n, P18248520121494584557.a n = A335402 (n + 1)

end A335402

/-! ## A335402.P11597769619180646528

`A185013(n)+A158611(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A335402

/-- `A185013(n)+A158611(n+1)` -/
def P11597769619180646528.Spec : Prop :=
  ∀ n, P11597769619180646528.a n = A335402 (n + 1)

theorem P11597769619180646528.correct : P11597769619180646528.Spec := by
  intro n
  simp only [A335402, Nat.add_sub_cancel]

end A335402

/-! ## A335402.P10188630571063307854

`A046022(n+1)-A130716(n)`
-/

namespace A335402.P10188630571063307854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1) - A130716 n

end

end A335402.P10188630571063307854

namespace A335402

/-- `A046022(n+1)-A130716(n)` -/
def P10188630571063307854.Spec : Prop :=
  ∀ n, P10188630571063307854.a n = A335402 (n + 1)

theorem P10188630571063307854.correct : P10188630571063307854.Spec := by
  intro n
  simp only [A335402, Nat.add_sub_cancel, A335402.P10188630571063307854.a, A335402.P11597769619180646528.a, A046022, A046022.P4558940758189190591.a, A130716, A130716.P13605837186844265742.a, A158611, A158611.P9275629407611603775.a, A185013, A185013.P16152479727158586121.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A179184, A179184.P13010429749477365881.a, A185114, A185114.P15848654474986757887.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A335402

/-! ## A335402.P14221550003113880341

`A008578(n+1)+A046022(n+1)-A046022(n+2)`
-/

namespace A335402.P14221550003113880341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + (A046022 (n + 1) - A046022 (n + 2))

end

end A335402.P14221550003113880341

namespace A335402

/-- `A008578(n+1)+A046022(n+1)-A046022(n+2)` -/
def P14221550003113880341.Spec : Prop :=
  ∀ n, P14221550003113880341.a n = A335402 (n + 1)

end A335402

/-! ## A335402.P16059061843501111566

`eq[1, A001222(floor(sqrt(n²+9)))]`
-/

namespace A335402.P16059061843501111566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.sqrt (n ^ 2 + 9))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335402.P16059061843501111566

namespace A335402

/-- `eq[1, A001222(floor(sqrt(n²+9)))]` -/
def P16059061843501111566.Spec : Prop :=
  ∀ n, (P16059061843501111566.a n : ℤ) = A335402 (n + 1)

end A335402

/-! ## A335402.P16742426405222219275

`eq[2, A000005(floor(sqrt(n²+9)))]`
-/

namespace A335402.P16742426405222219275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.sqrt (n ^ 2 + 9))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335402.P16742426405222219275

namespace A335402

/-- `eq[2, A000005(floor(sqrt(n²+9)))]` -/
def P16742426405222219275.Spec : Prop :=
  ∀ n, (P16742426405222219275.a n : ℤ) = A335402 (n + 1)

end A335402

/-! ## A335402.P4376818124339857648

`∪[A164901(n+1), A171577(n+1)]`
-/

namespace A335402.P4376818124339857648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335402.P4376818124339857648

namespace A335402

/-- `∪[A164901(n+1), A171577(n+1)]` -/
def P4376818124339857648.Spec : Prop :=
  ∀ n, (P4376818124339857648.a n : ℤ) = A335402 (n + 1)

end A335402

/-! ## A335402.P8139199600754310881

`∪[A109853(n), A171577(n+1)]`
-/

namespace A335402.P8139199600754310881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109853 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335402.P8139199600754310881

namespace A335402

/-- `∪[A109853(n), A171577(n+1)]` -/
def P8139199600754310881.Spec : Prop :=
  ∀ n, (P8139199600754310881.a n : ℤ) = A335402 (n + 1)

end A335402

/-! ## A335402.P7707902776962647290

`eq[A107463(n), A281098(n)]`
-/

namespace A335402.P7707902776962647290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281098 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335402.P7707902776962647290

namespace A335402

/-- `eq[A107463(n), A281098(n)]` -/
def P7707902776962647290.Spec : Prop :=
  ∀ n, (P7707902776962647290.a n : ℤ) = A335402 (n + 1)

end A335402

/-! ## A335402.P17792090560050070856

`eq[A072480(n), A073424(n)]`
-/

namespace A335402.P17792090560050070856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335402.P17792090560050070856

namespace A335402

/-- `eq[A072480(n), A073424(n)]` -/
def P17792090560050070856.Spec : Prop :=
  ∀ n, (P17792090560050070856.a n : ℤ) = A335402 (n + 1)

end A335402

/-! ## A335402.P8272633080086877152

`record[∑{p}[2*n, C(#, n-1)]]`
-/

namespace A335402.P8272633080086877152
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p ((n : ℤ) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335402.P8272633080086877152

namespace A335402

/-- `record[∑{p}[2*n, C(#, n-1)]]` -/
def P8272633080086877152.Spec : Prop :=
  ∀ n, (P8272633080086877152.a n : ℤ) = A335402 (n + 1)

end A335402

/-! ## A335402.P13935440583683670947

`lt[∏{p}[2*n, n-2-#], 2]`
-/

namespace A335402.P13935440583683670947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((n : ℤ) - 2 - (p : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A335402.P13935440583683670947

namespace A335402

/-- `lt[∏{p}[2*n, n-2-#], 2]` -/
def P13935440583683670947.Spec : Prop :=
  ∀ n, (P13935440583683670947.a n : ℤ) = A335402 (n + 1)

end A335402

/-! ## A335402.P1159257535526203038

`eq[1, A317086(n)]`
-/

namespace A335402.P1159257535526203038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335402.P1159257535526203038

namespace A335402

/-- `eq[1, A317086(n)]` -/
def P1159257535526203038.Spec : Prop :=
  ∀ n, (P1159257535526203038.a n : ℤ) = A335402 (n + 1)

end A335402

/-! ## A335402.P1928877252075907188

`eq[1, A395097(n)]`
-/

namespace A335402.P1928877252075907188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395097 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335402.P1928877252075907188

namespace A335402

/-- `eq[1, A395097(n)]` -/
def P1928877252075907188.Spec : Prop :=
  ∀ n, (P1928877252075907188.a n : ℤ) = A335402 (n + 1)

end A335402

/-! ## A335402.P18429426987841944512

`eq[A092976(n), A130156(n)]`
-/

namespace A335402.P18429426987841944512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130156 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335402.P18429426987841944512

namespace A335402

/-- `eq[A092976(n), A130156(n)]` -/
def P18429426987841944512.Spec : Prop :=
  ∀ n, (P18429426987841944512.a n : ℤ) = A335402 (n + 1)

end A335402

/-! ## A335402.P5049190997610307845

`eq[A082024(n), A185013(n)]`
-/

namespace A335402.P5049190997610307845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082024 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185013 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335402.P5049190997610307845

namespace A335402

/-- `eq[A082024(n), A185013(n)]` -/
def P5049190997610307845.Spec : Prop :=
  ∀ n, (P5049190997610307845.a n : ℤ) = A335402 (n + 1)

end A335402

/-! ## A335402.P17193431480190715221

`eq[A123110(n), A167865(n)]`
-/

namespace A335402.P17193431480190715221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123110 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335402.P17193431480190715221

namespace A335402

/-- `eq[A123110(n), A167865(n)]` -/
def P17193431480190715221.Spec : Prop :=
  ∀ n, (P17193431480190715221.a n : ℤ) = A335402 (n + 1)

end A335402

/-! ## A335402.P11529478727338393378

`eq[A130156(n), A225244(n)]`
-/

namespace A335402.P11529478727338393378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335402.P11529478727338393378

namespace A335402

/-- `eq[A130156(n), A225244(n)]` -/
def P11529478727338393378.Spec : Prop :=
  ∀ n, (P11529478727338393378.a n : ℤ) = A335402 (n + 1)

end A335402

/-! ## A335402.P6407464724154170114

`eq[A082024(n), A351254(n)]`
-/

namespace A335402.P6407464724154170114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082024 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335402.P6407464724154170114

namespace A335402

/-- `eq[A082024(n), A351254(n)]` -/
def P6407464724154170114.Spec : Prop :=
  ∀ n, (P6407464724154170114.a n : ℤ) = A335402 (n + 1)

end A335402

/-! ## A335402.P3137994859501310559

`eq[A167865(n), A266246(n)]`
-/

namespace A335402.P3137994859501310559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266246 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335402.P3137994859501310559

namespace A335402

/-- `eq[A167865(n), A266246(n)]` -/
def P3137994859501310559.Spec : Prop :=
  ∀ n, (P3137994859501310559.a n : ℤ) = A335402 (n + 1)

end A335402

/-!
# A335403: If n = Product_{i=1..k} p_i^e_i then a(n) = Sum_{i=1..k} e_i * prime(p_i).

The programs for A335403, the canonical program `A335403.P11540456487582481370` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335403 has offset 1).

The definition of A335403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335403.P11540456487582481370

`∑{p}[n+1, val(n+1, #)*A000040(#)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A335403

/-- `∑{p}[n+1, val(n+1, #)*A000040(#)]` -/
def P11540456487582481370.Spec : Prop :=
  ∀ n, P11540456487582481370.a n = A335403 (n + 1)

theorem P11540456487582481370.correct : P11540456487582481370.Spec := by
  intro n
  simp only [A335403, Nat.add_sub_cancel]

end A335403

/-! ## A335403.P569853688817070240

`∑{d}[n+1, A304251(A014963(#))]`
-/

namespace A335403.P569853688817070240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A304251 (A014963 d).toNat

end

end A335403.P569853688817070240

namespace A335403

/-- `∑{d}[n+1, A304251(A014963(#))]` -/
def P569853688817070240.Spec : Prop :=
  ∀ n, P569853688817070240.a n = A335403 (n + 1)

end A335403

/-! ## A335403.P8089184627052150955

`A001414(A064988(n+1))`
-/

namespace A335403.P8089184627052150955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A064988 (n + 1)).toNat

end

end A335403.P8089184627052150955

namespace A335403

/-- `A001414(A064988(n+1))` -/
def P8089184627052150955.Spec : Prop :=
  ∀ n, P8089184627052150955.a n = A335403 (n + 1)

end A335403

/-! ## A335403.P16540927206869031635

`∑{d}[A064988(n+1), A120007(#)]`
-/

namespace A335403.P16540927206869031635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A120007 d

end

end A335403.P16540927206869031635

namespace A335403

/-- `∑{d}[A064988(n+1), A120007(#)]` -/
def P16540927206869031635.Spec : Prop :=
  ∀ n, P16540927206869031635.a n = A335403 (n + 1)

end A335403

/-! ## A335403.P16236815257192741664

`A366840(4*A064988(n+1))`
-/

namespace A335403.P16236815257192741664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366840 (4 * A064988 (n + 1)).toNat

end

end A335403.P16236815257192741664

namespace A335403

/-- `A366840(4*A064988(n+1))` -/
def P16236815257192741664.Spec : Prop :=
  ∀ n, P16236815257192741664.a n = A335403 (n + 1)

end A335403

/-! ## A335403.P250430351749848329

`∑{e}[A181821(n+1), A006450(#)]`
-/

namespace A335403.P250430351749848329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A006450 (Nat.factorization (f1 n).natAbs p)

end

end A335403.P250430351749848329

namespace A335403

/-- `∑{e}[A181821(n+1), A006450(#)]` -/
def P250430351749848329.Spec : Prop :=
  ∀ n, P250430351749848329.a n = A335403 (n + 1)

end A335403

/-! ## A335403.P11030370604814275018

`∑{e}[A181821(n+1), A000040(A000040(#))]`
-/

namespace A335403.P11030370604814275018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A335403.P11030370604814275018

namespace A335403

/-- `∑{e}[A181821(n+1), A000040(A000040(#))]` -/
def P11030370604814275018.Spec : Prop :=
  ∀ n, P11030370604814275018.a n = A335403 (n + 1)

end A335403

/-!
# A335404: Numbers k such that the k-th composition in standard order (A066099) has the same product as sum.

The programs for A335404, there is no canonical definition to state claims against.
-/

/-! ## A335404.P2218087824132193402

`eq[A029837(n+1), A124758(n)]`
-/

namespace A335404.P2218087824132193402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335404.P2218087824132193402

/-! ## A335404.P5930211628254163243

`eq[A000523(2*n+1), A124758(n)]`
-/

namespace A335404.P5930211628254163243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335404.P5930211628254163243

/-! ## A335404.P4751338143091829943

`eq[A070939(n+1), A124758(n+1)]+1`
-/

namespace A335404.P4751338143091829943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A335404.P4751338143091829943

/-! ## A335404.P3454820105935725201

`eq[A001222(A062383(n)), A124758(n)]`
-/

namespace A335404.P3454820105935725201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A062383 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335404.P3454820105935725201

/-! ## A335404.P1337782180110091228

`eq[A011782(A124758(n)), A053644(n)]`
-/

namespace A335404.P1337782180110091228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A124758 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335404.P1337782180110091228

/-! ## A335404.P12261064517638093657

`eq[A124758(A062383(n)+1), A124758(n)]`
-/

namespace A335404.P12261064517638093657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (A062383 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335404.P12261064517638093657

/-! ## A335404.P11707565172574288076

`eq[A070939(n)%A326675(n+1), A124758(n)]`
-/

namespace A335404.P11707565172574288076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 n) (A326675 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335404.P11707565172574288076

/-!
# A335407: Number of anti-run permutations of the prime indices of n!.

The programs for A335407, there is no canonical definition to state claims against.
-/

/-! ## A335407.P13364757491117044446

`A325617(n)-A335459(n)`
-/

namespace A335407.P13364757491117044446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325617 n - A335459 n

end

end A335407.P13364757491117044446

/-! ## A335407.P10967916807742939410

`A318762(A325508(n))-A335459(n)`
-/

namespace A335407.P10967916807742939410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318762 (A325508 n).toNat - A335459 n

end

end A335407.P10967916807742939410

/-!
# A335410: Primes prime(k) such that 2*(prime(k)^2 - prime(k-1)^2) is a perfect square.

The programs for A335410, there is no canonical definition to state claims against.
-/

/-! ## A335410.P7070099740319171098

`record[A006530((15-A057561(n+1))²+2)]`
-/

namespace A335410.P7070099740319171098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((15 - A057561 (n + 1)) ^ 2 + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335410.P7070099740319171098

/-! ## A335410.P1990048953432581756

`record[A006530(((A049822(n+1)-1)*A011653(n)+4)²+2)]`
-/

namespace A335410.P1990048953432581756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (((A049822 (n + 1) - 1) * A011653 n + 4) ^ 2 + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335410.P1990048953432581756

/-!
# A335411: a(n) is the number of vertices formed by n-secting the angles of an equilateral triangle.

The programs for A335411, the canonical program `A335411.P15936402942259514379` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335411 has offset 1).

The definition of A335411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335411.P15936402942259514379

`ogf((3+4x+11x^2+24x^4+24x^6+24x^8-24x^9+45x^10+20x^11-11x^12)/(1-x-x^2+x^3-x^10+x^11+x^12-x^13))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A335411

/-- `ogf((3+4x+11x^2+24x^4+24x^6+24x^8-24x^9+45x^10+20x^11-11x^12)/(1-x-x^2+x^3-x^10+x^11+x^12-x^13))` -/
def P15936402942259514379.Spec : Prop :=
  ∀ n, P15936402942259514379.a n = A335411 (n + 1)

theorem P15936402942259514379.correct : P15936402942259514379.Spec := by
  intro n
  simp only [A335411, Nat.add_sub_cancel]

end A335411

/-! ## A335411.P12776093789675650367

`A335412(n+1)+1-A277402(n+1)`
-/

namespace A335411.P12776093789675650367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335412 (n + 1) + (1 - A277402 (n + 1))

end

end A335411.P12776093789675650367

namespace A335411

/-- `A335412(n+1)+1-A277402(n+1)` -/
def P12776093789675650367.Spec : Prop :=
  ∀ n, P12776093789675650367.a n = A335411 (n + 1)

end A335411

/-! ## A335411.P9205167698339543600

`2*A277402(n+1)-A028896(n)+1`
-/

namespace A335411.P9205167698339543600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277402 (n + 1) - A028896 n + 1

end

end A335411.P9205167698339543600

namespace A335411

/-- `2*A277402(n+1)-A028896(n)+1` -/
def P9205167698339543600.Spec : Prop :=
  ∀ n, P9205167698339543600.a n = A335411 (n + 1)

end A335411

/-! ## A335411.P6782422715131285110

`2*(A277402(n+1)-A045943(n))+1`
-/

namespace A335411.P6782422715131285110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A277402 (n + 1) - A045943 n) + 1

end

end A335411.P6782422715131285110

namespace A335411

/-- `2*(A277402(n+1)-A045943(n))+1` -/
def P6782422715131285110.Spec : Prop :=
  ∀ n, P6782422715131285110.a n = A335411 (n + 1)

end A335411

/-! ## A335411.P3753798832335719238

`A335412(n+1)+1-(A335412(n+1)+A028896(n))/3`
-/

namespace A335411.P3753798832335719238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335412 (n + 1) + 1 : ℚ) - (A335412 (n + 1) + A028896 n : ℚ) / 3

end

end A335411.P3753798832335719238

namespace A335411

/-- `A335412(n+1)+1-(A335412(n+1)+A028896(n))/3` -/
def P3753798832335719238.Spec : Prop :=
  ∀ n, P3753798832335719238.a n = (A335411 (n + 1) : ℚ)

end A335411

/-! ## A335411.P6894239015283132569

`A335412(n+1)+1-(A335412(n+1)/3+2*A000217(n))`
-/

namespace A335411.P6894239015283132569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335412 (n + 1) + 1 : ℚ) - ((A335412 (n + 1) : ℚ) / 3 + (2 * A000217 n : ℚ))

end

end A335411.P6894239015283132569

namespace A335411

/-- `A335412(n+1)+1-(A335412(n+1)/3+2*A000217(n))` -/
def P6894239015283132569.Spec : Prop :=
  ∀ n, P6894239015283132569.a n = (A335411 (n + 1) : ℚ)

end A335411

/-! ## A335411.P8470709677406788497

`or(1, A059009(A277402(n+1)-A045943(n)))`
-/

namespace A335411.P8470709677406788497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A059009 (A277402 (n + 1) - A045943 n).toNat)

end

end A335411.P8470709677406788497

namespace A335411

/-- `or(1, A059009(A277402(n+1)-A045943(n)))` -/
def P8470709677406788497.Spec : Prop :=
  ∀ n, P8470709677406788497.a n = A335411 (n + 1)

end A335411

/-! ## A335411.P8150958686530369309

`or(1, A059010(A277402(n+1)-A045943(n)))`
-/

namespace A335411.P8150958686530369309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A059010 (A277402 (n + 1) - A045943 n).toNat)

end

end A335411.P8150958686530369309

namespace A335411

/-- `or(1, A059010(A277402(n+1)-A045943(n)))` -/
def P8150958686530369309.Spec : Prop :=
  ∀ n, P8150958686530369309.a n = A335411 (n + 1)

end A335411

/-! ## A335411.P17433852047733927479

`A005408(A277402(n+1)-A045943(n))`
-/

namespace A335411.P17433852047733927479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A277402 (n + 1) - A045943 n).toNat

end

end A335411.P17433852047733927479

namespace A335411

/-- `A005408(A277402(n+1)-A045943(n))` -/
def P17433852047733927479.Spec : Prop :=
  ∀ n, P17433852047733927479.a n = A335411 (n + 1)

end A335411

/-! ## A335411.P16510009995236437783

`A004273(A277402(n+1)+1-A045943(n))`
-/

namespace A335411.P16510009995236437783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A277402 (n + 1) + (1 - A045943 n)).toNat

end

end A335411.P16510009995236437783

namespace A335411

/-- `A004273(A277402(n+1)+1-A045943(n))` -/
def P16510009995236437783.Spec : Prop :=
  ∀ n, P16510009995236437783.a n = A335411 (n + 1)

end A335411

/-!
# A335412: a(n) is the number of edges formed by n-secting the angles of an equilateral triangle.

The programs for A335412, the canonical program `A335412.P4400567639467645084` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335412 has offset 1).

The definition of A335412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335412.P4400567639467645084

`ogf((3+9x+24x^2+6x^3+42x^4+6x^5+42x^6+6x^7+42x^8-30x^9+75x^10+33x^11-18x^12)/(1-x-x^2+x^3-x^10+x^11+x^12-x^13))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A335412

/-- `ogf((3+9x+24x^2+6x^3+42x^4+6x^5+42x^6+6x^7+42x^8-30x^9+75x^10+33x^11-18x^12)/(1-x-x^2+x^3-x^10+x^11+x^12-x^13))` -/
def P4400567639467645084.Spec : Prop :=
  ∀ n, P4400567639467645084.a n = A335412 (n + 1)

theorem P4400567639467645084.correct : P4400567639467645084.Spec := by
  intro n
  simp only [A335412, Nat.add_sub_cancel]

end A335412

/-! ## A335412.P5735327210133168466

`3*(A277402(n+1)-A002378(n))`
-/

namespace A335412.P5735327210133168466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A277402 (n + 1) - A002378 n)

end

end A335412.P5735327210133168466

namespace A335412

/-- `3*(A277402(n+1)-A002378(n))` -/
def P5735327210133168466.Spec : Prop :=
  ∀ n, P5735327210133168466.a n = A335412 (n + 1)

end A335412

/-! ## A335412.P10889319935244554856

`3*A277402(n+1)-A028896(n)`
-/

namespace A335412.P10889319935244554856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A277402 (n + 1) - A028896 n

end

end A335412.P10889319935244554856

namespace A335412

/-- `3*A277402(n+1)-A028896(n)` -/
def P10889319935244554856.Spec : Prop :=
  ∀ n, P10889319935244554856.a n = A335412 (n + 1)

end A335412

/-! ## A335412.P14403816620023871684

`A277402(n+1)+A335411(n+1)-1`
-/

namespace A335412.P14403816620023871684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277402 (n + 1) + (A335411 (n + 1) - 1)

end

end A335412.P14403816620023871684

namespace A335412

/-- `A277402(n+1)+A335411(n+1)-1` -/
def P14403816620023871684.Spec : Prop :=
  ∀ n, P14403816620023871684.a n = A335412 (n + 1)

end A335412

/-! ## A335412.P17669634060721766656

`3*(A000217(n)+A277402(n+1)-A045943(n))`
-/

namespace A335412.P17669634060721766656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A000217 n + (A277402 (n + 1) - A045943 n))

end

end A335412.P17669634060721766656

namespace A335412

/-- `3*(A000217(n)+A277402(n+1)-A045943(n))` -/
def P17669634060721766656.Spec : Prop :=
  ∀ n, P17669634060721766656.a n = A335412 (n + 1)

end A335412

/-! ## A335412.P17735726503826760520

`A277402(n+1)+A185048(A335411(n+1))`
-/

namespace A335412.P17735726503826760520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277402 (n + 1) + A185048 (A335411 (n + 1)).toNat

end

end A335412.P17735726503826760520

namespace A335412

/-- `A277402(n+1)+A185048(A335411(n+1))` -/
def P17735726503826760520.Spec : Prop :=
  ∀ n, P17735726503826760520.a n = A335412 (n + 1)

end A335412

/-! ## A335412.P6395398206139617655

`A045943(n)+A008486(A277402(n+1)-A045943(n))`
-/

namespace A335412.P6395398206139617655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n + A008486 (A277402 (n + 1) - A045943 n).toNat

end

end A335412.P6395398206139617655

namespace A335412

/-- `A045943(n)+A008486(A277402(n+1)-A045943(n))` -/
def P6395398206139617655.Spec : Prop :=
  ∀ n, P6395398206139617655.a n = A335412 (n + 1)

end A335412

/-! ## A335412.P8408666326785980195

`A277402(n+1)+A005843(A277402(n+1)-A045943(n))`
-/

namespace A335412.P8408666326785980195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277402 (n + 1) + A005843 (A277402 (n + 1) - A045943 n).toNat

end

end A335412.P8408666326785980195

namespace A335412

/-- `A277402(n+1)+A005843(A277402(n+1)-A045943(n))` -/
def P8408666326785980195.Spec : Prop :=
  ∀ n, P8408666326785980195.a n = A335412 (n + 1)

end A335412

/-! ## A335412.P12856260938959090617

`A008486(A277402(n+1)-A002378(n))`
-/

namespace A335412.P12856260938959090617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A277402 (n + 1) - A002378 n).toNat

end

end A335412.P12856260938959090617

namespace A335412

/-- `A008486(A277402(n+1)-A002378(n))` -/
def P12856260938959090617.Spec : Prop :=
  ∀ n, P12856260938959090617.a n = A335412 (n + 1)

end A335412

/-! ## A335412.P17263406201703638317

`A008585(A277402(n+1)-A002378(n))`
-/

namespace A335412.P17263406201703638317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A277402 (n + 1) - A002378 n).toNat

end

end A335412.P17263406201703638317

namespace A335412

/-- `A008585(A277402(n+1)-A002378(n))` -/
def P17263406201703638317.Spec : Prop :=
  ∀ n, P17263406201703638317.a n = A335412 (n + 1)

end A335412

/-!
# A335413: Irregular table read by rows: T(n,k) = number of k-sided polygons formed by n-secting the angles of an equilateral triangle for k >= 3.

The programs for A335413, there is no canonical definition to state claims against.
-/

/-! ## A335413.P12344021838050027941

`A356119(A090106(n+1))`
-/

namespace A335413.P12344021838050027941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356119 (A090106 (n + 1)).toNat

end

end A335413.P12344021838050027941

/-! ## A335413.P4308941716902759925

`A356119(n+1)%A356142(n+2)`
-/

namespace A335413.P4308941716902759925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356119 (n + 1)) (A356142 (n + 2))

end

end A335413.P4308941716902759925

/-! ## A335413.P7199626775511716140

`A356119(n+1)+A000038(A290824(n))`
-/

namespace A335413.P7199626775511716140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356119 (n + 1) + A000038 (A290824 n).toNat

end

end A335413.P7199626775511716140

/-! ## A335413.P5875540409107901305

`A356119(n+1)%A195942(A357008(n))`
-/

namespace A335413.P5875540409107901305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356119 (n + 1)) (A195942 (A357008 n).toNat)

end

end A335413.P5875540409107901305

/-! ## A335413.P1246512376052769084

`A356119(n+1)+A000007(A060735(n+1))`
-/

namespace A335413.P1246512376052769084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356119 (n + 1) + A000007 (A060735 (n + 1)).toNat

end

end A335413.P1246512376052769084

/-!
# A335418: Largest odd side of primitive triples for integer-sided triangles that have two perpendicular medians, the triples being ordered by increasing perimeter.

The programs for A335418, there is no canonical definition to state claims against.
-/

/-! ## A335418.P8679539641872006436

`A335035(n+1)-(A335273(n+1)+A335036(n+1))`
-/

namespace A335418.P8679539641872006436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335035 (n + 1) - (A335273 (n + 1) + A335036 (n + 1))

end

end A335418.P8679539641872006436

/-! ## A335418.P18425817491841164052

`A335347(n+1)+A335348(n+1)-A335273(n+1)`
-/

namespace A335418.P18425817491841164052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335347 (n + 1) + (A335348 (n + 1) - A335273 (n + 1))

end

end A335418.P18425817491841164052

/-! ## A335418.P5240151068763864260

`A335034(3*(n+1))+A335347(n+1)-A335273(n+1)`
-/

namespace A335418.P5240151068763864260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335034 (3 * (n + 1)) + (A335347 (n + 1) - A335273 (n + 1))

end

end A335418.P5240151068763864260

/-! ## A335418.P15831271332446148118

`A335034(3*(n+1))+A335034(3*n+2)-A335273(n+1)`
-/

namespace A335418.P15831271332446148118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335034 (3 * (n + 1)) + (A335034 (3 * n + 2) - A335273 (n + 1))

end

end A335418.P15831271332446148118

/-!
# A335419: Integers m such that every group of order m is not simple.

The programs for A335419, there is no canonical definition to state claims against.
-/

/-! ## A335419.P557506686053114574

`A018252(n+1)-Δ[A011558(A223620(n+1))]`
-/

namespace A335419.P557506686053114574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (A223620 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - (f1 (n + 1) - f1 n)

end

end A335419.P557506686053114574

/-! ## A335419.P16442908035660095994

`A141468(n+2)-Δ[A011558(A223620(n+1))]`
-/

namespace A335419.P16442908035660095994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (A223620 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2) - (f1 (n + 1) - f1 n)

end

end A335419.P16442908035660095994

/-! ## A335419.P4013015222334490138

`A018252(n+1)+Δ[A025435(A152751(n))]`
-/

namespace A335419.P4013015222334490138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (A152751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + (f1 (n + 1) - f1 n)

end

end A335419.P4013015222334490138

/-! ## A335419.P9656336542105724259

`xor(A018252(n+1), A280710(A290348(n+1)))`
-/

namespace A335419.P9656336542105724259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A018252 (n + 1)) (A280710 (A290348 (n + 1)).toNat)

end

end A335419.P9656336542105724259

/-! ## A335419.P3831764345155221523

`A018252(n+1)+A014189(A090854(n))`
-/

namespace A335419.P3831764345155221523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + A014189 (A090854 n).toNat

end

end A335419.P3831764345155221523

/-!
# A335420: a(n) = A000120(A163511(n)).

The programs for A335420, the canonical program `A335420.P3300100389546647521` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335420 has offset 0).

The definition of A335420 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A335420.P3300100389546647521

`A000120(A163511(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A335420

/-- `A000120(A163511(n))` -/
def P3300100389546647521.Spec : Prop :=
  ∀ n, P3300100389546647521.a n = A335420 n

theorem P3300100389546647521.correct : P3300100389546647521.Spec := by
  intro n
  simp only [A335420]

end A335420

/-! ## A335420.P16422297823790975798

`A001222(A335422(n))`
-/

namespace A335420.P16422297823790975798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A335422 n).toNat

end

end A335420.P16422297823790975798

namespace A335420

/-- `A001222(A335422(n))` -/
def P16422297823790975798.Spec : Prop :=
  ∀ n, P16422297823790975798.a n = A335420 n

end A335420

/-! ## A335420.P11232015371550373679

`A295894(xor(2*n, A003817(n)))`
-/

namespace A335420.P11232015371550373679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295894 (Int.xor (2 * n : ℤ) (A003817 n)).toNat

end

end A335420.P11232015371550373679

namespace A335420

/-- `A295894(xor(2*n, A003817(n)))` -/
def P11232015371550373679.Spec : Prop :=
  ∀ n, P11232015371550373679.a n = A335420 n

end A335420

/-! ## A335420.P4218289553631897780

`A295894(xor(A003817(n), A004277(n)))`
-/

namespace A335420.P4218289553631897780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295894 (Int.xor (A003817 n) (A004277 n)).toNat

end

end A335420.P4218289553631897780

namespace A335420

/-- `A295894(xor(A003817(n), A004277(n)))` -/
def P4218289553631897780.Spec : Prop :=
  ∀ n, P4218289553631897780.a n = A335420 n

end A335420

/-! ## A335420.P13556313676764327853

`A322867(A253565(n))`
-/

namespace A335420.P13556313676764327853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322867 (A253565 n).toNat

end

end A335420.P13556313676764327853

namespace A335420

/-- `A322867(A253565(n))` -/
def P13556313676764327853.Spec : Prop :=
  ∀ n, P13556313676764327853.a n = A335420 n

end A335420

/-! ## A335420.P2328420618499741144

`A001222(A278222(A163511(2*n)))`
-/

namespace A335420.P2328420618499741144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278222 (A163511 (2 * n)).toNat).toNat

end

end A335420.P2328420618499741144

namespace A335420

/-- `A001222(A278222(A163511(2*n)))` -/
def P2328420618499741144.Spec : Prop :=
  ∀ n, P2328420618499741144.a n = A335420 n

end A335420

/-! ## A335420.P11547517388504289607

`A000005(A001316(A163511(n))/2)`
-/

namespace A335420.P11547517388504289607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A001316 (A163511 n).toNat : ℚ) / 2)).toNat

end

end A335420.P11547517388504289607

namespace A335420

/-- `A000005(A001316(A163511(n))/2)` -/
def P11547517388504289607.Spec : Prop :=
  ∀ n, P11547517388504289607.a n = A335420 n

end A335420

/-! ## A335420.P1359787870109379668

`∑{d}[A001316(A163511(n)), A037834(#)]`
-/

namespace A335420.P1359787870109379668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A163511 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A037834 d

end

end A335420.P1359787870109379668

namespace A335420

/-- `∑{d}[A001316(A163511(n)), A037834(#)]` -/
def P1359787870109379668.Spec : Prop :=
  ∀ n, P1359787870109379668.a n = A335420 n

end A335420

/-! ## A335420.P12550401295145533017

`∑{e}[A335422(n), #]`
-/

namespace A335420.P12550401295145533017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335422 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A335420.P12550401295145533017

namespace A335420

/-- `∑{e}[A335422(n), #]` -/
def P12550401295145533017.Spec : Prop :=
  ∀ n, (P12550401295145533017.a n : ℤ) = A335420 n

end A335420

/-! ## A335420.P210063078138910396

`A048881(2*A163511(n))`
-/

namespace A335420.P210063078138910396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * A163511 n).toNat

end

end A335420.P210063078138910396

namespace A335420

/-- `A048881(2*A163511(n))` -/
def P210063078138910396.Spec : Prop :=
  ∀ n, P210063078138910396.a n = A335420 n

end A335420

/-! ## A335420.P15415044340401502463

`A000120(A364297(2*n))`
-/

namespace A335420.P15415044340401502463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A364297 (2 * n)).toNat

end

end A335420.P15415044340401502463

namespace A335420

/-- `A000120(A364297(2*n))` -/
def P15415044340401502463.Spec : Prop :=
  ∀ n, P15415044340401502463.a n = A335420 n

end A335420

/-! ## A335420.P15186650341854798798

`A000120(A332213(A332214(n)))`
-/

namespace A335420.P15186650341854798798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A332213 (A332214 n).toNat).toNat

end

end A335420.P15186650341854798798

namespace A335420

/-- `A000120(A332213(A332214(n)))` -/
def P15186650341854798798.Spec : Prop :=
  ∀ n, P15186650341854798798.a n = A335420 n

end A335420

/-! ## A335420.P6228069388021901008

`A048881(A163511(n)+A163511(n))`
-/

namespace A335420.P6228069388021901008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A163511 n + A163511 n).toNat

end

end A335420.P6228069388021901008

namespace A335420

/-- `A048881(A163511(n)+A163511(n))` -/
def P6228069388021901008.Spec : Prop :=
  ∀ n, P6228069388021901008.a n = A335420 n

end A335420

/-! ## A335420.P15300107128287576285

`A279345(A279342(A279338(A279342(n))))`
-/

namespace A335420.P15300107128287576285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279345 (A279342 (A279338 (A279342 n).toNat).toNat).toNat

end

end A335420.P15300107128287576285

namespace A335420

/-- `A279345(A279342(A279338(A279342(n))))` -/
def P15300107128287576285.Spec : Prop :=
  ∀ n, P15300107128287576285.a n = A335420 n

end A335420

/-! ## A335420.P1488325621389578332

`A279346(A279344(A279338(A279342(2*n))))`
-/

namespace A335420.P1488325621389578332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279346 (A279344 (A279338 (A279342 (2 * n)).toNat).toNat).toNat

end

end A335420.P1488325621389578332

namespace A335420

/-- `A279346(A279344(A279338(A279342(2*n))))` -/
def P1488325621389578332.Spec : Prop :=
  ∀ n, P1488325621389578332.a n = A335420 n

end A335420

/-! ## A335420.P12858281243762853879

`A254044(A245612(n))`
-/

namespace A335420.P12858281243762853879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254044 (A245612 n).toNat

end

end A335420.P12858281243762853879

namespace A335420

/-- `A254044(A245612(n))` -/
def P12858281243762853879.Spec : Prop :=
  ∀ n, P12858281243762853879.a n = A335420 n

end A335420

/-!
# A335421: Lexicographically earliest infinite sequence such that a(i) = a(j) => A046523(A335422(i)) = A046523(A335422(j)) for all i, j >= 0.

The programs for A335421, there is no canonical definition to state claims against.
-/

/-! ## A335421.P7358528069638322560

`A024698(A103391(n+1)%A138025(n+1))`
-/

namespace A335421.P7358528069638322560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024698 (Int.tmod (A103391 (n + 1)) (A138025 (n + 1))).toNat

end

end A335421.P7358528069638322560

/-! ## A335421.P8689667135575286460

`A055980(A000032(A227140(n)))`
-/

namespace A335421.P8689667135575286460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055980 (A000032 (A227140 n).toNat).toNat

end

end A335421.P8689667135575286460

/-! ## A335421.P13583657693022005138

`A134021(A000045(sqrt(A191871(n))))`
-/

namespace A335421.P13583657693022005138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 (A000045 (SequenceMachineLib.roundAway (Real.sqrt (A191871 n : ℝ))).toNat).toNat

end

end A335421.P13583657693022005138

/-! ## A335421.P11598400834479975216

`A336160(Δ[A007664(n)]²*A028310(n))`
-/

namespace A335421.P11598400834479975216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336160 ((f1 (n + 1) - f1 n) ^ 2 * A028310 n).toNat

end

end A335421.P11598400834479975216

/-! ## A335421.P4760383691848719438

`∏{e}[A000079(n), A336160(#)]`
-/

namespace A335421.P4760383691848719438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A336160 (Nat.factorization (f1 n).natAbs p)

end

end A335421.P4760383691848719438

/-!
# A335422: a(n) = A005940(1+A163511(n)).

The programs for A335422, the canonical program `A335422.P5576709600895955365` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335422 has offset 0).

The definition of A335422 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A335422.P5576709600895955365

`A005940(1+A163511(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A335422

/-- `A005940(1+A163511(n))` -/
def P5576709600895955365.Spec : Prop :=
  ∀ n, P5576709600895955365.a n = A335422 n

theorem P5576709600895955365.correct : P5576709600895955365.Spec := by
  intro n
  simp only [A335422]

end A335422

/-! ## A335422.P2456151195915088979

`A322863(A253565(n))`
-/

namespace A335422.P2456151195915088979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322863 (A253565 n).toNat

end

end A335422.P2456151195915088979

namespace A335422

/-- `A322863(A253565(n))` -/
def P2456151195915088979.Spec : Prop :=
  ∀ n, P2456151195915088979.a n = A335422 n

end A335422

/-! ## A335422.P8030195682874143391

`A005940(A364258(n)+1+n)`
-/

namespace A335422.P8030195682874143391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A364258 n + 1 + (n : ℤ)).toNat

end

end A335422.P8030195682874143391

namespace A335422

/-- `A005940(A364258(n)+1+n)` -/
def P8030195682874143391.Spec : Prop :=
  ∀ n, P8030195682874143391.a n = A335422 n

theorem P8030195682874143391.correct : P8030195682874143391.Spec := by
  intro n
  simp only [A335422, Nat.add_sub_cancel, A335422.P8030195682874143391.a, A335422.P5576709600895955365.a, A005940, A005940.P5942875842694471387.a, A163511, A163511.P5635496813650871695.a, A364258, A364258.P6786196179042320049.a, A122111, A122111.P18124015185857335041.a, A145342, A145342.P11180459690303212781.a, A253563, A253563.P8520361847049590329.a, A003557, A003557.P6364735403900941810.a, A057335, A057335.P1378643245781663048.a, A064989, A064989.P13349672914146769936.a, A105560, A105560.P10934841406439867276.a, A145341, A145341.P17834554394848515737.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A030101, A030101.P16184294017372777612.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A335422

/-! ## A335422.P1020472035388072703

`A163511(A054429(A163511(n)))`
-/

namespace A335422.P1020472035388072703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A054429 (A163511 n).toNat).toNat

end

end A335422.P1020472035388072703

namespace A335422

/-- `A163511(A054429(A163511(n)))` -/
def P1020472035388072703.Spec : Prop :=
  ∀ n, P1020472035388072703.a n = A335422 n

end A335422

/-! ## A335422.P2652499038296886167

`A005940(A332808(A332817(n))+1)`
-/

namespace A335422.P2652499038296886167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A332808 (A332817 n).toNat + 1).toNat

end

end A335422.P2652499038296886167

namespace A335422

/-- `A005940(A332808(A332817(n))+1)` -/
def P2652499038296886167.Spec : Prop :=
  ∀ n, P2652499038296886167.a n = A335422 n

end A335422

/-! ## A335422.P14699302993680941013

`A279338(A279344(A279338(A279342(n))))`
-/

namespace A335422.P14699302993680941013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279338 (A279344 (A279338 (A279342 n).toNat).toNat).toNat

end

end A335422.P14699302993680941013

namespace A335422

/-- `A279338(A279344(A279338(A279342(n))))` -/
def P14699302993680941013.Spec : Prop :=
  ∀ n, P14699302993680941013.a n = A335422 n

end A335422

/-! ## A335422.P12927220724265906312

`A366275(A057889(A054429(A366275(A057889(n)))))`
-/

namespace A335422.P12927220724265906312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366275 (A057889 (A054429 (A366275 (A057889 n).toNat).toNat).toNat).toNat

end

end A335422.P12927220724265906312

namespace A335422

/-- `A366275(A057889(A054429(A366275(A057889(n)))))` -/
def P12927220724265906312.Spec : Prop :=
  ∀ n, P12927220724265906312.a n = A335422 n

end A335422

/-! ## A335422.P12762404163309358736

`A250246(A252753(A250246(A252755(n))))`
-/

namespace A335422.P12762404163309358736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (A252753 (A250246 (A252755 n).toNat).toNat).toNat

end

end A335422.P12762404163309358736

namespace A335422

/-- `A250246(A252753(A250246(A252755(n))))` -/
def P12762404163309358736.Spec : Prop :=
  ∀ n, P12762404163309358736.a n = A335422 n

end A335422

/-! ## A335422.P4227280217342393826

`A108548(A332815(A108548(A332817(n))))`
-/

namespace A335422.P4227280217342393826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (A332815 (A108548 (A332817 n).toNat).toNat).toNat

end

end A335422.P4227280217342393826

namespace A335422

/-- `A108548(A332815(A108548(A332817(n))))` -/
def P4227280217342393826.Spec : Prop :=
  ∀ n, P4227280217342393826.a n = A335422 n

end A335422

/-! ## A335422.P8068151861686638756

`A279338(A279344(A064989(A163511(2*n+1))))`
-/

namespace A335422.P8068151861686638756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279338 (A279344 (A064989 (A163511 (2 * n + 1)).toNat).toNat).toNat

end

end A335422.P8068151861686638756

namespace A335422

/-- `A279338(A279344(A064989(A163511(2*n+1))))` -/
def P8068151861686638756.Spec : Prop :=
  ∀ n, P8068151861686638756.a n = A335422 n

end A335422

/-!
# A335423: a(n) = A005940(1+A248663(n)).

The programs for A335423, the canonical program `A335423.P2092863953169735259` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335423 has offset 1).

The definition of A335423 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A248663, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A335423.P2092863953169735259

`A005940(1+A248663(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A335423

/-- `A005940(1+A248663(n+1))` -/
def P2092863953169735259.Spec : Prop :=
  ∀ n, P2092863953169735259.a n = A335423 (n + 1)

theorem P2092863953169735259.correct : P2092863953169735259.Spec := by
  intro n
  simp only [A335423, Nat.add_sub_cancel]

end A335423

/-! ## A335423.P7566286795322340678

`A005940(1+A048675(A007913(n+1)))`
-/

namespace A335423.P7566286795322340678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (1 + A048675 (A007913 (n + 1)).toNat).toNat

end

end A335423.P7566286795322340678

namespace A335423

/-- `A005940(1+A048675(A007913(n+1)))` -/
def P7566286795322340678.Spec : Prop :=
  ∀ n, P7566286795322340678.a n = A335423 (n + 1)

end A335423

/-! ## A335423.P16240327246998197249

`A347120(Δ[A069891(n)])`
-/

namespace A335423.P16240327246998197249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347120 (f1 (n + 1) - f1 n).toNat

end

end A335423.P16240327246998197249

namespace A335423

/-- `A347120(Δ[A069891(n)])` -/
def P16240327246998197249.Spec : Prop :=
  ∀ n, P16240327246998197249.a n = A335423 (n + 1)

end A335423

/-! ## A335423.P3427119520169906380

`A347120(A007913(n+1))`
-/

namespace A335423.P3427119520169906380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347120 (A007913 (n + 1)).toNat

end

end A335423.P3427119520169906380

namespace A335423

/-- `A347120(A007913(n+1))` -/
def P3427119520169906380.Spec : Prop :=
  ∀ n, P3427119520169906380.a n = A335423 (n + 1)

end A335423

/-! ## A335423.P2019054146408521226

`A347120((n+1)/A008833(n+1))`
-/

namespace A335423.P2019054146408521226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347120 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008833 (n + 1) : ℚ))).toNat

end

end A335423.P2019054146408521226

namespace A335423

/-- `A347120((n+1)/A008833(n+1))` -/
def P2019054146408521226.Spec : Prop :=
  ∀ n, P2019054146408521226.a n = A335423 (n + 1)

end A335423

/-! ## A335423.P516763554919254059

`A347120((n+1)/A000188(n+1)²)`
-/

namespace A335423.P516763554919254059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347120 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000188 (n + 1) ^ 2 : ℚ))).toNat

end

end A335423.P516763554919254059

namespace A335423

/-- `A347120((n+1)/A000188(n+1)²)` -/
def P516763554919254059.Spec : Prop :=
  ∀ n, P516763554919254059.a n = A335423 (n + 1)

end A335423

/-! ## A335423.P4250235600567405388

`A347120(A069891(n+1)-A069891(n))`
-/

namespace A335423.P4250235600567405388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347120 (A069891 (n + 1) - A069891 n).toNat

end

end A335423.P4250235600567405388

namespace A335423

/-- `A347120(A069891(n+1)-A069891(n))` -/
def P4250235600567405388.Spec : Prop :=
  ∀ n, P4250235600567405388.a n = A335423 (n + 1)

end A335423

/-! ## A335423.P16110731734284905585

`A347120((n+1)/A000290(A000188(n+1)))`
-/

namespace A335423.P16110731734284905585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347120 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000290 (A000188 (n + 1)).toNat : ℚ))).toNat

end

end A335423.P16110731734284905585

namespace A335423

/-- `A347120((n+1)/A000290(A000188(n+1)))` -/
def P16110731734284905585.Spec : Prop :=
  ∀ n, P16110731734284905585.a n = A335423 (n + 1)

end A335423

/-! ## A335423.P5261705124281327674

`A347120(A117811(2*n+1))`
-/

namespace A335423.P5261705124281327674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347120 (A117811 (2 * n + 1)).toNat

end

end A335423.P5261705124281327674

namespace A335423

/-- `A347120(A117811(2*n+1))` -/
def P5261705124281327674.Spec : Prop :=
  ∀ n, P5261705124281327674.a n = A335423 (n + 1)

end A335423

/-! ## A335423.P7050070000373905110

`A347120(A015052(A117811(n+1+n)))`
-/

namespace A335423.P7050070000373905110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347120 (A015052 (A117811 (n + 1 + n)).toNat).toNat

end

end A335423.P7050070000373905110

namespace A335423

/-- `A347120(A015052(A117811(n+1+n)))` -/
def P7050070000373905110.Spec : Prop :=
  ∀ n, P7050070000373905110.a n = A335423 (n + 1)

end A335423

/-! ## A335423.P2768290477295609654

`A347120(A019554(A053165((n+1)²)))`
-/

namespace A335423.P2768290477295609654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347120 (A019554 (A053165 ((n + 1) ^ 2)).toNat).toNat

end

end A335423.P2768290477295609654

namespace A335423

/-- `A347120(A019554(A053165((n+1)²)))` -/
def P2768290477295609654.Spec : Prop :=
  ∀ n, P2768290477295609654.a n = A335423 (n + 1)

end A335423

/-! ## A335423.P7677306815069111572

`A000188(A332449(A007913(A000188(A000290(n+1)))))`
-/

namespace A335423.P7677306815069111572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A332449 (A007913 (A000188 (A000290 (n + 1)).toNat).toNat).toNat).toNat

end

end A335423.P7677306815069111572

namespace A335423

/-- `A000188(A332449(A007913(A000188(A000290(n+1)))))` -/
def P7677306815069111572.Spec : Prop :=
  ∀ n, P7677306815069111572.a n = A335423 (n + 1)

end A335423

/-!
# A335424: Lexicographically earliest infinite sequence such that a(i) = a(j) => A046523(A335423(i)) = A046523(A335423(j)) for all i, j >= 1.

The programs for A335424, there is no canonical definition to state claims against.
-/

/-! ## A335424.P6971257157058515794

`A322868(A007913(n+1))`
-/

namespace A335424.P6971257157058515794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322868 (A007913 (n + 1)).toNat

end

end A335424.P6971257157058515794

/-! ## A335424.P8757649868045009628

`A322868(sqrt(A055491(n+1)))`
-/

namespace A335424.P8757649868045009628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322868 (SequenceMachineLib.roundAway (Real.sqrt (A055491 (n + 1) : ℝ))).toNat

end

end A335424.P8757649868045009628

/-! ## A335424.P270422687626400689

`A322868((n+1)/A008833(n+1))`
-/

namespace A335424.P270422687626400689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322868 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008833 (n + 1) : ℚ))).toNat

end

end A335424.P270422687626400689

/-! ## A335424.P7448793555135466661

`A322868(gcd(n+1, A056135(n+1)))`
-/

namespace A335424.P7448793555135466661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322868 (Int.gcd (n + 1 : ℤ) (A056135 (n + 1)))

end

end A335424.P7448793555135466661

/-! ## A335424.P12433859739009587516

`A322868(A055491(n+1))`
-/

namespace A335424.P12433859739009587516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322868 (A055491 (n + 1)).toNat

end

end A335424.P12433859739009587516

/-! ## A335424.P15851141067765350749

`A101296(A335423(n+1))%A127957(A119431(n+1))`
-/

namespace A335424.P15851141067765350749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101296 (A335423 (n + 1)).toNat) (A127957 (A119431 (n + 1)).toNat)

end

end A335424.P15851141067765350749

/-! ## A335424.P15613874934241985229

`A181819(A335423(n+1))%A326150(A326139(n+1))`
-/

namespace A335424.P15613874934241985229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181819 (A335423 (n + 1)).toNat) (A326150 (A326139 (n + 1)).toNat)

end

end A335424.P15613874934241985229

/-! ## A335424.P17760867838805051150

`A101296(A335423(n+1))+A007814(A030665(n+1))`
-/

namespace A335424.P17760867838805051150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A335423 (n + 1)).toNat + A007814 (A030665 (n + 1)).toNat

end

end A335424.P17760867838805051150

/-! ## A335424.P5389098001969581519

`A181819(A335423(n+1))%A016825(A347079(n))`
-/

namespace A335424.P5389098001969581519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181819 (A335423 (n + 1)).toNat) (A016825 (A347079 n).toNat)

end

end A335424.P5389098001969581519

/-! ## A335424.P5272315967552115922

`A286622(A248663(n+1))`
-/

namespace A335424.P5272315967552115922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286622 (A248663 (n + 1)).toNat

end

end A335424.P5272315967552115922

/-!
# A335425: Lexicographically earliest infinite sequence such that a(i) = a(j) => A000188(i) = A000188(j) and A335424(i) = A335424(j) for all i, j >= 1.

The programs for A335425, there is no canonical definition to state claims against.
-/

/-! ## A335425.P13491464033469210098

`A046951(A244884(n))+∑{e}[n+1, #]`
-/

namespace A335425.P13491464033469210098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A244884 n).toNat + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A335425.P13491464033469210098

/-! ## A335425.P4355415850195359430

`A348940(A055588(n))+∑{e}[n+1, #]`
-/

namespace A335425.P4355415850195359430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348940 (A055588 n).toNat + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A335425.P4355415850195359430

/-! ## A335425.P14730871238281998833

`A299701(n+1)+A285006(A209874(n))`
-/

namespace A335425.P14730871238281998833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299701 (n + 1) + A285006 (A209874 n).toNat

end

end A335425.P14730871238281998833

/-! ## A335425.P13701693127457792207

`A323079(n+1)-A303837(A320054(n))`
-/

namespace A335425.P13701693127457792207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323079 (n + 1) - A303837 (A320054 n).toNat

end

end A335425.P13701693127457792207

/-! ## A335425.P779238672510712226

`A369050(n+1)-A183152(A079205(n+1))`
-/

namespace A335425.P779238672510712226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369050 (n + 1) - A183152 (A079205 (n + 1)).toNat

end

end A335425.P779238672510712226

/-!
# A335426: a(1) = 0; thereafter a(2^(2^k)) = 0 for k > 0, and for other even numbers n, a(n) = 1+a(n/2), and for odd numbers n, a(n) = 2*a(A064989(n)).

The programs for A335426, there is no canonical definition to state claims against.
-/

/-! ## A335426.P16071625908459756613

`A048675(n+1)%A071044(A253564(n+1))`
-/

namespace A335426.P16071625908459756613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048675 (n + 1)) (A071044 (A253564 (n + 1)).toNat)

end

end A335426.P16071625908459756613

/-! ## A335426.P10750234912018660633

`A248663(n+1)+A175099(A300830(n+1))`
-/

namespace A335426.P10750234912018660633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (n + 1) + A175099 (A300830 (n + 1)).toNat

end

end A335426.P10750234912018660633

/-! ## A335426.P1731649179500168692

`A275962(A293214(n+1))+A248663(n+1)`
-/

namespace A335426.P1731649179500168692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275962 (A293214 (n + 1)).toNat + A248663 (n + 1)

end

end A335426.P1731649179500168692

/-! ## A335426.P7927932696227279404

`A248663(n+1)+A036875(A323507(n))`
-/

namespace A335426.P7927932696227279404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (n + 1) + A036875 (A323507 n).toNat

end

end A335426.P7927932696227279404

/-! ## A335426.P6428936099583689410

`∑{d}[n+1, A297108(#)]%A154133((n+1)/A008833(n+1))`
-/

namespace A335426.P6428936099583689410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), A297108 d) (A154133 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008833 (n + 1) : ℚ))).toNat)

end

end A335426.P6428936099583689410

/-!
# A335427: a(1) = 0; for k >= 2, a(prime(k)) = 0, a(k^2) = 2 * a(k); otherwise a(n) = a(A334870(n)) + 1.

The programs for A335427, there is no canonical definition to state claims against.
-/

/-! ## A335427.P4269372120417237722

`and(A325781(3*n+4)+n, A304793(n+1))`
-/

namespace A335427.P4269372120417237722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A325781 (3 * n + 4) + (n : ℤ)) (A304793 (n + 1))

end

end A335427.P4269372120417237722

/-! ## A335427.P454265069197653555

`and(A265527(A004767(n)), A277011(n))`
-/

namespace A335427.P454265069197653555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A265527 (A004767 n).toNat) (A277011 n)

end

end A335427.P454265069197653555

/-! ## A335427.P13693716370281850062

`A001221(gcd(A099307(n+1), A290073(n)))`
-/

namespace A335427.P13693716370281850062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A099307 (n + 1)) (A290073 n))

end

end A335427.P13693716370281850062

/-! ## A335427.P1113121986155779559

`A352514((n+1)²/∏{p}[n+1, #]+2^floor(log2(n+1))-1)`
-/

namespace A335427.P1113121986155779559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352514 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) + ((2 ^ Nat.log 2 (n + 1) : ℤ) - 1 : ℚ))).toNat

end

end A335427.P1113121986155779559

/-!
# A335428: Prime exponent of the first Fermi-Dirac factor (number of form p^(2^k), A050376) reached, when starting from n and iterating with A334870, with a(1) = 0.

The programs for A335428, the canonical program `A335428.P259196799183802329` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335428 has offset 1).

The definition of A335428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335428.P6724048385381701716

`A020639(A013599(n))-A112227(A317946(n+1))`
-/

namespace A335428.P6724048385381701716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A013599 n).toNat - A112227 (A317946 (n + 1)).toNat

end

end A335428.P6724048385381701716

namespace A335428

/-- `A020639(A013599(n))-A112227(A317946(n+1))` -/
def P6724048385381701716.Spec : Prop :=
  ∀ n, P6724048385381701716.a n = A335428 (n + 1)

end A335428

/-! ## A335428.P259196799183802329

`A020639(A002618(n+1))-A112227(A317946(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A335428

/-- `A020639(A002618(n+1))-A112227(A317946(n+1))` -/
def P259196799183802329.Spec : Prop :=
  ∀ n, P259196799183802329.a n = A335428 (n + 1)

theorem P259196799183802329.correct : P259196799183802329.Spec := by
  intro n
  simp only [A335428, Nat.add_sub_cancel]

end A335428

/-! ## A335428.P13455086700380921283

`A020639(A000132(n))-A112227(A317946(n+1))`
-/

namespace A335428.P13455086700380921283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000132 n).toNat - A112227 (A317946 (n + 1)).toNat

end

end A335428.P13455086700380921283

namespace A335428

/-- `A020639(A000132(n))-A112227(A317946(n+1))` -/
def P13455086700380921283.Spec : Prop :=
  ∀ n, P13455086700380921283.a n = A335428 (n + 1)

end A335428

/-! ## A335428.P16639625903244502057

`A317934(A125754(A317934(n+1)))%A032302(n)`
-/

namespace A335428.P16639625903244502057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317934 (A125754 (A317934 (n + 1)).toNat).toNat) (A032302 n)

end

end A335428.P16639625903244502057

namespace A335428

/-- `A317934(A125754(A317934(n+1)))%A032302(n)` -/
def P16639625903244502057.Spec : Prop :=
  ∀ n, P16639625903244502057.a n = A335428 (n + 1)

end A335428

/-! ## A335428.P10349312125919090618

`A317934(A207111(A317934(n+1)))%A000124(n)`
-/

namespace A335428.P10349312125919090618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317934 (A207111 (A317934 (n + 1)).toNat).toNat) (A000124 n)

end

end A335428.P10349312125919090618

namespace A335428

/-- `A317934(A207111(A317934(n+1)))%A000124(n)` -/
def P10349312125919090618.Spec : Prop :=
  ∀ n, P10349312125919090618.a n = A335428 (n + 1)

end A335428

/-! ## A335428.P14962885099795680810

`A014963(A102376(n))-A112227(A317946(n+1))`
-/

namespace A335428.P14962885099795680810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A102376 n).toNat - A112227 (A317946 (n + 1)).toNat

end

end A335428.P14962885099795680810

namespace A335428

/-- `A014963(A102376(n))-A112227(A317946(n+1))` -/
def P14962885099795680810.Spec : Prop :=
  ∀ n, P14962885099795680810.a n = A335428 (n + 1)

end A335428

/-! ## A335428.P17607901801894279821

`and(A130321(A317946(n+1)), A198277(n))`
-/

namespace A335428.P17607901801894279821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130321 (A317946 (n + 1)).toNat) (A198277 n)

end

end A335428.P17607901801894279821

namespace A335428

/-- `and(A130321(A317946(n+1)), A198277(n))` -/
def P17607901801894279821.Spec : Prop :=
  ∀ n, P17607901801894279821.a n = A335428 (n + 1)

end A335428

/-! ## A335428.P17660573780090929042

`lcm(A130321(A317946(n+1)), A324672(n))`
-/

namespace A335428.P17660573780090929042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A130321 (A317946 (n + 1)).toNat) (A324672 n)

end

end A335428.P17660573780090929042

namespace A335428

/-- `lcm(A130321(A317946(n+1)), A324672(n))` -/
def P17660573780090929042.Spec : Prop :=
  ∀ n, (P17660573780090929042.a n : ℤ) = A335428 (n + 1)

end A335428

/-!
# A335429: Partial sums of A329697.

The programs for A335429, the canonical program `A335429.P967647323544039556` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335429 has offset 1).

The definition of A335429 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A335429.P967647323544039556

`A329697(n+1)+a(n-1)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A335429

/-- `A329697(n+1)+a(n-1)` -/
def P967647323544039556.Spec : Prop :=
  ∀ n, P967647323544039556.a n = A335429 (n + 1)

theorem P967647323544039556.correct : P967647323544039556.Spec := by
  intro n
  simp only [A335429, Nat.add_sub_cancel]

end A335429

/-! ## A335429.P1356566770305171172

`A335860(n+1)-A053044(n+1)`
-/

namespace A335429.P1356566770305171172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335860 (n + 1) - A053044 (n + 1)

end

end A335429.P1356566770305171172

namespace A335429

/-- `A335860(n+1)-A053044(n+1)` -/
def P1356566770305171172.Spec : Prop :=
  ∀ n, P1356566770305171172.a n = A335429 (n + 1)

theorem P1356566770305171172.correct : P1356566770305171172.Spec := by
  intro n
  simp only [A335429, Nat.add_sub_cancel, A335429.P1356566770305171172.a, A335429.P967647323544039556.a, A053044, A053044.P12715760243015014670.a, A329697, A329697.P6355568551452954971.a, A335860, A335860.P17749243859278538825.a, A004526, A004526.P10084182425416171735.a, A060606, A060606.P8446617235737320077.a, A064097, A064097.P7596357096388061613.a, A064415, A064415.P3438679109517359530.a, A060605, A060605.P5019509305243332605.f2, A060605.P5019509305243332605.f3, A060605.P5019509305243332605.f1, A060605.P5019509305243332605.a, A060681, A060681.P11747361826650309872.a, A309243, A309243.P2615360336711731693.a, A032742, A032742.P14489579072839730134.a, A171462, A171462.P186066025836437895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A335429

/-! ## A335429.P6523594203400490094

`∑[A329697(n+1)]`
-/

namespace A335429.P6523594203400490094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335429.P6523594203400490094

namespace A335429

/-- `∑[A329697(n+1)]` -/
def P6523594203400490094.Spec : Prop :=
  ∀ n, P6523594203400490094.a n = A335429 (n + 1)

end A335429

/-! ## A335429.P16935466976567799971

`∑[∑[A334091(n+1)]]`
-/

namespace A335429.P16935466976567799971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334091 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335429.P16935466976567799971

namespace A335429

/-- `∑[∑[A334091(n+1)]]` -/
def P16935466976567799971.Spec : Prop :=
  ∀ n, P16935466976567799971.a n = A335429 (n + 1)

end A335429

/-! ## A335429.P3460601005112167650

`∑[A064097(n+1)-A064415(n+1)]`
-/

namespace A335429.P3460601005112167650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (n + 1) - A064415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335429.P3460601005112167650

namespace A335429

/-- `∑[A064097(n+1)-A064415(n+1)]` -/
def P3460601005112167650.Spec : Prop :=
  ∀ n, P3460601005112167650.a n = A335429 (n + 1)

end A335429

/-! ## A335429.P13322946824066817616

`∑[A334861(n+1)-A331410(n+1)]`
-/

namespace A335429.P13322946824066817616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334861 (n + 1) - A331410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335429.P13322946824066817616

namespace A335429

/-- `∑[A334861(n+1)-A331410(n+1)]` -/
def P13322946824066817616.Spec : Prop :=
  ∀ n, P13322946824066817616.a n = A335429 (n + 1)

end A335429

/-! ## A335429.P10973276067198317196

`∑[A331410(n+1)-A335877(n+1)]`
-/

namespace A335429.P10973276067198317196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) - A335877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335429.P10973276067198317196

namespace A335429

/-- `∑[A331410(n+1)-A335877(n+1)]` -/
def P10973276067198317196.Spec : Prop :=
  ∀ n, P10973276067198317196.a n = A335429 (n + 1)

end A335429

/-! ## A335429.P937183761760289986

`∑[∑[A334090(n+1)-A334195(n+1)]]`
-/

namespace A335429.P937183761760289986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334090 (n + 1) - A334195 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335429.P937183761760289986

namespace A335429

/-- `∑[∑[A334090(n+1)-A334195(n+1)]]` -/
def P937183761760289986.Spec : Prop :=
  ∀ n, P937183761760289986.a n = A335429 (n + 1)

end A335429

/-! ## A335429.P16929109167416459414

`∑[A099812(n+1)+A336469(n+1)-1]`
-/

namespace A335429.P16929109167416459414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099812 (n + 1) + (A336469 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335429.P16929109167416459414

namespace A335429

/-- `∑[A099812(n+1)+A336469(n+1)-1]` -/
def P16929109167416459414.Spec : Prop :=
  ∀ n, P16929109167416459414.a n = A335429 (n + 1)

end A335429

/-! ## A335429.P11131821033869403171

`∑[A336469(n+1)+A001221(2*(n+1))-1]`
-/

namespace A335429.P11131821033869403171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336469 (n + 1) + (A001221 (2 * (n + 1)) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335429.P11131821033869403171

namespace A335429

/-- `∑[A336469(n+1)+A001221(2*(n+1))-1]` -/
def P11131821033869403171.Spec : Prop :=
  ∀ n, P11131821033869403171.a n = A335429 (n + 1)

end A335429

/-!
# A335431: Numbers of the form q*(2^k), where q is one of the Mersenne primes (A000668) and k >= 0.

The programs for A335431, the canonical program `A335431.P1130457591279741781` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335431 has offset 1).

The definition of A335431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335431.P1130457591279741781

`∩[A054784(n+1), A175332(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A335431

/-- `∩[A054784(n+1), A175332(n+1)]` -/
def P1130457591279741781.Spec : Prop :=
  ∀ n, (P1130457591279741781.a n : ℤ) = A335431 (n + 1)

theorem P1130457591279741781.correct : P1130457591279741781.Spec := by
  intro n
  simp only [A335431, Nat.add_sub_cancel]

end A335431

/-! ## A335431.P17806642044662603582

`∩[A054784(n+1), A238246(n+1)]`
-/

namespace A335431.P17806642044662603582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335431.P17806642044662603582

namespace A335431

/-- `∩[A054784(n+1), A238246(n+1)]` -/
def P17806642044662603582.Spec : Prop :=
  ∀ n, (P17806642044662603582.a n : ℤ) = A335431 (n + 1)

end A335431

/-! ## A335431.P7839748345760313267

`∩[A054784(n+1), A392845(n+1)]`
-/

namespace A335431.P7839748345760313267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335431.P7839748345760313267

namespace A335431

/-- `∩[A054784(n+1), A392845(n+1)]` -/
def P7839748345760313267.Spec : Prop :=
  ∀ n, (P7839748345760313267.a n : ℤ) = A335431 (n + 1)

end A335431

/-! ## A335431.P2166168176740662045

`∩[A219174(n+1), A392845(n+1)]`
-/

namespace A335431.P2166168176740662045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335431.P2166168176740662045

namespace A335431

/-- `∩[A219174(n+1), A392845(n+1)]` -/
def P2166168176740662045.Spec : Prop :=
  ∀ n, (P2166168176740662045.a n : ℤ) = A335431 (n + 1)

end A335431

/-! ## A335431.P15440310636274589287

`∩[A054784(n+1), A048717(n)]`
-/

namespace A335431.P15440310636274589287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335431.P15440310636274589287

namespace A335431

/-- `∩[A054784(n+1), A048717(n)]` -/
def P15440310636274589287.Spec : Prop :=
  ∀ n, (P15440310636274589287.a n : ℤ) = A335431 (n + 1)

end A335431

/-! ## A335431.P11690513037614998322

`∩[A054784(n+1), A226228(n+1)]`
-/

namespace A335431.P11690513037614998322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335431.P11690513037614998322

namespace A335431

/-- `∩[A054784(n+1), A226228(n+1)]` -/
def P11690513037614998322.Spec : Prop :=
  ∀ n, (P11690513037614998322.a n : ℤ) = A335431 (n + 1)

end A335431

/-! ## A335431.P6227145837097860865

`∩[A054784(n+1), A144795(n+1)]`
-/

namespace A335431.P6227145837097860865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335431.P6227145837097860865

namespace A335431

/-- `∩[A054784(n+1), A144795(n+1)]` -/
def P6227145837097860865.Spec : Prop :=
  ∀ n, (P6227145837097860865.a n : ℤ) = A335431 (n + 1)

end A335431

/-! ## A335431.P365320561168839907

`filter[A392845(n+1), A364252(#)]`
-/

namespace A335431.P365320561168839907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364252 (f1 j).toNat = 1) n)

end

end A335431.P365320561168839907

namespace A335431

/-- `filter[A392845(n+1), A364252(#)]` -/
def P365320561168839907.Spec : Prop :=
  ∀ n, P365320561168839907.a n = A335431 (n + 1)

end A335431

/-! ## A335431.P8877093679357556526

`∩[A053577(n+1), A175332(n+1)]`
-/

namespace A335431.P8877093679357556526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335431.P8877093679357556526

namespace A335431

/-- `∩[A053577(n+1), A175332(n+1)]` -/
def P8877093679357556526.Spec : Prop :=
  ∀ n, (P8877093679357556526.a n : ℤ) = A335431 (n + 1)

end A335431

/-! ## A335431.P16544455385408438468

`filter[A052499(n), A364251(#)]`
-/

namespace A335431.P16544455385408438468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364251 (f1 j).toNat = 1) n)

end

end A335431.P16544455385408438468

namespace A335431

/-- `filter[A052499(n), A364251(#)]` -/
def P16544455385408438468.Spec : Prop :=
  ∀ n, P16544455385408438468.a n = A335431 (n + 1)

end A335431

/-!
# A335432: Number of anti-run permutations of the prime indices of Mersenne numbers A000225(n) = 2^n - 1.

The programs for A335432, there is no canonical definition to state claims against.
-/

/-! ## A335432.P2966199605276459635

`A335452(A000225(n+1))`
-/

namespace A335432.P2966199605276459635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335452 (A000225 (n + 1)).toNat

end

end A335432.P2966199605276459635

/-! ## A335432.P9705056022012315820

`A336105(n+1)-A336104(n+1)`
-/

namespace A335432.P9705056022012315820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336105 (n + 1) - A336104 (n + 1)

end

end A335432.P9705056022012315820

/-! ## A335432.P5366672209682006189

`A318808(2*A046801(n+1))-A336104(n+1)`
-/

namespace A335432.P5366672209682006189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318808 (2 * A046801 (n + 1)).toNat - A336104 (n + 1)

end

end A335432.P5366672209682006189

/-! ## A335432.P10250308886346699796

`A008480(A278240(n+1))-A336104(n+1)`
-/

namespace A335432.P10250308886346699796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A278240 (n + 1)).toNat - A336104 (n + 1)

end

end A335432.P10250308886346699796

/-! ## A335432.P14923060655414911846

`A335452(A278240(n+1))`
-/

namespace A335432.P14923060655414911846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335452 (A278240 (n + 1)).toNat

end

end A335432.P14923060655414911846

/-!
# A335433: Numbers whose multiset of prime indices is separable.

The programs for A335433, there is no canonical definition to state claims against.
-/

/-! ## A335433.P10977051774298230879

`comp[A335448(n+1)-1]+1`
-/

namespace A335433.P10977051774298230879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335448 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A335433.P10977051774298230879

/-! ## A335433.P16252537114534709048

`lt[0, A335452(n+1)]+1`
-/

namespace A335433.P16252537114534709048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335452 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A335433.P16252537114534709048

/-! ## A335433.P9014783997795513746

`eq[0, A374246(n+1)]+1`
-/

namespace A335433.P9014783997795513746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A335433.P9014783997795513746

/-! ## A335433.P14755909010336859989

`eq[0, A374248(n+1)]+1`
-/

namespace A335433.P14755909010336859989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374248 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A335433.P14755909010336859989

/-! ## A335433.P3296104717850391389

`eq[0, A374255(n+1)]+1`
-/

namespace A335433.P3296104717850391389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374255 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A335433.P3296104717850391389

/-!
# A335434: Number of separable factorizations of n into factors > 1.

The programs for A335434, there is no canonical definition to state claims against.
-/

/-! ## A335434.P3217080576677350699

`Δ[A096276(n)]-A333487(n+1)`
-/

namespace A335434.P3217080576677350699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A333487 (n + 1)

end

end A335434.P3217080576677350699

/-! ## A335434.P15459128098434161138

`A001055(n+1)-A333487(n+1)`
-/

namespace A335434.P15459128098434161138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A333487 (n + 1)

end

end A335434.P15459128098434161138

/-! ## A335434.P18196285446314389717

`A347050(n+1)-char[A005563(n+1)]`
-/

namespace A335434.P18196285446314389717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347050 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A335434.P18196285446314389717

/-! ## A335434.P15063049172672281442

`A347050(n+1)-char[A106230(n+1)]`
-/

namespace A335434.P15063049172672281442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106230 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347050 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A335434.P15063049172672281442

/-! ## A335434.P5656140856860730421

`A028422(n+1)+1-A333487(n+1)`
-/

namespace A335434.P5656140856860730421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (n + 1) + 1 - A333487 (n + 1)

end

end A335434.P5656140856860730421

/-! ## A335434.P4257389492436459168

`A347050(n+1)-A010052(A045965(n+1))`
-/

namespace A335434.P4257389492436459168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347050 (n + 1) - A010052 (A045965 (n + 1)).toNat

end

end A335434.P4257389492436459168

/-! ## A335434.P1841845129878817627

`A050322(A101296(n+1))-A333487(n+1)`
-/

namespace A335434.P1841845129878817627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050322 (A101296 (n + 1)).toNat - A333487 (n + 1)

end

end A335434.P1841845129878817627

/-! ## A335434.P18315606921370331331

`A292886(n+1)-A014954(A335452(n+1))`
-/

namespace A335434.P18315606921370331331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292886 (n + 1) - A014954 (A335452 (n + 1)).toNat

end

end A335434.P18315606921370331331

/-! ## A335434.P17196663374199851453

`A347050(n+1)-A066829(A294897(n+1))`
-/

namespace A335434.P17196663374199851453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347050 (n + 1) - A066829 (A294897 (n + 1)).toNat

end

end A335434.P17196663374199851453

/-! ## A335434.P13740991838287298650

`A347050(n+1)-A010052(A010052(n)+1+n)`
-/

namespace A335434.P13740991838287298650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347050 (n + 1) - A010052 (A010052 n + 1 + (n : ℤ)).toNat

end

end A335434.P13740991838287298650

/-!
# A335435: Triangle read by rows: T(n,k) is the least degree of a polynomial interpolating (i, prime(i)) for i from k to n.

The programs for A335435, there is no canonical definition to state claims against.
-/

/-! ## A335435.P9643638694198972773

`A025581(n)-A010052(A178357(n+1))`
-/

namespace A335435.P9643638694198972773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n - A010052 (A178357 (n + 1)).toNat

end

end A335435.P9643638694198972773

/-! ## A335435.P5563449314335829060

`A025660(n+1)-A010052(A178357(n+1))`
-/

namespace A335435.P5563449314335829060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025660 (n + 1) - A010052 (A178357 (n + 1)).toNat

end

end A335435.P5563449314335829060

/-! ## A335435.P15852027280821039228

`val(A036561(n), 2)-A010052(A178357(n+1))`
-/

namespace A335435.P15852027280821039228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A036561 n).toNat 2 : ℤ) - A010052 (A178357 (n + 1)).toNat

end

end A335435.P15852027280821039228

/-! ## A335435.P2757180937440125383

`A025581(n)+A010052(A178357(n+1))*A057428(n)`
-/

namespace A335435.P2757180937440125383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A010052 (A178357 (n + 1)).toNat * A057428 n

end

end A335435.P2757180937440125383

/-! ## A335435.P18266846060156290890

`A025581(n)-A088917(A273350(n+2))`
-/

namespace A335435.P18266846060156290890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n - A088917 (A273350 (n + 2)).toNat

end

end A335435.P18266846060156290890

/-! ## A335435.P12245889914531232460

`A025660(n+1)-A088917(A273350(n+2))`
-/

namespace A335435.P12245889914531232460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025660 (n + 1) - A088917 (A273350 (n + 2)).toNat

end

end A335435.P12245889914531232460

/-! ## A335435.P6475832712404935448

`A001222(A130321(n))-A088917(A273350(n+2))`
-/

namespace A335435.P6475832712404935448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A130321 n).toNat - A088917 (A273350 (n + 2)).toNat

end

end A335435.P6475832712404935448

/-! ## A335435.P13200167812957984621

`A004736(n+1)-A033630(A004736(A298305(n+1)))`
-/

namespace A335435.P13200167812957984621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - A033630 (A004736 (A298305 (n + 1)).toNat).toNat

end

end A335435.P13200167812957984621

/-! ## A335435.P2723274302425566896

`A025581(n)-A216280(A139538(n+1))`
-/

namespace A335435.P2723274302425566896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n - A216280 (A139538 (n + 1)).toNat

end

end A335435.P2723274302425566896

/-!
# A335436: Triangle read by rows: T(n,k) = 2*n+1 for k = 0 and otherwise T(n,k) = Sum_{i=n-k..n, j=0..i-n+k, i<>n or j<>k} T(i,j).

The programs for A335436, there is no canonical definition to state claims against.
-/

/-! ## A335436.P3424076579952650344

`A054144(n)+A053199(n)`
-/

namespace A335436.P3424076579952650344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054144 n + A053199 n

end

end A335436.P3424076579952650344

/-! ## A335436.P16331477980404275563

`A054144(comp[∑[n-1]])+A054144(n)`
-/

namespace A335436.P16331477980404275563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054144 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + A054144 n

end

end A335436.P16331477980404275563

/-! ## A335436.P2918547397947495299

`A003480(A002262(n))+2*A054144(n)`
-/

namespace A335436.P2918547397947495299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 (A002262 n).toNat + 2 * A054144 n

end

end A335436.P2918547397947495299

/-! ## A335436.P17290972278957768283

`2*A053199(n)-A003480(A002262(n))`
-/

namespace A335436.P17290972278957768283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053199 n - A003480 (A002262 n).toNat

end

end A335436.P17290972278957768283

/-! ## A335436.P16752732094950267723

`A053199(n)-A054144(n)*A057428(n)`
-/

namespace A335436.P16752732094950267723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053199 n - A054144 n * A057428 n

end

end A335436.P16752732094950267723

/-!
# A335437: Numbers k with a partition into two distinct parts (s,t) such that k | s*t.

The programs for A335437, the canonical program `A335437.P5318909564445238416` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335437 has offset 1).

The definition of A335437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335437.P9126705243040829672

`eq[0, A114811(n+1)]+1`
-/

namespace A335437.P9126705243040829672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114811 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A335437.P9126705243040829672

namespace A335437

/-- `eq[0, A114811(n+1)]+1` -/
def P9126705243040829672.Spec : Prop :=
  ∀ n, (P9126705243040829672.a n : ℤ) = A335437 (n + 1)

end A335437

/-! ## A335437.P6737070207810803963

`lt[2, A078771(n+1)]+1`
-/

namespace A335437.P6737070207810803963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078771 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A335437.P6737070207810803963

namespace A335437

/-- `lt[2, A078771(n+1)]+1` -/
def P6737070207810803963.Spec : Prop :=
  ∀ n, (P6737070207810803963.a n : ℤ) = A335437 (n + 1)

end A335437

/-! ## A335437.P17615971599460613059

`lt[4, A008833(n+1)]+1`
-/

namespace A335437.P17615971599460613059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A335437.P17615971599460613059

namespace A335437

/-- `lt[4, A008833(n+1)]+1` -/
def P17615971599460613059.Spec : Prop :=
  ∀ n, (P17615971599460613059.a n : ℤ) = A335437 (n + 1)

end A335437

/-! ## A335437.P5318909564445238416

`lt[A085384(n+1)², 1]+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A335437

/-- `lt[A085384(n+1)², 1]+1` -/
def P5318909564445238416.Spec : Prop :=
  ∀ n, (P5318909564445238416.a n : ℤ) = A335437 (n + 1)

theorem P5318909564445238416.correct : P5318909564445238416.Spec := by
  intro n
  simp only [A335437, Nat.add_sub_cancel]

end A335437

/-! ## A335437.P16075229765677521493

`eq[2, A085384(n+2)+2]+2`
-/

namespace A335437.P16075229765677521493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085384 (n + 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A335437.P16075229765677521493

namespace A335437

/-- `eq[2, A085384(n+2)+2]+2` -/
def P16075229765677521493.Spec : Prop :=
  ∀ n, (P16075229765677521493.a n : ℤ) = A335437 (n + 1)

end A335437

/-! ## A335437.P8792539568450593766

`lt[A151800(n), A299149(n+1)]+1`
-/

namespace A335437.P8792539568450593766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299149 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A335437.P8792539568450593766

namespace A335437

/-- `lt[A151800(n), A299149(n+1)]+1` -/
def P8792539568450593766.Spec : Prop :=
  ∀ n, (P8792539568450593766.a n : ℤ) = A335437 (n + 1)

end A335437

/-! ## A335437.P1587558112828277260

`∪[A038838(n+1), A046101(n+1)]`
-/

namespace A335437.P1587558112828277260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335437.P1587558112828277260

namespace A335437

/-- `∪[A038838(n+1), A046101(n+1)]` -/
def P1587558112828277260.Spec : Prop :=
  ∀ n, (P1587558112828277260.a n : ℤ) = A335437 (n + 1)

end A335437

/-! ## A335437.P16396377160639237588

`∪[A038838(n+1), A048111(n+1)]`
-/

namespace A335437.P16396377160639237588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335437.P16396377160639237588

namespace A335437

/-- `∪[A038838(n+1), A048111(n+1)]` -/
def P16396377160639237588.Spec : Prop :=
  ∀ n, (P16396377160639237588.a n : ℤ) = A335437 (n + 1)

end A335437

/-! ## A335437.P3250981932943514074

`∪[A048111(n+1), A307579(n+1)]`
-/

namespace A335437.P3250981932943514074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335437.P3250981932943514074

namespace A335437

/-- `∪[A048111(n+1), A307579(n+1)]` -/
def P3250981932943514074.Spec : Prop :=
  ∀ n, (P3250981932943514074.a n : ℤ) = A335437 (n + 1)

end A335437

/-! ## A335437.P13486539403500976737

`∪[A048111(n+1), A319927(n+1)]`
-/

namespace A335437.P13486539403500976737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335437.P13486539403500976737

namespace A335437

/-- `∪[A048111(n+1), A319927(n+1)]` -/
def P13486539403500976737.Spec : Prop :=
  ∀ n, (P13486539403500976737.a n : ℤ) = A335437 (n + 1)

end A335437

/-! ## A335437.P14257310108647233600

`∪[2*A046099(n+1), A038838(n+1)]`
-/

namespace A335437.P14257310108647233600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335437.P14257310108647233600

namespace A335437

/-- `∪[2*A046099(n+1), A038838(n+1)]` -/
def P14257310108647233600.Spec : Prop :=
  ∀ n, (P14257310108647233600.a n : ℤ) = A335437 (n + 1)

end A335437

/-! ## A335437.P6653396899700931555

`∪[2*A048108(n+1), A038838(n+1)]`
-/

namespace A335437.P6653396899700931555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335437.P6653396899700931555

namespace A335437

/-- `∪[2*A048108(n+1), A038838(n+1)]` -/
def P6653396899700931555.Spec : Prop :=
  ∀ n, (P6653396899700931555.a n : ℤ) = A335437 (n + 1)

end A335437

/-! ## A335437.P8774634047970480293

`∪[2*A185359(n+1), A038838(n+1)]`
-/

namespace A335437.P8774634047970480293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A185359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335437.P8774634047970480293

namespace A335437

/-- `∪[2*A185359(n+1), A038838(n+1)]` -/
def P8774634047970480293.Spec : Prop :=
  ∀ n, (P8774634047970480293.a n : ℤ) = A335437 (n + 1)

end A335437

/-! ## A335437.P12432363345877056186

`∩[A046790(n+1), A072903(n+1)]`
-/

namespace A335437.P12432363345877056186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335437.P12432363345877056186

namespace A335437

/-- `∩[A046790(n+1), A072903(n+1)]` -/
def P12432363345877056186.Spec : Prop :=
  ∀ n, (P12432363345877056186.a n : ℤ) = A335437 (n + 1)

end A335437

/-! ## A335437.P17449394458437373447

`lt[8, A057521(n+1)]+1`
-/

namespace A335437.P17449394458437373447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A335437.P17449394458437373447

namespace A335437

/-- `lt[8, A057521(n+1)]+1` -/
def P17449394458437373447.Spec : Prop :=
  ∀ n, (P17449394458437373447.a n : ℤ) = A335437 (n + 1)

end A335437

/-! ## A335437.P2450414426056792921

`lt[val(n+1, 2), floor(n/∏{p}[n+1, #])]+1`
-/

namespace A335437.P2450414426056792921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A335437.P2450414426056792921

namespace A335437

/-- `lt[val(n+1, 2), floor(n/∏{p}[n+1, #])]+1` -/
def P2450414426056792921.Spec : Prop :=
  ∀ n, (P2450414426056792921.a n : ℤ) = A335437 (n + 1)

end A335437

/-! ## A335437.P11748990664744995079

`lt[1, A057918(n+1)]+1`
-/

namespace A335437.P11748990664744995079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A335437.P11748990664744995079

namespace A335437

/-- `lt[1, A057918(n+1)]+1` -/
def P11748990664744995079.Spec : Prop :=
  ∀ n, (P11748990664744995079.a n : ℤ) = A335437 (n + 1)

end A335437

/-! ## A335437.P16914881833866850467

`lt[2, A000188(n+1)]+1`
-/

namespace A335437.P16914881833866850467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A335437.P16914881833866850467

namespace A335437

/-- `lt[2, A000188(n+1)]+1` -/
def P16914881833866850467.Spec : Prop :=
  ∀ n, (P16914881833866850467.a n : ℤ) = A335437 (n + 1)

end A335437

/-! ## A335437.P11616934407388622586

`eq[6, 6%A035316(n+1)]+1`
-/

namespace A335437.P11616934407388622586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 6 (A035316 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A335437.P11616934407388622586

namespace A335437

/-- `eq[6, 6%A035316(n+1)]+1` -/
def P11616934407388622586.Spec : Prop :=
  ∀ n, (P11616934407388622586.a n : ℤ) = A335437 (n + 1)

end A335437

/-!
# A335438: Number of partitions of k_n into two distinct parts (s,t) such that k_n | s*t, where k_n = A335437(n).

The programs for A335438, the canonical program `A335438.P3356434190855580502` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335438 has offset 1).

The definition of A335438 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335437, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A335438.P3356434190855580502

`floor((A000188(A335437(n+1))-1)/2)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A335438

/-- `floor((A000188(A335437(n+1))-1)/2)` -/
def P3356434190855580502.Spec : Prop :=
  ∀ n, P3356434190855580502.a n = A335438 (n + 1)

theorem P3356434190855580502.correct : P3356434190855580502.Spec := by
  intro n
  simp only [A335438, Nat.add_sub_cancel]

end A335438

/-! ## A335438.P12975375355426426366

`floor(A057918(A335437(n+1))/2)`
-/

namespace A335438.P12975375355426426366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057918 (A335437 (n + 1)).toNat : ℚ) / 2⌋

end

end A335438.P12975375355426426366

namespace A335438

/-- `floor(A057918(A335437(n+1))/2)` -/
def P12975375355426426366.Spec : Prop :=
  ∀ n, P12975375355426426366.a n = A335438 (n + 1)

theorem P12975375355426426366.correct : P12975375355426426366.Spec := by
  intro n
  simp only [A335438, Nat.add_sub_cancel, A335438.P12975375355426426366.a, A335438.P3356434190855580502.a, A000188, A000188.P18128357374562736993.f1, A000188.P18128357374562736993.a, A057918, A057918.P8779601029509101892.a, A335437, A335437.P5318909564445238416.f1, A335437.P5318909564445238416.f2, A335437.P5318909564445238416.a, A085384, A085384.P2352350841886618016.a, A000010, A000010.P4673923239450215316.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A335438

/-! ## A335438.P9628788119511004915

`A321018(p?[A158611(A000188(n+1))])`
-/

namespace A335438.P9628788119511004915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A000188 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321018 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A335438.P9628788119511004915

namespace A335438

/-- `A321018(p?[A158611(A000188(n+1))])` -/
def P9628788119511004915.Spec : Prop :=
  ∀ n, P9628788119511004915.a n = A335438 (n + 1)

end A335438

/-! ## A335438.P3891262662270453545

`A055874(Δ[record[A103489(n)]])`
-/

namespace A335438.P3891262662270453545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103489 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (f1 (n + 1) - f1 n).toNat

end

end A335438.P3891262662270453545

namespace A335438

/-- `A055874(Δ[record[A103489(n)]])` -/
def P3891262662270453545.Spec : Prop :=
  ∀ n, P3891262662270453545.a n = A335438 (n + 1)

end A335438

/-! ## A335438.P4053597608328692032

`A001222(Δ[record[A103489(n)]]+2)`
-/

namespace A335438.P4053597608328692032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103489 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n + 2).toNat

end

end A335438.P4053597608328692032

namespace A335438

/-- `A001222(Δ[record[A103489(n)]]+2)` -/
def P4053597608328692032.Spec : Prop :=
  ∀ n, P4053597608328692032.a n = A335438 (n + 1)

end A335438

/-!
# A335439: a(n) = n*(n-1)/2 + 2^(n-1) - 1.

The programs for A335439, the canonical program `A335439.P5018649547920828452` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335439 has offset 1).

The definition of A335439 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A335439.P5018649547920828452

`(n+1)*n/2+2^n-1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A335439

/-- `(n+1)*n/2+2^n-1` -/
def P5018649547920828452.Spec : Prop :=
  ∀ n, P5018649547920828452.a n = (A335439 (n + 1) : ℚ)

end A335439

/-! ## A335439.P11914507344255922549

`ogf((2x-4x^2+x^3)/(1-5x+9x^2-7x^3+2x^4))`
-/

namespace A335439.P11914507344255922549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -4, 1] [1, -5, 9, -7, 2] n

end

end A335439.P11914507344255922549

namespace A335439

/-- `ogf((2x-4x^2+x^3)/(1-5x+9x^2-7x^3+2x^4))` -/
def P11914507344255922549.Spec : Prop :=
  ∀ n, P11914507344255922549.a n = A335439 (n + 1)

end A335439

/-! ## A335439.P2496926969714823863

`∑[Δ[2*a(n-1)]+n]` with `a(0)=1, a(1)=1`
-/

namespace A335439.P2496926969714823863
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335439.P2496926969714823863

namespace A335439

/-- `∑[Δ[2*a(n-1)]+n]` -/
def P2496926969714823863.Spec : Prop :=
  ∀ n, P2496926969714823863.a n = A335439 (n + 1)

end A335439

/-! ## A335439.P8618727412393320697

`∑[∑[2*a(n-1)-1]]` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A335439.P8618727412393320697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2] fun n f2 =>
  2 * f2 (n - 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335439.P8618727412393320697

namespace A335439

/-- `∑[∑[2*a(n-1)-1]]` -/
def P8618727412393320697.Spec : Prop :=
  ∀ n, P8618727412393320697.a n = A335439 (n + 1)

end A335439

/-! ## A335439.P11410338276429979685

`∑[∑[a(n-1)+a(n-1)-1]]` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A335439.P11410338276429979685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335439.P11410338276429979685

namespace A335439

/-- `∑[∑[a(n-1)+a(n-1)-1]]` -/
def P11410338276429979685.Spec : Prop :=
  ∀ n, P11410338276429979685.a n = A335439 (n + 1)

end A335439

/-! ## A335439.P3023332290286241001

`∑[∑[a(n-1)-(1-a(n-1))]]` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A335439.P3023332290286241001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2] fun n f2 =>
  f2 (n - 1) - (1 - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335439.P3023332290286241001

namespace A335439

/-- `∑[∑[a(n-1)-(1-a(n-1))]]` -/
def P3023332290286241001.Spec : Prop :=
  ∀ n, P3023332290286241001.a n = A335439 (n + 1)

end A335439

/-! ## A335439.P6646090958217323311

`∑[A131577(n)+n]`
-/

namespace A335439.P6646090958217323311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335439.P6646090958217323311

namespace A335439

/-- `∑[A131577(n)+n]` -/
def P6646090958217323311.Spec : Prop :=
  ∀ n, P6646090958217323311.a n = A335439 (n + 1)

end A335439

/-! ## A335439.P5297948332266695763

`∑[∑[A166444(n)]+n]`
-/

namespace A335439.P5297948332266695763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335439.P5297948332266695763

namespace A335439

/-- `∑[∑[A166444(n)]+n]` -/
def P5297948332266695763.Spec : Prop :=
  ∀ n, P5297948332266695763.a n = A335439 (n + 1)

end A335439

/-! ## A335439.P11040419434637024305

`∑[Δ[A011782(n)]+n]`
-/

namespace A335439.P11040419434637024305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335439.P11040419434637024305

namespace A335439

/-- `∑[Δ[A011782(n)]+n]` -/
def P11040419434637024305.Spec : Prop :=
  ∀ n, P11040419434637024305.a n = A335439 (n + 1)

end A335439

/-! ## A335439.P13974854904853543478

`∑[n-Δ[A122958(n)]]`
-/

namespace A335439.P13974854904853543478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122958 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335439.P13974854904853543478

namespace A335439

/-- `∑[n-Δ[A122958(n)]]` -/
def P13974854904853543478.Spec : Prop :=
  ∀ n, P13974854904853543478.a n = A335439 (n + 1)

end A335439

/-! ## A335439.P17482886020787332164

`∑[A323227(n+1)-2]`
-/

namespace A335439.P17482886020787332164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323227 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335439.P17482886020787332164

namespace A335439

/-- `∑[A323227(n+1)-2]` -/
def P17482886020787332164.Spec : Prop :=
  ∀ n, P17482886020787332164.a n = A335439 (n + 1)

end A335439

/-! ## A335439.P7124321691845760529

`∑[A034008(n+1)+n]`
-/

namespace A335439.P7124321691845760529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335439.P7124321691845760529

namespace A335439

/-- `∑[A034008(n+1)+n]` -/
def P7124321691845760529.Spec : Prop :=
  ∀ n, P7124321691845760529.a n = A335439 (n + 1)

end A335439

/-! ## A335439.P4213892197403484807

`∑[A094373(n)-1+n]`
-/

namespace A335439.P4213892197403484807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335439.P4213892197403484807

namespace A335439

/-- `∑[A094373(n)-1+n]` -/
def P4213892197403484807.Spec : Prop :=
  ∀ n, P4213892197403484807.a n = A335439 (n + 1)

end A335439

/-! ## A335439.P4149028157877931808

`∑[A056469(n)-2+n]`
-/

namespace A335439.P4149028157877931808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n - 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335439.P4149028157877931808

namespace A335439

/-- `∑[A056469(n)-2+n]` -/
def P4149028157877931808.Spec : Prop :=
  ∀ n, P4149028157877931808.a n = A335439 (n + 1)

end A335439

/-! ## A335439.P17340491286328046575

`∑[A158780(2*n)+n]`
-/

namespace A335439.P17340491286328046575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (2 * n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335439.P17340491286328046575

namespace A335439

/-- `∑[A158780(2*n)+n]` -/
def P17340491286328046575.Spec : Prop :=
  ∀ n, P17340491286328046575.a n = A335439 (n + 1)

end A335439

/-! ## A335439.P10373531355966728409

`∑[n-A137206(2*n)]`
-/

namespace A335439.P10373531355966728409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A137206 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335439.P10373531355966728409

namespace A335439

/-- `∑[n-A137206(2*n)]` -/
def P10373531355966728409.Spec : Prop :=
  ∀ n, P10373531355966728409.a n = A335439 (n + 1)

end A335439

/-! ## A335439.P6988685026020631081

`∑[A155559(n)/2+n]`
-/

namespace A335439.P6988685026020631081
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155559 n : ℚ) / 2 + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335439.P6988685026020631081

namespace A335439

/-- `∑[A155559(n)/2+n]` -/
def P6988685026020631081.Spec : Prop :=
  ∀ n, P6988685026020631081.a n = (A335439 (n + 1) : ℚ)

end A335439

/-! ## A335439.P1949730445528577851

`∑[record[A285330(n+1)]+n]`
-/

namespace A335439.P1949730445528577851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285330 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335439.P1949730445528577851

namespace A335439

/-- `∑[record[A285330(n+1)]+n]` -/
def P1949730445528577851.Spec : Prop :=
  ∀ n, P1949730445528577851.a n = A335439 (n + 1)

end A335439

/-! ## A335439.P16397737420439283565

`∑[or(n-1, A000079(abs(1-n)))+1]`
-/

namespace A335439.P16397737420439283565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 1) (A000079 |1 - (n : ℤ)|.toNat) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335439.P16397737420439283565

namespace A335439

/-- `∑[or(n-1, A000079(abs(1-n)))+1]` -/
def P16397737420439283565.Spec : Prop :=
  ∀ n, P16397737420439283565.a n = A335439 (n + 1)

end A335439

/-! ## A335439.P8644935177798093046

`abs(A000217(n)+A000079(n)-1)`
-/

namespace A335439.P8644935177798093046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000217 n + A000079 n - 1|

end

end A335439.P8644935177798093046

namespace A335439

/-- `abs(A000217(n)+A000079(n)-1)` -/
def P8644935177798093046.Spec : Prop :=
  ∀ n, P8644935177798093046.a n = A335439 (n + 1)

end A335439

/-!
# A335441: a(n) = 1 + Sum_{k=1..n-1} binomial(n-2,k-1) * a(k) * a(n-k-1).

The programs for A335441, there is no canonical definition to state claims against.
-/

/-! ## A335441.P3890646308577016502

`A154099(A277431(n))`
-/

namespace A335441.P3890646308577016502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154099 (A277431 n).toNat

end

end A335441.P3890646308577016502

/-! ## A335441.P18203072264096806398

`A191987(A022868(n+2))`
-/

namespace A335441.P18203072264096806398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191987 (A022868 (n + 2)).toNat

end

end A335441.P18203072264096806398

/-!
# A335442: List enumerated in lexicographic order of (n, s, k), where for each n >= 1, for each s a subset of 1..n with n-1 elements, and for each k in 0..n-1, we give the value of (Sum_{t subset of s, Card(t)=k} Product_{x in t} x).

The programs for A335442, there is no canonical definition to state claims against.
-/

/-! ## A335442.P7934646896828344193

`A077592(∑[A324191(A083329(n))])`
-/

namespace A335442.P7934646896828344193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324191 (A083329 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077592 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A335442.P7934646896828344193

/-! ## A335442.P11777262049821254855

`A177903(A009998(record[A026741(n)]))`
-/

namespace A335442.P11777262049821254855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177903 (A009998 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A335442.P11777262049821254855

/-! ## A335442.P15095226568857821948

`A177903(A009998(record[A141310(n)]))`
-/

namespace A335442.P15095226568857821948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177903 (A009998 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A335442.P15095226568857821948

/-! ## A335442.P11576020033529431374

`A011973(A187829(n+1))+char[7]`
-/

namespace A335442.P11576020033529431374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 (A187829 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A335442.P11576020033529431374

/-!
# A335443: Number of compositions of n where neighboring runs have different lengths.

The programs for A335443, there is no canonical definition to state claims against.
-/

/-! ## A335443.P7232459081682770323

`A001612(n)-A117498(A001612(n))`
-/

namespace A335443.P7232459081682770323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n - A117498 (A001612 n).toNat

end

end A335443.P7232459081682770323

/-! ## A335443.P6715528974031613206

`A000196(A152035(n))-A346705(n)`
-/

namespace A335443.P6715528974031613206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A152035 n).toNat - A346705 n

end

end A335443.P6715528974031613206

/-! ## A335443.P6636096023603202526

`A328928(A298148(n+1)+A167606(n))`
-/

namespace A335443.P6636096023603202526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328928 (A298148 (n + 1) + A167606 n).toNat

end

end A335443.P6636096023603202526

/-! ## A335443.P910223398648387575

`A382019(A054226(n))`
-/

namespace A335443.P910223398648387575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382019 (A054226 n).toNat

end

end A335443.P910223398648387575

/-! ## A335443.P18288762108901594361

`A079500(n)-A321692(A208747(3*n+1))`
-/

namespace A335443.P18288762108901594361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079500 n - A321692 (A208747 (3 * n + 1)).toNat

end

end A335443.P18288762108901594361

/-!
# A335446: Number of (1,2,1)-matching permutations of the prime indices of n.

The programs for A335446, there is no canonical definition to state claims against.
-/

/-! ## A335446.P8608718604468087039

`∑{e}[n+1, #]!/∏{e}[n+1, #!]-A335449(n+1)`
-/

namespace A335446.P8608718604468087039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ) - (A335449 (n + 1) : ℚ)

end

end A335446.P8608718604468087039

/-! ## A335446.P765460766065081776

`A008480(n+1)-A335449(n+1)`
-/

namespace A335446.P765460766065081776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) - A335449 (n + 1)

end

end A335446.P765460766065081776

/-! ## A335446.P1228769270424641954

`A335447(n+1)+1-A335449(n+1)`
-/

namespace A335446.P1228769270424641954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335447 (n + 1) + (1 - A335449 (n + 1))

end

end A335446.P1228769270424641954

/-!
# A335447: Number of (1,2)-matching permutations of the prime indices of n.

The programs for A335447, the canonical program `A335447.P7231323323693740438` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335447 has offset 1).

The definition of A335447 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008480, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A335447.P7231323323693740438

`A008480(n+1)-1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A335447

/-- `A008480(n+1)-1` -/
def P7231323323693740438.Spec : Prop :=
  ∀ n, P7231323323693740438.a n = A335447 (n + 1)

theorem P7231323323693740438.correct : P7231323323693740438.Spec := by
  intro n
  simp only [A335447, Nat.add_sub_cancel]

end A335447

/-! ## A335447.P16954910069953833534

`∑{e}[n+1, #]!/∏{e}[n+1, #!]-1`
-/

namespace A335447.P16954910069953833534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ) - 1

end

end A335447.P16954910069953833534

namespace A335447

/-- `∑{e}[n+1, #]!/∏{e}[n+1, #!]-1` -/
def P16954910069953833534.Spec : Prop :=
  ∀ n, P16954910069953833534.a n = (A335447 (n + 1) : ℚ)

end A335447

/-! ## A335447.P14052357291829676818

`abs(A355939(n+1))-1`
-/

namespace A335447.P14052357291829676818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355939 (n + 1)| - 1

end

end A335447.P14052357291829676818

namespace A335447

/-- `abs(A355939(n+1))-1` -/
def P14052357291829676818.Spec : Prop :=
  ∀ n, P14052357291829676818.a n = A335447 (n + 1)

end A335447

/-! ## A335447.P1821544124263747087

`A168324(ceil(sqrt(n²+4)))-1`
-/

namespace A335447.P1821544124263747087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168324 ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉.toNat - 1

end

end A335447.P1821544124263747087

namespace A335447

/-- `A168324(ceil(sqrt(n²+4)))-1` -/
def P1821544124263747087.Spec : Prop :=
  ∀ n, P1821544124263747087.a n = A335447 (n + 1)

end A335447

/-! ## A335447.P12333787007714857760

`A135323(n+1)/(n+1)-1`
-/

namespace A335447.P12333787007714857760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135323 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A335447.P12333787007714857760

namespace A335447

/-- `A135323(n+1)/(n+1)-1` -/
def P12333787007714857760.Spec : Prop :=
  ∀ n, P12333787007714857760.a n = (A335447 (n + 1) : ℚ)

end A335447

/-! ## A335447.P10649818136064777519

`A001222(n+1)!/∏{e}[n+1, #!]-1`
-/

namespace A335447.P10649818136064777519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A001222 (n + 1)).toNat : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p) : ℕ) : ℚ) - 1

end

end A335447.P10649818136064777519

namespace A335447

/-- `A001222(n+1)!/∏{e}[n+1, #!]-1` -/
def P10649818136064777519.Spec : Prop :=
  ∀ n, P10649818136064777519.a n = (A335447 (n + 1) : ℚ)

end A335447

/-! ## A335447.P16563043162145066324

`A023443(A008480(n+1))`
-/

namespace A335447.P16563043162145066324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A008480 (n + 1)).toNat

end

end A335447.P16563043162145066324

namespace A335447

/-- `A023443(A008480(n+1))` -/
def P16563043162145066324.Spec : Prop :=
  ∀ n, P16563043162145066324.a n = A335447 (n + 1)

end A335447

/-! ## A335447.P12337805272200671752

`A050382(A101296(n+1))-1`
-/

namespace A335447.P12337805272200671752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050382 (A101296 (n + 1)).toNat - 1

end

end A335447.P12337805272200671752

namespace A335447

/-- `A050382(A101296(n+1))-1` -/
def P12337805272200671752.Spec : Prop :=
  ∀ n, P12337805272200671752.a n = A335447 (n + 1)

end A335447

/-! ## A335447.P7909853712308488623

`A028310(A168324(n+1))-1`
-/

namespace A335447.P7909853712308488623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A168324 (n + 1)).toNat - 1

end

end A335447.P7909853712308488623

namespace A335447

/-- `A028310(A168324(n+1))-1` -/
def P7909853712308488623.Spec : Prop :=
  ∀ n, P7909853712308488623.a n = A335447 (n + 1)

end A335447

/-! ## A335447.P1107726039334687826

`A318762(A181819(n+1))-1`
-/

namespace A335447.P1107726039334687826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318762 (A181819 (n + 1)).toNat - 1

end

end A335447.P1107726039334687826

namespace A335447

/-- `A318762(A181819(n+1))-1` -/
def P1107726039334687826.Spec : Prop :=
  ∀ n, P1107726039334687826.a n = A335447 (n + 1)

end A335447

/-! ## A335447.P1428812009255072308

`A321648(A329607(n+1))-1`
-/

namespace A335447.P1428812009255072308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321648 (A329607 (n + 1)).toNat - 1

end

end A335447.P1428812009255072308

namespace A335447

/-- `A321648(A329607(n+1))-1` -/
def P1428812009255072308.Spec : Prop :=
  ∀ n, P1428812009255072308.a n = A335447 (n + 1)

end A335447

/-! ## A335447.P15767352162877556065

`A127229(n+5)%A008480(n+1)`
-/

namespace A335447.P15767352162877556065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A008480 (n + 1))

end

end A335447.P15767352162877556065

namespace A335447

/-- `A127229(n+5)%A008480(n+1)` -/
def P15767352162877556065.Spec : Prop :=
  ∀ n, P15767352162877556065.a n = A335447 (n + 1)

end A335447

/-! ## A335447.P16726575880028934183

`A321647(n+1)/A321648(n+1)-1`
-/

namespace A335447.P16726575880028934183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321647 (n + 1) : ℚ) / (A321648 (n + 1) : ℚ) - 1

end

end A335447.P16726575880028934183

namespace A335447

/-- `A321647(n+1)/A321648(n+1)-1` -/
def P16726575880028934183.Spec : Prop :=
  ∀ n, P16726575880028934183.a n = (A335447 (n + 1) : ℚ)

end A335447

/-! ## A335447.P3788423131849232728

`(A016969(n)+A008480(n+1))%(n+1)`
-/

namespace A335447.P3788423131849232728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016969 n + A008480 (n + 1)) (n + 1 : ℤ)

end

end A335447.P3788423131849232728

namespace A335447

/-- `(A016969(n)+A008480(n+1))%(n+1)` -/
def P3788423131849232728.Spec : Prop :=
  ∀ n, P3788423131849232728.a n = A335447 (n + 1)

end A335447

/-! ## A335447.P17349391657434995114

`∑{d}[n+1, A008480(#)*A297155((n+1)/#)]`
-/

namespace A335447.P17349391657434995114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008480 d * A297155 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A335447.P17349391657434995114

namespace A335447

/-- `∑{d}[n+1, A008480(#)*A297155((n+1)/#)]` -/
def P17349391657434995114.Spec : Prop :=
  ∀ n, P17349391657434995114.a n = A335447 (n + 1)

end A335447

/-! ## A335447.P439479770041502530

`A200748(n)%A008480(n+1)`
-/

namespace A335447.P439479770041502530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A008480 (n + 1))

end

end A335447.P439479770041502530

namespace A335447

/-- `A200748(n)%A008480(n+1)` -/
def P439479770041502530.Spec : Prop :=
  ∀ n, P439479770041502530.a n = A335447 (n + 1)

end A335447

/-! ## A335447.P2537982243819004259

`A298941(A087560(n+1))-1`
-/

namespace A335447.P2537982243819004259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298941 (A087560 (n + 1)).toNat - 1

end

end A335447.P2537982243819004259

namespace A335447

/-- `A298941(A087560(n+1))-1` -/
def P2537982243819004259.Spec : Prop :=
  ∀ n, P2537982243819004259.a n = A335447 (n + 1)

end A335447

/-! ## A335447.P1135923266373356991

`A153823(n)%A008480(n+1)`
-/

namespace A335447.P1135923266373356991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153823 n) (A008480 (n + 1))

end

end A335447.P1135923266373356991

namespace A335447

/-- `A153823(n)%A008480(n+1)` -/
def P1135923266373356991.Spec : Prop :=
  ∀ n, P1135923266373356991.a n = A335447 (n + 1)

end A335447

/-! ## A335447.P5226964721923146655

`A325392(A003961(n+1))-1`
-/

namespace A335447.P5226964721923146655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325392 (A003961 (n + 1)).toNat - 1

end

end A335447.P5226964721923146655

namespace A335447

/-- `A325392(A003961(n+1))-1` -/
def P5226964721923146655.Spec : Prop :=
  ∀ n, P5226964721923146655.a n = A335447 (n + 1)

end A335447

/-!
# A335448: Numbers whose prime indices are inseparable.

The programs for A335448, there is no canonical definition to state claims against.
-/

/-! ## A335448.P13150636058227899545

`lt[A335452(n+1), 1]+1`
-/

namespace A335448.P13150636058227899545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335452 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A335448.P13150636058227899545

/-! ## A335448.P12014871571228237664

`eq[0, A335452(round(acot(n)+n))]`
-/

namespace A335448.P12014871571228237664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335452 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335448.P12014871571228237664

/-! ## A335448.P5013038262079552662

`eq[0, A335452(A028310(n))]`
-/

namespace A335448.P5013038262079552662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335452 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335448.P5013038262079552662

/-! ## A335448.P6264619019058914213

`eq[4, A017668(a(A335452(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A335448.P6264619019058914213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A017668 (f2 (A335452 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335448.P6264619019058914213

/-! ## A335448.P15155465877744915252

`eq[2, A241435(a(A335452(n)))]` with `a(0)=1, a(1)=4`
-/

namespace A335448.P15155465877744915252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f2 =>
  A241435 (f2 (A335452 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335448.P15155465877744915252

/-! ## A335448.P6048750094878378462

`eq[0, A335452(A233583(n+1))]`
-/

namespace A335448.P6048750094878378462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335452 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335448.P6048750094878378462

/-! ## A335448.P8791402073196189050

`∪[A001248(n+1), A345193(n+1)]`
-/

namespace A335448.P8791402073196189050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335448.P8791402073196189050

/-! ## A335448.P2073544476711928430

`∪[A036454(n+1), A345193(n+1)]`
-/

namespace A335448.P2073544476711928430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335448.P2073544476711928430

/-! ## A335448.P18071635709729746360

`∪[A051676(n+1), A345193(n+1)]`
-/

namespace A335448.P18071635709729746360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335448.P18071635709729746360

/-! ## A335448.P3217701473512552865

`∪[A052043(n+1), A345193(n+1)]`
-/

namespace A335448.P3217701473512552865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335448.P3217701473512552865

/-!
# A335450: Number of (2,1,2)-avoiding permutations of the prime indices of n.

The programs for A335450, there is no canonical definition to state claims against.
-/

/-! ## A335450.P2438679405374676861

`A008480(A243057(n+1))`
-/

namespace A335450.P2438679405374676861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A243057 (n + 1)).toNat

end

end A335450.P2438679405374676861

/-! ## A335450.P17089870950245470178

`A008480(A243074(n+1))`
-/

namespace A335450.P17089870950245470178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A243074 (n + 1)).toNat

end

end A335450.P17089870950245470178

/-! ## A335450.P3863813503759337293

`A008480(11*A051119(n+1))`
-/

namespace A335450.P3863813503759337293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (11 * A051119 (n + 1)).toNat

end

end A335450.P3863813503759337293

/-! ## A335450.P11929031136448147846

`A168324(11*A051119(n+1))`
-/

namespace A335450.P11929031136448147846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168324 (11 * A051119 (n + 1)).toNat

end

end A335450.P11929031136448147846

/-! ## A335450.P761246594557488623

`A008480(lcm(11, A051119(n+1)))`
-/

namespace A335450.P761246594557488623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (Int.lcm 11 (A051119 (n + 1)))

end

end A335450.P761246594557488623

/-! ## A335450.P3862230131661959641

`A008480(n+1)-A335453(n+1)`
-/

namespace A335450.P3862230131661959641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) - A335453 (n + 1)

end

end A335450.P3862230131661959641

/-! ## A335450.P12978801454662335123

`A335447(n+1)+1-A335453(n+1)`
-/

namespace A335450.P12978801454662335123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335447 (n + 1) + (1 - A335453 (n + 1))

end

end A335450.P12978801454662335123

/-! ## A335450.P9001012944277009785

`A001222(n+1)!/∏{e}[n+1, #!]-A335453(n+1)`
-/

namespace A335450.P9001012944277009785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A001222 (n + 1)).toNat : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p) : ℕ) : ℚ) - (A335453 (n + 1) : ℚ)

end

end A335450.P9001012944277009785

/-! ## A335450.P7651651681314200428

`A008480(A327512(A071364(n+1)))`
-/

namespace A335450.P7651651681314200428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A327512 (A071364 (n + 1)).toNat).toNat

end

end A335450.P7651651681314200428

/-! ## A335450.P9272290118569488154

`A000005(∏{d}[A051119(n+1), A006530(#)])`
-/

namespace A335450.P9272290118569488154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ d ∈ Nat.divisors (f1 n).natAbs, A006530 d).toNat

end

end A335450.P9272290118569488154

/-!
# A335451: Number of permutations of the prime indices of n with all equal parts contiguous and none appearing more than twice.

The programs for A335451, there is no canonical definition to state claims against.
-/

/-! ## A335451.P444051997695560409

`∑{p}[n+1, gcd(n, #)]!*∏{e}[n+1, round(1/#)]`
-/

namespace A335451.P444051997695560409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p) : ℤ) * (∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.roundAway (1 / (Nat.factorization (f2 n) p : ℚ)))

end

end A335451.P444051997695560409

/-! ## A335451.P5822761891807465415

`∏{e}[n+1, #!]²%3*∑{e}[∏{p}[n+1, #], #]!`
-/

namespace A335451.P5822761891807465415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p)) ^ 2 % 3 * Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A335451.P5822761891807465415

/-! ## A335451.P14944689799754713104

`∑{e}[n+1, or(1, #-1)]!*∏{e}[n+1, round(1/#)]`
-/

namespace A335451.P14944689799754713104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Int.lor 1 ((Nat.factorization (f1 n) p : ℤ) - 1)).toNat : ℤ) * (∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.roundAway (1 / (Nat.factorization (f2 n) p : ℚ)))

end

end A335451.P14944689799754713104

/-! ## A335451.P1018186001784512995

`lcm(∏{e}[n+1, #!²]%3, ∑{e}[n+1, ceil(1/#)]!)`
-/

namespace A335451.P1018186001784512995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p) ^ 2) % 3) (Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), ⌈1 / (Nat.factorization (f2 n) p : ℚ)⌉).toNat)

end

end A335451.P1018186001784512995

/-! ## A335451.P15712222266713210569

`∑{e}[n+1, #-val(#!, 2)]!*∏{e}[n+1, round(1/#)]`
-/

namespace A335451.P15712222266713210569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2 : ℤ))).toNat : ℤ) * (∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.roundAway (1 / (Nat.factorization (f2 n) p : ℚ)))

end

end A335451.P15712222266713210569

/-! ## A335451.P9967751533827208982

`lcm(∑{e}[n+1, #-val(#!, 2)]!, ∏{e}[n+1, round(1/#)])`
-/

namespace A335451.P9967751533827208982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2 : ℤ))).toNat : ℤ) (∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.roundAway (1 / (Nat.factorization (f2 n) p : ℚ)))

end

end A335451.P9967751533827208982

/-! ## A335451.P6522758033433106607

`C(∑{e}[n+1, #-val(#!, 2)]!, gcd(val(n+1, 8)!*∏{p}[n+1, #], ceil(or(1, n)/∏{p}[n+1, gcd((n+1)*(n+2), #²)]))^3)`
-/

namespace A335451.P6522758033433106607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2 : ℤ))).toNat) (Int.gcd ((Nat.factorial (SequenceMachineLib.valuation (n + 1) 8) * (∏ p ∈ Nat.primeFactors (f2 n), p) : ℕ) : ℤ) ⌈(Nat.lor 1 n : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), Nat.gcd ((n + 1) * (n + 2)) (p ^ 2) : ℕ) : ℚ)⌉ ^ 3)

end

end A335451.P6522758033433106607

/-! ## A335451.P18352700694565080967

`lcm(∏{e}[n+1, round(1/#)], A333175(n+1))`
-/

namespace A335451.P18352700694565080967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (1 / (Nat.factorization (f1 n) p : ℚ))) (A333175 (n + 1))

end

end A335451.P18352700694565080967

/-! ## A335451.P5444456727917577299

`A001221(n+1)!*∏{e}[n+1, round(1/#)]`
-/

namespace A335451.P5444456727917577299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A001221 (n + 1)).toNat : ℤ) * (∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (1 / (Nat.factorization (f1 n) p : ℚ)))

end

end A335451.P5444456727917577299

/-! ## A335451.P1814228114919502596

`A335489(A019554(n+1))`
-/

namespace A335451.P1814228114919502596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335489 (A019554 (n + 1)).toNat

end

end A335451.P1814228114919502596

/-!
# A335452: Number of separations (Carlitz compositions or anti-runs) of the prime indices of n.

The programs for A335452, there is no canonical definition to state claims against.
-/

/-! ## A335452.P4572602556926384379

`abs(A355817(n+1))`
-/

namespace A335452.P4572602556926384379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355817 (n + 1)|

end

end A335452.P4572602556926384379

/-! ## A335452.P5493585906113096817

`gcd(A000038(n), A355817(n+1))`
-/

namespace A335452.P5493585906113096817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A355817 (n + 1))

end

end A335452.P5493585906113096817

/-! ## A335452.P5678616006626812813

`lcm(A020985(n), A355817(n+1))`
-/

namespace A335452.P5678616006626812813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A355817 (n + 1))

end

end A335452.P5678616006626812813

/-! ## A335452.P690047357039442283

`A008836(n+1)*A355817(n+1)`
-/

namespace A335452.P690047357039442283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A355817 (n + 1)

end

end A335452.P690047357039442283

/-! ## A335452.P7564828004811914416

`A008480(n+1)*A355817(n+1)/A355939(n+1)`
-/

namespace A335452.P7564828004811914416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008480 (n + 1) * A355817 (n + 1) : ℚ) / (A355939 (n + 1) : ℚ)

end

end A335452.P7564828004811914416

/-! ## A335452.P13686736463077664321

`A335125(A181819(n+1))`
-/

namespace A335452.P13686736463077664321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335125 (A181819 (n + 1)).toNat

end

end A335452.P13686736463077664321

/-! ## A335452.P2043468199357696894

`A335125(∏{p}[n+1, A000040(val(n+1, #))])`
-/

namespace A335452.P2043468199357696894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335125 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (SequenceMachineLib.valuation (n + 1) p)).toNat

end

end A335452.P2043468199357696894

/-! ## A335452.P7692556607335908728

`A335125(∏{e}[A064988(n+1), A000040(#)])`
-/

namespace A335452.P7692556607335908728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335125 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A335452.P7692556607335908728

/-! ## A335452.P8176031756619002322

`A335125(∏{e}[A045966(n+1), A030059(#)])`
-/

namespace A335452.P8176031756619002322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335125 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A030059 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A335452.P8176031756619002322

/-! ## A335452.P5236662742235772278

`A335125(∏{e}[A045966(n+1), A030291(#)])`
-/

namespace A335452.P5236662742235772278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335125 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A030291 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A335452.P5236662742235772278

/-!
# A335453: Number of (2,1,2)-matching permutations of the prime indices of n.

The programs for A335453, there is no canonical definition to state claims against.
-/

/-! ## A335453.P7801188682052112649

`(∑{e}[n+1, #]!/∏{e}[n+1, #!]-A332288(n+1))%((n+1)/∏{p}[n+1, #])`
-/

namespace A335453.P7801188682052112649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ) - (A332288 (n + 1) : ℚ))) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)))

end

end A335453.P7801188682052112649

/-! ## A335453.P12385568214049064791

`A221150(n)*A332671(n+1)`
-/

namespace A335453.P12385568214049064791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221150 n * A332671 (n + 1)

end

end A335453.P12385568214049064791

/-! ## A335453.P4767490272123323819

`and(Δ[A007504(n)], A332671(n+1))`
-/

namespace A335453.P4767490272123323819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A332671 (n + 1))

end

end A335453.P4767490272123323819

/-! ## A335453.P9053736480949967602

`and(p?[A001057(n)], A332671(n+1))`
-/

namespace A335453.P9053736480949967602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A332671 (n + 1))

end

end A335453.P9053736480949967602

/-! ## A335453.P686638885317112381

`and(p?[A004442(n)], A332671(n+1))`
-/

namespace A335453.P686638885317112381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A332671 (n + 1))

end

end A335453.P686638885317112381

/-! ## A335453.P1146437515913173585

`and(p?[A006368(n)], A332671(n+1))`
-/

namespace A335453.P1146437515913173585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A332671 (n + 1))

end

end A335453.P1146437515913173585

/-! ## A335453.P11311766758045755227

`and(A000040(n+1), A332671(n+1))`
-/

namespace A335453.P11311766758045755227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000040 (n + 1)) (A332671 (n + 1))

end

end A335453.P11311766758045755227

/-! ## A335453.P950903127062095786

`and(p?[A000463(n+1)], A332671(n+1))`
-/

namespace A335453.P950903127062095786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A332671 (n + 1))

end

end A335453.P950903127062095786

/-! ## A335453.P4712441434152200604

`and(record[A006530(n+2)], A332671(n+1))`
-/

namespace A335453.P4712441434152200604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A332671 (n + 1))

end

end A335453.P4712441434152200604

/-! ## A335453.P7797571177529933004

`and(record[A020639(n+2)], A332671(n+1))`
-/

namespace A335453.P7797571177529933004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A332671 (n + 1))

end

end A335453.P7797571177529933004

/-!
# A335454: Number of normal patterns matched by the n-th composition in standard order (A066099).

The programs for A335454, there is no canonical definition to state claims against.
-/

/-! ## A335454.P3561394772909422556

`A334300(n)+A202022(A261300(n))`
-/

namespace A335454.P3561394772909422556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334300 n + A202022 (A261300 n).toNat

end

end A335454.P3561394772909422556

/-! ## A335454.P7768073797142414398

`A335458(n)+A335446(A035607(n))`
-/

namespace A335454.P7768073797142414398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335458 n + A335446 (A035607 n).toNat

end

end A335454.P7768073797142414398

/-! ## A335454.P10248841900090457405

`A335446(A035607(n))+A335474(n)+1`
-/

namespace A335454.P10248841900090457405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335446 (A035607 n).toNat + (A335474 n + 1)

end

end A335454.P10248841900090457405

/-! ## A335454.P8873232557077487327

`A002024(A245547(4*n+2))`
-/

namespace A335454.P8873232557077487327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A245547 (4 * n + 2)).toNat

end

end A335454.P8873232557077487327

/-! ## A335454.P669076352990006286

`A335458(n)+A089802(A080535(n))`
-/

namespace A335454.P669076352990006286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335458 n + A089802 (A080535 n).toNat

end

end A335454.P669076352990006286

/-!
# A335455: Number of compositions of n with some part appearing more than twice.

The programs for A335455, there is no canonical definition to state claims against.
-/

/-! ## A335455.P15537885496986616092

`ceil(2^(n-1))-A232432(n)`
-/

namespace A335455.P15537885496986616092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A232432 n

end

end A335455.P15537885496986616092

/-! ## A335455.P2036801725287111997

`abs(A011782(n)-A232432(n))`
-/

namespace A335455.P2036801725287111997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 n - A232432 n|

end

end A335455.P2036801725287111997

/-! ## A335455.P9533345440237326384

`A011782(n)-A243081(∑[n+3])`
-/

namespace A335455.P9533345440237326384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A243081 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A335455.P9533345440237326384

/-! ## A335455.P11122416709379285664

`A261982(n)-A242447(A133263(n))`
-/

namespace A335455.P11122416709379285664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261982 n - A242447 (A133263 n).toNat

end

end A335455.P11122416709379285664

/-! ## A335455.P10012372042979775833

`A261982(n)-A242447(A238531(n+1))`
-/

namespace A335455.P10012372042979775833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261982 n - A242447 (A238531 (n + 1)).toNat

end

end A335455.P10012372042979775833

/-!
# A335456: Number of normal patterns matched by compositions of n.

The programs for A335456, there is no canonical definition to state claims against.
-/

/-! ## A335456.P11386825397669798234

`A182276(ceil(2^(n-1)))+∑[ceil(2^(n-1))]`
-/

namespace A335456.P11386825397669798234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182276 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335456.P11386825397669798234

/-! ## A335456.P14590535324416167060

`A108141(A382574(n+1))`
-/

namespace A335456.P14590535324416167060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A382574 (n + 1)).toNat

end

end A335456.P14590535324416167060

/-! ## A335456.P5360005175649285206

`A032539(A050476(n)-n)`
-/

namespace A335456.P5360005175649285206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032539 (A050476 n - (n : ℤ)).toNat

end

end A335456.P5360005175649285206

/-!
# A335457: Number of normal patterns contiguously matched by compositions of n.

The programs for A335457, there is no canonical definition to state claims against.
-/

/-! ## A335457.P17610617353114959638

`A302478(A002379(2*n))+A281540(n+1)`
-/

namespace A335457.P17610617353114959638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (A002379 (2 * n)).toNat + A281540 (n + 1)

end

end A335457.P17610617353114959638

/-! ## A335457.P10944142531813661524

`∑[A331912(A320733(n))]`
-/

namespace A335457.P10944142531813661524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331912 (A320733 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335457.P10944142531813661524

/-! ## A335457.P1425374404723495958

`∑[A358992(∑[A289322(n)])]`
-/

namespace A335457.P1425374404723495958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289322 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358992 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335457.P1425374404723495958

/-!
# A335458: Number of normal patterns contiguously matched by the n-th composition in standard order (A066099).

The programs for A335458, there is no canonical definition to state claims against.
-/

/-! ## A335458.P16940603879779077034

`A335474(n)+1`
-/

namespace A335458.P16940603879779077034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335474 n + 1

end

end A335458.P16940603879779077034

/-! ## A335458.P8637879085270640062

`A005496(A335474(n))`
-/

namespace A335458.P8637879085270640062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A335474 n).toNat

end

end A335458.P8637879085270640062

/-! ## A335458.P17610228794407141907

`A008619(2*A335474(n))`
-/

namespace A335458.P17610228794407141907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A335474 n).toNat

end

end A335458.P17610228794407141907

/-! ## A335458.P3279611282223004202

`A028242(2*A335474(n))`
-/

namespace A335458.P3279611282223004202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A335474 n).toNat

end

end A335458.P3279611282223004202

/-! ## A335458.P6360023116094186778

`A029579(2*A335474(n))`
-/

namespace A335458.P6360023116094186778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A335474 n).toNat

end

end A335458.P6360023116094186778

/-! ## A335458.P6167123567156255066

`A008611(3*A335474(n))`
-/

namespace A335458.P6167123567156255066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A335474 n).toNat

end

end A335458.P6167123567156255066

/-! ## A335458.P18368489728127530489

`A000005(2^A335474(n))`
-/

namespace A335458.P18368489728127530489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A335474 n : ℤ))).toNat

end

end A335458.P18368489728127530489

/-! ## A335458.P15761103353950041804

`A001511(2^A335474(n))`
-/

namespace A335458.P15761103353950041804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A335474 n : ℤ))).toNat

end

end A335458.P15761103353950041804

/-! ## A335458.P650945658458911543

`A001222(2*2^A335474(n))`
-/

namespace A335458.P650945658458911543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (2 * (2 : ℚ) ^ (A335474 n : ℤ))).toNat

end

end A335458.P650945658458911543

/-! ## A335458.P2398863266340686851

`A005361(2*2^A335474(n))`
-/

namespace A335458.P2398863266340686851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (SequenceMachineLib.roundAway (2 * (2 : ℚ) ^ (A335474 n : ℤ))).toNat

end

end A335458.P2398863266340686851

/-!
# A335459: Number of permutations of the prime indices of n! with at least one non-singleton run.

The programs for A335459, there is no canonical definition to state claims against.
-/

/-! ## A335459.P9962400452500302464

`A325617(n)-A335407(n)`
-/

namespace A335459.P9962400452500302464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325617 n - A335407 n

end

end A335459.P9962400452500302464

/-! ## A335459.P7579082896618239893

`A318762(A325508(n))-A335407(n)`
-/

namespace A335459.P7579082896618239893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318762 (A325508 n).toNat - A335407 n

end

end A335459.P7579082896618239893

/-! ## A335459.P18374638616747958676

`abs(A355939(n!))-A335407(n)`
-/

namespace A335459.P18374638616747958676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355939 (Nat.factorial n)| - A335407 n

end

end A335459.P18374638616747958676

/-! ## A335459.P8294205817284878591

`A321648(A329607(n!))-A335407(n)`
-/

namespace A335459.P8294205817284878591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321648 (A329607 (Nat.factorial n)).toNat - A335407 n

end

end A335459.P8294205817284878591

/-!
# A335460: Number of (1,2,1) or (2,1,2)-matching permutations of the prime indices of n.

The programs for A335460, there is no canonical definition to state claims against.
-/

/-! ## A335460.P2677682677935000263

`∑{e}[n+1, #]!/∏{e}[n+1, #!]-∑{p}[n+1, gcd(n, #)]!`
-/

namespace A335460.P2677682677935000263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ) - (Nat.factorial (∑ p ∈ Nat.primeFactors (f3 n), Nat.gcd n p) : ℚ)

end

end A335460.P2677682677935000263

/-! ## A335460.P12535996288123857462

`∑{e}[n+1, #]!/∏{e}[n+1, #!]-∑{e}[∏{p}[n+1, #], #]!`
-/

namespace A335460.P12535996288123857462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ) - (Nat.factorial (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p) : ℚ)

end

end A335460.P12535996288123857462

/-! ## A335460.P8966501004457462160

`∑{e}[n+1, #]!/∏{e}[n+1, #!]-∑{p}[n+1, C(#%n, #)]!`
-/

namespace A335460.P8966501004457462160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ) - (Nat.factorial (∑ p ∈ Nat.primeFactors (f3 n), Nat.choose (p % n) p) : ℚ)

end

end A335460.P8966501004457462160

/-! ## A335460.P9247589622186270465

`A008480(n+1)-∑{p}[n+1, gcd(n, #)]!`
-/

namespace A335460.P9247589622186270465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) - (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p) : ℤ)

end

end A335460.P9247589622186270465

/-! ## A335460.P5387450821824799134

`∑{e}[n+1, #]!/∏{e}[n+1, #!]-A333175(n+1)`
-/

namespace A335460.P5387450821824799134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ) - (A333175 (n + 1) : ℚ)

end

end A335460.P5387450821824799134

/-! ## A335460.P13003417422220273680

`∑{e}[n+1, #]!/∏{e}[n+1, #!]-A001221(n+1)!`
-/

namespace A335460.P13003417422220273680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ) - (Nat.factorial (A001221 (n + 1)).toNat : ℚ)

end

end A335460.P13003417422220273680

/-! ## A335460.P4010617329395416470

`∑{e}[n+1, #]!/∏{e}[n+1, #!]-A008480(∏{p}[n+1, #])`
-/

namespace A335460.P4010617329395416470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ) - (A008480 (∏ p ∈ Nat.primeFactors (f3 n), p) : ℚ)

end

end A335460.P4010617329395416470

/-! ## A335460.P17671359565091121537

`∑{e}[n+1, #]!/∏{e}[n+1, #!]-A335452(∏{p}[n+1, #])`
-/

namespace A335460.P17671359565091121537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ) - (A335452 (∏ p ∈ Nat.primeFactors (f3 n), p) : ℚ)

end

end A335460.P17671359565091121537

/-! ## A335460.P18443184853393918320

`A008480(n+1)-A333175(n+1)`
-/

namespace A335460.P18443184853393918320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) - A333175 (n + 1)

end

end A335460.P18443184853393918320

/-! ## A335460.P1648677467030754817

`A008480(n+1)-A001221(n+1)!`
-/

namespace A335460.P1648677467030754817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) - (Nat.factorial (A001221 (n + 1)).toNat : ℤ)

end

end A335460.P1648677467030754817

/-!
# A335461: Triangle read by rows where T(n,k) is the number of patterns of length n with k runs.

The programs for A335461, there is no canonical definition to state claims against.
-/

/-! ## A335461.P11126499880155539187

`A337506(A038722(n+1)+A000007(n))`
-/

namespace A335461.P11126499880155539187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337506 (A038722 (n + 1) + A000007 n).toNat

end

end A335461.P11126499880155539187

/-! ## A335461.P16439074007675886360

`A337506(A038722(n+1)*A054977(n))`
-/

namespace A335461.P16439074007675886360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337506 (A038722 (n + 1) * A054977 n).toNat

end

end A335461.P16439074007675886360

/-! ## A335461.P4506443865427474112

`A337506(A038722(n+1)*A057427(n))`
-/

namespace A335461.P4506443865427474112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337506 (A038722 (n + 1) * A057427 n).toNat

end

end A335461.P4506443865427474112

/-! ## A335461.P3782924776529193470

`A337506(A038722(n+1)%A000124(n))`
-/

namespace A335461.P3782924776529193470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337506 (Int.tmod (A038722 (n + 1)) (A000124 n)).toNat

end

end A335461.P3782924776529193470

/-! ## A335461.P5804748153330526131

`A337506(A038722(n+1)+1-A054977(n))`
-/

namespace A335461.P5804748153330526131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337506 (A038722 (n + 1) + (1 - A054977 n)).toNat

end

end A335461.P5804748153330526131

/-! ## A335461.P8950475226596100633

`A337506(A038722(n+1)+1-A057427(n))`
-/

namespace A335461.P8950475226596100633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337506 (A038722 (n + 1) + (1 - A057427 n)).toNat

end

end A335461.P8950475226596100633

/-! ## A335461.P5523874828928062458

`A337506(and(A000225(n), A038722(n+1)))`
-/

namespace A335461.P5523874828928062458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337506 (Int.land (A000225 n) (A038722 (n + 1))).toNat

end

end A335461.P5523874828928062458

/-!
# A335462: Number of (1,2,1) and (2,1,2)-matching permutations of the prime indices of n.

The programs for A335462, there is no canonical definition to state claims against.
-/

/-! ## A335462.P8933002519576879912

`floor(floor(sqrt(n))^val(n+1, 6)/11)`
-/

namespace A335462.P8933002519576879912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.sqrt n ^ SequenceMachineLib.valuation (n + 1) 6 : ℚ) / 11⌋

end

end A335462.P8933002519576879912

/-! ## A335462.P6621284306562597727

`val(((n+1)/∏{p}[n+1, #])^5, 12)`
-/

namespace A335462.P6621284306562597727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) ^ 5)).toNat 12

end

end A335462.P6621284306562597727

/-! ## A335462.P13938202590125849520

`n%and(49, round(2^(e*val(n+1, 6))))`
-/

namespace A335462.P13938202590125849520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (Int.land 49 (SequenceMachineLib.roundAway ((2 : ℝ) ^ (Real.exp 1 * (SequenceMachineLib.valuation (n + 1) 6 : ℝ)))))

end

end A335462.P13938202590125849520

/-! ## A335462.P13359558298822556487

`val(floor((n+1)/ϕ)^∑{e}[n+1, #], 44)`
-/

namespace A335462.P13359558298822556487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (⌊(n + 1 : ℝ) / Real.goldenRatio⌋ ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)).toNat 44

end

end A335462.P13359558298822556487

/-! ## A335462.P6549022021899980545

`dr(comp[4*n])*floor(∑{e}[n+1, 1-1/#])`
-/

namespace A335462.P6549022021899980545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) : ℤ) * ⌊∑ p ∈ Nat.primeFactors (f2 n), (1 - 1 / (Nat.factorization (f2 n) p : ℚ))⌋

end

end A335462.P6549022021899980545

/-! ## A335462.P7177406160313197354

`∑{e}[C((n+1)/∏{p}[n+1, #], and(n, 2*n)), #]`
-/

namespace A335462.P7177406160313197354
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat (Nat.land n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A335462.P7177406160313197354

/-! ## A335462.P1200075275125229503

`12%A304779(n+1)`
-/

namespace A335462.P1200075275125229503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 12 (A304779 (n + 1))

end

end A335462.P1200075275125229503

/-! ## A335462.P9621296756383247508

`val(A183102(n+1), 12)`
-/

namespace A335462.P9621296756383247508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A183102 (n + 1)).toNat 12

end

end A335462.P9621296756383247508

/-! ## A335462.P3651380905996349488

`ceil(A006530(∏{e}[n+1, 2^#-1]+1)/2)-1`
-/

namespace A335462.P3651380905996349488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006530 (∏ p ∈ Nat.primeFactors (f1 n), ((2 ^ Nat.factorization (f1 n) p : ℤ) - 1) + 1).toNat : ℚ) / 2⌉ - 1

end

end A335462.P3651380905996349488

/-! ## A335462.P395667599664160320

`∏[char[∑[n+1]]+1]%A000005(6^val(n+1, 6))`
-/

namespace A335462.P395667599664160320
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A000005 (6 ^ SequenceMachineLib.valuation (n + 1) 6))

end

end A335462.P395667599664160320

/-!
# A335463: Numbers k such that there exists a permutation of the prime indices of k matching both (1,2,1) and (2,1,2).

The programs for A335463, there is no canonical definition to state claims against.
-/

/-! ## A335463.P88732059964104068

`filter[A375397(n+1), A065202(#)]`
-/

namespace A335463.P88732059964104068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A335463.P88732059964104068

/-! ## A335463.P7355879814802123025

`∩[A065201(n+1), A375397(n+1)]`
-/

namespace A335463.P7355879814802123025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335463.P7355879814802123025

/-! ## A335463.P7275872516179024233

`∪[A036785(n+1), A332642(n+1)]`
-/

namespace A335463.P7275872516179024233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335463.P7275872516179024233

/-! ## A335463.P5046467743970124616

`∪[A036785(n+1), A332725(n+1)]`
-/

namespace A335463.P5046467743970124616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335463.P5046467743970124616

/-! ## A335463.P9933805010780328184

`∪[A036785(n+1), A332831(n+1)]`
-/

namespace A335463.P9933805010780328184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335463.P9933805010780328184

/-! ## A335463.P3215037744409524875

`∪[A332642(n+1), A338539(n+1)]`
-/

namespace A335463.P3215037744409524875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335463.P3215037744409524875

/-! ## A335463.P18002710716675087789

`∪[A332725(n+1), A338539(n+1)]`
-/

namespace A335463.P18002710716675087789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335463.P18002710716675087789

/-! ## A335463.P4778296981017888103

`∪[A332831(n+1), A338539(n+1)]`
-/

namespace A335463.P4778296981017888103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335463.P4778296981017888103

/-!
# A335464: Number of compositions of n with a run of length > 2.

The programs for A335464, there is no canonical definition to state claims against.
-/

/-! ## A335464.P5600614783818411967

`A011782(n)-A128695(n)`
-/

namespace A335464.P5600614783818411967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A128695 n

end

end A335464.P5600614783818411967

/-! ## A335464.P15742558419648071217

`A000032(C(3, n²))^(n-1)-A128695(n)`
-/

namespace A335464.P15742558419648071217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (Nat.choose 3 (n ^ 2)) : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (A128695 n : ℚ)

end

end A335464.P15742558419648071217

/-! ## A335464.P984912729094041381

`2^(n-and(1, A000040(n+1)))-A128695(n)`
-/

namespace A335464.P984912729094041381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - Int.land 1 (A000040 (n + 1)) : ℤ) - (A128695 n : ℚ)

end

end A335464.P984912729094041381

/-! ## A335464.P6147271128004336088

`Δ[A056469(n)]-A128695(n)`
-/

namespace A335464.P6147271128004336088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A128695 n

end

end A335464.P6147271128004336088

/-! ## A335464.P7957712013229805746

`ceil(2^(n-1))-A232435(A022856(n+2))`
-/

namespace A335464.P7957712013229805746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A232435 (A022856 (n + 2)).toNat

end

end A335464.P7957712013229805746

/-!
# A335466: Numbers k such that the k-th composition in standard order (A066099) matches (1,2,1).

The programs for A335466, there is no canonical definition to state claims against.
-/

/-! ## A335466.P3580674540837194312

`∩[A335374(n+1), A374253(n+1)]`
-/

namespace A335466.P3580674540837194312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335466.P3580674540837194312

/-! ## A335466.P7140183050836818844

`∩[A374253(n+1), A375296(n+1)]`
-/

namespace A335466.P7140183050836818844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375296 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335466.P7140183050836818844

/-! ## A335466.P760684658802625148

`∩[A335488(n+1), A375295(n+1)]`
-/

namespace A335466.P760684658802625148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335466.P760684658802625148

/-! ## A335466.P1222829577379791504

`comp[A335467(n+1)]`
-/

namespace A335466.P1222829577379791504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335466.P1222829577379791504

/-! ## A335466.P6253675077765332631

`filter[A375295(n+1), A368281(#)]`
-/

namespace A335466.P6253675077765332631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368281 (f1 j).toNat = 1) n)

end

end A335466.P6253675077765332631

/-!
# A335467: Numbers k such that the k-th composition in standard order (A066099) avoids the pattern (1,2,1).

The programs for A335467, there is no canonical definition to state claims against.
-/

/-! ## A335467.P13289487067614967967

`comp[A335466(n+1)]`
-/

namespace A335467.P13289487067614967967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335467.P13289487067614967967

/-! ## A335467.P15216341935594007892

`comp[record[A335466(A128227(n))]]`
-/

namespace A335467.P15216341935594007892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335466 (A128227 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335467.P15216341935594007892

/-! ## A335467.P12399981547424478011

`comp[record[A335466(A193738(n))]]`
-/

namespace A335467.P12399981547424478011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335466 (A193738 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335467.P12399981547424478011

/-! ## A335467.P15550264295227330973

`comp[A375295(comp[A033954(n)])]`
-/

namespace A335467.P15550264295227330973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033954 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375295 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335467.P15550264295227330973

/-! ## A335467.P16636473038807423570

`comp[A375295(A394295(n+1))]`
-/

namespace A335467.P16636473038807423570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375295 (A394295 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335467.P16636473038807423570

/-! ## A335467.P11528809605438747155

`∪[A374249(n+1), A005942(n)]`
-/

namespace A335467.P11528809605438747155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005942 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335467.P11528809605438747155

/-! ## A335467.P5745980193697139900

`∪[A374249(n+1), A016957(n)]`
-/

namespace A335467.P5745980193697139900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335467.P5745980193697139900

/-! ## A335467.P8047572171543632372

`comp[A375295(comp[A181123(n+1)])]`
-/

namespace A335467.P8047572171543632372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375295 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335467.P8047572171543632372

/-! ## A335467.P13013746223093810542

`∪[A374249(n+1), record[A006370(n)]]`
-/

namespace A335467.P13013746223093810542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374249 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335467.P13013746223093810542

/-! ## A335467.P17674264188181922602

`lt[A302436(A246674(2*n+1)), 2]`
-/

namespace A335467.P17674264188181922602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302436 (A246674 (2 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A335467.P17674264188181922602

/-!
# A335468: Numbers k such that the k-th composition in standard order (A066099) matches the pattern (2,1,2).

The programs for A335468, there is no canonical definition to state claims against.
-/

/-! ## A335468.P15369782316552671143

`∩[A335373(n+1), comp[A374767(n+1)]]`
-/

namespace A335468.P15369782316552671143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335373 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374767 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A335468.P15369782316552671143

/-!
# A335469: Numbers k such that the k-th composition in standard order (A066099) avoids the pattern (2,1,2).

The programs for A335469, there is no canonical definition to state claims against.
-/

/-! ## A335469.P10195707818864142796

`comp[A335468(1+n)]`
-/

namespace A335469.P10195707818864142796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335468 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335469.P10195707818864142796

/-! ## A335469.P508123013344294485

`lt[A335465(floor(n/2^val(n+1, 2))), 7]`
-/

namespace A335469.P508123013344294485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335465 ⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A335469.P508123013344294485

/-! ## A335469.P10577835699843585023

`lt[A353454(floor(n/(xor(n, n+1)+1))+1), 2]`
-/

namespace A335469.P10577835699843585023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353454 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A335469.P10577835699843585023

/-! ## A335469.P17374989183332432581

`lt[A358135(floor(n/(xor(n, n+1)+1))+1), 2]`
-/

namespace A335469.P17374989183332432581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358135 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A335469.P17374989183332432581

/-! ## A335469.P9715861407649916796

`lt[A123725(floor(n/(xor(n, n+1)+1))+1), 4]`
-/

namespace A335469.P9715861407649916796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123725 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A335469.P9715861407649916796

/-! ## A335469.P322145219373274242

`comp[A335373(A301289(n))]`
-/

namespace A335469.P322145219373274242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335373 (A301289 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335469.P322145219373274242

/-! ## A335469.P11497274622306825071

`lt[A333381(A375124(n)), 2]`
-/

namespace A335469.P11497274622306825071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A375124 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A335469.P11497274622306825071

/-! ## A335469.P4867224797741681673

`comp[record[A335468(A106737(n))]]`
-/

namespace A335469.P4867224797741681673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335468 (A106737 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335469.P4867224797741681673

/-! ## A335469.P13296291908522822411

`comp[record[A335468(A124758(n))]]`
-/

namespace A335469.P13296291908522822411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335468 (A124758 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335469.P13296291908522822411

/-! ## A335469.P4366114439745571765

`∪[A107686(n), A175413(n+1)]`
-/

namespace A335469.P4366114439745571765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107686 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335469.P4366114439745571765

/-!
# A335470: Number of compositions of n matching the pattern (1,2,1).

The programs for A335470, there is no canonical definition to state claims against.
-/

/-! ## A335470.P6216244562250065128

`abs(A335471(n)-ceil(2^(n-1)))`
-/

namespace A335470.P6216244562250065128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A335471 n - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉|

end

end A335470.P6216244562250065128

/-! ## A335470.P7228662986152619356

`A011782(n)-A335471(n)`
-/

namespace A335470.P7228662986152619356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A335471 n

end

end A335470.P7228662986152619356

/-! ## A335470.P3135576990950820707

`∑[A034008(n)]-A335471(n)`
-/

namespace A335470.P3135576990950820707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A335471 n

end

end A335470.P3135576990950820707

/-! ## A335470.P245799941050315662

`A016116(A004273(n))-A335471(n)`
-/

namespace A335470.P245799941050315662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A004273 n).toNat - A335471 n

end

end A335470.P245799941050315662

/-! ## A335470.P7858813463620597816

`A003242(n)+A261983(n)-A335471(n)`
-/

namespace A335470.P7858813463620597816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003242 n + (A261983 n - A335471 n)

end

end A335470.P7858813463620597816

/-! ## A335470.P3042119667979583394

`Δ[A131577(n)]-A335471(n)`
-/

namespace A335470.P3042119667979583394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A335471 n

end

end A335470.P3042119667979583394

/-! ## A335470.P13157531942895304295

`A335472(n)+A335473(n)-A335471(n)`
-/

namespace A335470.P13157531942895304295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335472 n + (A335473 n - A335471 n)

end

end A335470.P13157531942895304295

/-! ## A335470.P12301159349202005446

`A038207(A161680(n))-A335471(n)`
-/

namespace A335470.P12301159349202005446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 (A161680 n).toNat - A335471 n

end

end A335470.P12301159349202005446

/-!
# A335471: Number of compositions of n avoiding the pattern (1,2,1).

The programs for A335471, there is no canonical definition to state claims against.
-/

/-! ## A335471.P5367026930071528328

`A011782(n)-A335470(n)`
-/

namespace A335471.P5367026930071528328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A335470 n

end

end A335471.P5367026930071528328

/-! ## A335471.P4509745487377040171

`∑[A034008(n)]-A335470(n)`
-/

namespace A335471.P4509745487377040171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A335470 n

end

end A335471.P4509745487377040171

/-! ## A335471.P14708368280779021537

`A003242(n)+A261983(n)-A335470(n)`
-/

namespace A335471.P14708368280779021537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003242 n + (A261983 n - A335470 n)

end

end A335471.P14708368280779021537

/-! ## A335471.P9651222319466120014

`A102726(n)+A335514(n)-A335470(n)`
-/

namespace A335471.P9651222319466120014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102726 n + (A335514 n - A335470 n)

end

end A335471.P9651222319466120014

/-! ## A335471.P15397885956918440193

`A336269(n)+A336273(n)-A335470(n)`
-/

namespace A335471.P15397885956918440193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336269 n + (A336273 n - A335470 n)

end

end A335471.P15397885956918440193

/-! ## A335471.P6189025570698028730

`Δ[A094373(n)]-A335470(n)`
-/

namespace A335471.P6189025570698028730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A335470 n

end

end A335471.P6189025570698028730

/-! ## A335471.P3853493778843446874

`Δ[A131577(n)]-A335470(n)`
-/

namespace A335471.P3853493778843446874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A335470 n

end

end A335471.P3853493778843446874

/-! ## A335471.P9904920328688066324

`A335472(n)+A335473(n)-A335470(n)`
-/

namespace A335471.P9904920328688066324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335472 n + (A335473 n - A335470 n)

end

end A335471.P9904920328688066324

/-!
# A335472: Number of compositions of n matching the pattern (2,1,2).

The programs for A335472, there is no canonical definition to state claims against.
-/

/-! ## A335472.P3345801040895712313

`ceil(2^(n-1))-A335473(n)`
-/

namespace A335472.P3345801040895712313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A335473 n

end

end A335472.P3345801040895712313

/-! ## A335472.P7120397493983626054

`abs(A011782(n)-A335473(n))`
-/

namespace A335472.P7120397493983626054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 n - A335473 n|

end

end A335472.P7120397493983626054

/-! ## A335472.P12922619981801793456

`abs(Δ[A056469(n)]-A335473(n))`
-/

namespace A335472.P12922619981801793456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - A335473 n|

end

end A335472.P12922619981801793456

/-! ## A335472.P12995639953216938919

`(Δ[A056469(n)]-A335473(n))%A000051(n)`
-/

namespace A335472.P12995639953216938919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n - A335473 n) (A000051 n)

end

end A335472.P12995639953216938919

/-! ## A335472.P14188753331594076769

`A000007(n+1)+Δ[A056469(n)]-A335473(n)`
-/

namespace A335472.P14188753331594076769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (f1 (n + 1) - f1 n - A335473 n)

end

end A335472.P14188753331594076769

/-!
# A335473: Number of compositions of n avoiding the pattern (2,1,2).

The programs for A335473, there is no canonical definition to state claims against.
-/

/-! ## A335473.P16153106534207691182

`A011782(n)-A335472(n)`
-/

namespace A335473.P16153106534207691182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A335472 n

end

end A335473.P16153106534207691182

/-! ## A335473.P4438192557683709317

`Δ[A131577(n)]-A335472(n)`
-/

namespace A335473.P4438192557683709317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A335472 n

end

end A335473.P4438192557683709317

/-! ## A335473.P17906807449775926455

`A003242(n)+A261983(n)-A335472(n)`
-/

namespace A335473.P17906807449775926455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003242 n + (A261983 n - A335472 n)

end

end A335473.P17906807449775926455

/-! ## A335473.P15022404257872404313

`A102726(n)+A335514(n)-A335472(n)`
-/

namespace A335473.P15022404257872404313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102726 n + (A335514 n - A335472 n)

end

end A335473.P15022404257872404313

/-! ## A335473.P11637480456676152824

`A335470(n)+A335471(n)-A335472(n)`
-/

namespace A335473.P11637480456676152824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335470 n + (A335471 n - A335472 n)

end

end A335473.P11637480456676152824

/-! ## A335473.P15449532951742172535

`A059268(A055998(n))-A335472(n)`
-/

namespace A335473.P15449532951742172535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A055998 n).toNat - A335472 n

end

end A335473.P15449532951742172535

/-!
# A335474: Number of nonempty normal patterns contiguously matched by the n-th composition in standard order.

The programs for A335474, there is no canonical definition to state claims against.
-/

/-! ## A335474.P10394112692869821138

`A335458(n)-1`
-/

namespace A335474.P10394112692869821138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335458 n - 1

end

end A335474.P10394112692869821138

/-! ## A335474.P11154834111507472847

`A000401(A335458(n))`
-/

namespace A335474.P11154834111507472847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (A335458 n).toNat

end

end A335474.P11154834111507472847

/-! ## A335474.P14309528635080395440

`A057918(A335458(n)²)`
-/

namespace A335474.P14309528635080395440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A335458 n ^ 2).toNat

end

end A335474.P14309528635080395440

/-! ## A335474.P14414923853795852777

`A071538(A335458(n)²)`
-/

namespace A335474.P14414923853795852777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A335458 n ^ 2).toNat

end

end A335474.P14414923853795852777

/-! ## A335474.P10016099580083660421

`A086520(A335458(n)²)`
-/

namespace A335474.P10016099580083660421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A335458 n ^ 2).toNat

end

end A335474.P10016099580083660421

/-! ## A335474.P1110538400283941335

`A088226(A335458(n)²)`
-/

namespace A335474.P1110538400283941335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A335458 n ^ 2).toNat

end

end A335474.P1110538400283941335

/-! ## A335474.P14596084353612247200

`A214526(A335458(n)²)`
-/

namespace A335474.P14596084353612247200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A335458 n ^ 2).toNat

end

end A335474.P14596084353612247200

/-! ## A335474.P328447556531263349

`A023444(A335458(n)+1)`
-/

namespace A335474.P328447556531263349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A335458 n + 1).toNat

end

end A335474.P328447556531263349

/-! ## A335474.P1319964202739355455

`A289207(A335458(n)+1)`
-/

namespace A335474.P1319964202739355455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A335458 n + 1).toNat

end

end A335474.P1319964202739355455

/-! ## A335474.P4578088262174641231

`A023445(A335458(n)+2)`
-/

namespace A335474.P4578088262174641231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A335458 n + 2).toNat

end

end A335474.P4578088262174641231

/-!
# A335476: Numbers k such that the k-th composition in standard order (A066099) matches the pattern (1,1,2).

The programs for A335476, there is no canonical definition to state claims against.
-/

/-! ## A335476.P10330840111404597301

`comp[A335522(n+1)]`
-/

namespace A335476.P10330840111404597301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335476.P10330840111404597301

/-! ## A335476.P12214477616617229627

`lt[2, gcd(A245195(n), A245538(n+1))]`
-/

namespace A335476.P12214477616617229627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A245195 n) (A245538 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335476.P12214477616617229627

/-! ## A335476.P13969503449112812888

`lt[3, C(A000120(n+1), A355748(n))]`
-/

namespace A335476.P13969503449112812888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000120 (n + 1)).toNat (A355748 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335476.P13969503449112812888

/-! ## A335476.P1249076636810014790

`lt[A246029(xor(n, 2*n+1)), A385887(n+1)]`
-/

namespace A335476.P1249076636810014790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (Nat.xor n (2 * n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385887 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335476.P1249076636810014790

/-! ## A335476.P13784605806890809975

`lt[A000142(A360460(n+1)), A246660(n)]`
-/

namespace A335476.P13784605806890809975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A360460 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246660 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335476.P13784605806890809975

/-!
# A335478: Numbers k such that the k-th composition in standard order (A066099) matches the pattern (2,1,1).

The programs for A335478, there is no canonical definition to state claims against.
-/

/-! ## A335478.P13977984651085253008

`comp[A335523(n+1)]`
-/

namespace A335478.P13977984651085253008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335478.P13977984651085253008

/-!
# A335479: Numbers k such that the k-th composition in standard order (A066099) matches the pattern (1,2,3).

The programs for A335479, there is no canonical definition to state claims against.
-/

/-! ## A335479.P13674112939772890667

`lt[A351449(A152947(n+1)), A124760(n)]`
-/

namespace A335479.P13674112939772890667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351449 (A152947 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335479.P13674112939772890667

/-!
# A335480: Numbers k such that the k-th composition in standard order (A066099) matches the pattern (1,3,2).

The programs for A335480, there is no canonical definition to state claims against.
-/

/-! ## A335480.P3870714274805648066

`eq[3, A227752(n*gcd(4, n)%4)]-1`
-/

namespace A335480.P3870714274805648066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227752 (n * (Nat.gcd 4 n % 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A335480.P3870714274805648066

/-!
# A335481: Numbers k such that the k-th composition in standard order (A066099) matches the pattern (2,1,3).

The programs for A335481, there is no canonical definition to state claims against.
-/

/-! ## A335481.P15731132979272835589

`A161821(C(A335482(n+1), A073201(n)))`
-/

namespace A335481.P15731132979272835589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161821 (Nat.choose (A335482 (n + 1)).toNat (A073201 n).toNat)

end

end A335481.P15731132979272835589

/-! ## A335481.P11114953013151445514

`A161821(A335482(n+1)^A294333(n+2))`
-/

namespace A335481.P11114953013151445514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161821 (SequenceMachineLib.roundAway ((A335482 (n + 1) : ℚ) ^ (A294333 (n + 2) : ℤ))).toNat

end

end A335481.P11114953013151445514

/-!
# A335482: Numbers k such that the k-th composition in standard order (A066099) matches the pattern (2,3,1).

The programs for A335482, there is no canonical definition to state claims against.
-/

/-! ## A335482.P13546453853611154763

`eq[A033264(n+1), A069124(A020481(n+2))]`
-/

namespace A335482.P13546453853611154763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069124 (A020481 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335482.P13546453853611154763

/-!
# A335483: Numbers k such that the k-th composition in standard order (A066099) matches the pattern (3,1,2).

The programs for A335483, there is no canonical definition to state claims against.
-/

/-! ## A335483.P12484310827470694869

`A161821(A335484(n+1)%A335484(3*n+5))`
-/

namespace A335483.P12484310827470694869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161821 (Int.tmod (A335484 (n + 1)) (A335484 (3 * n + 5))).toNat

end

end A335483.P12484310827470694869

/-! ## A335483.P8436990490628513640

`A335484(n+1)+A333768(A098504(n+4))`
-/

namespace A335483.P8436990490628513640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335484 (n + 1) + A333768 (A098504 (n + 4)).toNat

end

end A335483.P8436990490628513640

/-! ## A335483.P6694956312184204437

`A335484(n+1)+A008479(A001077(n))`
-/

namespace A335483.P6694956312184204437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335484 (n + 1) + A008479 (A001077 n).toNat

end

end A335483.P6694956312184204437

/-!
# A335484: Numbers k such that the k-th composition in standard order (A066099) matches the pattern (3,2,1).

The programs for A335484, there is no canonical definition to state claims against.
-/

/-! ## A335484.P13509727038696640163

`A335483(n+1)-A333768(A098504(n+4))`
-/

namespace A335484.P13509727038696640163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335483 (n + 1) - A333768 (A098504 (n + 4)).toNat

end

end A335484.P13509727038696640163

/-! ## A335484.P14058362140655181832

`A335483(n+1)-A329325(A335837(n))`
-/

namespace A335484.P14058362140655181832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335483 (n + 1) - A329325 (A335837 n).toNat

end

end A335484.P14058362140655181832

/-! ## A335484.P9377909669727282262

`A335483(n+1)-A211097(A131178(n+1))`
-/

namespace A335484.P9377909669727282262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335483 (n + 1) - A211097 (A131178 (n + 1)).toNat

end

end A335484.P9377909669727282262

/-!
# A335485: Numbers k such that the k-th composition in standard order (A066099) is not weakly decreasing.

The programs for A335485, there is no canonical definition to state claims against.
-/

/-! ## A335485.P3333609108923254071

`comp[A114994(n)]`
-/

namespace A335485.P3333609108923254071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114994 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335485.P3333609108923254071

/-! ## A335485.P5758440680596680615

`lt[0, A124760(n)]`
-/

namespace A335485.P5758440680596680615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A335485.P5758440680596680615

/-! ## A335485.P15328353689514713002

`lt[1, A124765(n)]`
-/

namespace A335485.P15328353689514713002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A335485.P15328353689514713002

/-! ## A335485.P7116039099184575043

`comp[A233249(n+1)]`
-/

namespace A335485.P7116039099184575043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335485.P7116039099184575043

/-! ## A335485.P14954792740638916248

`comp[eq[0, A124760(2*n+1)]]`
-/

namespace A335485.P14954792740638916248
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A335485.P14954792740638916248

/-! ## A335485.P4952250298975719764

`comp[eq[1, A124765(2*n+1)]]`
-/

namespace A335485.P4952250298975719764
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A335485.P4952250298975719764

/-! ## A335485.P9587278685130703211

`eq[0, A322585(A057335(n))]`
-/

namespace A335485.P9587278685130703211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322585 (A057335 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335485.P9587278685130703211

/-! ## A335485.P14990276531007500251

`eq[0, A001222(a(A124760(n)))]` with `a(0)=2`
-/

namespace A335485.P14990276531007500251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A001222 (f2 (A124760 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335485.P14990276531007500251

/-! ## A335485.P14991850701546232660

`comp[eq[A000120(n), A124768(n)]]`
-/

namespace A335485.P14991850701546232660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A335485.P14991850701546232660

/-!
# A335486: Numbers k such that the k-th composition in standard order (A066099) is not weakly increasing.

The programs for A335486, there is no canonical definition to state claims against.
-/

/-! ## A335486.P12184650950043622653

`comp[A233569(n)]`
-/

namespace A335486.P12184650950043622653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233569 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335486.P12184650950043622653

/-! ## A335486.P8542690896953302995

`lt[0, A124761(n)]`
-/

namespace A335486.P8542690896953302995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A335486.P8542690896953302995

/-! ## A335486.P10661795482757053347

`lt[1, A124766(n)]`
-/

namespace A335486.P10661795482757053347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A335486.P10661795482757053347

/-! ## A335486.P12873003917583627810

`comp[A225620(n+1)-1]+1`
-/

namespace A335486.P12873003917583627810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225620 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A335486.P12873003917583627810

/-! ## A335486.P14787118765670793570

`lt[n+1, A233569(n+1)]+1`
-/

namespace A335486.P14787118765670793570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233569 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A335486.P14787118765670793570

/-! ## A335486.P7700886235497999431

`lt[A124769(n), A000120(n)]`
-/

namespace A335486.P7700886235497999431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335486.P7700886235497999431

/-! ## A335486.P3960769993351975997

`lt[A124762(n), A124763(n)]`
-/

namespace A335486.P3960769993351975997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335486.P3960769993351975997

/-! ## A335486.P5537977448708268379

`eq[0, A001222(a(A124761(n)))]` with `a(0)=2`
-/

namespace A335486.P5537977448708268379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A001222 (f2 (A124761 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335486.P5537977448708268379

/-! ## A335486.P12966901606695773822

`eq[1, A025854(a(A124761(n)))]` with `a(0)=2`
-/

namespace A335486.P12966901606695773822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A025854 (f2 (A124761 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335486.P12966901606695773822

/-! ## A335486.P18080216087974789095

`eq[1, A000010(a(A124761(n)))]` with `a(0)=3`
-/

namespace A335486.P18080216087974789095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A124761 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335486.P18080216087974789095

/-!
# A335487: Number of (1,1)-matching permutations of the prime indices of n.

The programs for A335487, the canonical program `A335487.P12532228903726520883` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335487 has offset 1).

The definition of A335487 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335487.P12532228903726520883

`(∑{e}[n+1, #]!/∏{e}[n+1, #!])%∑{e}[n+1, #]!`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A335487

/-- `(∑{e}[n+1, #]!/∏{e}[n+1, #!])%∑{e}[n+1, #]!` -/
def P12532228903726520883.Spec : Prop :=
  ∀ n, P12532228903726520883.a n = A335487 (n + 1)

theorem P12532228903726520883.correct : P12532228903726520883.Spec := by
  intro n
  simp only [A335487, Nat.add_sub_cancel]

end A335487

/-! ## A335487.P3134335883903279825

`A008480(n+1)%∑{e}[n+1, #]!`
-/

namespace A335487.P3134335883903279825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008480 (n + 1)) (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℤ)

end

end A335487.P3134335883903279825

namespace A335487

/-- `A008480(n+1)%∑{e}[n+1, #]!` -/
def P3134335883903279825.Spec : Prop :=
  ∀ n, P3134335883903279825.a n = A335487 (n + 1)

end A335487

/-! ## A335487.P9976855080379854979

`(∑{e}[n+1, #]!/∏{e}[n+1, #!])%A130675(n+1)`
-/

namespace A335487.P9976855080379854979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ))) (A130675 (n + 1))

end

end A335487.P9976855080379854979

namespace A335487

/-- `(∑{e}[n+1, #]!/∏{e}[n+1, #!])%A130675(n+1)` -/
def P9976855080379854979.Spec : Prop :=
  ∀ n, P9976855080379854979.a n = A335487 (n + 1)

end A335487

/-! ## A335487.P12348805937729935250

`ceil(∑{e}[n+1, #]!/∏{e}[n+1, #!])%A351310(n+1)`
-/

namespace A335487.P12348805937729935250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ)⌉ (A351310 (n + 1))

end

end A335487.P12348805937729935250

namespace A335487

/-- `ceil(∑{e}[n+1, #]!/∏{e}[n+1, #!])%A351310(n+1)` -/
def P12348805937729935250.Spec : Prop :=
  ∀ n, P12348805937729935250.a n = A335487 (n + 1)

end A335487

/-! ## A335487.P15752342937057714116

`∑{e}[n+1, #]!/∏{e}[n+1, #!]*A353235(2^∑{e}[n+1, #-1])`
-/

namespace A335487.P15752342937057714116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ) * (A353235 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f3 n), ((Nat.factorization (f3 n) p : ℤ) - 1) : ℤ))).toNat : ℚ)

end

end A335487.P15752342937057714116

namespace A335487

/-- `∑{e}[n+1, #]!/∏{e}[n+1, #!]*A353235(2^∑{e}[n+1, #-1])` -/
def P15752342937057714116.Spec : Prop :=
  ∀ n, P15752342937057714116.a n = (A335487 (n + 1) : ℚ)

end A335487

/-! ## A335487.P11417696665458222697

`A008480(n+1)*A107078(n+1)`
-/

namespace A335487.P11417696665458222697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) * A107078 (n + 1)

end

end A335487.P11417696665458222697

namespace A335487

/-- `A008480(n+1)*A107078(n+1)` -/
def P11417696665458222697.Spec : Prop :=
  ∀ n, P11417696665458222697.a n = A335487 (n + 1)

end A335487

/-! ## A335487.P4552974259536208010

`A107078(n+1)*A168324(n+1)`
-/

namespace A335487.P4552974259536208010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107078 (n + 1) * A168324 (n + 1)

end

end A335487.P4552974259536208010

namespace A335487

/-- `A107078(n+1)*A168324(n+1)` -/
def P4552974259536208010.Spec : Prop :=
  ∀ n, P4552974259536208010.a n = A335487 (n + 1)

end A335487

/-! ## A335487.P347044951960739576

`A008480(n+1)%A351316(n+1)`
-/

namespace A335487.P347044951960739576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008480 (n + 1)) (A351316 (n + 1))

end

end A335487.P347044951960739576

namespace A335487

/-- `A008480(n+1)%A351316(n+1)` -/
def P347044951960739576.Spec : Prop :=
  ∀ n, P347044951960739576.a n = A335487 (n + 1)

end A335487

/-! ## A335487.P13477308445570016132

`A168324(n+1)%A351316(n+1)`
-/

namespace A335487.P13477308445570016132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168324 (n + 1)) (A351316 (n + 1))

end

end A335487.P13477308445570016132

namespace A335487

/-- `A168324(n+1)%A351316(n+1)` -/
def P13477308445570016132.Spec : Prop :=
  ∀ n, P13477308445570016132.a n = A335487 (n + 1)

end A335487

/-! ## A335487.P16399583389706140031

`(1-A008966(n+1))*A008480(n+1)`
-/

namespace A335487.P16399583389706140031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A008966 (n + 1)) * A008480 (n + 1)

end

end A335487.P16399583389706140031

namespace A335487

/-- `(1-A008966(n+1))*A008480(n+1)` -/
def P16399583389706140031.Spec : Prop :=
  ∀ n, P16399583389706140031.a n = A335487 (n + 1)

end A335487

/-! ## A335487.P8648226874558012269

`A008480(n+1)-lcm(A008480(n+1), A008683(n+1))`
-/

namespace A335487.P8648226874558012269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) - (Int.lcm (A008480 (n + 1)) (A008683 (n + 1)) : ℤ)

end

end A335487.P8648226874558012269

namespace A335487

/-- `A008480(n+1)-lcm(A008480(n+1), A008683(n+1))` -/
def P8648226874558012269.Spec : Prop :=
  ∀ n, P8648226874558012269.a n = A335487 (n + 1)

end A335487

/-! ## A335487.P9616647416144744592

`(1-char[∏{p}[n, #]-1])*∑{e}[n+1, #]!/∏{e}[n+1, #!]`
-/

namespace A335487.P9616647416144744592
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℚ) * ((Nat.factorial (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f4 n), Nat.factorial (Nat.factorization (f4 n) p) : ℕ) : ℚ))

end

end A335487.P9616647416144744592

namespace A335487

/-- `(1-char[∏{p}[n, #]-1])*∑{e}[n+1, #]!/∏{e}[n+1, #!]` -/
def P9616647416144744592.Spec : Prop :=
  ∀ n, P9616647416144744592.a n = (A335487 (n + 1) : ℚ)

end A335487

/-!
# A335488: Numbers k such that the k-th composition in standard order (A066099) matches the pattern (1,1).

The programs for A335488, there is no canonical definition to state claims against.
-/

/-! ## A335488.P9969954716777711987

`comp[A233564(n+1)]`
-/

namespace A335488.P9969954716777711987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335488.P9969954716777711987

/-! ## A335488.P15553782515786214249

`lt[1, A327499(A057335(n))]`
-/

namespace A335488.P15553782515786214249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327499 (A057335 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A335488.P15553782515786214249

/-! ## A335488.P16886105476294757870

`comp[record[A233564(A022446(n))]]`
-/

namespace A335488.P16886105476294757870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233564 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335488.P16886105476294757870

/-! ## A335488.P14028815571885031881

`comp[record[A233564(A028920(n))]]`
-/

namespace A335488.P14028815571885031881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233564 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335488.P14028815571885031881

/-! ## A335488.P18414720067373904792

`comp[record[A233564(A065648(n))]]`
-/

namespace A335488.P18414720067373904792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233564 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335488.P18414720067373904792

/-! ## A335488.P14680184612707820131

`comp[record[A233564(A133310(n))]]`
-/

namespace A335488.P14680184612707820131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233564 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335488.P14680184612707820131

/-! ## A335488.P2865897805230457233

`comp[record[A233564(A152271(n))]]`
-/

namespace A335488.P2865897805230457233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233564 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335488.P2865897805230457233

/-! ## A335488.P18040600275093082583

`∪[A059520(n+1), A348612(n+1)]`
-/

namespace A335488.P18040600275093082583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335488.P18040600275093082583

/-! ## A335488.P8499728386823647962

`∪[A059520(n+1), A349799(n+1)]`
-/

namespace A335488.P8499728386823647962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335488.P8499728386823647962

/-! ## A335488.P16271143788247639824

`∪[A348612(n+1), A351291(n+1)]`
-/

namespace A335488.P16271143788247639824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335488.P16271143788247639824

/-!
# A335489: Number of strict permutations of the prime indices of n.

The programs for A335489, there is no canonical definition to state claims against.
-/

/-! ## A335489.P1618919426758649965

`∑{e}[n+1, #²]!%8`
-/

namespace A335489.P1618919426758649965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ 2) % 8

end

end A335489.P1618919426758649965

/-! ## A335489.P10240977191525380735

`and(7, ∑{e}[n+1, #²]!)`
-/

namespace A335489.P10240977191525380735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 7 (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ 2))

end

end A335489.P10240977191525380735

/-! ## A335489.P5719724378162231005

`ceil(∏{e}[n+1, C(3, #²)]/5)`
-/

namespace A335489.P5719724378162231005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ p ∈ Nat.primeFactors (f1 n), Nat.choose 3 (Nat.factorization (f1 n) p ^ 2) : ℕ) : ℚ) / 5⌉

end

end A335489.P5719724378162231005

/-! ## A335489.P4825539372495414682

`∑{e}[n+1, #]!*char[∏{p}[n, #]-1]`
-/

namespace A335489.P4825539372495414682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A335489.P4825539372495414682

/-! ## A335489.P4543279163141053365

`∑{p}[n+1, gcd(n, #)]!*char[∏{p}[n, #]-1]`
-/

namespace A335489.P4543279163141053365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p) * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A335489.P4543279163141053365

/-! ## A335489.P1674266917054716277

`ceil(A347149(n+1)/5)`
-/

namespace A335489.P1674266917054716277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A347149 (n + 1) : ℚ) / 5⌉

end

end A335489.P1674266917054716277

/-! ## A335489.P10117416098982704718

`A281188(n+1)-char[3]`
-/

namespace A335489.P10117416098982704718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281188 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A335489.P10117416098982704718

/-! ## A335489.P2850732207224142582

`ceil(A007428((n+1)²)/5)`
-/

namespace A335489.P2850732207224142582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007428 ((n + 1) ^ 2) : ℚ) / 5⌉

end

end A335489.P2850732207224142582

/-! ## A335489.P6452610397439889630

`A036409(A074823(n+1))`
-/

namespace A335489.P6452610397439889630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036409 (A074823 (n + 1)).toNat

end

end A335489.P6452610397439889630

/-! ## A335489.P18378979191684251614

`A281188(A003961(n+1))`
-/

namespace A335489.P18378979191684251614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281188 (A003961 (n + 1)).toNat

end

end A335489.P18378979191684251614

/-!
# A335490: Isosceles triangle read by rows in which each term is the least positive integer satisfying the condition that no row, diagonal, or antidiagonal contains a repeated term.

The programs for A335490, there is no canonical definition to state claims against.
-/

/-! ## A335490.P720148777327149191

`A296339(n)+1`
-/

namespace A335490.P720148777327149191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296339 n + 1

end

end A335490.P720148777327149191

/-! ## A335490.P17586073102400694099

`A348553(A296339(n))`
-/

namespace A335490.P17586073102400694099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (A296339 n).toNat

end

end A335490.P17586073102400694099

/-! ## A335490.P12020688090245039779

`A175213(A296339(n)²)`
-/

namespace A335490.P12020688090245039779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175213 (A296339 n ^ 2).toNat

end

end A335490.P12020688090245039779

/-! ## A335490.P18220922720835683297

`A260056(A296339(n)²)`
-/

namespace A335490.P18220922720835683297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260056 (A296339 n ^ 2).toNat

end

end A335490.P18220922720835683297

/-! ## A335490.P2983232550003586556

`A264766(A296339(n)²)`
-/

namespace A335490.P2983232550003586556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264766 (A296339 n ^ 2).toNat

end

end A335490.P2983232550003586556

/-! ## A335490.P546952155878515985

`A008619(2*A296339(n))`
-/

namespace A335490.P546952155878515985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A296339 n).toNat

end

end A335490.P546952155878515985

/-! ## A335490.P14002229554224887790

`A028242(2*A296339(n))`
-/

namespace A335490.P14002229554224887790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A296339 n).toNat

end

end A335490.P14002229554224887790

/-! ## A335490.P16673715018801669057

`A029579(2*A296339(n))`
-/

namespace A335490.P16673715018801669057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A296339 n).toNat

end

end A335490.P16673715018801669057

/-! ## A335490.P1952571887156483380

`A008611(3*A296339(n))`
-/

namespace A335490.P1952571887156483380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A296339 n).toNat

end

end A335490.P1952571887156483380

/-! ## A335490.P4305871224736756720

`A008612(6*A296339(n))`
-/

namespace A335490.P4305871224736756720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (6 * A296339 n).toNat

end

end A335490.P4305871224736756720

/-!
# A335491: a(n) is the smallest number m with exactly n divisors whose last digit equals the last digit of m.

The programs for A335491, there is no canonical definition to state claims against.
-/

/-! ## A335491.P3256537291748374517

`A314028(A233763(∑[∑[2*n]]))`
-/

namespace A335491.P3256537291748374517
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314028 (A233763 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A335491.P3256537291748374517

/-!
# A335495: Numbers k with a Goldbach partition (p,q) such that k | (p*q +- 1).

The programs for A335495, there is no canonical definition to state claims against.
-/

/-! ## A335495.P14062892407388644559

`∪[A336582(n+1), A336583(n+1)]`
-/

namespace A335495.P14062892407388644559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335495.P14062892407388644559

/-!
# A335497: a(1) = 1, and for any n > 0, a(n+1) is the number of times the decimal representation of a(n) appears in the concatenation of the first n terms, possibly with overlap.

The programs for A335497, there is no canonical definition to state claims against.
-/

/-! ## A335497.P7014871985721980591

`A309872(n+1)%(A134829(n)+5)`
-/

namespace A335497.P7014871985721980591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309872 (n + 1)) (A134829 n + 5)

end

end A335497.P7014871985721980591

