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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B006.C001
import Seq.B007.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A120000: Record values in A119999.

The programs for A120000, there is no canonical definition to state claims against.
-/

/-! ## A120000.P554092562425973992

`record[A119999(n)]`
-/

namespace A120000.P554092562425973992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120000.P554092562425973992

/-! ## A120000.P1843177392543365606

`A119999(A120001(n+1))`
-/

namespace A120000.P1843177392543365606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119999 (A120001 (n + 1)).toNat

end

end A120000.P1843177392543365606

/-!
# A120001: Where record values of A119999 occur.

The programs for A120001, there is no canonical definition to state claims against.
-/

/-! ## A120001.P11358773363796748614

`eq[A113581(n), A233795(A333167(n))]`
-/

namespace A120001.P11358773363796748614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233795 (A333167 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120001.P11358773363796748614

/-!
# A120002: First differences of A119999.

The programs for A120002, there is no canonical definition to state claims against.
-/

/-! ## A120002.P6452329079165944307

`Δ[A119999(n)]`
-/

namespace A120002.P6452329079165944307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120002.P6452329079165944307

/-! ## A120002.P2796549883220265287

`A119999(n+1)-A119999(n)`
-/

namespace A120002.P2796549883220265287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119999 (n + 1) - A119999 n

end

end A120002.P2796549883220265287

/-! ## A120002.P12964515366207400197

`A119999(n+1)+A001478(A119999(n)+1)+1`
-/

namespace A120002.P12964515366207400197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119999 (n + 1) + (A001478 (A119999 n + 1).toNat + 1)

end

end A120002.P12964515366207400197

/-!
# A120003: Partial sums of A119999.

The programs for A120003, there is no canonical definition to state claims against.
-/

/-! ## A120003.P5054519820000244692

`∑[A119999(n)]`
-/

namespace A120003.P5054519820000244692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120003.P5054519820000244692

/-! ## A120003.P17338578417876518272

`∑[A120002(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A120003.P17338578417876518272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A120002 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120003.P17338578417876518272

/-! ## A120003.P11097153485401547387

`∑[∑[A120002(abs(2-n)+1)]+1]`
-/

namespace A120003.P11097153485401547387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120002 (|2 - (n : ℤ)| + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120003.P11097153485401547387

/-! ## A120003.P15419818450906600614

`A119999(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A120003.P15419818450906600614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A119999 n + a (A028310 n - 1).toNat

end

end A120003.P15419818450906600614

/-! ## A120003.P6127815333599490422

`∑[∑[A120002(n)]+1-A120002(n)]`
-/

namespace A120003.P6127815333599490422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120002 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1 - A120002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120003.P6127815333599490422

/-! ## A120003.P9938485594034075628

`A119999(n)+a(A000027(n+1)-2)` with `a(0)=1`
-/

namespace A120003.P9938485594034075628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A119999 n + a (A000027 (n + 1) - 2).toNat

end

end A120003.P9938485594034075628

/-! ## A120003.P5493740630480470536

`a(n-1)+A119999(n)+A000038(n)` with `a(0)=1`
-/

namespace A120003.P5493740630480470536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A119999 n + A000038 n)

end

end A120003.P5493740630480470536

/-! ## A120003.P2765135398560417768

`a(n-1)-(A001478(A119999(n)+1)+1)` with `a(0)=1`
-/

namespace A120003.P2765135398560417768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A001478 (A119999 n + 1).toNat + 1)

end

end A120003.P2765135398560417768

/-! ## A120003.P18143484177570326401

`A338478(A338478(a(n-1)))+A119999(n)` with `a(0)=1`
-/

namespace A120003.P18143484177570326401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A338478 (A338478 (a (n - 1)).toNat).toNat + A119999 n

end

end A120003.P18143484177570326401

/-!
# A120004: Number of distinct numbers as substrings of n in decimal representation.

The programs for A120004, there is no canonical definition to state claims against.
-/

/-! ## A120004.P544714993004386559

`A107846(A082216(n))+A043562(n)`
-/

namespace A120004.P544714993004386559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A082216 n).toNat + A043562 n

end

end A120004.P544714993004386559

/-! ## A120004.P5914577899182256365

`A077042(A196222(n))+A055642(n)`
-/

namespace A120004.P5914577899182256365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (A196222 n).toNat + A055642 n

end

end A120004.P5914577899182256365

/-! ## A120004.P7882011089965380248

`A055642(A047842(n))-A178788(n)`
-/

namespace A120004.P7882011089965380248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A047842 n).toNat - A178788 n

end

end A120004.P7882011089965380248

/-! ## A120004.P7499799688545549356

`A055642(A244112(n))-A178788(n)`
-/

namespace A120004.P7499799688545549356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A244112 n).toNat - A178788 n

end

end A120004.P7499799688545549356

/-! ## A120004.P3827419088190565699

`A010096(A055642(n)*A196222(n))`
-/

namespace A120004.P3827419088190565699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010096 (A055642 n * A196222 n).toNat

end

end A120004.P3827419088190565699

/-! ## A120004.P3747076173705859709

`A084558(A055642(n)*A196222(n))`
-/

namespace A120004.P3747076173705859709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A055642 n * A196222 n).toNat

end

end A120004.P3747076173705859709

/-! ## A120004.P6613198893321844953

`A060417(A139337(n)*A196222(n))`
-/

namespace A120004.P6613198893321844953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060417 (A139337 n * A196222 n).toNat

end

end A120004.P6613198893321844953

/-! ## A120004.P18006533092504535857

`A060417(lcm(A139337(n), A196222(n)))`
-/

namespace A120004.P18006533092504535857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060417 (Int.lcm (A139337 n) (A196222 n))

end

end A120004.P18006533092504535857

/-! ## A120004.P17137208698106351389

`A179941(or(A138908(n), A196222(n)))`
-/

namespace A120004.P17137208698106351389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179941 (Int.lor (A138908 n) (A196222 n)).toNat

end

end A120004.P17137208698106351389

/-! ## A120004.P16822481682226203262

`A179942(or(A138908(n), A196222(n)))`
-/

namespace A120004.P16822481682226203262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179942 (Int.lor (A138908 n) (A196222 n)).toNat

end

end A120004.P16822481682226203262

/-! ## A120004.P6531775845404083735

`dr(A213217(n)%A098406(n))`
-/

namespace A120004.P6531775845404083735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A213217 n) (A098406 n))

end

end A120004.P6531775845404083735

/-! ## A120004.P12594670468096058601

`A196563(∏{digits}[A213217(n), A178500(#)])`
-/

namespace A120004.P12594670468096058601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A178500 x).prod.toNat

end

end A120004.P12594670468096058601

/-! ## A120004.P14395301140460411014

`A000120(A213217(n)+dr(A178500(n)))`
-/

namespace A120004.P14395301140460411014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A213217 n + (SequenceMachineLib.digitalRoot (A178500 n) : ℤ)).toNat

end

end A120004.P14395301140460411014

/-! ## A120004.P6709781329631076005

`A060417(A213217(n)²)`
-/

namespace A120004.P6709781329631076005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060417 (A213217 n ^ 2).toNat

end

end A120004.P6709781329631076005

/-!
# A120005: Smallest number containing exactly n distinct numbers in its decimal representation.

The programs for A120005, there is no canonical definition to state claims against.
-/

/-! ## A120005.P10710685178372607536

`filter[A275782(n+1), A103583(#)]`
-/

namespace A120005.P10710685178372607536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103583 (f1 j).toNat = 1) n)

end

end A120005.P10710685178372607536

/-! ## A120005.P14995717430731732366

`A231920(A002965(n)*A266769(n))`
-/

namespace A120005.P14995717430731732366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231920 (A002965 n * A266769 n).toNat

end

end A120005.P14995717430731732366

/-!
# A120006: Expansion of ((eta(q^2) * eta(q^14)) / (eta(q) * eta(q^7)))^3 in powers of q.

The programs for A120006, there is no canonical definition to state claims against.
-/

/-! ## A120006.P17287715726843737867

`A123648(2*(n+1))`
-/

namespace A120006.P17287715726843737867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123648 (2 * (n + 1))

end

end A120006.P17287715726843737867

/-! ## A120006.P14864376386500995200

`record[A123648(and(3, n+1)+n+1)]`
-/

namespace A120006.P14864376386500995200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123648 (Nat.land 3 (n + 1) + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120006.P14864376386500995200

/-! ## A120006.P4982648675708069767

`A123862(2*(n+1))/2`
-/

namespace A120006.P4982648675708069767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123862 (2 * (n + 1)) : ℚ) / 2

end

end A120006.P4982648675708069767

/-! ## A120006.P17180621737688779819

`Δ[∑[A123862(2*n)]/2]`
-/

namespace A120006.P17180621737688779819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123862 (2 * n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120006.P17180621737688779819

/-!
# A120007: Mobius transform of sum of prime factors of n with multiplicity (A001414).

The programs for A120007, the canonical program `A120007.P17212889191585270917` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120007 has offset 1).

The definition of A120007 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120007.P17212889191585270917

`A061397(A007947(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A120007

/-- `A061397(A007947(n+1))` -/
def P17212889191585270917.Spec : Prop :=
  ∀ n, P17212889191585270917.a n = A120007 (n + 1)

theorem P17212889191585270917.correct : P17212889191585270917.Spec := by
  intro n
  simp only [A120007, Nat.add_sub_cancel]

end A120007

/-! ## A120007.P6065074978163376093

`∑{#}[n-1, (#+2)*A010051(#+2)*(floor((#+2)^(n+1)/(n+1))-floor(((#+2)^(n+1)-1)/(n+1)))]`
-/

namespace A120007.P6065074978163376093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (k + 2 : ℤ) * A010051 (k + 2) * (⌊((k + 2) ^ (n + 1) : ℚ) / (n + 1 : ℚ)⌋ - ⌊(((k + 2) ^ (n + 1) : ℤ) - 1 : ℚ) / (n + 1 : ℚ)⌋)

end

end A120007.P6065074978163376093

namespace A120007

/-- `∑{#}[n-1, (#+2)*A010051(#+2)*(floor((#+2)^(n+1)/(n+1))-floor(((#+2)^(n+1)-1)/(n+1)))]` -/
def P6065074978163376093.Spec : Prop :=
  ∀ n, P6065074978163376093.a n = A120007 (n + 1)

end A120007

/-! ## A120007.P11101076568534365432

`floor(2*n*∏{p}[n+1, #/(2*n)])`
-/

namespace A120007.P11101076568534365432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (2 * n : ℚ))⌋

end

end A120007.P11101076568534365432

namespace A120007

/-- `floor(2*n*∏{p}[n+1, #/(2*n)])` -/
def P11101076568534365432.Spec : Prop :=
  ∀ n, P11101076568534365432.a n = A120007 (n + 1)

end A120007

/-! ## A120007.P9302188327616163374

`∑{p}[ceil((n+1)*∏{p}[n+1, #/(n+1)]), #]`
-/

namespace A120007.P9302188327616163374
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f2 n), (p : ℚ) / (n + 1 : ℚ))⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A120007.P9302188327616163374

namespace A120007

/-- `∑{p}[ceil((n+1)*∏{p}[n+1, #/(n+1)]), #]` -/
def P9302188327616163374.Spec : Prop :=
  ∀ n, (P9302188327616163374.a n : ℤ) = A120007 (n + 1)

end A120007

/-! ## A120007.P7729308192750375867

`round(n/∏{e}[n+1, #+n])*∑{p}[1+n, #]`
-/

namespace A120007.P7729308192750375867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + n) : ℕ) : ℚ)) * ((∑ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ)

end

end A120007.P7729308192750375867

namespace A120007

/-- `round(n/∏{e}[n+1, #+n])*∑{p}[1+n, #]` -/
def P7729308192750375867.Spec : Prop :=
  ∀ n, P7729308192750375867.a n = A120007 (n + 1)

end A120007

/-! ## A120007.P10483458637423605289

`round(n/∏{e}[n+1, #+n])*∏{p}[n+1, #]`
-/

namespace A120007.P10483458637423605289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + n) : ℕ) : ℚ)) * ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ)

end

end A120007.P10483458637423605289

namespace A120007

/-- `round(n/∏{e}[n+1, #+n])*∏{p}[n+1, #]` -/
def P10483458637423605289.Spec : Prop :=
  ∀ n, P10483458637423605289.a n = A120007 (n + 1)

end A120007

/-! ## A120007.P15381220303728237357

`ceil((n+1)*∏{p}[n+1, #/(n+1)])%ceil((n+1)*∏{p}[n+1, #/(n+1)])²`
-/

namespace A120007.P15381220303728237357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (n + 1 : ℚ))⌉ (⌈(n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f2 n), (p : ℚ) / (n + 1 : ℚ))⌉ ^ 2)

end

end A120007.P15381220303728237357

namespace A120007

/-- `ceil((n+1)*∏{p}[n+1, #/(n+1)])%ceil((n+1)*∏{p}[n+1, #/(n+1)])²` -/
def P15381220303728237357.Spec : Prop :=
  ∀ n, P15381220303728237357.a n = A120007 (n + 1)

end A120007

/-! ## A120007.P13171184273536123457

`∑{p}[A014963(n+1), #]`
-/

namespace A120007.P13171184273536123457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A120007.P13171184273536123457

namespace A120007

/-- `∑{p}[A014963(n+1), #]` -/
def P13171184273536123457.Spec : Prop :=
  ∀ n, (P13171184273536123457.a n : ℤ) = A120007 (n + 1)

end A120007

/-! ## A120007.P16615497711655109513

`∑{p}[A020500(n+1), #]`
-/

namespace A120007.P16615497711655109513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A120007.P16615497711655109513

namespace A120007

/-- `∑{p}[A020500(n+1), #]` -/
def P16615497711655109513.Spec : Prop :=
  ∀ n, (P16615497711655109513.a n : ℤ) = A120007 (n + 1)

end A120007

/-! ## A120007.P6199955816956807303

`∑{p}[A100994(n+1), #]`
-/

namespace A120007.P6199955816956807303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A120007.P6199955816956807303

namespace A120007

/-- `∑{p}[A100994(n+1), #]` -/
def P6199955816956807303.Spec : Prop :=
  ∀ n, (P6199955816956807303.a n : ℤ) = A120007 (n + 1)

end A120007

/-! ## A120007.P16341435777193705145

`A061397(∏{p}[n+1, #])`
-/

namespace A120007.P16341435777193705145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A120007.P16341435777193705145

namespace A120007

/-- `A061397(∏{p}[n+1, #])` -/
def P16341435777193705145.Spec : Prop :=
  ∀ n, P16341435777193705145.a n = A120007 (n + 1)

end A120007

/-! ## A120007.P17250988282065168618

`A092509(∏{p}[n+1, #])`
-/

namespace A120007.P17250988282065168618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092509 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A120007.P17250988282065168618

namespace A120007

/-- `A092509(∏{p}[n+1, #])` -/
def P17250988282065168618.Spec : Prop :=
  ∀ n, P17250988282065168618.a n = A120007 (n + 1)

end A120007

/-! ## A120007.P5031245982627509350

`∑{p}[∏{d}[n+1, (n/#)^A008683(#)], #]`
-/

namespace A120007.P5031245982627509350
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), ((n : ℚ) / (d : ℚ)) ^ (A008683 d : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A120007.P5031245982627509350

namespace A120007

/-- `∑{p}[∏{d}[n+1, (n/#)^A008683(#)], #]` -/
def P5031245982627509350.Spec : Prop :=
  ∀ n, (P5031245982627509350.a n : ℤ) = A120007 (n + 1)

end A120007

/-! ## A120007.P9397261162686246979

`A001414(A014963(n+1))`
-/

namespace A120007.P9397261162686246979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A014963 (n + 1)).toNat

end

end A120007.P9397261162686246979

namespace A120007

/-- `A001414(A014963(n+1))` -/
def P9397261162686246979.Spec : Prop :=
  ∀ n, P9397261162686246979.a n = A120007 (n + 1)

end A120007

/-! ## A120007.P3504766771709107936

`A039653(A020500(n+1))`
-/

namespace A120007.P3504766771709107936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A020500 (n + 1)).toNat

end

end A120007.P3504766771709107936

namespace A120007

/-- `A039653(A020500(n+1))` -/
def P3504766771709107936.Spec : Prop :=
  ∀ n, P3504766771709107936.a n = A120007 (n + 1)

end A120007

/-! ## A120007.P10188532387467330484

`A008472(A100994(n+1))`
-/

namespace A120007.P10188532387467330484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A100994 (n + 1)).toNat

end

end A120007.P10188532387467330484

namespace A120007

/-- `A008472(A100994(n+1))` -/
def P10188532387467330484.Spec : Prop :=
  ∀ n, P10188532387467330484.a n = A120007 (n + 1)

end A120007

/-! ## A120007.P13359525797679328098

`A061397(A052410(n+1))`
-/

namespace A120007.P13359525797679328098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A052410 (n + 1)).toNat

end

end A120007.P13359525797679328098

namespace A120007

/-- `A061397(A052410(n+1))` -/
def P13359525797679328098.Spec : Prop :=
  ∀ n, P13359525797679328098.a n = A120007 (n + 1)

end A120007

/-! ## A120007.P18348410520118912396

`A061397(A088835(n+1))`
-/

namespace A120007.P18348410520118912396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A088835 (n + 1)).toNat

end

end A120007.P18348410520118912396

namespace A120007

/-- `A061397(A088835(n+1))` -/
def P18348410520118912396.Spec : Prop :=
  ∀ n, P18348410520118912396.a n = A120007 (n + 1)

end A120007

/-! ## A120007.P3965985255497031327

`A061397(A182816(n+1))`
-/

namespace A120007.P3965985255497031327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A182816 (n + 1)).toNat

end

end A120007.P3965985255497031327

namespace A120007

/-- `A061397(A182816(n+1))` -/
def P3965985255497031327.Spec : Prop :=
  ∀ n, P3965985255497031327.a n = A120007 (n + 1)

end A120007

/-!
# A120009: G.f.: A(x) = (x-x^2) o x/(1-x) o (1-sqrt(1-4*x))/2, a composition of functions involving the Catalan function and its inverse.

The programs for A120009, the canonical program `A120009.P9600556190857982686` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120009 has offset 1).

The definition of A120009 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120009.P9600556190857982686

`3*A000108(n+1)-A000108(n+2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A120009

/-- `3*A000108(n+1)-A000108(n+2)` -/
def P9600556190857982686.Spec : Prop :=
  ∀ n, P9600556190857982686.a n = A120009 (n + 1)

theorem P9600556190857982686.correct : P9600556190857982686.Spec := by
  intro n
  simp only [A120009, Nat.add_sub_cancel]

end A120009

/-! ## A120009.P1111845779461062351

`∑[A115145(n+3)]+3`
-/

namespace A120009.P1111845779461062351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115145 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A120009.P1111845779461062351

namespace A120009

/-- `∑[A115145(n+3)]+3` -/
def P1111845779461062351.Spec : Prop :=
  ∀ n, P1111845779461062351.a n = A120009 (n + 1)

end A120009

/-! ## A120009.P17761584806816662286

`A005807(n)-A026012(n)`
-/

namespace A120009.P17761584806816662286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005807 n - A026012 n

end

end A120009.P17761584806816662286

namespace A120009

/-- `A005807(n)-A026012(n)` -/
def P17761584806816662286.Spec : Prop :=
  ∀ n, P17761584806816662286.a n = A120009 (n + 1)

end A120009

/-! ## A120009.P544804446493310283

`∑[A071724(n)]-A099376(n)`
-/

namespace A120009.P544804446493310283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A099376 n

end

end A120009.P544804446493310283

namespace A120009

/-- `∑[A071724(n)]-A099376(n)` -/
def P544804446493310283.Spec : Prop :=
  ∀ n, P544804446493310283.a n = A120009 (n + 1)

end A120009

/-! ## A120009.P9916739281850504953

`A005807(n)-Δ[A000245(n)]`
-/

namespace A120009.P9916739281850504953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005807 n - (f1 (n + 1) - f1 n)

end

end A120009.P9916739281850504953

namespace A120009

/-- `A005807(n)-Δ[A000245(n)]` -/
def P9916739281850504953.Spec : Prop :=
  ∀ n, P9916739281850504953.a n = A120009 (n + 1)

end A120009

/-! ## A120009.P13612826705399405797

`Δ[A014137(n)]-A099376(n)`
-/

namespace A120009.P13612826705399405797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A099376 n

end

end A120009.P13612826705399405797

namespace A120009

/-- `Δ[A014137(n)]-A099376(n)` -/
def P13612826705399405797.Spec : Prop :=
  ∀ n, P13612826705399405797.a n = A120009 (n + 1)

end A120009

/-! ## A120009.P8495893152198165706

`Δ[A014138(n)]-A099376(n)`
-/

namespace A120009.P8495893152198165706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A099376 n

end

end A120009.P8495893152198165706

namespace A120009

/-- `Δ[A014138(n)]-A099376(n)` -/
def P8495893152198165706.Spec : Prop :=
  ∀ n, P8495893152198165706.a n = A120009 (n + 1)

end A120009

/-! ## A120009.P2001392426277353720

`A000108(n)-Δ[A143955(n)]`
-/

namespace A120009.P2001392426277353720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - (f1 (n + 1) - f1 n)

end

end A120009.P2001392426277353720

namespace A120009

/-- `A000108(n)-Δ[A143955(n)]` -/
def P2001392426277353720.Spec : Prop :=
  ∀ n, P2001392426277353720.a n = A120009 (n + 1)

end A120009

/-! ## A120009.P5925649348569471288

`A000108(n+1)-A099376(n)`
-/

namespace A120009.P5925649348569471288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - A099376 n

end

end A120009.P5925649348569471288

namespace A120009

/-- `A000108(n+1)-A099376(n)` -/
def P5925649348569471288.Spec : Prop :=
  ∀ n, P5925649348569471288.a n = A120009 (n + 1)

theorem P5925649348569471288.correct : P5925649348569471288.Spec := by
  intro n
  simp only [A120009, Nat.add_sub_cancel, A120009.P5925649348569471288.a, A120009.P9600556190857982686.a, A000108, A000108.P17551949696095299361.a, A099376, A099376.P5902379968883628035.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120009

/-! ## A120009.P1351544817734543820

`A279557(n)-A143955(n+1)`
-/

namespace A120009.P1351544817734543820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279557 n - A143955 (n + 1)

end

end A120009.P1351544817734543820

namespace A120009

/-- `A279557(n)-A143955(n+1)` -/
def P1351544817734543820.Spec : Prop :=
  ∀ n, P1351544817734543820.a n = A120009 (n + 1)

end A120009

/-! ## A120009.P4864549728676479380

`A220902(n+2)-A071722(n)`
-/

namespace A120009.P4864549728676479380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220902 (n + 2) - A071722 n

end

end A120009.P4864549728676479380

namespace A120009

/-- `A220902(n+2)-A071722(n)` -/
def P4864549728676479380.Spec : Prop :=
  ∀ n, P4864549728676479380.a n = A120009 (n + 1)

end A120009

/-! ## A120009.P4782980869673268999

`A376161(n)-A220902(n+2)`
-/

namespace A120009.P4782980869673268999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376161 n - A220902 (n + 2)

end

end A120009.P4782980869673268999

namespace A120009

/-- `A376161(n)-A220902(n+2)` -/
def P4782980869673268999.Spec : Prop :=
  ∀ n, P4782980869673268999.a n = A120009 (n + 1)

end A120009

/-! ## A120009.P17340883015231606248

`2*A000108(n)-A071725(n)`
-/

namespace A120009.P17340883015231606248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000108 n - A071725 n

end

end A120009.P17340883015231606248

namespace A120009

/-- `2*A000108(n)-A071725(n)` -/
def P17340883015231606248.Spec : Prop :=
  ∀ n, P17340883015231606248.a n = A120009 (n + 1)

end A120009

/-! ## A120009.P15867902499702068192

`A026008(2*n)-A099376(n)`
-/

namespace A120009.P15867902499702068192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026008 (2 * n) - A099376 n

end

end A120009.P15867902499702068192

namespace A120009

/-- `A026008(2*n)-A099376(n)` -/
def P15867902499702068192.Spec : Prop :=
  ∀ n, P15867902499702068192.a n = A120009 (n + 1)

end A120009

/-! ## A120009.P3484576816759346969

`A000778(n)+1-Δ[A000245(n)]`
-/

namespace A120009.P3484576816759346969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000778 n + (1 - (f1 (n + 1) - f1 n))

end

end A120009.P3484576816759346969

namespace A120009

/-- `A000778(n)+1-Δ[A000245(n)]` -/
def P3484576816759346969.Spec : Prop :=
  ∀ n, P3484576816759346969.a n = A120009 (n + 1)

theorem P3484576816759346969.correct : P3484576816759346969.Spec := by
  intro n
  simp only [A120009, Nat.add_sub_cancel, A120009.P3484576816759346969.f1, A120009.P3484576816759346969.a, A120009.P9600556190857982686.a, A000108, A000108.P17551949696095299361.a, A000245, A000245.P15461013057778681831.a, A000778, A000778.P18203779062026400197.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120009

/-! ## A120009.P12918109062011666360

`Δ[A155587(n+1)-A279557(n)]`
-/

namespace A120009.P12918109062011666360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 (n + 1) - A279557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120009.P12918109062011666360

namespace A120009

/-- `Δ[A155587(n+1)-A279557(n)]` -/
def P12918109062011666360.Spec : Prop :=
  ∀ n, P12918109062011666360.a n = A120009 (n + 1)

end A120009

/-! ## A120009.P1927151502609605552

`∑[2*A071724(n)-A026012(n)]`
-/

namespace A120009.P1927151502609605552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071724 n - A026012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120009.P1927151502609605552

namespace A120009

/-- `∑[2*A071724(n)-A026012(n)]` -/
def P1927151502609605552.Spec : Prop :=
  ∀ n, P1927151502609605552.a n = A120009 (n + 1)

end A120009

/-! ## A120009.P1530757147714931468

`∑[A026012(n)]-2*A099376(n)`
-/

namespace A120009.P1530757147714931468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * A099376 n

end

end A120009.P1530757147714931468

namespace A120009

/-- `∑[A026012(n)]-2*A099376(n)` -/
def P1530757147714931468.Spec : Prop :=
  ∀ n, P1530757147714931468.a n = A120009 (n + 1)

end A120009

/-! ## A120009.P11393668557930572092

`A007054(n+1)-A000108(n+1)`
-/

namespace A120009.P11393668557930572092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007054 (n + 1) - A000108 (n + 1)

end

end A120009.P11393668557930572092

namespace A120009

/-- `A007054(n+1)-A000108(n+1)` -/
def P11393668557930572092.Spec : Prop :=
  ∀ n, P11393668557930572092.a n = A120009 (n + 1)

theorem P11393668557930572092.correct : P11393668557930572092.Spec := by
  intro n
  simp only [A120009, Nat.add_sub_cancel, A120009.P11393668557930572092.a, A120009.P9600556190857982686.a, A000108, A000108.P17551949696095299361.a, A007054, A007054.P7178060541691833380.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120009

/-! ## A120009.P12615857407510437792

`A068875(n+1)-A000245(n+1)`
-/

namespace A120009.P12615857407510437792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 (n + 1) - A000245 (n + 1)

end

end A120009.P12615857407510437792

namespace A120009

/-- `A068875(n+1)-A000245(n+1)` -/
def P12615857407510437792.Spec : Prop :=
  ∀ n, P12615857407510437792.a n = A120009 (n + 1)

end A120009

/-!
# A120010: G.f.: A(x) = (1-sqrt(1-4*x))/2 o x/(1-x) o (x-x^2), a composition of functions involving the Catalan function and its inverse.

The programs for A120010, the canonical program `A120010.P11360890748899172652` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120010 has offset 1).

The definition of A120010 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120010.P11360890748899172652

`∑{#}[n, C(n, #)*A166300(#)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A120010

/-- `∑{#}[n, C(n, #)*A166300(#)]` -/
def P11360890748899172652.Spec : Prop :=
  ∀ n, P11360890748899172652.a n = A120010 (n + 1)

theorem P11360890748899172652.correct : P11360890748899172652.Spec := by
  intro n
  simp only [A120010, Nat.add_sub_cancel]

end A120010

/-! ## A120010.P5995054998816626228

`A120019(∑[n+1])`
-/

namespace A120010.P5995054998816626228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120019 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120010.P5995054998816626228

namespace A120010

/-- `A120019(∑[n+1])` -/
def P5995054998816626228.Spec : Prop :=
  ∀ n, P5995054998816626228.a n = A120010 (n + 1)

end A120010

/-! ## A120010.P10699382325605545822

`A120019(A000217(n+1))+char[10]`
-/

namespace A120010.P10699382325605545822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120019 (A000217 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A120010.P10699382325605545822

namespace A120010

/-- `A120019(A000217(n+1))+char[10]` -/
def P10699382325605545822.Spec : Prop :=
  ∀ n, P10699382325605545822.a n = A120010 (n + 1)

end A120010

/-! ## A120010.P7976959832520894008

`A120019(∑[A120003(n)])%(3*2^n)`
-/

namespace A120010.P7976959832520894008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120019 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (3 * 2 ^ n : ℤ)

end

end A120010.P7976959832520894008

namespace A120010

/-- `A120019(∑[A120003(n)])%(3*2^n)` -/
def P7976959832520894008.Spec : Prop :=
  ∀ n, P7976959832520894008.a n = A120010 (n + 1)

end A120010

/-! ## A120010.P2710900779140647647

`A120019(A000217(n+1))%A105715(n)`
-/

namespace A120010.P2710900779140647647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120019 (A000217 (n + 1)).toNat) (A105715 n)

end

end A120010.P2710900779140647647

namespace A120010

/-- `A120019(A000217(n+1))%A105715(n)` -/
def P2710900779140647647.Spec : Prop :=
  ∀ n, P2710900779140647647.a n = A120010 (n + 1)

end A120010

/-!
# A120012: The third self-composition of A120009; g.f.: A(x) = G(G(G(x))), where G(x) = g.f. of A120009.

The programs for A120012, there is no canonical definition to state claims against.
-/

/-! ## A120012.P11751025936162374117

`A120013(∑[n+3]+1)`
-/

namespace A120012.P11751025936162374117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120013 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A120012.P11751025936162374117

/-!
# A120013: Square table, read by antidiagonals, of coefficients of x^k in the n-th self-composition of the g.f. of A120009, so that: T(n,k) = [x^k] { (x-x^2) o x/(1-n*x) o (1-sqrt(1-4*x))/2 } for n>=1, k>=1.

The programs for A120013, there is no canonical definition to state claims against.
-/

/-! ## A120013.P11742248405243065042

`A071922(n)-A269246(A060301(n+1))`
-/

namespace A120013.P11742248405243065042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071922 n - A269246 (A060301 (n + 1)).toNat

end

end A120013.P11742248405243065042

/-! ## A120013.P12052712338008342702

`and(A104559(n), A139337(A213770(n+1)))`
-/

namespace A120013.P12052712338008342702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104559 n) (A139337 (A213770 (n + 1)).toNat)

end

end A120013.P12052712338008342702

/-! ## A120013.P14894206780311982412

`C(A104559(n), A124010(A056371(n+4)))`
-/

namespace A120013.P14894206780311982412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A104559 n).toNat (A124010 (A056371 (n + 4)).toNat).toNat

end

end A120013.P14894206780311982412

/-!
# A120014: Coefficients of x^n in the n-th iteration of the g.f. of A120009, so that: a(n) = [x^n] { (x-x^2) o x/(1-n*x) o (1-sqrt(1-4*x))/2 } for n>=1.

The programs for A120014, there is no canonical definition to state claims against.
-/

/-! ## A120014.P13326419821616066983

`(1+n)*A120016(n+1)`
-/

namespace A120014.P13326419821616066983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A120016 (n + 1)

end

end A120014.P13326419821616066983

/-! ## A120014.P671681538291960557

`A120013((n+1)²+n²)`
-/

namespace A120014.P671681538291960557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120013 ((n + 1) ^ 2 + n ^ 2)

end

end A120014.P671681538291960557

/-!
# A120015: Coefficients of x^n in the (n+1)-th self-composition of the g.f. of A120009, so that: a(n) = [x^n] { (x-x^2) o x/(1-(n+1)*x) o (1-sqrt(1-4*x))/2 } for n>=1.

The programs for A120015, there is no canonical definition to state claims against.
-/

/-! ## A120015.P6423716200280143402

`A120013(2*(n+1)²)`
-/

namespace A120015.P6423716200280143402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120013 (2 * (n + 1) ^ 2)

end

end A120015.P6423716200280143402

/-!
# A120016: a(n) = A120014(n)/n = coefficient of x^n, divided by n, in the n-th iteration of the g.f. of A120009 for n>=1.

The programs for A120016, there is no canonical definition to state claims against.
-/

/-! ## A120016.P7574395226405747774

`A120014(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A120016.P7574395226405747774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120014 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A120016.P7574395226405747774

/-! ## A120016.P15051882127469615071

`floor(A005206((7*n-5)*a(n-1))/2)` with `a(0)=1, a(1)=1`
-/

namespace A120016.P15051882127469615071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊(A005206 (((7 * n : ℤ) - 5) * a (n - 1)).toNat : ℚ) / 2⌋

end

end A120016.P15051882127469615071

/-!
# A120017: The 2nd self-composition of A120010; g.f.: A(x) = G(G(x)), where G(x) = g.f. of A120010.

The programs for A120017, there is no canonical definition to state claims against.
-/

/-! ## A120017.P6450221859112563200

`∑{#}[n, C(n, #)*A101499(#)]`
-/

namespace A120017.P6450221859112563200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A101499 k

end

end A120017.P6450221859112563200

/-! ## A120017.P14707318001871486247

`A120019(∑[n+2])`
-/

namespace A120017.P14707318001871486247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120019 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120017.P14707318001871486247

/-! ## A120017.P4458773830944026297

`record[A120019(∑[A152271(n)])]`
-/

namespace A120017.P4458773830944026297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120019 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120017.P4458773830944026297

/-! ## A120017.P2341880214052390207

`record[A120019(A117142(n+1))]`
-/

namespace A120017.P2341880214052390207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120019 (A117142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120017.P2341880214052390207

/-! ## A120017.P2702270657296952437

`record[A120019(n+1)/A061554(n)]`
-/

namespace A120017.P2702270657296952437
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120019 (n + 1) : ℚ) / (A061554 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120017.P2702270657296952437

/-!
# A120018: The third self-composition of A120010; g.f.: A(x) = G(G(G(x))), where G(x) = g.f. of A120010.

The programs for A120018, there is no canonical definition to state claims against.
-/

/-! ## A120018.P10416712318070241821

`∑{#}[n, C(n, #)*A174107(#)]`
-/

namespace A120018.P10416712318070241821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A174107 k

end

end A120018.P10416712318070241821

/-! ## A120018.P12804368855230080517

`A120019(∑[n+3]+1)`
-/

namespace A120018.P12804368855230080517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120019 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A120018.P12804368855230080517

/-! ## A120018.P14228484101731229318

`record[A120019(A198464(n+1))]`
-/

namespace A120018.P14228484101731229318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120019 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120018.P14228484101731229318

/-! ## A120018.P1969001154933870244

`record[A120019(eq[0, A155839(n)])]`
-/

namespace A120018.P1969001154933870244
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155839 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120019 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120018.P1969001154933870244

/-! ## A120018.P15345093243857750135

`record[A120019(gcd(n, A238093(n+2)))]`
-/

namespace A120018.P15345093243857750135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120019 (Int.gcd (n : ℤ) (A238093 (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120018.P15345093243857750135

/-!
# A120019: Square table, read by antidiagonals, of self-compositions of A120010.

The programs for A120019, there is no canonical definition to state claims against.
-/

/-! ## A120019.P6912576568584016308

`A292975(n)+A186747(A008279(n))`
-/

namespace A120019.P6912576568584016308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292975 n + A186747 (A008279 n).toNat

end

end A120019.P6912576568584016308

/-! ## A120019.P10195342336216639537

`A292975(n)+A174847(A266886(n+1))`
-/

namespace A120019.P10195342336216639537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292975 n + A174847 (A266886 (n + 1)).toNat

end

end A120019.P10195342336216639537

/-! ## A120019.P6908284553446903245

`A102097(A081277(n)*A108767(n+1))`
-/

namespace A120019.P6908284553446903245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102097 (A081277 n * A108767 (n + 1)).toNat

end

end A120019.P6908284553446903245

/-! ## A120019.P18172481194199317955

`A102097(A000040(n+1)*A108767(n+1))`
-/

namespace A120019.P18172481194199317955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102097 (A000040 (n + 1) * A108767 (n + 1)).toNat

end

end A120019.P18172481194199317955

/-! ## A120019.P2854598918012224485

`A102097(lcm(A000040(n+1), A108767(n+1)))`
-/

namespace A120019.P2854598918012224485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102097 (Int.lcm (A000040 (n + 1)) (A108767 (n + 1)))

end

end A120019.P2854598918012224485

/-!
# A120020: Coefficients of x^n in the n-th iteration of the g.f. of A120010: a(n) = [x^n] { (1-sqrt(1-4*x))/2 o x/(1-n*x) o (x-x^2) } for n>=1.

The programs for A120020, there is no canonical definition to state claims against.
-/

/-! ## A120020.P13381924682637961338

`(n+1)*A120022(n+1)`
-/

namespace A120020.P13381924682637961338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A120022 (n + 1)

end

end A120020.P13381924682637961338

/-! ## A120020.P8277822002534665961

`A120019(∑[4*n]+1)`
-/

namespace A120020.P8277822002534665961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120019 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A120020.P8277822002534665961

/-!
# A120021: Coefficients of x^n in the (n+1)-th self-composition of the g.f. of A120010: a(n) = [x^n] { (1-sqrt(1-4*x))/2 o x/(1-(n+1)*x) o (x-x^2) } for n>=1.

The programs for A120021, there is no canonical definition to state claims against.
-/

/-! ## A120021.P15012861206533288984

`A120019(2*(n+1)²)`
-/

namespace A120021.P15012861206533288984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120019 (2 * (n + 1) ^ 2)

end

end A120021.P15012861206533288984

/-!
# A120022: a(n) = A120020(n)/n = coefficient of x^n in the n-th self-composition of the g.f. of A120010, divided by n, for n>=1.

The programs for A120022, there is no canonical definition to state claims against.
-/

/-! ## A120022.P6402386673583729640

`A120020(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A120022.P6402386673583729640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120020 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A120022.P6402386673583729640

/-! ## A120022.P6345692145752100262

`A072774(or(2, (n+2)*a(n-1))+1)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A120022.P6345692145752100262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A072774 (Int.lor 2 ((n + 2 : ℤ) * a (n - 1)) + 1).toNat

end

end A120022.P6345692145752100262

/-!
# A120024: Numbers k such that 2*6^k-1 and 2*6^k+1 are twin primes.

The programs for A120024, there is no canonical definition to state claims against.
-/

/-! ## A120024.P5957310633975466871

`25*(91-a(n-1))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A120024.P5957310633975466871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4] fun n a =>
  25 * (91 - a (n - 1))

end

end A120024.P5957310633975466871

/-!
# A120027: Triangle, generated from (3^(n-k) * 5^k) table.

The programs for A120027, the canonical program `A120027.P1714917155360020650` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120027 has offset 0).

The definition of A120027 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120027.P8460604511631793725

`3^(row(n)-col(n))*5^col(n)`
-/

namespace A120027.P8460604511631793725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) * (5 ^ SequenceMachineLib.triCol n : ℚ)

end

end A120027.P8460604511631793725

namespace A120027

/-- `3^(row(n)-col(n))*5^col(n)` -/
def P8460604511631793725.Spec : Prop :=
  ∀ n, P8460604511631793725.a n = (A120027 n : ℚ)

end A120027

/-! ## A120027.P1714917155360020650

`3^(A004736(n+1)-1)*5^(A002260(n+1)-1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A120027

/-- `3^(A004736(n+1)-1)*5^(A002260(n+1)-1)` -/
def P1714917155360020650.Spec : Prop :=
  ∀ n, P1714917155360020650.a n = (A120027 n : ℚ)

end A120027

/-! ## A120027.P17899952571841304574

`A013612(n)/A007318(n)²*A027465(n)`
-/

namespace A120027.P17899952571841304574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013612 n : ℚ) / (A007318 n ^ 2 : ℚ) * (A027465 n : ℚ)

end

end A120027.P17899952571841304574

namespace A120027

/-- `A013612(n)/A007318(n)²*A027465(n)` -/
def P17899952571841304574.Spec : Prop :=
  ∀ n, P17899952571841304574.a n = (A120027 n : ℚ)

end A120027

/-! ## A120027.P13553732594903274480

`A013622(n)/A007318(n)`
-/

namespace A120027.P13553732594903274480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013622 n : ℚ) / (A007318 n : ℚ)

end

end A120027.P13553732594903274480

namespace A120027

/-- `A013622(n)/A007318(n)` -/
def P13553732594903274480.Spec : Prop :=
  ∀ n, P13553732594903274480.a n = (A120027 n : ℚ)

end A120027

/-! ## A120027.P2883388089215542189

`A038259(n)/A038207(n)`
-/

namespace A120027.P2883388089215542189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038259 n : ℚ) / (A038207 n : ℚ)

end

end A120027.P2883388089215542189

namespace A120027

/-- `A038259(n)/A038207(n)` -/
def P2883388089215542189.Spec : Prop :=
  ∀ n, P2883388089215542189.a n = (A120027 n : ℚ)

end A120027

/-! ## A120027.P4267081470246080503

`A038228(n)/A013609(n)`
-/

namespace A120027.P4267081470246080503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038228 n : ℚ) / (A013609 n : ℚ)

end

end A120027.P4267081470246080503

namespace A120027

/-- `A038228(n)/A013609(n)` -/
def P4267081470246080503.Spec : Prop :=
  ∀ n, P4267081470246080503.a n = (A120027 n : ℚ)

end A120027

/-! ## A120027.P9607583854236353191

`lcm(A013609(n), A013622(n))/A013609(n)`
-/

namespace A120027.P9607583854236353191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A013609 n) (A013622 n) : ℚ) / (A013609 n : ℚ)

end

end A120027.P9607583854236353191

namespace A120027

/-- `lcm(A013609(n), A013622(n))/A013609(n)` -/
def P9607583854236353191.Spec : Prop :=
  ∀ n, P9607583854236353191.a n = (A120027 n : ℚ)

end A120027

/-! ## A120027.P6909784132868309794

`A038295(n)/A027465(n)`
-/

namespace A120027.P6909784132868309794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038295 n : ℚ) / (A027465 n : ℚ)

end

end A120027.P6909784132868309794

namespace A120027

/-- `A038295(n)/A027465(n)` -/
def P6909784132868309794.Spec : Prop :=
  ∀ n, P6909784132868309794.a n = (A120027 n : ℚ)

end A120027

/-! ## A120027.P11237849910884229754

`A038264(n)/A038208(n)`
-/

namespace A120027.P11237849910884229754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038264 n : ℚ) / (A038208 n : ℚ)

end

end A120027.P11237849910884229754

namespace A120027

/-- `A038264(n)/A038208(n)` -/
def P11237849910884229754.Spec : Prop :=
  ∀ n, P11237849910884229754.a n = (A120027 n : ℚ)

end A120027

/-! ## A120027.P14370372662630118237

`A038331(n)/A038231(n)`
-/

namespace A120027.P14370372662630118237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038331 n : ℚ) / (A038231 n : ℚ)

end

end A120027.P14370372662630118237

namespace A120027

/-- `A038331(n)/A038231(n)` -/
def P14370372662630118237.Spec : Prop :=
  ∀ n, P14370372662630118237.a n = (A120027 n : ℚ)

end A120027

/-! ## A120027.P17883403685719010351

`lcm(A038231(n), A038259(n))/A038231(n)`
-/

namespace A120027.P17883403685719010351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A038231 n) (A038259 n) : ℚ) / (A038231 n : ℚ)

end

end A120027.P17883403685719010351

namespace A120027

/-- `lcm(A038231(n), A038259(n))/A038231(n)` -/
def P17883403685719010351.Spec : Prop :=
  ∀ n, P17883403685719010351.a n = (A120027 n : ℚ)

end A120027

/-! ## A120027.P11827780902167364455

`A038300(n)/A038220(n)`
-/

namespace A120027.P11827780902167364455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038300 n : ℚ) / (A038220 n : ℚ)

end

end A120027.P11827780902167364455

namespace A120027

/-- `A038300(n)/A038220(n)` -/
def P11827780902167364455.Spec : Prop :=
  ∀ n, P11827780902167364455.a n = (A120027 n : ℚ)

end A120027

/-! ## A120027.P4490569760006415966

`A038300(n)/gcd(A038292(n), A038328(n))`
-/

namespace A120027.P4490569760006415966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038300 n : ℚ) / (Int.gcd (A038292 n) (A038328 n) : ℚ)

end

end A120027.P4490569760006415966

namespace A120027

/-- `A038300(n)/gcd(A038292(n), A038328(n))` -/
def P4490569760006415966.Spec : Prop :=
  ∀ n, P4490569760006415966.a n = (A120027 n : ℚ)

end A120027

/-! ## A120027.P5488196216589470029

`A038300(n)/gcd(A038296(n), A038330(n))`
-/

namespace A120027.P5488196216589470029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038300 n : ℚ) / (Int.gcd (A038296 n) (A038330 n) : ℚ)

end

end A120027.P5488196216589470029

namespace A120027

/-- `A038300(n)/gcd(A038296(n), A038330(n))` -/
def P5488196216589470029.Spec : Prop :=
  ∀ n, P5488196216589470029.a n = (A120027 n : ℚ)

end A120027

/-! ## A120027.P11170305607317064571

`A038300(n)/gcd(A038300(n), A038334(n))`
-/

namespace A120027.P11170305607317064571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038300 n : ℚ) / (Int.gcd (A038300 n) (A038334 n) : ℚ)

end

end A120027.P11170305607317064571

namespace A120027

/-- `A038300(n)/gcd(A038300(n), A038334(n))` -/
def P11170305607317064571.Spec : Prop :=
  ∀ n, P11170305607317064571.a n = (A120027 n : ℚ)

end A120027

/-! ## A120027.P14250439209951669418

`A038336(n)/A038232(n)`
-/

namespace A120027.P14250439209951669418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038336 n : ℚ) / (A038232 n : ℚ)

end

end A120027.P14250439209951669418

namespace A120027

/-- `A038336(n)/A038232(n)` -/
def P14250439209951669418.Spec : Prop :=
  ∀ n, P14250439209951669418.a n = (A120027 n : ℚ)

end A120027

/-! ## A120027.P8610489957111647160

`A007088(A059268(n))/A059268(n)*A140303(n)`
-/

namespace A120027.P8610489957111647160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007088 (A059268 n).toNat : ℚ) / (A059268 n : ℚ) * (A140303 n : ℚ)

end

end A120027.P8610489957111647160

namespace A120027

/-- `A007088(A059268(n))/A059268(n)*A140303(n)` -/
def P8610489957111647160.Spec : Prop :=
  ∀ n, P8610489957111647160.a n = (A120027 n : ℚ)

end A120027

/-! ## A120027.P12771199539690877507

`A286468(2*A043569(n+1)+1)`
-/

namespace A120027.P12771199539690877507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286468 (2 * A043569 (n + 1) + 1).toNat

end

end A120027.P12771199539690877507

namespace A120027

/-- `A286468(2*A043569(n+1)+1)` -/
def P12771199539690877507.Spec : Prop :=
  ∀ n, P12771199539690877507.a n = A120027 n

end A120027

/-! ## A120027.P5843150372449751721

`A286468(A043569(n+1)+A043569(n+1)+1)`
-/

namespace A120027.P5843150372449751721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286468 (A043569 (n + 1) + (A043569 (n + 1) + 1)).toNat

end

end A120027.P5843150372449751721

namespace A120027

/-- `A286468(A043569(n+1)+A043569(n+1)+1)` -/
def P5843150372449751721.Spec : Prop :=
  ∀ n, P5843150372449751721.a n = A120027 n

end A120027

/-! ## A120027.P2628629582980367848

`A232646(n+1)/A130321(n)*A297002(A130321(n))`
-/

namespace A120027.P2628629582980367848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232646 (n + 1) : ℚ) / (A130321 n : ℚ) * (A297002 (A130321 n).toNat : ℚ)

end

end A120027.P2628629582980367848

namespace A120027

/-- `A232646(n+1)/A130321(n)*A297002(A130321(n))` -/
def P2628629582980367848.Spec : Prop :=
  ∀ n, P2628629582980367848.a n = (A120027 n : ℚ)

end A120027

/-!
# A120030: Expansion of theta_4(q)^2*theta_4(q^2)^4 in powers of q.

The programs for A120030, there is no canonical definition to state claims against.
-/

/-! ## A120030.P10275408801937360897

`A033999(n)*A138504(n)`
-/

namespace A120030.P10275408801937360897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A138504 n

end

end A120030.P10275408801937360897

/-! ## A120030.P17023230574817311964

`A122854(n)/A138502(n)*A138504(n)`
-/

namespace A120030.P17023230574817311964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122854 n : ℚ) / (A138502 n : ℚ) * (A138504 n : ℚ)

end

end A120030.P17023230574817311964

/-! ## A120030.P11053415826732161050

`A002173(n+1)/A138505(n+1)*A138504(n)`
-/

namespace A120030.P11053415826732161050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002173 (n + 1) : ℚ) / (A138505 (n + 1) : ℚ) * (A138504 n : ℚ)

end

end A120030.P11053415826732161050

/-! ## A120030.P16881887110043323952

`A138504(2*n)`
-/

namespace A120030.P16881887110043323952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138504 (2 * n)

end

end A120030.P16881887110043323952

/-! ## A120030.P12821692322770564152

`A138504(n)²/A138504(A005843(n))`
-/

namespace A120030.P12821692322770564152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138504 n ^ 2 : ℚ) / (A138504 (A005843 n).toNat : ℚ)

end

end A120030.P12821692322770564152

/-! ## A120030.P13636226362429752723

`A138504(A005843(n))%A059395(n+1)`
-/

namespace A120030.P13636226362429752723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138504 (A005843 n).toNat) (A059395 (n + 1))

end

end A120030.P13636226362429752723

/-! ## A120030.P5700598277950746566

`A206559(Δ[A047276(n+1)])+A138504(n+n)`
-/

namespace A120030.P5700598277950746566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206559 (f1 (n + 1) - f1 n).toNat + A138504 (n + n)

end

end A120030.P5700598277950746566

/-! ## A120030.P871908335651451064

`∑{#}[n, A212885(#)*A212885(n-#)]`
-/

namespace A120030.P871908335651451064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A212885 k * A212885 (n - k)

end

end A120030.P871908335651451064

/-! ## A120030.P3752014918061845591

`A138504(A005843(n))%A049081(n+1)`
-/

namespace A120030.P3752014918061845591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138504 (A005843 n).toNat) (A049081 (n + 1))

end

end A120030.P3752014918061845591

/-!
# A120033: Number of semiprimes s such that 2^n < s <= 2^(n+1).

The programs for A120033, there is no canonical definition to state claims against.
-/

/-! ## A120033.P12976214445867556158

`Δ[A125527(round(sqrt(n²+1)))]`
-/

namespace A120033.P12976214445867556158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125527 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120033.P12976214445867556158

/-! ## A120033.P15589689489894788097

`A125527(n+1)-A125527(round(sqrt(n²+1)))`
-/

namespace A120033.P15589689489894788097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125527 (n + 1) - A125527 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A120033.P15589689489894788097

/-! ## A120033.P2246833420035551430

`A125527(n+1)-A072000(2^n)`
-/

namespace A120033.P2246833420035551430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125527 (n + 1) - A072000 (2 ^ n)

end

end A120033.P2246833420035551430

/-! ## A120033.P10947259241621680858

`Δ[A072000(2^n)]`
-/

namespace A120033.P10947259241621680858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120033.P10947259241621680858

/-! ## A120033.P12647271942247724359

`abs(Δ[A072000(A000079(n))])`
-/

namespace A120033.P12647271942247724359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A000079 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A120033.P12647271942247724359

/-!
# A120034: Number of 3-almost primes t such that 2^n < t <= 2^(n+1).

The programs for A120034, there is no canonical definition to state claims against.
-/

/-! ## A120034.P14526558961356906474

`Δ[A127396(round(acot(n)+n))]`
-/

namespace A120034.P14526558961356906474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127396 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120034.P14526558961356906474

/-! ## A120034.P6393624542902810640

`Δ[A127396(round(sqrt(n²+1)))]`
-/

namespace A120034.P6393624542902810640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127396 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120034.P6393624542902810640

/-! ## A120034.P18443538507119888616

`abs(Δ[A127396(A233583(n+1))])`
-/

namespace A120034.P18443538507119888616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127396 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A120034.P18443538507119888616

/-! ## A120034.P521814677893685577

`A127396(n+1)-A127396(round(acot(n)+n))`
-/

namespace A120034.P521814677893685577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127396 (n + 1) - A127396 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A120034.P521814677893685577

/-! ## A120034.P10838150496760216678

`A127396(n+1)-A127396(round(sqrt(n²+1)))`
-/

namespace A120034.P10838150496760216678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127396 (n + 1) - A127396 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A120034.P10838150496760216678

/-!
# A120035: Number of 4-almost primes f such that 2^n < f <= 2^(n+1).

The programs for A120035, there is no canonical definition to state claims against.
-/

/-! ## A120035.P16139360540276184327

`Δ[A334069(gcd(n, ∏{d}[n, #]))]`
-/

namespace A120035.P16139360540276184327
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334069 (Nat.gcd n (∏ d ∈ Nat.divisors (f2 n), d))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120035.P16139360540276184327

/-! ## A120035.P10639565116360616639

`Δ[A334069(floor(acot(n)+n))]`
-/

namespace A120035.P10639565116360616639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334069 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120035.P10639565116360616639

/-! ## A120035.P18023457802254308954

`Δ[A334069(round(acot(n)+n))]`
-/

namespace A120035.P18023457802254308954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334069 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120035.P18023457802254308954

/-! ## A120035.P1584700642903128137

`Δ[A334069(abs(1-n)+1)]`
-/

namespace A120035.P1584700642903128137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334069 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120035.P1584700642903128137

/-! ## A120035.P18234552244015122579

`abs(Δ[A334069(A028310(n))])`
-/

namespace A120035.P18234552244015122579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334069 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A120035.P18234552244015122579

/-!
# A120036: Number of 5-almost primes 5ap such that 2^n < 5ap <= 2^(n+1).

The programs for A120036, there is no canonical definition to state claims against.
-/

/-! ## A120036.P8803614737105766988

`A008651(record[p?[A017859(n)]])`
-/

namespace A120036.P8803614737105766988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017859 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A120036.P8803614737105766988

/-! ## A120036.P14807808231734373222

`Δ[A325106(A095023(n+1))]`
-/

namespace A120036.P14807808231734373222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325106 (A095023 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120036.P14807808231734373222

/-! ## A120036.P12861506498362495212

`A096765(∑[A111617(3*n+2)%(n+1)])`
-/

namespace A120036.P12861506498362495212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111617 (3 * n + 2)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A120036.P12861506498362495212

/-! ## A120036.P2381455212757384400

`A000383(n)-A108731(A000108(n))`
-/

namespace A120036.P2381455212757384400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000383 n - A108731 (A000108 n).toNat

end

end A120036.P2381455212757384400

/-! ## A120036.P2599227259083987829

`A172264(A293606(n)-A026741(n))`
-/

namespace A120036.P2599227259083987829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172264 (A293606 n - A026741 n).toNat

end

end A120036.P2599227259083987829

/-!
# A120037: Number of 6-almost primes 6ap such that 2^n < 6ap <= 2^(n+1).

The programs for A120037, there is no canonical definition to state claims against.
-/

/-! ## A120037.P3026699122459936580

`A262039(A120038(n+1))`
-/

namespace A120037.P3026699122459936580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262039 (A120038 (n + 1)).toNat

end

end A120037.P3026699122459936580

/-! ## A120037.P6332001639356938976

`A320313(or(1, A171857(n)))`
-/

namespace A120037.P6332001639356938976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320313 (Int.lor 1 (A171857 n)).toNat

end

end A120037.P6332001639356938976

/-! ## A120037.P4692004113439792197

`and(A120038(A068634(n+1)), A284482(n))`
-/

namespace A120037.P4692004113439792197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A120038 (A068634 (n + 1)).toNat) (A284482 n)

end

end A120037.P4692004113439792197

/-!
# A120038: Number of 7-almost primes 7ap such that 2^n < 7ap <= 2^(n+1).

The programs for A120038, there is no canonical definition to state claims against.
-/

/-! ## A120038.P5975261136626763171

`Δ[A151734(∏[A109701(n)])]`
-/

namespace A120038.P5975261136626763171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109701 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151734 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120038.P5975261136626763171

/-! ## A120038.P2537130240535942069

`A120040(n+2)-A335446(A112843(n))`
-/

namespace A120038.P2537130240535942069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120040 (n + 2) - A335446 (A112843 n).toNat

end

end A120038.P2537130240535942069

/-! ## A120038.P1327644055282012033

`and(A178460(n+1), A242918(A055243(n)))`
-/

namespace A120038.P1327644055282012033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A178460 (n + 1)) (A242918 (A055243 n).toNat)

end

end A120038.P1327644055282012033

/-!
# A120039: Number of 8-almost primes 8ap such that 2^n < 8ap <= 2^(n+1).

The programs for A120039, there is no canonical definition to state claims against.
-/

/-! ## A120039.P18099367111324982712

`A120040(n+1)-A025466(A231610(n+1))`
-/

namespace A120039.P18099367111324982712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120040 (n + 1) - A025466 (A231610 (n + 1)).toNat

end

end A120039.P18099367111324982712

/-! ## A120039.P16092010238468431582

`A120040(n+1)-A025466(A120040(n+1)²)`
-/

namespace A120039.P16092010238468431582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120040 (n + 1) - A025466 (A120040 (n + 1) ^ 2).toNat

end

end A120039.P16092010238468431582

/-! ## A120039.P8405767014255611912

`A120040(C(∑[n+1], 8*n)+n+1)`
-/

namespace A120039.P8405767014255611912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120040 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (8 * n) + n + 1)

end

end A120039.P8405767014255611912

/-! ## A120039.P9567008977749099661

`A120040(∑[A287384(n)])`
-/

namespace A120039.P9567008977749099661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A120039.P9567008977749099661

/-! ## A120039.P4427945158064964029

`A120040(A043318(n+1))`
-/

namespace A120039.P4427945158064964029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120040 (A043318 (n + 1)).toNat

end

end A120039.P4427945158064964029

/-!
# A120040: Number of 9-almost primes 9ap such that 2^n < 9ap <= 2^(n+1).

The programs for A120040, there is no canonical definition to state claims against.
-/

/-! ## A120040.P8600765131081075799

`A120041(A043320(n+1))-char[14]`
-/

namespace A120040.P8600765131081075799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120041 (A043320 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A120040.P8600765131081075799

/-! ## A120040.P6512288710988899512

`A120041(A187829(n+1))-char[14]`
-/

namespace A120040.P6512288710988899512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120041 (A187829 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A120040.P6512288710988899512

/-! ## A120040.P1932083686415730432

`A120041(A044917(n+1))-A185036(n)`
-/

namespace A120040.P1932083686415730432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120041 (A044917 (n + 1)).toNat - A185036 n

end

end A120040.P1932083686415730432

/-! ## A120040.P14698329629375782942

`A120041(A044917(n+1))-A185274(n)`
-/

namespace A120040.P14698329629375782942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120041 (A044917 (n + 1)).toNat - A185274 n

end

end A120040.P14698329629375782942

/-! ## A120040.P16783093382309870902

`A120041(n+1)-A025466(A231610(n))`
-/

namespace A120040.P16783093382309870902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120041 (n + 1) - A025466 (A231610 n).toNat

end

end A120040.P16783093382309870902

/-!
# A120041: Number of 10-almost primes k such that 2^n < k <= 2^(n+1).

The programs for A120041, there is no canonical definition to state claims against.
-/

/-! ## A120041.P10309227430339024618

`A120042(gcd((n+1)*(n+3)², (n+1)*Δ[n^3]))`
-/

namespace A120041.P10309227430339024618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120042 (Int.gcd ((n + 1) * (n + 3) ^ 2 : ℤ) ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))))

end

end A120041.P10309227430339024618

/-! ## A120041.P5967493603101334221

`A120043(record[A181834(n)])`
-/

namespace A120041.P5967493603101334221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120043 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A120041.P5967493603101334221

/-! ## A120041.P2496938201117603855

`A120042(A055645(n)+1)`
-/

namespace A120041.P2496938201117603855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120042 (A055645 n + 1).toNat

end

end A120041.P2496938201117603855

/-! ## A120041.P17579378169151656931

`A120042(A341709(n)+1)`
-/

namespace A120041.P17579378169151656931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120042 (A341709 n + 1).toNat

end

end A120041.P17579378169151656931

/-! ## A120041.P80050759844162239

`A120042(A262545(n+1)+1)`
-/

namespace A120041.P80050759844162239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120042 (A262545 (n + 1) + 1).toNat

end

end A120041.P80050759844162239

/-!
# A120042: Number of 11-almost primes 11ap such that 2^n < 11ap <= 2^(n+1).

The programs for A120042, there is no canonical definition to state claims against.
-/

/-! ## A120042.P2744204193909647842

`A120043(A067033(n+1))`
-/

namespace A120042.P2744204193909647842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120043 (A067033 (n + 1)).toNat

end

end A120042.P2744204193909647842

/-! ## A120042.P16790204863718113182

`A120043(A076084(n+1))`
-/

namespace A120042.P16790204863718113182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120043 (A076084 (n + 1)).toNat

end

end A120042.P16790204863718113182

/-! ## A120042.P7113677200092655355

`A120043(A151764(n+1))`
-/

namespace A120042.P7113677200092655355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120043 (A151764 (n + 1)).toNat

end

end A120042.P7113677200092655355

/-! ## A120042.P18269538623480987590

`A120043(C(A007095(n), n))`
-/

namespace A120042.P18269538623480987590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120043 (Nat.choose (A007095 n).toNat n)

end

end A120042.P18269538623480987590

/-! ## A120042.P16826491973674651437

`A120043(C(A194417(n+1), n))`
-/

namespace A120042.P16826491973674651437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120043 (Nat.choose (A194417 (n + 1)).toNat n)

end

end A120042.P16826491973674651437

/-!
# A120043: Number of 12-almost primes 12ap such that 2^n < 12ap <= 2^(n+1).

The programs for A120043, there is no canonical definition to state claims against.
-/

/-! ## A120043.P6920068109641324936

`A120042(round(log2(A290436(n))))`
-/

namespace A120043.P6920068109641324936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120042 (SequenceMachineLib.roundAway (Real.logb 2 (A290436 n : ℝ))).toNat

end

end A120043.P6920068109641324936

/-! ## A120043.P4912035030940233851

`∑{e}[A135092(n), A120042(#)]`
-/

namespace A120043.P4912035030940233851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A120042 (Nat.factorization (f1 n).natAbs p)

end

end A120043.P4912035030940233851

/-! ## A120043.P14175632711321123502

`A120042(A077342(n+1)-A040000(n))`
-/

namespace A120043.P14175632711321123502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120042 (A077342 (n + 1) - A040000 n).toNat

end

end A120043.P14175632711321123502

/-! ## A120043.P5750021795456955978

`A120042(A001222(ceil(2^(n-1))))`
-/

namespace A120043.P5750021795456955978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120042 (A001222 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat

end

end A120043.P5750021795456955978

/-! ## A120043.P930159069954567582

`A120042(A076084(n+1)-A040000(n))`
-/

namespace A120043.P930159069954567582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120042 (A076084 (n + 1) - A040000 n).toNat

end

end A120043.P930159069954567582

/-!
# A120044: The 10^n-th 3-almost prime.

The programs for A120044, the canonical program `A120044.P16653427168964974241` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120044 has offset 0).

The definition of A120044 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A120044.P16653427168964974241

`A014612(10^n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A120044

/-- `A014612(10^n)` -/
def P16653427168964974241.Spec : Prop :=
  ∀ n, P16653427168964974241.a n = A120044 n

theorem P16653427168964974241.correct : P16653427168964974241.Spec := by
  intro n
  simp only [A120044]

end A120044

/-!
# A120045: The (10^n)-th 4-almost prime.

The programs for A120045, the canonical program `A120045.P16719681067314808438` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120045 has offset 0).

The definition of A120045 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014613, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A120045.P16719681067314808438

`A014613(10^n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A120045

/-- `A014613(10^n)` -/
def P16719681067314808438.Spec : Prop :=
  ∀ n, P16719681067314808438.a n = A120045 n

theorem P16719681067314808438.correct : P16719681067314808438.Spec := by
  intro n
  simp only [A120045]

end A120045

/-!
# A120046: The 10^n-th 5-almost prime.

The programs for A120046, the canonical program `A120046.P9775275873602045631` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120046 has offset 0).

The definition of A120046 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014614, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A120046.P9775275873602045631

`A014614(10^n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A120046

/-- `A014614(10^n)` -/
def P9775275873602045631.Spec : Prop :=
  ∀ n, P9775275873602045631.a n = A120046 n

theorem P9775275873602045631.correct : P9775275873602045631.Spec := by
  intro n
  simp only [A120046]

end A120046

/-!
# A120047: Number of 6-almost primes less than or equal to 10^n.

The programs for A120047, there is no canonical definition to state claims against.
-/

/-! ## A120047.P8421538020763783985

`A328961(a(n-1)-1)+1` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A120047.P8421538020763783985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  A328961 (a (n - 1) - 1).toNat + 1

end

end A120047.P8421538020763783985

/-!
# A120048: Number of 7-almost primes less than or equal to 10^n.

The programs for A120048, there is no canonical definition to state claims against.
-/

/-! ## A120048.P3120889646372995634

`A131981(2*n^n)`
-/

namespace A120048.P3120889646372995634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131981 (2 * n ^ n)

end

end A120048.P3120889646372995634

/-!
# A120049: Number of 8-almost primes less than or equal to 10^n.

The programs for A120049, there is no canonical definition to state claims against.
-/

/-! ## A120049.P6017517906806186604

`A274756(n+1)%A014601(A001147(n))`
-/

namespace A120049.P6017517906806186604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274756 (n + 1)) (A014601 (A001147 n).toNat)

end

end A120049.P6017517906806186604

/-! ## A120049.P10486726443887972972

`A302289(A063206(n+1))%A184942(n)`
-/

namespace A120049.P10486726443887972972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302289 (A063206 (n + 1)).toNat) (A184942 n)

end

end A120049.P10486726443887972972

/-!
# A120050: Number of 9-almost primes less than or equal to 10^n.

The programs for A120050, there is no canonical definition to state claims against.
-/

/-! ## A120050.P5022914135173158171

`A340976(A307228(n))`
-/

namespace A120050.P5022914135173158171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340976 (A307228 n).toNat

end

end A120050.P5022914135173158171

/-! ## A120050.P11891557108371691952

`xor(1, A069770(A000479(n)))`
-/

namespace A120050.P11891557108371691952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A069770 (A000479 n).toNat)

end

end A120050.P11891557108371691952

/-!
# A120051: Number of 10-almost primes less than or equal to 10^n.

The programs for A120051, there is no canonical definition to state claims against.
-/

/-! ## A120051.P2663908143858159692

`A088183((n+1)^n+2)`
-/

namespace A120051.P2663908143858159692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088183 ((n + 1) ^ n + 2)

end

end A120051.P2663908143858159692

/-! ## A120051.P10933789873263051621

`A285709(∑[∑[(n-1)^n]+2*n]+1)`
-/

namespace A120051.P10933789873263051621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285709 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A120051.P10933789873263051621

/-!
# A120052: Number of 11-almost primes less than or equal to 10^n.

The programs for A120052, there is no canonical definition to state claims against.
-/

/-! ## A120052.P7592341183566847260

`A315653(A208203(n))%A208207(n)`
-/

namespace A120052.P7592341183566847260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A315653 (A208203 n).toNat) (A208207 n)

end

end A120052.P7592341183566847260

/-! ## A120052.P17659001238214620597

`round(log2(A349788(n)!))`
-/

namespace A120052.P17659001238214620597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (Nat.factorial (A349788 n).toNat : ℝ))

end

end A120052.P17659001238214620597

/-!
# A120053: Number of 12-almost primes less than or equal to 10^n.

The programs for A120053, there is no canonical definition to state claims against.
-/

/-! ## A120053.P8563696279809846420

`A394304(A000311(n))`
-/

namespace A120053.P8563696279809846420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394304 (A000311 n).toNat

end

end A120053.P8563696279809846420

/-! ## A120053.P14942425711644878850

`A087508(A000429(2*(n+1)))`
-/

namespace A120053.P14942425711644878850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087508 (A000429 (2 * (n + 1))).toNat

end

end A120053.P14942425711644878850

/-! ## A120053.P14448340574953632726

`A129594(A323053(n)*A323063(n+1))`
-/

namespace A120053.P14448340574953632726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129594 (A323053 n * A323063 (n + 1)).toNat

end

end A120053.P14448340574953632726

/-!
# A120054: a(n) = binomial(n+3,4)*4^4.

The programs for A120054, the canonical program `A120054.P9867831075340747238` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120054 has offset 1).

The definition of A120054 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+4, 4)*4^4` (program `A120054.P9867831075340747238`, by `A120054.P9867831075340747238.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120054.P9867831075340747238

`C(n+4, 4)*4^4`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A120054

/-- `C(n+4, 4)*4^4` -/
def P9867831075340747238.Spec : Prop :=
  ∀ n, (P9867831075340747238.a n : ℤ) = A120054 (n + 1)

theorem P9867831075340747238.correct : P9867831075340747238.Spec := by
  intro n
  simp only [A120054, Nat.add_sub_cancel]

end A120054

/-! ## A120054.P4651217047518630214

`ogf(256/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A120054.P4651217047518630214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [256] [1, -5, 10, -10, 5, -1] n

end

end A120054.P4651217047518630214

namespace A120054

/-- `ogf(256/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P4651217047518630214.Spec : Prop :=
  ∀ n, P4651217047518630214.a n = A120054 (n + 1)

end A120054

/-! ## A120054.P10969268263344653439

`16*16*C(n+4, 4)`
-/

namespace A120054.P10969268263344653439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * (16 * Nat.choose (n + 4) 4)

end

end A120054.P10969268263344653439

namespace A120054

/-- `16*16*C(n+4, 4)` -/
def P10969268263344653439.Spec : Prop :=
  ∀ n, (P10969268263344653439.a n : ℤ) = A120054 (n + 1)

theorem P10969268263344653439.correct : P10969268263344653439.Spec := by
  intro n
  simp only [A120054, Nat.add_sub_cancel, A120054.P10969268263344653439.a, A120054.P9867831075340747238.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120054

/-! ## A120054.P10302064618270262755

`∑[∑[∑[16*16*(n+1)]]]`
-/

namespace A120054.P10302064618270262755
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * (16 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120054.P10302064618270262755

namespace A120054

/-- `∑[∑[∑[16*16*(n+1)]]]` -/
def P10302064618270262755.Spec : Prop :=
  ∀ n, (P10302064618270262755.a n : ℤ) = A120054 (n + 1)

end A120054

/-! ## A120054.P14995588218351033641

`C(n+4, 4)/(1/4)²²`
-/

namespace A120054.P14995588218351033641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 4 : ℚ) / (((1 : ℚ) / 4) ^ 2) ^ 2

end

end A120054.P14995588218351033641

namespace A120054

/-- `C(n+4, 4)/(1/4)²²` -/
def P14995588218351033641.Spec : Prop :=
  ∀ n, P14995588218351033641.a n = (A120054 (n + 1) : ℚ)

theorem P14995588218351033641.correct : P14995588218351033641.Spec := by
  intro n
  simp only [A120054, Nat.add_sub_cancel, A120054.P14995588218351033641.a, A120054.P9867831075340747238.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A120054

/-! ## A120054.P12355383124329147227

`lcm(2, ∑[∑[∑[(n+1)/(1/4)^4]]])`
-/

namespace A120054.P12355383124329147227
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((1 : ℚ) / 4) ^ 4

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A120054.P12355383124329147227

namespace A120054

/-- `lcm(2, ∑[∑[∑[(n+1)/(1/4)^4]]])` -/
def P12355383124329147227.Spec : Prop :=
  ∀ n, (P12355383124329147227.a n : ℤ) = A120054 (n + 1)

end A120054

/-! ## A120054.P14695424190291676688

`16*A130810(n+4)`
-/

namespace A120054.P14695424190291676688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A130810 (n + 4)

end

end A120054.P14695424190291676688

namespace A120054

/-- `16*A130810(n+4)` -/
def P14695424190291676688.Spec : Prop :=
  ∀ n, P14695424190291676688.a n = A120054 (n + 1)

theorem P14695424190291676688.correct : P14695424190291676688.Spec := by
  intro n
  simp only [A120054, Nat.add_sub_cancel, A120054.P14695424190291676688.a, A120054.P9867831075340747238.a, A130810, A130810.P6751100018123979558.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A120054

/-! ## A120054.P12538088558990288388

`4*∑[A141478(n+1)]`
-/

namespace A120054.P12538088558990288388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120054.P12538088558990288388

namespace A120054

/-- `4*∑[A141478(n+1)]` -/
def P12538088558990288388.Spec : Prop :=
  ∀ n, P12538088558990288388.a n = A120054 (n + 1)

end A120054

/-! ## A120054.P11006008114501686968

`32*∑[A130809(n+3)]`
-/

namespace A120054.P11006008114501686968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130809 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120054.P11006008114501686968

namespace A120054

/-- `32*∑[A130809(n+3)]` -/
def P11006008114501686968.Spec : Prop :=
  ∀ n, P11006008114501686968.a n = A120054 (n + 1)

end A120054

/-! ## A120054.P10176038287435779563

`8*4*A162668(n+1)`
-/

namespace A120054.P10176038287435779563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (4 * A162668 (n + 1))

end

end A120054.P10176038287435779563

namespace A120054

/-- `8*4*A162668(n+1)` -/
def P10176038287435779563.Spec : Prop :=
  ∀ n, P10176038287435779563.a n = A120054 (n + 1)

theorem P10176038287435779563.correct : P10176038287435779563.Spec := by
  intro n
  simp only [A120054, Nat.add_sub_cancel, A120054.P10176038287435779563.a, A120054.P9867831075340747238.a, A162668, A162668.P8323676352970519687.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A120054

/-! ## A120054.P8541698542708455984

`A020705(n)*A141478(n+1)`
-/

namespace A120054.P8541698542708455984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n * A141478 (n + 1)

end

end A120054.P8541698542708455984

namespace A120054

/-- `A020705(n)*A141478(n+1)` -/
def P8541698542708455984.Spec : Prop :=
  ∀ n, P8541698542708455984.a n = A120054 (n + 1)

theorem P8541698542708455984.correct : P8541698542708455984.Spec := by
  intro n
  simp only [A120054, Nat.add_sub_cancel, A120054.P8541698542708455984.a, A120054.P9867831075340747238.a, A020705, A020705.P1213730512334166827.a, A141478, A141478.P7817831478187282158.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A120054

/-! ## A120054.P3365010035173203297

`64*A033488(n+1)`
-/

namespace A120054.P3365010035173203297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * A033488 (n + 1)

end

end A120054.P3365010035173203297

namespace A120054

/-- `64*A033488(n+1)` -/
def P3365010035173203297.Spec : Prop :=
  ∀ n, P3365010035173203297.a n = A120054 (n + 1)

theorem P3365010035173203297.correct : P3365010035173203297.Spec := by
  intro n
  simp only [A120054, Nat.add_sub_cancel, A120054.P3365010035173203297.a, A120054.P9867831075340747238.a, A033488, A033488.P5263045204408268705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A120054

/-! ## A120054.P5726139538115626577

`(n+1)*A141478(n+2)`
-/

namespace A120054.P5726139538115626577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A141478 (n + 2)

end

end A120054.P5726139538115626577

namespace A120054

/-- `(n+1)*A141478(n+2)` -/
def P5726139538115626577.Spec : Prop :=
  ∀ n, P5726139538115626577.a n = A120054 (n + 1)

theorem P5726139538115626577.correct : P5726139538115626577.Spec := by
  intro n
  simp only [A120054, Nat.add_sub_cancel, A120054.P5726139538115626577.a, A120054.P9867831075340747238.a, A141478, A141478.P7817831478187282158.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A120054

/-! ## A120054.P16478451516689980339

`4*∑[4*A102860(n+3)]`
-/

namespace A120054.P16478451516689980339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A102860 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120054.P16478451516689980339

namespace A120054

/-- `4*∑[4*A102860(n+3)]` -/
def P16478451516689980339.Spec : Prop :=
  ∀ n, P16478451516689980339.a n = A120054 (n + 1)

end A120054

/-! ## A120054.P14540930083520978532

`A008590(n+1)*A130809(n+4)`
-/

namespace A120054.P14540930083520978532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (n + 1) * A130809 (n + 4)

end

end A120054.P14540930083520978532

namespace A120054

/-- `A008590(n+1)*A130809(n+4)` -/
def P14540930083520978532.Spec : Prop :=
  ∀ n, P14540930083520978532.a n = A120054 (n + 1)

end A120054

/-! ## A120054.P2398341792785589547

`(A033996(n+1)-A033996(n))*A130809(n+4)`
-/

namespace A120054.P2398341792785589547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033996 (n + 1) - A033996 n) * A130809 (n + 4)

end

end A120054.P2398341792785589547

namespace A120054

/-- `(A033996(n+1)-A033996(n))*A130809(n+4)` -/
def P2398341792785589547.Spec : Prop :=
  ∀ n, P2398341792785589547.a n = A120054 (n + 1)

end A120054

/-! ## A120054.P8585794913240932231

`4*(n+1)*A102860(n+4)`
-/

namespace A120054.P8585794913240932231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) * A102860 (n + 4)

end

end A120054.P8585794913240932231

namespace A120054

/-- `4*(n+1)*A102860(n+4)` -/
def P8585794913240932231.Spec : Prop :=
  ∀ n, P8585794913240932231.a n = A120054 (n + 1)

end A120054

/-! ## A120054.P3993717716837145103

`A008590(2*(n+1))*A210440(n+2)`
-/

namespace A120054.P3993717716837145103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (2 * (n + 1)) * A210440 (n + 2)

end

end A120054.P3993717716837145103

namespace A120054

/-- `A008590(2*(n+1))*A210440(n+2)` -/
def P3993717716837145103.Spec : Prop :=
  ∀ n, P3993717716837145103.a n = A120054 (n + 1)

end A120054

/-! ## A120054.P3628134814577540401

`A013611(Δ[A023551(n+1)-n²])`
-/

namespace A120054.P3628134814577540401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013611 (f1 (n + 1) - f1 n).toNat

end

end A120054.P3628134814577540401

namespace A120054

/-- `A013611(Δ[A023551(n+1)-n²])` -/
def P3628134814577540401.Spec : Prop :=
  ∀ n, P3628134814577540401.a n = A120054 (n + 1)

end A120054

/-!
# A120056: Expansion of g.f. A(x) satisfying A(x)^2 = (1+x) * A(x*A(x)) with A(0) = 1.

The programs for A120056, there is no canonical definition to state claims against.
-/

/-! ## A120056.P8465877067780784695

`A134119(A199746(n))+1`
-/

namespace A120056.P8465877067780784695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 (A199746 n).toNat + 1

end

end A120056.P8465877067780784695

/-! ## A120056.P14906639146304252354

`A134119(A248871(n))+1`
-/

namespace A120056.P14906639146304252354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 (A248871 n).toNat + 1

end

end A120056.P14906639146304252354

/-! ## A120056.P5959108047834827954

`A002266(A248871(n)+6)`
-/

namespace A120056.P5959108047834827954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A248871 n + 6).toNat

end

end A120056.P5959108047834827954

/-!
# A120057: Table T(n,k) = sum over all set partitions of n of number at index k.

The programs for A120057, there is no canonical definition to state claims against.
-/

/-! ## A120057.P7253806577662781826

`A123081(comp[∑[n]])+A056862(n+2)`
-/

namespace A120057.P7253806577662781826
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123081 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A056862 (n + 2)

end

end A120057.P7253806577662781826

/-! ## A120057.P15429731558599359299

`A056862(n+2)+A000110(A002024(n+1))`
-/

namespace A120057.P15429731558599359299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056862 (n + 2) + A000110 (A002024 (n + 1)).toNat

end

end A120057.P15429731558599359299

/-! ## A120057.P5980562020614852273

`A211561(A127739(n+1))+A056862(n+2)`
-/

namespace A120057.P5980562020614852273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211561 (A127739 (n + 1)).toNat + A056862 (n + 2)

end

end A120057.P5980562020614852273

/-! ## A120057.P2091411319462467945

`A011972(A127739(n+1))-A056861(n+2)`
-/

namespace A120057.P2091411319462467945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (A127739 (n + 1)).toNat - A056861 (n + 2)

end

end A120057.P2091411319462467945

/-! ## A120057.P2570609339483272552

`A000110(A003057(n+2))-A056861(n+2)`
-/

namespace A120057.P2570609339483272552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A003057 (n + 2)).toNat - A056861 (n + 2)

end

end A120057.P2570609339483272552

/-!
# A120058: Coefficients for obtaining A120057 from Bell numbers.

The programs for A120058, the canonical program `A120058.P7967715634844611704` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120058 has offset 1).

The definition of A120058 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120058.P7967715634844611704

`2*T(n-1,k)-2*T(n-1,k-1)+2*T(n-2,k-1)-T(n-2,k)` with `a(0)=1, a(1)=2, a(2)=-1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A120058

/-- `2*T(n-1,k)-2*T(n-1,k-1)+2*T(n-2,k-1)-T(n-2,k)` -/
def P7967715634844611704.Spec : Prop :=
  ∀ n, P7967715634844611704.a n = A120058 (n + 1)

theorem P7967715634844611704.correct : P7967715634844611704.Spec := by
  intro n
  simp only [A120058, Nat.add_sub_cancel]

end A120058

/-! ## A120058.P2461543136940546807

`2*(T(n-2,k-1)+T(n-1,k)-T(n-1,k-1))-T(n-2,k)` with `a(0)=1, a(1)=2, a(2)=-1`
-/

namespace A120058.P2461543136940546807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, -1] fun n a =>
  2 * (SequenceMachineLib.triUp2Left a n + SequenceMachineLib.triUp a n - SequenceMachineLib.triUpLeft a n) - SequenceMachineLib.triUp2 a n

end

end A120058.P2461543136940546807

namespace A120058

/-- `2*(T(n-2,k-1)+T(n-1,k)-T(n-1,k-1))-T(n-2,k)` -/
def P2461543136940546807.Spec : Prop :=
  ∀ n, P2461543136940546807.a n = A120058 (n + 1)

end A120058

/-! ## A120058.P18272231719116152622

`-floor(A079628(∑[A035214(n)])/2)`
-/

namespace A120058.P18272231719116152622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊(A079628 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2⌋

end

end A120058.P18272231719116152622

namespace A120058

/-- `-floor(A079628(∑[A035214(n)])/2)` -/
def P18272231719116152622.Spec : Prop :=
  ∀ n, P18272231719116152622.a n = A120058 (n + 1)

end A120058

/-! ## A120058.P9548586753390837011

`A014655(A002262(n))*A208532(n)`
-/

namespace A120058.P9548586753390837011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014655 (A002262 n).toNat * A208532 n

end

end A120058.P9548586753390837011

namespace A120058

/-- `A014655(A002262(n))*A208532(n)` -/
def P9548586753390837011.Spec : Prop :=
  ∀ n, P9548586753390837011.a n = A120058 (n + 1)

end A120058

/-! ## A120058.P9329039834590847841

`A033999(A061885(n))*A208532(n)`
-/

namespace A120058.P9329039834590847841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A061885 n).toNat * A208532 n

end

end A120058.P9329039834590847841

namespace A120058

/-- `A033999(A061885(n))*A208532(n)` -/
def P9329039834590847841.Spec : Prop :=
  ∀ n, P9329039834590847841.a n = A120058 (n + 1)

end A120058

/-! ## A120058.P1780581197849775650

`A102283(A059268(n))*A208532(n)`
-/

namespace A120058.P1780581197849775650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A059268 n).toNat * A208532 n

end

end A120058.P1780581197849775650

namespace A120058

/-- `A102283(A059268(n))*A208532(n)` -/
def P1780581197849775650.Spec : Prop :=
  ∀ n, P1780581197849775650.a n = A120058 (n + 1)

end A120058

/-! ## A120058.P11780129086197543483

`A033999(A163351(n))*A208532(n)`
-/

namespace A120058.P11780129086197543483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A163351 n).toNat * A208532 n

end

end A120058.P11780129086197543483

namespace A120058

/-- `A033999(A163351(n))*A208532(n)` -/
def P11780129086197543483.Spec : Prop :=
  ∀ n, P11780129086197543483.a n = A120058 (n + 1)

end A120058

/-! ## A120058.P9953730123764267285

`A033999(A002262(n)²)*A208532(n)`
-/

namespace A120058.P9953730123764267285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002262 n ^ 2).toNat * A208532 n

end

end A120058.P9953730123764267285

namespace A120058

/-- `A033999(A002262(n)²)*A208532(n)` -/
def P9953730123764267285.Spec : Prop :=
  ∀ n, P9953730123764267285.a n = A120058 (n + 1)

end A120058

/-! ## A120058.P12590561342426077310

`A062157(A002260(n+1))*A208532(n)`
-/

namespace A120058.P12590561342426077310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A002260 (n + 1)).toNat * A208532 n

end

end A120058.P12590561342426077310

namespace A120058

/-- `A062157(A002260(n+1))*A208532(n)` -/
def P12590561342426077310.Spec : Prop :=
  ∀ n, P12590561342426077310.a n = A120058 (n + 1)

end A120058

/-! ## A120058.P1013052103979770409

`A033999(A060299(n+1))*A208532(n)`
-/

namespace A120058.P1013052103979770409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A060299 (n + 1)).toNat * A208532 n

end

end A120058.P1013052103979770409

namespace A120058

/-- `A033999(A060299(n+1))*A208532(n)` -/
def P1013052103979770409.Spec : Prop :=
  ∀ n, P1013052103979770409.a n = A120058 (n + 1)

end A120058

/-!
# A120059: Triangle read by rows: T(n,k) is the number of Dyck n-paths (A000108) whose longest pyramid has size k.

The programs for A120059, there is no canonical definition to state claims against.
-/

/-! ## A120059.P704593507236330056

`A172263(A113368(n))`
-/

namespace A120059.P704593507236330056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (A113368 n).toNat

end

end A120059.P704593507236330056

/-! ## A120059.P4106260452991651971

`A358871(A274740(n))`
-/

namespace A120059.P4106260452991651971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358871 (A274740 n).toNat

end

end A120059.P4106260452991651971

/-! ## A120059.P8606798252239228741

`A326641(A321964(n))`
-/

namespace A120059.P8606798252239228741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326641 (A321964 n).toNat

end

end A120059.P8606798252239228741

/-! ## A120059.P5463008210335434702

`A324666(A370419(n))`
-/

namespace A120059.P5463008210335434702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324666 (A370419 n).toNat

end

end A120059.P5463008210335434702

/-! ## A120059.P393404557366719929

`A309025(A299354(n+1))`
-/

namespace A120059.P393404557366719929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309025 (A299354 (n + 1)).toNat

end

end A120059.P393404557366719929

/-!
# A120060: Triangle read by rows: T(n,k) is the number of Dyck n-paths (A000108) whose longest sawtooth has size k.

The programs for A120060, there is no canonical definition to state claims against.
-/

/-! ## A120060.P10905532178136709683

`A110180(n)-A016389(A135313(n))`
-/

namespace A120060.P10905532178136709683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110180 n - A016389 (A135313 n).toNat

end

end A120060.P10905532178136709683

/-! ## A120060.P4973419420425253859

`A110180(n)-A016389(A187556(n))`
-/

namespace A120060.P4973419420425253859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110180 n - A016389 (A187556 n).toNat

end

end A120060.P4973419420425253859

/-! ## A120060.P13087882582488903883

`A110180(n)%A293111(A264428(n))`
-/

namespace A120060.P13087882582488903883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110180 n) (A293111 (A264428 n).toNat)

end

end A120060.P13087882582488903883

/-! ## A120060.P18170533221317321250

`A328718(n)%A185974(A334778(n))`
-/

namespace A120060.P18170533221317321250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328718 n) (A185974 (A334778 n).toNat)

end

end A120060.P18170533221317321250

/-! ## A120060.P14734983501033641017

`A364663(A368602(n))`
-/

namespace A120060.P14734983501033641017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364663 (A368602 n).toNat

end

end A120060.P14734983501033641017

/-!
# A120062: Number of triangles with integer sides a <= b <= c having integer inradius n.

The programs for A120062, there is no canonical definition to state claims against.
-/

/-! ## A120062.P9575334703563775354

`∑{d}[n+1, A120252(#)]`
-/

namespace A120062.P9575334703563775354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A120252 d

end

end A120062.P9575334703563775354

/-! ## A120062.P12273291948882000335

`A078644(n+1)+A386981(n+1)+A386980(n+1)`
-/

namespace A120062.P12273291948882000335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078644 (n + 1) + (A386981 (n + 1) + A386980 (n + 1))

end

end A120062.P12273291948882000335

/-! ## A120062.P4646870927461417017

`A063520((n+1)²)`
-/

namespace A120062.P4646870927461417017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063520 ((n + 1) ^ 2)

end

end A120062.P4646870927461417017

/-! ## A120062.P4417859041288527405

`or(char[1], A063520(∑[2*n+1]))`
-/

namespace A120062.P4417859041288527405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A063520 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A120062.P4417859041288527405

/-! ## A120062.P66073119022872894

`A000027(A063520(∑[2*n+1]))`
-/

namespace A120062.P66073119022872894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A063520 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A120062.P66073119022872894

/-! ## A120062.P217504576452137135

`A001281(2*A063520(∑[2*n+1]))`
-/

namespace A120062.P217504576452137135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (2 * A063520 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A120062.P217504576452137135

/-! ## A120062.P3748015420318128867

`A004525(2*A063520((n+1)*(n+1)))`
-/

namespace A120062.P3748015420318128867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A063520 ((n + 1) * (n + 1))).toNat

end

end A120062.P3748015420318128867

/-! ## A120062.P7244745225532792995

`lcm(A057077(n+1), A063520(∑[2*n+1]))`
-/

namespace A120062.P7244745225532792995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 (n + 1)) (A063520 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A120062.P7244745225532792995

/-! ## A120062.P18233218263620386951

`A063520(∑[2*n+1])%A000096(n+7)`
-/

namespace A120062.P18233218263620386951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063520 (∑ j ∈ Finset.range (n + 1), f1 j)) (A000096 (n + 7))

end

end A120062.P18233218263620386951

/-! ## A120062.P1091410265709516904

`A063520(∑[n+1+n])+A000007(n+1)`
-/

namespace A120062.P1091410265709516904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063520 (∑ j ∈ Finset.range (n + 1), f1 j) + A000007 (n + 1)

end

end A120062.P1091410265709516904

/-! ## A120062.P1490044871901632328

`A063520(∑[n+1+n])+A000038(n+1)`
-/

namespace A120062.P1490044871901632328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063520 (∑ j ∈ Finset.range (n + 1), f1 j) + A000038 (n + 1)

end

end A120062.P1490044871901632328

/-! ## A120062.P2675516481424679926

`A063520(∑[n+1+n])+A000035(2*n)`
-/

namespace A120062.P2675516481424679926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063520 (∑ j ∈ Finset.range (n + 1), f1 j) + A000035 (2 * n)

end

end A120062.P2675516481424679926

/-! ## A120062.P13358227723994553004

`A000034(2*n)*A063520(∑[n+1+n])`
-/

namespace A120062.P13358227723994553004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A063520 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120062.P13358227723994553004

/-! ## A120062.P6583125390362201848

`A001511(2*n+1)*A063520(∑[2*n+1])`
-/

namespace A120062.P6583125390362201848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A063520 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120062.P6583125390362201848

/-! ## A120062.P14639446300763459142

`A063520(∑[n+1+n])/A000045(gcd(n, n+1))`
-/

namespace A120062.P14639446300763459142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063520 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A000045 (Nat.gcd n (n + 1)) : ℚ)

end

end A120062.P14639446300763459142

/-! ## A120062.P14010646765737489369

`A374801(A374802(A063520((n+1)*(n+1))))`
-/

namespace A120062.P14010646765737489369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374801 (A374802 (A063520 ((n + 1) * (n + 1))).toNat).toNat

end

end A120062.P14010646765737489369

/-! ## A120062.P12281547182644173171

`A001222(A002144(n+1))*A063520(∑[n+1+n])`
-/

namespace A120062.P12281547182644173171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002144 (n + 1)).toNat * A063520 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120062.P12281547182644173171

/-!
# A120065: Number of permutations on 1..n where gcd(s_i,n) = gcd(i,n). Also Product_{d divides n} phi(d)!.

The programs for A120065, there is no canonical definition to state claims against.
-/

/-! ## A120065.P2748305558720857376

`n!/A120066(n+1)`
-/

namespace A120065.P2748305558720857376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A120066 (n + 1) : ℚ)

end

end A120065.P2748305558720857376

/-! ## A120065.P7743684884078481726

`∏{d}[n+1, A000010(#)!]`
-/

namespace A120065.P7743684884078481726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Nat.factorial (A000010 d).toNat

end

end A120065.P7743684884078481726

/-! ## A120065.P9946466680152426323

`∏{d}[n+1, A293484(#)!]`
-/

namespace A120065.P9946466680152426323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Nat.factorial (A293484 d).toNat

end

end A120065.P9946466680152426323

/-! ## A120065.P10244033985975152605

`A000142(n)/A120066(n+1)`
-/

namespace A120065.P10244033985975152605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A120066 (n + 1) : ℚ)

end

end A120065.P10244033985975152605

/-! ## A120065.P14111903661017207281

`∏{d}[A000027(n+1), A000142(A000010(#))]`
-/

namespace A120065.P14111903661017207281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A000142 (A000010 d).toNat

end

end A120065.P14111903661017207281

/-!
# A120066: (n-1)! divided by (product phi(d)! ; d divides n).

The programs for A120066, there is no canonical definition to state claims against.
-/

/-! ## A120066.P17599958217994548336

`n!/∏{d}[n+1, A000010(#)!]`
-/

namespace A120066.P17599958217994548336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / ((∏ d ∈ Nat.divisors (f1 n), Nat.factorial (A000010 d).toNat : ℕ) : ℚ)

end

end A120066.P17599958217994548336

/-! ## A120066.P11255220654204298841

`n!/A120065(n+1)`
-/

namespace A120066.P11255220654204298841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A120065 (n + 1) : ℚ)

end

end A120066.P11255220654204298841

/-! ## A120066.P13145496152464337218

`A000142(n)/A120065(n+1)`
-/

namespace A120066.P13145496152464337218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A120065 (n + 1) : ℚ)

end

end A120066.P13145496152464337218

/-! ## A120066.P9660475783532649816

`Δ[A003422(n)]/A120065(n+1)`
-/

namespace A120066.P9660475783532649816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A120065 (n + 1) : ℚ)

end

end A120066.P9660475783532649816

/-!
# A120068: Numbers n such that n-th prime + 1 is squarefree.

The programs for A120068, the canonical program `A120068.P9891665714429493613` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120068 has offset 1).

The definition of A120068 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049097, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A120068.P9891665714429493613

`A000720(A049097(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A120068

/-- `A000720(A049097(n+1))` -/
def P9891665714429493613.Spec : Prop :=
  ∀ n, P9891665714429493613.a n = A120068 (n + 1)

theorem P9891665714429493613.correct : P9891665714429493613.Spec := by
  intro n
  simp only [A120068, Nat.add_sub_cancel]

end A120068

/-! ## A120068.P8897536287978698624

`eq[1, A023510(n+1)]+1`
-/

namespace A120068.P8897536287978698624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023510 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A120068.P8897536287978698624

namespace A120068

/-- `eq[1, A023510(n+1)]+1` -/
def P8897536287978698624.Spec : Prop :=
  ∀ n, (P8897536287978698624.a n : ℤ) = A120068 (n + 1)

end A120068

/-! ## A120068.P6385983744962282380

`eq[1, A160696(n+1)]+1`
-/

namespace A120068.P6385983744962282380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160696 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A120068.P6385983744962282380

namespace A120068

/-- `eq[1, A160696(n+1)]+1` -/
def P6385983744962282380.Spec : Prop :=
  ∀ n, (P6385983744962282380.a n : ℤ) = A120068 (n + 1)

end A120068

/-! ## A120068.P10292035346307294503

`eq[1, A240474(n+1)]+1`
-/

namespace A120068.P10292035346307294503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240474 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A120068.P10292035346307294503

namespace A120068

/-- `eq[1, A240474(n+1)]+1` -/
def P10292035346307294503.Spec : Prop :=
  ∀ n, (P10292035346307294503.a n : ℤ) = A120068 (n + 1)

end A120068

/-! ## A120068.P10133728377091870438

`eq[1, A054024(3*∏{e}[A000040(n+1)+1, #])]+1`
-/

namespace A120068.P10133728377091870438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (3 * (∏ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A120068.P10133728377091870438

namespace A120068

/-- `eq[1, A054024(3*∏{e}[A000040(n+1)+1, #])]+1` -/
def P10133728377091870438.Spec : Prop :=
  ∀ n, (P10133728377091870438.a n : ℤ) = A120068 (n + 1)

end A120068

/-! ## A120068.P17885252756398512807

`A000720(A077067(n+1)-1)`
-/

namespace A120068.P17885252756398512807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A077067 (n + 1) - 1).toNat

end

end A120068.P17885252756398512807

namespace A120068

/-- `A000720(A077067(n+1)-1)` -/
def P17885252756398512807.Spec : Prop :=
  ∀ n, P17885252756398512807.a n = A120068 (n + 1)

theorem P17885252756398512807.correct : P17885252756398512807.Spec := by
  intro n
  simp only [A120068, Nat.add_sub_cancel, A120068.P17885252756398512807.a, A120068.P9891665714429493613.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A049097, A049097.P11962630923123470473.f1, A049097.P11962630923123470473.a, A077067, A077067.P10029377516240445440.a, A008966, A008966.P18444031257857153223.f1, A008966.P18444031257857153223.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A120068

/-! ## A120068.P12441416934908615775

`eq[1, A005361(A008864(n+1))]+1`
-/

namespace A120068.P12441416934908615775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A008864 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A120068.P12441416934908615775

namespace A120068

/-- `eq[1, A005361(A008864(n+1))]+1` -/
def P12441416934908615775.Spec : Prop :=
  ∀ n, (P12441416934908615775.a n : ℤ) = A120068 (n + 1)

end A120068

/-! ## A120068.P12106322861516434757

`A000720(p?[n*A008683(n+1)²])`
-/

namespace A120068.P12106322861516434757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008683 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A120068.P12106322861516434757

namespace A120068

/-- `A000720(p?[n*A008683(n+1)²])` -/
def P12106322861516434757.Spec : Prop :=
  ∀ n, P12106322861516434757.a n = A120068 (n + 1)

end A120068

/-! ## A120068.P16774774350911829090

`eq[1, A005361(A000040(n+1)+1)!]+1`
-/

namespace A120068.P16774774350911829090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A005361 (A000040 (n + 1) + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A120068.P16774774350911829090

namespace A120068

/-- `eq[1, A005361(A000040(n+1)+1)!]+1` -/
def P16774774350911829090.Spec : Prop :=
  ∀ n, (P16774774350911829090.a n : ℤ) = A120068 (n + 1)

end A120068

/-! ## A120068.P13522094699819376255

`record[A061395(A007947(n+2)+n)]`
-/

namespace A120068.P13522094699819376255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A007947 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120068.P13522094699819376255

namespace A120068

/-- `record[A061395(A007947(n+2)+n)]` -/
def P13522094699819376255.Spec : Prop :=
  ∀ n, P13522094699819376255.a n = A120068 (n + 1)

end A120068

/-! ## A120068.P1364444758764499791

`A058933(p?[n*A008683(n+1)²])`
-/

namespace A120068.P1364444758764499791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008683 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A120068.P1364444758764499791

namespace A120068

/-- `A058933(p?[n*A008683(n+1)²])` -/
def P1364444758764499791.Spec : Prop :=
  ∀ n, P1364444758764499791.a n = A120068 (n + 1)

end A120068

/-! ## A120068.P9418706556520439048

`eq[A000040(n+1), A326186(A000040(n+1)+1)]+1`
-/

namespace A120068.P9418706556520439048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326186 (A000040 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A120068.P9418706556520439048

namespace A120068

/-- `eq[A000040(n+1), A326186(A000040(n+1)+1)]+1` -/
def P9418706556520439048.Spec : Prop :=
  ∀ n, (P9418706556520439048.a n : ℤ) = A120068 (n + 1)

end A120068

/-! ## A120068.P12771209788147966736

`A065770(p?[n*A008683(n+1)²])`
-/

namespace A120068.P12771209788147966736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008683 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A120068.P12771209788147966736

namespace A120068

/-- `A065770(p?[n*A008683(n+1)²])` -/
def P12771209788147966736.Spec : Prop :=
  ∀ n, P12771209788147966736.a n = A120068 (n + 1)

end A120068

/-! ## A120068.P16590530120371708672

`A219109(A077067(n+1))`
-/

namespace A120068.P16590530120371708672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219109 (A077067 (n + 1)).toNat

end

end A120068.P16590530120371708672

namespace A120068

/-- `A219109(A077067(n+1))` -/
def P16590530120371708672.Spec : Prop :=
  ∀ n, P16590530120371708672.a n = A120068 (n + 1)

end A120068

/-! ## A120068.P395219520565171265

`A000720(p?[n*A000688(n+1)])`
-/

namespace A120068.P395219520565171265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A120068.P395219520565171265

namespace A120068

/-- `A000720(p?[n*A000688(n+1)])` -/
def P395219520565171265.Spec : Prop :=
  ∀ n, P395219520565171265.a n = A120068 (n + 1)

end A120068

/-! ## A120068.P18212862070627000342

`A003963(p?[n*A000688(n+1)])`
-/

namespace A120068.P18212862070627000342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A120068.P18212862070627000342

namespace A120068

/-- `A003963(p?[n*A000688(n+1)])` -/
def P18212862070627000342.Spec : Prop :=
  ∀ n, P18212862070627000342.a n = A120068 (n + 1)

end A120068

/-! ## A120068.P16404469987689056503

`A026233(p?[n*A000688(n+1)])`
-/

namespace A120068.P16404469987689056503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A120068.P16404469987689056503

namespace A120068

/-- `A026233(p?[n*A000688(n+1)])` -/
def P16404469987689056503.Spec : Prop :=
  ∀ n, P16404469987689056503.a n = A120068 (n + 1)

end A120068

/-! ## A120068.P9680534030372926797

`A049084(p?[n*A000688(n+1)])`
-/

namespace A120068.P9680534030372926797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A120068.P9680534030372926797

namespace A120068

/-- `A049084(p?[n*A000688(n+1)])` -/
def P9680534030372926797.Spec : Prop :=
  ∀ n, P9680534030372926797.a n = A120068 (n + 1)

end A120068

/-! ## A120068.P12897470436568433385

`A055396(p?[n*A000688(n+1)])`
-/

namespace A120068.P12897470436568433385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A120068.P12897470436568433385

namespace A120068

/-- `A055396(p?[n*A000688(n+1)])` -/
def P12897470436568433385.Spec : Prop :=
  ∀ n, P12897470436568433385.a n = A120068 (n + 1)

end A120068

/-! ## A120068.P11829137089009329002

`A056239(p?[n*A000688(n+1)])`
-/

namespace A120068.P11829137089009329002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A120068.P11829137089009329002

namespace A120068

/-- `A056239(p?[n*A000688(n+1)])` -/
def P11829137089009329002.Spec : Prop :=
  ∀ n, P11829137089009329002.a n = A120068 (n + 1)

end A120068

/-!
# A120069: Denominators of partial sums of a convergent series involving scaled Catalan numbers A000108.

The programs for A120069, the canonical program `A120069.P3204586283824240990` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120069 has offset 1).

The definition of A120069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120069.P15438732270706112164

`2^(∑[val(n+2, 2)]+n-1)`
-/

namespace A120069.P15438732270706112164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 2) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n : ℤ) - 1) : ℤ)

end

end A120069.P15438732270706112164

namespace A120069

/-- `2^(∑[val(n+2, 2)]+n-1)` -/
def P15438732270706112164.Spec : Prop :=
  ∀ n, P15438732270706112164.a n = (A120069 (n + 1) : ℚ)

end A120069

/-! ## A120069.P3204586283824240990

`record[-(xor(n, -n)*a(n-1))]` with `a(0)=1, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A120069

/-- `record[-(xor(n, -n)*a(n-1))]` -/
def P3204586283824240990.Spec : Prop :=
  ∀ n, P3204586283824240990.a n = A120069 (n + 1)

theorem P3204586283824240990.correct : P3204586283824240990.Spec := by
  intro n
  simp only [A120069, Nat.add_sub_cancel]

end A120069

/-! ## A120069.P14989930355815437063

`record[or(n, -n)*a(n-1)]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=1`
-/

namespace A120069.P14989930355815437063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 1] fun n f1 =>
  Int.lor (n : ℤ) (-(n : ℤ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120069.P14989930355815437063

namespace A120069

/-- `record[or(n, -n)*a(n-1)]` -/
def P14989930355815437063.Spec : Prop :=
  ∀ n, P14989930355815437063.a n = A120069 (n + 1)

end A120069

/-! ## A120069.P11562170473183349571

`(xor(n+1, n+2)+1)*a(n-1)` with `a(0)=1`
-/

namespace A120069.P11562170473183349571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.xor (n + 1) (n + 2) + 1) * a (n - 1)

end

end A120069.P11562170473183349571

namespace A120069

/-- `(xor(n+1, n+2)+1)*a(n-1)` -/
def P11562170473183349571.Spec : Prop :=
  ∀ n, (P11562170473183349571.a n : ℤ) = A120069 (n + 1)

end A120069

/-! ## A120069.P5461385849933125100

`record[and(n+2, -(n+2))*a(n-2)]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A120069.P5461385849933125100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  Int.land (n + 2 : ℤ) (-(n + 2 : ℤ)) * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120069.P5461385849933125100

namespace A120069

/-- `record[and(n+2, -(n+2))*a(n-2)]` -/
def P5461385849933125100.Spec : Prop :=
  ∀ n, P5461385849933125100.a n = A120069 (n + 1)

end A120069

/-! ## A120069.P1874396152286528363

`2*a(n-1)*gcd(n+2, 2*a(n-1))` with `a(0)=1`
-/

namespace A120069.P1874396152286528363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) * Nat.gcd (n + 2) (2 * a (n - 1))

end

end A120069.P1874396152286528363

namespace A120069

/-- `2*a(n-1)*gcd(n+2, 2*a(n-1))` -/
def P1874396152286528363.Spec : Prop :=
  ∀ n, (P1874396152286528363.a n : ℤ) = A120069 (n + 1)

end A120069

/-! ## A120069.P18345797879518296346

`a(n-1)+lcm(xor(n+1, n+2), a(n-1))` with `a(0)=1`
-/

namespace A120069.P18345797879518296346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.lcm (Nat.xor (n + 1) (n + 2)) (a (n - 1))

end

end A120069.P18345797879518296346

namespace A120069

/-- `a(n-1)+lcm(xor(n+1, n+2), a(n-1))` -/
def P18345797879518296346.Spec : Prop :=
  ∀ n, (P18345797879518296346.a n : ℤ) = A120069 (n + 1)

end A120069

/-! ## A120069.P12851222925394275747

`2^(A283208(n+1)-2)`
-/

namespace A120069.P12851222925394275747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A283208 (n + 1) - 2 : ℤ)

end

end A120069.P12851222925394275747

namespace A120069

/-- `2^(A283208(n+1)-2)` -/
def P12851222925394275747.Spec : Prop :=
  ∀ n, P12851222925394275747.a n = (A120069 (n + 1) : ℚ)

end A120069

/-! ## A120069.P3218493487183058954

`2^(A005187(n+2)-3)`
-/

namespace A120069.P3218493487183058954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A005187 (n + 2) - 3 : ℤ)

end

end A120069.P3218493487183058954

namespace A120069

/-- `2^(A005187(n+2)-3)` -/
def P3218493487183058954.Spec : Prop :=
  ∀ n, P3218493487183058954.a n = (A120069 (n + 1) : ℚ)

end A120069

/-! ## A120069.P16967455598762391998

`2^(A011371(n+2)+n-1)`
-/

namespace A120069.P16967455598762391998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A011371 (n + 2) + ((n : ℤ) - 1) : ℤ)

end

end A120069.P16967455598762391998

namespace A120069

/-- `2^(A011371(n+2)+n-1)` -/
def P16967455598762391998.Spec : Prop :=
  ∀ n, P16967455598762391998.a n = (A120069 (n + 1) : ℚ)

end A120069

/-! ## A120069.P9553654522035574407

`2^(A113474(n+2)+n-2)`
-/

namespace A120069.P9553654522035574407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A113474 (n + 2) + ((n : ℤ) - 2) : ℤ)

end

end A120069.P9553654522035574407

namespace A120069

/-- `2^(A113474(n+2)+n-2)` -/
def P9553654522035574407.Spec : Prop :=
  ∀ n, P9553654522035574407.a n = (A120069 (n + 1) : ℚ)

end A120069

/-! ## A120069.P7466511771719839529

`2^(n-1)*A060818(n+2)`
-/

namespace A120069.P7466511771719839529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A060818 (n + 2) : ℚ)

end

end A120069.P7466511771719839529

namespace A120069

/-- `2^(n-1)*A060818(n+2)` -/
def P7466511771719839529.Spec : Prop :=
  ∀ n, P7466511771719839529.a n = (A120069 (n + 1) : ℚ)

end A120069

/-! ## A120069.P17873342309784241247

`a(n-1)*A171977(n+2)` with `a(0)=1`
-/

namespace A120069.P17873342309784241247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A171977 (n + 2)

end

end A120069.P17873342309784241247

namespace A120069

/-- `a(n-1)*A171977(n+2)` -/
def P17873342309784241247.Spec : Prop :=
  ∀ n, P17873342309784241247.a n = A120069 (n + 1)

end A120069

/-! ## A120069.P15863064776466880115

`2^(2*n-val(A000108(n+1), 2))`
-/

namespace A120069.P15863064776466880115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 * n : ℤ) - (SequenceMachineLib.valuation (A000108 (n + 1)).toNat 2 : ℤ) : ℤ)

end

end A120069.P15863064776466880115

namespace A120069

/-- `2^(2*n-val(A000108(n+1), 2))` -/
def P15863064776466880115.Spec : Prop :=
  ∀ n, P15863064776466880115.a n = (A120069 (n + 1) : ℚ)

end A120069

/-! ## A120069.P10537476026347757150

`A034008(A283208(n+1))`
-/

namespace A120069.P10537476026347757150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A283208 (n + 1)).toNat

end

end A120069.P10537476026347757150

namespace A120069

/-- `A034008(A283208(n+1))` -/
def P10537476026347757150.Spec : Prop :=
  ∀ n, P10537476026347757150.a n = A120069 (n + 1)

end A120069

/-! ## A120069.P3054675388891478113

`∏[A006519(A004273(n)+5)]`
-/

namespace A120069.P3054675388891478113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A004273 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A120069.P3054675388891478113

namespace A120069

/-- `∏[A006519(A004273(n)+5)]` -/
def P3054675388891478113.Spec : Prop :=
  ∀ n, P3054675388891478113.a n = A120069 (n + 1)

end A120069

/-! ## A120069.P5668354599480580734

`A000079(A283208(n+1)-2)`
-/

namespace A120069.P5668354599480580734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A283208 (n + 1) - 2).toNat

end

end A120069.P5668354599480580734

namespace A120069

/-- `A000079(A283208(n+1)-2)` -/
def P5668354599480580734.Spec : Prop :=
  ∀ n, P5668354599480580734.a n = A120069 (n + 1)

end A120069

/-! ## A120069.P17138472070077495014

`A011782(A005187(n+2)-2)`
-/

namespace A120069.P17138472070077495014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A005187 (n + 2) - 2).toNat

end

end A120069.P17138472070077495014

namespace A120069

/-- `A011782(A005187(n+2)-2)` -/
def P17138472070077495014.Spec : Prop :=
  ∀ n, P17138472070077495014.a n = A120069 (n + 1)

end A120069

/-! ## A120069.P1736377343267391970

`A131577(∑[∑[A094267(n)]]+n)`
-/

namespace A120069.P1736377343267391970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A120069.P1736377343267391970

namespace A120069

/-- `A131577(∑[∑[A094267(n)]]+n)` -/
def P1736377343267391970.Spec : Prop :=
  ∀ n, P1736377343267391970.a n = A120069 (n + 1)

end A120069

/-! ## A120069.P2337524756399322523

`A011782(∑[A001511(n+2)]-1)`
-/

namespace A120069.P2337524756399322523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A120069.P2337524756399322523

namespace A120069

/-- `A011782(∑[A001511(n+2)]-1)` -/
def P2337524756399322523.Spec : Prop :=
  ∀ n, P2337524756399322523.a n = A120069 (n + 1)

end A120069

/-!
# A120070: Triangle of numbers used to compute the frequencies of the spectral lines of the hydrogen atom.

The programs for A120070, the canonical program `A120070.P8418683465396432844` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120070 has offset 2).

The definition of A120070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120070.P592710876520727249

`T(n-1,k)+2*row(n)+3` with `a(0)=3`
-/

namespace A120070.P592710876520727249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  SequenceMachineLib.triUp a n + 2 * SequenceMachineLib.triRow n + 3

end

end A120070.P592710876520727249

namespace A120070

/-- `T(n-1,k)+2*row(n)+3` -/
def P592710876520727249.Spec : Prop :=
  ∀ n, (P592710876520727249.a n : ℤ) = A120070 (n + 2)

end A120070

/-! ## A120070.P13864521956411326814

`(row(n)+2)²-(col(n)+1)²`
-/

namespace A120070.P13864521956411326814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 2) ^ 2 : ℤ) - ((SequenceMachineLib.triCol n + 1) ^ 2 : ℤ)

end

end A120070.P13864521956411326814

namespace A120070

/-- `(row(n)+2)²-(col(n)+1)²` -/
def P13864521956411326814.Spec : Prop :=
  ∀ n, P13864521956411326814.a n = A120070 (n + 2)

theorem P13864521956411326814.correct : P13864521956411326814.Spec := by
  intro n
  simp only [A120070, Nat.add_sub_cancel, A120070.P13864521956411326814.a, A120070.P8418683465396432844.a, A003991, A003991.P6365127437582401781.a, A063929, A063929.P16215468638992499542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120070

/-! ## A120070.P4299808171368972615

`(row(n)-col(n)+1)*(2*(col(n)+1)+row(n)-col(n)+1)`
-/

namespace A120070.P4299808171368972615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * ((2 * (SequenceMachineLib.triCol n + 1) : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1))

end

end A120070.P4299808171368972615

namespace A120070

/-- `(row(n)-col(n)+1)*(2*(col(n)+1)+row(n)-col(n)+1)` -/
def P4299808171368972615.Spec : Prop :=
  ∀ n, P4299808171368972615.a n = A120070 (n + 2)

theorem P4299808171368972615.correct : P4299808171368972615.Spec := by
  intro n
  simp only [A120070, Nat.add_sub_cancel, A120070.P4299808171368972615.a, A120070.P8418683465396432844.a, A003991, A003991.P6365127437582401781.a, A063929, A063929.P16215468638992499542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120070

/-! ## A120070.P14973819871381631991

`sqrt(A165447(n+2))`
-/

namespace A120070.P14973819871381631991
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165447 (n + 2) : ℝ)

end

end A120070.P14973819871381631991

namespace A120070

/-- `sqrt(A165447(n+2))` -/
def P14973819871381631991.Spec : Prop :=
  ∀ n, P14973819871381631991.a n = (A120070 (n + 2) : ℝ)

end A120070

/-! ## A120070.P12750275492010042026

`∑[A133128(n)]+1`
-/

namespace A120070.P12750275492010042026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A120070.P12750275492010042026

namespace A120070

/-- `∑[A133128(n)]+1` -/
def P12750275492010042026.Spec : Prop :=
  ∀ n, P12750275492010042026.a n = A120070 (n + 2)

end A120070

/-! ## A120070.P13045677142039621017

`A141620(n-1)+a(n-1)` with `a(0)=3`
-/

namespace A120070.P13045677142039621017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A141620 (n - 1) + a (n - 1)

end

end A120070.P13045677142039621017

namespace A120070

/-- `A141620(n-1)+a(n-1)` -/
def P13045677142039621017.Spec : Prop :=
  ∀ n, P13045677142039621017.a n = A120070 (n + 2)

end A120070

/-! ## A120070.P10715102043217526541

`(n-comp[∑[n]])²-A133819(n+1)`
-/

namespace A120070.P10715102043217526541
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - A133819 (n + 1)

end

end A120070.P10715102043217526541

namespace A120070

/-- `(n-comp[∑[n]])²-A133819(n+1)` -/
def P10715102043217526541.Spec : Prop :=
  ∀ n, P10715102043217526541.a n = A120070 (n + 2)

end A120070

/-! ## A120070.P9088834289209000135

`(n-comp[∑[n]])²-A002260(n+1)²`
-/

namespace A120070.P9088834289209000135
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - A002260 (n + 1) ^ 2

end

end A120070.P9088834289209000135

namespace A120070

/-- `(n-comp[∑[n]])²-A002260(n+1)²` -/
def P9088834289209000135.Spec : Prop :=
  ∀ n, P9088834289209000135.a n = A120070 (n + 2)

end A120070

/-! ## A120070.P9763921792431529039

`A193974(n)+A049777(n+1)`
-/

namespace A120070.P9763921792431529039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193974 n + A049777 (n + 1)

end

end A120070.P9763921792431529039

namespace A120070

/-- `A193974(n)+A049777(n+1)` -/
def P9763921792431529039.Spec : Prop :=
  ∀ n, P9763921792431529039.a n = A120070 (n + 2)

theorem P9763921792431529039.correct : P9763921792431529039.Spec := by
  intro n
  simp only [A120070, Nat.add_sub_cancel, A120070.P9763921792431529039.a, A120070.P8418683465396432844.a, A003991, A003991.P6365127437582401781.a, A049777, A049777.P8069278756495172327.a, A063929, A063929.P16215468638992499542.a, A193974, A193974.P14269232743332111222.a, A131783, A131783.P16711198060458241591.a, A025581, A025581.P16112744757063613497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A120070

/-! ## A120070.P8418683465396432844

`A063929(n+1)+A003991(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A120070

/-- `A063929(n+1)+A003991(n+1)` -/
def P8418683465396432844.Spec : Prop :=
  ∀ n, P8418683465396432844.a n = A120070 (n + 2)

theorem P8418683465396432844.correct : P8418683465396432844.Spec := by
  intro n
  simp only [A120070, Nat.add_sub_cancel]

end A120070

/-! ## A120070.P16714491770933462973

`A141429(n+1)+A095833(n+1)`
-/

namespace A120070.P16714491770933462973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141429 (n + 1) + A095833 (n + 1)

end

end A120070.P16714491770933462973

namespace A120070

/-- `A141429(n+1)+A095833(n+1)` -/
def P16714491770933462973.Spec : Prop :=
  ∀ n, P16714491770933462973.a n = A120070 (n + 2)

theorem P16714491770933462973.correct : P16714491770933462973.Spec := by
  intro n
  simp only [A120070, Nat.add_sub_cancel, A120070.P16714491770933462973.a, A120070.P8418683465396432844.a, A003991, A003991.P6365127437582401781.a, A063929, A063929.P16215468638992499542.a, A095833, A095833.P14663800684524425914.a, A141429, A141429.P3778980955938111992.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120070

/-! ## A120070.P13030510065504432511

`A212012(n+1)+A094728(n+1)`
-/

namespace A120070.P13030510065504432511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212012 (n + 1) + A094728 (n + 1)

end

end A120070.P13030510065504432511

namespace A120070

/-- `A212012(n+1)+A094728(n+1)` -/
def P13030510065504432511.Spec : Prop :=
  ∀ n, P13030510065504432511.a n = A120070 (n + 2)

end A120070

/-! ## A120070.P10448716443503546965

`A205016(n+1)-A004736(n+1)`
-/

namespace A120070.P10448716443503546965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205016 (n + 1) - A004736 (n + 1)

end

end A120070.P10448716443503546965

namespace A120070

/-- `A205016(n+1)-A004736(n+1)` -/
def P10448716443503546965.Spec : Prop :=
  ∀ n, P10448716443503546965.a n = A120070 (n + 2)

end A120070

/-! ## A120070.P18418213177985971304

`A205136(n+1)-A049777(n+1)`
-/

namespace A120070.P18418213177985971304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205136 (n + 1) - A049777 (n + 1)

end

end A120070.P18418213177985971304

namespace A120070

/-- `A205136(n+1)-A049777(n+1)` -/
def P18418213177985971304.Spec : Prop :=
  ∀ n, P18418213177985971304.a n = A120070 (n + 2)

end A120070

/-! ## A120070.P17350583692003818385

`A001283(n+2)-A063930(n+1)`
-/

namespace A120070.P17350583692003818385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001283 (n + 2) - A063930 (n + 1)

end

end A120070.P17350583692003818385

namespace A120070

/-- `A001283(n+2)-A063930(n+1)` -/
def P17350583692003818385.Spec : Prop :=
  ∀ n, P17350583692003818385.a n = A120070 (n + 2)

end A120070

/-! ## A120070.P5466730195271859142

`2*A193974(n)-A004736(n+1)`
-/

namespace A120070.P5466730195271859142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193974 n - A004736 (n + 1)

end

end A120070.P5466730195271859142

namespace A120070

/-- `2*A193974(n)-A004736(n+1)` -/
def P5466730195271859142.Spec : Prop :=
  ∀ n, P5466730195271859142.a n = A120070 (n + 2)

end A120070

/-! ## A120070.P15207651725099117854

`A140978(n+1)-sqrt(A133821(n+1))`
-/

namespace A120070.P15207651725099117854
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A140978 (n + 1) : ℝ) - Real.sqrt (A133821 (n + 1) : ℝ)

end

end A120070.P15207651725099117854

namespace A120070

/-- `A140978(n+1)-sqrt(A133821(n+1))` -/
def P15207651725099117854.Spec : Prop :=
  ∀ n, P15207651725099117854.a n = (A120070 (n + 2) : ℝ)

end A120070

/-! ## A120070.P17588188868535929790

`(A108872(n+1)+1)*A004736(n+1)`
-/

namespace A120070.P17588188868535929790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108872 (n + 1) + 1) * A004736 (n + 1)

end

end A120070.P17588188868535929790

namespace A120070

/-- `(A108872(n+1)+1)*A004736(n+1)` -/
def P17588188868535929790.Spec : Prop :=
  ∀ n, P17588188868535929790.a n = A120070 (n + 2)

end A120070

/-! ## A120070.P1746904348665488443

`A004736(n+1)+2*A049777(n+1)`
-/

namespace A120070.P1746904348665488443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + 2 * A049777 (n + 1)

end

end A120070.P1746904348665488443

namespace A120070

/-- `A004736(n+1)+2*A049777(n+1)` -/
def P1746904348665488443.Spec : Prop :=
  ∀ n, P1746904348665488443.a n = A120070 (n + 2)

end A120070

/-! ## A120070.P16399614225190528683

`A055461(n+1)+2*A003991(n+1)`
-/

namespace A120070.P16399614225190528683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (n + 1) + 2 * A003991 (n + 1)

end

end A120070.P16399614225190528683

namespace A120070

/-- `A055461(n+1)+2*A003991(n+1)` -/
def P16399614225190528683.Spec : Prop :=
  ∀ n, P16399614225190528683.a n = A120070 (n + 2)

theorem P16399614225190528683.correct : P16399614225190528683.Spec := by
  intro n
  simp only [A120070, Nat.add_sub_cancel, A120070.P16399614225190528683.a, A120070.P8418683465396432844.a, A003991, A003991.P6365127437582401781.a, A055461, A055461.P13333228572909301680.a, A063929, A063929.P16215468638992499542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120070

/-!
# A120071: a(n) = n*(n+20).

The programs for A120071, the canonical program `A120071.P10160882043029890963` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120071 has offset 0).

The definition of A120071 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+20)` (program `A120071.P10160882043029890963`, by `A120071.P10160882043029890963.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120071.P10160882043029890963

`n*(n+20)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A120071

/-- `n*(n+20)` -/
def P10160882043029890963.Spec : Prop :=
  ∀ n, (P10160882043029890963.a n : ℤ) = A120071 n

theorem P10160882043029890963.correct : P10160882043029890963.Spec := by
  intro n
  simp only [A120071]

end A120071

/-!
# A120072: Numerator triangle for hydrogen spectrum rationals.

The programs for A120072, the canonical program `A120072.P10510853006635335626` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120072 has offset 2).

The definition of A120072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120072.P10510853006635335626

`A120070(n+2)/gcd(A120070(n+2), A133821(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A120072

/-- `A120070(n+2)/gcd(A120070(n+2), A133821(n+1))` -/
def P10510853006635335626.Spec : Prop :=
  ∀ n, P10510853006635335626.a n = (A120072 (n + 2) : ℚ)

end A120072

/-! ## A120072.P9609497242373365434

`A172370(∑[char[∑[n]]]²+1-n)`
-/

namespace A120072.P9609497242373365434
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172370 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1 - n)

end

end A120072.P9609497242373365434

namespace A120072

/-- `A172370(∑[char[∑[n]]]²+1-n)` -/
def P9609497242373365434.Spec : Prop :=
  ∀ n, P9609497242373365434.a n = A120072 (n + 2)

end A120072

/-! ## A120072.P3085353894881375502

`abs(A172157(A080036(n+1)))`
-/

namespace A120072.P3085353894881375502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A172157 (A080036 (n + 1)).toNat|

end

end A120072.P3085353894881375502

namespace A120072

/-- `abs(A172157(A080036(n+1)))` -/
def P3085353894881375502.Spec : Prop :=
  ∀ n, P3085353894881375502.a n = A120072 (n + 2)

end A120072

/-! ## A120072.P10133712305624154422

`abs(A172157(A133196(n+1)+n))`
-/

namespace A120072.P10133712305624154422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A172157 (A133196 (n + 1) + (n : ℤ)).toNat|

end

end A120072.P10133712305624154422

namespace A120072

/-- `abs(A172157(A133196(n+1)+n))` -/
def P10133712305624154422.Spec : Prop :=
  ∀ n, P10133712305624154422.a n = A120072 (n + 2)

end A120072

/-! ## A120072.P12372394773422841050

`A061035(A038722(comp[∑[n]]))`
-/

namespace A120072.P12372394773422841050
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (A038722 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A120072.P12372394773422841050

namespace A120072

/-- `A061035(A038722(comp[∑[n]]))` -/
def P12372394773422841050.Spec : Prop :=
  ∀ n, P12372394773422841050.a n = A120072 (n + 2)

end A120072

/-! ## A120072.P18369298419209868288

`A061035(A099375(n)+2+n)`
-/

namespace A120072.P18369298419209868288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (A099375 n + 2 + (n : ℤ)).toNat

end

end A120072.P18369298419209868288

namespace A120072

/-- `A061035(A099375(n)+2+n)` -/
def P18369298419209868288.Spec : Prop :=
  ∀ n, P18369298419209868288.a n = A120072 (n + 2)

end A120072

/-! ## A120072.P1586396137614157949

`A175779((n-comp[∑[n]])²-n)`
-/

namespace A120072.P1586396137614157949
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175779 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - (n : ℤ)).toNat

end

end A120072.P1586396137614157949

namespace A120072

/-- `A175779((n-comp[∑[n]])²-n)` -/
def P1586396137614157949.Spec : Prop :=
  ∀ n, P1586396137614157949.a n = A120072 (n + 2)

end A120072

/-! ## A120072.P14209998503938079277

`A120070(n+2)/A164561(n+2)`
-/

namespace A120072.P14209998503938079277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120070 (n + 2) : ℚ) / (A164561 (n + 2) : ℚ)

end

end A120072.P14209998503938079277

namespace A120072

/-- `A120070(n+2)/A164561(n+2)` -/
def P14209998503938079277.Spec : Prop :=
  ∀ n, P14209998503938079277.a n = (A120072 (n + 2) : ℚ)

end A120072

/-!
# A120073: Denominator triangle for hydrogen spectrum rationals.

The programs for A120073, there is no canonical definition to state claims against.
-/

/-! ## A120073.P10428357728372809222

`A174413(∑[char[∑[n]]]²-n+1)`
-/

namespace A120073.P10428357728372809222
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174413 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) + 1).toNat

end

end A120073.P10428357728372809222

/-! ## A120073.P762168112179099304

`A061036(A099375(n)+2+n)`
-/

namespace A120073.P762168112179099304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061036 (A099375 n + 2 + (n : ℤ)).toNat

end

end A120073.P762168112179099304

/-! ## A120073.P7348464301606169610

`A061036(A061579(comp[∑[n-1]])+1)`
-/

namespace A120073.P7348464301606169610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061036 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1).toNat

end

end A120073.P7348464301606169610

/-! ## A120073.P16176378298581256264

`A174381(comp[∑[n]])`
-/

namespace A120073.P16176378298581256264
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174381 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A120073.P16176378298581256264

/-! ## A120073.P12469038980033294455

`filter[A174381(n), A043545(#)]`
-/

namespace A120073.P12469038980033294455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174381 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A120073.P12469038980033294455

/-!
# A120076: Numerators of row sums of rational triangle A120072/A120073.

The programs for A120076, there is no canonical definition to state claims against.
-/

/-! ## A120076.P17914396423462407143

`A119938(n+2)/A156724(A309861(n))`
-/

namespace A120076.P17914396423462407143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119938 (n + 2) : ℚ) / (A156724 (A309861 n).toNat : ℚ)

end

end A120076.P17914396423462407143

/-! ## A120076.P2340301587149992208

`A119938(n+2)%A119943(2*(n+4))`
-/

namespace A120076.P2340301587149992208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119938 (n + 2)) (A119943 (2 * (n + 4)))

end

end A120076.P2340301587149992208

/-! ## A120076.P2621640079250196285

`or(col(A119479(3*n+1)), A119938(n+2))`
-/

namespace A120076.P2621640079250196285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.triCol (A119479 (3 * n + 1)).toNat : ℤ) (A119938 (n + 2))

end

end A120076.P2621640079250196285

/-! ## A120076.P15594478041128524063

`A119938(n+2)+A023531(∑[(n+2)*n!]-n!)`
-/

namespace A120076.P15594478041128524063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119938 (n + 2) + A023531 (∑ j ∈ Finset.range (n + 1), f1 j - Nat.factorial n)

end

end A120076.P15594478041128524063

/-!
# A120077: Denominators of row sums of rational triangle A120072/A120073.

The programs for A120077, there is no canonical definition to state claims against.
-/

/-! ## A120077.P10696715554582934877

`A007407(A242474(n+2))`
-/

namespace A120077.P10696715554582934877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007407 (A242474 (n + 2)).toNat

end

end A120077.P10696715554582934877

/-! ## A120077.P11012457234605786545

`A007407(A229557(A229557(n+1))+n+1)`
-/

namespace A120077.P11012457234605786545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007407 (A229557 (A229557 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A120077.P11012457234605786545

/-! ## A120077.P17104169980197970642

`A007407(A000005(2^n)+1)`
-/

namespace A120077.P17104169980197970642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007407 (A000005 (2 ^ n) + 1).toNat

end

end A120077.P17104169980197970642

/-! ## A120077.P13267355043321140247

`A007407(A225816(A225816(n))+n+1)`
-/

namespace A120077.P13267355043321140247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007407 (A225816 (A225816 n).toNat + (n + 1 : ℤ)).toNat

end

end A120077.P13267355043321140247

/-! ## A120077.P2310117297466570771

`ratio[-∏[A007407(n+1)]]`
-/

namespace A120077.P2310117297466570771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007407 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A120077.P2310117297466570771

/-!
# A120079: Unsigned row sums of triangle A120078.

The programs for A120079, the canonical program `A120079.P4461166114329905866` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120079 has offset 1).

The definition of A120079 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120079.P4461166114329905866

`(2-1/(n+1)²)*A051418(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A120079

/-- `(2-1/(n+1)²)*A051418(n+1)` -/
def P4461166114329905866.Spec : Prop :=
  ∀ n, P4461166114329905866.a n = (A120079 (n + 1) : ℚ)

end A120079

/-! ## A120079.P7791827537334195890

`A056220(n+1)*A051418(n+1)/A000290(n+1)`
-/

namespace A120079.P7791827537334195890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056220 (n + 1) * A051418 (n + 1) : ℚ) / (A000290 (n + 1) : ℚ)

end

end A120079.P7791827537334195890

namespace A120079

/-- `A056220(n+1)*A051418(n+1)/A000290(n+1)` -/
def P7791827537334195890.Spec : Prop :=
  ∀ n, P7791827537334195890.a n = (A120079 (n + 1) : ℚ)

end A120079

/-! ## A120079.P9094465918915875325

`∑{#}[n, abs(A120078(C(n+1, 2)+#+1))]`
-/

namespace A120079.P9094465918915875325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), |A120078 (Nat.choose (n + 1) 2 + (k + 1))|

end

end A120079.P9094465918915875325

namespace A120079

/-- `∑{#}[n, abs(A120078(C(n+1, 2)+#+1))]` -/
def P9094465918915875325.Spec : Prop :=
  ∀ n, P9094465918915875325.a n = A120079 (n + 1)

end A120079

/-! ## A120079.P10250336929621468913

`A002944(n+1)²*A056220(n+1)`
-/

namespace A120079.P10250336929621468913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002944 (n + 1) ^ 2 * A056220 (n + 1)

end

end A120079.P10250336929621468913

namespace A120079

/-- `A002944(n+1)²*A056220(n+1)` -/
def P10250336929621468913.Spec : Prop :=
  ∀ n, P10250336929621468913.a n = A120079 (n + 1)

end A120079

/-! ## A120079.P8629694280994107090

`A056220(n+1)*A051418(n+1)/(n+1)²`
-/

namespace A120079.P8629694280994107090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056220 (n + 1) * A051418 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A120079.P8629694280994107090

namespace A120079

/-- `A056220(n+1)*A051418(n+1)/(n+1)²` -/
def P8629694280994107090.Spec : Prop :=
  ∀ n, P8629694280994107090.a n = (A120079 (n + 1) : ℚ)

end A120079

/-! ## A120079.P5550202160251264414

`2*A051418(n+1)-A027451(n+1)`
-/

namespace A120079.P5550202160251264414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051418 (n + 1) - A027451 (n + 1)

end

end A120079.P5550202160251264414

namespace A120079

/-- `2*A051418(n+1)-A027451(n+1)` -/
def P5550202160251264414.Spec : Prop :=
  ∀ n, P5550202160251264414.a n = A120079 (n + 1)

end A120079

/-! ## A120079.P13838675065035074872

`A027451(n+1)*A074148(2*n+1)`
-/

namespace A120079.P13838675065035074872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027451 (n + 1) * A074148 (2 * n + 1)

end

end A120079.P13838675065035074872

namespace A120079

/-- `A027451(n+1)*A074148(2*n+1)` -/
def P13838675065035074872.Spec : Prop :=
  ∀ n, P13838675065035074872.a n = A120079 (n + 1)

end A120079

/-!
# A120080: Numerators of expansion of original Debye function D(3,x).

The programs for A120080, there is no canonical definition to state claims against.
-/

/-! ## A120080.P16049090738470731920

`A120086(n)-char[1]`
-/

namespace A120080.P16049090738470731920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120086 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A120080.P16049090738470731920

/-! ## A120080.P8374431259782980519

`A159075(n)+A120086(n)`
-/

namespace A120080.P8374431259782980519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A120086 n

end

end A120080.P8374431259782980519

/-! ## A120080.P6682327274419502017

`A010684(n)*A120082(n)`
-/

namespace A120080.P6682327274419502017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A120082 n

end

end A120080.P6682327274419502017

/-! ## A120080.P6130062028258684916

`A053381(n)*A120082(n)`
-/

namespace A120080.P6130062028258684916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053381 n * A120082 n

end

end A120080.P6130062028258684916

/-! ## A120080.P9740920281838913290

`A056753(n)*A120082(n)`
-/

namespace A120080.P9740920281838913290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056753 n * A120082 n

end

end A120080.P9740920281838913290

/-! ## A120080.P2753834242492882941

`A084642(n)*A120082(n)`
-/

namespace A120080.P2753834242492882941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084642 n * A120082 n

end

end A120080.P2753834242492882941

/-! ## A120080.P16432650292226928294

`A114567(n)*A120082(n)`
-/

namespace A120080.P16432650292226928294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114567 n * A120082 n

end

end A120080.P16432650292226928294

/-! ## A120080.P15536486024162496779

`A120082(n)*A221195(n)`
-/

namespace A120080.P15536486024162496779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120082 n * A221195 n

end

end A120080.P15536486024162496779

/-! ## A120080.P13479539463857148922

`A120082(n)*A221365(n)`
-/

namespace A120080.P13479539463857148922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120082 n * A221365 n

end

end A120080.P13479539463857148922

/-! ## A120080.P1362103178120506839

`A120082(n)*A287197(n)`
-/

namespace A120080.P1362103178120506839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120082 n * A287197 n

end

end A120080.P1362103178120506839

/-! ## A120080.P2228834671040120732

`A120082(n)*A375961(n)`
-/

namespace A120080.P2228834671040120732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120082 n * A375961 n

end

end A120080.P2228834671040120732

/-! ## A120080.P8187557528496000

`and(A120082(n), A260196(n))`
-/

namespace A120080.P8187557528496000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A120082 n) (A260196 n)

end

end A120080.P8187557528496000

/-! ## A120080.P14222178650390894534

`A001051(n+1)*A120082(n)`
-/

namespace A120080.P14222178650390894534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001051 (n + 1) * A120082 n

end

end A120080.P14222178650390894534

/-! ## A120080.P16745189555721308272

`A037227(n+1)*A120082(n)`
-/

namespace A120080.P16745189555721308272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037227 (n + 1) * A120082 n

end

end A120080.P16745189555721308272

/-! ## A120080.P15582399412795171866

`A038712(n+1)*A120082(n)`
-/

namespace A120080.P15582399412795171866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n + 1) * A120082 n

end

end A120080.P15582399412795171866

/-! ## A120080.P13377645848984577811

`A073575(n+1)*A120082(n)`
-/

namespace A120080.P13377645848984577811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073575 (n + 1) * A120082 n

end

end A120080.P13377645848984577811

/-! ## A120080.P10704439432203155211

`A090585(n+1)*A120082(n)`
-/

namespace A120080.P10704439432203155211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090585 (n + 1) * A120082 n

end

end A120080.P10704439432203155211

/-! ## A120080.P10627876028356489927

`A120082(n)+2*A159075(n)`
-/

namespace A120080.P10627876028356489927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120082 n + 2 * A159075 n

end

end A120080.P10627876028356489927

/-! ## A120080.P12562160865422527258

`(2-A033999(n))*A120082(n)`
-/

namespace A120080.P12562160865422527258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A033999 n) * A120082 n

end

end A120080.P12562160865422527258

/-! ## A120080.P14220636476967504485

`A120082(n)-2*A063524(n)`
-/

namespace A120080.P14220636476967504485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120082 n - 2 * A063524 n

end

end A120080.P14220636476967504485

/-!
# A120081: Denominators of expansion for original Debye function (n=3).

The programs for A120081, there is no canonical definition to state claims against.
-/

/-! ## A120081.P2583408349808635213

`A103407(comp[∑[n]]+(n+2)*2^(n-1)-2*n)`
-/

namespace A120081.P2583408349808635213
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103407 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) + ((n + 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (2 * n : ℚ)))).toNat

end

end A120081.P2583408349808635213

/-!
# A120082: Numerators of expansion for Debye function for n=1: D(1,x).

The programs for A120082, there is no canonical definition to state claims against.
-/

/-! ## A120082.P559235326507041221

`A120086(n)+char[1]`
-/

namespace A120082.P559235326507041221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120086 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A120082.P559235326507041221

/-! ## A120082.P10282383519014204811

`char[1]+A120080(n)+char[1]`
-/

namespace A120082.P10282383519014204811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A120080 n + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

end

end A120082.P10282383519014204811

/-! ## A120082.P16601469514567594921

`A178333(n)+A120086(n)`
-/

namespace A120082.P16601469514567594921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 n + A120086 n

end

end A120082.P16601469514567594921

/-! ## A120082.P656971912157087021

`A120086(n)/A000034(n)`
-/

namespace A120082.P656971912157087021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120086 n : ℚ) / (A000034 n : ℚ)

end

end A120082.P656971912157087021

/-! ## A120082.P15488608213038247735

`A120080(n)/A010684(n)`
-/

namespace A120082.P15488608213038247735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120080 n : ℚ) / (A010684 n : ℚ)

end

end A120082.P15488608213038247735

/-! ## A120082.P18403804074774971463

`A120086(n)/A028920(n)`
-/

namespace A120082.P18403804074774971463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120086 n : ℚ) / (A028920 n : ℚ)

end

end A120082.P18403804074774971463

/-! ## A120082.P5676418109512066104

`A120080(n)/A053381(n)`
-/

namespace A120082.P5676418109512066104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120080 n : ℚ) / (A053381 n : ℚ)

end

end A120082.P5676418109512066104

/-! ## A120082.P8220656229511159759

`A120080(n)/A056753(n)`
-/

namespace A120082.P8220656229511159759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120080 n : ℚ) / (A056753 n : ℚ)

end

end A120082.P8220656229511159759

/-! ## A120082.P11794623291962348600

`A120086(n)/A062557(n)`
-/

namespace A120082.P11794623291962348600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120086 n : ℚ) / (A062557 n : ℚ)

end

end A120082.P11794623291962348600

/-! ## A120082.P4388422701761199054

`A120086(n)/A071222(n)`
-/

namespace A120082.P4388422701761199054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120086 n : ℚ) / (A071222 n : ℚ)

end

end A120082.P4388422701761199054

/-! ## A120082.P3847020923216293547

`A120086(n)/A072345(n)`
-/

namespace A120082.P3847020923216293547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120086 n : ℚ) / (A072345 n : ℚ)

end

end A120082.P3847020923216293547

/-! ## A120082.P1569431933545997560

`A120080(n)/A084642(n)`
-/

namespace A120082.P1569431933545997560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120080 n : ℚ) / (A084642 n : ℚ)

end

end A120082.P1569431933545997560

/-! ## A120082.P799288686330779941

`A120080(n)/A114567(n)`
-/

namespace A120082.P799288686330779941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120080 n : ℚ) / (A114567 n : ℚ)

end

end A120082.P799288686330779941

/-! ## A120082.P17055942751256926314

`A120086(n)/A129110(n)`
-/

namespace A120082.P17055942751256926314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120086 n : ℚ) / (A129110 n : ℚ)

end

end A120082.P17055942751256926314

/-! ## A120082.P4851779968258537624

`A120086(n)/A133186(n)`
-/

namespace A120082.P4851779968258537624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120086 n : ℚ) / (A133186 n : ℚ)

end

end A120082.P4851779968258537624

/-! ## A120082.P3733827022860779098

`A120080(n)/A221195(n)`
-/

namespace A120082.P3733827022860779098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120080 n : ℚ) / (A221195 n : ℚ)

end

end A120082.P3733827022860779098

/-! ## A120082.P18166497251584407319

`A120086(n)/A221194(n)`
-/

namespace A120082.P18166497251584407319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120086 n : ℚ) / (A221194 n : ℚ)

end

end A120082.P18166497251584407319

/-! ## A120082.P17149756357374105906

`xor(A063524(n), A120086(n))`
-/

namespace A120082.P17149756357374105906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A120086 n)

end

end A120082.P17149756357374105906

/-! ## A120082.P2960952884150416328

`A120086(n*A141044(n)²)`
-/

namespace A120082.P2960952884150416328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120086 ((n : ℤ) * A141044 n ^ 2).toNat

end

end A120082.P2960952884150416328

/-! ## A120082.P15188179061807147187

`xor(A159075(n)², A120086(n))`
-/

namespace A120082.P15188179061807147187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A159075 n ^ 2) (A120086 n)

end

end A120082.P15188179061807147187

/-!
# A120083: Denominators of expansion for Debye function for n=1: D(1,x).

The programs for A120083, there is no canonical definition to state claims against.
-/

/-! ## A120083.P17258181337285079519

`2*A120085(n)-A227830(n)`
-/

namespace A120083.P17258181337285079519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A120085 n - A227830 n

end

end A120083.P17258181337285079519

/-! ## A120083.P3292267287895665433

`A162299(A266304(n))*A227830(n)`
-/

namespace A120083.P3292267287895665433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162299 (A266304 n).toNat * A227830 n

end

end A120083.P3292267287895665433

/-! ## A120083.P17927677724204346193

`A089026(n+1)*A227830(A004868(n+1))`
-/

namespace A120083.P17927677724204346193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1) * A227830 (A004868 (n + 1)).toNat

end

end A120083.P17927677724204346193

/-!
# A120085: Denominators of expansion for Debye function for n=2: D(2,x).

The programs for A120085, there is no canonical definition to state claims against.
-/

/-! ## A120085.P3199298706261266012

`(A227830(n)+A120083(n))/2`
-/

namespace A120085.P3199298706261266012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227830 n + A120083 n : ℚ) / 2

end

end A120085.P3199298706261266012

/-!
# A120086: Numerators of expansion of Debye function for n=4: D(4,x).

The programs for A120086, there is no canonical definition to state claims against.
-/

/-! ## A120086.P1407888755124031507

`A120080(n)+char[1]`
-/

namespace A120086.P1407888755124031507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120080 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A120086.P1407888755124031507

/-! ## A120086.P1627775706526499058

`A120082(n)-char[1]`
-/

namespace A120086.P1627775706526499058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120082 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A120086.P1627775706526499058

/-! ## A120086.P1478856590385897879

`A159075(n)+A120082(n)`
-/

namespace A120086.P1478856590385897879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A120082 n

end

end A120086.P1478856590385897879

/-! ## A120086.P10778095898941587524

`A178333(n)+A120080(n)`
-/

namespace A120086.P10778095898941587524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 n + A120080 n

end

end A120086.P10778095898941587524

/-! ## A120086.P6835556317692301745

`A000034(n)*A120082(n)`
-/

namespace A120086.P6835556317692301745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A120082 n

end

end A120086.P6835556317692301745

/-! ## A120086.P14614993492028834243

`A028920(n)*A120082(n)`
-/

namespace A120086.P14614993492028834243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 n * A120082 n

end

end A120086.P14614993492028834243

/-! ## A120086.P14290959918841517131

`A062557(n)*A120082(n)`
-/

namespace A120086.P14290959918841517131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062557 n * A120082 n

end

end A120086.P14290959918841517131

/-! ## A120086.P1676755651415513022

`A071222(n)*A120082(n)`
-/

namespace A120086.P1676755651415513022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071222 n * A120082 n

end

end A120086.P1676755651415513022

/-! ## A120086.P10050884808963622255

`A072345(n)*A120082(n)`
-/

namespace A120086.P10050884808963622255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072345 n * A120082 n

end

end A120086.P10050884808963622255

/-! ## A120086.P17460705292369706169

`A120082(n)*A129110(n)`
-/

namespace A120086.P17460705292369706169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120082 n * A129110 n

end

end A120086.P17460705292369706169

/-! ## A120086.P8400784892267745927

`A120082(n)*A133186(n)`
-/

namespace A120086.P8400784892267745927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120082 n * A133186 n

end

end A120086.P8400784892267745927

/-! ## A120086.P2772943718439861807

`A120082(n)*A178562(n)`
-/

namespace A120086.P2772943718439861807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120082 n * A178562 n

end

end A120086.P2772943718439861807

/-! ## A120086.P14527057848383091651

`A120082(n)*A221194(n)`
-/

namespace A120086.P14527057848383091651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120082 n * A221194 n

end

end A120086.P14527057848383091651

/-! ## A120086.P250846813389374648

`A120082(n)*A263845(n)`
-/

namespace A120086.P250846813389374648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120082 n * A263845 n

end

end A120086.P250846813389374648

/-! ## A120086.P6426909192227408646

`A050932(n+1)*A120082(n)`
-/

namespace A120086.P6426909192227408646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050932 (n + 1) * A120082 n

end

end A120086.P6426909192227408646

/-! ## A120086.P11068900993291768245

`A120082(n)*A193267(n+1)`
-/

namespace A120086.P11068900993291768245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120082 n * A193267 (n + 1)

end

end A120086.P11068900993291768245

/-! ## A120086.P3223424572831389496

`A084642(n+2)*A120082(n)`
-/

namespace A120086.P3223424572831389496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084642 (n + 2) * A120082 n

end

end A120086.P3223424572831389496

/-!
# A120087: Denominators of expansion of Debye function for n=4: D(4,x).

The programs for A120087, there is no canonical definition to state claims against.
-/

/-! ## A120087.P848871747981233990

`A274105(A274911(n+3))`
-/

namespace A120087.P848871747981233990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274105 (A274911 (n + 3)).toNat

end

end A120087.P848871747981233990

/-!
# A120088: Numerators of partial sums of a series for sqrt(2).

The programs for A120088, there is no canonical definition to state claims against.
-/

/-! ## A120088.P13813527606558118877

`A120788(n)+A046161(n+1)`
-/

namespace A120088.P13813527606558118877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120788 n + A046161 (n + 1)

end

end A120088.P13813527606558118877

/-! ## A120088.P10608863817953986296

`A120788(n)+2*A120777(n)`
-/

namespace A120088.P10608863817953986296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120788 n + 2 * A120777 n

end

end A120088.P10608863817953986296

/-! ## A120088.P14532838437756150314

`A120788(n)+∏[A171977(n+1)]`
-/

namespace A120088.P14532838437756150314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120788 n + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A120088.P14532838437756150314

/-! ## A120088.P15703236065589048078

`A120788(n)+∏[A028233(2*(n+1))]`
-/

namespace A120088.P15703236065589048078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120788 n + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A120088.P15703236065589048078

/-! ## A120088.P15727164868833525063

`A120788(n)+A004732(A317108(n+1))`
-/

namespace A120088.P15727164868833525063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120788 n + A004732 (A317108 (n + 1)).toNat

end

end A120088.P15727164868833525063

/-!
# A120089: Square perimeters of primitive Pythagorean triangles.

The programs for A120089, there is no canonical definition to state claims against.
-/

/-! ## A120089.P2955246716123607741

`A120090(n+1)²`
-/

namespace A120089.P2955246716123607741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120090 (n + 1) ^ 2

end

end A120089.P2955246716123607741

/-! ## A120089.P9358258068439489216

`(2*A081873(n+1))²`
-/

namespace A120089.P9358258068439489216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A081873 (n + 1)) ^ 2

end

end A120089.P9358258068439489216

/-! ## A120089.P12135701855523363305

`A120090(n+1)*A120090(A000027(n+1))`
-/

namespace A120089.P12135701855523363305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120090 (n + 1) * A120090 (A000027 (n + 1)).toNat

end

end A120089.P12135701855523363305

/-! ## A120089.P6368881326612870091

`A120090(n+1)^A000005(A000040(n+1))`
-/

namespace A120089.P6368881326612870091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120090 (n + 1) : ℚ) ^ (A000005 (A000040 (n + 1)).toNat : ℤ)

end

end A120089.P6368881326612870091

/-! ## A120089.P4194511150589954472

`A120090(n+1)^A000005(A023201(n+1))`
-/

namespace A120089.P4194511150589954472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120090 (n + 1) : ℚ) ^ (A000005 (A023201 (n + 1)).toNat : ℤ)

end

end A120089.P4194511150589954472

/-! ## A120089.P7628209593796791104

`A120090(n+1)^A000005(A125525(n+1))`
-/

namespace A120089.P7628209593796791104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120090 (n + 1) : ℚ) ^ (A000005 (A125525 (n + 1)).toNat : ℤ)

end

end A120089.P7628209593796791104

/-! ## A120089.P13611194192924486919

`(A081873(A000027(n+1))+A081873(n+1))²`
-/

namespace A120089.P13611194192924486919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A081873 (A000027 (n + 1)).toNat + A081873 (n + 1)) ^ 2

end

end A120089.P13611194192924486919

/-! ## A120089.P16967266076731090542

`A120090(A008619(2*n+1))*A120090(n+1)`
-/

namespace A120089.P16967266076731090542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120090 (A008619 (2 * n + 1)).toNat * A120090 (n + 1)

end

end A120089.P16967266076731090542

/-! ## A120089.P592138698848713524

`A016742(A081873(n+1))`
-/

namespace A120089.P592138698848713524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 (A081873 (n + 1)).toNat

end

end A120089.P592138698848713524

/-! ## A120089.P11746999136844527960

`A000290(A120090(A000290(n+1)/(n+1)))`
-/

namespace A120089.P11746999136844527960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A120090 (SequenceMachineLib.roundAway ((A000290 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A120089.P11746999136844527960

/-! ## A120089.P5309003114822362678

`A000290(2*A120090(n+1)-A120090(n+1))`
-/

namespace A120089.P5309003114822362678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A120090 (n + 1) - A120090 (n + 1)).toNat

end

end A120089.P5309003114822362678

/-! ## A120089.P3365450379487370574

`A004277(2*A081873(n+1))*A081873(n+1)`
-/

namespace A120089.P3365450379487370574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * A081873 (n + 1)).toNat * A081873 (n + 1)

end

end A120089.P3365450379487370574

/-! ## A120089.P3245078739397523138

`A005843(2*A081873(n+1))*A081873(n+1)`
-/

namespace A120089.P3245078739397523138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (2 * A081873 (n + 1)).toNat * A081873 (n + 1)

end

end A120089.P3245078739397523138

/-! ## A120089.P14879622315594600463

`A081873(n+1)*A256420(2*A081873(n+1))`
-/

namespace A120089.P14879622315594600463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081873 (n + 1) * A256420 (2 * A081873 (n + 1)).toNat

end

end A120089.P14879622315594600463

/-! ## A120089.P14654829724830436462

`A120090(n+1)*A120090(A135227(∑[n]))`
-/

namespace A120089.P14654829724830436462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120090 (n + 1) * A120090 (A135227 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A120089.P14654829724830436462

/-!
# A120090: Numbers whose square is the perimeter of a primitive Pythagorean triangle.

The programs for A120090, there is no canonical definition to state claims against.
-/

/-! ## A120090.P11611354375379266104

`sqrt(A120089(1+n))`
-/

namespace A120090.P11611354375379266104
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A120089 (1 + n) : ℝ)

end

end A120090.P11611354375379266104

/-! ## A120090.P4786351799443194742

`2*A081873(1+n)`
-/

namespace A120090.P4786351799443194742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081873 (1 + n)

end

end A120090.P4786351799443194742

/-! ## A120090.P2619678509469614007

`A081873(A000027(n+1))+A081873(n+1)`
-/

namespace A120090.P2619678509469614007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081873 (A000027 (n + 1)).toNat + A081873 (n + 1)

end

end A120090.P2619678509469614007

/-! ## A120090.P7560724473883344610

`A081873(n+1)+A081873(n+1)+A000007(n+1)`
-/

namespace A120090.P7560724473883344610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081873 (n + 1) + (A081873 (n + 1) + A000007 (n + 1))

end

end A120090.P7560724473883344610

/-! ## A120090.P17636152614099000915

`A081873(n+1)+A081873((n+1)%A081873(n+1))`
-/

namespace A120090.P17636152614099000915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081873 (n + 1) + A081873 (Int.tmod (n + 1 : ℤ) (A081873 (n + 1))).toNat

end

end A120090.P17636152614099000915

/-! ## A120090.P11074504422634426657

`A004277(A081873(n+1))`
-/

namespace A120090.P11074504422634426657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A081873 (n + 1)).toNat

end

end A120090.P11074504422634426657

/-!
# A120091: Ordered values j of pairs (j,k) that generate A120090.

The programs for A120091, there is no canonical definition to state claims against.
-/

/-! ## A120091.P13093409007229146270

`A001105(A103586(A336542(n+1)+A082327(n)))`
-/

namespace A120091.P13093409007229146270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (A103586 (A336542 (n + 1) + A082327 n).toNat).toNat

end

end A120091.P13093409007229146270

/-! ## A120091.P1080347113024214741

`2*A100555(A113127(n))`
-/

namespace A120091.P1080347113024214741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100555 (A113127 n).toNat

end

end A120091.P1080347113024214741

/-! ## A120091.P824883262733456228

`2*A100555(A111284(n+1))`
-/

namespace A120091.P824883262733456228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100555 (A111284 (n + 1)).toNat

end

end A120091.P824883262733456228

/-! ## A120091.P7126215365719137963

`2*A100555(A007094(3*n+1))`
-/

namespace A120091.P7126215365719137963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100555 (A007094 (3 * n + 1)).toNat

end

end A120091.P7126215365719137963

/-! ## A120091.P17222137905761094420

`A000267(A232753(3*(n+1))²²)`
-/

namespace A120091.P17222137905761094420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 ((A232753 (3 * (n + 1)) ^ 2) ^ 2).toNat

end

end A120091.P17222137905761094420

/-!
# A120092: Values k of pairs (j,k) corresponding to the values j=A120091.

The programs for A120092, there is no canonical definition to state claims against.
-/

/-! ## A120092.P2603902623486392498

`A278717(lt[1/2, A278717(n+2)]+2)`
-/

namespace A120092.P2603902623486392498
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278717 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278717 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 2)

end

end A120092.P2603902623486392498

/-! ## A120092.P2386615794418716445

`A278717(record[(n+2)^(A278717(n+2)%2)])`
-/

namespace A120092.P2386615794418716445
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (Int.tmod (A278717 (n + 2)) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278717 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A120092.P2386615794418716445

/-!
# A120093: a(n) = the n-th divisor of Fibonacci(n)^n (when the positive divisors of Fibonacci(n)^n are written in order from smallest to largest).

The programs for A120093, there is no canonical definition to state claims against.
-/

/-! ## A120093.P10169315745400613827

`∑{p}[A000045(n+1)^5, #]^n`
-/

namespace A120093.P10169315745400613827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p) ^ n

end

end A120093.P10169315745400613827

/-! ## A120093.P32404245116212330

`A007388(A041101(n))^n`
-/

namespace A120093.P32404245116212330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007388 (A041101 n).toNat ^ n

end

end A120093.P32404245116212330

/-! ## A120093.P12394755488578243151

`A063918(A220361(n+2))^n`
-/

namespace A120093.P12394755488578243151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063918 (A220361 (n + 2)).toNat ^ n

end

end A120093.P12394755488578243151

/-!
# A120094: Rows of Pascal's triangle which contain no terms numerically adjacent to odd primes (the 1's at either end are of course numerically adjacent to the even prime 2).

The programs for A120094, there is no canonical definition to state claims against.
-/

/-! ## A120094.P13688276259690475498

`A340500(A207421(n+2))`
-/

namespace A120094.P13688276259690475498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340500 (A207421 (n + 2)).toNat

end

end A120094.P13688276259690475498

/-! ## A120094.P6316273042590200351

`lt[A000384(A292947(n)), A105609(n)]`
-/

namespace A120094.P6316273042590200351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (A292947 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A120094.P6316273042590200351

/-!
# A120095: Triangle T(n,k) = total of number at last index for all set partitions of n into k parts.

The programs for A120095, there is no canonical definition to state claims against.
-/

/-! ## A120095.P1670433548243142677

`A291811(A321331(n)+A267383(n))`
-/

namespace A120095.P1670433548243142677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291811 (A321331 n + A267383 n).toNat

end

end A120095.P1670433548243142677

/-! ## A120095.P13228068275877339122

`A103298(A035348(n+1)*A059268(n))`
-/

namespace A120095.P13228068275877339122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A035348 (n + 1) * A059268 n).toNat

end

end A120095.P13228068275877339122

/-! ## A120095.P16819555484629240994

`A114994(A209568(n+1)^A325268(n))`
-/

namespace A120095.P16819555484629240994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114994 (SequenceMachineLib.roundAway ((A209568 (n + 1) : ℚ) ^ (A325268 n : ℤ))).toNat

end

end A120095.P16819555484629240994

/-! ## A120095.P142127212671386647

`A103298((A112367(n)+1)*A035348(n+1))`
-/

namespace A120095.P142127212671386647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 ((A112367 n + 1) * A035348 (n + 1)).toNat

end

end A120095.P142127212671386647

/-! ## A120095.P4054694292458855570

`A232357(A271518(2*(n+1)))+A233777(2*A046803(n+1))-1`
-/

namespace A120095.P4054694292458855570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232357 (A271518 (2 * (n + 1))).toNat + (A233777 (2 * A046803 (n + 1)).toNat - 1)

end

end A120095.P4054694292458855570

/-!
# A120096: a(n) = (A046717(n))^2 (starting with n=1).

The programs for A120096, the canonical program `A120096.P14687869589434560623` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120096 has offset 1).

The definition of A120096 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A046717(n+1)²` (program `A120096.P14687869589434560623`, by `A120096.P14687869589434560623.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120096.P9867189330298078959

`ogf((1+18x-27x^2)/(1-7x-21x^2+27x^3))`
-/

namespace A120096.P9867189330298078959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 18, -27] [1, -7, -21, 27] n

end

end A120096.P9867189330298078959

namespace A120096

/-- `ogf((1+18x-27x^2)/(1-7x-21x^2+27x^3))` -/
def P9867189330298078959.Spec : Prop :=
  ∀ n, P9867189330298078959.a n = A120096 (n + 1)

end A120096

/-! ## A120096.P6231964463287707113

`((1+(-3)^(n+1))/2)²`
-/

namespace A120096.P6231964463287707113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 + (-3) ^ (n + 1) : ℚ) / 2) ^ 2

end

end A120096.P6231964463287707113

namespace A120096

/-- `((1+(-3)^(n+1))/2)²` -/
def P6231964463287707113.Spec : Prop :=
  ∀ n, P6231964463287707113.a n = (A120096 (n + 1) : ℚ)

end A120096

/-! ## A120096.P397123545088707430

`7*a(n-1)+21*a(n-2)-27*a(n-3)` with `a(0)=1, a(1)=25, a(2)=169`
-/

namespace A120096.P397123545088707430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 25, 169] fun n a =>
  7 * a (n - 1) + 21 * a (n - 2) - 27 * a (n - 3)

end

end A120096.P397123545088707430

namespace A120096

/-- `7*a(n-1)+21*a(n-2)-27*a(n-3)` -/
def P397123545088707430.Spec : Prop :=
  ∀ n, P397123545088707430.a n = A120096 (n + 1)

end A120096

/-! ## A120096.P14687869589434560623

`A046717(n+1)²`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A120096

/-- `A046717(n+1)²` -/
def P14687869589434560623.Spec : Prop :=
  ∀ n, P14687869589434560623.a n = A120096 (n + 1)

theorem P14687869589434560623.correct : P14687869589434560623.Spec := by
  intro n
  simp only [A120096, Nat.add_sub_cancel]

end A120096

/-! ## A120096.P4520467423577878590

`or(1, ∑[3^n])²`
-/

namespace A120096.P4520467423577878590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A120096.P4520467423577878590

namespace A120096

/-- `or(1, ∑[3^n])²` -/
def P4520467423577878590.Spec : Prop :=
  ∀ n, (P4520467423577878590.a n : ℤ) = A120096 (n + 1)

end A120096

/-! ## A120096.P9150368071988798479

`or(1, ∑[3^n])^2`
-/

namespace A120096.P9150368071988798479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A120096.P9150368071988798479

namespace A120096

/-- `or(1, ∑[3^n])^2` -/
def P9150368071988798479.Spec : Prop :=
  ∀ n, (P9150368071988798479.a n : ℤ) = A120096 (n + 1)

end A120096

/-! ## A120096.P5890441836616854362

`3*(9^n-a(n-1))+1` with `a(0)=1`
-/

namespace A120096.P5890441836616854362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((9 ^ n : ℤ) - a (n - 1)) + 1

end

end A120096.P5890441836616854362

namespace A120096

/-- `3*(9^n-a(n-1))+1` -/
def P5890441836616854362.Spec : Prop :=
  ∀ n, P5890441836616854362.a n = A120096 (n + 1)

end A120096

/-! ## A120096.P608065899708142958

`3*9^n-(3*a(n-1)-1)` with `a(0)=1`
-/

namespace A120096.P608065899708142958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 * 9 ^ n : ℤ) - (3 * a (n - 1) - 1)

end

end A120096.P608065899708142958

namespace A120096

/-- `3*9^n-(3*a(n-1)-1)` -/
def P608065899708142958.Spec : Prop :=
  ∀ n, P608065899708142958.a n = A120096 (n + 1)

end A120096

/-! ## A120096.P10973045626794761107

`A080925(n+1)^2`
-/

namespace A120096.P10973045626794761107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080925 (n + 1) ^ 2

end

end A120096.P10973045626794761107

namespace A120096

/-- `A080925(n+1)^2` -/
def P10973045626794761107.Spec : Prop :=
  ∀ n, P10973045626794761107.a n = A120096 (n + 1)

end A120096

/-! ## A120096.P15932503255532132424

`A164907(n)^(6/2-1)`
-/

namespace A120096.P15932503255532132424
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A164907 n : ℝ) ^ ((6 : ℚ) / 2 - 1 : ℝ)

end

end A120096.P15932503255532132424

namespace A120096

/-- `A164907(n)^(6/2-1)` -/
def P15932503255532132424.Spec : Prop :=
  ∀ n, P15932503255532132424.a n = (A120096 (n + 1) : ℝ)

end A120096

/-! ## A120096.P3777728373127343768

`A164907(n)*A164907(n)`
-/

namespace A120096.P3777728373127343768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164907 n * A164907 n

end

end A120096.P3777728373127343768

namespace A120096

/-- `A164907(n)*A164907(n)` -/
def P3777728373127343768.Spec : Prop :=
  ∀ n, P3777728373127343768.a n = A120096 (n + 1)

end A120096

/-! ## A120096.P4495170658334428299

`A084182(n+1)/4*A084182(n+1)`
-/

namespace A120096.P4495170658334428299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084182 (n + 1) : ℚ) / 4 * (A084182 (n + 1) : ℚ)

end

end A120096.P4495170658334428299

namespace A120096

/-- `A084182(n+1)/4*A084182(n+1)` -/
def P4495170658334428299.Spec : Prop :=
  ∀ n, P4495170658334428299.a n = (A120096 (n + 1) : ℚ)

end A120096

/-! ## A120096.P6467114985714601640

`A084182(n+1)²/4`
-/

namespace A120096.P6467114985714601640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084182 (n + 1) ^ 2 : ℚ) / 4

end

end A120096.P6467114985714601640

namespace A120096

/-- `A084182(n+1)²/4` -/
def P6467114985714601640.Spec : Prop :=
  ∀ n, P6467114985714601640.a n = (A120096 (n + 1) : ℚ)

end A120096

/-! ## A120096.P18125597784466550057

`A102345(n+1)²/4`
-/

namespace A120096.P18125597784466550057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102345 (n + 1) ^ 2 : ℚ) / 4

end

end A120096.P18125597784466550057

namespace A120096

/-- `A102345(n+1)²/4` -/
def P18125597784466550057.Spec : Prop :=
  ∀ n, P18125597784466550057.a n = (A120096 (n + 1) : ℚ)

end A120096

/-!
# A120097: Long leg of primitive Pythagorean triangle corresponding to hypotenuse A094194.

The programs for A120097, there is no canonical definition to state claims against.
-/

/-! ## A120097.P6317630551379441906

`A088510(∑[A003178(n)!])`
-/

namespace A120097.P6317630551379441906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A003178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088510 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120097.P6317630551379441906

/-! ## A120097.P9337307336670934664

`filter[A088510(n+1), A181632(#)]`
-/

namespace A120097.P9337307336670934664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181632 (f1 j).toNat = 1) n)

end

end A120097.P9337307336670934664

/-! ## A120097.P10260042637954318814

`A088510(A087051(n)+A018896(n))`
-/

namespace A120097.P10260042637954318814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088510 (A087051 n + A018896 n).toNat

end

end A120097.P10260042637954318814

/-! ## A120097.P17288941850557501306

`A088510(lcm(A191306(n), A270427(n+1)))`
-/

namespace A120097.P17288941850557501306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088510 (Int.lcm (A191306 n) (A270427 (n + 1)))

end

end A120097.P17288941850557501306

/-! ## A120097.P12233724880990731364

`A088510(A087027(n+1))`
-/

namespace A120097.P12233724880990731364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088510 (A087027 (n + 1)).toNat

end

end A120097.P12233724880990731364

