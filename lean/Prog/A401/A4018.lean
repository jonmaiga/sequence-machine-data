import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C010
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C037
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C051
import Seq.B000.C053
import Seq.B001.C000
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B001.C015
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B007.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A401809: Records of A401756.

The programs for A401809, there is no canonical definition to state claims against.
-/

/-! ## A401809.P13431272619504504826

`A401756(A401810(n+1))`
-/

namespace A401809.P13431272619504504826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401756 (A401810 (n + 1)).toNat

end

end A401809.P13431272619504504826

/-!
# A401810: Indices of records of A401756.

The programs for A401810, the canonical program `A401810.P2124990812794064976` is in `Seq.B000.C053`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401810 has offset 1).

The definition of A401810 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401810.P2124990812794064976

`ogf((1-17x+4x^2)/(1-19x+19x^2-x^3))`

The canonical program, it is in `Seq.B000.C053`.
-/

namespace A401810

/-- `ogf((1-17x+4x^2)/(1-19x+19x^2-x^3))` -/
def P2124990812794064976.Spec : Prop :=
  ∀ n, P2124990812794064976.a n = A401810 (n + 1)

theorem P2124990812794064976.correct : P2124990812794064976.Spec := by
  intro n
  simp only [A401810, Nat.add_sub_cancel]

end A401810

/-! ## A401810.P12937082124834120946

`A293552(A101328(n+2))`
-/

namespace A401810.P12937082124834120946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293552 (A101328 (n + 2)).toNat

end

end A401810.P12937082124834120946

namespace A401810

/-- `A293552(A101328(n+2))` -/
def P12937082124834120946.Spec : Prop :=
  ∀ n, P12937082124834120946.a n = A401810 (n + 1)

end A401810

/-! ## A401810.P14280788202133795130

`A294262(2*n)-A049652(2*n)`
-/

namespace A401810.P14280788202133795130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294262 (2 * n) - A049652 (2 * n)

end

end A401810.P14280788202133795130

namespace A401810

/-- `A294262(2*n)-A049652(2*n)` -/
def P14280788202133795130.Spec : Prop :=
  ∀ n, P14280788202133795130.a n = A401810 (n + 1)

end A401810

/-! ## A401810.P307984873994263805

`A306672(2*n)-A049652(2*n+1)`
-/

namespace A401810.P307984873994263805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306672 (2 * n) - A049652 (2 * n + 1)

end

end A401810.P307984873994263805

namespace A401810

/-- `A306672(2*n)-A049652(2*n+1)` -/
def P307984873994263805.Spec : Prop :=
  ∀ n, P307984873994263805.a n = A401810 (n + 1)

end A401810

/-!
# A401811: Array read by ascending antidiagonals: T(n, k) is the coefficient of x^n in (1 - ((1 - (2^k + 1)*x) / (1 + (2^k - 1)*x))^(2^(-k))) / (2*x) for n >= 0, k >= 1.

The programs for A401811, there is no canonical definition to state claims against.
-/

/-! ## A401811.P8081047958876169755

`A327917(A396501(n+1))`
-/

namespace A401811.P8081047958876169755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327917 (A396501 (n + 1)).toNat

end

end A401811.P8081047958876169755

/-! ## A401811.P7143679660762722898

`A330101(A395146(n+1))`
-/

namespace A401811.P7143679660762722898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330101 (A395146 (n + 1)).toNat

end

end A401811.P7143679660762722898

/-!
# A401821: Least m such that Sum_{k=1..m} sin(1/k) > n (angles in radians).

The programs for A401821, there is no canonical definition to state claims against.
-/

/-! ## A401821.P1743371816319684107

`A247911(A048579(n))`
-/

namespace A401821.P1743371816319684107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (A048579 n).toNat

end

end A401821.P1743371816319684107

/-!
# A401823: Triangle read by rows: T(n,k) is the number of parking permutations avoiding the pattern 312 with lucky set {1,2,...,k}.

The programs for A401823, there is no canonical definition to state claims against.
-/

/-! ## A401823.P1255233230412812435

`A089000(A269939(n))`
-/

namespace A401823.P1255233230412812435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089000 (A269939 n).toNat

end

end A401823.P1255233230412812435

/-! ## A401823.P1492690451961161629

`A068063(A327027(n))`
-/

namespace A401823.P1492690451961161629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A327027 n).toNat

end

end A401823.P1492690451961161629

/-! ## A401823.P4838771269880845968

`A125186(A304336(n))`
-/

namespace A401823.P4838771269880845968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125186 (A304336 n).toNat

end

end A401823.P4838771269880845968

/-! ## A401823.P11799712414009888208

`A179751(A303535(n))`
-/

namespace A401823.P11799712414009888208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179751 (A303535 n).toNat

end

end A401823.P11799712414009888208

/-! ## A401823.P12464414616595915107

`A374994(A135313(n))`
-/

namespace A401823.P12464414616595915107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374994 (A135313 n).toNat

end

end A401823.P12464414616595915107

/-!
# A401824: a(n) = Sum_{d|n} d * pi(d), where pi = A000720.

The programs for A401824, the canonical program `A401824.P11099415610956316471` is in `Seq.B001.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401824 has offset 1).

The definition of A401824 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, #*A000720(#)]` (program `A401824.P11099415610956316471`, by `A401824.P11099415610956316471.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A401824.P11099415610956316471

`∑{d}[n+1, #*A000720(#)]`

The canonical program, it is in `Seq.B001.C015`.
-/

namespace A401824

/-- `∑{d}[n+1, #*A000720(#)]` -/
def P11099415610956316471.Spec : Prop :=
  ∀ n, P11099415610956316471.a n = A401824 (n + 1)

theorem P11099415610956316471.correct : P11099415610956316471.Spec := by
  intro n
  simp only [A401824, Nat.add_sub_cancel]

end A401824

/-! ## A401824.P7012003306242899235

`A401826(n+1)+A008472(n+1)`
-/

namespace A401824.P7012003306242899235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401826 (n + 1) + A008472 (n + 1)

end

end A401824.P7012003306242899235

namespace A401824

/-- `A401826(n+1)+A008472(n+1)` -/
def P7012003306242899235.Spec : Prop :=
  ∀ n, P7012003306242899235.a n = A401824 (n + 1)

theorem P7012003306242899235.correct : P7012003306242899235.Spec := by
  intro n
  simp only [A401824, Nat.add_sub_cancel, A401824.P7012003306242899235.a, A401824.P11099415610956316471.f1, A401824.P11099415610956316471.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A401826, A401826.P9138598437203215255.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A401824

/-! ## A401824.P12740917408520316064

`∑{d}[n+1, A128913(#)]`
-/

namespace A401824.P12740917408520316064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A128913 d

end

end A401824.P12740917408520316064

namespace A401824

/-- `∑{d}[n+1, A128913(#)]` -/
def P12740917408520316064.Spec : Prop :=
  ∀ n, P12740917408520316064.a n = A401824 (n + 1)

end A401824

/-! ## A401824.P6350157287658413176

`∑{d}[n+1, #*A230980(#)]`
-/

namespace A401824.P6350157287658413176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A230980 d

end

end A401824.P6350157287658413176

namespace A401824

/-- `∑{d}[n+1, #*A230980(#)]` -/
def P6350157287658413176.Spec : Prop :=
  ∀ n, P6350157287658413176.a n = A401824 (n + 1)

end A401824

/-!
# A401826: a(n) = Sum_{d|n, d>1} d * pi(d-1) for n>=1, where pi = A000720.

The programs for A401826, the canonical program `A401826.P9138598437203215255` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401826 has offset 1).

The definition of A401826 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401826.P9138598437203215255

`A401824(n+1)-A008472(n+1)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A401826

/-- `A401824(n+1)-A008472(n+1)` -/
def P9138598437203215255.Spec : Prop :=
  ∀ n, P9138598437203215255.a n = A401826 (n + 1)

theorem P9138598437203215255.correct : P9138598437203215255.Spec := by
  intro n
  simp only [A401826, Nat.add_sub_cancel]

end A401826

/-! ## A401826.P7908916127683348978

`∑{d}[n+1, #*A230980(#-1)]`
-/

namespace A401826.P7908916127683348978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A230980 (d - 1)

end

end A401826.P7908916127683348978

namespace A401826

/-- `∑{d}[n+1, #*A230980(#-1)]` -/
def P7908916127683348978.Spec : Prop :=
  ∀ n, P7908916127683348978.a n = A401826 (n + 1)

end A401826

/-!
# A401828: Number of firing cells after n generations of a four-state cellular automaton on the infinite square lattice (rule B2/S34/C4, see Comments), starting with two horizontally adjacent firing cells and all other cells ready.

The programs for A401828, there is no canonical definition to state claims against.
-/

/-! ## A401828.P11895938780201205753

`∑[A401829(abs(n-1))]`
-/

namespace A401828.P11895938780201205753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401829 |(n : ℤ) - 1|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401828.P11895938780201205753

/-!
# A401829: Net change in the firing population from generation n to generation n+1 of a four-state cellular automaton on the infinite square lattice (rule B2/S34/C4, see Comments), starting with two horizontally adjacent firing cells and all other cells ready.

The programs for A401829, there is no canonical definition to state claims against.
-/

/-! ## A401829.P1270878843555815148

`A401828(n+1)-A401828(n)`
-/

namespace A401829.P1270878843555815148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401828 (n + 1) - A401828 n

end

end A401829.P1270878843555815148

/-! ## A401829.P17694312542593432142

`Δ[A401828(n)]`
-/

namespace A401829.P17694312542593432142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A401829.P17694312542593432142

/-!
# A401831: Number of permutations of {1..n} such that no two primes are adjacent.

The programs for A401831, there is no canonical definition to state claims against.
-/

/-! ## A401831.P13543020587906968915

`A067783(A060818(n))`
-/

namespace A401831.P13543020587906968915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067783 (A060818 n).toNat

end

end A401831.P13543020587906968915

/-! ## A401831.P5807899964520439119

`A064527(A128014(n))`
-/

namespace A401831.P5807899964520439119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064527 (A128014 n).toNat

end

end A401831.P5807899964520439119

/-! ## A401831.P12547923074449480589

`A200756(A082887(n))`
-/

namespace A401831.P12547923074449480589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200756 (A082887 n).toNat

end

end A401831.P12547923074449480589

/-! ## A401831.P6332226825623959646

`A053667(A289404(n))`
-/

namespace A401831.P6332226825623959646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053667 (A289404 n).toNat

end

end A401831.P6332226825623959646

/-!
# A401835: Number of different amounts that can be paid with exactly n euro coins (1, 2, 5, 10, 20, 50 cents, 1 and 2 euros).

The programs for A401835, the canonical program `A401835.P17248720573798008113` is in `Seq.B000.C053`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401835 has offset 0).

The definition of A401835 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401835.P17248720573798008113

`ogf((1+6x+21x^2+45x^3+61x^4+42x^5+19x^6+4x^7)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C053`.
-/

namespace A401835

/-- `ogf((1+6x+21x^2+45x^3+61x^4+42x^5+19x^6+4x^7)/(1-2x+x^2))` -/
def P17248720573798008113.Spec : Prop :=
  ∀ n, P17248720573798008113.a n = A401835 n

theorem P17248720573798008113.correct : P17248720573798008113.Spec := by
  intro n
  simp only [A401835]

end A401835

/-!
# A401838: Numbers k such that two distinct integers can be removed from 1 through k so that their product equals the sum of the remaining integers.

The programs for A401838, there is no canonical definition to state claims against.
-/

/-! ## A401838.P2818309591099199923

`∩[A088476(n+1), A127853(n+1)]`
-/

namespace A401838.P2818309591099199923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401838.P2818309591099199923

/-! ## A401838.P5309276079629780356

`∩[A127853(n+1), A342777(n+1)]`
-/

namespace A401838.P5309276079629780356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401838.P5309276079629780356

/-!
# A401840: a(n) is the area of the triangle with sides A401839(n)*A120133(n), A401839(n)*A120132(n), A401839(n)*A120131(n).

The programs for A401840, there is no canonical definition to state claims against.
-/

/-! ## A401840.P2986079348682878101

`A401839(n+1)²*A072294(n+1)`
-/

namespace A401840.P2986079348682878101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401839 (n + 1) ^ 2 * A072294 (n + 1)

end

end A401840.P2986079348682878101

/-!
# A401841: Numbers m such that there is an integer-sided triangle with area m whose three sides all divide m.

The programs for A401841, there is no canonical definition to state claims against.
-/

/-! ## A401841.P5485073724141486555

`filter[A210643(n+1), A011765(#)]`
-/

namespace A401841.P5485073724141486555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011765 (f1 j).toNat = 1) n)

end

end A401841.P5485073724141486555

/-! ## A401841.P3404700082156148176

`filter[A210643(n+1), A014577(#)]`
-/

namespace A401841.P3404700082156148176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014577 (f1 j).toNat = 1) n)

end

end A401841.P3404700082156148176

/-! ## A401841.P17900975382820535532

`filter[A210643(n+1), A106665(#)]`
-/

namespace A401841.P17900975382820535532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A106665 (f1 j).toNat = 1) n)

end

end A401841.P17900975382820535532

/-! ## A401841.P303347713838609809

`filter[A210643(n+1), A121262(#)]`
-/

namespace A401841.P303347713838609809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A401841.P303347713838609809

/-! ## A401841.P11805602394065323714

`filter[A210643(n+1), A133872(#)]`
-/

namespace A401841.P11805602394065323714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133872 (f1 j).toNat = 1) n)

end

end A401841.P11805602394065323714

/-!
# A401843: Number of integers k where n^2 < k < (n+1)^2 such that the period of the continued fraction of the square root of k is an odd number.

The programs for A401843, there is no canonical definition to state claims against.
-/

/-! ## A401843.P7481544554192462106

`2*(n+1)-A401844(n+1)`
-/

namespace A401843.P7481544554192462106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A401844 (n + 1)

end

end A401843.P7481544554192462106

/-!
# A401844: Number of integers k where n^2 < k < (n+1)^2 such that the period of the continued fraction of the square root of k is an even number.

The programs for A401844, there is no canonical definition to state claims against.
-/

/-! ## A401844.P4909085596250990976

`2*(n+1)-A401843(n+1)`
-/

namespace A401844.P4909085596250990976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A401843 (n + 1)

end

end A401844.P4909085596250990976

/-!
# A401846: a(n) is either the minimum of p(n) for p being an n-tuple of strictly increasing primes for which the set {p(i) + p(j) + p(k) : i < j < k} contains A111384(n) primes, or 0 if no such n-tuple exists.

The programs for A401846, there is no canonical definition to state claims against.
-/

/-! ## A401846.P14388846341831512786

`A401903(∑[n+1])`
-/

namespace A401846.P14388846341831512786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401903 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A401846.P14388846341831512786

/-! ## A401846.P7134451570486615512

`A050921(A097163(n))`
-/

namespace A401846.P7134451570486615512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050921 (A097163 n).toNat

end

end A401846.P7134451570486615512

/-!
# A401847: Number of permutations of {1..n} such that all primes are adjacent (form a single contiguous block).

The programs for A401847, there is no canonical definition to state claims against.
-/

/-! ## A401847.P11436446451416182938

`∏[A136662(n!)]`
-/

namespace A401847.P11436446451416182938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136662 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A401847.P11436446451416182938

/-! ## A401847.P14741683741776160152

`A264638(∑[n]+1)`
-/

namespace A401847.P14741683741776160152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264638 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A401847.P14741683741776160152

/-! ## A401847.P4052892413267064516

`A264659(∑[n]+1)`
-/

namespace A401847.P4052892413267064516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264659 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A401847.P4052892413267064516

/-! ## A401847.P4714069631527183092

`A264704(∑[n]+1)`
-/

namespace A401847.P4714069631527183092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264704 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A401847.P4714069631527183092

/-!
# A401855: a(1) = 1, for n>1, a(n) is the smallest prime number where A025487(n)/a(n) is still in A025487.

The programs for A401855, there is no canonical definition to state claims against.
-/

/-! ## A401855.P3345713275638240510

`A020639(A181815(n+1))`
-/

namespace A401855.P3345713275638240510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A181815 (n + 1)).toNat

end

end A401855.P3345713275638240510

/-!
# A401861: Maximum size of a family of distinct subsets of {1, ..., n} whose pairwise intersections are nonempty arithmetic progressions.

The programs for A401861, there is no canonical definition to state claims against.
-/

/-! ## A401861.P12633703171556497645

`ceil(∑[acot(4)+n])`
-/

namespace A401861.P12633703171556497645
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (4 : ℝ) + (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A401861.P12633703171556497645

/-! ## A401861.P6166351596565721956

`ceil(∑[1/4+n])`
-/

namespace A401861.P6166351596565721956
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 + (n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A401861.P6166351596565721956

/-! ## A401861.P1793202197433636822

`∑[val(n+4, 4)+n]`
-/

namespace A401861.P1793202197433636822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 4) 4 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401861.P1793202197433636822

/-! ## A401861.P14406611700437521246

`floor(∑[atan(3)+n]-n)`
-/

namespace A401861.P14406611700437521246
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (3 : ℝ) + (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j - (n : ℝ)⌋

end

end A401861.P14406611700437521246

/-! ## A401861.P16267678311971874717

`∑[or(n, ∑[n+1]%2)]`
-/

namespace A401861.P16267678311971874717
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n ((∑ j ∈ Finset.range (n + 1), f2 j) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401861.P16267678311971874717

/-!
# A401862: a(n) is the number of k with 1 <= k <= n/2 such that the product of digits of n is the sum of the product of digits of k and the product of digits of n-k.

The programs for A401862, there is no canonical definition to state claims against.
-/

/-! ## A401862.P3972078142468583744

`A335979(A055644(n+1))`
-/

namespace A401862.P3972078142468583744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335979 (A055644 (n + 1)).toNat

end

end A401862.P3972078142468583744

/-! ## A401862.P18258993680938130312

`A335979(A004086(n+1))`
-/

namespace A401862.P18258993680938130312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335979 (A004086 (n + 1)).toNat

end

end A401862.P18258993680938130312

/-! ## A401862.P6533984391363525140

`A338732(A061509(n+1))`
-/

namespace A401862.P6533984391363525140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338732 (A061509 (n + 1)).toNat

end

end A401862.P6533984391363525140

/-! ## A401862.P1816791455223330829

`A335979(A077168(n))`
-/

namespace A401862.P1816791455223330829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335979 (A077168 n).toNat

end

end A401862.P1816791455223330829

/-!
# A401863: a(n) = Sum_{d|n, d>1} pi(d-1), where pi = A000720.

The programs for A401863, the canonical program `A401863.P5101828983696587754` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401863 has offset 1).

The definition of A401863 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401863.P5101828983696587754

`A062774(n+1)-A001221(n+1)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A401863

/-- `A062774(n+1)-A001221(n+1)` -/
def P5101828983696587754.Spec : Prop :=
  ∀ n, P5101828983696587754.a n = A401863 (n + 1)

theorem P5101828983696587754.correct : P5101828983696587754.Spec := by
  intro n
  simp only [A401863, Nat.add_sub_cancel]

end A401863

/-! ## A401863.P18401742046748204447

`∑{d}[n+1, A230980(#-1)]`
-/

namespace A401863.P18401742046748204447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A230980 (d - 1)

end

end A401863.P18401742046748204447

namespace A401863

/-- `∑{d}[n+1, A230980(#-1)]` -/
def P18401742046748204447.Spec : Prop :=
  ∀ n, P18401742046748204447.a n = A401863 (n + 1)

end A401863

/-! ## A401863.P10404785573485033130

`A046992(n+1)-(A368641(n+1)+A000720(n+1))`
-/

namespace A401863.P10404785573485033130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1) - (A368641 (n + 1) + A000720 (n + 1))

end

end A401863.P10404785573485033130

namespace A401863

/-- `A046992(n+1)-(A368641(n+1)+A000720(n+1))` -/
def P10404785573485033130.Spec : Prop :=
  ∀ n, P10404785573485033130.a n = A401863 (n + 1)

end A401863

/-! ## A401863.P7797739328787733736

`A368612(n+2)-(A368612(n+1)+A000720(n+1))`
-/

namespace A401863.P7797739328787733736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368612 (n + 2) - (A368612 (n + 1) + A000720 (n + 1))

end

end A401863.P7797739328787733736

namespace A401863

/-- `A368612(n+2)-(A368612(n+1)+A000720(n+1))` -/
def P7797739328787733736.Spec : Prop :=
  ∀ n, P7797739328787733736.a n = A401863 (n + 1)

end A401863

/-!
# A401865: a(n) = Sum_{d|n} floor(sqrt(d-1)).

The programs for A401865, the canonical program `A401865.P12721619246955359550` is in `Seq.B000.C053`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401865 has offset 1).

The definition of A401865 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, floor(sqrt(#-1))]` (program `A401865.P12721619246955359550`, by `A401865.P12721619246955359550.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A401865.P12721619246955359550

`∑{d}[n+1, floor(sqrt(#-1))]`

The canonical program, it is in `Seq.B000.C053`.
-/

namespace A401865

/-- `∑{d}[n+1, floor(sqrt(#-1))]` -/
def P12721619246955359550.Spec : Prop :=
  ∀ n, P12721619246955359550.a n = A401865 (n + 1)

theorem P12721619246955359550.correct : P12721619246955359550.Spec := by
  intro n
  simp only [A401865, Nat.add_sub_cancel]

end A401865

/-! ## A401865.P7383624036580517257

`A086671(n+1)-A046951(n+1)`
-/

namespace A401865.P7383624036580517257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086671 (n + 1) - A046951 (n + 1)

end

end A401865.P7383624036580517257

namespace A401865

/-- `A086671(n+1)-A046951(n+1)` -/
def P7383624036580517257.Spec : Prop :=
  ∀ n, P7383624036580517257.a n = A401865 (n + 1)

end A401865

/-! ## A401865.P11178880120927734166

`A332932(n+1)-A000005(n+1)`
-/

namespace A401865.P11178880120927734166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332932 (n + 1) - A000005 (n + 1)

end

end A401865.P11178880120927734166

namespace A401865

/-- `A332932(n+1)-A000005(n+1)` -/
def P11178880120927734166.Spec : Prop :=
  ∀ n, P11178880120927734166.a n = A401865 (n + 1)

end A401865

/-!
# A401866: a(n) = Sum_{d|n} d * floor(sqrt(d-1)).

The programs for A401866, the canonical program `A401866.P13289494668405408960` is in `Seq.B000.C053`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401866 has offset 1).

The definition of A401866 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, #*floor(sqrt(#-1))]` (program `A401866.P13289494668405408960`, by `A401866.P13289494668405408960.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A401866.P13289494668405408960

`∑{d}[n+1, #*floor(sqrt(#-1))]`

The canonical program, it is in `Seq.B000.C053`.
-/

namespace A401866

/-- `∑{d}[n+1, #*floor(sqrt(#-1))]` -/
def P13289494668405408960.Spec : Prop :=
  ∀ n, P13289494668405408960.a n = A401866 (n + 1)

theorem P13289494668405408960.correct : P13289494668405408960.Spec := by
  intro n
  simp only [A401866, Nat.add_sub_cancel]

end A401866

/-! ## A401866.P11597525887218033805

`A344460(n+1)-A035316(n+1)`
-/

namespace A401866.P11597525887218033805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344460 (n + 1) - A035316 (n + 1)

end

end A401866.P11597525887218033805

namespace A401866

/-- `A344460(n+1)-A035316(n+1)` -/
def P11597525887218033805.Spec : Prop :=
  ∀ n, P11597525887218033805.a n = A401866 (n + 1)

end A401866

/-!
# A401869: Array read by antidiagonals: A(n,r) = Sum_{j=0..n} binomial(n,j)^r*binomial(n+j,j)^r.

The programs for A401869, there is no canonical definition to state claims against.
-/

/-! ## A401869.P1013003051778587957

`A106801(A322265(n+1))`
-/

namespace A401869.P1013003051778587957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106801 (A322265 (n + 1)).toNat

end

end A401869.P1013003051778587957

/-!
# A401871: Triangle read by rows: T(n,k) is the number of cliques in the Johnson graph J(n,k).

The programs for A401871, there is no canonical definition to state claims against.
-/

/-! ## A401871.P15228447481886076240

`A176667(A131235(n))`
-/

namespace A401871.P15228447481886076240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176667 (A131235 n).toNat

end

end A401871.P15228447481886076240

/-! ## A401871.P13305394009813844378

`A345443(A008518(n))`
-/

namespace A401871.P13305394009813844378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345443 (A008518 n).toNat

end

end A401871.P13305394009813844378

/-! ## A401871.P14943710664186434579

`A031285(A328300(n))`
-/

namespace A401871.P14943710664186434579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 (A328300 n).toNat

end

end A401871.P14943710664186434579

/-! ## A401871.P18206604796233139957

`A348854(A099594(n))`
-/

namespace A401871.P18206604796233139957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348854 (A099594 n).toNat

end

end A401871.P18206604796233139957

/-!
# A401873: Number of simple connected graphs on n unlabeled vertices with exactly 2 contour vertices.

The programs for A401873, there is no canonical definition to state claims against.
-/

/-! ## A401873.P16452356705838391457

`A401872(∑[n]+2)`
-/

namespace A401873.P16452356705838391457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401872 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A401873.P16452356705838391457

/-!
# A401875: Number of dissections of a rhombus with side length n in a triangular lattice into two identical parts, counting dissections equal under rotation or reflection only once.

The programs for A401875, there is no canonical definition to state claims against.
-/

/-! ## A401875.P9443013893480532639

`A165085(A393139(n))`
-/

namespace A401875.P9443013893480532639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165085 (A393139 n).toNat

end

end A401875.P9443013893480532639

/-!
# A401876: Number of induced cubes in the Kneser graph KG(n,2).

The programs for A401876, the canonical program `A401876.P8904908687886869579` is in `Seq.B000.C053`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401876 has offset 1).

The definition of A401876 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401876.P8904908687886869579

`ogf((x-4x^2+9x^3-10x^4+109x^5)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C053`.
-/

namespace A401876

/-- `ogf((x-4x^2+9x^3-10x^4+109x^5)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P8904908687886869579.Spec : Prop :=
  ∀ n, P8904908687886869579.a n = A401876 (n + 1)

theorem P8904908687886869579.correct : P8904908687886869579.Spec := by
  intro n
  simp only [A401876, Nat.add_sub_cancel]

end A401876

/-! ## A401876.P11564148054294946351

`C(n+1, 2)+3*C(n+1, 4)+105*C(n+1, 6)`
-/

namespace A401876.P11564148054294946351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + 3 * Nat.choose (n + 1) 4 + 105 * Nat.choose (n + 1) 6

end

end A401876.P11564148054294946351

namespace A401876

/-- `C(n+1, 2)+3*C(n+1, 4)+105*C(n+1, 6)` -/
def P11564148054294946351.Spec : Prop :=
  ∀ n, (P11564148054294946351.a n : ℤ) = A401876 (n + 1)

end A401876

/-!
# A401877: Numbers k such that the k-th composition in standard order has an odd number of parts, the first and last of which are equal.

The programs for A401877, there is no canonical definition to state claims against.
-/

/-! ## A401877.P9730572139964626819

`filter[A400764(n+1), A010060(#)]`
-/

namespace A401877.P9730572139964626819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A401877.P9730572139964626819

/-! ## A401877.P10729989101050807088

`∩[A000069(n+1), A400764(n+1)]`
-/

namespace A401877.P10729989101050807088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401877.P10729989101050807088

/-!
# A401878: Numbers k such that the k-th composition in standard order has an even number of parts, the first and last of which are equal.

The programs for A401878, there is no canonical definition to state claims against.
-/

/-! ## A401878.P4443368896695803950

`filter[A400764(n+1), A010059(#)]`
-/

namespace A401878.P4443368896695803950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010059 (f1 j).toNat = 1) n)

end

end A401878.P4443368896695803950

/-! ## A401878.P5401800979579206153

`filter[A400764(n+1), A092436(#)]`
-/

namespace A401878.P5401800979579206153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092436 (f1 j).toNat = 1) n)

end

end A401878.P5401800979579206153

/-! ## A401878.P3254813111727429881

`∩[A001969(n+1), A400764(n+1)]`
-/

namespace A401878.P3254813111727429881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401878.P3254813111727429881

/-!
# A401881: a(n) is the least number k such that there are exactly n numbers j, 1 <= j <= k/2, such that the product of digits of k is the sum of the product of digits of j and the product of digits of k-j, or -1 if there is no such k.

The programs for A401881, there is no canonical definition to state claims against.
-/

/-! ## A401881.P10531110252661957363

`fo[A401862(n+1)]+1`
-/

namespace A401881.P10531110252661957363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401862 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A401881.P10531110252661957363

/-!
# A401882: Rational part of x(n), where x(1) = 1, x(2) = 2 and x(n) = x(n-1) + sqrt(6)*x(n-2).

The programs for A401882, the canonical program `A401882.P11654271041659263515` is in `Seq.B000.C053`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401882 has offset 1).

The definition of A401882 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401882.P11654271041659263515

`2*a(n-1)-a(n-2)+6*a(n-4)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2`

The canonical program, it is in `Seq.B000.C053`.
-/

namespace A401882

/-- `2*a(n-1)-a(n-2)+6*a(n-4)` -/
def P11654271041659263515.Spec : Prop :=
  ∀ n, P11654271041659263515.a n = A401882 (n + 1)

theorem P11654271041659263515.correct : P11654271041659263515.Spec := by
  intro n
  simp only [A401882, Nat.add_sub_cancel]

end A401882

/-! ## A401882.P13415497690370089790

`a(n-1)+6*A401883(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A401882.P13415497690370089790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + 6 * A401883 (n - 1)

end

end A401882.P13415497690370089790

namespace A401882

/-- `a(n-1)+6*A401883(n-1)` -/
def P13415497690370089790.Spec : Prop :=
  ∀ n, P13415497690370089790.a n = A401882 (n + 1)

end A401882

/-! ## A401882.P9774427597198050994

`ogf((1-x^2)/(1-2x+x^2-6x^4))`
-/

namespace A401882.P9774427597198050994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1] [1, -2, 1, 0, -6] n

end

end A401882.P9774427597198050994

namespace A401882

/-- `ogf((1-x^2)/(1-2x+x^2-6x^4))` -/
def P9774427597198050994.Spec : Prop :=
  ∀ n, P9774427597198050994.a n = A401882 (n + 1)

end A401882

/-! ## A401882.P10534319740862876132

`Δ[A401883(n+2)]`
-/

namespace A401882.P10534319740862876132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401883 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A401882.P10534319740862876132

namespace A401882

/-- `Δ[A401883(n+2)]` -/
def P10534319740862876132.Spec : Prop :=
  ∀ n, P10534319740862876132.a n = A401882 (n + 1)

end A401882

/-! ## A401882.P5304278890358709805

`A401883(n+3)-A401883(n+2)`
-/

namespace A401882.P5304278890358709805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401883 (n + 3) - A401883 (n + 2)

end

end A401882.P5304278890358709805

namespace A401882

/-- `A401883(n+3)-A401883(n+2)` -/
def P5304278890358709805.Spec : Prop :=
  ∀ n, P5304278890358709805.a n = A401882 (n + 1)

end A401882

/-!
# A401883: Coefficient of sqrt(6) in x(n), where x(1) = 1, x(2) = 2 and x(n) = x(n-1) + sqrt(6)*x(n-2).

The programs for A401883, the canonical program `A401883.P8937031268553647433` is in `Seq.B000.C053`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401883 has offset 1).

The definition of A401883 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401883.P8937031268553647433

`2*a(n-1)-a(n-2)+6*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C053`.
-/

namespace A401883

/-- `2*a(n-1)-a(n-2)+6*a(n-4)` -/
def P8937031268553647433.Spec : Prop :=
  ∀ n, P8937031268553647433.a n = A401883 (n + 1)

theorem P8937031268553647433.correct : P8937031268553647433.Spec := by
  intro n
  simp only [A401883, Nat.add_sub_cancel]

end A401883

/-! ## A401883.P15935607644377404227

`a(n-1)+A401882(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A401883.P15935607644377404227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + A401882 (n - 1)

end

end A401883.P15935607644377404227

namespace A401883

/-- `a(n-1)+A401882(n-1)` -/
def P15935607644377404227.Spec : Prop :=
  ∀ n, P15935607644377404227.a n = A401883 (n + 1)

end A401883

/-! ## A401883.P11095425408961629037

`ogf((x^2+x^3)/(1-2x+x^2-6x^4))`
-/

namespace A401883.P11095425408961629037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 1] [1, -2, 1, 0, -6] n

end

end A401883.P11095425408961629037

namespace A401883

/-- `ogf((x^2+x^3)/(1-2x+x^2-6x^4))` -/
def P11095425408961629037.Spec : Prop :=
  ∀ n, P11095425408961629037.a n = A401883 (n + 1)

end A401883

/-!
# A401884: Number of polyominoes with 2n cells that can be halved into multiple different congruent polyominoes.

The programs for A401884, there is no canonical definition to state claims against.
-/

/-! ## A401884.P3860129234437999802

`A033109(A073378(n))`
-/

namespace A401884.P3860129234437999802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033109 (A073378 n).toNat

end

end A401884.P3860129234437999802

/-!
# A401886: Maximum size of a subset S of {1, ..., n} such that x*y is not squarefree for all x, y in S.

The programs for A401886, the canonical program `A401886.P9259305142288146394` is in `Seq.B001.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401886 has offset 1).

The definition of A401886 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401886.P4613044763593988570

`∑[1-A323239(n+1)]`
-/

namespace A401886.P4613044763593988570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A323239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401886.P4613044763593988570

namespace A401886

/-- `∑[1-A323239(n+1)]` -/
def P4613044763593988570.Spec : Prop :=
  ∀ n, P4613044763593988570.a n = A401886 (n + 1)

end A401886

/-! ## A401886.P9259305142288146394

`∑[A087049(2*(n+1))]`

The canonical program, it is in `Seq.B001.C015`.
-/

namespace A401886

/-- `∑[A087049(2*(n+1))]` -/
def P9259305142288146394.Spec : Prop :=
  ∀ n, P9259305142288146394.a n = A401886 (n + 1)

theorem P9259305142288146394.correct : P9259305142288146394.Spec := by
  intro n
  simp only [A401886, Nat.add_sub_cancel]

end A401886

/-! ## A401886.P15634586234879402511

`∑[A105234(2*(n+1))]`
-/

namespace A401886.P15634586234879402511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105234 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401886.P15634586234879402511

namespace A401886

/-- `∑[A105234(2*(n+1))]` -/
def P15634586234879402511.Spec : Prop :=
  ∀ n, P15634586234879402511.a n = A401886 (n + 1)

end A401886

/-! ## A401886.P5418977835040795150

`∑[A105597(4*(n+1))]`
-/

namespace A401886.P5418977835040795150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105597 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401886.P5418977835040795150

namespace A401886

/-- `∑[A105597(4*(n+1))]` -/
def P5418977835040795150.Spec : Prop :=
  ∀ n, P5418977835040795150.a n = A401886 (n + 1)

end A401886

/-! ## A401886.P7834011999579226691

`n+1-A285879(n+1)`
-/

namespace A401886.P7834011999579226691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A285879 (n + 1)

end

end A401886.P7834011999579226691

namespace A401886

/-- `n+1-A285879(n+1)` -/
def P7834011999579226691.Spec : Prop :=
  ∀ n, P7834011999579226691.a n = A401886 (n + 1)

end A401886

/-! ## A401886.P13225650668458989778

`∑[(A078461(n+1)-1)²]`
-/

namespace A401886.P13225650668458989778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A078461 (n + 1) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401886.P13225650668458989778

namespace A401886

/-- `∑[(A078461(n+1)-1)²]` -/
def P13225650668458989778.Spec : Prop :=
  ∀ n, P13225650668458989778.a n = A401886 (n + 1)

end A401886

/-! ## A401886.P4135392640781479190

`∑[1-A087003(n+1)²]`
-/

namespace A401886.P4135392640781479190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A087003 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401886.P4135392640781479190

namespace A401886

/-- `∑[1-A087003(n+1)²]` -/
def P4135392640781479190.Spec : Prop :=
  ∀ n, P4135392640781479190.a n = A401886 (n + 1)

end A401886

/-! ## A401886.P13592968281977582105

`∑[1-A091069(n+1)²]`
-/

namespace A401886.P13592968281977582105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A091069 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401886.P13592968281977582105

namespace A401886

/-- `∑[1-A091069(n+1)²]` -/
def P13592968281977582105.Spec : Prop :=
  ∀ n, P13592968281977582105.a n = A401886 (n + 1)

end A401886

/-! ## A401886.P5388552537486714421

`∑[1-A099991(n+1)²]`
-/

namespace A401886.P5388552537486714421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A099991 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401886.P5388552537486714421

namespace A401886

/-- `∑[1-A099991(n+1)²]` -/
def P5388552537486714421.Spec : Prop :=
  ∀ n, P5388552537486714421.a n = A401886 (n + 1)

end A401886

/-! ## A401886.P15701524115878672097

`∑[1-A318608(n+1)²]`
-/

namespace A401886.P15701524115878672097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A318608 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401886.P15701524115878672097

namespace A401886

/-- `∑[1-A318608(n+1)²]` -/
def P15701524115878672097.Spec : Prop :=
  ∀ n, P15701524115878672097.a n = A401886 (n + 1)

end A401886

/-! ## A401886.P14439355425527788155

`∑[1-A374367(n+1)²]`
-/

namespace A401886.P14439355425527788155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A374367 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401886.P14439355425527788155

namespace A401886

/-- `∑[1-A374367(n+1)²]` -/
def P14439355425527788155.Spec : Prop :=
  ∀ n, P14439355425527788155.a n = A401886 (n + 1)

end A401886

/-! ## A401886.P4414662510201394579

`A285881(n+1)+A057627(n+1)`
-/

namespace A401886.P4414662510201394579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285881 (n + 1) + A057627 (n + 1)

end

end A401886.P4414662510201394579

namespace A401886

/-- `A285881(n+1)+A057627(n+1)` -/
def P4414662510201394579.Spec : Prop :=
  ∀ n, P4414662510201394579.a n = A401886 (n + 1)

end A401886

/-! ## A401886.P4670749640473967149

`∑[A107078(2*(n+1))]`
-/

namespace A401886.P4670749640473967149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107078 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401886.P4670749640473967149

namespace A401886

/-- `∑[A107078(2*(n+1))]` -/
def P4670749640473967149.Spec : Prop :=
  ∀ n, P4670749640473967149.a n = A401886 (n + 1)

end A401886

/-! ## A401886.P841319102253900504

`n+1-A285881(2*(n+1))`
-/

namespace A401886.P841319102253900504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A285881 (2 * (n + 1))

end

end A401886.P841319102253900504

namespace A401886

/-- `n+1-A285881(2*(n+1))` -/
def P841319102253900504.Spec : Prop :=
  ∀ n, P841319102253900504.a n = A401886 (n + 1)

end A401886

/-! ## A401886.P1646992151880772945

`∑[A144101(4*(n+1))]`
-/

namespace A401886.P1646992151880772945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144101 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401886.P1646992151880772945

namespace A401886

/-- `∑[A144101(4*(n+1))]` -/
def P1646992151880772945.Spec : Prop :=
  ∀ n, P1646992151880772945.a n = A401886 (n + 1)

end A401886

/-! ## A401886.P6840629659869660462

`∑[1-A359549((n+1)²)]`
-/

namespace A401886.P6840629659869660462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A359549 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401886.P6840629659869660462

namespace A401886

/-- `∑[1-A359549((n+1)²)]` -/
def P6840629659869660462.Spec : Prop :=
  ∀ n, P6840629659869660462.a n = A401886 (n + 1)

end A401886

/-! ## A401886.P2345894306471609326

`∑[A380440(2*(n+1)²)]`
-/

namespace A401886.P2345894306471609326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380440 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401886.P2345894306471609326

namespace A401886

/-- `∑[A380440(2*(n+1)²)]` -/
def P2345894306471609326.Spec : Prop :=
  ∀ n, P2345894306471609326.a n = A401886 (n + 1)

end A401886

/-! ## A401886.P4567434096279616211

`∑[A380439((2*(n+1))²)]`
-/

namespace A401886.P4567434096279616211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380439 ((2 * (n + 1)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401886.P4567434096279616211

namespace A401886

/-- `∑[A380439((2*(n+1))²)]` -/
def P4567434096279616211.Spec : Prop :=
  ∀ n, P4567434096279616211.a n = A401886 (n + 1)

end A401886

/-! ## A401886.P13013087342539969861

`fp[A337945(n+1)-1]`
-/

namespace A401886.P13013087342539969861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337945 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A401886.P13013087342539969861

namespace A401886

/-- `fp[A337945(n+1)-1]` -/
def P13013087342539969861.Spec : Prop :=
  ∀ n, (P13013087342539969861.a n : ℤ) = A401886 (n + 1)

end A401886

/-! ## A401886.P3775854172136028285

`∑[1-A327276((n+1)²)]`
-/

namespace A401886.P3775854172136028285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A327276 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401886.P3775854172136028285

namespace A401886

/-- `∑[1-A327276((n+1)²)]` -/
def P3775854172136028285.Spec : Prop :=
  ∀ n, P3775854172136028285.a n = A401886 (n + 1)

end A401886

/-!
# A401895: Number of distinct decimal digits in the product of n and its digit reversal.

The programs for A401895, there is no canonical definition to state claims against.
-/

/-! ## A401895.P490132009457038509

`A043537(A061205(n+1))`
-/

namespace A401895.P490132009457038509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A061205 (n + 1)).toNat

end

end A401895.P490132009457038509

