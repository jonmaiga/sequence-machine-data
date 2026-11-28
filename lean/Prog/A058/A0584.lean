import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C046
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
import Seq.B002.C001
import Seq.B003.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
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
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A058400: Triangle of partial row sums of partition triangle A058398.

The programs for A058400, the canonical program `A058400.P7562273213706600953` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058400 has offset 1).

The definition of A058400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058400.P7562273213706600953

`A026820(∑[char[∑[n]]]²-n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A058400

/-- `A026820(∑[char[∑[n]]]²-n)` -/
def P7562273213706600953.Spec : Prop :=
  ∀ n, P7562273213706600953.a n = A058400 (n + 1)

theorem P7562273213706600953.correct : P7562273213706600953.Spec := by
  intro n
  simp only [A058400, Nat.add_sub_cancel]

end A058400

/-! ## A058400.P5440145980380435357

`A331852(A164981(n+1))`
-/

namespace A058400.P5440145980380435357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331852 (A164981 (n + 1)).toNat

end

end A058400.P5440145980380435357

namespace A058400

/-- `A331852(A164981(n+1))` -/
def P5440145980380435357.Spec : Prop :=
  ∀ n, P5440145980380435357.a n = A058400 (n + 1)

end A058400

/-! ## A058400.P13508217294792605954

`A088519(A055249(n))`
-/

namespace A058400.P13508217294792605954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088519 (A055249 n).toNat

end

end A058400.P13508217294792605954

namespace A058400

/-- `A088519(A055249(n))` -/
def P13508217294792605954.Spec : Prop :=
  ∀ n, P13508217294792605954.a n = A058400 (n + 1)

end A058400

/-! ## A058400.P6575371491747538172

`A097688(A054445(n))`
-/

namespace A058400.P6575371491747538172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097688 (A054445 n).toNat

end

end A058400.P6575371491747538172

namespace A058400

/-- `A097688(A054445(n))` -/
def P6575371491747538172.Spec : Prop :=
  ∀ n, P6575371491747538172.a n = A058400 (n + 1)

end A058400

/-! ## A058400.P5950878027852094426

`A077430(A089463(n))`
-/

namespace A058400.P5950878027852094426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077430 (A089463 n).toNat

end

end A058400.P5950878027852094426

namespace A058400

/-- `A077430(A089463(n))` -/
def P5950878027852094426.Spec : Prop :=
  ∀ n, P5950878027852094426.a n = A058400 (n + 1)

end A058400

/-!
# A058402: Coefficient triangle of polynomials (rising powers) related to Pell number convolutions. Companion triangle is A058403.

The programs for A058402, there is no canonical definition to state claims against.
-/

/-! ## A058402.P10965759984639105177

`A058404(∑[2*n]%comp[∑[n]])`
-/

namespace A058402.P10965759984639105177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058404 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A058402.P10965759984639105177

/-!
# A058403: Coefficient triangle of polynomials (rising powers) related to Pell number convolutions. Companion triangle is A058402.

The programs for A058403, there is no canonical definition to state claims against.
-/

/-! ## A058403.P6936853668105090536

`A058405(∑[2*n]%comp[∑[n]])`
-/

namespace A058403.P6936853668105090536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058405 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A058403.P6936853668105090536

/-!
# A058404: Coefficient triangle of polynomials (falling powers) related to Pell number convolutions. Companion triangle is A058405.

The programs for A058404, there is no canonical definition to state claims against.
-/

/-! ## A058404.P3382421411220178788

`A058402(∑[2*n]%comp[∑[n]])`
-/

namespace A058404.P3382421411220178788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058402 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A058404.P3382421411220178788

/-!
# A058405: Coefficient triangle of polynomials (falling powers) related to Pell number convolutions. Companion triangle is A058404.

The programs for A058405, there is no canonical definition to state claims against.
-/

/-! ## A058405.P17447412395510652868

`A058403(∑[2*n]%comp[∑[n]])`
-/

namespace A058405.P17447412395510652868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058403 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A058405.P17447412395510652868

/-!
# A058406: Total number of interior nodes in all series-parallel networks with n labeled edges, multiple edges not allowed.

The programs for A058406, there is no canonical definition to state claims against.
-/

/-! ## A058406.P15598218303385044131

`A058475(n)-A058388(n)`
-/

namespace A058406.P15598218303385044131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058475 n - A058388 n

end

end A058406.P15598218303385044131

/-! ## A058406.P10582257873042590500

`A058475(n)+A058388(n)*A260196(n)`
-/

namespace A058406.P10582257873042590500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058475 n + A058388 n * A260196 n

end

end A058406.P10582257873042590500

/-!
# A058407: Number of 3 X n nonnegative integer matrices with all column sums 3, up to row and column permutation.

The programs for A058407, there is no canonical definition to state claims against.
-/

/-! ## A058407.P5071391334757505167

`∑[A050927(n)]`
-/

namespace A058407.P5071391334757505167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058407.P5071391334757505167

/-! ## A058407.P12598826100641450896

`A050927(n)-(A209229(2*n+1)-a(n-1))` with `a(0)=1`
-/

namespace A058407.P12598826100641450896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A050927 n - (A209229 (2 * n + 1) - a (n - 1))

end

end A058407.P12598826100641450896

/-! ## A058407.P4583327694741070259

`∑[A138107(∑[n+4]+2)]`
-/

namespace A058407.P4583327694741070259
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138107 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058407.P4583327694741070259

/-! ## A058407.P5163844184485811894

`A235800(2*A050927(n))+a(n-1)` with `a(0)=1`
-/

namespace A058407.P5163844184485811894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A235800 (2 * A050927 n).toNat + a (n - 1)

end

end A058407.P5163844184485811894

/-!
# A058408: Number of 3 X n nonnegative integer matrices with all column sums 4, up to row and column permutation.

The programs for A058408, there is no canonical definition to state claims against.
-/

/-! ## A058408.P4984099987398164546

`xor(2, A140977(A182959(n)))`
-/

namespace A058408.P4984099987398164546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A140977 (A182959 n).toNat)

end

end A058408.P4984099987398164546

/-!
# A058409: Number of 4 X n nonnegative integer matrices with all column sums 3, up to row and column permutation.

The programs for A058409, there is no canonical definition to state claims against.
-/

/-! ## A058409.P153813252791960061

`A193564(lcm(2^(n+1), a(n-1))+1)+3` with `a(0)=1, a(1)=3`
-/

namespace A058409.P153813252791960061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A193564 (Int.lcm (2 ^ (n + 1) : ℤ) (a (n - 1)) + 1) + 3

end

end A058409.P153813252791960061

/-!
# A058410: Number of 4 X n nonnegative integer matrices with all column sums 4, up to row and column permutation.

The programs for A058410, there is no canonical definition to state claims against.
-/

/-! ## A058410.P6825835234125272470

`or(A004526(A126532(n)), A149694(n))`
-/

namespace A058410.P6825835234125272470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004526 (A126532 n).toNat) (A149694 n)

end

end A058410.P6825835234125272470

/-!
# A058411: Numbers k such that k^2 contains only digits {0,1,2}, not ending with zero.

The programs for A058411, there is no canonical definition to state claims against.
-/

/-! ## A058411.P16668686155738733335

`sqrt(A058412(n+1))`
-/

namespace A058411.P16668686155738733335
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A058412 (n + 1) : ℝ)

end

end A058411.P16668686155738733335

/-! ## A058411.P10494029182624267621

`A058441(1+n)/2`
-/

namespace A058411.P10494029182624267621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058441 (1 + n) : ℚ) / 2

end

end A058411.P10494029182624267621

/-! ## A058411.P15095111704928329890

`sqrt(A058442(n+1))/2`
-/

namespace A058411.P15095111704928329890
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A058442 (n + 1) : ℝ) / 2

end

end A058411.P15095111704928329890

/-! ## A058411.P1674516787423577211

`root(A058412(n+1), A040000(n))`
-/

namespace A058411.P1674516787423577211
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058412 (n + 1) : ℝ) ^ (1 / (A040000 n : ℝ))

end

end A058411.P1674516787423577211

/-! ## A058411.P13095371237766468870

`A058412(n+1)%A058441(n+1)`
-/

namespace A058411.P13095371237766468870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058412 (n + 1)) (A058441 (n + 1))

end

end A058411.P13095371237766468870

/-!
# A058412: Squares composed of digits {0,1,2}, not ending with zero.

The programs for A058412, there is no canonical definition to state claims against.
-/

/-! ## A058412.P3313183400517568292

`A058411(n+1)²`
-/

namespace A058412.P3313183400517568292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058411 (n + 1) ^ 2

end

end A058412.P3313183400517568292

/-! ## A058412.P12822262067230233132

`A058442(1+n)/4`
-/

namespace A058412.P12822262067230233132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058442 (1 + n) : ℚ) / 4

end

end A058412.P12822262067230233132

/-! ## A058412.P9933978859775093911

`A058411(1+n)^2`
-/

namespace A058412.P9933978859775093911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058411 (1 + n) ^ 2

end

end A058412.P9933978859775093911

/-! ## A058412.P5035603409615017797

`(A058441(1+n)/2)²`
-/

namespace A058412.P5035603409615017797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A058441 (1 + n) : ℚ) / 2) ^ 2

end

end A058412.P5035603409615017797

/-! ## A058412.P7203528626508285650

`(A058441(n+1)/2)^2`
-/

namespace A058412.P7203528626508285650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A058441 (n + 1) : ℚ) / 2) ^ 2

end

end A058412.P7203528626508285650

/-! ## A058412.P751293755730727450

`A058411(1+n)*A058411(n+1)`
-/

namespace A058412.P751293755730727450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058411 (1 + n) * A058411 (n + 1)

end

end A058412.P751293755730727450

/-!
# A058413: Numbers k such that k^2 contains only digits {0,1,4}, not ending with zero.

The programs for A058413, there is no canonical definition to state claims against.
-/

/-! ## A058413.P8245790162434375368

`sqrt(A058414(n+1))`
-/

namespace A058413.P8245790162434375368
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A058414 (n + 1) : ℝ)

end

end A058413.P8245790162434375368

/-!
# A058414: Squares composed of digits {0,1,4}, not ending with zero.

The programs for A058414, there is no canonical definition to state claims against.
-/

/-! ## A058414.P3979405884778162103

`A058413(n+1)²`
-/

namespace A058414.P3979405884778162103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058413 (n + 1) ^ 2

end

end A058414.P3979405884778162103

/-! ## A058414.P12481977128697717417

`A058413(n+1)^dr(A040000(n))`
-/

namespace A058414.P12481977128697717417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058413 (n + 1) ^ SequenceMachineLib.digitalRoot (A040000 n)

end

end A058414.P12481977128697717417

/-! ## A058414.P7309252055770734964

`A058413(n+1)^(A057427(n)+1)`
-/

namespace A058414.P7309252055770734964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058413 (n + 1) : ℚ) ^ (A057427 n + 1 : ℤ)

end

end A058414.P7309252055770734964

/-! ## A058414.P16467243078067558767

`A058413(n+1)^(2-A000007(n))`
-/

namespace A058414.P16467243078067558767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058413 (n + 1) : ℚ) ^ (2 - A000007 n : ℤ)

end

end A058414.P16467243078067558767

/-! ## A058414.P1642509247746780355

`A058413(n+1)^(A089026(2*(n+1))+1)`
-/

namespace A058414.P1642509247746780355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058413 (n + 1) : ℚ) ^ (A089026 (2 * (n + 1)) + 1 : ℤ)

end

end A058414.P1642509247746780355

/-! ## A058414.P777802237399510115

`A058413(n+1)^A014963(A001316(n))`
-/

namespace A058414.P777802237399510115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058413 (n + 1) : ℚ) ^ (A014963 (A001316 n).toNat : ℤ)

end

end A058414.P777802237399510115

/-! ## A058414.P14641575605149893886

`A058413(n+1)^A034444(A006530(n+1))`
-/

namespace A058414.P14641575605149893886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058413 (n + 1) : ℚ) ^ (A034444 (A006530 (n + 1)).toNat : ℤ)

end

end A058414.P14641575605149893886

/-!
# A058415: Numbers k such that k^2 contains only digits {0,1,5}, not ending with zero.

The programs for A058415, there is no canonical definition to state claims against.
-/

/-! ## A058415.P4296752132596697633

`sqrt(A058416(n+1))`
-/

namespace A058415.P4296752132596697633
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A058416 (n + 1) : ℝ)

end

end A058415.P4296752132596697633

/-!
# A058416: Squares composed of digits {0,1,5}, not ending with zero.

The programs for A058416, there is no canonical definition to state claims against.
-/

/-! ## A058416.P16295317096054630712

`A058415(n+1)²`
-/

namespace A058416.P16295317096054630712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058415 (n + 1) ^ 2

end

end A058416.P16295317096054630712

/-!
# A058417: Numbers k such that k^2 contains only digits {0,1,6}, not ending with zero.

The programs for A058417, there is no canonical definition to state claims against.
-/

/-! ## A058417.P10111027009064377449

`sqrt(A058418(n+1))`
-/

namespace A058417.P10111027009064377449
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A058418 (n + 1) : ℝ)

end

end A058417.P10111027009064377449

/-! ## A058417.P1713600974979672009

`root(A058418(n+1), A040000(n))`
-/

namespace A058417.P1713600974979672009
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058418 (n + 1) : ℝ) ^ (1 / (A040000 n : ℝ))

end

end A058417.P1713600974979672009

/-! ## A058417.P11172153490830410822

`A058418(n+1)^(n/A004277(n))`
-/

namespace A058417.P11172153490830410822
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058418 (n + 1) : ℝ) ^ ((n : ℚ) / (A004277 n : ℚ) : ℝ)

end

end A058417.P11172153490830410822

/-!
# A058418: Squares composed of digits {0,1,6}, not ending with zero.

The programs for A058418, there is no canonical definition to state claims against.
-/

/-! ## A058418.P13336177171374837751

`A058417(n+1)²`
-/

namespace A058418.P13336177171374837751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058417 (n + 1) ^ 2

end

end A058418.P13336177171374837751

/-! ## A058418.P10754438107466272900

`record[A058417(A236858(n))²]`
-/

namespace A058418.P10754438107466272900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058417 (A236858 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058418.P10754438107466272900

/-! ## A058418.P5442030610871500952

`A058417(n+1)^dr(A040000(n))`
-/

namespace A058418.P5442030610871500952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058417 (n + 1) ^ SequenceMachineLib.digitalRoot (A040000 n)

end

end A058418.P5442030610871500952

/-! ## A058418.P4812721814423001629

`A058417(n+1)^(A054977(n)+1)`
-/

namespace A058418.P4812721814423001629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058417 (n + 1) : ℚ) ^ (A054977 n + 1 : ℤ)

end

end A058418.P4812721814423001629

/-!
# A058421: Numbers k such that k^2 contains only digits {0,1,8}, not ending with zero.

The programs for A058421, there is no canonical definition to state claims against.
-/

/-! ## A058421.P17364652841865019060

`sqrt(A058422(n+1))`
-/

namespace A058421.P17364652841865019060
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A058422 (n + 1) : ℝ)

end

end A058421.P17364652841865019060

/-! ## A058421.P761704693435307071

`root(A058422(n+1), A040000(n))`
-/

namespace A058421.P761704693435307071
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058422 (n + 1) : ℝ) ^ (1 / (A040000 n : ℝ))

end

end A058421.P761704693435307071

/-! ## A058421.P6730774617314115842

`root(A058422(n+1), A057427(n)+1)`
-/

namespace A058421.P6730774617314115842
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058422 (n + 1) : ℝ) ^ (1 / (A057427 n + 1 : ℝ))

end

end A058421.P6730774617314115842

/-! ## A058421.P8492588743036696199

`root(A058422(n+1), gcd(2, A069484(n+1)))`
-/

namespace A058421.P8492588743036696199
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058422 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A069484 (n + 1)) : ℝ))

end

end A058421.P8492588743036696199

/-! ## A058421.P15186298950933044664

`record[A058422(A324346(n))^(A057427(n)/2)]`
-/

namespace A058421.P15186298950933044664
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058422 (A324346 n).toNat : ℝ) ^ ((A057427 n : ℚ) / 2 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058421.P15186298950933044664

/-!
# A058422: Squares composed of digits {0,1,8}, not ending with zero.

The programs for A058422, there is no canonical definition to state claims against.
-/

/-! ## A058422.P7927602916819249560

`A058421(n+1)²`
-/

namespace A058422.P7927602916819249560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058421 (n + 1) ^ 2

end

end A058422.P7927602916819249560

/-! ## A058422.P4049522786657912846

`A058421(n+1)^dr(A040000(n))`
-/

namespace A058422.P4049522786657912846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058421 (n + 1) ^ SequenceMachineLib.digitalRoot (A040000 n)

end

end A058422.P4049522786657912846

/-! ## A058422.P9859240341505689908

`A058421(n+1)^(A057427(n)+1)`
-/

namespace A058422.P9859240341505689908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058421 (n + 1) : ℚ) ^ (A057427 n + 1 : ℤ)

end

end A058422.P9859240341505689908

/-! ## A058422.P15853597634045894922

`A058421(n+1)*A058421(A296894(n+1))`
-/

namespace A058422.P15853597634045894922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058421 (n + 1) * A058421 (A296894 (n + 1)).toNat

end

end A058422.P15853597634045894922

/-!
# A058423: Numbers k such that k^2 contains only digits {0,2,4}, not ending with zero.

The programs for A058423, there is no canonical definition to state claims against.
-/

/-! ## A058423.P14306491273906950145

`sqrt(A058424(n+1))`
-/

namespace A058423.P14306491273906950145
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A058424 (n + 1) : ℝ)

end

end A058423.P14306491273906950145

/-!
# A058424: Squares composed of digits {0,2,4}, not ending with zero.

The programs for A058424, there is no canonical definition to state claims against.
-/

/-! ## A058424.P13350608164659506065

`A058423(n+1)²`
-/

namespace A058424.P13350608164659506065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058423 (n + 1) ^ 2

end

end A058424.P13350608164659506065

/-!
# A058425: Numbers k such that k^2 contains only digits {0,2,5}, not ending with zero.

The programs for A058425, there is no canonical definition to state claims against.
-/

/-! ## A058425.P15910748985425128268

`sqrt(A058426(n+1))`
-/

namespace A058425.P15910748985425128268
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A058426 (n + 1) : ℝ)

end

end A058425.P15910748985425128268

/-!
# A058426: Squares composed of digits {0,2,5}, not ending with zero.

The programs for A058426, there is no canonical definition to state claims against.
-/

/-! ## A058426.P9483475487415938209

`A058425(n+1)²`
-/

namespace A058426.P9483475487415938209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058425 (n + 1) ^ 2

end

end A058426.P9483475487415938209

/-! ## A058426.P8653054616275379356

`A058425(n+1)*A058425(A000027(n+1))`
-/

namespace A058426.P8653054616275379356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058425 (n + 1) * A058425 (A000027 (n + 1)).toNat

end

end A058426.P8653054616275379356

/-!
# A058427: Numbers k such that k^2 contains only digits {0,2,9}, not ending with zero.

The programs for A058427, there is no canonical definition to state claims against.
-/

/-! ## A058427.P9647737709881990790

`sqrt(A058428(n+1))`
-/

namespace A058427.P9647737709881990790
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A058428 (n + 1) : ℝ)

end

end A058427.P9647737709881990790

/-! ## A058427.P6500477242636461903

`root(A058428(n+1), p?[A003652(n+2)])`
-/

namespace A058427.P6500477242636461903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003652 (n + 2)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058428 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A058427.P6500477242636461903

/-! ## A058427.P2319832340778922898

`A058428(n+1)^2^A008683(A003629(n+1))`
-/

namespace A058427.P2319832340778922898
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058428 (n + 1) : ℝ) ^ ((2 : ℚ) ^ (A008683 (A003629 (n + 1)).toNat : ℤ) : ℝ)

end

end A058427.P2319832340778922898

/-! ## A058427.P5056007362668096273

`A058428(n+1)^(A058411(n+1)/A058441(n+1))`
-/

namespace A058427.P5056007362668096273
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058428 (n + 1) : ℝ) ^ ((A058411 (n + 1) : ℚ) / (A058441 (n + 1) : ℚ) : ℝ)

end

end A058427.P5056007362668096273

/-!
# A058428: Squares composed of digits {0,2,9}, not ending with zero.

The programs for A058428, there is no canonical definition to state claims against.
-/

/-! ## A058428.P8610079870074266077

`A058427(n+1)²`
-/

namespace A058428.P8610079870074266077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058427 (n + 1) ^ 2

end

end A058428.P8610079870074266077

/-! ## A058428.P13646025120541846307

`A058427(n+1)^A000122(A008459(n))`
-/

namespace A058428.P13646025120541846307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058427 (n + 1) : ℚ) ^ (A000122 (A008459 n).toNat : ℤ)

end

end A058428.P13646025120541846307

/-! ## A058428.P1027546925597789923

`A058427(n+1)^A006530(A011782(n+4))`
-/

namespace A058428.P1027546925597789923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058427 (n + 1) : ℚ) ^ (A006530 (A011782 (n + 4)).toNat : ℤ)

end

end A058428.P1027546925597789923

/-! ## A058428.P41437150795853907

`A058427(n+1)^A219704(abs(2-A173740(n)))`
-/

namespace A058428.P41437150795853907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058427 (n + 1) : ℚ) ^ (A219704 |2 - A173740 n|.toNat : ℤ)

end

end A058428.P41437150795853907

/-! ## A058428.P11419736308803185953

`A058427(n+1)^A219704(ceil(A109128(n)/2))`
-/

namespace A058428.P11419736308803185953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058427 (n + 1) : ℚ) ^ (A219704 ⌈(A109128 n : ℚ) / 2⌉.toNat : ℤ)

end

end A058428.P11419736308803185953

/-!
# A058429: Numbers k such that k^2 contains only digits {0,3,4}, not ending with zero.

The programs for A058429, there is no canonical definition to state claims against.
-/

/-! ## A058429.P5764502184065561106

`sqrt(A058430(n+1))`
-/

namespace A058429.P5764502184065561106
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A058430 (n + 1) : ℝ)

end

end A058429.P5764502184065561106

/-!
# A058430: Squares composed of digits {0,3,4}, not ending with zero.

The programs for A058430, there is no canonical definition to state claims against.
-/

/-! ## A058430.P11176403677831517246

`A058429(n+1)²`
-/

namespace A058430.P11176403677831517246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058429 (n + 1) ^ 2

end

end A058430.P11176403677831517246

/-! ## A058430.P9371803558562243268

`A058429(n+1)^A000005(A058383(n+1))`
-/

namespace A058430.P9371803558562243268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058429 (n + 1) : ℚ) ^ (A000005 (A058383 (n + 1)).toNat : ℤ)

end

end A058430.P9371803558562243268

/-!
# A058435: Numbers k such that k^2 contains only digits {0,4,5}, not ending with zero.

The programs for A058435, there is no canonical definition to state claims against.
-/

/-! ## A058435.P18212460435099139704

`sqrt(A058436(n+1))`
-/

namespace A058435.P18212460435099139704
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A058436 (n + 1) : ℝ)

end

end A058435.P18212460435099139704

/-! ## A058435.P13352655644219326650

`root(A058436(n+1), p?[A025461(n)])`
-/

namespace A058435.P13352655644219326650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025461 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058436 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A058435.P13352655644219326650

/-! ## A058435.P13871260954546125920

`root(A058436(n+1), p?[A003652(n+2)])`
-/

namespace A058435.P13871260954546125920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003652 (n + 2)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058436 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A058435.P13871260954546125920

/-! ## A058435.P1732757765375522955

`root(A058436(n+1), A057427(n+2)+1)`
-/

namespace A058435.P1732757765375522955
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058436 (n + 1) : ℝ) ^ (1 / (A057427 (n + 2) + 1 : ℝ))

end

end A058435.P1732757765375522955

/-! ## A058435.P11819463829133295760

`root(A058436(n+1), gcd(2, A058423(n+1)))`
-/

namespace A058435.P11819463829133295760
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058436 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A058423 (n + 1)) : ℝ))

end

end A058435.P11819463829133295760

/-!
# A058436: Squares composed of digits {0,4,5}, not ending with zero.

The programs for A058436, there is no canonical definition to state claims against.
-/

/-! ## A058436.P9656472673879819576

`A058435(n+1)²`
-/

namespace A058436.P9656472673879819576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058435 (n + 1) ^ 2

end

end A058436.P9656472673879819576

/-! ## A058436.P11354250881864396724

`A058435(n+1)^A000005(A058383(n+1))`
-/

namespace A058436.P11354250881864396724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058435 (n + 1) : ℚ) ^ (A000005 (A058383 (n + 1)).toNat : ℤ)

end

end A058436.P11354250881864396724

/-! ## A058436.P16144536425779367568

`A058435(n+1)^A058435(A131299(n))`
-/

namespace A058436.P16144536425779367568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058435 (n + 1) : ℚ) ^ (A058435 (A131299 n).toNat : ℤ)

end

end A058436.P16144536425779367568

/-!
# A058437: Numbers k such that k^2 contains only digits {0,4,6}, not ending with zero.

The programs for A058437, there is no canonical definition to state claims against.
-/

/-! ## A058437.P3196114765728572046

`sqrt(A058438(n+1))`
-/

namespace A058437.P3196114765728572046
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A058438 (n + 1) : ℝ)

end

end A058437.P3196114765728572046

/-!
# A058438: Squares composed of digits {0,4,6}, not ending with zero.

The programs for A058438, there is no canonical definition to state claims against.
-/

/-! ## A058438.P14173979372173386240

`A058437(n+1)²`
-/

namespace A058438.P14173979372173386240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058437 (n + 1) ^ 2

end

end A058438.P14173979372173386240

/-!
# A058441: Numbers k such that k^2 contains only digits {0,4,8}, not ending with zero.

The programs for A058441, there is no canonical definition to state claims against.
-/

/-! ## A058441.P14426608905482615645

`sqrt(A058442(n+1))`
-/

namespace A058441.P14426608905482615645
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A058442 (n + 1) : ℝ)

end

end A058441.P14426608905482615645

/-! ## A058441.P15353600209245569031

`2*A058411(1+n)`
-/

namespace A058441.P15353600209245569031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058411 (1 + n)

end

end A058441.P15353600209245569031

/-! ## A058441.P8802752447062547553

`lcm(2, A058411(n+1))`
-/

namespace A058441.P8802752447062547553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A058411 (n + 1))

end

end A058441.P8802752447062547553

/-! ## A058441.P14963393019491938085

`A058411(n+1)+A058411(1+n)`
-/

namespace A058441.P14963393019491938085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058411 (n + 1) + A058411 (1 + n)

end

end A058441.P14963393019491938085

/-! ## A058441.P10676943521713057174

`2*sqrt(A058412(n+1))`
-/

namespace A058441.P10676943521713057174
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A058412 (n + 1) : ℝ)

end

end A058441.P10676943521713057174

/-!
# A058442: Squares composed of digits {0,4,8}, not ending with zero.

The programs for A058442, there is no canonical definition to state claims against.
-/

/-! ## A058442.P15561358573099184897

`A058441(n+1)²`
-/

namespace A058442.P15561358573099184897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058441 (n + 1) ^ 2

end

end A058442.P15561358573099184897

/-! ## A058442.P17920876693075116593

`(2*A058411(1+n))²`
-/

namespace A058442.P17920876693075116593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A058411 (1 + n)) ^ 2

end

end A058442.P17920876693075116593

/-! ## A058442.P17060687502852293033

`lcm(4, A058411(n+1)²)`
-/

namespace A058442.P17060687502852293033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A058411 (n + 1) ^ 2)

end

end A058442.P17060687502852293033

/-! ## A058442.P14940509176553994399

`2*A058411(n+1)*A058441(n+1)`
-/

namespace A058442.P14940509176553994399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A058411 (n + 1) * A058441 (n + 1))

end

end A058442.P14940509176553994399

/-! ## A058442.P5879695949190894385

`(A058411(A000027(n+1))+A058411(n+1))²`
-/

namespace A058442.P5879695949190894385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A058411 (A000027 (n + 1)).toNat + A058411 (n + 1)) ^ 2

end

end A058442.P5879695949190894385

/-! ## A058442.P11930980277559131772

`4*A058412(n+1)`
-/

namespace A058442.P11930980277559131772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A058412 (n + 1)

end

end A058442.P11930980277559131772

/-! ## A058442.P8946334221466735814

`(A058411(n+1)+A058412(n+1)/A058411(n+1))²`
-/

namespace A058442.P8946334221466735814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A058411 (n + 1) : ℚ) + (A058412 (n + 1) : ℚ) / (A058411 (n + 1) : ℚ)) ^ 2

end

end A058442.P8946334221466735814

/-!
# A058443: Numbers k such that k^2 contains only digits {0,4,9}, not ending with zero.

The programs for A058443, there is no canonical definition to state claims against.
-/

/-! ## A058443.P17468181108841342010

`sqrt(A058444(n+1))`
-/

namespace A058443.P17468181108841342010
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A058444 (n + 1) : ℝ)

end

end A058443.P17468181108841342010

/-!
# A058444: Squares composed of digits {0,4,9}, not ending with zero.

The programs for A058444, there is no canonical definition to state claims against.
-/

/-! ## A058444.P2261735250726951322

`A058443(n+1)²`
-/

namespace A058444.P2261735250726951322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058443 (n + 1) ^ 2

end

end A058444.P2261735250726951322

/-! ## A058444.P3098612620848552425

`A058443(A008619(2*n))^2`
-/

namespace A058444.P3098612620848552425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058443 (A008619 (2 * n)).toNat ^ 2

end

end A058444.P3098612620848552425

/-! ## A058444.P16798695995593637853

`record[A058443(A171181(n)+1)^2]`
-/

namespace A058444.P16798695995593637853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058443 (A171181 n + 1).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058444.P16798695995593637853

/-! ## A058444.P14950772636643181528

`A058443(A014682(n*2)+1)^2`
-/

namespace A058444.P14950772636643181528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058443 (A014682 (n * 2) + 1).toNat ^ 2

end

end A058444.P14950772636643181528

/-! ## A058444.P14053260486455746675

`A058443(A171181(n*2)+1)^2`
-/

namespace A058444.P14053260486455746675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058443 (A171181 (n * 2) + 1).toNat ^ 2

end

end A058444.P14053260486455746675

/-! ## A058444.P13910958988470625754

`A058443(n+1)*A058443(A008619(2*n))`
-/

namespace A058444.P13910958988470625754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058443 (n + 1) * A058443 (A008619 (2 * n)).toNat

end

end A058444.P13910958988470625754

/-!
# A058449: Numbers k such that k^2 contains only digits {0,6,7}, not ending with zero.

The programs for A058449, there is no canonical definition to state claims against.
-/

/-! ## A058449.P2971209738727393056

`sqrt(A058450(n+1))`
-/

namespace A058449.P2971209738727393056
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A058450 (n + 1) : ℝ)

end

end A058449.P2971209738727393056

/-!
# A058450: Squares composed of digits {0,6,7}, not ending with zero.

The programs for A058450, there is no canonical definition to state claims against.
-/

/-! ## A058450.P18431393148209197384

`A058449(n+1)²`
-/

namespace A058450.P18431393148209197384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058449 (n + 1) ^ 2

end

end A058450.P18431393148209197384

/-!
# A058451: Numbers k such that k^2 contains only digits {0,6,9}, not ending with zero.

The programs for A058451, there is no canonical definition to state claims against.
-/

/-! ## A058451.P3452581270451569574

`sqrt(A058452(n+1))`
-/

namespace A058451.P3452581270451569574
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A058452 (n + 1) : ℝ)

end

end A058451.P3452581270451569574

/-!
# A058452: Squares composed of digits {0,6,9}, not ending with zero.

The programs for A058452, there is no canonical definition to state claims against.
-/

/-! ## A058452.P9121811875272372831

`A058451(n+1)²`
-/

namespace A058452.P9121811875272372831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058451 (n + 1) ^ 2

end

end A058452.P9121811875272372831

/-!
# A058458: Squares composed of digits {2,3,6}.

The programs for A058458, there is no canonical definition to state claims against.
-/

/-! ## A058458.P6490477550439549195

`A058457(n+1)^2`
-/

namespace A058458.P6490477550439549195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058457 (n + 1) ^ 2

end

end A058458.P6490477550439549195

/-!
# A058465: Numbers k such that k^2 contains only digits {3,6,8}.

The programs for A058465, there is no canonical definition to state claims against.
-/

/-! ## A058465.P10001065692092830004

`sqrt(A058466(n+1))`
-/

namespace A058465.P10001065692092830004
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A058466 (n + 1) : ℝ)

end

end A058465.P10001065692092830004

/-!
# A058466: Squares composed of digits {3,6,8}.

The programs for A058466, there is no canonical definition to state claims against.
-/

/-! ## A058466.P15064725190112419583

`A058465(n+1)²`
-/

namespace A058466.P15064725190112419583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058465 (n + 1) ^ 2

end

end A058466.P15064725190112419583

/-!
# A058467: Numbers k such that k^2 contains only digits {3,8,9}.

The programs for A058467, there is no canonical definition to state claims against.
-/

/-! ## A058467.P12842238288211672923

`sqrt(A058468(n+1))`
-/

namespace A058467.P12842238288211672923
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A058468 (n + 1) : ℝ)

end

end A058467.P12842238288211672923

/-!
# A058468: Squares composed of digits {3,8,9}.

The programs for A058468, there is no canonical definition to state claims against.
-/

/-! ## A058468.P8597671550367648488

`A058467(n+1)²`
-/

namespace A058468.P8597671550367648488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058467 (n + 1) ^ 2

end

end A058468.P8597671550367648488

/-!
# A058475: Total number of interior nodes in all series-parallel networks with n labeled edges, multiple edges not allowed.

The programs for A058475, there is no canonical definition to state claims against.
-/

/-! ## A058475.P379152286724499421

`A058406(n)+A058388(n)`
-/

namespace A058475.P379152286724499421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058406 n + A058388 n

end

end A058475.P379152286724499421

/-! ## A058475.P753225875437703088

`A058388(n)-A058406(n)*A260196(n)`
-/

namespace A058475.P753225875437703088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058388 n - A058406 n * A260196 n

end

end A058475.P753225875437703088

/-!
# A058476: Total number of multiple edges in all essentially parallel series-parallel networks with n labeled edges, multiple edges allowed.

The programs for A058476, there is no canonical definition to state claims against.
-/

/-! ## A058476.P18377518354188790235

`xor(A058477(n), A178334(A003415(n)))`
-/

namespace A058476.P18377518354188790235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A058477 n) (A178334 (A003415 n).toNat)

end

end A058476.P18377518354188790235

/-! ## A058476.P3326164305593319971

`xor(A058477(n), A178334(A004526(n)))`
-/

namespace A058476.P3326164305593319971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A058477 n) (A178334 (A004526 n).toNat)

end

end A058476.P3326164305593319971

/-! ## A058476.P3682661669822491994

`xor(A058477(n), A178334(n-A178334(n)))`
-/

namespace A058476.P3682661669822491994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A058477 n) (A178334 ((n : ℤ) - A178334 n).toNat)

end

end A058476.P3682661669822491994

/-!
# A058477: Total number of multiple edges in all essentially series series-parallel networks with n labeled edges, multiple edges allowed.

The programs for A058477, there is no canonical definition to state claims against.
-/

/-! ## A058477.P1683524795100858949

`xor(char[A083221(2+n)], A058476(n))`
-/

namespace A058477.P1683524795100858949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083221 (2 + n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A058476 n)

end

end A058477.P1683524795100858949

/-! ## A058477.P7884771027466717322

`xor(char[A002375(n+7)], A058476(n))`
-/

namespace A058477.P7884771027466717322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 7)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A058476 n)

end

end A058477.P7884771027466717322

/-! ## A058477.P4793237107094778337

`xor(A058476(n), A178334(A003415(n)))`
-/

namespace A058477.P4793237107094778337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A058476 n) (A178334 (A003415 n).toNat)

end

end A058477.P4793237107094778337

/-! ## A058477.P10434413526762032604

`xor(A058476(n), A178334(A004526(n)))`
-/

namespace A058477.P10434413526762032604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A058476 n) (A178334 (A004526 n).toNat)

end

end A058477.P10434413526762032604

/-! ## A058477.P16983596442606496518

`xor(A058476(n), A178334(n-A178334(n)))`
-/

namespace A058477.P16983596442606496518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A058476 n) (A178334 ((n : ℤ) - A178334 n).toNat)

end

end A058477.P16983596442606496518

/-!
# A058478: Total number of interior nodes in all essentially series series-parallel networks with n labeled edges, multiple edges allowed.

The programs for A058478, there is no canonical definition to state claims against.
-/

/-! ## A058478.P10874305720598692385

`A058480(n)-A058479(n)`
-/

namespace A058478.P10874305720598692385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058480 n - A058479 n

end

end A058478.P10874305720598692385

/-! ## A058478.P7260222164650716089

`(n-1)*A000311(n)-A058479(n)`
-/

namespace A058478.P7260222164650716089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A000311 n - A058479 n

end

end A058478.P7260222164650716089

/-! ## A058478.P7164406577291290609

`A058480(n)+A057428(n)*A058479(n)`
-/

namespace A058478.P7164406577291290609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058480 n + A057428 n * A058479 n

end

end A058478.P7164406577291290609

/-! ## A058478.P6455716471659102439

`A000311(n)*A023443(n)-A058479(n)`
-/

namespace A058478.P6455716471659102439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000311 n * A023443 n - A058479 n

end

end A058478.P6455716471659102439

/-! ## A058478.P4717868913798298340

`A000311(n)*A023443(n)+A057428(n)*A058479(n)`
-/

namespace A058478.P4717868913798298340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000311 n * A023443 n + A057428 n * A058479 n

end

end A058478.P4717868913798298340

/-!
# A058479: Total number of interior nodes in all essentially parallel series-parallel networks with n labeled edges, multiple edges allowed.

The programs for A058479, there is no canonical definition to state claims against.
-/

/-! ## A058479.P14309932717571215648

`A058480(n)-A058478(n)`
-/

namespace A058479.P14309932717571215648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058480 n - A058478 n

end

end A058479.P14309932717571215648

/-! ## A058479.P10005816863753083572

`(n-1)*A000311(n)-A058478(n)`
-/

namespace A058479.P10005816863753083572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A000311 n - A058478 n

end

end A058479.P10005816863753083572

/-! ## A058479.P15481560732300632082

`A058480(n)%A058478(A233583(n+1))`
-/

namespace A058479.P15481560732300632082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058480 n) (A058478 (A233583 (n + 1)).toNat)

end

end A058479.P15481560732300632082

/-! ## A058479.P3567451722676175793

`A000311(n)*A023443(n)-A058478(n)`
-/

namespace A058479.P3567451722676175793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000311 n * A023443 n - A058478 n

end

end A058479.P3567451722676175793

/-! ## A058479.P8429698796047431493

`A058480(n)+A058478(n)*A165326(2*n)`
-/

namespace A058479.P8429698796047431493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058480 n + A058478 n * A165326 (2 * n)

end

end A058479.P8429698796047431493

/-! ## A058479.P17516810940353475755

`(A000311(n)*A023443(n))%A058478(A233583(n+1))`
-/

namespace A058479.P17516810940353475755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000311 n * A023443 n) (A058478 (A233583 (n + 1)).toNat)

end

end A058479.P17516810940353475755

/-! ## A058479.P3621358336541196348

`(A000311(n)*A259361(n²))%A058478(A233583(n+1))`
-/

namespace A058479.P3621358336541196348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000311 n * A259361 (n ^ 2)) (A058478 (A233583 (n + 1)).toNat)

end

end A058479.P3621358336541196348

/-!
# A058480: Total number of interior nodes in all series-parallel networks with n labeled edges, multiple edges allowed.

The programs for A058480, there is no canonical definition to state claims against.
-/

/-! ## A058480.P5796508349203179544

`(n-1)*A000311(n)`
-/

namespace A058480.P5796508349203179544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A000311 n

end

end A058480.P5796508349203179544

/-! ## A058480.P17699225240477767483

`A058479(n)+A058478(n)`
-/

namespace A058480.P17699225240477767483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058479 n + A058478 n

end

end A058480.P17699225240477767483

/-! ## A058480.P6309196201683667833

`A000311(n)*A023443(n)`
-/

namespace A058480.P6309196201683667833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000311 n * A023443 n

end

end A058480.P6309196201683667833

/-! ## A058480.P14853926760850681380

`abs(A000311(n)*A024000(n))`
-/

namespace A058480.P14853926760850681380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000311 n * A024000 n|

end

end A058480.P14853926760850681380

/-! ## A058480.P5478526050022459267

`A000311(n)*A259361(n²)`
-/

namespace A058480.P5478526050022459267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000311 n * A259361 (n ^ 2)

end

end A058480.P5478526050022459267

/-! ## A058480.P2419662982521692943

`A000311(n)*A289207(n+1)`
-/

namespace A058480.P2419662982521692943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000311 n * A289207 (n + 1)

end

end A058480.P2419662982521692943

/-!
# A058481: a(n) = 3^n - 2.

The programs for A058481, the canonical program `A058481.P14870397075544163787` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058481 has offset 1).

The definition of A058481 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^(n+1)-2` (program `A058481.P14870397075544163787`, by `A058481.P14870397075544163787.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A058481.P14870397075544163787

`3^(n+1)-2`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A058481

/-- `3^(n+1)-2` -/
def P14870397075544163787.Spec : Prop :=
  ∀ n, P14870397075544163787.a n = A058481 (n + 1)

theorem P14870397075544163787.correct : P14870397075544163787.Spec := by
  intro n
  simp only [A058481, Nat.add_sub_cancel]

end A058481

/-! ## A058481.P13243874417642619469

`ogf((1+3x)/(1-4x+3x^2))`
-/

namespace A058481.P13243874417642619469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -4, 3] n

end

end A058481.P13243874417642619469

namespace A058481

/-- `ogf((1+3x)/(1-4x+3x^2))` -/
def P13243874417642619469.Spec : Prop :=
  ∀ n, P13243874417642619469.a n = A058481 (n + 1)

end A058481

/-! ## A058481.P4434103371002818196

`3*a(n-1)+4` with `a(0)=1`
-/

namespace A058481.P4434103371002818196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + 4

end

end A058481.P4434103371002818196

namespace A058481

/-- `3*a(n-1)+4` -/
def P4434103371002818196.Spec : Prop :=
  ∀ n, (P4434103371002818196.a n : ℤ) = A058481 (n + 1)

theorem P4434103371002818196.correct : P4434103371002818196.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A058481, Nat.add_sub_cancel, A058481.P4434103371002818196.a, A058481.P14870397075544163787.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A058481, Nat.add_sub_cancel, A058481.P4434103371002818196.a, A058481.P14870397075544163787.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A058481

/-! ## A058481.P14095698809729464843

`or(1, 3*(3^n-1))`
-/

namespace A058481.P14095698809729464843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (3 * ((3 ^ n : ℤ) - 1))

end

end A058481.P14095698809729464843

namespace A058481

/-- `or(1, 3*(3^n-1))` -/
def P14095698809729464843.Spec : Prop :=
  ∀ n, P14095698809729464843.a n = A058481 (n + 1)

end A058481

/-! ## A058481.P451638926251627403

`xor(1, 3*(3^n-1))`
-/

namespace A058481.P451638926251627403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (3 * ((3 ^ n : ℤ) - 1))

end

end A058481.P451638926251627403

namespace A058481

/-- `xor(1, 3*(3^n-1))` -/
def P451638926251627403.Spec : Prop :=
  ∀ n, P451638926251627403.a n = A058481 (n + 1)

end A058481

/-! ## A058481.P10822002223431030831

`lcm(3, a(n-1))+4` with `a(0)=1`
-/

namespace A058481.P10822002223431030831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 3 (a (n - 1)) + 4

end

end A058481.P10822002223431030831

namespace A058481

/-- `lcm(3, a(n-1))+4` -/
def P10822002223431030831.Spec : Prop :=
  ∀ n, (P10822002223431030831.a n : ℤ) = A058481 (n + 1)

end A058481

/-! ## A058481.P4918837396189180286

`∑[3*a(n-1)]` with `a(0)=1, a(1)=6`
-/

namespace A058481.P4918837396189180286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058481.P4918837396189180286

namespace A058481

/-- `∑[3*a(n-1)]` -/
def P4918837396189180286.Spec : Prop :=
  ∀ n, (P4918837396189180286.a n : ℤ) = A058481 (n + 1)

end A058481

/-! ## A058481.P8961694537900666786

`record[3^abs(1-n)-2]`
-/

namespace A058481.P8961694537900666786
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (|1 - (n : ℤ)| : ℤ) - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058481.P8961694537900666786

namespace A058481

/-- `record[3^abs(1-n)-2]` -/
def P8961694537900666786.Spec : Prop :=
  ∀ n, P8961694537900666786.a n = (A058481 (n + 1) : ℚ)

end A058481

/-! ## A058481.P12843062185494154951

`abs(∑[lcm(2, 3^n)]-1)`
-/

namespace A058481.P12843062185494154951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (3 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1|

end

end A058481.P12843062185494154951

namespace A058481

/-- `abs(∑[lcm(2, 3^n)]-1)` -/
def P12843062185494154951.Spec : Prop :=
  ∀ n, P12843062185494154951.a n = A058481 (n + 1)

end A058481

/-! ## A058481.P5048595320915199803

`∑[Δ[3^n]-floor(acot(n))]`
-/

namespace A058481.P5048595320915199803
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058481.P5048595320915199803

namespace A058481

/-- `∑[Δ[3^n]-floor(acot(n))]` -/
def P5048595320915199803.Spec : Prop :=
  ∀ n, P5048595320915199803.a n = A058481 (n + 1)

end A058481

/-! ## A058481.P2243685244815244847

`∑[3^n*ceil(atan(n+1))]`
-/

namespace A058481.P2243685244815244847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * ⌈Real.arctan (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058481.P2243685244815244847

namespace A058481

/-- `∑[3^n*ceil(atan(n+1))]` -/
def P2243685244815244847.Spec : Prop :=
  ∀ n, P2243685244815244847.a n = A058481 (n + 1)

end A058481

/-! ## A058481.P17683423589789713633

`7-3*(1-a(n-1))` with `a(0)=1`
-/

namespace A058481.P17683423589789713633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  7 - 3 * (1 - a (n - 1))

end

end A058481.P17683423589789713633

namespace A058481

/-- `7-3*(1-a(n-1))` -/
def P17683423589789713633.Spec : Prop :=
  ∀ n, P17683423589789713633.a n = A058481 (n + 1)

theorem P17683423589789713633.correct : P17683423589789713633.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A058481, Nat.add_sub_cancel, A058481.P17683423589789713633.a, A058481.P14870397075544163787.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A058481, Nat.add_sub_cancel, A058481.P17683423589789713633.a, A058481.P14870397075544163787.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A058481

/-! ## A058481.P8262903251490483661

`a(n-1)+(a(n-1)+2)/(1-1/2)` with `a(0)=1`
-/

namespace A058481.P8262903251490483661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + 2) / (1 - (1 : ℚ) / 2)

end

end A058481.P8262903251490483661

namespace A058481

/-- `a(n-1)+(a(n-1)+2)/(1-1/2)` -/
def P8262903251490483661.Spec : Prop :=
  ∀ n, P8262903251490483661.a n = (A058481 (n + 1) : ℚ)

theorem P8262903251490483661.correct : P8262903251490483661.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A058481, Nat.add_sub_cancel, A058481.P8262903251490483661.a, A058481.P14870397075544163787.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A058481, Nat.add_sub_cancel, A058481.P8262903251490483661.a, A058481.P14870397075544163787.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A058481

/-! ## A058481.P5951868248894486137

`floor(a(n-1)+a(n-1)+a(n-1)+4)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A058481.P5951868248894486137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + 4))

end

end A058481.P5951868248894486137

namespace A058481

/-- `floor(a(n-1)+a(n-1)+a(n-1)+4)` -/
def P5951868248894486137.Spec : Prop :=
  ∀ n, (P5951868248894486137.a n : ℤ) = A058481 (n + 1)

theorem P5951868248894486137.correct : P5951868248894486137.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A058481, Nat.add_sub_cancel, A058481.P5951868248894486137.a, A058481.P14870397075544163787.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A058481, Nat.add_sub_cancel, A058481.P5951868248894486137.a, A058481.P14870397075544163787.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A058481

/-! ## A058481.P11396575530659228096

`∑[A099856(n)]`
-/

namespace A058481.P11396575530659228096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058481.P11396575530659228096

namespace A058481

/-- `∑[A099856(n)]` -/
def P11396575530659228096.Spec : Prop :=
  ∀ n, P11396575530659228096.a n = A058481 (n + 1)

end A058481

/-! ## A058481.P15240898001924076139

`A164123(Δ[n²])`
-/

namespace A058481.P15240898001924076139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164123 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A058481.P15240898001924076139

namespace A058481

/-- `A164123(Δ[n²])` -/
def P15240898001924076139.Spec : Prop :=
  ∀ n, P15240898001924076139.a n = A058481 (n + 1)

end A058481

/-! ## A058481.P5734433674363817906

`A167051(3*n+1)`
-/

namespace A058481.P5734433674363817906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167051 (3 * n + 1)

end

end A058481.P5734433674363817906

namespace A058481

/-- `A167051(3*n+1)` -/
def P5734433674363817906.Spec : Prop :=
  ∀ n, P5734433674363817906.a n = A058481 (n + 1)

end A058481

/-! ## A058481.P17546201960651162540

`∑[A182751(2*n+1)]`
-/

namespace A058481.P17546201960651162540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182751 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058481.P17546201960651162540

namespace A058481

/-- `∑[A182751(2*n+1)]` -/
def P17546201960651162540.Spec : Prop :=
  ∀ n, P17546201960651162540.a n = A058481 (n + 1)

end A058481

/-! ## A058481.P3132667710924340520

`A112027(3*n+n+1)`
-/

namespace A058481.P3132667710924340520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112027 (3 * n + (n + 1))

end

end A058481.P3132667710924340520

namespace A058481

/-- `A112027(3*n+n+1)` -/
def P3132667710924340520.Spec : Prop :=
  ∀ n, P3132667710924340520.a n = A058481 (n + 1)

end A058481

/-! ## A058481.P978575246198437318

`A008776(n)+a(n-1)` with `a(0)=1`
-/

namespace A058481.P978575246198437318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008776 n + a (n - 1)

end

end A058481.P978575246198437318

namespace A058481

/-- `A008776(n)+a(n-1)` -/
def P978575246198437318.Spec : Prop :=
  ∀ n, P978575246198437318.a n = A058481 (n + 1)

theorem P978575246198437318.correct : P978575246198437318.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A058481, Nat.add_sub_cancel, A058481.P978575246198437318.a, A058481.P14870397075544163787.a, A008776, A008776.P11088121667404015999.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A058481, Nat.add_sub_cancel, A058481.P978575246198437318.a, A058481.P14870397075544163787.a, A008776, A008776.P11088121667404015999.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A058481

/-!
# A058482: Number of 3 X n binary matrices with no zero rows or columns.

The programs for A058482, the canonical program `A058482.P12276682187950633990` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058482 has offset 1).

The definition of A058482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058482.P9810069265015787372

`ogf((1+14x+21x^2)/(1-11x+31x^2-21x^3))`
-/

namespace A058482.P9810069265015787372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 14, 21] [1, -11, 31, -21] n

end

end A058482.P9810069265015787372

namespace A058482

/-- `ogf((1+14x+21x^2)/(1-11x+31x^2-21x^3))` -/
def P9810069265015787372.Spec : Prop :=
  ∀ n, P9810069265015787372.a n = A058482 (n + 1)

end A058482

/-! ## A058482.P12276682187950633990

`7^(n+1)-3*3^(n+1)+3`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A058482

/-- `7^(n+1)-3*3^(n+1)+3` -/
def P12276682187950633990.Spec : Prop :=
  ∀ n, P12276682187950633990.a n = A058482 (n + 1)

theorem P12276682187950633990.correct : P12276682187950633990.Spec := by
  intro n
  simp only [A058482, Nat.add_sub_cancel]

end A058482

/-! ## A058482.P2458660408331800247

`11*a(n-1)-31*a(n-2)+21*a(n-3)` with `a(0)=1, a(1)=25, a(2)=265`
-/

namespace A058482.P2458660408331800247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 25, 265] fun n a =>
  11 * a (n - 1) - 31 * a (n - 2) + 21 * a (n - 3)

end

end A058482.P2458660408331800247

namespace A058482

/-- `11*a(n-1)-31*a(n-2)+21*a(n-3)` -/
def P2458660408331800247.Spec : Prop :=
  ∀ n, P2458660408331800247.a n = A058482 (n + 1)

theorem P2458660408331800247.correct : P2458660408331800247.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A058482, Nat.add_sub_cancel, A058482.P2458660408331800247.a, A058482.P12276682187950633990.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A058482, Nat.add_sub_cancel, A058482.P2458660408331800247.a, A058482.P12276682187950633990.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A058482

/-! ## A058482.P1835177645271927894

`7^(n+1)-∑[3*a(n-1)]` with `a(0)=6`
-/

namespace A058482.P1835177645271927894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ (n + 1) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A058482.P1835177645271927894

namespace A058482

/-- `7^(n+1)-∑[3*a(n-1)]` -/
def P1835177645271927894.Spec : Prop :=
  ∀ n, P1835177645271927894.a n = A058482 (n + 1)

end A058482

/-! ## A058482.P3175080851469519077

`xor(1, 3*a(n-1)-(7-4*7^n))` with `a(0)=1`
-/

namespace A058482.P3175080851469519077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 (3 * a (n - 1) - (7 - (4 * 7 ^ n : ℤ)))

end

end A058482.P3175080851469519077

namespace A058482

/-- `xor(1, 3*a(n-1)-(7-4*7^n))` -/
def P3175080851469519077.Spec : Prop :=
  ∀ n, P3175080851469519077.a n = A058482 (n + 1)

end A058482

/-!
# A058483: McKay-Thompson series of class 12E for the Monster group.

The programs for A058483, there is no canonical definition to state claims against.
-/

/-! ## A058483.P14471788911983088665

`A033999(n)*A112162(n)`
-/

namespace A058483.P14471788911983088665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112162 n

end

end A058483.P14471788911983088665

/-!
# A058484: McKay-Thompson series of class 12F for Monster.

The programs for A058484, there is no canonical definition to state claims against.
-/

/-! ## A058484.P457000014594740826

`A058485(n)+A058490(n)-A058492(n)`
-/

namespace A058484.P457000014594740826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058485 n + (A058490 n - A058492 n)

end

end A058484.P457000014594740826

/-! ## A058484.P13895806480981319088

`(A058490(n)+A058206(n))/2`
-/

namespace A058484.P13895806480981319088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058490 n + A058206 n : ℚ) / 2

end

end A058484.P13895806480981319088

/-! ## A058484.P14000793336877722453

`A058485(n)+A058492(n)-A058489(n)`
-/

namespace A058484.P14000793336877722453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058485 n + (A058492 n - A058489 n)

end

end A058484.P14000793336877722453

/-!
# A058485: McKay-Thompson series of class 12G for Monster.

The programs for A058485, there is no canonical definition to state claims against.
-/

/-! ## A058485.P11572138852722109735

`A058206(n)+A058492(n)-A058484(n)`
-/

namespace A058485.P11572138852722109735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058206 n + (A058492 n - A058484 n)

end

end A058485.P11572138852722109735

/-! ## A058485.P12325170921977081773

`A058484(n)+A058492(n)-A058490(n)`
-/

namespace A058485.P12325170921977081773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058484 n + (A058492 n - A058490 n)

end

end A058485.P12325170921977081773

/-! ## A058485.P11391465957848535115

`(A058489(n)+A058206(n))/2`
-/

namespace A058485.P11391465957848535115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058489 n + A058206 n : ℚ) / 2

end

end A058485.P11391465957848535115

/-! ## A058485.P8425036619493465626

`A058484(n)+A058489(n)-A058492(n)`
-/

namespace A058485.P8425036619493465626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058484 n + (A058489 n - A058492 n)

end

end A058485.P8425036619493465626

/-! ## A058485.P16391482467817857032

`∑{#}[n, A112161(#)*A112161(n-#)]`
-/

namespace A058485.P16391482467817857032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A112161 k * A112161 (n - k)

end

end A058485.P16391482467817857032

/-!
# A058487: McKay-Thompson series of class 12I for the Monster group.

The programs for A058487, there is no canonical definition to state claims against.
-/

/-! ## A058487.P7952013797478282865

`(-1)^n*A062243(n)`
-/

namespace A058487.P7952013797478282865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A062243 n

end

end A058487.P7952013797478282865

/-! ## A058487.P7522055211074599132

`A057079(n)*A112205(n)`
-/

namespace A058487.P7522055211074599132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A112205 n

end

end A058487.P7522055211074599132

/-! ## A058487.P16213771357260684976

`A112176(n)*A131713(n)`
-/

namespace A058487.P16213771357260684976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112176 n * A131713 n

end

end A058487.P16213771357260684976

/-! ## A058487.P3000399825989358910

`A062243(n)/A033999(n)`
-/

namespace A058487.P3000399825989358910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062243 n : ℚ) / (A033999 n : ℚ)

end

end A058487.P3000399825989358910

/-! ## A058487.P5685080764197347396

`(2-A057079(n)²)*A112176(n)`
-/

namespace A058487.P5685080764197347396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A057079 n ^ 2) * A112176 n

end

end A058487.P5685080764197347396

/-! ## A058487.P4332351368274195482

`A057079(4*n)*A112176(n)`
-/

namespace A058487.P4332351368274195482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (4 * n) * A112176 n

end

end A058487.P4332351368274195482

/-! ## A058487.P4897889985904514133

`A062243(n)*A186924(n)/A261320(n)`
-/

namespace A058487.P4897889985904514133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062243 n * A186924 n : ℚ) / (A261320 n : ℚ)

end

end A058487.P4897889985904514133

/-! ## A058487.P4148203675014101721

`∑{#}[n, A256626(#)*A256626(n-#)]`
-/

namespace A058487.P4148203675014101721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A256626 k * A256626 (n - k)

end

end A058487.P4148203675014101721

/-!
# A058488: Total number of interior nodes in all essentially parallel series-parallel networks with n unlabeled edges, multiple edges not allowed.

The programs for A058488, there is no canonical definition to state claims against.
-/

/-! ## A058488.P10218130311014037850

`ogf((x^2+2x^3+2x^5-2x^6+x^7)/(1-2x-2x^2))`
-/

namespace A058488.P10218130311014037850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 2, 0, 2, -2, 1] [1, -2, -2] n

end

end A058488.P10218130311014037850

/-! ## A058488.P1212583121697777324

`A132270(∑{d}[n+1, floor(cosh(#))]+2)`
-/

namespace A058488.P1212583121697777324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (∑ d ∈ Nat.divisors (f1 n), ⌊Real.cosh (d : ℝ)⌋ + 2).toNat

end

end A058488.P1212583121697777324

/-! ## A058488.P9140001807316303713

`A036234(a(n-1)*record[∑{p}[n, #]])` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A058488.P9140001807316303713
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A036234 (a (n - 1) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)).toNat

end

end A058488.P9140001807316303713

/-! ## A058488.P2310913165559123597

`A338228(A394285(n))`
-/

namespace A058488.P2310913165559123597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338228 (A394285 n).toNat

end

end A058488.P2310913165559123597

/-!
# A058489: McKay-Thompson series of class 12a for Monster.

The programs for A058489, there is no canonical definition to state claims against.
-/

/-! ## A058489.P17000349238930547446

`2*A058485(n)-A058206(n)`
-/

namespace A058489.P17000349238930547446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058485 n - A058206 n

end

end A058489.P17000349238930547446

/-! ## A058489.P10572832624938709658

`2*A058492(n)-A058490(n)`
-/

namespace A058489.P10572832624938709658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058492 n - A058490 n

end

end A058489.P10572832624938709658

/-! ## A058489.P14492352827489033033

`2*A058492(n)-abs(A156215(n))`
-/

namespace A058489.P14492352827489033033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058492 n - |A156215 n|

end

end A058489.P14492352827489033033

/-! ## A058489.P12624566192147221822

`A058485(n)+A058492(n)-A058484(n)`
-/

namespace A058489.P12624566192147221822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058485 n + (A058492 n - A058484 n)

end

end A058489.P12624566192147221822

/-! ## A058489.P5544506942629039935

`A058492(n)+A058492(n)-(2*A058484(n)-A058206(n))`
-/

namespace A058489.P5544506942629039935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058492 n + (A058492 n - (2 * A058484 n - A058206 n))

end

end A058489.P5544506942629039935

/-!
# A058490: Coefficients of replicable function number 12b.

The programs for A058490, there is no canonical definition to state claims against.
-/

/-! ## A058490.P5110088857903346616

`2*A058484(n)-A058206(n)`
-/

namespace A058490.P5110088857903346616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058484 n - A058206 n

end

end A058490.P5110088857903346616

/-! ## A058490.P9211017002366953171

`2*A058492(n)-A058489(n)`
-/

namespace A058490.P9211017002366953171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058492 n - A058489 n

end

end A058490.P9211017002366953171

/-! ## A058490.P18382773248157021245

`A058484(n)+A058492(n)-A058485(n)`
-/

namespace A058490.P18382773248157021245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058484 n + (A058492 n - A058485 n)

end

end A058490.P18382773248157021245

/-! ## A058490.P106548606384411328

`abs(A156215(n))`
-/

namespace A058490.P106548606384411328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156215 n|

end

end A058490.P106548606384411328

/-! ## A058490.P17559573654447860194

`A033999(n)*A156215(n)`
-/

namespace A058490.P17559573654447860194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A156215 n

end

end A058490.P17559573654447860194

/-! ## A058490.P6949164346565302780

`gcd(A000038(n), A156215(n))`
-/

namespace A058490.P6949164346565302780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A156215 n)

end

end A058490.P6949164346565302780

/-! ## A058490.P3733167506706191969

`lcm(A020985(n), A156215(n))`
-/

namespace A058490.P3733167506706191969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A156215 n)

end

end A058490.P3733167506706191969

/-! ## A058490.P11570995990246334812

`A054354(A054353(n+1))*A156215(n)`
-/

namespace A058490.P11570995990246334812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (A054353 (n + 1)).toNat * A156215 n

end

end A058490.P11570995990246334812

/-!
# A058492: McKay-Thompson series of class 12d for Monster.

The programs for A058492, there is no canonical definition to state claims against.
-/

/-! ## A058492.P1435913499366723400

`(-1)^n*A058571(n)`
-/

namespace A058492.P1435913499366723400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A058571 n

end

end A058492.P1435913499366723400

/-! ## A058492.P15908198743798377

`A058571(n)/A033999(A330396(n))`
-/

namespace A058492.P15908198743798377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058571 n : ℚ) / (A033999 (A330396 n).toNat : ℚ)

end

end A058492.P15908198743798377

/-! ## A058492.P12272658062223541218

`(A058490(n)+A058489(n))/2`
-/

namespace A058492.P12272658062223541218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058490 n + A058489 n : ℚ) / 2

end

end A058492.P12272658062223541218

/-! ## A058492.P605528767119238588

`A058571(n)*A105812(3*(n+1))`
-/

namespace A058492.P605528767119238588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058571 n * A105812 (3 * (n + 1))

end

end A058492.P605528767119238588

/-!
# A058493: McKay-Thompson series of class 12e for Monster.

The programs for A058493, there is no canonical definition to state claims against.
-/

/-! ## A058493.P12811379717339512235

`A049347(n)*A112149(n)`
-/

namespace A058493.P12811379717339512235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A112149 n

end

end A058493.P12811379717339512235

/-! ## A058493.P8523121317590980477

`A112149(n)*A257075(n)`
-/

namespace A058493.P8523121317590980477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112149 n * A257075 n

end

end A058493.P8523121317590980477

/-! ## A058493.P5989047850153568359

`∑[A131713(n)]*A112149(n)`
-/

namespace A058493.P5989047850153568359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A112149 n

end

end A058493.P5989047850153568359

/-! ## A058493.P395717757894564649

`Δ[A059126(n)]*A112149(n)`
-/

namespace A058493.P395717757894564649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A112149 n

end

end A058493.P395717757894564649

/-! ## A058493.P1317575384906875472

`Δ[A062756(n)]*A112149(n)`
-/

namespace A058493.P1317575384906875472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A112149 n

end

end A058493.P1317575384906875472

/-! ## A058493.P2676146629823315060

`A112149(n)*A343785(n+1)`
-/

namespace A058493.P2676146629823315060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112149 n * A343785 (n + 1)

end

end A058493.P2676146629823315060

/-! ## A058493.P8728540649664327188

`Δ[A059128(n)]*A112149(n)`
-/

namespace A058493.P8728540649664327188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A112149 n

end

end A058493.P8728540649664327188

/-! ## A058493.P12130001802525644605

`Δ[A133310(n)]*A112149(n)`
-/

namespace A058493.P12130001802525644605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A112149 n

end

end A058493.P12130001802525644605

/-!
# A058494: Total number of interior nodes in all essentially parallel series-parallel networks with n unlabeled edges, multiple edges allowed.

The programs for A058494, there is no canonical definition to state claims against.
-/

/-! ## A058494.P6426596925129796966

`A013939(A034836((n+1)!-char[1]))`
-/

namespace A058494.P6426596925129796966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (A034836 (Nat.factorial (n + 1) - (if ∃ j, f1 j = n then 1 else 0))).toNat

end

end A058494.P6426596925129796966

/-!
# A058495: Total number of multiple edges in all essentially parallel series-parallel networks with n unlabeled edges, multiple edges allowed.

The programs for A058495, there is no canonical definition to state claims against.
-/

/-! ## A058495.P15005833017002745696

`round(sqrt(A144223(n)/12))`
-/

namespace A058495.P15005833017002745696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A144223 n : ℚ) / 12 : ℝ))

end

end A058495.P15005833017002745696

/-! ## A058495.P8316637353081118782

`Δ[ceil(A035053(n+3)/7)]`
-/

namespace A058495.P8316637353081118782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035053 (n + 3) : ℚ) / 7⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A058495.P8316637353081118782

/-! ## A058495.P1154279444569480013

`ceil((2*(4^n-1)-n)/∑[A196355(n+1)])`
-/

namespace A058495.P1154279444569480013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * ((4 ^ n : ℤ) - 1) - (n : ℤ) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌉

end

end A058495.P1154279444569480013

/-! ## A058495.P536702492686350049

`A004525(A118974(n+1))`
-/

namespace A058495.P536702492686350049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A118974 (n + 1)).toNat

end

end A058495.P536702492686350049

/-!
# A058498: Number of solutions to c(1)t(1) + ... + c(n)t(n) = 0, where c(i) = +-1 for i>1, c(1) = t(1) = 1, t(i) = triangular numbers (A000217).

The programs for A058498, there is no canonical definition to state claims against.
-/

/-! ## A058498.P3941744565956012433

`A158380(n+1)/2`
-/

namespace A058498.P3941744565956012433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158380 (n + 1) : ℚ) / 2

end

end A058498.P3941744565956012433

/-! ## A058498.P17537100988528916851

`Δ[∑[A158380(n)]/2]`
-/

namespace A058498.P17537100988528916851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158380 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A058498.P17537100988528916851

/-! ## A058498.P10852120118678839475

`(n²%8)%3*A308682(n+1)`
-/

namespace A058498.P10852120118678839475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 % 8 % 3 : ℕ) : ℤ) * A308682 (n + 1)

end

end A058498.P10852120118678839475

/-! ## A058498.P3438562528548990946

`A131379(n+1)²*A308682(n+1)`
-/

namespace A058498.P3438562528548990946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131379 (n + 1) ^ 2 * A308682 (n + 1)

end

end A058498.P3438562528548990946

/-! ## A058498.P16317880638216258294

`A014682(A158380(n+1))`
-/

namespace A058498.P16317880638216258294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A158380 (n + 1)).toNat

end

end A058498.P16317880638216258294

/-!
# A058499: G.f.: Product_{j>=1} (1 - x^j)^(-A000084(j)).

The programs for A058499, there is no canonical definition to state claims against.
-/

/-! ## A058499.P15293466108062686609

`A099176(n)-A035026(A076615(n))`
-/

namespace A058499.P15293466108062686609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099176 n - A035026 (A076615 n).toNat

end

end A058499.P15293466108062686609

/-! ## A058499.P15807588604948016723

`A265947(n)+A378383(n)+A374744(A365756(n))`
-/

namespace A058499.P15807588604948016723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265947 n + (A378383 n + A374744 (A365756 n).toNat)

end

end A058499.P15807588604948016723

/-! ## A058499.P15169802376313316562

`A325038(a(n-1)+2)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=7`
-/

namespace A058499.P15169802376313316562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 7] fun n a =>
  A325038 (a (n - 1) + 2).toNat

end

end A058499.P15169802376313316562

