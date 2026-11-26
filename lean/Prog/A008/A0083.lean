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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C049
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B001.C015
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
# A008300: Triangle read by rows: T(n,k) (n >= 0, 0 <= k <= n) gives number of {0,1} n X n matrices with all row and column sums equal to k.

The programs for A008300, there is no canonical definition to state claims against.
-/

/-! ## A008300.P6534378614265072562

`A123258(A331406(n))`
-/

namespace A008300.P6534378614265072562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123258 (A331406 n).toNat

end

end A008300.P6534378614265072562

/-! ## A008300.P17755085642828102412

`A354768(A398244(n))`
-/

namespace A008300.P17755085642828102412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354768 (A398244 n).toNat

end

end A008300.P17755085642828102412

/-! ## A008300.P8792068550716078687

`A276094(A007318(n)!)`
-/

namespace A008300.P8792068550716078687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276094 (Nat.factorial (A007318 n).toNat)

end

end A008300.P8792068550716078687

/-! ## A008300.P3906315751965883859

`A143965(A202812(n+1))`
-/

namespace A008300.P3906315751965883859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143965 (A202812 (n + 1)).toNat

end

end A008300.P3906315751965883859

/-!
# A008301: Poupard's triangle: triangle of numbers arising in enumeration of binary trees.

The programs for A008301, there is no canonical definition to state claims against.
-/

/-! ## A008301.P16755663123531504554

`filter[A107652(n+1), A011655(#)]`
-/

namespace A008301.P16755663123531504554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A008301.P16755663123531504554

/-! ## A008301.P528564203613974202

`filter[A107652(n+1), A014578(#)]`
-/

namespace A008301.P528564203613974202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A008301.P528564203613974202

/-! ## A008301.P10348646472942194351

`filter[A107652(n+1), A097325(#)]`
-/

namespace A008301.P10348646472942194351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A008301.P10348646472942194351

/-! ## A008301.P3659792329483821938

`filter[A107652(n+1), A109720(#)]`
-/

namespace A008301.P3659792329483821938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109720 (f1 j).toNat = 1) n)

end

end A008301.P3659792329483821938

/-! ## A008301.P14713609428415769065

`filter[A107652(n+1), A131719(#)]`
-/

namespace A008301.P14713609428415769065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131719 (f1 j).toNat = 1) n)

end

end A008301.P14713609428415769065

/-!
# A008302: Triangle of Mahonian numbers T(n,k): coefficients in expansion of Product_{i=0..n-1} (1 + x + ... + x^i), where k ranges from 0 to A000217(n-1). Also enumerates permutations by their major index.

The programs for A008302, there is no canonical definition to state claims against.
-/

/-! ## A008302.P12187339780937697450

`A274887(1+n)`
-/

namespace A008302.P12187339780937697450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274887 (1 + n)

end

end A008302.P12187339780937697450

/-! ## A008302.P8019946853431873445

`ratio[A274887(n)]*a(n-1)` with `a(0)=1`
-/

namespace A008302.P8019946853431873445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274887 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * a (n - 1)

end

end A008302.P8019946853431873445

/-! ## A008302.P15437584507090385002

`ratio[A274887(n)]*A274887(n)`
-/

namespace A008302.P15437584507090385002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274887 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A274887 n : ℚ)

end

end A008302.P15437584507090385002

/-! ## A008302.P13083756654256429439

`Δ[∑[A274887(n)]%A000051(n)]`
-/

namespace A008302.P13083756654256429439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274887 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) (A000051 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008302.P13083756654256429439

/-! ## A008302.P1638760266446571170

`Δ[A000027(∑[A274887(n)])]`
-/

namespace A008302.P1638760266446571170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274887 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008302.P1638760266446571170

/-!
# A008303: Triangle read by rows: T(n,k) (n >= 1, 0 <= k <= ceiling(n/2)-1) = number of permutations of [n] with k peaks.

The programs for A008303, there is no canonical definition to state claims against.
-/

/-! ## A008303.P17244791042784579315

`A198895(comp[n²]+n)`
-/

namespace A008303.P17244791042784579315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198895 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A008303.P17244791042784579315

/-!
# A008304: Triangle read by rows: T(n,k) (n>=1; 1<=k<=n) is the number of permutations of [n] in which the longest increasing run has length k.

The programs for A008304, there is no canonical definition to state claims against.
-/

/-! ## A008304.P5271391124300227257

`A000006(A113370(n)*A348041(n+1))`
-/

namespace A008304.P5271391124300227257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A113370 n * A348041 (n + 1)).toNat

end

end A008304.P5271391124300227257

/-! ## A008304.P17701161481789544215

`A123088(∏{d}[A323182(n), #])`
-/

namespace A008304.P17701161481789544215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323182 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123088 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A008304.P17701161481789544215

/-! ## A008304.P10056335828371290104

`A002024(A026780(n)^A092905(n))`
-/

namespace A008304.P10056335828371290104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (SequenceMachineLib.roundAway ((A026780 n : ℚ) ^ (A092905 n : ℤ))).toNat

end

end A008304.P10056335828371290104

/-!
# A008305: Triangle read by rows: T(n,k) = number of permutations of [n] allowing i->i+j (mod n), j=0..k-1.

The programs for A008305, there is no canonical definition to state claims against.
-/

/-! ## A008305.P17450578466152982847

`A321352(A038722(n+1))`
-/

namespace A008305.P17450578466152982847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321352 (A038722 (n + 1)).toNat

end

end A008305.P17450578466152982847

/-! ## A008305.P4467791162265768296

`A306714(A099627(n))`
-/

namespace A008305.P4467791162265768296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306714 (A099627 n).toNat

end

end A008305.P4467791162265768296

/-! ## A008305.P5380602896786959681

`A110500(A133644(n+1))`
-/

namespace A008305.P5380602896786959681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110500 (A133644 (n + 1)).toNat

end

end A008305.P5380602896786959681

/-! ## A008305.P2117208188232087390

`A341537(A133643(n+1))`
-/

namespace A008305.P2117208188232087390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341537 (A133643 (n + 1)).toNat

end

end A008305.P2117208188232087390

/-! ## A008305.P4143807795850819051

`A225489(A355721(n))`
-/

namespace A008305.P4143807795850819051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225489 (A355721 n).toNat

end

end A008305.P4143807795850819051

/-!
# A008306: Triangle T(n,k) read by rows: associated Stirling numbers of first kind (n >= 2, 1 <= k <= floor(n/2)).

The programs for A008306, the canonical program `A008306.P15001032960454656419` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008306 has offset 2).

The definition of A008306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1225 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008306.P15001032960454656419

`A106828(A049068(1+n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A008306

/-- `A106828(A049068(1+n))` -/
def P15001032960454656419.Spec : Prop :=
  ∀ n, P15001032960454656419.a n = A008306 (n + 2)

theorem P15001032960454656419.correct : P15001032960454656419.Spec := by
  intro n
  simp only [A008306, Nat.add_sub_cancel]

end A008306

/-! ## A008306.P17432727919745102530

`A000267(n)*A112486(A091018(n))`
-/

namespace A008306.P17432727919745102530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n * A112486 (A091018 n).toNat

end

end A008306.P17432727919745102530

namespace A008306

/-- `A000267(n)*A112486(A091018(n))` -/
def P17432727919745102530.Spec : Prop :=
  ∀ n, P17432727919745102530.a n = A008306 (n + 2)

end A008306

/-! ## A008306.P11127327723053589875

`A259456(A091018(n))`
-/

namespace A008306.P11127327723053589875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259456 (A091018 n).toNat

end

end A008306.P11127327723053589875

namespace A008306

/-- `A259456(A091018(n))` -/
def P11127327723053589875.Spec : Prop :=
  ∀ n, P11127327723053589875.a n = A008306 (n + 2)

end A008306

/-! ## A008306.P4260989329189308376

`filter[A106828(n+1), A257680(#)]`
-/

namespace A008306.P4260989329189308376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257680 (f1 j).toNat = 1) n)

end

end A008306.P4260989329189308376

namespace A008306

/-- `filter[A106828(n+1), A257680(#)]` -/
def P4260989329189308376.Spec : Prop :=
  ∀ n, P4260989329189308376.a n = A008306 (n + 2)

end A008306

/-! ## A008306.P13305334841099287640

`filter[A106828(n+1), A276398(#)]`
-/

namespace A008306.P13305334841099287640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276398 (f1 j).toNat = 1) n)

end

end A008306.P13305334841099287640

namespace A008306

/-- `filter[A106828(n+1), A276398(#)]` -/
def P13305334841099287640.Spec : Prop :=
  ∀ n, P13305334841099287640.a n = A008306 (n + 2)

end A008306

/-!
# A008307: Table T(n,k) giving number of permutations of [1..n] with order dividing k, read by antidiagonals.

The programs for A008307, there is no canonical definition to state claims against.
-/

/-! ## A008307.P2155974577311961969

`gcd(A082858(A255918(n+1)), A333157(n))`
-/

namespace A008307.P2155974577311961969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A082858 (A255918 (n + 1)).toNat) (A333157 n)

end

end A008307.P2155974577311961969

/-! ## A008307.P16672090312475456093

`A007578(A109626(n+1))-A055641(A022112(n))`
-/

namespace A008307.P16672090312475456093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007578 (A109626 (n + 1)).toNat - A055641 (A022112 n).toNat

end

end A008307.P16672090312475456093

/-!
# A008308: Triangle of tangent numbers.

The programs for A008308, the canonical program `A008308.P12166395998688324628` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008308 has offset 1).

The definition of A008308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1446 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008308.P12166395998688324628

`A059419(comp[comp[n²+n]+n]+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008308

/-- `A059419(comp[comp[n²+n]+n]+1)` -/
def P12166395998688324628.Spec : Prop :=
  ∀ n, P12166395998688324628.a n = A008308 (n + 1)

theorem P12166395998688324628.correct : P12166395998688324628.Spec := by
  intro n
  simp only [A008308, Nat.add_sub_cancel]

end A008308

/-! ## A008308.P4116381712239640443

`filter[A059419(n+1), A276398(#)]`
-/

namespace A008308.P4116381712239640443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276398 (f1 j).toNat = 1) n)

end

end A008308.P4116381712239640443

namespace A008308

/-- `filter[A059419(n+1), A276398(#)]` -/
def P4116381712239640443.Spec : Prop :=
  ∀ n, P4116381712239640443.a n = A008308 (n + 1)

end A008308

/-! ## A008308.P4124582205753360923

`filter[A059419(n+1), A225183(#)]`
-/

namespace A008308.P4124582205753360923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A225183 (f1 j).toNat = 1) n)

end

end A008308.P4124582205753360923

namespace A008308

/-- `filter[A059419(n+1), A225183(#)]` -/
def P4124582205753360923.Spec : Prop :=
  ∀ n, P4124582205753360923.a n = A008308 (n + 1)

end A008308

/-!
# A008309: Triangle T(n,k) of arctangent numbers: expansion of arctan(x)^n/n!.

The programs for A008309, the canonical program `A008309.P1593060599352894748` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008309 has offset 1).

The definition of A008309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1260 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008309.P1593060599352894748

`A049218(eq[0, A111594(n)])`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A008309

/-- `A049218(eq[0, A111594(n)])` -/
def P1593060599352894748.Spec : Prop :=
  ∀ n, P1593060599352894748.a n = A008309 (n + 1)

theorem P1593060599352894748.correct : P1593060599352894748.Spec := by
  intro n
  simp only [A008309, Nat.add_sub_cancel]

end A008309

/-! ## A008309.P16981966139734583796

`A049218(A246705(n+1))`
-/

namespace A008309.P16981966139734583796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049218 (A246705 (n + 1)).toNat

end

end A008309.P16981966139734583796

namespace A008309

/-- `A049218(A246705(n+1))` -/
def P16981966139734583796.Spec : Prop :=
  ∀ n, P16981966139734583796.a n = A008309 (n + 1)

end A008309

/-!
# A008310: Triangle of coefficients of Chebyshev polynomials T_n(x).

The programs for A008310, the canonical program `A008310.P17268367655090345264` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008310 has offset 0).

The definition of A008310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008310.P10251830459046847730

`A028297(C(ceil(2*sqrt(n+1)), 2)-n-1)`
-/

namespace A008310.P10251830459046847730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028297 ((Nat.choose ⌈2 * Real.sqrt (n + 1 : ℝ)⌉.toNat 2 : ℤ) - (n : ℤ) - 1).toNat

end

end A008310.P10251830459046847730

namespace A008310

/-- `A028297(C(ceil(2*sqrt(n+1)), 2)-n-1)` -/
def P10251830459046847730.Spec : Prop :=
  ∀ n, P10251830459046847730.a n = A008310 n

end A008310

/-! ## A008310.P17268367655090345264

`A118800(A091995(n+1)-1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A008310

/-- `A118800(A091995(n+1)-1)` -/
def P17268367655090345264.Spec : Prop :=
  ∀ n, P17268367655090345264.a n = A008310 n

theorem P17268367655090345264.correct : P17268367655090345264.Spec := by
  intro n
  simp only [A008310]

end A008310

/-! ## A008310.P5390020574045086251

`A053120(lt[1, T(n-1,k-1)+T(n-2,k)])` with `a(0)=2`
-/

namespace A008310.P5390020574045086251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  SequenceMachineLib.triUpLeft f2 n + SequenceMachineLib.triUp2 f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A008310.P5390020574045086251

namespace A008310

/-- `A053120(lt[1, T(n-1,k-1)+T(n-2,k)])` -/
def P5390020574045086251.Spec : Prop :=
  ∀ n, P5390020574045086251.a n = A008310 n

end A008310

/-! ## A008310.P11456721653922983803

`A136523(eq[1, A128174(n+1)])`
-/

namespace A008310.P11456721653922983803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A008310.P11456721653922983803

namespace A008310

/-- `A136523(eq[1, A128174(n+1)])` -/
def P11456721653922983803.Spec : Prop :=
  ∀ n, P11456721653922983803.a n = A008310 n

end A008310

/-! ## A008310.P12645945999038160279

`A137422(lt[1, (4-3*(-1)^col(n))²])`
-/

namespace A008310.P12645945999038160279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - 3 * (-1) ^ SequenceMachineLib.triCol n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137422 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A008310.P12645945999038160279

namespace A008310

/-- `A137422(lt[1, (4-3*(-1)^col(n))²])` -/
def P12645945999038160279.Spec : Prop :=
  ∀ n, P12645945999038160279.a n = A008310 n

end A008310

/-! ## A008310.P9515844376641075243

`A136523(eq[0, A053120(n)])`
-/

namespace A008310.P9515844376641075243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A008310.P9515844376641075243

namespace A008310

/-- `A136523(eq[0, A053120(n)])` -/
def P9515844376641075243.Spec : Prop :=
  ∀ n, P9515844376641075243.a n = A008310 n

end A008310

/-! ## A008310.P11215709176626022659

`A118800(A090894(n))`
-/

namespace A008310.P11215709176626022659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118800 (A090894 n).toNat

end

end A008310.P11215709176626022659

namespace A008310

/-- `A118800(A090894(n))` -/
def P11215709176626022659.Spec : Prop :=
  ∀ n, P11215709176626022659.a n = A008310 n

end A008310

/-!
# A008311: Triangle of expansions of powers of x in terms of Chebyshev polynomials T_n (x).

The programs for A008311, the canonical program `A008311.P16507071146551103518` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008311 has offset 0).

The definition of A008311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008311.P10081558939097935013

`A034869(n)-A111417(n)`
-/

namespace A008311.P10081558939097935013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034869 n - A111417 n

end

end A008311.P10081558939097935013

namespace A008311

/-- `A034869(n)-A111417(n)` -/
def P10081558939097935013.Spec : Prop :=
  ∀ n, P10081558939097935013.a n = A008311 n

theorem P10081558939097935013.correct : P10081558939097935013.Spec := by
  intro n
  simp only [A008311, Nat.add_sub_cancel, A008311.P10081558939097935013.a, A008311.P16507071146551103518.a, A008314, A008314.P17030209366717782596.a, A028391, A028391.P17198271841435315725.a, A034869, A034869.P2608600676671799699.a, A082375, A082375.P11690082017939293058.a, A111417, A111417.P11402666711727375550.a, A000034, A000034.P10773112074177680709.a, A028330, A028330.P6625420377303343371.a, A029666, A029666.P12567084913895410295.a, A034868, A034868.P12965043593595847904.a, A070824, A070824.P8619364737303502474.f1, A070824.P8619364737303502474.a, A122197, A122197.P4223396972267691169.a, A199474, A199474.P17289938978720021697.a, A014413, A014413.P15091523655481802005.a, A029632, A029632.P1805722220011820677.f1, A029632.P1805722220011820677.f2, A029632.P1805722220011820677.a, A055086, A055086.P18168198331367643999.a, A055087, A055087.P7292023998189211287.a, A029620, A029620.P15826279049411047125.f2, A029620.P15826279049411047125.f1, A029620.P15826279049411047125.a, A029621, A029621.P3765941121051379767.a, A091995, A091995.P16558306300262697301.a, A178300, A178300.P4009562931251449977.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A008311

/-! ## A008311.P16507071146551103518

`A008314(A082375(n)+A028391(n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A008311

/-- `A008314(A082375(n)+A028391(n))` -/
def P16507071146551103518.Spec : Prop :=
  ∀ n, P16507071146551103518.a n = A008311 n

theorem P16507071146551103518.correct : P16507071146551103518.Spec := by
  intro n
  simp only [A008311]

end A008311

/-! ## A008311.P777471032125687618

`gcd(A034869(A028310(n)), A111417(n))`
-/

namespace A008311.P777471032125687618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034869 (A028310 n).toNat) (A111417 n)

end

end A008311.P777471032125687618

namespace A008311

/-- `gcd(A034869(A028310(n)), A111417(n))` -/
def P777471032125687618.Spec : Prop :=
  ∀ n, (P777471032125687618.a n : ℤ) = A008311 n

end A008311

/-! ## A008311.P9842367027009490421

`A029648(n)-(A111417(n)+A014413(n+1))`
-/

namespace A008311.P9842367027009490421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029648 n - (A111417 n + A014413 (n + 1))

end

end A008311.P9842367027009490421

namespace A008311

/-- `A029648(n)-(A111417(n)+A014413(n+1))` -/
def P9842367027009490421.Spec : Prop :=
  ∀ n, P9842367027009490421.a n = A008311 n

end A008311

/-! ## A008311.P5263204758245525957

`A034869(n)/Δ[A164514(n+1)]`
-/

namespace A008311.P5263204758245525957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164514 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034869 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A008311.P5263204758245525957

namespace A008311

/-- `A034869(n)/Δ[A164514(n+1)]` -/
def P5263204758245525957.Spec : Prop :=
  ∀ n, P5263204758245525957.a n = (A008311 n : ℚ)

end A008311

/-! ## A008311.P13707022639400232195

`A034869(n-A000194(n)%A000194(n+1))`
-/

namespace A008311.P13707022639400232195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034869 ((n : ℤ) - Int.tmod (A000194 n) (A000194 (n + 1))).toNat

end

end A008311.P13707022639400232195

namespace A008311

/-- `A034869(n-A000194(n)%A000194(n+1))` -/
def P13707022639400232195.Spec : Prop :=
  ∀ n, P13707022639400232195.a n = A008311 n

end A008311

/-! ## A008311.P14391661445649096967

`A008314(A271647(n+1)-1)`
-/

namespace A008311.P14391661445649096967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008314 (A271647 (n + 1) - 1).toNat

end

end A008311.P14391661445649096967

namespace A008311

/-- `A008314(A271647(n+1)-1)` -/
def P14391661445649096967.Spec : Prop :=
  ∀ n, P14391661445649096967.a n = A008311 n

end A008311

/-! ## A008311.P14973724896069487397

`A008314(A271647(n+2))`
-/

namespace A008311.P14973724896069487397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008314 (A271647 (n + 2)).toNat

end

end A008311.P14973724896069487397

namespace A008311

/-- `A008314(A271647(n+2))` -/
def P14973724896069487397.Spec : Prop :=
  ∀ n, P14973724896069487397.a n = A008311 n

end A008311

/-! ## A008311.P6503535534026215301

`runs[fp[A008949(n)]]`
-/

namespace A008311.P6503535534026215301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A008311.P6503535534026215301

namespace A008311

/-- `runs[fp[A008949(n)]]` -/
def P6503535534026215301.Spec : Prop :=
  ∀ n, (P6503535534026215301.a n : ℤ) = A008311 n

end A008311

/-! ## A008311.P7324279661535888144

`runs[fp[A193820(n)]]`
-/

namespace A008311.P7324279661535888144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193820 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A008311.P7324279661535888144

namespace A008311

/-- `runs[fp[A193820(n)]]` -/
def P7324279661535888144.Spec : Prop :=
  ∀ n, (P7324279661535888144.a n : ℤ) = A008311 n

end A008311

/-!
# A008312: Triangle of coefficients of Chebyshev polynomials U_n(x).

The programs for A008312, the canonical program `A008312.P13663741357599349606` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008312 has offset 0).

The definition of A008312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5035 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008312.P13663741357599349606

`A053117(eq[1, xor(1, T(n-1,k))])` with `a(0)=1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A008312

/-- `A053117(eq[1, xor(1, T(n-1,k))])` -/
def P13663741357599349606.Spec : Prop :=
  ∀ n, P13663741357599349606.a n = A008312 n

theorem P13663741357599349606.correct : P13663741357599349606.Spec := by
  intro n
  simp only [A008312]

end A008312

/-! ## A008312.P461738735594786944

`A065109(A090894(n))`
-/

namespace A008312.P461738735594786944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065109 (A090894 n).toNat

end

end A008312.P461738735594786944

namespace A008312

/-- `A065109(A090894(n))` -/
def P461738735594786944.Spec : Prop :=
  ∀ n, P461738735594786944.a n = A008312 n

end A008312

/-! ## A008312.P8006606651596405005

`A143576(A246706(n+1))`
-/

namespace A008312.P8006606651596405005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143576 (A246706 (n + 1)).toNat

end

end A008312.P8006606651596405005

namespace A008312

/-- `A143576(A246706(n+1))` -/
def P8006606651596405005.Spec : Prop :=
  ∀ n, P8006606651596405005.a n = A008312 n

end A008312

/-!
# A008313: Triangle of expansions of powers of x in terms of Chebyshev polynomials U_n(x).

The programs for A008313, the canonical program `A008313.P7466062722273303324` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008313 has offset 0).

The definition of A008313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008313.P3977152778617033844

`A120730(lt[0, A120730(n)])`
-/

namespace A008313.P3977152778617033844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120730 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A008313.P3977152778617033844

namespace A008313

/-- `A120730(lt[0, A120730(n)])` -/
def P3977152778617033844.Spec : Prop :=
  ∀ n, P3977152778617033844.a n = A008313 n

end A008313

/-! ## A008313.P711002018804267141

`A029614(n)-A029632(n)`
-/

namespace A008313.P711002018804267141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029614 n - A029632 n

end

end A008313.P711002018804267141

namespace A008313

/-- `A029614(n)-A029632(n)` -/
def P711002018804267141.Spec : Prop :=
  ∀ n, P711002018804267141.a n = A008313 n

theorem P711002018804267141.correct : P711002018804267141.Spec := by
  intro n
  simp only [A008313, Nat.add_sub_cancel, A008313.P711002018804267141.a, A008313.P7466062722273303324.a, A008311, A008311.P16507071146551103518.a, A029614, A029614.P3750468161563103685.a, A029632, A029632.P1805722220011820677.f1, A029632.P1805722220011820677.f2, A029632.P1805722220011820677.a, A008314, A008314.P17030209366717782596.a, A028391, A028391.P17198271841435315725.a, A029620, A029620.P15826279049411047125.f2, A029620.P15826279049411047125.f1, A029620.P15826279049411047125.a, A029621, A029621.P3765941121051379767.a, A082375, A082375.P11690082017939293058.a, A000034, A000034.P10773112074177680709.a, A029618, A029618.P10489059941068420010.a, A029655, A029655.P14912270738703485013.a, A034868, A034868.P12965043593595847904.a, A070824, A070824.P8619364737303502474.f1, A070824.P8619364737303502474.a, A122197, A122197.P4223396972267691169.a, A199474, A199474.P17289938978720021697.a, A206735, A206735.P15606171917528502899.a, A007318, A007318.P11755526479805562006.a, A055086, A055086.P18168198331367643999.a, A055087, A055087.P7292023998189211287.a, A073424, A073424.P15285082429945185433.a, A325191, A325191.P1948114789834443761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A008313

/-! ## A008313.P1180715619462562114

`A029648(n)-A029666(n)`
-/

namespace A008313.P1180715619462562114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029648 n - A029666 n

end

end A008313.P1180715619462562114

namespace A008313

/-- `A029648(n)-A029666(n)` -/
def P1180715619462562114.Spec : Prop :=
  ∀ n, P1180715619462562114.a n = A008313 n

theorem P1180715619462562114.correct : P1180715619462562114.Spec := by
  intro n
  simp only [A008313, Nat.add_sub_cancel, A008313.P1180715619462562114.a, A008313.P7466062722273303324.a, A008311, A008311.P16507071146551103518.a, A029648, A029648.P5252646046348079995.a, A029666, A029666.P12567084913895410295.a, A008314, A008314.P17030209366717782596.a, A014413, A014413.P15091523655481802005.a, A028391, A028391.P17198271841435315725.a, A029632, A029632.P1805722220011820677.f1, A029632.P1805722220011820677.f2, A029632.P1805722220011820677.a, A082375, A082375.P11690082017939293058.a, A000034, A000034.P10773112074177680709.a, A029620, A029620.P15826279049411047125.f2, A029620.P15826279049411047125.f1, A029620.P15826279049411047125.a, A029621, A029621.P3765941121051379767.a, A034868, A034868.P12965043593595847904.a, A070824, A070824.P8619364737303502474.f1, A070824.P8619364737303502474.a, A091995, A091995.P16558306300262697301.a, A122197, A122197.P4223396972267691169.a, A178300, A178300.P4009562931251449977.a, A199474, A199474.P17289938978720021697.a, A000267, A000267.P8737011026442136894.a, A029618, A029618.P10489059941068420010.a, A029655, A029655.P14912270738703485013.a, A055086, A055086.P18168198331367643999.a, A055087, A055087.P7292023998189211287.a, A161680, A161680.P17206074215489759881.a, A206735, A206735.P15606171917528502899.a, A322832, A322832.P4257575422464920388.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A008313

/-! ## A008313.P10094659554193384302

`2*A034869(n)-A014413(n+1)`
-/

namespace A008313.P10094659554193384302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034869 n - A014413 (n + 1)

end

end A008313.P10094659554193384302

namespace A008313

/-- `2*A034869(n)-A014413(n+1)` -/
def P10094659554193384302.Spec : Prop :=
  ∀ n, P10094659554193384302.a n = A008313 n

end A008313

/-! ## A008313.P7466062722273303324

`A008311(n)-A008311(n+1)%A008311(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A008313

/-- `A008311(n)-A008311(n+1)%A008311(n)` -/
def P7466062722273303324.Spec : Prop :=
  ∀ n, P7466062722273303324.a n = A008313 n

theorem P7466062722273303324.correct : P7466062722273303324.Spec := by
  intro n
  simp only [A008313]

end A008313

/-! ## A008313.P3292141462739535642

`A034869(n)-A034869(n+1)%A034869(n)`
-/

namespace A008313.P3292141462739535642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034869 n - Int.tmod (A034869 (n + 1)) (A034869 n)

end

end A008313.P3292141462739535642

namespace A008313

/-- `A034869(n)-A034869(n+1)%A034869(n)` -/
def P3292141462739535642.Spec : Prop :=
  ∀ n, P3292141462739535642.a n = A008313 n

end A008313

/-! ## A008313.P7863280183395131429

`A053121(eq[1, 1-T(n-1,k)])` with `a(0)=1`
-/

namespace A008313.P7863280183395131429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - SequenceMachineLib.triUp f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A008313.P7863280183395131429

namespace A008313

/-- `A053121(eq[1, 1-T(n-1,k)])` -/
def P7863280183395131429.Spec : Prop :=
  ∀ n, P7863280183395131429.a n = A008313 n

end A008313

/-! ## A008313.P4385499416854727242

`filter[A053121(n), ceil(2/(#+1))]`
-/

namespace A008313.P4385499416854727242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ⌈2 / (f1 j + 1 : ℚ)⌉ = 1) n)

end

end A008313.P4385499416854727242

namespace A008313

/-- `filter[A053121(n), ceil(2/(#+1))]` -/
def P4385499416854727242.Spec : Prop :=
  ∀ n, P4385499416854727242.a n = A008313 n

end A008313

/-! ## A008313.P7325237256120669682

`A008315(A056537(A091995(n+2)))`
-/

namespace A008313.P7325237256120669682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 (A056537 (A091995 (n + 2)).toNat).toNat

end

end A008313.P7325237256120669682

namespace A008313

/-- `A008315(A056537(A091995(n+2)))` -/
def P7325237256120669682.Spec : Prop :=
  ∀ n, P7325237256120669682.a n = A008313 n

end A008313

/-! ## A008313.P14200860480515619567

`A156644(lt[0, A156644(n)])`
-/

namespace A008313.P14200860480515619567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156644 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A008313.P14200860480515619567

namespace A008313

/-- `A156644(lt[0, A156644(n)])` -/
def P14200860480515619567.Spec : Prop :=
  ∀ n, P14200860480515619567.a n = A008313 n

end A008313

/-! ## A008313.P15519430091014036062

`A008482(eq[0, A052553(n)])`
-/

namespace A008313.P15519430091014036062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008482 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A008313.P15519430091014036062

namespace A008313

/-- `A008482(eq[0, A052553(n)])` -/
def P15519430091014036062.Spec : Prop :=
  ∀ n, P15519430091014036062.a n = A008313 n

end A008313

/-! ## A008313.P18297009304961727984

`A112467(lt[0, n*A112467(n)])`
-/

namespace A008313.P18297009304961727984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A112467 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A008313.P18297009304961727984

namespace A008313

/-- `A112467(lt[0, n*A112467(n)])` -/
def P18297009304961727984.Spec : Prop :=
  ∀ n, P18297009304961727984.a n = A008313 n

end A008313

/-! ## A008313.P2349008760797859683

`A112467(lt[0, A141692(n)])`
-/

namespace A008313.P2349008760797859683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A008313.P2349008760797859683

namespace A008313

/-- `A112467(lt[0, A141692(n)])` -/
def P2349008760797859683.Spec : Prop :=
  ∀ n, P2349008760797859683.a n = A008313 n

end A008313

/-! ## A008313.P4762072729733173880

`A047072(lt[A133825(2*n), A133825(2*n+1)])`
-/

namespace A008313.P4762072729733173880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133825 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133825 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047072 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A008313.P4762072729733173880

namespace A008313

/-- `A047072(lt[A133825(2*n), A133825(2*n+1)])` -/
def P4762072729733173880.Spec : Prop :=
  ∀ n, P4762072729733173880.a n = A008313 n

end A008313

/-!
# A008314: Irregular triangle read by rows: one half of the coefficients of the expansion of (2*x)^n in terms of Chebyshev T-polynomials.

The programs for A008314, the canonical program `A008314.P17030209366717782596` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008314 has offset 0).

The definition of A008314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008314.P17030209366717782596

`A034868(n)/A000034(A070824(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A008314

/-- `A034868(n)/A000034(A070824(n+1))` -/
def P17030209366717782596.Spec : Prop :=
  ∀ n, P17030209366717782596.a n = (A008314 n : ℚ)

end A008314

/-! ## A008314.P17591275990943031382

`A100257(lt[0, A100257(n)])`
-/

namespace A008314.P17591275990943031382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A008314.P17591275990943031382

namespace A008314

/-- `A100257(lt[0, A100257(n)])` -/
def P17591275990943031382.Spec : Prop :=
  ∀ n, P17591275990943031382.a n = A008314 n

end A008314

/-!
# A008315: Catalan triangle read by rows. Also triangle of expansions of powers of x in terms of Chebyshev polynomials U_n(x).

The programs for A008315, the canonical program `A008315.P15103667333557069867` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008315 has offset 0).

The definition of A008315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008315.P17808599115713243566

`A029628(n)-A029610(n)`
-/

namespace A008315.P17808599115713243566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029628 n - A029610 n

end

end A008315.P17808599115713243566

namespace A008315

/-- `A029628(n)-A029610(n)` -/
def P17808599115713243566.Spec : Prop :=
  ∀ n, P17808599115713243566.a n = A008315 n

theorem P17808599115713243566.correct : P17808599115713243566.Spec := by
  intro n
  simp only [A008315, Nat.add_sub_cancel, A008315.P17808599115713243566.a, A008315.P15103667333557069867.a, A014462, A014462.P14691259310245244798.a, A029610, A029610.P915263053335155690.a, A029628, A029628.P6623095559692305680.a, A034868, A034868.P12965043593595847904.a, A000267, A000267.P8737011026442136894.a, A055086, A055086.P18168198331367643999.a, A055087, A055087.P7292023998189211287.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A008315

/-! ## A008315.P4403107706338654834

`A029662(n)-A029644(n)`
-/

namespace A008315.P4403107706338654834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029662 n - A029644 n

end

end A008315.P4403107706338654834

namespace A008315

/-- `A029662(n)-A029644(n)` -/
def P4403107706338654834.Spec : Prop :=
  ∀ n, P4403107706338654834.a n = A008315 n

theorem P4403107706338654834.correct : P4403107706338654834.Spec := by
  intro n
  simp only [A008315, Nat.add_sub_cancel, A008315.P4403107706338654834.a, A008315.P15103667333557069867.a, A014462, A014462.P14691259310245244798.a, A029644, A029644.P14451125049666601969.a, A029662, A029662.P6655327354340354651.a, A034868, A034868.P12965043593595847904.a, A000267, A000267.P8737011026442136894.a, A055086, A055086.P18168198331367643999.a, A055087, A055087.P7292023998189211287.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A008315

/-! ## A008315.P17909344269444796355

`A298637(n)/(A082375(n)+1)`
-/

namespace A008315.P17909344269444796355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298637 n : ℚ) / (A082375 n + 1 : ℚ)

end

end A008315.P17909344269444796355

namespace A008315

/-- `A298637(n)/(A082375(n)+1)` -/
def P17909344269444796355.Spec : Prop :=
  ∀ n, P17909344269444796355.a n = (A008315 n : ℚ)

end A008315

/-! ## A008315.P17701518422848994510

`A298637(n)/A122196(n+1)`
-/

namespace A008315.P17701518422848994510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298637 n : ℚ) / (A122196 (n + 1) : ℚ)

end

end A008315.P17701518422848994510

namespace A008315

/-- `A298637(n)/A122196(n+1)` -/
def P17701518422848994510.Spec : Prop :=
  ∀ n, P17701518422848994510.a n = (A008315 n : ℚ)

end A008315

/-! ## A008315.P15103667333557069867

`2*A034868(n)-A014462(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A008315

/-- `2*A034868(n)-A014462(n+1)` -/
def P15103667333557069867.Spec : Prop :=
  ∀ n, P15103667333557069867.a n = A008315 n

theorem P15103667333557069867.correct : P15103667333557069867.Spec := by
  intro n
  simp only [A008315]

end A008315

/-! ## A008315.P16867656187248489092

`A298637(n)/A008619(A152204(n))`
-/

namespace A008315.P16867656187248489092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298637 n : ℚ) / (A008619 (A152204 n).toNat : ℚ)

end

end A008315.P16867656187248489092

namespace A008315

/-- `A298637(n)/A008619(A152204(n))` -/
def P16867656187248489092.Spec : Prop :=
  ∀ n, P16867656187248489092.a n = (A008315 n : ℚ)

end A008315

/-! ## A008315.P4351975542642384432

`A208101(2*n-floor(sqrt(n)))`
-/

namespace A008315.P4351975542642384432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208101 (2 * n - Nat.sqrt n)

end

end A008315.P4351975542642384432

namespace A008315

/-- `A208101(2*n-floor(sqrt(n)))` -/
def P4351975542642384432.Spec : Prop :=
  ∀ n, P4351975542642384432.a n = A008315 n

end A008315

/-! ## A008315.P14424840768483984543

`A009766(A091018(n))`
-/

namespace A008315.P14424840768483984543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (A091018 n).toNat

end

end A008315.P14424840768483984543

namespace A008315

/-- `A009766(A091018(n))` -/
def P14424840768483984543.Spec : Prop :=
  ∀ n, P14424840768483984543.a n = A008315 n

end A008315

/-! ## A008315.P7085626450316420953

`A080233(lt[0, A080233(n)])`
-/

namespace A008315.P7085626450316420953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A008315.P7085626450316420953

namespace A008315

/-- `A080233(lt[0, A080233(n)])` -/
def P7085626450316420953.Spec : Prop :=
  ∀ n, P7085626450316420953.a n = A008315 n

end A008315

/-! ## A008315.P14983750029111749225

`A052173(lt[0, A052173(n)])`
-/

namespace A008315.P14983750029111749225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052173 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052173 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A008315.P14983750029111749225

namespace A008315

/-- `A052173(lt[0, A052173(n)])` -/
def P14983750029111749225.Spec : Prop :=
  ∀ n, P14983750029111749225.a n = A008315 n

end A008315

/-! ## A008315.P16922482721208072135

`A037012(eq[0, A026729(n)])`
-/

namespace A008315.P16922482721208072135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A008315.P16922482721208072135

namespace A008315

/-- `A037012(eq[0, A026729(n)])` -/
def P16922482721208072135.Spec : Prop :=
  ∀ n, P16922482721208072135.a n = A008315 n

end A008315

/-! ## A008315.P8401545356497692935

`A047072(lt[A133825(2*n+1), A133825(2*n)])`
-/

namespace A008315.P8401545356497692935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133825 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133825 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047072 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A008315.P8401545356497692935

namespace A008315

/-- `A047072(lt[A133825(2*n+1), A133825(2*n)])` -/
def P8401545356497692935.Spec : Prop :=
  ∀ n, P8401545356497692935.a n = A008315 n

end A008315

/-! ## A008315.P2386211771192637223

`A118344(eq[A049581(n), A114327(n)])`
-/

namespace A008315.P2386211771192637223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118344 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A008315.P2386211771192637223

namespace A008315

/-- `A118344(eq[A049581(n), A114327(n)])` -/
def P2386211771192637223.Spec : Prop :=
  ∀ n, P2386211771192637223.a n = A008315 n

end A008315

/-!
# A008316: Triangle of coefficients of Legendre polynomials P_n (x).

The programs for A008316, there is no canonical definition to state claims against.
-/

/-! ## A008316.P16854960010633744913

`A100258(comp[comp[n+n²]+n])`
-/

namespace A008316.P16854960010633744913
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100258 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A008316.P16854960010633744913

/-!
# A008318: Smallest number strictly greater than previous one which is the sum of squares of two previous distinct terms (a(1)=1, a(2)=2).

The programs for A008318, there is no canonical definition to state claims against.
-/

/-! ## A008318.P13094610091453591234

`A192476(∑[A333755(2*n+1)!])`
-/

namespace A008318.P13094610091453591234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A333755 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192476 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A008318.P13094610091453591234

/-!
# A008320: Smallest number that is not the sum of squares of two distinct earlier terms.

The programs for A008320, there is no canonical definition to state claims against.
-/

/-! ## A008320.P2103959651222587711

`lt[acot(n), A080891(n^A025441(n))]`
-/

namespace A008320.P2103959651222587711
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A025441 n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A008320.P2103959651222587711

/-! ## A008320.P8779906464251046704

`eq[A057427(n), A080891(n^A025441(n))]`
-/

namespace A008320.P8779906464251046704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A025441 n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A008320.P8779906464251046704

/-! ## A008320.P18418883503417218155

`lt[A000007(n), A080891(n^A025441(n))]`
-/

namespace A008320.P18418883503417218155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A025441 n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A008320.P18418883503417218155

/-! ## A008320.P12832651611234291789

`lt[A000038(n), A080891(n^A025441(n))]`
-/

namespace A008320.P12832651611234291789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A025441 n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A008320.P12832651611234291789

/-! ## A008320.P4807723540463637302

`record[A028310(n)*A080891(n^A025441(n))]`
-/

namespace A008320.P4807723540463637302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A080891 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A025441 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008320.P4807723540463637302

/-! ## A008320.P13914878104141657829

`eq[0, A080891(n^A025441(n))+A057428(n)]`
-/

namespace A008320.P13914878104141657829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A025441 n : ℤ))).toNat + A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A008320.P13914878104141657829

/-! ## A008320.P12447786915691369610

`lt[2, A080891(n^A025441(n))*A151712(n)]`
-/

namespace A008320.P12447786915691369610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A025441 n : ℤ))).toNat * A151712 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A008320.P12447786915691369610

/-! ## A008320.P12297921637498399930

`lt[2, A080891(n^A025441(n))*A273306(n)]`
-/

namespace A008320.P12297921637498399930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A025441 n : ℤ))).toNat * A273306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A008320.P12297921637498399930

/-! ## A008320.P9905545295186209980

`record[A080891(n^A025441(n))+A004273(n)-n]`
-/

namespace A008320.P9905545295186209980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A025441 n : ℤ))).toNat + (A004273 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008320.P9905545295186209980

/-! ## A008320.P788800629461772387

`eq[A000040(n+1)%2, A080891(n^A025441(n))]`
-/

namespace A008320.P788800629461772387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A025441 n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A008320.P788800629461772387

/-!
# A008321: Smallest number that is not the sum of squares of distinct earlier terms.

The programs for A008321, there is no canonical definition to state claims against.
-/

/-! ## A008321.P4084425230871301706

`∑[A132199(∑[A091498(n)])]`
-/

namespace A008321.P4084425230871301706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091498 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132199 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008321.P4084425230871301706

/-!
# A008322: Smallest number that is sum of cubes of two distinct earlier terms.

The programs for A008322, there is no canonical definition to state claims against.
-/

/-! ## A008322.P15724183000124197172

`∑[A065190(A065231(n)!)]`
-/

namespace A008322.P15724183000124197172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (Nat.factorial (A065231 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008322.P15724183000124197172

/-!
# A008323: Number of simple connected regular bipartite graphs with 2n nodes.

The programs for A008323, there is no canonical definition to state claims against.
-/

/-! ## A008323.P5137778146707677269

`A165707(A192804(n)+A137747(n))`
-/

namespace A008323.P5137778146707677269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165707 (A192804 n + A137747 n).toNat

end

end A008323.P5137778146707677269

/-! ## A008323.P13280152477779095630

`A008382(n+2)+A008375(A008382(n))`
-/

namespace A008323.P13280152477779095630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008382 (n + 2) + A008375 (A008382 n).toNat

end

end A008323.P13280152477779095630

/-!
# A008324: Number of simple regular bipartite graphs with 2n nodes.

The programs for A008324, there is no canonical definition to state claims against.
-/

/-! ## A008324.P4054491283890203634

`record[A087114(n)]`
-/

namespace A008324.P4054491283890203634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008324.P4054491283890203634

/-! ## A008324.P553005445533892608

`A087114(2*n)`
-/

namespace A008324.P553005445533892608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087114 (2 * n)

end

end A008324.P553005445533892608

/-! ## A008324.P14254882677262880220

`A333732(n)-A081603(A260811(n))`
-/

namespace A008324.P14254882677262880220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333732 n - A081603 (A260811 n).toNat

end

end A008324.P14254882677262880220

/-! ## A008324.P8538192224628280993

`A333732(n*A333159(n))`
-/

namespace A008324.P8538192224628280993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333732 ((n : ℤ) * A333159 n).toNat

end

end A008324.P8538192224628280993

/-!
# A008325: Number of simple regular trivalent bipartite graphs with 2n nodes.

The programs for A008325, there is no canonical definition to state claims against.
-/

/-! ## A008325.P15035946731612101424

`A008327(A167614(n+2))`
-/

namespace A008325.P15035946731612101424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008327 (A167614 (n + 2)).toNat

end

end A008325.P15035946731612101424

/-! ## A008325.P10042858504684870602

`filter[A004066(n+1), A022932(#)]`
-/

namespace A008325.P10042858504684870602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022932 (f1 j).toNat = 1) n)

end

end A008325.P10042858504684870602

/-! ## A008325.P9421054201493012810

`filter[A004066(n+1), A145568(#)]`
-/

namespace A008325.P9421054201493012810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A008325.P9421054201493012810

/-! ## A008325.P1020840833937068017

`filter[A004066(n+1), A168046(#)]`
-/

namespace A008325.P1020840833937068017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A008325.P1020840833937068017

/-! ## A008325.P17733836827098067147

`filter[A004066(n+1), A168181(#)]`
-/

namespace A008325.P17733836827098067147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A008325.P17733836827098067147

/-!
# A008326: Triangle read by rows: T(n,k) is the number of simple regular connected bipartite graphs with 2n nodes and degree k, (2 <= k <= n).

The programs for A008326, there is no canonical definition to state claims against.
-/

/-! ## A008326.P13862568924203289249

`A238802(n)+A165490(A135302(n))`
-/

namespace A008326.P13862568924203289249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238802 n + A165490 (A135302 n).toNat

end

end A008326.P13862568924203289249

/-! ## A008326.P6976104002610745234

`A164306(A124302(A175331(n+2)))`
-/

namespace A008326.P6976104002610745234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (A124302 (A175331 (n + 2)).toNat).toNat

end

end A008326.P6976104002610745234

/-! ## A008326.P16873056329717706773

`A255704(n+1)+A096801(A289978(n))`
-/

namespace A008326.P16873056329717706773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (n + 1) + A096801 (A289978 n).toNat

end

end A008326.P16873056329717706773

/-! ## A008326.P11482531220194184822

`A172263(2*A120060(n))+A096801(A289978(n))`
-/

namespace A008326.P11482531220194184822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (2 * A120060 n).toNat + A096801 (A289978 n).toNat

end

end A008326.P11482531220194184822

/-!
# A008327: Triangle read by rows: T(n,k) is the number of simple regular bipartite graphs with 2n nodes and degree k, (0 <= k <= n).

The programs for A008327, there is no canonical definition to state claims against.
-/

/-! ## A008327.P9515150185520383931

`(A333159(n)+A133687(n))/2`
-/

namespace A008327.P9515150185520383931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333159 n + A133687 n : ℚ) / 2

end

end A008327.P9515150185520383931

/-! ## A008327.P14292820972821090321

`A001227(A260340(n))`
-/

namespace A008327.P14292820972821090321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A260340 n).toNat

end

end A008327.P14292820972821090321

/-! ## A008327.P10713499715993896974

`A104368(A174544(n))`
-/

namespace A008327.P10713499715993896974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104368 (A174544 n).toNat

end

end A008327.P10713499715993896974

/-! ## A008327.P17477263296898939175

`A172008(A384123(n))`
-/

namespace A008327.P17477263296898939175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172008 (A384123 n).toNat

end

end A008327.P17477263296898939175

/-! ## A008327.P2868409323088603060

`A341049(A294746(n))`
-/

namespace A008327.P2868409323088603060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341049 (A294746 n).toNat

end

end A008327.P2868409323088603060

/-!
# A008328: Number of divisors of prime(n)-1.

The programs for A008328, the canonical program `A008328.P3425095105082656605` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008328 has offset 1).

The definition of A008328 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008328.P3425095105082656605

`A000005(A006093(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A008328

/-- `A000005(A006093(n+1))` -/
def P3425095105082656605.Spec : Prop :=
  ∀ n, P3425095105082656605.a n = A008328 (n + 1)

theorem P3425095105082656605.correct : P3425095105082656605.Spec := by
  intro n
  simp only [A008328, Nat.add_sub_cancel]

end A008328

/-! ## A008328.P12269828274807007901

`A000005(A000040(n+1)-1)`
-/

namespace A008328.P12269828274807007901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000040 (n + 1) - 1).toNat

end

end A008328.P12269828274807007901

namespace A008328

/-- `A000005(A000040(n+1)-1)` -/
def P12269828274807007901.Spec : Prop :=
  ∀ n, P12269828274807007901.a n = A008328 (n + 1)

end A008328

/-! ## A008328.P17195841463352138610

`A066800(A000040(n+1))`
-/

namespace A008328.P17195841463352138610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066800 (A000040 (n + 1)).toNat

end

end A008328.P17195841463352138610

namespace A008328

/-- `A066800(A000040(n+1))` -/
def P17195841463352138610.Spec : Prop :=
  ∀ n, P17195841463352138610.a n = A008328 (n + 1)

end A008328

/-! ## A008328.P7609832245691165183

`Δ[A079552(n)]`
-/

namespace A008328.P7609832245691165183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008328.P7609832245691165183

namespace A008328

/-- `Δ[A079552(n)]` -/
def P7609832245691165183.Spec : Prop :=
  ∀ n, P7609832245691165183.a n = A008328 (n + 1)

end A008328

/-! ## A008328.P6334628450629101189

`A244796(1+n)+1`
-/

namespace A008328.P6334628450629101189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244796 (1 + n) + 1

end

end A008328.P6334628450629101189

namespace A008328

/-- `A244796(1+n)+1` -/
def P6334628450629101189.Spec : Prop :=
  ∀ n, P6334628450629101189.a n = A008328 (n + 1)

end A008328

/-! ## A008328.P14802027431382266499

`A008329(n+1)-A145337(n)`
-/

namespace A008328.P14802027431382266499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008329 (n + 1) - A145337 n

end

end A008328.P14802027431382266499

namespace A008328

/-- `A008329(n+1)-A145337(n)` -/
def P14802027431382266499.Spec : Prop :=
  ∀ n, P14802027431382266499.a n = A008328 (n + 1)

theorem P14802027431382266499.correct : P14802027431382266499.Spec := by
  intro n
  simp only [A008328, Nat.add_sub_cancel, A008328.P14802027431382266499.a, A008328.P3425095105082656605.a, A000005, A000005.P16091521709108585461.a, A006093, A006093.P2906174024863549003.a, A008329, A008329.P18061230809908035593.a, A145337, A145337.P14852323097851792559.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008328

/-! ## A008328.P14236107358373572008

`A079552(n+1)-A079552(n)`
-/

namespace A008328.P14236107358373572008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079552 (n + 1) - A079552 n

end

end A008328.P14236107358373572008

namespace A008328

/-- `A079552(n+1)-A079552(n)` -/
def P14236107358373572008.Spec : Prop :=
  ∀ n, P14236107358373572008.a n = A008328 (n + 1)

end A008328

/-! ## A008328.P5445916423054700820

`A175144(n+1)-A008329(n+1)`
-/

namespace A008328.P5445916423054700820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175144 (n + 1) - A008329 (n + 1)

end

end A008328.P5445916423054700820

namespace A008328

/-- `A175144(n+1)-A008329(n+1)` -/
def P5445916423054700820.Spec : Prop :=
  ∀ n, P5445916423054700820.a n = A008328 (n + 1)

theorem P5445916423054700820.correct : P5445916423054700820.Spec := by
  intro n
  simp only [A008328, Nat.add_sub_cancel, A008328.P5445916423054700820.a, A008328.P3425095105082656605.a, A000005, A000005.P16091521709108585461.a, A006093, A006093.P2906174024863549003.a, A008329, A008329.P18061230809908035593.a, A175144, A175144.P696110972913207213.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008328

/-! ## A008328.P4156774704081378658

`A000005(∑[A075526(n)])`
-/

namespace A008328.P4156774704081378658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008328.P4156774704081378658

namespace A008328

/-- `A000005(∑[A075526(n)])` -/
def P4156774704081378658.Spec : Prop :=
  ∀ n, P4156774704081378658.a n = A008328 (n + 1)

end A008328

/-! ## A008328.P17786929303101237300

`A175144(n+1)-A000005(A008864(n+1))`
-/

namespace A008328.P17786929303101237300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175144 (n + 1) - A000005 (A008864 (n + 1)).toNat

end

end A008328.P17786929303101237300

namespace A008328

/-- `A175144(n+1)-A000005(A008864(n+1))` -/
def P17786929303101237300.Spec : Prop :=
  ∀ n, P17786929303101237300.a n = A008328 (n + 1)

theorem P17786929303101237300.correct : P17786929303101237300.Spec := by
  intro n
  simp only [A008328, Nat.add_sub_cancel, A008328.P17786929303101237300.a, A008328.P3425095105082656605.a, A000005, A000005.P16091521709108585461.a, A006093, A006093.P2906174024863549003.a, A008864, A008864.P9177617808325052279.a, A175144, A175144.P696110972913207213.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008328

/-! ## A008328.P8262423501652432491

`A340273(A039915(n+1))`
-/

namespace A008328.P8262423501652432491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340273 (A039915 (n + 1)).toNat

end

end A008328.P8262423501652432491

namespace A008328

/-- `A340273(A039915(n+1))` -/
def P8262423501652432491.Spec : Prop :=
  ∀ n, P8262423501652432491.a n = A008328 (n + 1)

end A008328

/-! ## A008328.P9436136252596037509

`A062821(A000040(n+1))`
-/

namespace A008328.P9436136252596037509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (A000040 (n + 1)).toNat

end

end A008328.P9436136252596037509

namespace A008328

/-- `A062821(A000040(n+1))` -/
def P9436136252596037509.Spec : Prop :=
  ∀ n, P9436136252596037509.a n = A008328 (n + 1)

end A008328

/-! ## A008328.P7270665022502669041

`A110412(A008578(n+2))`
-/

namespace A008328.P7270665022502669041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110412 (A008578 (n + 2)).toNat

end

end A008328.P7270665022502669041

namespace A008328

/-- `A110412(A008578(n+2))` -/
def P7270665022502669041.Spec : Prop :=
  ∀ n, P7270665022502669041.a n = A008328 (n + 1)

end A008328

/-! ## A008328.P5309570466735204943

`A274010(A182986(n+2))`
-/

namespace A008328.P5309570466735204943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274010 (A182986 (n + 2)).toNat

end

end A008328.P5309570466735204943

namespace A008328

/-- `A274010(A182986(n+2))` -/
def P5309570466735204943.Spec : Prop :=
  ∀ n, P5309570466735204943.a n = A008328 (n + 1)

end A008328

/-! ## A008328.P6187953927155453187

`A193386(A001748(n+1))`
-/

namespace A008328.P6187953927155453187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193386 (A001748 (n + 1)).toNat

end

end A008328.P6187953927155453187

namespace A008328

/-- `A193386(A001748(n+1))` -/
def P6187953927155453187.Spec : Prop :=
  ∀ n, P6187953927155453187.a n = A008328 (n + 1)

end A008328

/-! ## A008328.P17958798828832832858

`A069157(A037168(n+1))`
-/

namespace A008328.P17958798828832832858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (A037168 (n + 1)).toNat

end

end A008328.P17958798828832832858

namespace A008328

/-- `A069157(A037168(n+1))` -/
def P17958798828832832858.Spec : Prop :=
  ∀ n, P17958798828832832858.a n = A008328 (n + 1)

end A008328

/-! ## A008328.P9952873456118541384

`A277692(A076274(n+2))`
-/

namespace A008328.P9952873456118541384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (A076274 (n + 2)).toNat

end

end A008328.P9952873456118541384

namespace A008328

/-- `A277692(A076274(n+2))` -/
def P9952873456118541384.Spec : Prop :=
  ∀ n, P9952873456118541384.a n = A008328 (n + 1)

end A008328

/-! ## A008328.P10411603576584876245

`A183063(A100484(n+1)-2)`
-/

namespace A008328.P10411603576584876245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A100484 (n + 1) - 2).toNat

end

end A008328.P10411603576584876245

namespace A008328

/-- `A183063(A100484(n+1)-2)` -/
def P10411603576584876245.Spec : Prop :=
  ∀ n, P10411603576584876245.a n = A008328 (n + 1)

end A008328

/-! ## A008328.P13037033236802708225

`A066589(A006005(n+1))`
-/

namespace A008328.P13037033236802708225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066589 (A006005 (n + 1)).toNat

end

end A008328.P13037033236802708225

namespace A008328

/-- `A066589(A006005(n+1))` -/
def P13037033236802708225.Spec : Prop :=
  ∀ n, P13037033236802708225.a n = A008328 (n + 1)

end A008328

/-! ## A008328.P5882614142871493163

`A355731(A055003(n+1))`
-/

namespace A008328.P5882614142871493163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355731 (A055003 (n + 1)).toNat

end

end A008328.P5882614142871493163

namespace A008328

/-- `A355731(A055003(n+1))` -/
def P5882614142871493163.Spec : Prop :=
  ∀ n, P5882614142871493163.a n = A008328 (n + 1)

end A008328

/-!
# A008329: Number of divisors of p+1, p prime.

The programs for A008329, the canonical program `A008329.P18061230809908035593` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008329 has offset 1).

The definition of A008329 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008329.P18061230809908035593

`A000005(A008864(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A008329

/-- `A000005(A008864(n+1))` -/
def P18061230809908035593.Spec : Prop :=
  ∀ n, P18061230809908035593.a n = A008329 (n + 1)

theorem P18061230809908035593.correct : P18061230809908035593.Spec := by
  intro n
  simp only [A008329, Nat.add_sub_cancel]

end A008329

/-! ## A008329.P9077953756675868563

`A000005(A000040(n+1)+1)`
-/

namespace A008329.P9077953756675868563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000040 (n + 1) + 1).toNat

end

end A008329.P9077953756675868563

namespace A008329

/-- `A000005(A000040(n+1)+1)` -/
def P9077953756675868563.Spec : Prop :=
  ∀ n, P9077953756675868563.a n = A008329 (n + 1)

end A008329

/-! ## A008329.P5069136428802321264

`∏{e}[A008864(1+n), #+1]`
-/

namespace A008329.P5069136428802321264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A008329.P5069136428802321264

namespace A008329

/-- `∏{e}[A008864(1+n), #+1]` -/
def P5069136428802321264.Spec : Prop :=
  ∀ n, (P5069136428802321264.a n : ℤ) = A008329 (n + 1)

end A008329

/-! ## A008329.P16373170564579444853

`∏{e}[A028815(1+n), #+1]`
-/

namespace A008329.P16373170564579444853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A008329.P16373170564579444853

namespace A008329

/-- `∏{e}[A028815(1+n), #+1]` -/
def P16373170564579444853.Spec : Prop :=
  ∀ n, (P16373170564579444853.a n : ℤ) = A008329 (n + 1)

end A008329

/-! ## A008329.P5471256616621121196

`∏{e}[A278228(n+1), #+1]`
-/

namespace A008329.P5471256616621121196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278228 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A008329.P5471256616621121196

namespace A008329

/-- `∏{e}[A278228(n+1), #+1]` -/
def P5471256616621121196.Spec : Prop :=
  ∀ n, (P5471256616621121196.a n : ℤ) = A008329 (n + 1)

end A008329

/-! ## A008329.P1017906580992797614

`∏{e}[1+Δ[A007504(n)], #+1]`
-/

namespace A008329.P1017906580992797614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A008329.P1017906580992797614

namespace A008329

/-- `∏{e}[1+Δ[A007504(n)], #+1]` -/
def P1017906580992797614.Spec : Prop :=
  ∀ n, (P1017906580992797614.a n : ℤ) = A008329 (n + 1)

end A008329

/-! ## A008329.P4628817661002409011

`∏{e}[1+A000040(1+n), #+1]`
-/

namespace A008329.P4628817661002409011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000040 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A008329.P4628817661002409011

namespace A008329

/-- `∏{e}[1+A000040(1+n), #+1]` -/
def P4628817661002409011.Spec : Prop :=
  ∀ n, (P4628817661002409011.a n : ℤ) = A008329 (n + 1)

end A008329

/-! ## A008329.P13012867671234946815

`A099777(A111333(n+1))`
-/

namespace A008329.P13012867671234946815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (A111333 (n + 1)).toNat

end

end A008329.P13012867671234946815

namespace A008329

/-- `A099777(A111333(n+1))` -/
def P13012867671234946815.Spec : Prop :=
  ∀ n, P13012867671234946815.a n = A008329 (n + 1)

end A008329

/-! ## A008329.P642349993682888140

`A145337(n)+A008328(n+1)`
-/

namespace A008329.P642349993682888140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145337 n + A008328 (n + 1)

end

end A008329.P642349993682888140

namespace A008329

/-- `A145337(n)+A008328(n+1)` -/
def P642349993682888140.Spec : Prop :=
  ∀ n, P642349993682888140.a n = A008329 (n + 1)

theorem P642349993682888140.correct : P642349993682888140.Spec := by
  intro n
  simp only [A008329, Nat.add_sub_cancel, A008329.P642349993682888140.a, A008329.P18061230809908035593.a, A000005, A000005.P16091521709108585461.a, A008328, A008328.P3425095105082656605.a, A008864, A008864.P9177617808325052279.a, A145337, A145337.P14852323097851792559.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008329

/-! ## A008329.P4216818357464819752

`A175144(n+1)-A008328(n+1)`
-/

namespace A008329.P4216818357464819752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175144 (n + 1) - A008328 (n + 1)

end

end A008329.P4216818357464819752

namespace A008329

/-- `A175144(n+1)-A008328(n+1)` -/
def P4216818357464819752.Spec : Prop :=
  ∀ n, P4216818357464819752.a n = A008329 (n + 1)

theorem P4216818357464819752.correct : P4216818357464819752.Spec := by
  intro n
  simp only [A008329, Nat.add_sub_cancel, A008329.P4216818357464819752.a, A008329.P18061230809908035593.a, A000005, A000005.P16091521709108585461.a, A008328, A008328.P3425095105082656605.a, A008864, A008864.P9177617808325052279.a, A175144, A175144.P696110972913207213.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008329

/-! ## A008329.P7536500931011009540

`A079552(n+1)+A145337(n)-A079552(n)`
-/

namespace A008329.P7536500931011009540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079552 (n + 1) + (A145337 n - A079552 n)

end

end A008329.P7536500931011009540

namespace A008329

/-- `A079552(n+1)+A145337(n)-A079552(n)` -/
def P7536500931011009540.Spec : Prop :=
  ∀ n, P7536500931011009540.a n = A008329 (n + 1)

end A008329

/-! ## A008329.P3865076874177561231

`A175144(n+1)-A000005(A006093(n+1))`
-/

namespace A008329.P3865076874177561231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175144 (n + 1) - A000005 (A006093 (n + 1)).toNat

end

end A008329.P3865076874177561231

namespace A008329

/-- `A175144(n+1)-A000005(A006093(n+1))` -/
def P3865076874177561231.Spec : Prop :=
  ∀ n, P3865076874177561231.a n = A008329 (n + 1)

theorem P3865076874177561231.correct : P3865076874177561231.Spec := by
  intro n
  simp only [A008329, Nat.add_sub_cancel, A008329.P3865076874177561231.a, A008329.P18061230809908035593.a, A000005, A000005.P16091521709108585461.a, A006093, A006093.P2906174024863549003.a, A008864, A008864.P9177617808325052279.a, A175144, A175144.P696110972913207213.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008329

/-! ## A008329.P5167839852010314636

`A062068(A000040(n+1))`
-/

namespace A008329.P5167839852010314636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (A000040 (n + 1)).toNat

end

end A008329.P5167839852010314636

namespace A008329

/-- `A062068(A000040(n+1))` -/
def P5167839852010314636.Spec : Prop :=
  ∀ n, P5167839852010314636.a n = A008329 (n + 1)

end A008329

/-! ## A008329.P16188392950404446519

`A062558(A055670(n+1))`
-/

namespace A008329.P16188392950404446519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062558 (A055670 (n + 1)).toNat

end

end A008329.P16188392950404446519

namespace A008329

/-- `A062558(A055670(n+1))` -/
def P16188392950404446519.Spec : Prop :=
  ∀ n, P16188392950404446519.a n = A008329 (n + 1)

end A008329

/-! ## A008329.P18397477873512018659

`A339147(A052147(n+1))`
-/

namespace A008329.P18397477873512018659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339147 (A052147 (n + 1)).toNat

end

end A008329.P18397477873512018659

namespace A008329

/-- `A339147(A052147(n+1))` -/
def P18397477873512018659.Spec : Prop :=
  ∀ n, P18397477873512018659.a n = A008329 (n + 1)

end A008329

/-! ## A008329.P17035023831174393109

`A069157(A089241(n+1))`
-/

namespace A008329.P17035023831174393109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (A089241 (n + 1)).toNat

end

end A008329.P17035023831174393109

namespace A008329

/-- `A069157(A089241(n+1))` -/
def P17035023831174393109.Spec : Prop :=
  ∀ n, P17035023831174393109.a n = A008329 (n + 1)

end A008329

/-! ## A008329.P9894330277362193272

`A183063(A100484(n+1)+2)`
-/

namespace A008329.P9894330277362193272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A100484 (n + 1) + 2).toNat

end

end A008329.P9894330277362193272

namespace A008329

/-- `A183063(A100484(n+1)+2)` -/
def P9894330277362193272.Spec : Prop :=
  ∀ n, P9894330277362193272.a n = A008329 (n + 1)

end A008329

/-! ## A008329.P7062189608473153200

`A277692(A129069(n+1))`
-/

namespace A008329.P7062189608473153200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (A129069 (n + 1)).toNat

end

end A008329.P7062189608473153200

namespace A008329

/-- `A277692(A129069(n+1))` -/
def P7062189608473153200.Spec : Prop :=
  ∀ n, P7062189608473153200.a n = A008329 (n + 1)

end A008329

/-! ## A008329.P2961816858716365274

`A355731(A072677(n+1))`
-/

namespace A008329.P2961816858716365274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355731 (A072677 (n + 1)).toNat

end

end A008329.P2961816858716365274

namespace A008329

/-- `A355731(A072677(n+1))` -/
def P2961816858716365274.Spec : Prop :=
  ∀ n, P2961816858716365274.a n = A008329 (n + 1)

end A008329

/-! ## A008329.P6822466420488061732

`A096737(A028815(n+1))`
-/

namespace A008329.P6822466420488061732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096737 (A028815 (n + 1)).toNat

end

end A008329.P6822466420488061732

namespace A008329

/-- `A096737(A028815(n+1))` -/
def P6822466420488061732.Spec : Prop :=
  ∀ n, P6822466420488061732.a n = A008329 (n + 1)

end A008329

/-!
# A008330: phi(p-1), as p runs through the primes.

The programs for A008330, the canonical program `A008330.P4237937900296338691` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008330 has offset 1).

The definition of A008330 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008330.P4237937900296338691

`A000010(A006093(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A008330

/-- `A000010(A006093(n+1))` -/
def P4237937900296338691.Spec : Prop :=
  ∀ n, P4237937900296338691.a n = A008330 (n + 1)

theorem P4237937900296338691.correct : P4237937900296338691.Spec := by
  intro n
  simp only [A008330, Nat.add_sub_cancel]

end A008330

/-! ## A008330.P2892776802740645656

`A000010(A000040(n+1)-1)`
-/

namespace A008330.P2892776802740645656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000040 (n + 1) - 1).toNat

end

end A008330.P2892776802740645656

namespace A008330

/-- `A000010(A000040(n+1)-1)` -/
def P2892776802740645656.Spec : Prop :=
  ∀ n, P2892776802740645656.a n = A008330 (n + 1)

end A008330

/-! ## A008330.P10924912504752805079

`A000010(A000010(A000040(n+1)))`
-/

namespace A008330.P10924912504752805079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (A000040 (n + 1)).toNat).toNat

end

end A008330.P10924912504752805079

namespace A008330

/-- `A000010(A000010(A000040(n+1)))` -/
def P10924912504752805079.Spec : Prop :=
  ∀ n, P10924912504752805079.a n = A008330 (n + 1)

end A008330

/-! ## A008330.P4301220591691758151

`A062570(A130290(n+1))`
-/

namespace A008330.P4301220591691758151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (A130290 (n + 1)).toNat

end

end A008330.P4301220591691758151

namespace A008330

/-- `A062570(A130290(n+1))` -/
def P4301220591691758151.Spec : Prop :=
  ∀ n, P4301220591691758151.a n = A008330 (n + 1)

end A008330

/-! ## A008330.P13503378460675444512

`A356093(n+1)*A356474(n+1)`
-/

namespace A008330.P13503378460675444512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356093 (n + 1) * A356474 (n + 1)

end

end A008330.P13503378460675444512

namespace A008330

/-- `A356093(n+1)*A356474(n+1)` -/
def P13503378460675444512.Spec : Prop :=
  ∀ n, P13503378460675444512.a n = A008330 (n + 1)

end A008330

/-! ## A008330.P6295850179185693650

`A104039(n+1)/A006093(n+1)`
-/

namespace A008330.P6295850179185693650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104039 (n + 1) : ℚ) / (A006093 (n + 1) : ℚ)

end

end A008330.P6295850179185693650

namespace A008330

/-- `A104039(n+1)/A006093(n+1)` -/
def P6295850179185693650.Spec : Prop :=
  ∀ n, P6295850179185693650.a n = (A008330 (n + 1) : ℚ)

end A008330

/-! ## A008330.P3107184308457907997

`A173557(A130290(n+1))*A356093(n+1)`
-/

namespace A008330.P3107184308457907997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (A130290 (n + 1)).toNat * A356093 (n + 1)

end

end A008330.P3107184308457907997

namespace A008330

/-- `A173557(A130290(n+1))*A356093(n+1)` -/
def P3107184308457907997.Spec : Prop :=
  ∀ n, P3107184308457907997.a n = A008330 (n + 1)

end A008330

/-! ## A008330.P3128833729231821029

`A006093(n+1)*A356474(n+1)/A077063(n+1)`
-/

namespace A008330.P3128833729231821029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) * A356474 (n + 1) : ℚ) / (A077063 (n + 1) : ℚ)

end

end A008330.P3128833729231821029

namespace A008330

/-- `A006093(n+1)*A356474(n+1)/A077063(n+1)` -/
def P3128833729231821029.Spec : Prop :=
  ∀ n, P3128833729231821029.a n = (A008330 (n + 1) : ℚ)

end A008330

/-! ## A008330.P14571982411709361581

`A000010(∑[A075526(n)])`
-/

namespace A008330.P14571982411709361581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008330.P14571982411709361581

namespace A008330

/-- `A000010(∑[A075526(n)])` -/
def P14571982411709361581.Spec : Prop :=
  ∀ n, P14571982411709361581.a n = A008330 (n + 1)

end A008330

/-! ## A008330.P1184486561119546878

`A300721(2*A006093(n+1))`
-/

namespace A008330.P1184486561119546878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300721 (2 * A006093 (n + 1)).toNat

end

end A008330.P1184486561119546878

namespace A008330

/-- `A300721(2*A006093(n+1))` -/
def P1184486561119546878.Spec : Prop :=
  ∀ n, P1184486561119546878.a n = A008330 (n + 1)

end A008330

/-! ## A008330.P16487258300947988747

`A166362(A014689(n+1))`
-/

namespace A008330.P16487258300947988747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166362 (A014689 (n + 1)).toNat

end

end A008330.P16487258300947988747

namespace A008330

/-- `A166362(A014689(n+1))` -/
def P16487258300947988747.Spec : Prop :=
  ∀ n, P16487258300947988747.a n = A008330 (n + 1)

end A008330

/-! ## A008330.P8535902745452553859

`A010554(A000040(n+1))`
-/

namespace A008330.P8535902745452553859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A000040 (n + 1)).toNat

end

end A008330.P8535902745452553859

namespace A008330

/-- `A010554(A000040(n+1))` -/
def P8535902745452553859.Spec : Prop :=
  ∀ n, P8535902745452553859.a n = A008330 (n + 1)

end A008330

/-! ## A008330.P9767346634469620199

`A046144(A006005(n+1))`
-/

namespace A008330.P9767346634469620199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046144 (A006005 (n + 1)).toNat

end

end A008330.P9767346634469620199

namespace A008330

/-- `A046144(A006005(n+1))` -/
def P9767346634469620199.Spec : Prop :=
  ∀ n, P9767346634469620199.a n = A008330 (n + 1)

end A008330

/-! ## A008330.P15910993200810824700

`A055034(A039915(n+1))`
-/

namespace A008330.P15910993200810824700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A039915 (n + 1)).toNat

end

end A008330.P15910993200810824700

namespace A008330

/-- `A055034(A039915(n+1))` -/
def P15910993200810824700.Spec : Prop :=
  ∀ n, P15910993200810824700.a n = A008330 (n + 1)

end A008330

/-! ## A008330.P3819067475230885949

`A057475(A156037(n+1))`
-/

namespace A008330.P3819067475230885949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057475 (A156037 (n + 1)).toNat

end

end A008330.P3819067475230885949

namespace A008330

/-- `A057475(A156037(n+1))` -/
def P3819067475230885949.Spec : Prop :=
  ∀ n, P3819067475230885949.a n = A008330 (n + 1)

end A008330

/-! ## A008330.P15133245020358867095

`A344577(A008578(n+2))`
-/

namespace A008330.P15133245020358867095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344577 (A008578 (n + 2)).toNat

end

end A008330.P15133245020358867095

namespace A008330

/-- `A344577(A008578(n+2))` -/
def P15133245020358867095.Spec : Prop :=
  ∀ n, P15133245020358867095.a n = A008330 (n + 1)

end A008330

/-! ## A008330.P15836530010948583155

`A111725(A006093(n+1)+1)`
-/

namespace A008330.P15836530010948583155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111725 (A006093 (n + 1) + 1).toNat

end

end A008330.P15836530010948583155

namespace A008330

/-- `A111725(A006093(n+1)+1)` -/
def P15836530010948583155.Spec : Prop :=
  ∀ n, P15836530010948583155.a n = A008330 (n + 1)

end A008330

/-! ## A008330.P16028012667407970320

`A006093(n+1)-A219028(n+1)`
-/

namespace A008330.P16028012667407970320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A219028 (n + 1)

end

end A008330.P16028012667407970320

namespace A008330

/-- `A006093(n+1)-A219028(n+1)` -/
def P16028012667407970320.Spec : Prop :=
  ∀ n, P16028012667407970320.a n = A008330 (n + 1)

end A008330

/-! ## A008330.P775611671392187365

`A396255(A079552(n+1))/A006093(n+1)`
-/

namespace A008330.P775611671392187365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A396255 (A079552 (n + 1)).toNat : ℚ) / (A006093 (n + 1) : ℚ)

end

end A008330.P775611671392187365

namespace A008330

/-- `A396255(A079552(n+1))/A006093(n+1)` -/
def P775611671392187365.Spec : Prop :=
  ∀ n, P775611671392187365.a n = (A008330 (n + 1) : ℚ)

end A008330

/-! ## A008330.P11850337360178459470

`A023022(A037168(n+1))`
-/

namespace A008330.P11850337360178459470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (A037168 (n + 1)).toNat

end

end A008330.P11850337360178459470

namespace A008330

/-- `A023022(A037168(n+1))` -/
def P11850337360178459470.Spec : Prop :=
  ∀ n, P11850337360178459470.a n = A008330 (n + 1)

end A008330

/-!
# A008331: a(n) = phi(prime(n)+1).

The programs for A008331, the canonical program `A008331.P11072503797974793280` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008331 has offset 1).

The definition of A008331 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(A000040(n+1)+1)` (program `A008331.P11072503797974793280`, by `A008331.P11072503797974793280.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008331.P15472009837498515601

`A000010(A008864(n+1))`
-/

namespace A008331.P15472009837498515601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A008864 (n + 1)).toNat

end

end A008331.P15472009837498515601

namespace A008331

/-- `A000010(A008864(n+1))` -/
def P15472009837498515601.Spec : Prop :=
  ∀ n, P15472009837498515601.a n = A008331 (n + 1)

end A008331

/-! ## A008331.P11072503797974793280

`A000010(A000040(n+1)+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A008331

/-- `A000010(A000040(n+1)+1)` -/
def P11072503797974793280.Spec : Prop :=
  ∀ n, P11072503797974793280.a n = A008331 (n + 1)

theorem P11072503797974793280.correct : P11072503797974793280.Spec := by
  intro n
  simp only [A008331, Nat.add_sub_cancel]

end A008331

/-! ## A008331.P17912737254117752873

`A062570(A130291(1+n))`
-/

namespace A008331.P17912737254117752873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (A130291 (1 + n)).toNat

end

end A008331.P17912737254117752873

namespace A008331

/-- `A062570(A130291(1+n))` -/
def P17912737254117752873.Spec : Prop :=
  ∀ n, P17912737254117752873.a n = A008331 (n + 1)

end A008331

/-! ## A008331.P5755085468340188530

`A008332(n+1)-A092590(n+1)`
-/

namespace A008331.P5755085468340188530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008332 (n + 1) - A092590 (n + 1)

end

end A008331.P5755085468340188530

namespace A008331

/-- `A008332(n+1)-A092590(n+1)` -/
def P5755085468340188530.Spec : Prop :=
  ∀ n, P5755085468340188530.a n = A008331 (n + 1)

end A008331

/-! ## A008331.P13562893670419776036

`A000203(A006093(n+1))-A092590(n+1)`
-/

namespace A008331.P13562893670419776036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A006093 (n + 1)).toNat - A092590 (n + 1)

end

end A008331.P13562893670419776036

namespace A008331

/-- `A000203(A006093(n+1))-A092590(n+1)` -/
def P13562893670419776036.Spec : Prop :=
  ∀ n, P13562893670419776036.a n = A008331 (n + 1)

end A008331

/-! ## A008331.P4878245997014429743

`A295312(A116974(n+2))`
-/

namespace A008331.P4878245997014429743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295312 (A116974 (n + 2)).toNat

end

end A008331.P4878245997014429743

namespace A008331

/-- `A295312(A116974(n+2))` -/
def P4878245997014429743.Spec : Prop :=
  ∀ n, P4878245997014429743.a n = A008331 (n + 1)

end A008331

/-! ## A008331.P14656104705800329114

`A073256(A014689(n+1))`
-/

namespace A008331.P14656104705800329114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073256 (A014689 (n + 1)).toNat

end

end A008331.P14656104705800329114

namespace A008331

/-- `A073256(A014689(n+1))` -/
def P14656104705800329114.Spec : Prop :=
  ∀ n, P14656104705800329114.a n = A008331 (n + 1)

end A008331

/-! ## A008331.P4391755706305383744

`A166362(A014692(n+1))`
-/

namespace A008331.P4391755706305383744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166362 (A014692 (n + 1)).toNat

end

end A008331.P4391755706305383744

namespace A008331

/-- `A166362(A014692(n+1))` -/
def P4391755706305383744.Spec : Prop :=
  ∀ n, P4391755706305383744.a n = A008331 (n + 1)

end A008331

/-! ## A008331.P13819925573777386738

`A062401(A000040(n+1))`
-/

namespace A008331.P13819925573777386738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (A000040 (n + 1)).toNat

end

end A008331.P13819925573777386738

namespace A008331

/-- `A062401(A000040(n+1))` -/
def P13819925573777386738.Spec : Prop :=
  ∀ n, P13819925573777386738.a n = A008331 (n + 1)

end A008331

/-! ## A008331.P3888412745377467765

`A072301(A063884(n+1))`
-/

namespace A008331.P3888412745377467765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072301 (A063884 (n + 1)).toNat

end

end A008331.P3888412745377467765

namespace A008331

/-- `A072301(A063884(n+1))` -/
def P3888412745377467765.Spec : Prop :=
  ∀ n, P3888412745377467765.a n = A008331 (n + 1)

end A008331

/-! ## A008331.P7541858096740343987

`A384710(A306591(n+1))`
-/

namespace A008331.P7541858096740343987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384710 (A306591 (n + 1)).toNat

end

end A008331.P7541858096740343987

namespace A008331

/-- `A384710(A306591(n+1))` -/
def P7541858096740343987.Spec : Prop :=
  ∀ n, P7541858096740343987.a n = A008331 (n + 1)

end A008331

/-! ## A008331.P17163761157318092911

`A364932(A008578(n+2))`
-/

namespace A008331.P17163761157318092911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364932 (A008578 (n + 2)).toNat

end

end A008331.P17163761157318092911

namespace A008331

/-- `A364932(A008578(n+2))` -/
def P17163761157318092911.Spec : Prop :=
  ∀ n, P17163761157318092911.a n = A008331 (n + 1)

end A008331

/-! ## A008331.P15498171134992321791

`A054571(A070164(n+1))`
-/

namespace A008331.P15498171134992321791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054571 (A070164 (n + 1)).toNat

end

end A008331.P15498171134992321791

namespace A008331

/-- `A054571(A070164(n+1))` -/
def P15498171134992321791.Spec : Prop :=
  ∀ n, P15498171134992321791.a n = A008331 (n + 1)

end A008331

/-! ## A008331.P10040870928876050702

`A067541(A072055(n+1))`
-/

namespace A008331.P10040870928876050702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067541 (A072055 (n + 1)).toNat

end

end A008331.P10040870928876050702

namespace A008331

/-- `A067541(A072055(n+1))` -/
def P10040870928876050702.Spec : Prop :=
  ∀ n, P10040870928876050702.a n = A008331 (n + 1)

end A008331

/-! ## A008331.P6319440876489007311

`A089929(A089241(n+1))`
-/

namespace A008331.P6319440876489007311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089929 (A089241 (n + 1)).toNat

end

end A008331.P6319440876489007311

namespace A008331

/-- `A089929(A089241(n+1))` -/
def P6319440876489007311.Spec : Prop :=
  ∀ n, P6319440876489007311.a n = A008331 (n + 1)

end A008331

/-! ## A008331.P10582868143615294135

`A354102(A267099(A354103(A267101(n+1))))`
-/

namespace A008331.P10582868143615294135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354102 (A267099 (A354103 (A267101 (n + 1)).toNat).toNat).toNat

end

end A008331.P10582868143615294135

namespace A008331

/-- `A354102(A267099(A354103(A267101(n+1))))` -/
def P10582868143615294135.Spec : Prop :=
  ∀ n, P10582868143615294135.a n = A008331 (n + 1)

end A008331

/-! ## A008331.P6894540831625865628

`A333698(A072677(n+1))`
-/

namespace A008331.P6894540831625865628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333698 (A072677 (n + 1)).toNat

end

end A008331.P6894540831625865628

namespace A008331

/-- `A333698(A072677(n+1))` -/
def P6894540831625865628.Spec : Prop :=
  ∀ n, P6894540831625865628.a n = A008331 (n + 1)

end A008331

/-!
# A008332: Sum of divisors of p-1, p prime.

The programs for A008332, the canonical program `A008332.P8248868211495396359` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008332 has offset 1).

The definition of A008332 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008332.P8248868211495396359

`A000203(A006093(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A008332

/-- `A000203(A006093(n+1))` -/
def P8248868211495396359.Spec : Prop :=
  ∀ n, P8248868211495396359.a n = A008332 (n + 1)

theorem P8248868211495396359.correct : P8248868211495396359.Spec := by
  intro n
  simp only [A008332, Nat.add_sub_cancel]

end A008332

/-! ## A008332.P2271802198635700697

`A000203(A000040(n+1)-1)`
-/

namespace A008332.P2271802198635700697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000040 (n + 1) - 1).toNat

end

end A008332.P2271802198635700697

namespace A008332

/-- `A000203(A000040(n+1)-1)` -/
def P2271802198635700697.Spec : Prop :=
  ∀ n, P2271802198635700697.a n = A008332 (n + 1)

end A008332

/-! ## A008332.P972271215213116100

`∑{d}[∑[A075526(n)], #]`
-/

namespace A008332.P972271215213116100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A008332.P972271215213116100

namespace A008332

/-- `∑{d}[∑[A075526(n)], #]` -/
def P972271215213116100.Spec : Prop :=
  ∀ n, (P972271215213116100.a n : ℤ) = A008332 (n + 1)

end A008332

/-! ## A008332.P14500214127495829431

`∑{d}[A006093(1+n), #]`
-/

namespace A008332.P14500214127495829431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A008332.P14500214127495829431

namespace A008332

/-- `∑{d}[A006093(1+n), #]` -/
def P14500214127495829431.Spec : Prop :=
  ∀ n, (P14500214127495829431.a n : ℤ) = A008332 (n + 1)

end A008332

/-! ## A008332.P15771327871723544739

`∑{d}[sqrt(A005722(n+1)), #]`
-/

namespace A008332.P15771327871723544739
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A005722 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A008332.P15771327871723544739

namespace A008332

/-- `∑{d}[sqrt(A005722(n+1)), #]` -/
def P15771327871723544739.Spec : Prop :=
  ∀ n, (P15771327871723544739.a n : ℤ) = A008332 (n + 1)

end A008332

/-! ## A008332.P8289340263508896956

`∑{d}[1-Δ[A007504(n)], #]`
-/

namespace A008332.P8289340263508896956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A008332.P8289340263508896956

namespace A008332

/-- `∑{d}[1-Δ[A007504(n)], #]` -/
def P8289340263508896956.Spec : Prop :=
  ∀ n, (P8289340263508896956.a n : ℤ) = A008332 (n + 1)

end A008332

/-! ## A008332.P12986896249122200162

`∑{d}[A040976(n+1)+1, #]`
-/

namespace A008332.P12986896249122200162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A008332.P12986896249122200162

namespace A008332

/-- `∑{d}[A040976(n+1)+1, #]` -/
def P12986896249122200162.Spec : Prop :=
  ∀ n, (P12986896249122200162.a n : ℤ) = A008332 (n + 1)

end A008332

/-! ## A008332.P3292060796608802399

`∑{d}[2-A008864(n+1), #]`
-/

namespace A008332.P3292060796608802399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A008864 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A008332.P3292060796608802399

namespace A008332

/-- `∑{d}[2-A008864(n+1), #]` -/
def P3292060796608802399.Spec : Prop :=
  ∀ n, (P3292060796608802399.a n : ℤ) = A008332 (n + 1)

end A008332

/-! ## A008332.P8153888139892582840

`A092590(n+1)+A008331(n+1)`
-/

namespace A008332.P8153888139892582840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092590 (n + 1) + A008331 (n + 1)

end

end A008332.P8153888139892582840

namespace A008332

/-- `A092590(n+1)+A008331(n+1)` -/
def P8153888139892582840.Spec : Prop :=
  ∀ n, P8153888139892582840.a n = A008332 (n + 1)

end A008332

/-! ## A008332.P5275844447506761294

`A168567(n+1)-A008333(n+1)`
-/

namespace A008332.P5275844447506761294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168567 (n + 1) - A008333 (n + 1)

end

end A008332.P5275844447506761294

namespace A008332

/-- `A168567(n+1)-A008333(n+1)` -/
def P5275844447506761294.Spec : Prop :=
  ∀ n, P5275844447506761294.a n = A008332 (n + 1)

theorem P5275844447506761294.correct : P5275844447506761294.Spec := by
  intro n
  simp only [A008332, Nat.add_sub_cancel, A008332.P5275844447506761294.a, A008332.P8248868211495396359.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A006093, A006093.P2906174024863549003.a, A008333, A008333.P5442699997753752084.a, A168567, A168567.P3820506037250447474.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008332

/-! ## A008332.P7851175100027766151

`∑{d}[record[A000010(n+1)], #]`
-/

namespace A008332.P7851175100027766151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A008332.P7851175100027766151

namespace A008332

/-- `∑{d}[record[A000010(n+1)], #]` -/
def P7851175100027766151.Spec : Prop :=
  ∀ n, (P7851175100027766151.a n : ℤ) = A008332 (n + 1)

end A008332

/-! ## A008332.P17417832342203832385

`∑{d}[A066251(2*n+1), #]`
-/

namespace A008332.P17417832342203832385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066251 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A008332.P17417832342203832385

namespace A008332

/-- `∑{d}[A066251(2*n+1), #]` -/
def P17417832342203832385.Spec : Prop :=
  ∀ n, (P17417832342203832385.a n : ℤ) = A008332 (n + 1)

end A008332

/-! ## A008332.P13432251338868399972

`A062402(A000040(n+1))`
-/

namespace A008332.P13432251338868399972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (A000040 (n + 1)).toNat

end

end A008332.P13432251338868399972

namespace A008332

/-- `A062402(A000040(n+1))` -/
def P13432251338868399972.Spec : Prop :=
  ∀ n, P13432251338868399972.a n = A008332 (n + 1)

end A008332

/-! ## A008332.P2067728925605355366

`A245092(A131426(n+1))`
-/

namespace A008332.P2067728925605355366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A131426 (n + 1)).toNat

end

end A008332.P2067728925605355366

namespace A008332

/-- `A245092(A131426(n+1))` -/
def P2067728925605355366.Spec : Prop :=
  ∀ n, P2067728925605355366.a n = A008332 (n + 1)

end A008332

/-! ## A008332.P2845842971755684469

`A326065(A037168(n+1))`
-/

namespace A008332.P2845842971755684469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (A037168 (n + 1)).toNat

end

end A008332.P2845842971755684469

namespace A008332

/-- `A326065(A037168(n+1))` -/
def P2845842971755684469.Spec : Prop :=
  ∀ n, P2845842971755684469.a n = A008332 (n + 1)

end A008332

/-! ## A008332.P17385958068253091552

`A354103(A267099(A354102(A267101(n+1))))`
-/

namespace A008332.P17385958068253091552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354103 (A267099 (A354102 (A267101 (n + 1)).toNat).toNat).toNat

end

end A008332.P17385958068253091552

namespace A008332

/-- `A354103(A267099(A354102(A267101(n+1))))` -/
def P17385958068253091552.Spec : Prop :=
  ∀ n, P17385958068253091552.a n = A008332 (n + 1)

end A008332

/-!
# A008333: Sum of divisors of p+1, p prime.

The programs for A008333, the canonical program `A008333.P5442699997753752084` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008333 has offset 1).

The definition of A008333 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008333.P5442699997753752084

`A000203(A008864(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A008333

/-- `A000203(A008864(n+1))` -/
def P5442699997753752084.Spec : Prop :=
  ∀ n, P5442699997753752084.a n = A008333 (n + 1)

theorem P5442699997753752084.correct : P5442699997753752084.Spec := by
  intro n
  simp only [A008333, Nat.add_sub_cancel]

end A008333

/-! ## A008333.P14845003139006428342

`A000203(1+A000040(n+1))`
-/

namespace A008333.P14845003139006428342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (1 + A000040 (n + 1)).toNat

end

end A008333.P14845003139006428342

namespace A008333

/-- `A000203(1+A000040(n+1))` -/
def P14845003139006428342.Spec : Prop :=
  ∀ n, P14845003139006428342.a n = A008333 (n + 1)

theorem P14845003139006428342.correct : P14845003139006428342.Spec := by
  intro n
  simp only [A008333, Nat.add_sub_cancel, A008333.P14845003139006428342.a, A008333.P5442699997753752084.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008333

/-! ## A008333.P11952383603993346200

`A000203(A000203(A000040(n+1)))`
-/

namespace A008333.P11952383603993346200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (A000040 (n + 1)).toNat).toNat

end

end A008333.P11952383603993346200

namespace A008333

/-- `A000203(A000203(A000040(n+1)))` -/
def P11952383603993346200.Spec : Prop :=
  ∀ n, P11952383603993346200.a n = A008333 (n + 1)

end A008333

/-! ## A008333.P1490638369237800526

`A051027(A000040(n+1))`
-/

namespace A008333.P1490638369237800526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (A000040 (n + 1)).toNat

end

end A008333.P1490638369237800526

namespace A008333

/-- `A051027(A000040(n+1))` -/
def P1490638369237800526.Spec : Prop :=
  ∀ n, P1490638369237800526.a n = A008333 (n + 1)

end A008333

/-! ## A008333.P9814114125642419958

`∑{d}[A008864(1+n), #]`
-/

namespace A008333.P9814114125642419958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A008333.P9814114125642419958

namespace A008333

/-- `∑{d}[A008864(1+n), #]` -/
def P9814114125642419958.Spec : Prop :=
  ∀ n, (P9814114125642419958.a n : ℤ) = A008333 (n + 1)

end A008333

/-! ## A008333.P1173149163327694254

`∑{d}[A028815(1+n), #]`
-/

namespace A008333.P1173149163327694254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A008333.P1173149163327694254

namespace A008333

/-- `∑{d}[A028815(1+n), #]` -/
def P1173149163327694254.Spec : Prop :=
  ∀ n, (P1173149163327694254.a n : ℤ) = A008333 (n + 1)

end A008333

/-! ## A008333.P4828193060057560817

`∑{d}[A006093(n+1)+2, #]`
-/

namespace A008333.P4828193060057560817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A008333.P4828193060057560817

namespace A008333

/-- `∑{d}[A006093(n+1)+2, #]` -/
def P4828193060057560817.Spec : Prop :=
  ∀ n, (P4828193060057560817.a n : ℤ) = A008333 (n + 1)

end A008333

/-! ## A008333.P15800569231203963136

`∑{d}[A100484(n+1)/2+1, #]`
-/

namespace A008333.P15800569231203963136
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (n + 1) : ℚ) / 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A008333.P15800569231203963136

namespace A008333

/-- `∑{d}[A100484(n+1)/2+1, #]` -/
def P15800569231203963136.Spec : Prop :=
  ∀ n, (P15800569231203963136.a n : ℤ) = A008333 (n + 1)

end A008333

/-! ## A008333.P7425078657633218564

`∑{d}[A001748(n+1)/3+1, #]`
-/

namespace A008333.P7425078657633218564
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (n + 1) : ℚ) / 3 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A008333.P7425078657633218564

namespace A008333

/-- `∑{d}[A001748(n+1)/3+1, #]` -/
def P7425078657633218564.Spec : Prop :=
  ∀ n, (P7425078657633218564.a n : ℤ) = A008333 (n + 1)

end A008333

/-! ## A008333.P15042701943162265901

`∑{d}[A001749(n+1)/4+1, #]`
-/

namespace A008333.P15042701943162265901
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (n + 1) : ℚ) / 4 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A008333.P15042701943162265901

namespace A008333

/-- `∑{d}[A001749(n+1)/4+1, #]` -/
def P15042701943162265901.Spec : Prop :=
  ∀ n, (P15042701943162265901.a n : ℤ) = A008333 (n + 1)

end A008333

/-! ## A008333.P11918604991818022890

`A334210(n+1)+A008864(n+1)`
-/

namespace A008333.P11918604991818022890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334210 (n + 1) + A008864 (n + 1)

end

end A008333.P11918604991818022890

namespace A008333

/-- `A334210(n+1)+A008864(n+1)` -/
def P11918604991818022890.Spec : Prop :=
  ∀ n, P11918604991818022890.a n = A008333 (n + 1)

end A008333

/-! ## A008333.P8689523864662397792

`A168567(n+1)-A008332(n+1)`
-/

namespace A008333.P8689523864662397792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168567 (n + 1) - A008332 (n + 1)

end

end A008333.P8689523864662397792

namespace A008333

/-- `A168567(n+1)-A008332(n+1)` -/
def P8689523864662397792.Spec : Prop :=
  ∀ n, P8689523864662397792.a n = A008333 (n + 1)

theorem P8689523864662397792.correct : P8689523864662397792.Spec := by
  intro n
  simp only [A008333, Nat.add_sub_cancel, A008333.P8689523864662397792.a, A008333.P5442699997753752084.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008332, A008332.P8248868211495396359.a, A008864, A008864.P9177617808325052279.a, A168567, A168567.P3820506037250447474.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008333

/-! ## A008333.P15668467552056737743

`∑{d}[A299763(n+2), #]`
-/

namespace A008333.P15668467552056737743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A008333.P15668467552056737743

namespace A008333

/-- `∑{d}[A299763(n+2), #]` -/
def P15668467552056737743.Spec : Prop :=
  ∀ n, (P15668467552056737743.a n : ℤ) = A008333 (n + 1)

end A008333

/-! ## A008333.P6634862201036075117

`A377990(A008578(n+2))`
-/

namespace A008333.P6634862201036075117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377990 (A008578 (n + 2)).toNat

end

end A008333.P6634862201036075117

namespace A008333

/-- `A377990(A008578(n+2))` -/
def P6634862201036075117.Spec : Prop :=
  ∀ n, P6634862201036075117.a n = A008333 (n + 1)

end A008333

/-! ## A008333.P12302127738126198092

`A245092(A072055(n+1))`
-/

namespace A008333.P12302127738126198092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A072055 (n + 1)).toNat

end

end A008333.P12302127738126198092

namespace A008333

/-- `A245092(A072055(n+1))` -/
def P12302127738126198092.Spec : Prop :=
  ∀ n, P12302127738126198092.a n = A008333 (n + 1)

end A008333

/-! ## A008333.P4098691484474784342

`A326065(A089241(n+1))`
-/

namespace A008333.P4098691484474784342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (A089241 (n + 1)).toNat

end

end A008333.P4098691484474784342

namespace A008333

/-- `A326065(A089241(n+1))` -/
def P4098691484474784342.Spec : Prop :=
  ∀ n, P4098691484474784342.a n = A008333 (n + 1)

end A008333

/-! ## A008333.P9813282982620519786

`A354103(A267099(A354103(A267101(n+1))))`
-/

namespace A008333.P9813282982620519786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354103 (A267099 (A354103 (A267101 (n + 1)).toNat).toNat).toNat

end

end A008333.P9813282982620519786

namespace A008333

/-- `A354103(A267099(A354103(A267101(n+1))))` -/
def P9813282982620519786.Spec : Prop :=
  ∀ n, P9813282982620519786.a n = A008333 (n + 1)

end A008333

/-!
# A008334: Number of distinct primes dividing p-1, where p = n-th prime.

The programs for A008334, the canonical program `A008334.P15363982407280049096` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008334 has offset 1).

The definition of A008334 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008334.P15363982407280049096

`∑{e}[A077063(1+n), #]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A008334

/-- `∑{e}[A077063(1+n), #]` -/
def P15363982407280049096.Spec : Prop :=
  ∀ n, (P15363982407280049096.a n : ℤ) = A008334 (n + 1)

theorem P15363982407280049096.correct : P15363982407280049096.Spec := by
  intro n
  simp only [A008334, Nat.add_sub_cancel]

end A008334

/-! ## A008334.P7097494779146882832

`∑{e}[∏{p}[A006093(n+1), #], #]`
-/

namespace A008334.P7097494779146882832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A008334.P7097494779146882832

namespace A008334

/-- `∑{e}[∏{p}[A006093(n+1), #], #]` -/
def P7097494779146882832.Spec : Prop :=
  ∀ n, (P7097494779146882832.a n : ℤ) = A008334 (n + 1)

end A008334

/-! ## A008334.P3662684460194677773

`∑{e}[∏{p}[A040976(n+1)+1, #], #]`
-/

namespace A008334.P3662684460194677773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A008334.P3662684460194677773

namespace A008334

/-- `∑{e}[∏{p}[A040976(n+1)+1, #], #]` -/
def P3662684460194677773.Spec : Prop :=
  ∀ n, (P3662684460194677773.a n : ℤ) = A008334 (n + 1)

end A008334

/-! ## A008334.P13556709614139477878

`∑{e}[∏{p}[1-A000040(1+n), #], #]`
-/

namespace A008334.P13556709614139477878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000040 (1 + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A008334.P13556709614139477878

namespace A008334

/-- `∑{e}[∏{p}[1-A000040(1+n), #], #]` -/
def P13556709614139477878.Spec : Prop :=
  ∀ n, (P13556709614139477878.a n : ℤ) = A008334 (n + 1)

end A008334

/-! ## A008334.P10546361032311317747

`∑{e}[∏{p}[A014689(n+1)+n, #], #]`
-/

namespace A008334.P10546361032311317747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) + (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A008334.P10546361032311317747

namespace A008334

/-- `∑{e}[∏{p}[A014689(n+1)+n, #], #]` -/
def P10546361032311317747.Spec : Prop :=
  ∀ n, (P10546361032311317747.a n : ℤ) = A008334 (n + 1)

end A008334

/-! ## A008334.P10148531886192541507

`∑{e}[∏{p}[a(n-1)+A001223(n), #], #]` with `a(0)=1`
-/

namespace A008334.P10148531886192541507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + A001223 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A008334.P10148531886192541507

namespace A008334

/-- `∑{e}[∏{p}[a(n-1)+A001223(n), #], #]` -/
def P10148531886192541507.Spec : Prop :=
  ∀ n, (P10148531886192541507.a n : ℤ) = A008334 (n + 1)

end A008334

/-! ## A008334.P12480933301007165130

`∑{p}[A006093(n+1), A010051(#)]`
-/

namespace A008334.P12480933301007165130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A010051 p

end

end A008334.P12480933301007165130

namespace A008334

/-- `∑{p}[A006093(n+1), A010051(#)]` -/
def P12480933301007165130.Spec : Prop :=
  ∀ n, P12480933301007165130.a n = A008334 (n + 1)

end A008334

/-! ## A008334.P14709431652222075275

`∑{p}[1-A000040(n+1), A001222(#)]`
-/

namespace A008334.P14709431652222075275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A008334.P14709431652222075275

namespace A008334

/-- `∑{p}[1-A000040(n+1), A001222(#)]` -/
def P14709431652222075275.Spec : Prop :=
  ∀ n, P14709431652222075275.a n = A008334 (n + 1)

end A008334

/-! ## A008334.P12084030161882293240

`A001221(A278227(n+1))`
-/

namespace A008334.P12084030161882293240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A278227 (n + 1)).toNat

end

end A008334.P12084030161882293240

namespace A008334

/-- `A001221(A278227(n+1))` -/
def P12084030161882293240.Spec : Prop :=
  ∀ n, P12084030161882293240.a n = A008334 (n + 1)

end A008334

/-! ## A008334.P2595856743706132360

`∑{e}[∏{p}[record[A000010(1+n)], #], #]`
-/

namespace A008334.P2595856743706132360
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A008334.P2595856743706132360

namespace A008334

/-- `∑{e}[∏{p}[record[A000010(1+n)], #], #]` -/
def P2595856743706132360.Spec : Prop :=
  ∀ n, (P2595856743706132360.a n : ℤ) = A008334 (n + 1)

end A008334

/-! ## A008334.P1240459745707215948

`∑{e}[record[A000010(n+1)], #²%(#+1)]`
-/

namespace A008334.P1240459745707215948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ 2 % (Nat.factorization (f1 n).natAbs p + 1)

end

end A008334.P1240459745707215948

namespace A008334

/-- `∑{e}[record[A000010(n+1)], #²%(#+1)]` -/
def P1240459745707215948.Spec : Prop :=
  ∀ n, (P1240459745707215948.a n : ℤ) = A008334 (n + 1)

end A008334

/-! ## A008334.P18406750365066988998

`A001221(∑[A075526(n)])`
-/

namespace A008334.P18406750365066988998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008334.P18406750365066988998

namespace A008334

/-- `A001221(∑[A075526(n)])` -/
def P18406750365066988998.Spec : Prop :=
  ∀ n, P18406750365066988998.a n = A008334 (n + 1)

end A008334

/-! ## A008334.P15294300756283449714

`A339871(A077017(n+2))`
-/

namespace A008334.P15294300756283449714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339871 (A077017 (n + 2)).toNat

end

end A008334.P15294300756283449714

namespace A008334

/-- `A339871(A077017(n+2))` -/
def P15294300756283449714.Spec : Prop :=
  ∀ n, P15294300756283449714.a n = A008334 (n + 1)

end A008334

/-! ## A008334.P16580221670080837059

`A055734(A000040(n+1))`
-/

namespace A008334.P16580221670080837059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055734 (A000040 (n + 1)).toNat

end

end A008334.P16580221670080837059

namespace A008334

/-- `A055734(A000040(n+1))` -/
def P16580221670080837059.Spec : Prop :=
  ∀ n, P16580221670080837059.a n = A008334 (n + 1)

end A008334

/-! ## A008334.P8001777683524348557

`A087624(A037168(n+1))`
-/

namespace A008334.P8001777683524348557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087624 (A037168 (n + 1)).toNat

end

end A008334.P8001777683524348557

namespace A008334

/-- `A087624(A037168(n+1))` -/
def P8001777683524348557.Spec : Prop :=
  ∀ n, P8001777683524348557.a n = A008334 (n + 1)

end A008334

/-! ## A008334.P8327027633196381351

`A106404(A100484(n+1)-2)`
-/

namespace A008334.P8327027633196381351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106404 (A100484 (n + 1) - 2).toNat

end

end A008334.P8327027633196381351

namespace A008334

/-- `A106404(A100484(n+1)-2)` -/
def P8327027633196381351.Spec : Prop :=
  ∀ n, P8327027633196381351.a n = A008334 (n + 1)

end A008334

/-! ## A008334.P4054166464538816789

`A303975(A055003(n+1))`
-/

namespace A008334.P4054166464538816789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (A055003 (n + 1)).toNat

end

end A008334.P4054166464538816789

namespace A008334

/-- `A303975(A055003(n+1))` -/
def P4054166464538816789.Spec : Prop :=
  ∀ n, P4054166464538816789.a n = A008334 (n + 1)

end A008334

/-! ## A008334.P15545454842732096445

`A305054(A175248(n+2))`
-/

namespace A008334.P15545454842732096445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305054 (A175248 (n + 2)).toNat

end

end A008334.P15545454842732096445

namespace A008334

/-- `A305054(A175248(n+2))` -/
def P15545454842732096445.Spec : Prop :=
  ∀ n, P15545454842732096445.a n = A008334 (n + 1)

end A008334

/-!
# A008335: Number of distinct primes dividing p+1 as p runs through the primes.

The programs for A008335, the canonical program `A008335.P9126335808444534877` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008335 has offset 1).

The definition of A008335 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008335.P9126335808444534877

`A001221(A008864(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A008335

/-- `A001221(A008864(n+1))` -/
def P9126335808444534877.Spec : Prop :=
  ∀ n, P9126335808444534877.a n = A008335 (n + 1)

theorem P9126335808444534877.correct : P9126335808444534877.Spec := by
  intro n
  simp only [A008335, Nat.add_sub_cancel]

end A008335

/-! ## A008335.P6847170288445469509

`A001221(A000040(n+1)+1)`
-/

namespace A008335.P6847170288445469509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000040 (n + 1) + 1).toNat

end

end A008335.P6847170288445469509

namespace A008335

/-- `A001221(A000040(n+1)+1)` -/
def P6847170288445469509.Spec : Prop :=
  ∀ n, P6847170288445469509.a n = A008335 (n + 1)

end A008335

/-! ## A008335.P2151844559045262996

`∑{e}[A077066(1+n), #]`
-/

namespace A008335.P2151844559045262996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077066 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A008335.P2151844559045262996

namespace A008335

/-- `∑{e}[A077066(1+n), #]` -/
def P2151844559045262996.Spec : Prop :=
  ∀ n, (P2151844559045262996.a n : ℤ) = A008335 (n + 1)

end A008335

/-! ## A008335.P10875204594050726853

`∑{p}[A008864(n+1), C(#, #)]`
-/

namespace A008335.P10875204594050726853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.choose p p

end

end A008335.P10875204594050726853

namespace A008335

/-- `∑{p}[A008864(n+1), C(#, #)]` -/
def P10875204594050726853.Spec : Prop :=
  ∀ n, (P10875204594050726853.a n : ℤ) = A008335 (n + 1)

end A008335

/-! ## A008335.P17365995178559844045

`∑{e}[∏{p}[1+Δ[A007504(n)], #], #]`
-/

namespace A008335.P17365995178559844045
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (f3 (n + 1) - f3 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A008335.P17365995178559844045

namespace A008335

/-- `∑{e}[∏{p}[1+Δ[A007504(n)], #], #]` -/
def P17365995178559844045.Spec : Prop :=
  ∀ n, (P17365995178559844045.a n : ℤ) = A008335 (n + 1)

end A008335

/-! ## A008335.P6801262944160889830

`∑{p}[1+A000040(n+1), C(#, #)]`
-/

namespace A008335.P6801262944160889830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.choose p p

end

end A008335.P6801262944160889830

namespace A008335

/-- `∑{p}[1+A000040(n+1), C(#, #)]` -/
def P6801262944160889830.Spec : Prop :=
  ∀ n, (P6801262944160889830.a n : ℤ) = A008335 (n + 1)

end A008335

/-! ## A008335.P2381535766470234826

`∑{e}[∏{p}[1+A000040(1+n), #], #]`
-/

namespace A008335.P2381535766470234826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000040 (1 + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A008335.P2381535766470234826

namespace A008335

/-- `∑{e}[∏{p}[1+A000040(1+n), #], #]` -/
def P2381535766470234826.Spec : Prop :=
  ∀ n, (P2381535766470234826.a n : ℤ) = A008335 (n + 1)

end A008335

/-! ## A008335.P11709853248130540788

`∑{e}[∏{p}[A006093(n+1)+2, #], #]`
-/

namespace A008335.P11709853248130540788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A008335.P11709853248130540788

namespace A008335

/-- `∑{e}[∏{p}[A006093(n+1)+2, #], #]` -/
def P11709853248130540788.Spec : Prop :=
  ∀ n, (P11709853248130540788.a n : ℤ) = A008335 (n + 1)

end A008335

/-! ## A008335.P6657734258682881661

`∑{p}[A000040(n+1)+1, A001222(#)]`
-/

namespace A008335.P6657734258682881661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A008335.P6657734258682881661

namespace A008335

/-- `∑{p}[A000040(n+1)+1, A001222(#)]` -/
def P6657734258682881661.Spec : Prop :=
  ∀ n, P6657734258682881661.a n = A008335 (n + 1)

end A008335

/-! ## A008335.P15331777715268832404

`A061395(A278228(n+1))`
-/

namespace A008335.P15331777715268832404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A278228 (n + 1)).toNat

end

end A008335.P15331777715268832404

namespace A008335

/-- `A061395(A278228(n+1))` -/
def P15331777715268832404.Spec : Prop :=
  ∀ n, P15331777715268832404.a n = A008335 (n + 1)

end A008335

/-! ## A008335.P13493589487519367261

`A001222(∏{p}[A008864(n+1), #])`
-/

namespace A008335.P13493589487519367261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A008335.P13493589487519367261

namespace A008335

/-- `A001222(∏{p}[A008864(n+1), #])` -/
def P13493589487519367261.Spec : Prop :=
  ∀ n, P13493589487519367261.a n = A008335 (n + 1)

end A008335

/-! ## A008335.P2502365430285179382

`A099812(A111333(n+1))`
-/

namespace A008335.P2502365430285179382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099812 (A111333 (n + 1)).toNat

end

end A008335.P2502365430285179382

namespace A008335

/-- `A099812(A111333(n+1))` -/
def P2502365430285179382.Spec : Prop :=
  ∀ n, P2502365430285179382.a n = A008335 (n + 1)

end A008335

/-! ## A008335.P1517790865306927232

`A062501(A014692(n+1))`
-/

namespace A008335.P1517790865306927232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062501 (A014692 (n + 1)).toNat

end

end A008335.P1517790865306927232

namespace A008335

/-- `A062501(A014692(n+1))` -/
def P1517790865306927232.Spec : Prop :=
  ∀ n, P1517790865306927232.a n = A008335 (n + 1)

end A008335

/-! ## A008335.P12650341265686117509

`A058062(A000040(n+1))`
-/

namespace A008335.P12650341265686117509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058062 (A000040 (n + 1)).toNat

end

end A008335.P12650341265686117509

namespace A008335

/-- `A058062(A000040(n+1))` -/
def P12650341265686117509.Spec : Prop :=
  ∀ n, P12650341265686117509.a n = A008335 (n + 1)

end A008335

/-! ## A008335.P11017119409964730483

`A087624(A175216(n+1))`
-/

namespace A008335.P11017119409964730483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087624 (A175216 (n + 1)).toNat

end

end A008335.P11017119409964730483

namespace A008335

/-- `A087624(A175216(n+1))` -/
def P11017119409964730483.Spec : Prop :=
  ∀ n, P11017119409964730483.a n = A008335 (n + 1)

end A008335

/-! ## A008335.P6412643690497962122

`A106404(A100484(n+1)+2)`
-/

namespace A008335.P6412643690497962122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106404 (A100484 (n + 1) + 2).toNat

end

end A008335.P6412643690497962122

namespace A008335

/-- `A106404(A100484(n+1)+2)` -/
def P6412643690497962122.Spec : Prop :=
  ∀ n, P6412643690497962122.a n = A008335 (n + 1)

end A008335

/-! ## A008335.P4111472580746702223

`A303975(A072677(n+1))`
-/

namespace A008335.P4111472580746702223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (A072677 (n + 1)).toNat

end

end A008335.P4111472580746702223

namespace A008335

/-- `A303975(A072677(n+1))` -/
def P4111472580746702223.Spec : Prop :=
  ∀ n, P4111472580746702223.a n = A008335 (n + 1)

end A008335

/-! ## A008335.P7563484204248498488

`A087802(A028815(n+1))`
-/

namespace A008335.P7563484204248498488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087802 (A028815 (n + 1)).toNat

end

end A008335.P7563484204248498488

namespace A008335

/-- `A087802(A028815(n+1))` -/
def P7563484204248498488.Spec : Prop :=
  ∀ n, P7563484204248498488.a n = A008335 (n + 1)

end A008335

/-!
# A008336: a(n+1) = a(n)/n if n|a(n) else a(n)*n, a(1) = 1.

The programs for A008336, there is no canonical definition to state claims against.
-/

/-! ## A008336.P5116649221870267812

`A055773(n)*A370971(n+1)`
-/

namespace A008336.P5116649221870267812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055773 n * A370971 (n + 1)

end

end A008336.P5116649221870267812

/-! ## A008336.P10535917273284876086

`n!/A195504(n+1)²`
-/

namespace A008336.P10535917273284876086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A195504 (n + 1) ^ 2 : ℚ)

end

end A008336.P10535917273284876086

/-! ## A008336.P3513043430373234378

`A000142(n)/A195504(n+1)²`
-/

namespace A008336.P3513043430373234378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A195504 (n + 1) ^ 2 : ℚ)

end

end A008336.P3513043430373234378

/-! ## A008336.P16894998327747686833

`Δ[A003422(n)]/A195504(n+1)²`
-/

namespace A008336.P16894998327747686833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A195504 (n + 1) ^ 2 : ℚ)

end

end A008336.P16894998327747686833

/-!
# A008337: Number of orbits on points that are at n steps from 0 in E_8 lattice.

The programs for A008337, there is no canonical definition to state claims against.
-/

/-! ## A008337.P18131153418186633604

`A381432(A357640(n))+A194221(n+1)`
-/

namespace A008337.P18131153418186633604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381432 (A357640 n).toNat + A194221 (n + 1)

end

end A008337.P18131153418186633604

/-! ## A008337.P1618832689104301008

`A319066(n)+A000120(A034349(n+3))`
-/

namespace A008337.P1618832689104301008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319066 n + A000120 (A034349 (n + 3)).toNat

end

end A008337.P1618832689104301008

/-! ## A008337.P8061062205254413105

`A000196(A111490(n+1)*A320330(n))`
-/

namespace A008337.P8061062205254413105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A111490 (n + 1) * A320330 n).toNat

end

end A008337.P8061062205254413105

/-! ## A008337.P15949636488302034056

`A232012(A024786(n+2))+A024788(n+1)`
-/

namespace A008337.P15949636488302034056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232012 (A024786 (n + 2)).toNat + A024788 (n + 1)

end

end A008337.P15949636488302034056

/-! ## A008337.P16849450399811644388

`A138373(A145722(n))+A000196(A335514(n))`
-/

namespace A008337.P16849450399811644388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138373 (A145722 n).toNat + A000196 (A335514 n).toNat

end

end A008337.P16849450399811644388

/-!
# A008338: a(n+1) = a(n)/n! if n! divides a(n) else a(n)*n!.

The programs for A008338, there is no canonical definition to state claims against.
-/

/-! ## A008338.P11408947414687724843

`∏[n!^A020985(A077849(n))]`
-/

namespace A008338.P11408947414687724843
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) ^ (A020985 (A077849 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A008338.P11408947414687724843

/-! ## A008338.P4518301949540277584

`∏[A000142(n)^A020985(A077849(n))]`
-/

namespace A008338.P4518301949540277584
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) ^ (A020985 (A077849 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A008338.P4518301949540277584

/-! ## A008338.P2014070470571466590

`∏[A214078(n²)^A020985(A077849(n))]`
-/

namespace A008338.P2014070470571466590
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214078 (n ^ 2) : ℚ) ^ (A020985 (A077849 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A008338.P2014070470571466590

/-!
# A008339: a(1)=1; for n >= 1, a(n+1) = lcm(a(n),n) / gcd(a(n),n).

The programs for A008339, the canonical program `A008339.P11131730802293776589` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008339 has offset 1).

The definition of A008339 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008339.P11131730802293776589

`lcm(a(n-1), n)/gcd(a(n-1), n)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008339

/-- `lcm(a(n-1), n)/gcd(a(n-1), n)` -/
def P11131730802293776589.Spec : Prop :=
  ∀ n, P11131730802293776589.a n = (A008339 (n + 1) : ℚ)

end A008339

/-! ## A008339.P9386976919929928548

`A077139(A028310(n))`
-/

namespace A008339.P9386976919929928548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077139 (A028310 n).toNat

end

end A008339.P9386976919929928548

namespace A008339

/-- `A077139(A028310(n))` -/
def P9386976919929928548.Spec : Prop :=
  ∀ n, P9386976919929928548.a n = A008339 (n + 1)

end A008339

/-! ## A008339.P10285264011975400248

`n*a(n-1)/gcd(a(n-1)², n²)` with `a(0)=1`
-/

namespace A008339.P10285264011975400248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * (a (n - 1) / (Int.gcd (SequenceMachineLib.roundAway (a (n - 1) ^ 2)) (n ^ 2 : ℤ) : ℚ))

end

end A008339.P10285264011975400248

namespace A008339

/-- `n*a(n-1)/gcd(a(n-1)², n²)` -/
def P10285264011975400248.Spec : Prop :=
  ∀ n, P10285264011975400248.a n = (A008339 (n + 1) : ℚ)

end A008339

/-! ## A008339.P5201354546379137404

`n*a(n-1)/gcd(a(n-1)*a(n-1), n*n)` with `a(0)=1`
-/

namespace A008339.P5201354546379137404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * (a (n - 1) / (Int.gcd (SequenceMachineLib.roundAway (a (n - 1) * a (n - 1))) (n * n : ℤ) : ℚ))

end

end A008339.P5201354546379137404

namespace A008339

/-- `n*a(n-1)/gcd(a(n-1)*a(n-1), n*n)` -/
def P5201354546379137404.Spec : Prop :=
  ∀ n, P5201354546379137404.a n = (A008339 (n + 1) : ℚ)

end A008339

/-! ## A008339.P6273377836778471881

`A249831(C(n, 2)+1)`
-/

namespace A008339.P6273377836778471881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249831 (Nat.choose n 2 + 1)

end

end A008339.P6273377836778471881

namespace A008339

/-- `A249831(C(n, 2)+1)` -/
def P6273377836778471881.Spec : Prop :=
  ∀ n, P6273377836778471881.a n = A008339 (n + 1)

end A008339

/-!
# A008341: a(n)=1, a(n+1) = lcm(a(n),b(n)) / gcd(a(n),b(n)), where {b(n)} = {fibonacci(n)}.

The programs for A008341, the canonical program `A008341.P15007230396209976005` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008341 has offset 1).

The definition of A008341 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008341.P15007230396209976005

`lcm(a(n-1), A000045(n))/gcd(a(n-1), A000045(n))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008341

/-- `lcm(a(n-1), A000045(n))/gcd(a(n-1), A000045(n))` -/
def P15007230396209976005.Spec : Prop :=
  ∀ n, P15007230396209976005.a n = (A008341 (n + 1) : ℚ)

end A008341

/-! ## A008341.P7648247297087010822

`∏[∏{p}[round(ϕ^n/sqrt(5))^5, #]]`
-/

namespace A008341.P7648247297087010822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) ^ 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A008341.P7648247297087010822

namespace A008341

/-- `∏[∏{p}[round(ϕ^n/sqrt(5))^5, #]]` -/
def P7648247297087010822.Spec : Prop :=
  ∀ n, (P7648247297087010822.a n : ℤ) = A008341 (n + 1)

end A008341

/-! ## A008341.P2226604920506334724

`A007948(A003266(n))`
-/

namespace A008341.P2226604920506334724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A003266 n).toNat

end

end A008341.P2226604920506334724

namespace A008341

/-- `A007948(A003266(n))` -/
def P2226604920506334724.Spec : Prop :=
  ∀ n, P2226604920506334724.a n = A008341 (n + 1)

end A008341

/-! ## A008341.P15521614179657564401

`∏[A000045(A025492(n!))]`
-/

namespace A008341.P15521614179657564401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A025492 (Nat.factorial n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A008341.P15521614179657564401

namespace A008341

/-- `∏[A000045(A025492(n!))]` -/
def P15521614179657564401.Spec : Prop :=
  ∀ n, P15521614179657564401.a n = A008341 (n + 1)

end A008341

/-!
# A008342: Minimal number of shift, add and subtract operations to multiply by n.

The programs for A008342, there is no canonical definition to state claims against.
-/

/-! ## A008342.P14769335866521815687

`A005811(n^A174726(2*n+3))`
-/

namespace A008342.P14769335866521815687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A174726 (2 * n + 3) : ℤ))).toNat

end

end A008342.P14769335866521815687

/-! ## A008342.P3943260283534044399

`A005811(n)^A001285((n+1)^3)`
-/

namespace A008342.P3943260283534044399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005811 n : ℚ) ^ (A001285 ((n + 1) ^ 3) : ℤ)

end

end A008342.P3943260283534044399

/-! ## A008342.P8734995876286138039

`A122841(A018143(n))+A005811(n)`
-/

namespace A008342.P8734995876286138039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122841 (A018143 n).toNat + A005811 n

end

end A008342.P8734995876286138039

/-! ## A008342.P15790861347772170805

`A334889(A334875(n))+A005811(n)`
-/

namespace A008342.P15790861347772170805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334889 (A334875 n).toNat + A005811 n

end

end A008342.P15790861347772170805

/-! ## A008342.P18128252723432211545

`A088748(n)-A177694(A008280(n))`
-/

namespace A008342.P18128252723432211545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 n - A177694 (A008280 n).toNat

end

end A008342.P18128252723432211545

/-!
# A008343: a(1)=1; thereafter a(n+1) = a(n)-n if a(n) >= n otherwise a(n+1) = a(n)+n.

The programs for A008343, the canonical program `A008343.P13985368454202213891` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008343 has offset 1).

The definition of A008343 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008343.P13985368454202213891

`(n+a(n-1))%(2*n)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008343

/-- `(n+a(n-1))%(2*n)` -/
def P13985368454202213891.Spec : Prop :=
  ∀ n, (P13985368454202213891.a n : ℤ) = A008343 (n + 1)

theorem P13985368454202213891.correct : P13985368454202213891.Spec := by
  intro n
  simp only [A008343, Nat.add_sub_cancel]

end A008343

/-! ## A008343.P17539373030337407219

`(n-ceil(-a(n-1)))%(2*n)` with `a(0)=1, a(1)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A008343.P17539373030337407219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  Int.tmod ((n : ℤ) - (-a (n - 1))) (2 * n : ℤ)

end

end A008343.P17539373030337407219

namespace A008343

/-- `(n-ceil(-a(n-1)))%(2*n)` -/
def P17539373030337407219.Spec : Prop :=
  ∀ n, P17539373030337407219.a n = A008343 (n + 1)

end A008343

/-! ## A008343.P13078780857136945162

`(2*n-(n-a(n-1)))%(2*n)` with `a(0)=1`
-/

namespace A008343.P13078780857136945162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod ((2 * n : ℤ) - ((n : ℤ) - a (n - 1))) (2 * n : ℤ)

end

end A008343.P13078780857136945162

namespace A008343

/-- `(2*n-(n-a(n-1)))%(2*n)` -/
def P13078780857136945162.Spec : Prop :=
  ∀ n, P13078780857136945162.a n = A008343 (n + 1)

end A008343

/-! ## A008343.P10379514265011662867

`a(n-1)+n*(1-2*floor(a(n-1)/n))` with `a(0)=1`
-/

namespace A008343.P10379514265011662867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n : ℤ) * (1 - 2 * ⌊(a (n - 1) : ℚ) / (n : ℚ)⌋)

end

end A008343.P10379514265011662867

namespace A008343

/-- `a(n-1)+n*(1-2*floor(a(n-1)/n))` -/
def P10379514265011662867.Spec : Prop :=
  ∀ n, P10379514265011662867.a n = A008343 (n + 1)

end A008343

/-! ## A008343.P13296680151120598324

`a(n-1)-n*(2*floor(a(n-1)/n)-1)` with `a(0)=1`
-/

namespace A008343.P13296680151120598324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (n : ℤ) * (2 * ⌊(a (n - 1) : ℚ) / (n : ℚ)⌋ - 1)

end

end A008343.P13296680151120598324

namespace A008343

/-- `a(n-1)-n*(2*floor(a(n-1)/n)-1)` -/
def P13296680151120598324.Spec : Prop :=
  ∀ n, P13296680151120598324.a n = A008343 (n + 1)

end A008343

/-! ## A008343.P6428704862062489885

`n-(a(n-1)-a(n-1)%n-a(n-1)%n)` with `a(0)=1`
-/

namespace A008343.P6428704862062489885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - (a (n - 1) - Int.tmod (a (n - 1)) (n : ℤ) - Int.tmod (a (n - 1)) (n : ℤ))

end

end A008343.P6428704862062489885

namespace A008343

/-- `n-(a(n-1)-a(n-1)%n-a(n-1)%n)` -/
def P6428704862062489885.Spec : Prop :=
  ∀ n, P6428704862062489885.a n = A008343 (n + 1)

end A008343

/-! ## A008343.P183141454643539039

`floor(a(n-1)+n)%A004277(n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A008343.P183141454643539039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) + (n : ℤ)) (A004277 n)

end

end A008343.P183141454643539039

namespace A008343

/-- `floor(a(n-1)+n)%A004277(n)` -/
def P183141454643539039.Spec : Prop :=
  ∀ n, P183141454643539039.a n = A008343 (n + 1)

end A008343

/-! ## A008343.P16277879888651384612

`ceil(a(n-1)+n)%A005843(n)` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A008343.P16277879888651384612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) + (n : ℤ)) (A005843 n)

end

end A008343.P16277879888651384612

namespace A008343

/-- `ceil(a(n-1)+n)%A005843(n)` -/
def P16277879888651384612.Spec : Prop :=
  ∀ n, P16277879888651384612.a n = A008343 (n + 1)

end A008343

/-! ## A008343.P15500331994710495101

`(A046901(n+1)+n)%(2*(n+1))`
-/

namespace A008343.P15500331994710495101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046901 (n + 1) + (n : ℤ)) (2 * (n + 1) : ℤ)

end

end A008343.P15500331994710495101

namespace A008343

/-- `(A046901(n+1)+n)%(2*(n+1))` -/
def P15500331994710495101.Spec : Prop :=
  ∀ n, P15500331994710495101.a n = A008343 (n + 1)

end A008343

/-!
# A008344: a(1)=0; thereafter a(n+1) = a(n) - n if a(n) >= n otherwise a(n+1) = a(n) + n.

The programs for A008344, the canonical program `A008344.P17613419393535469807` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008344 has offset 1).

The definition of A008344 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008344.P17613419393535469807

`(n+a(n-1))%(2*n)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008344

/-- `(n+a(n-1))%(2*n)` -/
def P17613419393535469807.Spec : Prop :=
  ∀ n, (P17613419393535469807.a n : ℤ) = A008344 (n + 1)

theorem P17613419393535469807.correct : P17613419393535469807.Spec := by
  intro n
  simp only [A008344, Nat.add_sub_cancel]

end A008344

/-! ## A008344.P6221683791346725598

`(2*n-(n-a(n-1)))%(2*n)` with `a(0)=0`
-/

namespace A008344.P6221683791346725598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod ((2 * n : ℤ) - ((n : ℤ) - a (n - 1))) (2 * n : ℤ)

end

end A008344.P6221683791346725598

namespace A008344

/-- `(2*n-(n-a(n-1)))%(2*n)` -/
def P6221683791346725598.Spec : Prop :=
  ∀ n, P6221683791346725598.a n = A008344 (n + 1)

end A008344

/-! ## A008344.P2464378762250730901

`n-(a(n-1)-a(n-1)%n-a(n-1)%n)` with `a(0)=0`
-/

namespace A008344.P2464378762250730901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - (a (n - 1) - Int.tmod (a (n - 1)) (n : ℤ) - Int.tmod (a (n - 1)) (n : ℤ))

end

end A008344.P2464378762250730901

namespace A008344

/-- `n-(a(n-1)-a(n-1)%n-a(n-1)%n)` -/
def P2464378762250730901.Spec : Prop :=
  ∀ n, P2464378762250730901.a n = A008344 (n + 1)

end A008344

/-! ## A008344.P17270311596725958410

`A085059(n+1)-1`
-/

namespace A008344.P17270311596725958410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085059 (n + 1) - 1

end

end A008344.P17270311596725958410

namespace A008344

/-- `A085059(n+1)-1` -/
def P17270311596725958410.Spec : Prop :=
  ∀ n, P17270311596725958410.a n = A008344 (n + 1)

end A008344

/-! ## A008344.P5025999545168956327

`abs(a(n-1)+n)%A004277(n)` with `a(0)=0`
-/

namespace A008344.P5025999545168956327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod |a (n - 1) + (n : ℤ)| (A004277 n)

end

end A008344.P5025999545168956327

namespace A008344

/-- `abs(a(n-1)+n)%A004277(n)` -/
def P5025999545168956327.Spec : Prop :=
  ∀ n, P5025999545168956327.a n = A008344 (n + 1)

end A008344

/-! ## A008344.P7365873641296670785

`A023443(A085059(n+1))`
-/

namespace A008344.P7365873641296670785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A085059 (n + 1)).toNat

end

end A008344.P7365873641296670785

namespace A008344

/-- `A023443(A085059(n+1))` -/
def P7365873641296670785.Spec : Prop :=
  ∀ n, P7365873641296670785.a n = A008344 (n + 1)

end A008344

/-! ## A008344.P9782022594679801578

`A074136(2*n+1)%(2*n+1)`
-/

namespace A008344.P9782022594679801578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074136 (2 * n + 1)) (2 * n + 1 : ℤ)

end

end A008344.P9782022594679801578

namespace A008344

/-- `A074136(2*n+1)%(2*n+1)` -/
def P9782022594679801578.Spec : Prop :=
  ∀ n, P9782022594679801578.a n = A008344 (n + 1)

end A008344

/-! ## A008344.P16968378907643316839

`A082017(2*n+1)%(2*n+1)`
-/

namespace A008344.P16968378907643316839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082017 (2 * n + 1)) (2 * n + 1 : ℤ)

end

end A008344.P16968378907643316839

namespace A008344

/-- `A082017(2*n+1)%(2*n+1)` -/
def P16968378907643316839.Spec : Prop :=
  ∀ n, P16968378907643316839.a n = A008344 (n + 1)

end A008344

/-!
# A008345: a(n+1) = a(n)-b(n+1) if a(n) >= b(n+1) else a(n)+b(n+1), where {b(n)} are the triangular numbers A000217.

The programs for A008345, the canonical program `A008345.P13637401050820868940` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008345 has offset 0).

The definition of A008345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008345.P13637401050820868940

`(∑[n]+a(n-1))%∑[2*n]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008345

/-- `(∑[n]+a(n-1))%∑[2*n]` -/
def P13637401050820868940.Spec : Prop :=
  ∀ n, (P13637401050820868940.a n : ℤ) = A008345 n

theorem P13637401050820868940.correct : P13637401050820868940.Spec := by
  intro n
  simp only [A008345]

end A008345

/-! ## A008345.P5192136886523266058

`floor(∑[n]+a(n-1))%∑[a(n-1)+2]` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A008345.P5192136886523266058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)) % (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A008345.P5192136886523266058

namespace A008345

/-- `floor(∑[n]+a(n-1))%∑[a(n-1)+2]` -/
def P5192136886523266058.Spec : Prop :=
  ∀ n, (P5192136886523266058.a n : ℤ) = A008345 n

end A008345

/-! ## A008345.P8514618775338656528

`(a(n-1)+(n+1)*n/2)%(n²+n)` with `a(0)=0`
-/

namespace A008345.P8514618775338656528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (n + 1 : ℚ) * ((n : ℚ) / 2))) (n ^ 2 + n : ℤ)

end

end A008345.P8514618775338656528

namespace A008345

/-- `(a(n-1)+(n+1)*n/2)%(n²+n)` -/
def P8514618775338656528.Spec : Prop :=
  ∀ n, P8514618775338656528.a n = A008345 n

end A008345

/-! ## A008345.P12070812069503801029

`(n²-(C(n, 2)-a(n-1)))%A002378(n)` with `a(0)=0`
-/

namespace A008345.P12070812069503801029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod ((n ^ 2 : ℤ) - ((Nat.choose n 2 : ℤ) - a (n - 1))) (A002378 n)

end

end A008345.P12070812069503801029

namespace A008345

/-- `(n²-(C(n, 2)-a(n-1)))%A002378(n)` -/
def P12070812069503801029.Spec : Prop :=
  ∀ n, P12070812069503801029.a n = A008345 n

end A008345

/-! ## A008345.P360589512330287247

`∑[∑[n]*A062157(A058698(n+1))]`
-/

namespace A008345.P360589512330287247
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A062157 (A058698 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008345.P360589512330287247

namespace A008345

/-- `∑[∑[n]*A062157(A058698(n+1))]` -/
def P360589512330287247.Spec : Prop :=
  ∀ n, P360589512330287247.a n = A008345 n

end A008345

/-!
# A008346: a(n) = Fibonacci(n) + (-1)^n.

The programs for A008346, the canonical program `A008346.P8004040718753913505` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008346 has offset 0).

The definition of A008346 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)+(-1)^n` (program `A008346.P8004040718753913505`, by `A008346.P8004040718753913505.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008346.P5476805911480494148

`ogf(1/(1-2x^2-x^3))`
-/

namespace A008346.P5476805911480494148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -2, -1] n

end

end A008346.P5476805911480494148

namespace A008346

/-- `ogf(1/(1-2x^2-x^3))` -/
def P5476805911480494148.Spec : Prop :=
  ∀ n, P5476805911480494148.a n = A008346 n

end A008346

/-! ## A008346.P7423371271981084920

`2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A008346.P7423371271981084920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  2 * a (n - 2) + a (n - 3)

end

end A008346.P7423371271981084920

namespace A008346

/-- `2*a(n-2)+a(n-3)` -/
def P7423371271981084920.Spec : Prop :=
  ∀ n, (P7423371271981084920.a n : ℤ) = A008346 n

end A008346

/-! ## A008346.P8004040718753913505

`A000045(n)+(-1)^n`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008346

/-- `A000045(n)+(-1)^n` -/
def P8004040718753913505.Spec : Prop :=
  ∀ n, P8004040718753913505.a n = A008346 n

theorem P8004040718753913505.correct : P8004040718753913505.Spec := by
  intro n
  simp only [A008346]

end A008346

/-! ## A008346.P6090076137051117596

`a(n-1)+a(n-2)+(-1)^n` with `a(0)=1, a(1)=0`
-/

namespace A008346.P6090076137051117596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) + (a (n - 2) + (-1) ^ n)

end

end A008346.P6090076137051117596

namespace A008346

/-- `a(n-1)+a(n-2)+(-1)^n` -/
def P6090076137051117596.Spec : Prop :=
  ∀ n, P6090076137051117596.a n = A008346 n

end A008346

/-! ## A008346.P3220437345833957654

`a(n-2)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A008346.P3220437345833957654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  a (n - 2) + a (n - 2) + a (n - 3)

end

end A008346.P3220437345833957654

namespace A008346

/-- `a(n-2)+a(n-2)+a(n-3)` -/
def P3220437345833957654.Spec : Prop :=
  ∀ n, (P3220437345833957654.a n : ℤ) = A008346 n

end A008346

/-! ## A008346.P967447488832009242

`abs(A355020(n))`
-/

namespace A008346.P967447488832009242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355020 n|

end

end A008346.P967447488832009242

namespace A008346

/-- `abs(A355020(n))` -/
def P967447488832009242.Spec : Prop :=
  ∀ n, P967447488832009242.a n = A008346 n

end A008346

/-! ## A008346.P4937266385496163459

`∑[A078024(n)]`
-/

namespace A008346.P4937266385496163459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008346.P4937266385496163459

namespace A008346

/-- `∑[A078024(n)]` -/
def P4937266385496163459.Spec : Prop :=
  ∀ n, P4937266385496163459.a n = A008346 n

end A008346

/-! ## A008346.P14302963481839750448

`abs(A119282(n+1))`
-/

namespace A008346.P14302963481839750448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A119282 (n + 1)|

end

end A008346.P14302963481839750448

namespace A008346

/-- `abs(A119282(n+1))` -/
def P14302963481839750448.Spec : Prop :=
  ∀ n, P14302963481839750448.a n = A008346 n

end A008346

/-! ## A008346.P18426399052599553631

`A247050(3*(n+1))`
-/

namespace A008346.P18426399052599553631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247050 (3 * (n + 1))

end

end A008346.P18426399052599553631

namespace A008346

/-- `A247050(3*(n+1))` -/
def P18426399052599553631.Spec : Prop :=
  ∀ n, P18426399052599553631.a n = A008346 n

end A008346

/-! ## A008346.P8936732763844262366

`A065220(n)+xor(1, n)`
-/

namespace A008346.P8936732763844262366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + (Nat.xor 1 n : ℤ)

end

end A008346.P8936732763844262366

namespace A008346

/-- `A065220(n)+xor(1, n)` -/
def P8936732763844262366.Spec : Prop :=
  ∀ n, P8936732763844262366.a n = A008346 n

end A008346

/-! ## A008346.P3083964558809554740

`∑[A000045(n-1)-a(n-1)]` with `a(0)=1`
-/

namespace A008346.P3083964558809554740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000045 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008346.P3083964558809554740

namespace A008346

/-- `∑[A000045(n-1)-a(n-1)]` -/
def P3083964558809554740.Spec : Prop :=
  ∀ n, P3083964558809554740.a n = A008346 n

end A008346

/-! ## A008346.P12022428186420697223

`A000032(n-2)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=1`
-/

namespace A008346.P12022428186420697223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 1] fun n a =>
  A000032 (n - 2) + a (n - 4)

end

end A008346.P12022428186420697223

namespace A008346

/-- `A000032(n-2)+a(n-4)` -/
def P12022428186420697223.Spec : Prop :=
  ∀ n, P12022428186420697223.a n = A008346 n

end A008346

/-! ## A008346.P8718613928161712430

`A033999(n)+A000045(n)`
-/

namespace A008346.P8718613928161712430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A000045 n

end

end A008346.P8718613928161712430

namespace A008346

/-- `A033999(n)+A000045(n)` -/
def P8718613928161712430.Spec : Prop :=
  ∀ n, P8718613928161712430.a n = A008346 n

theorem P8718613928161712430.correct : P8718613928161712430.Spec := by
  intro n
  simp only [A008346, Nat.add_sub_cancel, A008346.P8718613928161712430.a, A008346.P8004040718753913505.a, A000045, A000045.P11838749114346432762.a, A033999, A033999.P17703899380244199787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008346

/-! ## A008346.P13215379653252835246

`A065220(n)+A004442(n)`
-/

namespace A008346.P13215379653252835246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + A004442 n

end

end A008346.P13215379653252835246

namespace A008346

/-- `A065220(n)+A004442(n)` -/
def P13215379653252835246.Spec : Prop :=
  ∀ n, P13215379653252835246.a n = A008346 n

theorem P13215379653252835246.correct : P13215379653252835246.Spec := by
  intro n
  simp only [A008346, Nat.add_sub_cancel, A008346.P13215379653252835246.a, A008346.P8004040718753913505.a, A000045, A000045.P11838749114346432762.a, A004442, A004442.P2439415777187857398.a, A065220, A065220.P6653459094866898540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008346

/-! ## A008346.P7672459417405946452

`A114285(n)+A002062(n)`
-/

namespace A008346.P7672459417405946452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114285 n + A002062 n

end

end A008346.P7672459417405946452

namespace A008346

/-- `A114285(n)+A002062(n)` -/
def P7672459417405946452.Spec : Prop :=
  ∀ n, P7672459417405946452.a n = A008346 n

end A008346

/-! ## A008346.P3756050173223999848

`A001611(n)-A010673(n)`
-/

namespace A008346.P3756050173223999848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - A010673 n

end

end A008346.P3756050173223999848

namespace A008346

/-- `A001611(n)-A010673(n)` -/
def P3756050173223999848.Spec : Prop :=
  ∀ n, P3756050173223999848.a n = A008346 n

end A008346

/-! ## A008346.P5185612863721553756

`A157725(n)-A010684(n)`
-/

namespace A008346.P5185612863721553756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 n - A010684 n

end

end A008346.P5185612863721553756

namespace A008346

/-- `A157725(n)-A010684(n)` -/
def P5185612863721553756.Spec : Prop :=
  ∀ n, P5185612863721553756.a n = A008346 n

end A008346

/-! ## A008346.P1544019539292320532

`A157726(n)-A010694(n)`
-/

namespace A008346.P1544019539292320532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 n - A010694 n

end

end A008346.P1544019539292320532

namespace A008346

/-- `A157726(n)-A010694(n)` -/
def P1544019539292320532.Spec : Prop :=
  ∀ n, P1544019539292320532.a n = A008346 n

end A008346

/-! ## A008346.P1257730741852700620

`A157727(n)-A010703(n)`
-/

namespace A008346.P1257730741852700620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157727 n - A010703 n

end

end A008346.P1257730741852700620

namespace A008346

/-- `A157727(n)-A010703(n)` -/
def P1257730741852700620.Spec : Prop :=
  ∀ n, P1257730741852700620.a n = A008346 n

end A008346

/-!
# A008347: a(n) = Sum_{i=0..n-1} (-1)^i * prime(n-i).

The programs for A008347, the canonical program `A008347.P1984781182332064852` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008347 has offset 0).

The definition of A008347 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, (-1)^#*A000040(n-#)]` (program `A008347.P1984781182332064852`, by `A008347.P1984781182332064852.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008347.P7172351178524916195

`A000040(n)-a(n-1)` with `a(0)=0`
-/

namespace A008347.P7172351178524916195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000040 n - a (n - 1)

end

end A008347.P7172351178524916195

namespace A008347

/-- `A000040(n)-a(n-1)` -/
def P7172351178524916195.Spec : Prop :=
  ∀ n, P7172351178524916195.a n = A008347 n

end A008347

/-! ## A008347.P1984781182332064852

`∑{#}[n-1, (-1)^#*A000040(n-#)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008347

/-- `∑{#}[n-1, (-1)^#*A000040(n-#)]` -/
def P1984781182332064852.Spec : Prop :=
  ∀ n, P1984781182332064852.a n = A008347 n

theorem P1984781182332064852.correct : P1984781182332064852.Spec := by
  intro n
  simp only [A008347]

end A008347

/-! ## A008347.P14378286625630227155

`Δ[A355726(n)]`
-/

namespace A008347.P14378286625630227155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008347.P14378286625630227155

namespace A008347

/-- `Δ[A355726(n)]` -/
def P14378286625630227155.Spec : Prop :=
  ∀ n, P14378286625630227155.a n = A008347 n

end A008347

/-! ## A008347.P17337871458952525089

`A036467(n)-(-1)^n`
-/

namespace A008347.P17337871458952525089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036467 n - (-1) ^ n

end

end A008347.P17337871458952525089

namespace A008347

/-- `A036467(n)-(-1)^n` -/
def P17337871458952525089.Spec : Prop :=
  ∀ n, P17337871458952525089.a n = A008347 n

theorem P17337871458952525089.correct : P17337871458952525089.Spec := by
  intro n
  simp only [A008347, Nat.add_sub_cancel, A008347.P17337871458952525089.a, A008347.P1984781182332064852.f1, A008347.P1984781182332064852.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A036467, A036467.P9941389810136272924.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008347

/-! ## A008347.P2944002656582812178

`A338467(n+1)-or(1, n)`
-/

namespace A008347.P2944002656582812178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338467 (n + 1) - (Nat.lor 1 n : ℤ)

end

end A008347.P2944002656582812178

namespace A008347

/-- `A338467(n+1)-or(1, n)` -/
def P2944002656582812178.Spec : Prop :=
  ∀ n, P2944002656582812178.a n = A008347 n

end A008347

/-! ## A008347.P243930855704210280

`A181346(n)+a(n-2)` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A008347.P243930855704210280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  A181346 n + a (n - 2)

end

end A008347.P243930855704210280

namespace A008347

/-- `A181346(n)+a(n-2)` -/
def P243930855704210280.Spec : Prop :=
  ∀ n, P243930855704210280.a n = A008347 n

end A008347

/-! ## A008347.P5972462437827965551

`A006093(n)+1-a(n-1)` with `a(0)=0`
-/

namespace A008347.P5972462437827965551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A006093 n + 1 - a (n - 1)

end

end A008347.P5972462437827965551

namespace A008347

/-- `A006093(n)+1-a(n-1)` -/
def P5972462437827965551.Spec : Prop :=
  ∀ n, P5972462437827965551.a n = A008347 n

end A008347

/-! ## A008347.P7301910979865488865

`A008578(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A008347.P7301910979865488865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A008578 (n + 1) - a (n - 1)

end

end A008347.P7301910979865488865

namespace A008347

/-- `A008578(n+1)-a(n-1)` -/
def P7301910979865488865.Spec : Prop :=
  ∀ n, P7301910979865488865.a n = A008347 n

end A008347

/-! ## A008347.P16562048619209462277

`A182986(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A008347.P16562048619209462277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A182986 (n + 1) - a (n - 1)

end

end A008347.P16562048619209462277

namespace A008347

/-- `A182986(n+1)-a(n-1)` -/
def P16562048619209462277.Spec : Prop :=
  ∀ n, P16562048619209462277.a n = A008347 n

end A008347

/-! ## A008347.P9164808902162786367

`A040976(n)+2-a(n-1)` with `a(0)=0`
-/

namespace A008347.P9164808902162786367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A040976 n + (2 - a (n - 1))

end

end A008347.P9164808902162786367

namespace A008347

/-- `A040976(n)+2-a(n-1)` -/
def P9164808902162786367.Spec : Prop :=
  ∀ n, P9164808902162786367.a n = A008347 n

end A008347

/-! ## A008347.P17127782559168507162

`A086530(n+1)-A036467(n)`
-/

namespace A008347.P17127782559168507162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086530 (n + 1) - A036467 n

end

end A008347.P17127782559168507162

namespace A008347

/-- `A086530(n+1)-A036467(n)` -/
def P17127782559168507162.Spec : Prop :=
  ∀ n, P17127782559168507162.a n = A008347 n

end A008347

/-! ## A008347.P4397395336797934372

`A338467(n+1)-A109613(n)`
-/

namespace A008347.P4397395336797934372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338467 (n + 1) - A109613 n

end

end A008347.P4397395336797934372

namespace A008347

/-- `A338467(n+1)-A109613(n)` -/
def P4397395336797934372.Spec : Prop :=
  ∀ n, P4397395336797934372.a n = A008347 n

end A008347

/-! ## A008347.P5044155600640301343

`A355726(n+1)-A355726(n)`
-/

namespace A008347.P5044155600640301343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355726 (n + 1) - A355726 n

end

end A008347.P5044155600640301343

namespace A008347

/-- `A355726(n+1)-A355726(n)` -/
def P5044155600640301343.Spec : Prop :=
  ∀ n, P5044155600640301343.a n = A008347 n

end A008347

/-! ## A008347.P1405043571965133085

`A083236(n)-2*A033999(n)`
-/

namespace A008347.P1405043571965133085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083236 n - 2 * A033999 n

end

end A008347.P1405043571965133085

namespace A008347

/-- `A083236(n)-2*A033999(n)` -/
def P1405043571965133085.Spec : Prop :=
  ∀ n, P1405043571965133085.a n = A008347 n

end A008347

/-! ## A008347.P13329887389977598670

`2*A036467(n)-A083236(n)`
-/

namespace A008347.P13329887389977598670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036467 n - A083236 n

end

end A008347.P13329887389977598670

namespace A008347

/-- `2*A036467(n)-A083236(n)` -/
def P13329887389977598670.Spec : Prop :=
  ∀ n, P13329887389977598670.a n = A008347 n

end A008347

/-! ## A008347.P15001007172103280684

`A007504(n)-2*A355726(n)`
-/

namespace A008347.P15001007172103280684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - 2 * A355726 n

end

end A008347.P15001007172103280684

namespace A008347

/-- `A007504(n)-2*A355726(n)` -/
def P15001007172103280684.Spec : Prop :=
  ∀ n, P15001007172103280684.a n = A008347 n

end A008347

/-! ## A008347.P11891573165033528614

`A000040(n+1)-abs(∑[A273960(n+1)])`
-/

namespace A008347.P11891573165033528614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A008347.P11891573165033528614

namespace A008347

/-- `A000040(n+1)-abs(∑[A273960(n+1)])` -/
def P11891573165033528614.Spec : Prop :=
  ∀ n, P11891573165033528614.a n = A008347 n

end A008347

/-! ## A008347.P10081892255120584771

`∑[A008578(n+1)*A062157(n)]*A062157(n)`
-/

namespace A008347.P10081892255120584771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A062157 n

end

end A008347.P10081892255120584771

namespace A008347

/-- `∑[A008578(n+1)*A062157(n)]*A062157(n)` -/
def P10081892255120584771.Spec : Prop :=
  ∀ n, P10081892255120584771.a n = A008347 n

end A008347

/-! ## A008347.P14224571967345652733

`A033999(n+1)+A083236(n)+A033999(n+1)`
-/

namespace A008347.P14224571967345652733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + (A083236 n + A033999 (n + 1))

end

end A008347.P14224571967345652733

namespace A008347

/-- `A033999(n+1)+A083236(n)+A033999(n+1)` -/
def P14224571967345652733.Spec : Prop :=
  ∀ n, P14224571967345652733.a n = A008347 n

end A008347

/-! ## A008347.P881866208442150703

`A000040(n+1)-(A397897(n+1)+A397897(n))`
-/

namespace A008347.P881866208442150703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (A397897 (n + 1) + A397897 n)

end

end A008347.P881866208442150703

namespace A008347

/-- `A000040(n+1)-(A397897(n+1)+A397897(n))` -/
def P881866208442150703.Spec : Prop :=
  ∀ n, P881866208442150703.a n = A008347 n

end A008347

/-!
# A008348: a(0)=0; thereafter a(n) = a(n-1) + prime(n) if a(n-1) < prime(n), otherwise a(n) = a(n-1) - prime(n).

The programs for A008348, the canonical program `A008348.P3100187356912498833` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008348 has offset 0).

The definition of A008348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008348.P11952273589610181328

`A022836(n)-1`
-/

namespace A008348.P11952273589610181328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022836 n - 1

end

end A008348.P11952273589610181328

namespace A008348

/-- `A022836(n)-1` -/
def P11952273589610181328.Spec : Prop :=
  ∀ n, P11952273589610181328.a n = A008348 n

theorem P11952273589610181328.correct : P11952273589610181328.Spec := by
  intro n
  simp only [A008348, Nat.add_sub_cancel, A008348.P11952273589610181328.a, A008348.P3100187356912498833.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001747, A001747.P198467477273308856.a, A022836, A022836.P17590005047498437959.a, A008578, A008578.P3639467937083264764.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008348

/-! ## A008348.P3100187356912498833

`(a(n-1)+A000040(n))%A001747(n+1)` with `a(0)=0`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A008348

/-- `(a(n-1)+A000040(n))%A001747(n+1)` -/
def P3100187356912498833.Spec : Prop :=
  ∀ n, P3100187356912498833.a n = A008348 n

theorem P3100187356912498833.correct : P3100187356912498833.Spec := by
  intro n
  simp only [A008348]

end A008348

/-! ## A008348.P13590015864992854177

`A023443(A022836(n))`
-/

namespace A008348.P13590015864992854177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A022836 n).toNat

end

end A008348.P13590015864992854177

namespace A008348

/-- `A023443(A022836(n))` -/
def P13590015864992854177.Spec : Prop :=
  ∀ n, P13590015864992854177.a n = A008348 n

end A008348

/-! ## A008348.P6745975655340299497

`A023444(A022836(n)+1)`
-/

namespace A008348.P6745975655340299497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A022836 n + 1).toNat

end

end A008348.P6745975655340299497

namespace A008348

/-- `A023444(A022836(n)+1)` -/
def P6745975655340299497.Spec : Prop :=
  ∀ n, P6745975655340299497.a n = A008348 n

end A008348

/-! ## A008348.P3880254146404341852

`A023444(2*A022836(n))/2`
-/

namespace A008348.P3880254146404341852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023444 (2 * A022836 n).toNat : ℚ) / 2

end

end A008348.P3880254146404341852

namespace A008348

/-- `A023444(2*A022836(n))/2` -/
def P3880254146404341852.Spec : Prop :=
  ∀ n, P3880254146404341852.a n = (A008348 n : ℚ)

end A008348

/-!
# A008349: Crystal ball sequence for E_8 lattice.

The programs for A008349, there is no canonical definition to state claims against.
-/

/-! ## A008349.P5868313796250922230

`∑[A008340(n)]`
-/

namespace A008349.P5868313796250922230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008349.P5868313796250922230

/-! ## A008349.P10548349433403397209

`A008340(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A008349.P10548349433403397209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008340 (A028310 n).toNat + a (n - 1)

end

end A008349.P10548349433403397209

/-! ## A008349.P13882254722272855660

`A008340(A004277(n)/2)+a(n-1)` with `a(0)=1`
-/

namespace A008349.P13882254722272855660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008340 (SequenceMachineLib.roundAway ((A004277 n : ℚ) / 2)).toNat + a (n - 1)

end

end A008349.P13882254722272855660

/-! ## A008349.P5582118145617133691

`A008340(A000007(n)+n)+a(n-1)` with `a(0)=1`
-/

namespace A008349.P5582118145617133691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008340 (A000007 n + (n : ℤ)).toNat + a (n - 1)

end

end A008349.P5582118145617133691

/-! ## A008349.P16440553671108757151

`A008340(n%A008340(n))+a(n-1)` with `a(0)=1`
-/

namespace A008349.P16440553671108757151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008340 (Int.tmod (n : ℤ) (A008340 n)).toNat + a (n - 1)

end

end A008349.P16440553671108757151

/-!
# A008350: Number of orbits of norm 2n vectors in E_8 lattice.

The programs for A008350, there is no canonical definition to state claims against.
-/

/-! ## A008350.P17881213226321728032

`A057164(1*A019556(n))`
-/

namespace A008350.P17881213226321728032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (1 * A019556 n).toNat

end

end A008350.P17881213226321728032

/-! ## A008350.P2157046474550305324

`A019556(n)`
-/

namespace A008350.P2157046474550305324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019556 n

end

end A008350.P2157046474550305324

/-!
# A008351: a(n) is the concatenation of a(n-1) and a(n-2) with a(1)=1, a(2)=2.

The programs for A008351, there is no canonical definition to state claims against.
-/

/-! ## A008351.P4598098836670695153

`A108047(n+1)+A061107(n)`
-/

namespace A008351.P4598098836670695153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108047 (n + 1) + A061107 n

end

end A008351.P4598098836670695153

/-! ## A008351.P16136162928188914756

`A131293(n+1)+A061107(n)`
-/

namespace A008351.P16136162928188914756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131293 (n + 1) + A061107 n

end

end A008351.P16136162928188914756

/-! ## A008351.P15385398351022420287

`2*A108047(n+1)-A288582(n)`
-/

namespace A008351.P15385398351022420287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108047 (n + 1) - A288582 n

end

end A008351.P15385398351022420287

/-! ## A008351.P1554192103153693651

`A104458(n+1)+A061107(n)-A008352(n)`
-/

namespace A008351.P1554192103153693651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104458 (n + 1) + (A061107 n - A008352 n)

end

end A008351.P1554192103153693651

/-! ## A008351.P9101862492378089715

`A131293(n+1)+Δ[A036299(n)]%A036299(n)`
-/

namespace A008351.P9101862492378089715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131293 (n + 1) + Int.tmod (f1 (n + 1) - f1 n) (A036299 n)

end

end A008351.P9101862492378089715

/-!
# A008352: a(n) is formed by concatenating a(n-2) and a(n-1), with a(0) = 1, a(1) = 2.

The programs for A008352, the canonical program `A008352.P12973497122268618844` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008352 has offset 0).

The definition of A008352 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008352.P12973497122268618844

`a(n-1)+10^A000045(n)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008352

/-- `a(n-1)+10^A000045(n)*a(n-2)` -/
def P12973497122268618844.Spec : Prop :=
  ∀ n, P12973497122268618844.a n = (A008352 n : ℚ)

end A008352

/-! ## A008352.P11949041218151091900

`A104458(n+1)-A108047(n+1)`
-/

namespace A008352.P11949041218151091900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104458 (n + 1) - A108047 (n + 1)

end

end A008352.P11949041218151091900

namespace A008352

/-- `A104458(n+1)-A108047(n+1)` -/
def P11949041218151091900.Spec : Prop :=
  ∀ n, P11949041218151091900.a n = A008352 n

end A008352

/-! ## A008352.P16100053808684254175

`A104458(n+1)-A131293(n+1)`
-/

namespace A008352.P16100053808684254175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104458 (n + 1) - A131293 (n + 1)

end

end A008352.P16100053808684254175

namespace A008352

/-- `A104458(n+1)-A131293(n+1)` -/
def P16100053808684254175.Spec : Prop :=
  ∀ n, P16100053808684254175.a n = A008352 n

end A008352

/-! ## A008352.P3636473732216046787

`(A113526(n+1)+A108047(n+1))/2`
-/

namespace A008352.P3636473732216046787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113526 (n + 1) + A108047 (n + 1) : ℚ) / 2

end

end A008352.P3636473732216046787

namespace A008352

/-- `(A113526(n+1)+A108047(n+1))/2` -/
def P3636473732216046787.Spec : Prop :=
  ∀ n, P3636473732216046787.a n = (A008352 n : ℚ)

end A008352

/-! ## A008352.P7796868458445212049

`(A113526(n+1)+A104458(n+1))/3`
-/

namespace A008352.P7796868458445212049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113526 (n + 1) + A104458 (n + 1) : ℚ) / 3

end

end A008352.P7796868458445212049

namespace A008352

/-- `(A113526(n+1)+A104458(n+1))/3` -/
def P7796868458445212049.Spec : Prop :=
  ∀ n, P7796868458445212049.a n = (A008352 n : ℚ)

end A008352

/-!
# A008353: a(n) = 2^n*(2^(n+1) - n - 1).

The programs for A008353, the canonical program `A008353.P15600277619160692817` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008353 has offset 0).

The definition of A008353 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*(2^(n+1)-n-1)` (program `A008353.P15600277619160692817`, by `A008353.P15600277619160692817.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008353.P16890483828302491249

`ogf((1-4x+8x^2)/(1-8x+20x^2-16x^3))`
-/

namespace A008353.P16890483828302491249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 8] [1, -8, 20, -16] n

end

end A008353.P16890483828302491249

namespace A008353

/-- `ogf((1-4x+8x^2)/(1-8x+20x^2-16x^3))` -/
def P16890483828302491249.Spec : Prop :=
  ∀ n, P16890483828302491249.a n = A008353 n

end A008353

/-! ## A008353.P15600277619160692817

`2^n*(2^(n+1)-n-1)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008353

/-- `2^n*(2^(n+1)-n-1)` -/
def P15600277619160692817.Spec : Prop :=
  ∀ n, P15600277619160692817.a n = A008353 n

theorem P15600277619160692817.correct : P15600277619160692817.Spec := by
  intro n
  simp only [A008353]

end A008353

/-! ## A008353.P12578523940832594673

`8*a(n-1)-20*a(n-2)+16*a(n-3)` with `a(0)=1, a(1)=4, a(2)=20`
-/

namespace A008353.P12578523940832594673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 20] fun n a =>
  8 * a (n - 1) - 20 * a (n - 2) + 16 * a (n - 3)

end

end A008353.P12578523940832594673

namespace A008353

/-- `8*a(n-1)-20*a(n-2)+16*a(n-3)` -/
def P12578523940832594673.Spec : Prop :=
  ∀ n, P12578523940832594673.a n = A008353 n

theorem P12578523940832594673.correct : P12578523940832594673.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A008353, Nat.add_sub_cancel, A008353.P12578523940832594673.a, A008353.P15600277619160692817.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A008353, Nat.add_sub_cancel, A008353.P12578523940832594673.a, A008353.P15600277619160692817.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A008353

/-! ## A008353.P13825596160682929690

`xor(n, ∑[2^n])/2^-n`
-/

namespace A008353.P13825596160682929690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A008353.P13825596160682929690

namespace A008353

/-- `xor(n, ∑[2^n])/2^-n` -/
def P13825596160682929690.Spec : Prop :=
  ∀ n, P13825596160682929690.a n = (A008353 n : ℚ)

end A008353

/-! ## A008353.P15958702812520025102

`A066345(Δ[n²])`
-/

namespace A008353.P15958702812520025102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066345 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A008353.P15958702812520025102

namespace A008353

/-- `A066345(Δ[n²])` -/
def P15958702812520025102.Spec : Prop :=
  ∀ n, P15958702812520025102.a n = A008353 n

end A008353

/-! ## A008353.P4284278748476991778

`A186947(n+1)/2`
-/

namespace A008353.P4284278748476991778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186947 (n + 1) : ℚ) / 2

end

end A008353.P4284278748476991778

namespace A008353

/-- `A186947(n+1)/2` -/
def P4284278748476991778.Spec : Prop :=
  ∀ n, P4284278748476991778.a n = (A008353 n : ℚ)

end A008353

/-! ## A008353.P8493659774145667425

`A000431(n+2)+2^n`
-/

namespace A008353.P8493659774145667425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000431 (n + 2) + (2 ^ n : ℤ)

end

end A008353.P8493659774145667425

namespace A008353

/-- `A000431(n+2)+2^n` -/
def P8493659774145667425.Spec : Prop :=
  ∀ n, P8493659774145667425.a n = A008353 n

end A008353

/-! ## A008353.P7625994472213411034

`A376585(n+1)-2^n`
-/

namespace A008353.P7625994472213411034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376585 (n + 1) - (2 ^ n : ℤ)

end

end A008353.P7625994472213411034

namespace A008353

/-- `A376585(n+1)-2^n` -/
def P7625994472213411034.Spec : Prop :=
  ∀ n, P7625994472213411034.a n = A008353 n

end A008353

/-! ## A008353.P4678971731085109750

`(A066345(2*(n+1))+1)/2`
-/

namespace A008353.P4678971731085109750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066345 (2 * (n + 1)) + 1 : ℚ) / 2

end

end A008353.P4678971731085109750

namespace A008353

/-- `(A066345(2*(n+1))+1)/2` -/
def P4678971731085109750.Spec : Prop :=
  ∀ n, P4678971731085109750.a n = (A008353 n : ℚ)

end A008353

/-! ## A008353.P6401196517909570080

`A020522(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A008353.P6401196517909570080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020522 n + 2 * a (n - 1)

end

end A008353.P6401196517909570080

namespace A008353

/-- `A020522(n)+2*a(n-1)` -/
def P6401196517909570080.Spec : Prop :=
  ∀ n, P6401196517909570080.a n = A008353 n

end A008353

/-! ## A008353.P9421519560002423152

`A186942(n)+A000337(n)`
-/

namespace A008353.P9421519560002423152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186942 n + A000337 n

end

end A008353.P9421519560002423152

namespace A008353

/-- `A186942(n)+A000337(n)` -/
def P9421519560002423152.Spec : Prop :=
  ∀ n, P9421519560002423152.a n = A008353 n

end A008353

/-! ## A008353.P8851239948608537178

`A186947(n)+A020522(n)`
-/

namespace A008353.P8851239948608537178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186947 n + A020522 n

end

end A008353.P8851239948608537178

namespace A008353

/-- `A186947(n)+A020522(n)` -/
def P8851239948608537178.Spec : Prop :=
  ∀ n, P8851239948608537178.a n = A008353 n

end A008353

/-! ## A008353.P17240359684822794741

`A092440(n)-A000337(n)`
-/

namespace A008353.P17240359684822794741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092440 n - A000337 n

end

end A008353.P17240359684822794741

namespace A008353

/-- `A092440(n)-A000337(n)` -/
def P17240359684822794741.Spec : Prop :=
  ∀ n, P17240359684822794741.a n = A008353 n

theorem P17240359684822794741.correct : P17240359684822794741.Spec := by
  intro n
  simp only [A008353, Nat.add_sub_cancel, A008353.P17240359684822794741.a, A008353.P15600277619160692817.a, A000337, A000337.P10298485350018343423.a, A092440, A092440.P9739041573880748262.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008353

/-! ## A008353.P1558185716008731070

`A083420(n)-A087323(n)`
-/

namespace A008353.P1558185716008731070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083420 n - A087323 n

end

end A008353.P1558185716008731070

namespace A008353

/-- `A083420(n)-A087323(n)` -/
def P1558185716008731070.Spec : Prop :=
  ∀ n, P1558185716008731070.a n = A008353 n

end A008353

/-! ## A008353.P18222994180558583028

`A171476(n)-A036289(n)`
-/

namespace A008353.P18222994180558583028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171476 n - A036289 n

end

end A008353.P18222994180558583028

namespace A008353

/-- `A171476(n)-A036289(n)` -/
def P18222994180558583028.Spec : Prop :=
  ∀ n, P18222994180558583028.a n = A008353 n

end A008353

/-! ## A008353.P247451237651793626

`A064671(n+1)+A000325(n)`
-/

namespace A008353.P247451237651793626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064671 (n + 1) + A000325 n

end

end A008353.P247451237651793626

namespace A008353

/-- `A064671(n+1)+A000325(n)` -/
def P247451237651793626.Spec : Prop :=
  ∀ n, P247451237651793626.a n = A008353 n

end A008353

/-! ## A008353.P16814464447660975688

`A004171(n)-A001787(n+1)`
-/

namespace A008353.P16814464447660975688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n - A001787 (n + 1)

end

end A008353.P16814464447660975688

namespace A008353

/-- `A004171(n)-A001787(n+1)` -/
def P16814464447660975688.Spec : Prop :=
  ∀ n, P16814464447660975688.a n = A008353 n

end A008353

/-! ## A008353.P6328384485954857063

`xor(A002446(n), A058966(n+3))`
-/

namespace A008353.P6328384485954857063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002446 n) (A058966 (n + 3))

end

end A008353.P6328384485954857063

namespace A008353

/-- `xor(A002446(n), A058966(n+3))` -/
def P6328384485954857063.Spec : Prop :=
  ∀ n, P6328384485954857063.a n = A008353 n

end A008353

/-! ## A008353.P10732035302402784058

`A092431(n+1)-A099035(n+1)`
-/

namespace A008353.P10732035302402784058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092431 (n + 1) - A099035 (n + 1)

end

end A008353.P10732035302402784058

namespace A008353

/-- `A092431(n+1)-A099035(n+1)` -/
def P10732035302402784058.Spec : Prop :=
  ∀ n, P10732035302402784058.a n = A008353 n

end A008353

/-!
# A008354: a(n) = (5*n^2 + 1)*n^2 / 6.

The programs for A008354, the canonical program `A008354.P13592591664114574720` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008354 has offset 0).

The definition of A008354 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n²+1)*n²/6` (program `A008354.P3798469936708255970`, by `A008354.P3798469936708255970.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008354.P3798469936708255970

`(5*n²+1)*n²/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A008354.P3798469936708255970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * n ^ 2 + 1) * n ^ 2 : ℚ) / 6

end

end A008354.P3798469936708255970

namespace A008354

/-- `(5*n²+1)*n²/6` -/
def P3798469936708255970.Spec : Prop :=
  ∀ n, P3798469936708255970.a n = (A008354 n : ℚ)

theorem P3798469936708255970.correct : P3798469936708255970.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A008354, Nat.add_sub_cancel, A008354.P3798469936708255970.a, A008354.P13592591664114574720.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A008354, Nat.add_sub_cancel, A008354.P3798469936708255970.a, A008354.P13592591664114574720.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A008354

/-! ## A008354.P1573372712929073796

`ogf((x+9x^2+9x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A008354.P1573372712929073796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 9, 9, 1] [1, -5, 10, -10, 5, -1] n

end

end A008354.P1573372712929073796

namespace A008354

/-- `ogf((x+9x^2+9x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P1573372712929073796.Spec : Prop :=
  ∀ n, P1573372712929073796.a n = A008354 n

end A008354

/-! ## A008354.P13592591664114574720

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=14, a(3)=69, a(4)=216`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008354

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P13592591664114574720.Spec : Prop :=
  ∀ n, P13592591664114574720.a n = A008354 n

theorem P13592591664114574720.correct : P13592591664114574720.Spec := by
  intro n
  simp only [A008354]

end A008354

/-! ## A008354.P5949541036603748400

`n*A004068(n)`
-/

namespace A008354.P5949541036603748400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004068 n

end

end A008354.P5949541036603748400

namespace A008354

/-- `n*A004068(n)` -/
def P5949541036603748400.Spec : Prop :=
  ∀ n, P5949541036603748400.a n = A008354 n

end A008354

/-! ## A008354.P15002513747777158803

`Δ[Δ[C(n, 3)²]]`
-/

namespace A008354.P15002513747777158803
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3 ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008354.P15002513747777158803

namespace A008354

/-- `Δ[Δ[C(n, 3)²]]` -/
def P15002513747777158803.Spec : Prop :=
  ∀ n, P15002513747777158803.a n = A008354 n

end A008354

/-! ## A008354.P2397509121985777225

`n*(∑[5*C(n, 2)]+n)`
-/

namespace A008354.P2397509121985777225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A008354.P2397509121985777225

namespace A008354

/-- `n*(∑[5*C(n, 2)]+n)` -/
def P2397509121985777225.Spec : Prop :=
  ∀ n, (P2397509121985777225.a n : ℤ) = A008354 n

end A008354

/-! ## A008354.P7961852923820615257

`n*∑[∑[a(n-1)+5]]` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A008354.P7961852923820615257
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 5] fun n f2 =>
  f2 (n - 1) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A008354.P7961852923820615257

namespace A008354

/-- `n*∑[∑[a(n-1)+5]]` -/
def P7961852923820615257.Spec : Prop :=
  ∀ n, (P7961852923820615257.a n : ℤ) = A008354 n

end A008354

/-! ## A008354.P14854164440975874811

`n²²-A008911(n)`
-/

namespace A008354.P14854164440975874811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A008911 n

end

end A008354.P14854164440975874811

namespace A008354

/-- `n²²-A008911(n)` -/
def P14854164440975874811.Spec : Prop :=
  ∀ n, P14854164440975874811.a n = A008354 n

end A008354

/-! ## A008354.P16220536024116813719

`2*A139594(n)-n²`
-/

namespace A008354.P16220536024116813719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139594 n - (n ^ 2 : ℤ)

end

end A008354.P16220536024116813719

namespace A008354

/-- `2*A139594(n)-n²` -/
def P16220536024116813719.Spec : Prop :=
  ∀ n, P16220536024116813719.a n = A008354 n

end A008354

/-! ## A008354.P17685572291609118830

`n²+10*A002415(n)`
-/

namespace A008354.P17685572291609118830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + 10 * A002415 n

end

end A008354.P17685572291609118830

namespace A008354

/-- `n²+10*A002415(n)` -/
def P17685572291609118830.Spec : Prop :=
  ∀ n, P17685572291609118830.a n = A008354 n

end A008354

/-! ## A008354.P4594906438676039848

`A187756(n)-C(n², 2)`
-/

namespace A008354.P4594906438676039848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187756 n - (Nat.choose (n ^ 2) 2 : ℤ)

end

end A008354.P4594906438676039848

namespace A008354

/-- `A187756(n)-C(n², 2)` -/
def P4594906438676039848.Spec : Prop :=
  ∀ n, P4594906438676039848.a n = A008354 n

end A008354

/-! ## A008354.P9484421978352799376

`A112742(n)+A037270(n)`
-/

namespace A008354.P9484421978352799376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112742 n + A037270 n

end

end A008354.P9484421978352799376

namespace A008354

/-- `A112742(n)+A037270(n)` -/
def P9484421978352799376.Spec : Prop :=
  ∀ n, P9484421978352799376.a n = A008354 n

end A008354

/-! ## A008354.P11263004170942536672

`A212523(n)+A071238(n)`
-/

namespace A008354.P11263004170942536672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212523 n + A071238 n

end

end A008354.P11263004170942536672

namespace A008354

/-- `A212523(n)+A071238(n)` -/
def P11263004170942536672.Spec : Prop :=
  ∀ n, P11263004170942536672.a n = A008354 n

end A008354

/-! ## A008354.P11957292513446185223

`A212560(n)+A071245(n)`
-/

namespace A008354.P11957292513446185223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212560 n + A071245 n

end

end A008354.P11957292513446185223

namespace A008354

/-- `A212560(n)+A071245(n)` -/
def P11957292513446185223.Spec : Prop :=
  ∀ n, P11957292513446185223.a n = A008354 n

end A008354

/-! ## A008354.P9367860961616713352

`A186636(n)-A033488(n)`
-/

namespace A008354.P9367860961616713352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186636 n - A033488 n

end

end A008354.P9367860961616713352

namespace A008354

/-- `A186636(n)-A033488(n)` -/
def P9367860961616713352.Spec : Prop :=
  ∀ n, P9367860961616713352.a n = A008354 n

end A008354

/-! ## A008354.P14787670216096215002

`A260810(n)-A072819(n)`
-/

namespace A008354.P14787670216096215002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260810 n - A072819 n

end

end A008354.P14787670216096215002

namespace A008354

/-- `A260810(n)-A072819(n)` -/
def P14787670216096215002.Spec : Prop :=
  ∀ n, P14787670216096215002.a n = A008354 n

end A008354

/-! ## A008354.P8718273915858693512

`∑[A005902(n)]-A005902(n)`
-/

namespace A008354.P8718273915858693512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005902 n

end

end A008354.P8718273915858693512

namespace A008354

/-- `∑[A005902(n)]-A005902(n)` -/
def P8718273915858693512.Spec : Prop :=
  ∀ n, P8718273915858693512.a n = A008354 n

end A008354

/-! ## A008354.P3390097018038294786

`A091940(n+1)-A329523(n)`
-/

namespace A008354.P3390097018038294786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091940 (n + 1) - A329523 n

end

end A008354.P3390097018038294786

namespace A008354

/-- `A091940(n+1)-A329523(n)` -/
def P3390097018038294786.Spec : Prop :=
  ∀ n, P3390097018038294786.a n = A008354 n

end A008354

/-! ## A008354.P1624002427693112904

`A008911(n)+A037270(n)+A008911(n)`
-/

namespace A008354.P1624002427693112904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008911 n + (A037270 n + A008911 n)

end

end A008354.P1624002427693112904

namespace A008354

/-- `A008911(n)+A037270(n)+A008911(n)` -/
def P1624002427693112904.Spec : Prop :=
  ∀ n, P1624002427693112904.a n = A008354 n

end A008354

/-! ## A008354.P13297586930587342979

`A000583(n)-(A002415(n)+A002415(n))`
-/

namespace A008354.P13297586930587342979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - (A002415 n + A002415 n)

end

end A008354.P13297586930587342979

namespace A008354

/-- `A000583(n)-(A002415(n)+A002415(n))` -/
def P13297586930587342979.Spec : Prop :=
  ∀ n, P13297586930587342979.a n = A008354 n

end A008354

/-!
# A008355: Coordination sequence for D_5 lattice.

The programs for A008355, the canonical program `A008355.P3617270936745502128` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008355 has offset 0).

The definition of A008355 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008355.P3617270936745502128

`ogf((1+35x+180x^2+180x^3+35x^4+x^5)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008355

/-- `ogf((1+35x+180x^2+180x^3+35x^4+x^5)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P3617270936745502128.Spec : Prop :=
  ∀ n, P3617270936745502128.a n = A008355 n

theorem P3617270936745502128.correct : P3617270936745502128.Spec := by
  intro n
  simp only [A008355]

end A008355

/-! ## A008355.P22203177862320827

`(1+n²)*A010008(n)`
-/

namespace A008355.P22203177862320827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n ^ 2 : ℤ) * A010008 n

end

end A008355.P22203177862320827

namespace A008355

/-- `(1+n²)*A010008(n)` -/
def P22203177862320827.Spec : Prop :=
  ∀ n, P22203177862320827.a n = A008355 n

end A008355

/-! ## A008355.P4279119750672262941

`(1+(3*n)²)*A005893(n)`
-/

namespace A008355.P4279119750672262941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + (3 * n) ^ 2 : ℤ) * A005893 n

end

end A008355.P4279119750672262941

namespace A008355

/-- `(1+(3*n)²)*A005893(n)` -/
def P4279119750672262941.Spec : Prop :=
  ∀ n, P4279119750672262941.a n = A008355 n

end A008355

/-! ## A008355.P8747523143126429489

`A005893(n)*A247792(n)`
-/

namespace A008355.P8747523143126429489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n * A247792 n

end

end A008355.P8747523143126429489

namespace A008355

/-- `A005893(n)*A247792(n)` -/
def P8747523143126429489.Spec : Prop :=
  ∀ n, P8747523143126429489.a n = A008355 n

end A008355

/-! ## A008355.P4236071980053807407

`A010010(n)+2*A033428(n)²`
-/

namespace A008355.P4236071980053807407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010010 n + 2 * A033428 n ^ 2

end

end A008355.P4236071980053807407

namespace A008355

/-- `A010010(n)+2*A033428(n)²` -/
def P4236071980053807407.Spec : Prop :=
  ∀ n, P4236071980053807407.a n = A008355 n

end A008355

/-! ## A008355.P17767249313409947809

`A010010(n)+A033581(n)²/2`
-/

namespace A008355.P17767249313409947809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010010 n : ℚ) + (A033581 n ^ 2 : ℚ) / 2

end

end A008355.P17767249313409947809

namespace A008355

/-- `A010010(n)+A033581(n)²/2` -/
def P17767249313409947809.Spec : Prop :=
  ∀ n, P17767249313409947809.a n = (A008355 n : ℚ)

end A008355

/-! ## A008355.P1504767839929224075

`A010008(n)+A000290(n)*A010008(n)`
-/

namespace A008355.P1504767839929224075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010008 n + A000290 n * A010008 n

end

end A008355.P1504767839929224075

namespace A008355

/-- `A010008(n)+A000290(n)*A010008(n)` -/
def P1504767839929224075.Spec : Prop :=
  ∀ n, P1504767839929224075.a n = A008355 n

end A008355

/-! ## A008355.P2362928460810080558

`(n²+1)*A009946(2*n)`
-/

namespace A008355.P2362928460810080558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℤ) * A009946 (2 * n)

end

end A008355.P2362928460810080558

namespace A008355

/-- `(n²+1)*A009946(2*n)` -/
def P2362928460810080558.Spec : Prop :=
  ∀ n, P2362928460810080558.a n = A008355 n

end A008355

/-! ## A008355.P7432455424646783124

`(A133263(2*n)-n)*A002522(3*n)`
-/

namespace A008355.P7432455424646783124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133263 (2 * n) - (n : ℤ)) * A002522 (3 * n)

end

end A008355.P7432455424646783124

namespace A008355

/-- `(A133263(2*n)-n)*A002522(3*n)` -/
def P7432455424646783124.Spec : Prop :=
  ∀ n, P7432455424646783124.a n = A008355 n

end A008355

/-! ## A008355.P6411976071112602101

`A010000(4*n)+2*n²*A010000(3*n)`
-/

namespace A008355.P6411976071112602101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 (4 * n) + (2 * n ^ 2 : ℤ) * A010000 (3 * n)

end

end A008355.P6411976071112602101

namespace A008355

/-- `A010000(4*n)+2*n²*A010000(3*n)` -/
def P6411976071112602101.Spec : Prop :=
  ∀ n, P6411976071112602101.a n = A008355 n

end A008355

/-! ## A008355.P7931864012262191118

`A103903(A340266(n+1))`
-/

namespace A008355.P7931864012262191118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103903 (A340266 (n + 1)).toNat

end

end A008355.P7931864012262191118

namespace A008355

/-- `A103903(A340266(n+1))` -/
def P7931864012262191118.Spec : Prop :=
  ∀ n, P7931864012262191118.a n = A008355 n

end A008355

/-! ## A008355.P17287356721021715362

`A010010(n)+3*A033581(n²)`
-/

namespace A008355.P17287356721021715362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010010 n + 3 * A033581 (n ^ 2)

end

end A008355.P17287356721021715362

namespace A008355

/-- `A010010(n)+3*A033581(n²)` -/
def P17287356721021715362.Spec : Prop :=
  ∀ n, P17287356721021715362.a n = A008355 n

end A008355

/-! ## A008355.P422242783398567611

`A103517(n²)*A247792(n)`
-/

namespace A008355.P422242783398567611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (n ^ 2) * A247792 n

end

end A008355.P422242783398567611

namespace A008355

/-- `A103517(n²)*A247792(n)` -/
def P422242783398567611.Spec : Prop :=
  ∀ n, P422242783398567611.a n = A008355 n

end A008355

/-!
# A008356: Crystal ball sequence for D_5 lattice.

The programs for A008356, the canonical program `A008356.P12921108757213168557` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008356 has offset 0).

The definition of A008356 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008356.P12921108757213168557

`ogf((1+35x+180x^2+180x^3+35x^4+x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008356

/-- `ogf((1+35x+180x^2+180x^3+35x^4+x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P12921108757213168557.Spec : Prop :=
  ∀ n, P12921108757213168557.a n = A008356 n

theorem P12921108757213168557.correct : P12921108757213168557.Spec := by
  intro n
  simp only [A008356]

end A008356

/-! ## A008356.P3162403411682594401

`∑[A008355(n)]`
-/

namespace A008356.P3162403411682594401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008356.P3162403411682594401

namespace A008356

/-- `∑[A008355(n)]` -/
def P3162403411682594401.Spec : Prop :=
  ∀ n, P3162403411682594401.a n = A008356 n

end A008356

/-! ## A008356.P11896741802103973617

`∑[(1+n²)*A010008(n)]`
-/

namespace A008356.P11896741802103973617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n ^ 2 : ℤ) * A010008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008356.P11896741802103973617

namespace A008356

/-- `∑[(1+n²)*A010008(n)]` -/
def P11896741802103973617.Spec : Prop :=
  ∀ n, P11896741802103973617.a n = A008356 n

end A008356

/-! ## A008356.P10894565277003795467

`∑[(1+(3*n)²)*A005893(n)]`
-/

namespace A008356.P10894565277003795467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + (3 * n) ^ 2 : ℤ) * A005893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008356.P10894565277003795467

namespace A008356

/-- `∑[(1+(3*n)²)*A005893(n)]` -/
def P10894565277003795467.Spec : Prop :=
  ∀ n, P10894565277003795467.a n = A008356 n

end A008356

/-! ## A008356.P9275907382952612745

`∑[(n²+1)*(A010007(n)+n²)]`
-/

namespace A008356.P9275907382952612745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℤ) * (A010007 n + (n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008356.P9275907382952612745

namespace A008356

/-- `∑[(n²+1)*(A010007(n)+n²)]` -/
def P9275907382952612745.Spec : Prop :=
  ∀ n, P9275907382952612745.a n = A008356 n

end A008356

/-! ## A008356.P13114960157323405474

`∑[A005893(n)*A247792(n)]`
-/

namespace A008356.P13114960157323405474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n * A247792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008356.P13114960157323405474

namespace A008356

/-- `∑[A005893(n)*A247792(n)]` -/
def P13114960157323405474.Spec : Prop :=
  ∀ n, P13114960157323405474.a n = A008356 n

end A008356

/-!
# A008357: Coordination sequence for D_6 lattice.

The programs for A008357, the canonical program `A008357.P11387944793379821818` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008357 has offset 0).

The definition of A008357 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008357.P11387944793379821818

`ogf((1+54x+447x^2+852x^3+447x^4+54x^5+x^6)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008357

/-- `ogf((1+54x+447x^2+852x^3+447x^4+54x^5+x^6)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P11387944793379821818.Spec : Prop :=
  ∀ n, P11387944793379821818.a n = A008357 n

theorem P11387944793379821818.correct : P11387944793379821818.Spec := by
  intro n
  simp only [A008357]

end A008357

/-! ## A008357.P10752370468686593542

`A019562(n)-12*n*(2*n^4+10*n²+3)/15`
-/

namespace A008357.P10752370468686593542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019562 n : ℚ) - 12 * ((n : ℚ) * ((2 * n ^ 4 + 10 * n ^ 2 + 3 : ℚ) / 15))

end

end A008357.P10752370468686593542

namespace A008357

/-- `A019562(n)-12*n*(2*n^4+10*n²+3)/15` -/
def P10752370468686593542.Spec : Prop :=
  ∀ n, P10752370468686593542.a n = (A008357 n : ℚ)

end A008357

/-! ## A008357.P11772639953396432343

`A103903(∑[n+3]+4)`
-/

namespace A008357.P11772639953396432343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103903 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A008357.P11772639953396432343

namespace A008357

/-- `A103903(∑[n+3]+4)` -/
def P11772639953396432343.Spec : Prop :=
  ∀ n, P11772639953396432343.a n = A008357 n

end A008357

/-! ## A008357.P14859930821815009476

`record[gcd(A055138(n), A103903(n+4))]`
-/

namespace A008357.P14859930821815009476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055138 n) (A103903 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008357.P14859930821815009476

namespace A008357

/-- `record[gcd(A055138(n), A103903(n+4))]` -/
def P14859930821815009476.Spec : Prop :=
  ∀ n, (P14859930821815009476.a n : ℤ) = A008357 n

end A008357

/-!
# A008358: Crystal ball sequence for D_6 lattice.

The programs for A008358, the canonical program `A008358.P13638731550086583348` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008358 has offset 0).

The definition of A008358 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008358.P13638731550086583348

`ogf((1+54x+447x^2+852x^3+447x^4+54x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008358

/-- `ogf((1+54x+447x^2+852x^3+447x^4+54x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P13638731550086583348.Spec : Prop :=
  ∀ n, P13638731550086583348.a n = A008358 n

theorem P13638731550086583348.correct : P13638731550086583348.Spec := by
  intro n
  simp only [A008358]

end A008358

/-! ## A008358.P11668116640377738616

`∑[A008357(n)]`
-/

namespace A008358.P11668116640377738616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008358.P11668116640377738616

namespace A008358

/-- `∑[A008357(n)]` -/
def P11668116640377738616.Spec : Prop :=
  ∀ n, P11668116640377738616.a n = A008358 n

end A008358

/-! ## A008358.P2922043560621146953

`∑[A019562(n)-12*n*(2*n^4+10*n²+3)/15]`
-/

namespace A008358.P2922043560621146953
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019562 n : ℚ) - 12 * ((n : ℚ) * ((2 * n ^ 4 + 10 * n ^ 2 + 3 : ℚ) / 15))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008358.P2922043560621146953

namespace A008358

/-- `∑[A019562(n)-12*n*(2*n^4+10*n²+3)/15]` -/
def P2922043560621146953.Spec : Prop :=
  ∀ n, P2922043560621146953.a n = (A008358 n : ℚ)

end A008358

/-! ## A008358.P11575276339973789853

`A305549(n)-∑[12*n*(2*n^4+10*n²+3)/15]`
-/

namespace A008358.P11575276339973789853
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  12 * ((n : ℚ) * ((2 * n ^ 4 + 10 * n ^ 2 + 3 : ℚ) / 15))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305549 n : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008358.P11575276339973789853

namespace A008358

/-- `A305549(n)-∑[12*n*(2*n^4+10*n²+3)/15]` -/
def P11575276339973789853.Spec : Prop :=
  ∀ n, P11575276339973789853.a n = (A008358 n : ℚ)

end A008358

/-! ## A008358.P1413365560416919579

`∑[A103903(∑[n+3]+4)]`
-/

namespace A008358.P1413365560416919579
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103903 (∑ j ∈ Finset.range (n + 1), f2 j + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008358.P1413365560416919579

namespace A008358

/-- `∑[A103903(∑[n+3]+4)]` -/
def P1413365560416919579.Spec : Prop :=
  ∀ n, P1413365560416919579.a n = A008358 n

end A008358

/-!
# A008359: Coordination sequence for D_7 lattice.

The programs for A008359, there is no canonical definition to state claims against.
-/

/-! ## A008359.P5245729752485715088

`A103903(∑[n+4]+6)`
-/

namespace A008359.P5245729752485715088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103903 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A008359.P5245729752485715088

/-!
# A008360: Crystal ball sequence for D_7 lattice.

The programs for A008360, there is no canonical definition to state claims against.
-/

/-! ## A008360.P1272517494181605330

`∑[A008359(n)]`
-/

namespace A008360.P1272517494181605330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008359 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008360.P1272517494181605330

/-! ## A008360.P3658724006074471983

`a(n-1)+A008359(n)+A000038(n)` with `a(0)=1`
-/

namespace A008360.P3658724006074471983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A008359 n + A000038 n)

end

end A008360.P3658724006074471983

/-! ## A008360.P14481452603465887109

`A008359(n)+A000038(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A008360.P14481452603465887109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008359 n + A000038 n + a (A023443 n).toNat

end

end A008360.P14481452603465887109

/-! ## A008360.P15578180167232945462

`∑[A103903(∑[n+4]+6)]`
-/

namespace A008360.P15578180167232945462
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103903 (∑ j ∈ Finset.range (n + 1), f2 j + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008360.P15578180167232945462

/-!
# A008361: Coordination sequence for D_8 lattice.

The programs for A008361, there is no canonical definition to state claims against.
-/

/-! ## A008361.P16284315247759371394

`A103903(lt[A111418(n), A321620(n+1)])`
-/

namespace A008361.P16284315247759371394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111418 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103903 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A008361.P16284315247759371394

/-!
# A008362: Crystal ball sequence for D_8 lattice.

The programs for A008362, there is no canonical definition to state claims against.
-/

/-! ## A008362.P7903037122865917263

`∑[A008361(n)]`
-/

namespace A008362.P7903037122865917263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008362.P7903037122865917263

/-! ## A008362.P6799908578259606539

`A008361(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A008362.P6799908578259606539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008361 n + a (A023443 n).toNat

end

end A008362.P6799908578259606539

/-! ## A008362.P7511906289086753550

`A008361(n)+a(n-A165471(n)²)` with `a(0)=1`
-/

namespace A008362.P7511906289086753550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008361 n + a ((n : ℤ) - A165471 n ^ 2).toNat

end

end A008362.P7511906289086753550

/-! ## A008362.P1891901836497795228

`A008361(n)+a(A004277(n)-(n+1))` with `a(0)=1`
-/

namespace A008362.P1891901836497795228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008361 n + a (A004277 n - (n + 1 : ℤ)).toNat

end

end A008362.P1891901836497795228

/-! ## A008362.P9659245047151333079

`A008361(n)+a(n-A165471(n²))` with `a(0)=1`
-/

namespace A008362.P9659245047151333079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008361 n + a ((n : ℤ) - A165471 (n ^ 2)).toNat

end

end A008362.P9659245047151333079

/-!
# A008363: a(n) = floor(n/5)*ceiling(n/5).

The programs for A008363, the canonical program `A008363.P1720988674792954549` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008363 has offset 0).

The definition of A008363 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/5)*ceil(n/5)` (program `A008363.P1720988674792954549`, by `A008363.P1720988674792954549.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008363.P1720988674792954549

`floor(n/5)*ceil(n/5)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008363

/-- `floor(n/5)*ceil(n/5)` -/
def P1720988674792954549.Spec : Prop :=
  ∀ n, P1720988674792954549.a n = A008363 n

theorem P1720988674792954549.correct : P1720988674792954549.Spec := by
  intro n
  simp only [A008363]

end A008363

/-! ## A008363.P8215352096132425675

`ogf((x^5+x^6)/(1-x-2x^5+2x^6+x^10-x^11))`
-/

namespace A008363.P8215352096132425675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 0, 1, 1] [1, -1, 0, 0, 0, -2, 2, 0, 0, 0, 1, -1] n

end

end A008363.P8215352096132425675

namespace A008363

/-- `ogf((x^5+x^6)/(1-x-2x^5+2x^6+x^10-x^11))` -/
def P8215352096132425675.Spec : Prop :=
  ∀ n, P8215352096132425675.a n = A008363 n

end A008363

/-! ## A008363.P883289956039341404

`floor(∑[char[∑[4^(n%2)]]]²/4)`
-/

namespace A008363.P883289956039341404
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (n % 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / 4⌋

end

end A008363.P883289956039341404

namespace A008363

/-- `floor(∑[char[∑[4^(n%2)]]]²/4)` -/
def P883289956039341404.Spec : Prop :=
  ∀ n, P883289956039341404.a n = A008363 n

end A008363

/-! ## A008363.P2532642590775063942

`∑[round(∑[(n+1)%5]%(n+1)/5)]`
-/

namespace A008363.P2532642590775063942
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1) : ℕ) : ℚ) / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008363.P2532642590775063942

namespace A008363

/-- `∑[round(∑[(n+1)%5]%(n+1)/5)]` -/
def P2532642590775063942.Spec : Prop :=
  ∀ n, P2532642590775063942.a n = A008363 n

end A008363

/-! ## A008363.P15434103868341361026

`floor(((A047363(n+1)-n)/2)²)`
-/

namespace A008363.P15434103868341361026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A047363 (n + 1) - (n : ℤ) : ℚ) / 2) ^ 2⌋

end

end A008363.P15434103868341361026

namespace A008363

/-- `floor(((A047363(n+1)-n)/2)²)` -/
def P15434103868341361026.Spec : Prop :=
  ∀ n, P15434103868341361026.a n = A008363 n

end A008363

/-! ## A008363.P12144330473826965815

`round((A047486(n+1)/2-n)²)`
-/

namespace A008363.P12144330473826965815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A047486 (n + 1) : ℚ) / 2 - (n : ℚ)) ^ 2)

end

end A008363.P12144330473826965815

namespace A008363

/-- `round((A047486(n+1)/2-n)²)` -/
def P12144330473826965815.Spec : Prop :=
  ∀ n, P12144330473826965815.a n = A008363 n

end A008363

/-! ## A008363.P6863480616239737604

`A002620(2*n-comp[or(2, n)+n])`
-/

namespace A008363.P6863480616239737604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * n - SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A008363.P6863480616239737604

namespace A008363

/-- `A002620(2*n-comp[or(2, n)+n])` -/
def P6863480616239737604.Spec : Prop :=
  ∀ n, P6863480616239737604.a n = A008363 n

end A008363

/-! ## A008363.P11293924074159164441

`∑[A002266(lcm(n, A010891(n)))]`
-/

namespace A008363.P11293924074159164441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (Int.lcm (n : ℤ) (A010891 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008363.P11293924074159164441

namespace A008363

/-- `∑[A002266(lcm(n, A010891(n)))]` -/
def P11293924074159164441.Spec : Prop :=
  ∀ n, P11293924074159164441.a n = A008363 n

end A008363

/-! ## A008363.P160216620311627296

`(A008013(n)-A005893(n))/2`
-/

namespace A008363.P160216620311627296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008013 n - A005893 n : ℚ) / 2

end

end A008363.P160216620311627296

namespace A008363

/-- `(A008013(n)-A005893(n))/2` -/
def P160216620311627296.Spec : Prop :=
  ∀ n, P160216620311627296.a n = (A008363 n : ℚ)

end A008363

/-! ## A008363.P4359535576268809344

`∑[A002266(n*A010891(n)²)]`
-/

namespace A008363.P4359535576268809344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 ((n : ℤ) * A010891 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008363.P4359535576268809344

namespace A008363

/-- `∑[A002266(n*A010891(n)²)]` -/
def P4359535576268809344.Spec : Prop :=
  ∀ n, P4359535576268809344.a n = A008363 n

end A008363

/-! ## A008363.P18166719610336369421

`A008238(2*(A047363(n+1)-n))`
-/

namespace A008363.P18166719610336369421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008238 (2 * (A047363 (n + 1) - (n : ℤ))).toNat

end

end A008363.P18166719610336369421

namespace A008363

/-- `A008238(2*(A047363(n+1)-n))` -/
def P18166719610336369421.Spec : Prop :=
  ∀ n, P18166719610336369421.a n = A008363 n

end A008363

/-! ## A008363.P7576094441660511206

`A008737(A151988(n))`
-/

namespace A008363.P7576094441660511206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008737 (A151988 n).toNat

end

end A008363.P7576094441660511206

namespace A008363

/-- `A008737(A151988(n))` -/
def P7576094441660511206.Spec : Prop :=
  ∀ n, P7576094441660511206.a n = A008363 n

end A008363

/-! ## A008363.P5843345862511272024

`A008857(A187318(n))`
-/

namespace A008363.P5843345862511272024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008857 (A187318 n).toNat

end

end A008363.P5843345862511272024

namespace A008363

/-- `A008857(A187318(n))` -/
def P5843345862511272024.Spec : Prop :=
  ∀ n, P5843345862511272024.a n = A008363 n

end A008363

/-!
# A008364: 11-rough numbers: not divisible by 2, 3, 5 or 7.

The programs for A008364, the canonical program `A008364.P14738745201683923342` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008364 has offset 1).

The definition of A008364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8571 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008364.P12305681401260945865

`filter[or(1, 2*n+1+n), gcd(35, #)]`
-/

namespace A008364.P12305681401260945865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * n + 1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Nat.gcd 35 (f1 j) = 1) n)

end

end A008364.P12305681401260945865

namespace A008364

/-- `filter[or(1, 2*n+1+n), gcd(35, #)]` -/
def P12305681401260945865.Spec : Prop :=
  ∀ n, (P12305681401260945865.a n : ℤ) = A008364 (n + 1)

end A008364

/-! ## A008364.P2815610926276658264

`lt[(n+13)*(gcd(n, 7*(n+30))-1), 2]`
-/

namespace A008364.P2815610926276658264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 13 : ℤ) * ((Nat.gcd n (7 * (n + 30)) : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A008364.P2815610926276658264

namespace A008364

/-- `lt[(n+13)*(gcd(n, 7*(n+30))-1), 2]` -/
def P2815610926276658264.Spec : Prop :=
  ∀ n, (P2815610926276658264.a n : ℤ) = A008364 (n + 1)

end A008364

/-! ## A008364.P9046215579676202068

`A049296(n)+a(n-1)` with `a(0)=1`
-/

namespace A008364.P9046215579676202068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A049296 n + a (n - 1)

end

end A008364.P9046215579676202068

namespace A008364

/-- `A049296(n)+a(n-1)` -/
def P9046215579676202068.Spec : Prop :=
  ∀ n, P9046215579676202068.a n = A008364 (n + 1)

end A008364

/-! ## A008364.P11935288500567836594

`∑[A049296(n+1)]+1-A049296(n+1)`
-/

namespace A008364.P11935288500567836594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A049296 (n + 1))

end

end A008364.P11935288500567836594

namespace A008364

/-- `∑[A049296(n+1)]+1-A049296(n+1)` -/
def P11935288500567836594.Spec : Prop :=
  ∀ n, P11935288500567836594.a n = A008364 (n + 1)

end A008364

/-! ## A008364.P14738745201683923342

`A007775(record[n+1-gcd(7, A007775(n+1))]+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008364

/-- `A007775(record[n+1-gcd(7, A007775(n+1))]+1)` -/
def P14738745201683923342.Spec : Prop :=
  ∀ n, P14738745201683923342.a n = A008364 (n + 1)

theorem P14738745201683923342.correct : P14738745201683923342.Spec := by
  intro n
  simp only [A008364, Nat.add_sub_cancel]

end A008364

/-! ## A008364.P12174833712253782110

`filter[A206547(n+1), A011558(#)]`
-/

namespace A008364.P12174833712253782110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A008364.P12174833712253782110

namespace A008364

/-- `filter[A206547(n+1), A011558(#)]` -/
def P12174833712253782110.Spec : Prop :=
  ∀ n, P12174833712253782110.a n = A008364 (n + 1)

end A008364

/-! ## A008364.P17694705744094410236

`filter[A206547(n+1), A162289(#)]`
-/

namespace A008364.P17694705744094410236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A008364.P17694705744094410236

namespace A008364

/-- `filter[A206547(n+1), A162289(#)]` -/
def P17694705744094410236.Spec : Prop :=
  ∀ n, P17694705744094410236.a n = A008364 (n + 1)

end A008364

/-! ## A008364.P2734254921569773330

`filter[A206547(n+1), A358847(#)]`
-/

namespace A008364.P2734254921569773330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358847 (f1 j).toNat = 1) n)

end

end A008364.P2734254921569773330

namespace A008364

/-- `filter[A206547(n+1), A358847(#)]` -/
def P2734254921569773330.Spec : Prop :=
  ∀ n, P2734254921569773330.a n = A008364 (n + 1)

end A008364

/-! ## A008364.P16909003948341365261

`∩[A007775(n+1), A206547(n+1)]`
-/

namespace A008364.P16909003948341365261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008364.P16909003948341365261

namespace A008364

/-- `∩[A007775(n+1), A206547(n+1)]` -/
def P16909003948341365261.Spec : Prop :=
  ∀ n, (P16909003948341365261.a n : ℤ) = A008364 (n + 1)

end A008364

/-! ## A008364.P1192209085439873466

`filter[A235583(n+1), A162289(#)]`
-/

namespace A008364.P1192209085439873466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A008364.P1192209085439873466

namespace A008364

/-- `filter[A235583(n+1), A162289(#)]` -/
def P1192209085439873466.Spec : Prop :=
  ∀ n, P1192209085439873466.a n = A008364 (n + 1)

end A008364

/-! ## A008364.P10926688227870087754

`filter[A235583(n+1), A187074(#)]`
-/

namespace A008364.P10926688227870087754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A008364.P10926688227870087754

namespace A008364

/-- `filter[A235583(n+1), A187074(#)]` -/
def P10926688227870087754.Spec : Prop :=
  ∀ n, P10926688227870087754.a n = A008364 (n + 1)

end A008364

/-! ## A008364.P14639229003043232220

`filter[A235583(n+1), A320106(#)]`
-/

namespace A008364.P14639229003043232220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A008364.P14639229003043232220

namespace A008364

/-- `filter[A235583(n+1), A320106(#)]` -/
def P14639229003043232220.Spec : Prop :=
  ∀ n, P14639229003043232220.a n = A008364 (n + 1)

end A008364

/-! ## A008364.P1608422489639739034

`filter[A235583(n+1), A354354(#)]`
-/

namespace A008364.P1608422489639739034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A008364.P1608422489639739034

namespace A008364

/-- `filter[A235583(n+1), A354354(#)]` -/
def P1608422489639739034.Spec : Prop :=
  ∀ n, P1608422489639739034.a n = A008364 (n + 1)

end A008364

/-! ## A008364.P9104034141895337655

`filter[A235583(n+1), A359374(#)]`
-/

namespace A008364.P9104034141895337655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A008364.P9104034141895337655

namespace A008364

/-- `filter[A235583(n+1), A359374(#)]` -/
def P9104034141895337655.Spec : Prop :=
  ∀ n, P9104034141895337655.a n = A008364 (n + 1)

end A008364

/-! ## A008364.P3195454207602760597

`filter[A235583(n+1), A373155(#)]`
-/

namespace A008364.P3195454207602760597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A008364.P3195454207602760597

namespace A008364

/-- `filter[A235583(n+1), A373155(#)]` -/
def P3195454207602760597.Spec : Prop :=
  ∀ n, P3195454207602760597.a n = A008364 (n + 1)

end A008364

/-! ## A008364.P7609937787334376480

`filter[A235583(n+1), A373156(#)]`
-/

namespace A008364.P7609937787334376480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A008364.P7609937787334376480

namespace A008364

/-- `filter[A235583(n+1), A373156(#)]` -/
def P7609937787334376480.Spec : Prop :=
  ∀ n, P7609937787334376480.a n = A008364 (n + 1)

end A008364

/-! ## A008364.P9669813644825537015

`filter[A235583(n+1), A374043(#)]`
-/

namespace A008364.P9669813644825537015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374043 (f1 j).toNat = 1) n)

end

end A008364.P9669813644825537015

namespace A008364

/-- `filter[A235583(n+1), A374043(#)]` -/
def P9669813644825537015.Spec : Prop :=
  ∀ n, P9669813644825537015.a n = A008364 (n + 1)

end A008364

/-! ## A008364.P6016679379775366917

`∩[A007310(n+1), A235583(n+1)]`
-/

namespace A008364.P6016679379775366917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008364.P6016679379775366917

namespace A008364

/-- `∩[A007310(n+1), A235583(n+1)]` -/
def P6016679379775366917.Spec : Prop :=
  ∀ n, (P6016679379775366917.a n : ℤ) = A008364 (n + 1)

end A008364

/-! ## A008364.P2072320209629410733

`∩[A007775(n+1), A235583(n+1)]`
-/

namespace A008364.P2072320209629410733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008364.P2072320209629410733

namespace A008364

/-- `∩[A007775(n+1), A235583(n+1)]` -/
def P2072320209629410733.Spec : Prop :=
  ∀ n, (P2072320209629410733.a n : ℤ) = A008364 (n + 1)

end A008364

/-! ## A008364.P13627292257953976458

`∩[A045572(n+1), A206547(n+1)]`
-/

namespace A008364.P13627292257953976458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008364.P13627292257953976458

namespace A008364

/-- `∩[A045572(n+1), A206547(n+1)]` -/
def P13627292257953976458.Spec : Prop :=
  ∀ n, (P13627292257953976458.a n : ℤ) = A008364 (n + 1)

end A008364

/-!
# A008365: 13-rough numbers: positive integers that have no prime factors less than 13.

The programs for A008365, the canonical program `A008365.P2847380916215750219` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008365 has offset 1).

The definition of A008365 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6857 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008365.P17251742181350890083

`A084970(1+n)/13`
-/

namespace A008365.P17251742181350890083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084970 (1 + n) : ℚ) / 13

end

end A008365.P17251742181350890083

namespace A008365

/-- `A084970(1+n)/13` -/
def P17251742181350890083.Spec : Prop :=
  ∀ n, P17251742181350890083.a n = (A008365 (n + 1) : ℚ)

end A008365

/-! ## A008365.P5475334385874424619

`∪[A008366(n+1), A084970(n+1)]`
-/

namespace A008365.P5475334385874424619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A008365.P5475334385874424619

namespace A008365

/-- `∪[A008366(n+1), A084970(n+1)]` -/
def P5475334385874424619.Spec : Prop :=
  ∀ n, (P5475334385874424619.a n : ℤ) = A008365 (n + 1)

end A008365

/-! ## A008365.P2847380916215750219

`∩[A008364(n+1), A236204(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A008365

/-- `∩[A008364(n+1), A236204(n+1)]` -/
def P2847380916215750219.Spec : Prop :=
  ∀ n, (P2847380916215750219.a n : ℤ) = A008365 (n + 1)

theorem P2847380916215750219.correct : P2847380916215750219.Spec := by
  intro n
  simp only [A008365, Nat.add_sub_cancel]

end A008365

/-! ## A008365.P10526291282169832277

`∩[A235583(n+1), A236204(n+1)]`
-/

namespace A008365.P10526291282169832277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008365.P10526291282169832277

namespace A008365

/-- `∩[A235583(n+1), A236204(n+1)]` -/
def P10526291282169832277.Spec : Prop :=
  ∀ n, (P10526291282169832277.a n : ℤ) = A008365 (n + 1)

end A008365

/-! ## A008365.P7037534115192806401

`∩[A008364(n+1), A236208(n+1)]`
-/

namespace A008365.P7037534115192806401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008365.P7037534115192806401

namespace A008365

/-- `∩[A008364(n+1), A236208(n+1)]` -/
def P7037534115192806401.Spec : Prop :=
  ∀ n, (P7037534115192806401.a n : ℤ) = A008365 (n + 1)

end A008365

/-! ## A008365.P12567580187444131262

`∩[A206547(n+1), A236208(n+1)]`
-/

namespace A008365.P12567580187444131262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008365.P12567580187444131262

namespace A008365

/-- `∩[A206547(n+1), A236208(n+1)]` -/
def P12567580187444131262.Spec : Prop :=
  ∀ n, (P12567580187444131262.a n : ℤ) = A008365 (n + 1)

end A008365

/-! ## A008365.P13549049208107215894

`∩[A008364(n+1), A204454(n+1)]`
-/

namespace A008365.P13549049208107215894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008365.P13549049208107215894

namespace A008365

/-- `∩[A008364(n+1), A204454(n+1)]` -/
def P13549049208107215894.Spec : Prop :=
  ∀ n, (P13549049208107215894.a n : ℤ) = A008365 (n + 1)

end A008365

/-! ## A008365.P16164835780310737369

`∩[A204454(n+1), A236206(n+1)]`
-/

namespace A008365.P16164835780310737369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008365.P16164835780310737369

namespace A008365

/-- `∩[A204454(n+1), A236206(n+1)]` -/
def P16164835780310737369.Spec : Prop :=
  ∀ n, (P16164835780310737369.a n : ℤ) = A008365 (n + 1)

end A008365

/-! ## A008365.P5685138142977507363

`∩[A236204(n+1), A236206(n+1)]`
-/

namespace A008365.P5685138142977507363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008365.P5685138142977507363

namespace A008365

/-- `∩[A236204(n+1), A236206(n+1)]` -/
def P5685138142977507363.Spec : Prop :=
  ∀ n, (P5685138142977507363.a n : ℤ) = A008365 (n + 1)

end A008365

/-! ## A008365.P9668398847472813755

`∩[A008364(n+1), A236217(n+1)]`
-/

namespace A008365.P9668398847472813755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008365.P9668398847472813755

namespace A008365

/-- `∩[A008364(n+1), A236217(n+1)]` -/
def P9668398847472813755.Spec : Prop :=
  ∀ n, (P9668398847472813755.a n : ℤ) = A008365 (n + 1)

end A008365

/-! ## A008365.P2677266666876200119

`∩[A162699(n+1), A236217(n+1)]`
-/

namespace A008365.P2677266666876200119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008365.P2677266666876200119

namespace A008365

/-- `∩[A162699(n+1), A236217(n+1)]` -/
def P2677266666876200119.Spec : Prop :=
  ∀ n, (P2677266666876200119.a n : ℤ) = A008365 (n + 1)

end A008365

/-! ## A008365.P12785767523816475016

`∩[A206547(n+1), A236217(n+1)]`
-/

namespace A008365.P12785767523816475016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008365.P12785767523816475016

namespace A008365

/-- `∩[A206547(n+1), A236217(n+1)]` -/
def P12785767523816475016.Spec : Prop :=
  ∀ n, (P12785767523816475016.a n : ℤ) = A008365 (n + 1)

end A008365

/-! ## A008365.P13280723820517566596

`∩[A235583(n+1), A236217(n+1)]`
-/

namespace A008365.P13280723820517566596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008365.P13280723820517566596

namespace A008365

/-- `∩[A235583(n+1), A236217(n+1)]` -/
def P13280723820517566596.Spec : Prop :=
  ∀ n, (P13280723820517566596.a n : ℤ) = A008365 (n + 1)

end A008365

/-! ## A008365.P15649776510601545518

`∩[A160545(n+1), A236208(n+1)]`
-/

namespace A008365.P15649776510601545518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008365.P15649776510601545518

namespace A008365

/-- `∩[A160545(n+1), A236208(n+1)]` -/
def P15649776510601545518.Spec : Prop :=
  ∀ n, (P15649776510601545518.a n : ℤ) = A008365 (n + 1)

end A008365

/-! ## A008365.P17628972340392710919

`lt[5, sqrt(A090088(n+1))]`
-/

namespace A008365.P17628972340392710919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A090088 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A008365.P17628972340392710919

namespace A008365

/-- `lt[5, sqrt(A090088(n+1))]` -/
def P17628972340392710919.Spec : Prop :=
  ∀ n, (P17628972340392710919.a n : ℤ) = A008365 (n + 1)

end A008365

/-! ## A008365.P9423750182148550042

`∩[A008364(n+1), A229968(n+1)]`
-/

namespace A008365.P9423750182148550042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008365.P9423750182148550042

namespace A008365

/-- `∩[A008364(n+1), A229968(n+1)]` -/
def P9423750182148550042.Spec : Prop :=
  ∀ n, (P9423750182148550042.a n : ℤ) = A008365 (n + 1)

end A008365

/-! ## A008365.P6582165158361646119

`∩[A229968(n+1), A235583(n+1)]`
-/

namespace A008365.P6582165158361646119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008365.P6582165158361646119

namespace A008365

/-- `∩[A229968(n+1), A235583(n+1)]` -/
def P6582165158361646119.Spec : Prop :=
  ∀ n, (P6582165158361646119.a n : ℤ) = A008365 (n + 1)

end A008365

/-! ## A008365.P17766856777387477343

`∩[A235933(n+1), A236204(n+1)]`
-/

namespace A008365.P17766856777387477343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008365.P17766856777387477343

namespace A008365

/-- `∩[A235933(n+1), A236204(n+1)]` -/
def P17766856777387477343.Spec : Prop :=
  ∀ n, (P17766856777387477343.a n : ℤ) = A008365 (n + 1)

end A008365

/-! ## A008365.P432024753190405262

`∩[A008364(n+1), A236207(n+1)]`
-/

namespace A008365.P432024753190405262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008365.P432024753190405262

namespace A008365

/-- `∩[A008364(n+1), A236207(n+1)]` -/
def P432024753190405262.Spec : Prop :=
  ∀ n, (P432024753190405262.a n : ℤ) = A008365 (n + 1)

end A008365

/-! ## A008365.P14681788274582606464

`∩[A206547(n+1), A236207(n+1)]`
-/

namespace A008365.P14681788274582606464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008365.P14681788274582606464

namespace A008365

/-- `∩[A206547(n+1), A236207(n+1)]` -/
def P14681788274582606464.Spec : Prop :=
  ∀ n, (P14681788274582606464.a n : ℤ) = A008365 (n + 1)

end A008365

/-!
# A008366: Smallest prime factor is >= 17.

The programs for A008366, there is no canonical definition to state claims against.
-/

/-! ## A008366.P94295908594754680

`A332799(n+1)/(10/2+12)`
-/

namespace A008366.P94295908594754680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332799 (n + 1) : ℚ) / ((10 : ℚ) / 2 + 12)

end

end A008366.P94295908594754680

/-! ## A008366.P4963049490135996289

`∩[A008365(n+1), A204457(n+1)]`
-/

namespace A008366.P4963049490135996289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008366.P4963049490135996289

/-! ## A008366.P6265722110621183979

`∩[A008365(n+1), A229973(n+1)]`
-/

namespace A008366.P6265722110621183979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008366.P6265722110621183979

/-! ## A008366.P7814301123701368432

`lt[15, A102457(n+2)]+1`
-/

namespace A008366.P7814301123701368432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102457 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A008366.P7814301123701368432

/-! ## A008366.P9808262509036526480

`∩[A008365(n+1), A113763(n+1)]`
-/

namespace A008366.P9808262509036526480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008366.P9808262509036526480

/-! ## A008366.P13717886895612082815

`eq[17, A020639(or(1, 17*n))]`
-/

namespace A008366.P13717886895612082815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.lor 1 (17 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A008366.P13717886895612082815

/-! ## A008366.P6633192740028904626

`eq[17, A020639(17*(n+1))]+1`
-/

namespace A008366.P6633192740028904626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (17 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A008366.P6633192740028904626

/-! ## A008366.P9103350149987913184

`eq[6, A327832(6*(n+1))]+1`
-/

namespace A008366.P9103350149987913184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (6 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A008366.P9103350149987913184

/-! ## A008366.P1854109852471115624

`A032742(A332799(n+1))`
-/

namespace A008366.P1854109852471115624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A332799 (n + 1)).toNat

end

end A008366.P1854109852471115624

/-! ## A008366.P7386374001731978463

`A249738(A332799(n+2))`
-/

namespace A008366.P7386374001731978463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (A332799 (n + 2)).toNat

end

end A008366.P7386374001731978463

/-!
# A008367: Composite but smallest prime factor >= 17.

The programs for A008367, there is no canonical definition to state claims against.
-/

/-! ## A008367.P17383589157071978723

`filter[A008366(n+1), A066247(#)]`
-/

namespace A008367.P17383589157071978723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A008367.P17383589157071978723

/-! ## A008367.P13968149897499755478

`filter[A008366(1+n), A202238(#)]`
-/

namespace A008367.P13968149897499755478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008366 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A008367.P13968149897499755478

/-! ## A008367.P15129453308365519665

`filter[A008366(1+n), A323162(#)]`
-/

namespace A008367.P15129453308365519665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008366 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A008367.P15129453308365519665

/-! ## A008367.P10689231376533868776

`filter[A008366(n+2), A005171(#)]`
-/

namespace A008367.P10689231376533868776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008366 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A008367.P10689231376533868776

/-! ## A008367.P11839689733679212919

`filter[A008366(n+2), A292438(#)]`
-/

namespace A008367.P11839689733679212919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008366 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A008367.P11839689733679212919

/-! ## A008367.P896473332585731432

`∩[A008366(n+1), A038510(n+1)]`
-/

namespace A008367.P896473332585731432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008367.P896473332585731432

/-! ## A008367.P17016500990834177546

`∩[A008366(n+1), A038511(n+1)]`
-/

namespace A008367.P17016500990834177546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008367.P17016500990834177546

/-! ## A008367.P11783154876629764159

`∩[A008366(n+1), A038512(n+1)]`
-/

namespace A008367.P11783154876629764159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008367.P11783154876629764159

/-! ## A008367.P16403052763509489048

`∩[A008366(n+1), A133630(n+1)]`
-/

namespace A008367.P16403052763509489048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008367.P16403052763509489048

/-! ## A008367.P654518497266907038

`∩[A008366(n+1), A271630(n+1)]`
-/

namespace A008367.P654518497266907038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008367.P654518497266907038

/-! ## A008367.P7543852951447623230

`∩[A008366(n+1), A038509(n+1)]`
-/

namespace A008367.P7543852951447623230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008367.P7543852951447623230

/-! ## A008367.P14912804928002209227

`∩[A008366(n+1), A390467(n+1)]`
-/

namespace A008367.P14912804928002209227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008367.P14912804928002209227

/-! ## A008367.P770255267511048814

`∩[A008366(n+1), A069063(n+1)]`
-/

namespace A008367.P770255267511048814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008367.P770255267511048814

/-! ## A008367.P13834664225964808536

`∩[A008366(n+1), A053795(n+1)]`
-/

namespace A008367.P13834664225964808536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008367.P13834664225964808536

/-! ## A008367.P6511904450881748511

`∩[A008366(n+1), A282668(n+1)]`
-/

namespace A008367.P6511904450881748511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282668 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008367.P6511904450881748511

/-! ## A008367.P5116921058105780146

`∩[A363594(n+1), A100490(n)]`
-/

namespace A008367.P5116921058105780146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008367.P5116921058105780146

/-! ## A008367.P7882669707361975901

`∩[A038509(n+1), A363594(n+1)]`
-/

namespace A008367.P7882669707361975901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008367.P7882669707361975901

/-! ## A008367.P10333312315179482095

`∩[A038510(n+1), A363594(n+1)]`
-/

namespace A008367.P10333312315179482095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008367.P10333312315179482095

/-! ## A008367.P6840530789243547619

`∩[A038511(n+1), A363594(n+1)]`
-/

namespace A008367.P6840530789243547619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008367.P6840530789243547619

/-! ## A008367.P4325065278928326494

`∩[A038512(n+1), A363594(n+1)]`
-/

namespace A008367.P4325065278928326494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008367.P4325065278928326494

/-!
# A008368: Number of orbits on points that are at n steps from the origin in the f.c.c. lattice.

The programs for A008368, there is no canonical definition to state claims against.
-/

/-! ## A008368.P2775435458868917358

`ceil(∑[(n+1)*gcd(2, n)²]/6)%42`
-/

namespace A008368.P2775435458868917358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.gcd 2 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 6⌉ 42

end

end A008368.P2775435458868917358

/-! ## A008368.P10421026872700744703

`A023054(n)`
-/

namespace A008368.P10421026872700744703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023054 n

end

end A008368.P10421026872700744703

/-! ## A008368.P13146200779197931586

`A047800(n)-(a(n-1)+n)` with `a(0)=1`
-/

namespace A008368.P13146200779197931586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A047800 n - (a (n - 1) + (n : ℤ))

end

end A008368.P13146200779197931586

/-! ## A008368.P6926692599482704857

`A054071((n+1)²)-a(n-1)` with `a(0)=1`
-/

namespace A008368.P6926692599482704857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054071 ((n + 1) ^ 2) - a (n - 1)

end

end A008368.P6926692599482704857

/-! ## A008368.P7503767564150342901

`A025799(A172328(n))`
-/

namespace A008368.P7503767564150342901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025799 (A172328 n).toNat

end

end A008368.P7503767564150342901

/-!
# A008369: Number of orbits on points that are at n steps from 0 in D_4 lattice.

The programs for A008369, there is no canonical definition to state claims against.
-/

/-! ## A008369.P6623967472733732477

`∑[∑[n+1-n²%3-a(n-1)]-a(n-1)]` with `a(0)=1`
-/

namespace A008369.P6623967472733732477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (n + 1 : ℤ) - ((n ^ 2 % 3 : ℕ) : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008369.P6623967472733732477

/-! ## A008369.P8177072494350793032

`A212986(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A008369.P8177072494350793032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A212986 n + a (n - 2)

end

end A008369.P8177072494350793032

/-! ## A008369.P3407868364511593160

`round(A007988(3*n+4)/9)`
-/

namespace A008369.P3407868364511593160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007988 (3 * n + 4) : ℚ) / 9)

end

end A008369.P3407868364511593160

/-! ## A008369.P15401037082097964473

`A008731(n)+∑[∑[∑[n]%(n+1)]]`
-/

namespace A008369.P15401037082097964473
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008731 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A008369.P15401037082097964473

/-! ## A008369.P8936429900138514454

`∑[C(floor(n/2)+2, 2)-A008615(n+1)]`
-/

namespace A008369.P8936429900138514454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (⌊(n : ℚ) / 2⌋ + 2).toNat 2 : ℤ) - A008615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008369.P8936429900138514454

/-!
# A008370: Number of orbits on points that are at n steps from 0 in D_5 lattice.

The programs for A008370, there is no canonical definition to state claims against.
-/

/-! ## A008370.P4568336484321085789

`A000196(A063460(n+1)*A274521(n+1))`
-/

namespace A008370.P4568336484321085789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A063460 (n + 1) * A274521 (n + 1)).toNat

end

end A008370.P4568336484321085789

/-!
# A008371: Number of orbits on points that are at n steps from 0 in D_6 lattice.

The programs for A008371, there is no canonical definition to state claims against.
-/

/-! ## A008371.P17011314152157187872

`A011849(n+2)+A320788(n+3)-A263930(C(n, 9)+1)`
-/

namespace A008371.P17011314152157187872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011849 (n + 2) + (A320788 (n + 3) - A263930 (Nat.choose n 9 + 1))

end

end A008371.P17011314152157187872

/-! ## A008371.P11181452459860026099

`A003056((A249914(n)+1)*(n+1))-A209229(A003056(n))`
-/

namespace A008371.P11181452459860026099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ((A249914 n + 1) * (n + 1 : ℤ)).toNat - A209229 (A003056 n).toNat

end

end A008371.P11181452459860026099

/-!
# A008374: Number of orbits on points that are at n steps from 0 in D_9 lattice.

The programs for A008374, there is no canonical definition to state claims against.
-/

/-! ## A008374.P2406445203504760519

`A160647(A110370(n+1))-ceil(n/2)`
-/

namespace A008374.P2406445203504760519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160647 (A110370 (n + 1)).toNat - ⌈(n : ℚ) / 2⌉

end

end A008374.P2406445203504760519

/-! ## A008374.P16735194098098005783

`A103924(n)-A001221(A001077(n))`
-/

namespace A008374.P16735194098098005783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103924 n - A001221 (A001077 n).toNat

end

end A008374.P16735194098098005783

/-! ## A008374.P8404591156204265572

`A117488(A034067(n+1)+10)-A004526(n+1)`
-/

namespace A008374.P8404591156204265572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117488 (A034067 (n + 1) + 10).toNat - A004526 (n + 1)

end

end A008374.P8404591156204265572

/-! ## A008374.P4305729967863887635

`A085089(A360082(n))`
-/

namespace A008374.P4305729967863887635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A360082 n).toNat

end

end A008374.P4305729967863887635

/-!
# A008375: Number of orbits on points that are at n steps from 0 in D_10 lattice.

The programs for A008375, there is no canonical definition to state claims against.
-/

/-! ## A008375.P11214185342539678771

`A236559(n+1)-A004218(A174462(n+1))`
-/

namespace A008375.P11214185342539678771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236559 (n + 1) - A004218 (A174462 (n + 1)).toNat

end

end A008375.P11214185342539678771

/-! ## A008375.P5978020786453282165

`A184421(A335838(n)-n)`
-/

namespace A008375.P5978020786453282165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184421 (A335838 n - (n : ℤ)).toNat

end

end A008375.P5978020786453282165

/-! ## A008375.P5618857597243542535

`A000712(n)-A071381(n+1)%3`
-/

namespace A008375.P5618857597243542535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n - Int.tmod (A071381 (n + 1)) 3

end

end A008375.P5618857597243542535

/-! ## A008375.P15552478847872748608

`A103929(n)-A375150(A000984(n))`
-/

namespace A008375.P15552478847872748608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103929 n - A375150 (A000984 n).toNat

end

end A008375.P15552478847872748608

/-!
# A008376: Coordination sequence for D_9 lattice.

The programs for A008376, the canonical program `A008376.P8710974549002367927` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008376 has offset 0).

The definition of A008376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008376.P8710974549002367927

`A035746(n)-9*A035602(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A008376

/-- `A035746(n)-9*A035602(n)` -/
def P8710974549002367927.Spec : Prop :=
  ∀ n, P8710974549002367927.a n = A008376 n

theorem P8710974549002367927.correct : P8710974549002367927.Spec := by
  intro n
  simp only [A008376]

end A008376

/-!
# A008377: Crystal ball sequence for D_9 lattice.

The programs for A008377, the canonical program `A008377.P16559859115335658880` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008377 has offset 0).

The definition of A008377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008377.P16559859115335658880

`∑[A008376(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A008377

/-- `∑[A008376(n)]` -/
def P16559859115335658880.Spec : Prop :=
  ∀ n, P16559859115335658880.a n = A008377 n

theorem P16559859115335658880.correct : P16559859115335658880.Spec := by
  intro n
  simp only [A008377]

end A008377

/-! ## A008377.P11259117425376173157

`A008376(round(sqrt(n²+1)))+a(n-1)` with `a(0)=1`
-/

namespace A008377.P11259117425376173157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008376 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + a (n - 1)

end

end A008377.P11259117425376173157

namespace A008377

/-- `A008376(round(sqrt(n²+1)))+a(n-1)` -/
def P11259117425376173157.Spec : Prop :=
  ∀ n, P11259117425376173157.a n = A008377 n

end A008377

/-! ## A008377.P6887526190647111296

`∑[A035746(n)-9*A035602(n)]`
-/

namespace A008377.P6887526190647111296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035746 n - 9 * A035602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008377.P6887526190647111296

namespace A008377

/-- `∑[A035746(n)-9*A035602(n)]` -/
def P6887526190647111296.Spec : Prop :=
  ∀ n, P6887526190647111296.a n = A008377 n

end A008377

/-!
# A008378: Coordination sequence for D_10 lattice.

The programs for A008378, the canonical program `A008378.P205600606006481001` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008378 has offset 0).

The definition of A008378 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008378.P205600606006481001

`A035747(n)-10*A035603(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A008378

/-- `A035747(n)-10*A035603(n)` -/
def P205600606006481001.Spec : Prop :=
  ∀ n, P205600606006481001.a n = A008378 n

theorem P205600606006481001.correct : P205600606006481001.Spec := by
  intro n
  simp only [A008378]

end A008378

/-!
# A008379: Crystal ball sequence for D_10 lattice.

The programs for A008379, the canonical program `A008379.P2564125293776314890` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008379 has offset 0).

The definition of A008379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008379.P2564125293776314890

`∑[A008378(n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A008379

/-- `∑[A008378(n)]` -/
def P2564125293776314890.Spec : Prop :=
  ∀ n, P2564125293776314890.a n = A008379 n

theorem P2564125293776314890.correct : P2564125293776314890.Spec := by
  intro n
  simp only [A008379]

end A008379

/-! ## A008379.P16799979119447179256

`A008378(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A008379.P16799979119447179256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008378 n + a (A023443 n).toNat

end

end A008379.P16799979119447179256

namespace A008379

/-- `A008378(n)+a(A023443(n))` -/
def P16799979119447179256.Spec : Prop :=
  ∀ n, P16799979119447179256.a n = A008379 n

end A008379

/-! ## A008379.P5484294886439184285

`∑[A035747(n)-10*A035603(n)]`
-/

namespace A008379.P5484294886439184285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035747 n - 10 * A035603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008379.P5484294886439184285

namespace A008379

/-- `∑[A035747(n)-10*A035603(n)]` -/
def P5484294886439184285.Spec : Prop :=
  ∀ n, P5484294886439184285.a n = A008379 n

end A008379

/-!
# A008380: 4*(2n-1)!*H(2n), where H(n) = Sum 1/i are harmonic numbers.

The programs for A008380, there is no canonical definition to state claims against.
-/

/-! ## A008380.P3050291056387978187

`2*A123989(n+1)*n!`
-/

namespace A008380.P3050291056387978187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123989 (n + 1) * (Nat.factorial n : ℤ)

end

end A008380.P3050291056387978187

/-! ## A008380.P13257243388726563847

`A052517(2*n+3)/(n+1)`
-/

namespace A008380.P13257243388726563847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052517 (2 * n + 3) : ℚ) / (n + 1 : ℚ)

end

end A008380.P13257243388726563847

/-! ## A008380.P5520024313136473974

`A285853(2*n+3)/(n+1)`
-/

namespace A008380.P5520024313136473974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285853 (2 * n + 3) : ℚ) / (n + 1 : ℚ)

end

end A008380.P5520024313136473974

/-! ## A008380.P5069592923433814040

`2/(n+1)*A000254(A317440(n+1))`
-/

namespace A008380.P5069592923433814040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A000254 (A317440 (n + 1)).toNat : ℚ)

end

end A008380.P5069592923433814040

/-! ## A008380.P14522190769482209938

`(A112492(A091823(n+1))+A112492(A091823(n+1)))/(n+1)`
-/

namespace A008380.P14522190769482209938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112492 (A091823 (n + 1)).toNat + A112492 (A091823 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A008380.P14522190769482209938

/-!
# A008381: floor(n/5)*floor((n+1)/5)*floor((n+2)/5)*floor((n+3)/5).

The programs for A008381, the canonical program `A008381.P14275123126833817678` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008381 has offset 0).

The definition of A008381 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/5)*floor((n+1)/5)*floor((n+2)/5)*floor((n+3)/5)` (program `A008381.P14275123126833817678`, by `A008381.P14275123126833817678.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008381.P14275123126833817678

`floor(n/5)*floor((n+1)/5)*floor((n+2)/5)*floor((n+3)/5)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008381

/-- `floor(n/5)*floor((n+1)/5)*floor((n+2)/5)*floor((n+3)/5)` -/
def P14275123126833817678.Spec : Prop :=
  ∀ n, P14275123126833817678.a n = A008381 n

theorem P14275123126833817678.correct : P14275123126833817678.Spec := by
  intro n
  simp only [A008381]

end A008381

/-! ## A008381.P1427796687034712031

`Δ[A008382(abs(1-n))]`
-/

namespace A008381.P1427796687034712031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008382 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008381.P1427796687034712031

namespace A008381

/-- `Δ[A008382(abs(1-n))]` -/
def P1427796687034712031.Spec : Prop :=
  ∀ n, P1427796687034712031.a n = A008381 n

end A008381

/-! ## A008381.P15527805159622616882

`A008233(A090223(n))`
-/

namespace A008381.P15527805159622616882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008233 (A090223 n).toNat

end

end A008381.P15527805159622616882

namespace A008381

/-- `A008233(A090223(n))` -/
def P15527805159622616882.Spec : Prop :=
  ∀ n, P15527805159622616882.a n = A008381 n

end A008381

/-!
# A008382: a(n) = floor(n/5)*floor((n+1)/5)*floor((n+2)/5)*floor((n+3)/5)*floor((n+4)/5).

The programs for A008382, the canonical program `A008382.P14200726533510459489` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008382 has offset 0).

The definition of A008382 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/5)*floor((n+1)/5)*floor((n+2)/5)*floor((n+3)/5)*floor((n+4)/5)` (program `A008382.P14200726533510459489`, by `A008382.P14200726533510459489.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008382.P14200726533510459489

`floor(n/5)*floor((n+1)/5)*floor((n+2)/5)*floor((n+3)/5)*floor((n+4)/5)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008382

/-- `floor(n/5)*floor((n+1)/5)*floor((n+2)/5)*floor((n+3)/5)*floor((n+4)/5)` -/
def P14200726533510459489.Spec : Prop :=
  ∀ n, P14200726533510459489.a n = A008382 n

theorem P14200726533510459489.correct : P14200726533510459489.Spec := by
  intro n
  simp only [A008382]

end A008382

/-! ## A008382.P11729639428440838591

`∑[A008381(n)]`
-/

namespace A008382.P11729639428440838591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008381 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008382.P11729639428440838591

namespace A008382

/-- `∑[A008381(n)]` -/
def P11729639428440838591.Spec : Prop :=
  ∀ n, P11729639428440838591.a n = A008382 n

end A008382

/-! ## A008382.P15461462098590773387

`∑[A008233(A090223(n))]`
-/

namespace A008382.P15461462098590773387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008233 (A090223 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008382.P15461462098590773387

namespace A008382

/-- `∑[A008233(A090223(n))]` -/
def P15461462098590773387.Spec : Prop :=
  ∀ n, P15461462098590773387.a n = A008382 n

end A008382

/-! ## A008382.P4648833278457133635

`∑[A002266(n)*A008496(n+1)]`
-/

namespace A008382.P4648833278457133635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 n * A008496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008382.P4648833278457133635

namespace A008382

/-- `∑[A002266(n)*A008496(n+1)]` -/
def P4648833278457133635.Spec : Prop :=
  ∀ n, P4648833278457133635.a n = A008382 n

end A008382

/-! ## A008382.P9392329986877609878

`∑[A008497(n+2)*A008497(n)]`
-/

namespace A008382.P9392329986877609878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008497 (n + 2) * A008497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008382.P9392329986877609878

namespace A008382

/-- `∑[A008497(n+2)*A008497(n)]` -/
def P9392329986877609878.Spec : Prop :=
  ∀ n, P9392329986877609878.a n = A008382 n

end A008382

/-! ## A008382.P12958885366004172875

`∑[A008233(A057354(2*n))]`
-/

namespace A008382.P12958885366004172875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008233 (A057354 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008382.P12958885366004172875

namespace A008382

/-- `∑[A008233(A057354(2*n))]` -/
def P12958885366004172875.Spec : Prop :=
  ∀ n, P12958885366004172875.a n = A008382 n

end A008382

/-! ## A008382.P12965671336500003169

`∑[A008233(A002266(4*n))]`
-/

namespace A008382.P12965671336500003169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008233 (A002266 (4 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008382.P12965671336500003169

namespace A008382

/-- `∑[A008233(A002266(4*n))]` -/
def P12965671336500003169.Spec : Prop :=
  ∀ n, P12965671336500003169.a n = A008382 n

end A008382

/-!
# A008383: Coordination sequence for A_4 lattice.

The programs for A008383, the canonical program `A008383.P17301679508860811928` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008383 has offset 0).

The definition of A008383 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008383.P17301679508860811928

`ogf((1+16x+36x^2+16x^3+x^4)/(1-4x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008383

/-- `ogf((1+16x+36x^2+16x^3+x^4)/(1-4x+6x^2-4x^3+x^4))` -/
def P17301679508860811928.Spec : Prop :=
  ∀ n, P17301679508860811928.a n = A008383 n

theorem P17301679508860811928.correct : P17301679508860811928.Spec := by
  intro n
  simp only [A008383]

end A008383

/-! ## A008383.P7955473492485774871

`A008528(n)+2*A006527(n)`
-/

namespace A008383.P7955473492485774871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008528 n + 2 * A006527 n

end

end A008383.P7955473492485774871

namespace A008383

/-- `A008528(n)+2*A006527(n)` -/
def P7955473492485774871.Spec : Prop :=
  ∀ n, P7955473492485774871.a n = A008383 n

end A008383

/-! ## A008383.P8820465922022391111

`A005900(n)+A008528(n)+n`
-/

namespace A008383.P8820465922022391111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n + (A008528 n + (n : ℤ))

end

end A008383.P8820465922022391111

namespace A008383

/-- `A005900(n)+A008528(n)+n` -/
def P8820465922022391111.Spec : Prop :=
  ∀ n, P8820465922022391111.a n = A008383 n

end A008383

/-! ## A008383.P4809119709302349218

`A244725(n)+A008487(2*n)`
-/

namespace A008383.P4809119709302349218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244725 n + A008487 (2 * n)

end

end A008383.P4809119709302349218

namespace A008383

/-- `A244725(n)+A008487(2*n)` -/
def P4809119709302349218.Spec : Prop :=
  ∀ n, P4809119709302349218.a n = A008383 n

end A008383

/-! ## A008383.P16157328615716337101

`A217873(2*n)+A079908(n)`
-/

namespace A008383.P16157328615716337101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217873 (2 * n) + A079908 n

end

end A008383.P16157328615716337101

namespace A008383

/-- `A217873(2*n)+A079908(n)` -/
def P16157328615716337101.Spec : Prop :=
  ∀ n, P16157328615716337101.a n = A008383 n

end A008383

/-! ## A008383.P6932044014505828218

`(A008487(n)+A008487(A008585(n)))/2`
-/

namespace A008383.P6932044014505828218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008487 n + A008487 (A008585 n).toNat : ℚ) / 2

end

end A008383.P6932044014505828218

namespace A008383

/-- `(A008487(n)+A008487(A008585(n)))/2` -/
def P6932044014505828218.Spec : Prop :=
  ∀ n, P6932044014505828218.a n = (A008383 n : ℚ)

end A008383

/-! ## A008383.P9839847688683443450

`A103881(∑[n+4]+3)`
-/

namespace A008383.P9839847688683443450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A008383.P9839847688683443450

namespace A008383

/-- `A103881(∑[n+4]+3)` -/
def P9839847688683443450.Spec : Prop :=
  ∀ n, P9839847688683443450.a n = A008383 n

end A008383

/-!
# A008384: Crystal ball sequence for A_4 lattice.

The programs for A008384, the canonical program `A008384.P13074183356800306748` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008384 has offset 0).

The definition of A008384 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008384.P5151963473833379629

`ogf((1+16x+36x^2+16x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A008384.P5151963473833379629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 16, 36, 16, 1] [1, -5, 10, -10, 5, -1] n

end

end A008384.P5151963473833379629

namespace A008384

/-- `ogf((1+16x+36x^2+16x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P5151963473833379629.Spec : Prop :=
  ∀ n, P5151963473833379629.a n = A008384 n

end A008384

/-! ## A008384.P13074183356800306748

`1+5*n*(n+1)*(7*n²+7*n+10)/12`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008384

/-- `1+5*n*(n+1)*(7*n²+7*n+10)/12` -/
def P13074183356800306748.Spec : Prop :=
  ∀ n, P13074183356800306748.a n = (A008384 n : ℚ)

end A008384

/-! ## A008384.P11689465744850541207

`∑[A008383(n)]`
-/

namespace A008384.P11689465744850541207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008384.P11689465744850541207

namespace A008384

/-- `∑[A008383(n)]` -/
def P11689465744850541207.Spec : Prop :=
  ∀ n, P11689465744850541207.a n = A008384 n

end A008384

/-! ## A008384.P13820866275672781690

`∑[A008528(n)+2*A006527(n)]`
-/

namespace A008384.P13820866275672781690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008528 n + 2 * A006527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008384.P13820866275672781690

namespace A008384

/-- `∑[A008528(n)+2*A006527(n)]` -/
def P13820866275672781690.Spec : Prop :=
  ∀ n, P13820866275672781690.a n = A008384 n

end A008384

/-! ## A008384.P12942336959410231092

`∑[A005900(n)+A008528(n)+n]`
-/

namespace A008384.P12942336959410231092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n + (A008528 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008384.P12942336959410231092

namespace A008384

/-- `∑[A005900(n)+A008528(n)+n]` -/
def P12942336959410231092.Spec : Prop :=
  ∀ n, P12942336959410231092.a n = A008384 n

end A008384

/-! ## A008384.P7101700572233427189

`Δ[A245380(n)]`
-/

namespace A008384.P7101700572233427189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008384.P7101700572233427189

namespace A008384

/-- `Δ[A245380(n)]` -/
def P7101700572233427189.Spec : Prop :=
  ∀ n, P7101700572233427189.a n = A008384 n

end A008384

/-! ## A008384.P11609832590393900232

`Δ[n*(A037270(n)+A002415(n))]`
-/

namespace A008384.P11609832590393900232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A037270 n + A002415 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008384.P11609832590393900232

namespace A008384

/-- `Δ[n*(A037270(n)+A002415(n))]` -/
def P11609832590393900232.Spec : Prop :=
  ∀ n, P11609832590393900232.a n = A008384 n

end A008384

/-! ## A008384.P17749422934283196459

`Δ[Δ[Δ[A132458(n+1)]]]`
-/

namespace A008384.P17749422934283196459
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008384.P17749422934283196459

namespace A008384

/-- `Δ[Δ[Δ[A132458(n+1)]]]` -/
def P17749422934283196459.Spec : Prop :=
  ∀ n, P17749422934283196459.a n = A008384 n

end A008384

/-! ## A008384.P6548104919618006876

`A108625(A052905(n+2))`
-/

namespace A008384.P6548104919618006876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (A052905 (n + 2)).toNat

end

end A008384.P6548104919618006876

namespace A008384

/-- `A108625(A052905(n+2))` -/
def P6548104919618006876.Spec : Prop :=
  ∀ n, P6548104919618006876.a n = A008384 n

end A008384

/-!
# A008385: Coordination sequence for A_5 lattice.

The programs for A008385, the canonical program `A008385.P10605285462334320066` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008385 has offset 0).

The definition of A008385 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008385.P10605285462334320066

`ogf((1+25x+100x^2+100x^3+25x^4+x^5)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008385

/-- `ogf((1+25x+100x^2+100x^3+25x^4+x^5)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P10605285462334320066.Spec : Prop :=
  ∀ n, P10605285462334320066.a n = A008385 n

theorem P10605285462334320066.correct : P10605285462334320066.Spec := by
  intro n
  simp only [A008385]

end A008385

/-! ## A008385.P6216644815299185341

`A022278(n²)+A010008(n)`
-/

namespace A008385.P6216644815299185341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022278 (n ^ 2) + A010008 n

end

end A008385.P6216644815299185341

namespace A008385

/-- `A022278(n²)+A010008(n)` -/
def P6216644815299185341.Spec : Prop :=
  ∀ n, P6216644815299185341.a n = A008385 n

end A008385

/-! ## A008385.P1471155828874294707

`A022279(n²)+A010007(n)`
-/

namespace A008385.P1471155828874294707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022279 (n ^ 2) + A010007 n

end

end A008385.P1471155828874294707

namespace A008385

/-- `A022279(n²)+A010007(n)` -/
def P1471155828874294707.Spec : Prop :=
  ∀ n, P1471155828874294707.a n = A008385 n

end A008385

/-! ## A008385.P7929145535965814963

`A103881(∑[n+5]+6)`
-/

namespace A008385.P7929145535965814963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A008385.P7929145535965814963

namespace A008385

/-- `A103881(∑[n+5]+6)` -/
def P7929145535965814963.Spec : Prop :=
  ∀ n, P7929145535965814963.a n = A008385 n

end A008385

/-!
# A008386: Crystal ball sequence for A_5 lattice.

The programs for A008386, the canonical program `A008386.P7481527591864925560` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008386 has offset 0).

The definition of A008386 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008386.P7835674773313246573

`ogf((1+25x+100x^2+100x^3+25x^4+x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A008386.P7835674773313246573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 25, 100, 100, 25, 1] [1, -6, 15, -20, 15, -6, 1] n

end

end A008386.P7835674773313246573

namespace A008386

/-- `ogf((1+25x+100x^2+100x^3+25x^4+x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P7835674773313246573.Spec : Prop :=
  ∀ n, P7835674773313246573.a n = A008386 n

end A008386

/-! ## A008386.P7481527591864925560

`(2*n+1)*(63*n^4+126*n^3+217*n²+154*n+60)/60`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008386

/-- `(2*n+1)*(63*n^4+126*n^3+217*n²+154*n+60)/60` -/
def P7481527591864925560.Spec : Prop :=
  ∀ n, P7481527591864925560.a n = (A008386 n : ℚ)

end A008386

/-! ## A008386.P12897200163833100107

`∑[A008385(n)]`
-/

namespace A008386.P12897200163833100107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008385 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008386.P12897200163833100107

namespace A008386

/-- `∑[A008385(n)]` -/
def P12897200163833100107.Spec : Prop :=
  ∀ n, P12897200163833100107.a n = A008386 n

end A008386

/-! ## A008386.P2836993149895771504

`∑[A160747(n)]+n*A160747(n)`
-/

namespace A008386.P2836993149895771504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) * A160747 n

end

end A008386.P2836993149895771504

namespace A008386

/-- `∑[A160747(n)]+n*A160747(n)` -/
def P2836993149895771504.Spec : Prop :=
  ∀ n, P2836993149895771504.a n = A008386 n

end A008386

/-! ## A008386.P13330406163440482644

`a(n-1)+A008385(n)+A000007(n)` with `a(0)=1`
-/

namespace A008386.P13330406163440482644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A008385 n + A000007 n)

end

end A008386.P13330406163440482644

namespace A008386

/-- `a(n-1)+A008385(n)+A000007(n)` -/
def P13330406163440482644.Spec : Prop :=
  ∀ n, P13330406163440482644.a n = A008386 n

end A008386

/-! ## A008386.P7551686055652684568

`a(n-1)+A008385(n)+A000038(n)` with `a(0)=1`
-/

namespace A008386.P7551686055652684568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A008385 n + A000038 n)

end

end A008386.P7551686055652684568

namespace A008386

/-- `a(n-1)+A008385(n)+A000038(n)` -/
def P7551686055652684568.Spec : Prop :=
  ∀ n, P7551686055652684568.a n = A008386 n

end A008386

/-! ## A008386.P410080918641657051

`A108625(A055999(n+3))`
-/

namespace A008386.P410080918641657051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (A055999 (n + 3)).toNat

end

end A008386.P410080918641657051

namespace A008386

/-- `A108625(A055999(n+3))` -/
def P410080918641657051.Spec : Prop :=
  ∀ n, P410080918641657051.a n = A008386 n

end A008386

/-! ## A008386.P6800772141817550526

`∑[A103881(∑[n+5]+6)]`
-/

namespace A008386.P6800772141817550526
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (∑ j ∈ Finset.range (n + 1), f2 j + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008386.P6800772141817550526

namespace A008386

/-- `∑[A103881(∑[n+5]+6)]` -/
def P6800772141817550526.Spec : Prop :=
  ∀ n, P6800772141817550526.a n = A008386 n

end A008386

/-!
# A008387: Coordination sequence for A_6 lattice.

The programs for A008387, the canonical program `A008387.P17196989306735098944` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008387 has offset 0).

The definition of A008387 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008387.P17196989306735098944

`ogf((1+36x+225x^2+400x^3+225x^4+36x^5+x^6)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008387

/-- `ogf((1+36x+225x^2+400x^3+225x^4+36x^5+x^6)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P17196989306735098944.Spec : Prop :=
  ∀ n, P17196989306735098944.a n = A008387 n

theorem P17196989306735098944.correct : P17196989306735098944.Spec := by
  intro n
  simp only [A008387]

end A008387

/-! ## A008387.P11144420778641423606

`A103881(C(n+6, 2)+n+1)`
-/

namespace A008387.P11144420778641423606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (Nat.choose (n + 6) 2 + (n + 1))

end

end A008387.P11144420778641423606

namespace A008387

/-- `A103881(C(n+6, 2)+n+1)` -/
def P11144420778641423606.Spec : Prop :=
  ∀ n, P11144420778641423606.a n = A008387 n

end A008387

/-!
# A008388: Crystal ball sequence for A_6 lattice.

The programs for A008388, the canonical program `A008388.P319690699095068204` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008388 has offset 0).

The definition of A008388 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008388.P12977822827113080535

`ogf((1+36x+225x^2+400x^3+225x^4+36x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A008388.P12977822827113080535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 36, 225, 400, 225, 36, 1] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A008388.P12977822827113080535

namespace A008388

/-- `ogf((1+36x+225x^2+400x^3+225x^4+36x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P12977822827113080535.Spec : Prop :=
  ∀ n, P12977822827113080535.a n = A008388 n

end A008388

/-! ## A008388.P319690699095068204

`1+7*n*(n+1)*(n²+n+3)*(11*n²+11*n+14)/60`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008388

/-- `1+7*n*(n+1)*(n²+n+3)*(11*n²+11*n+14)/60` -/
def P319690699095068204.Spec : Prop :=
  ∀ n, P319690699095068204.a n = (A008388 n : ℚ)

end A008388

/-! ## A008388.P13686771093926574528

`∑[A008387(n)]`
-/

namespace A008388.P13686771093926574528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008387 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008388.P13686771093926574528

namespace A008388

/-- `∑[A008387(n)]` -/
def P13686771093926574528.Spec : Prop :=
  ∀ n, P13686771093926574528.a n = A008388 n

end A008388

/-! ## A008388.P14735161168624370585

`A108625(A056115(n+2)+8)`
-/

namespace A008388.P14735161168624370585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (A056115 (n + 2) + 8).toNat

end

end A008388.P14735161168624370585

namespace A008388

/-- `A108625(A056115(n+2)+8)` -/
def P14735161168624370585.Spec : Prop :=
  ∀ n, P14735161168624370585.a n = A008388 n

end A008388

/-! ## A008388.P16591912773543688979

`∑[A103881(A052905(n+3))]`
-/

namespace A008388.P16591912773543688979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A052905 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008388.P16591912773543688979

namespace A008388

/-- `∑[A103881(A052905(n+3))]` -/
def P16591912773543688979.Spec : Prop :=
  ∀ n, P16591912773543688979.a n = A008388 n

end A008388

/-!
# A008389: Coordination sequence for A_7 lattice.

The programs for A008389, there is no canonical definition to state claims against.
-/

/-! ## A008389.P4497688636165390783

`A103881(A055999(n+4))`
-/

namespace A008389.P4497688636165390783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A055999 (n + 4)).toNat

end

end A008389.P4497688636165390783

/-!
# A008390: Crystal ball sequence for A_7 lattice.

The programs for A008390, there is no canonical definition to state claims against.
-/

/-! ## A008390.P16912707199755356237

`∑[A008389(n)]`
-/

namespace A008390.P16912707199755356237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008390.P16912707199755356237

/-! ## A008390.P12428617874130510776

`A108625(A155212(n+4))`
-/

namespace A008390.P12428617874130510776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (A155212 (n + 4)).toNat

end

end A008390.P12428617874130510776

/-! ## A008390.P3066888316779876420

`∑[A103881(A055999(A020705(n)))]`
-/

namespace A008390.P3066888316779876420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A055999 (A020705 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008390.P3066888316779876420

/-!
# A008391: Coordination sequence for A_8 lattice.

The programs for A008391, there is no canonical definition to state claims against.
-/

/-! ## A008391.P16394514929866056071

`A103881(A000124(n+8)-8)`
-/

namespace A008391.P16394514929866056071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A000124 (n + 8) - 8).toNat

end

end A008391.P16394514929866056071

/-!
# A008392: Crystal ball sequence for A_8 lattice.

The programs for A008392, there is no canonical definition to state claims against.
-/

/-! ## A008392.P15082955371766945778

`∑[A008391(n)]`
-/

namespace A008392.P15082955371766945778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008392.P15082955371766945778

/-! ## A008392.P17954100873309268014

`A108625(A000096(n+8)-8)`
-/

namespace A008392.P17954100873309268014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (A000096 (n + 8) - 8).toNat

end

end A008392.P17954100873309268014

/-!
# A008393: Coordination sequence for A_9 lattice.

The programs for A008393, there is no canonical definition to state claims against.
-/

/-! ## A008393.P9035644431854061132

`A103881(A000124(n+9)-9)`
-/

namespace A008393.P9035644431854061132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A000124 (n + 9) - 9).toNat

end

end A008393.P9035644431854061132

/-!
# A008394: Crystal ball sequence for A_9 lattice.

The programs for A008394, there is no canonical definition to state claims against.
-/

/-! ## A008394.P7307868312828668007

`∑[A008393(n)]`
-/

namespace A008394.P7307868312828668007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008394.P7307868312828668007

/-! ## A008394.P13650639246543343795

`A108625(A034856(n+9)-8)`
-/

namespace A008394.P13650639246543343795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (A034856 (n + 9) - 8).toNat

end

end A008394.P13650639246543343795

/-!
# A008395: Coordination sequence for A_10 lattice.

The programs for A008395, there is no canonical definition to state claims against.
-/

/-! ## A008395.P5050857856265610580

`A103881(A052905(n+7)-4)`
-/

namespace A008395.P5050857856265610580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A052905 (n + 7) - 4).toNat

end

end A008395.P5050857856265610580

/-!
# A008396: Crystal ball sequence for A_10 lattice.

The programs for A008396, there is no canonical definition to state claims against.
-/

/-! ## A008396.P18301228803484974327

`∑[A008395(n)]`
-/

namespace A008396.P18301228803484974327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008395 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008396.P18301228803484974327

/-! ## A008396.P10954605251040951239

`A108625(A034856(n+10)-9)`
-/

namespace A008396.P10954605251040951239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (A034856 (n + 10) - 9).toNat

end

end A008396.P10954605251040951239

/-! ## A008396.P14478811693226423966

`A108625(eq[10, A025581(n)])`
-/

namespace A008396.P14478811693226423966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A008396.P14478811693226423966

/-!
# A008398: Crystal ball sequence for E_7 lattice.

The programs for A008398, there is no canonical definition to state claims against.
-/

/-! ## A008398.P2194535258294297349

`∑[A008397(n)]`
-/

namespace A008398.P2194535258294297349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008397 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008398.P2194535258294297349

/-! ## A008398.P11582250864018727587

`A008397(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A008398.P11582250864018727587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008397 n + a (A023443 n).toNat

end

end A008398.P11582250864018727587

/-! ## A008398.P10936077962078434978

`A008397(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A008398.P10936077962078434978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008397 n + a (A028310 n - 1).toNat

end

end A008398.P10936077962078434978

