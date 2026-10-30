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
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C042
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A128300: a(n) = denominator of b(n): b(1)=1; b(n+1) = [b(1);b(2),...,b(n),1], where [...] is a continued fraction of rational terms.

The programs for A128300, there is no canonical definition to state claims against.
-/

/-! ## A128300.P5061345811681419979

`A217136(2^n)-n`
-/

namespace A128300.P5061345811681419979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217136 (2 ^ n) - (n : ℤ)

end

end A128300.P5061345811681419979

/-!
# A128301: Indices of squares (of primes) in the semiprimes.

The programs for A128301, the canonical program `A128301.P8374646845924592674` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128301 has offset 1).

The definition of A128301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128301.P8374646845924592674

`A217019(n)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A128301

/-- `A217019(n)+a(n-1)` -/
def P8374646845924592674.Spec : Prop :=
  ∀ n, P8374646845924592674.a n = A128301 (n + 1)

theorem P8374646845924592674.correct : P8374646845924592674.Spec := by
  intro n
  simp only [A128301, Nat.add_sub_cancel]

end A128301

/-! ## A128301.P16048840485935843162

`∑[A217019(floor(acot(n)+n))]-1`
-/

namespace A128301.P16048840485935843162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217019 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A128301.P16048840485935843162

namespace A128301

/-- `∑[A217019(floor(acot(n)+n))]-1` -/
def P16048840485935843162.Spec : Prop :=
  ∀ n, P16048840485935843162.a n = A128301 (n + 1)

end A128301

/-! ## A128301.P10943974916900589437

`∑[A217019(A028310(n))]-1`
-/

namespace A128301.P10943974916900589437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217019 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A128301.P10943974916900589437

namespace A128301

/-- `∑[A217019(A028310(n))]-1` -/
def P10943974916900589437.Spec : Prop :=
  ∀ n, P10943974916900589437.a n = A128301 (n + 1)

end A128301

/-! ## A128301.P15297334782609631935

`∑[A217019(A000007(n)+n)]-1`
-/

namespace A128301.P15297334782609631935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217019 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A128301.P15297334782609631935

namespace A128301

/-- `∑[A217019(A000007(n)+n)]-1` -/
def P15297334782609631935.Spec : Prop :=
  ∀ n, P15297334782609631935.a n = A128301 (n + 1)

end A128301

/-! ## A128301.P14672269397397680252

`∑[A217019(n+1)]+1-A217019(n+1)`
-/

namespace A128301.P14672269397397680252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A217019 (n + 1))

end

end A128301.P14672269397397680252

namespace A128301

/-- `∑[A217019(n+1)]+1-A217019(n+1)` -/
def P14672269397397680252.Spec : Prop :=
  ∀ n, P14672269397397680252.a n = A128301 (n + 1)

end A128301

/-! ## A128301.P12760942638050695787

`∑[A217019(A065033(2*n))]-1`
-/

namespace A128301.P12760942638050695787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217019 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A128301.P12760942638050695787

namespace A128301

/-- `∑[A217019(A065033(2*n))]-1` -/
def P12760942638050695787.Spec : Prop :=
  ∀ n, P12760942638050695787.a n = A128301 (n + 1)

end A128301

/-! ## A128301.P14010486850313614111

`A205726(p?[comp[n²]])`
-/

namespace A128301.P14010486850313614111
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205726 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A128301.P14010486850313614111

namespace A128301

/-- `A205726(p?[comp[n²]])` -/
def P14010486850313614111.Spec : Prop :=
  ∀ n, P14010486850313614111.a n = A128301 (n + 1)

end A128301

/-! ## A128301.P15395836062164306719

`A205726(Δ[A007504(n)])`
-/

namespace A128301.P15395836062164306719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205726 (f1 (n + 1) - f1 n).toNat

end

end A128301.P15395836062164306719

namespace A128301

/-- `A205726(Δ[A007504(n)])` -/
def P15395836062164306719.Spec : Prop :=
  ∀ n, P15395836062164306719.a n = A128301 (n + 1)

end A128301

/-! ## A128301.P13808665121988103969

`A205726(record[A051698(n)])`
-/

namespace A128301.P13808665121988103969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205726 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A128301.P13808665121988103969

namespace A128301

/-- `A205726(record[A051698(n)])` -/
def P13808665121988103969.Spec : Prop :=
  ∀ n, P13808665121988103969.a n = A128301 (n + 1)

end A128301

/-! ## A128301.P1188741033371226035

`A205726(A000040(n+1))`
-/

namespace A128301.P1188741033371226035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205726 (A000040 (n + 1)).toNat

end

end A128301.P1188741033371226035

namespace A128301

/-- `A205726(A000040(n+1))` -/
def P1188741033371226035.Spec : Prop :=
  ∀ n, P1188741033371226035.a n = A128301 (n + 1)

end A128301

/-! ## A128301.P8763015911359106172

`A205726(A008578(n+2))`
-/

namespace A128301.P8763015911359106172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205726 (A008578 (n + 2)).toNat

end

end A128301.P8763015911359106172

namespace A128301

/-- `A205726(A008578(n+2))` -/
def P8763015911359106172.Spec : Prop :=
  ∀ n, P8763015911359106172.a n = A128301 (n + 1)

end A128301

/-! ## A128301.P12380859565203248602

`A205726(A182986(n+2))`
-/

namespace A128301.P12380859565203248602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205726 (A182986 (n + 2)).toNat

end

end A128301.P12380859565203248602

namespace A128301

/-- `A205726(A182986(n+2))` -/
def P12380859565203248602.Spec : Prop :=
  ∀ n, P12380859565203248602.a n = A128301 (n + 1)

end A128301

/-! ## A128301.P701929082661080774

`A205726(eq[0, A007920(n)])`
-/

namespace A128301.P701929082661080774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205726 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A128301.P701929082661080774

namespace A128301

/-- `A205726(eq[0, A007920(n)])` -/
def P701929082661080774.Spec : Prop :=
  ∀ n, P701929082661080774.a n = A128301 (n + 1)

end A128301

/-! ## A128301.P2984902304515176280

`A205726(sqrt(A001248(n+1)))`
-/

namespace A128301.P2984902304515176280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205726 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A128301.P2984902304515176280

namespace A128301

/-- `A205726(sqrt(A001248(n+1)))` -/
def P2984902304515176280.Spec : Prop :=
  ∀ n, P2984902304515176280.a n = A128301 (n + 1)

end A128301

/-! ## A128301.P4683493318512321391

`A205726(record[A006530(n+2)])`
-/

namespace A128301.P4683493318512321391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205726 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A128301.P4683493318512321391

namespace A128301

/-- `A205726(record[A006530(n+2)])` -/
def P4683493318512321391.Spec : Prop :=
  ∀ n, P4683493318512321391.a n = A128301 (n + 1)

end A128301

/-! ## A128301.P11032196058596198205

`A205726(record[A014963(n+2)])`
-/

namespace A128301.P11032196058596198205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205726 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A128301.P11032196058596198205

namespace A128301

/-- `A205726(record[A014963(n+2)])` -/
def P11032196058596198205.Spec : Prop :=
  ∀ n, P11032196058596198205.a n = A128301 (n + 1)

end A128301

/-! ## A128301.P7063213995315141586

`A205726(record[A020639(n+2)])`
-/

namespace A128301.P7063213995315141586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205726 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A128301.P7063213995315141586

namespace A128301

/-- `A205726(record[A020639(n+2)])` -/
def P7063213995315141586.Spec : Prop :=
  ∀ n, P7063213995315141586.a n = A128301 (n + 1)

end A128301

/-! ## A128301.P16361507797390419827

`A205726(A006093(n+1)+1)`
-/

namespace A128301.P16361507797390419827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205726 (A006093 (n + 1) + 1).toNat

end

end A128301.P16361507797390419827

namespace A128301

/-- `A205726(A006093(n+1)+1)` -/
def P16361507797390419827.Spec : Prop :=
  ∀ n, P16361507797390419827.a n = A128301 (n + 1)

end A128301

/-! ## A128301.P10781970456692985134

`abs(A205726(p?[A215261(n+1)])-1)+1`
-/

namespace A128301.P10781970456692985134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A205726 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1| + 1

end

end A128301.P10781970456692985134

namespace A128301

/-- `abs(A205726(p?[A215261(n+1)])-1)+1` -/
def P10781970456692985134.Spec : Prop :=
  ∀ n, P10781970456692985134.a n = A128301 (n + 1)

end A128301

/-! ## A128301.P15025687533195839627

`A205726(A007504(n+1)-A007504(n))`
-/

namespace A128301.P15025687533195839627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205726 (A007504 (n + 1) - A007504 n).toNat

end

end A128301.P15025687533195839627

namespace A128301

/-- `A205726(A007504(n+1)-A007504(n))` -/
def P15025687533195839627.Spec : Prop :=
  ∀ n, P15025687533195839627.a n = A128301 (n + 1)

end A128301

/-!
# A128302: The indices of cubes (of primes) in the 3-almost primes.

The programs for A128302, there is no canonical definition to state claims against.
-/

/-! ## A128302.P1658917924831649753

`record[A058933(Δ[∑[n]²])]`
-/

namespace A128302.P1658917924831649753
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128302.P1658917924831649753

/-! ## A128302.P1559595149755746287

`A058933(p?[n-(-1)^n]^3)`
-/

namespace A128302.P1559595149755746287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 3).toNat

end

end A128302.P1559595149755746287

/-! ## A128302.P12524765876855673021

`A058933(A030078(n+1))`
-/

namespace A128302.P12524765876855673021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A030078 (n + 1)).toNat

end

end A128302.P12524765876855673021

/-! ## A128302.P6515929249538766976

`A058933(A051751(n+1))`
-/

namespace A128302.P6515929249538766976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A051751 (n + 1)).toNat

end

end A128302.P6515929249538766976

/-! ## A128302.P8331505988743799037

`A376479(A167614(n+1))`
-/

namespace A128302.P8331505988743799037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376479 (A167614 (n + 1)).toNat

end

end A128302.P8331505988743799037

/-!
# A128303: Indices of squares (of semiprimes) in the 4-almost primes.

The programs for A128303, there is no canonical definition to state claims against.
-/

/-! ## A128303.P6216951681014330623

`A058933(A074985(n+1))`
-/

namespace A128303.P6216951681014330623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A074985 (n + 1)).toNat

end

end A128303.P6216951681014330623

/-! ## A128303.P13790218617692691832

`A058933(A001358(n+1)²)`
-/

namespace A128303.P13790218617692691832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A001358 (n + 1) ^ 2).toNat

end

end A128303.P13790218617692691832

/-! ## A128303.P2743135049622178795

`record[A058933(A062312(n+1))]`
-/

namespace A128303.P2743135049622178795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A062312 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128303.P2743135049622178795

/-! ## A128303.P1750871378761017709

`A058933(lt[1, A105700(n)]²)`
-/

namespace A128303.P1750871378761017709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2)

end

end A128303.P1750871378761017709

/-! ## A128303.P3867444456646167877

`A058933(eq[2, A226378(n)]²)`
-/

namespace A128303.P3867444456646167877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2)

end

end A128303.P3867444456646167877

/-!
# A128304: Indices of 4th powers (of primes) in the 4-almost primes.

The programs for A128304, there is no canonical definition to state claims against.
-/

/-! ## A128304.P1274377213218589212

`A128303(A128301(n+1))`
-/

namespace A128304.P1274377213218589212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128303 (A128301 (n + 1)).toNat

end

end A128304.P1274377213218589212

/-! ## A128304.P8075928390399619051

`A376479(A167614(n+2)+1)`
-/

namespace A128304.P8075928390399619051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376479 (A167614 (n + 2) + 1).toNat

end

end A128304.P8075928390399619051

/-!
# A128306: Triangle read by rows: A054521 * A007318 as infinite lower triangular matrices.

The programs for A128306, there is no canonical definition to state claims against.
-/

/-! ## A128306.P991362610525820902

`A117592(A305989(n))*A118344(n)`
-/

namespace A128306.P991362610525820902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117592 (A305989 n).toNat * A118344 n

end

end A128306.P991362610525820902

/-! ## A128306.P4197759799404349290

`A283431(A163936(n+1))`
-/

namespace A128306.P4197759799404349290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283431 (A163936 (n + 1)).toNat

end

end A128306.P4197759799404349290

/-! ## A128306.P3565051389822513424

`∑{e}[A111545(A055830(n)), #]`
-/

namespace A128306.P3565051389822513424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111545 (A055830 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A128306.P3565051389822513424

/-! ## A128306.P427147060852555769

`and(A185133(n+2), A199011(n))`
-/

namespace A128306.P427147060852555769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185133 (n + 2)) (A199011 n)

end

end A128306.P427147060852555769

/-! ## A128306.P8104857197359981646

`A199011(n)-A275768(A224341(n))`
-/

namespace A128306.P8104857197359981646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199011 n - A275768 (A224341 n).toNat

end

end A128306.P8104857197359981646

/-!
# A128307: Triangle, (1, 0, 1, 2, 4, 8, ...) in every column.

The programs for A128307, the canonical program `A128307.P6850029905678512207` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128307 has offset 1).

The definition of A128307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128307.P6850029905678512207

`abs(Δ[gcd(2*T(n-1,k), T(n-1,k-1))])` with `a(0)=2, a(1)=1, a(2)=1, a(3)=0`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128307

/-- `abs(Δ[gcd(2*T(n-1,k), T(n-1,k-1))])` -/
def P6850029905678512207.Spec : Prop :=
  ∀ n, P6850029905678512207.a n = A128307 (n + 1)

theorem P6850029905678512207.correct : P6850029905678512207.Spec := by
  intro n
  simp only [A128307, Nat.add_sub_cancel]

end A128307

/-! ## A128307.P18093561042080269381

`T(n-1,k-1)+2*(T(n-1,k)-T(n-2,k-1))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A128307.P18093561042080269381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n + 2 * (SequenceMachineLib.triUp a n - SequenceMachineLib.triUp2Left a n)

end

end A128307.P18093561042080269381

namespace A128307

/-- `T(n-1,k-1)+2*(T(n-1,k)-T(n-2,k-1))` -/
def P18093561042080269381.Spec : Prop :=
  ∀ n, P18093561042080269381.a n = A128307 (n + 1)

end A128307

/-! ## A128307.P14855012509754229938

`Δ[ceil(A089633(n)/2)]`
-/

namespace A128307.P14855012509754229938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A089633 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128307.P14855012509754229938

namespace A128307

/-- `Δ[ceil(A089633(n)/2)]` -/
def P14855012509754229938.Spec : Prop :=
  ∀ n, P14855012509754229938.a n = A128307 (n + 1)

end A128307

/-! ## A128307.P11673404109293246142

`floor(2^(abs(A004736(n+1)-2)-1))`
-/

namespace A128307.P11673404109293246142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ (|A004736 (n + 1) - 2| - 1 : ℤ)⌋

end

end A128307.P11673404109293246142

namespace A128307

/-- `floor(2^(abs(A004736(n+1)-2)-1))` -/
def P11673404109293246142.Spec : Prop :=
  ∀ n, P11673404109293246142.a n = A128307 (n + 1)

end A128307

/-! ## A128307.P1559859888636765053

`A034008(A025581(n))`
-/

namespace A128307.P1559859888636765053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A025581 n).toNat

end

end A128307.P1559859888636765053

namespace A128307

/-- `A034008(A025581(n))` -/
def P1559859888636765053.Spec : Prop :=
  ∀ n, P1559859888636765053.a n = A128307 (n + 1)

end A128307

/-! ## A128307.P4752145474206382045

`A034008(A004736(n+1)-1)`
-/

namespace A128307.P4752145474206382045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A004736 (n + 1) - 1).toNat

end

end A128307.P4752145474206382045

namespace A128307

/-- `A034008(A004736(n+1)-1)` -/
def P4752145474206382045.Spec : Prop :=
  ∀ n, P4752145474206382045.a n = A128307 (n + 1)

end A128307

/-! ## A128307.P3513235575824628809

`2*A228524(n+1)-A221876(n+1)`
-/

namespace A128307.P3513235575824628809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A228524 (n + 1) - A221876 (n + 1)

end

end A128307.P3513235575824628809

namespace A128307

/-- `2*A228524(n+1)-A221876(n+1)` -/
def P3513235575824628809.Spec : Prop :=
  ∀ n, P3513235575824628809.a n = A128307 (n + 1)

end A128307

/-! ## A128307.P781877609470425231

`gcd(Δ[A155038(n+1)], T(n-1,k-1))` with `a(0)=1`
-/

namespace A128307.P781877609470425231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155038 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (f1 (n + 1) - f1 n) ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ)

end

end A128307.P781877609470425231

namespace A128307

/-- `gcd(Δ[A155038(n+1)], T(n-1,k-1))` -/
def P781877609470425231.Spec : Prop :=
  ∀ n, (P781877609470425231.a n : ℤ) = A128307 (n + 1)

end A128307

/-! ## A128307.P15837832240532536773

`Δ[round((A043569(n+1)-1)/4)]`
-/

namespace A128307.P15837832240532536773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A043569 (n + 1) - 1 : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128307.P15837832240532536773

namespace A128307

/-- `Δ[round((A043569(n+1)-1)/4)]` -/
def P15837832240532536773.Spec : Prop :=
  ∀ n, P15837832240532536773.a n = A128307 (n + 1)

end A128307

/-! ## A128307.P6409099267980995819

`A057728(n+2)-A166065(n+1)/2`
-/

namespace A128307.P6409099267980995819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057728 (n + 2) : ℚ) - (A166065 (n + 1) : ℚ) / 2

end

end A128307.P6409099267980995819

namespace A128307

/-- `A057728(n+2)-A166065(n+1)/2` -/
def P6409099267980995819.Spec : Prop :=
  ∀ n, P6409099267980995819.a n = (A128307 (n + 1) : ℚ)

end A128307

/-! ## A128307.P7616737802436304135

`Δ[floor(A023758(n+2)/2)]`
-/

namespace A128307.P7616737802436304135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A023758 (n + 2) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128307.P7616737802436304135

namespace A128307

/-- `Δ[floor(A023758(n+2)/2)]` -/
def P7616737802436304135.Spec : Prop :=
  ∀ n, P7616737802436304135.a n = A128307 (n + 1)

end A128307

/-! ## A128307.P3242750939012463664

`A300717(A130321(n))`
-/

namespace A128307.P3242750939012463664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300717 (A130321 n).toNat

end

end A128307.P3242750939012463664

namespace A128307

/-- `A300717(A130321(n))` -/
def P3242750939012463664.Spec : Prop :=
  ∀ n, P3242750939012463664.a n = A128307 (n + 1)

end A128307

/-! ## A128307.P11690305292384965742

`A000010(A000010(A130321(n)))%A038207(n+1)`
-/

namespace A128307.P11690305292384965742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A000010 (A130321 n).toNat).toNat) (A038207 (n + 1))

end

end A128307.P11690305292384965742

namespace A128307

/-- `A000010(A000010(A130321(n)))%A038207(n+1)` -/
def P11690305292384965742.Spec : Prop :=
  ∀ n, P11690305292384965742.a n = A128307 (n + 1)

end A128307

/-! ## A128307.P16581137268446176728

`A007431(A130321(n))`
-/

namespace A128307.P16581137268446176728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 (A130321 n).toNat

end

end A128307.P16581137268446176728

namespace A128307

/-- `A007431(A130321(n))` -/
def P16581137268446176728.Spec : Prop :=
  ∀ n, P16581137268446176728.a n = A128307 (n + 1)

end A128307

/-! ## A128307.P1088550625314312299

`ceil(A140668(2^A025581(n))/4)`
-/

namespace A128307.P1088550625314312299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A140668 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025581 n : ℤ))).toNat : ℚ) / 4⌉

end

end A128307.P1088550625314312299

namespace A128307

/-- `ceil(A140668(2^A025581(n))/4)` -/
def P1088550625314312299.Spec : Prop :=
  ∀ n, P1088550625314312299.a n = A128307 (n + 1)

end A128307

/-! ## A128307.P8889339125036895146

`A003602(A130321(n)+2)-1`
-/

namespace A128307.P8889339125036895146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A130321 n + 2).toNat - 1

end

end A128307.P8889339125036895146

namespace A128307

/-- `A003602(A130321(n)+2)-1` -/
def P8889339125036895146.Spec : Prop :=
  ∀ n, P8889339125036895146.a n = A128307 (n + 1)

end A128307

/-! ## A128307.P179875325995931313

`A008624((A130330(n)-1)/2)`
-/

namespace A128307.P179875325995931313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (SequenceMachineLib.roundAway ((A130330 n - 1 : ℚ) / 2)).toNat

end

end A128307.P179875325995931313

namespace A128307

/-- `A008624((A130330(n)-1)/2)` -/
def P179875325995931313.Spec : Prop :=
  ∀ n, P179875325995931313.a n = A128307 (n + 1)

end A128307

/-!
# A128308: Binomial transform of A128307.

The programs for A128308, the canonical program `A128308.P17842185637218646687` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128308 has offset 1).

The definition of A128308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128308.P17842185637218646687

`(A156644(n)+A125170(n))/2`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A128308

/-- `(A156644(n)+A125170(n))/2` -/
def P17842185637218646687.Spec : Prop :=
  ∀ n, P17842185637218646687.a n = (A128308 (n + 1) : ℚ)

end A128308

/-! ## A128308.P13694698127158298581

`gcd(Δ[A125170(n)], A132013(n))`
-/

namespace A128308.P13694698127158298581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125170 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A132013 n)

end

end A128308.P13694698127158298581

namespace A128308

/-- `gcd(Δ[A125170(n)], A132013(n))` -/
def P13694698127158298581.Spec : Prop :=
  ∀ n, (P13694698127158298581.a n : ℤ) = A128308 (n + 1)

end A128308

/-! ## A128308.P2848464349614756716

`round((A125170(n)-Δ[A014473(n)])/2)`
-/

namespace A128308.P2848464349614756716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A125170 n - (f1 (n + 1) - f1 n) : ℚ) / 2)

end

end A128308.P2848464349614756716

namespace A128308

/-- `round((A125170(n)-Δ[A014473(n)])/2)` -/
def P2848464349614756716.Spec : Prop :=
  ∀ n, P2848464349614756716.a n = A128308 (n + 1)

end A128308

/-! ## A128308.P2429193292385284057

`(A156644(n)+A125170(n))*2^A008683(A057673(n))`
-/

namespace A128308.P2429193292385284057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156644 n + A125170 n : ℚ) * (2 : ℚ) ^ (A008683 (A057673 n).toNat : ℤ)

end

end A128308.P2429193292385284057

namespace A128308

/-- `(A156644(n)+A125170(n))*2^A008683(A057673(n))` -/
def P2429193292385284057.Spec : Prop :=
  ∀ n, P2429193292385284057.a n = (A128308 (n + 1) : ℚ)

end A128308

/-! ## A128308.P1923404374976271670

`A014682(A156644(n)+A125170(n))`
-/

namespace A128308.P1923404374976271670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A156644 n + A125170 n).toNat

end

end A128308.P1923404374976271670

namespace A128308

/-- `A014682(A156644(n)+A125170(n))` -/
def P1923404374976271670.Spec : Prop :=
  ∀ n, P1923404374976271670.a n = A128308 (n + 1)

end A128308

/-! ## A128308.P16708048941964177236

`A004525(A156644(n)+A125170(n))`
-/

namespace A128308.P16708048941964177236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A156644 n + A125170 n).toNat

end

end A128308.P16708048941964177236

namespace A128308

/-- `A004525(A156644(n)+A125170(n))` -/
def P16708048941964177236.Spec : Prop :=
  ∀ n, P16708048941964177236.a n = A128308 (n + 1)

end A128308

/-! ## A128308.P5393136412120076093

`A004526(A156644(n)+A125170(n))`
-/

namespace A128308.P5393136412120076093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A156644 n + A125170 n).toNat

end

end A128308.P5393136412120076093

namespace A128308

/-- `A004526(A156644(n)+A125170(n))` -/
def P5393136412120076093.Spec : Prop :=
  ∀ n, P5393136412120076093.a n = A128308 (n + 1)

end A128308

/-! ## A128308.P5068519887033196413

`A123108(A156644(n)+A125170(n))`
-/

namespace A128308.P5068519887033196413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A156644 n + A125170 n).toNat

end

end A128308.P5068519887033196413

namespace A128308

/-- `A123108(A156644(n)+A125170(n))` -/
def P5068519887033196413.Spec : Prop :=
  ∀ n, P5068519887033196413.a n = A128308 (n + 1)

end A128308

/-! ## A128308.P6578741052640097095

`A004525(A125170(n)-Δ[A014473(n)])`
-/

namespace A128308.P6578741052640097095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A125170 n - (f1 (n + 1) - f1 n)).toNat

end

end A128308.P6578741052640097095

namespace A128308

/-- `A004525(A125170(n)-Δ[A014473(n)])` -/
def P6578741052640097095.Spec : Prop :=
  ∀ n, P6578741052640097095.a n = A128308 (n + 1)

end A128308

/-! ## A128308.P1876373948545560819

`A026741(A125170(n)-Δ[A014473(n)])`
-/

namespace A128308.P1876373948545560819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A125170 n - (f1 (n + 1) - f1 n)).toNat

end

end A128308.P1876373948545560819

namespace A128308

/-- `A026741(A125170(n)-Δ[A014473(n)])` -/
def P1876373948545560819.Spec : Prop :=
  ∀ n, P1876373948545560819.a n = A128308 (n + 1)

end A128308

/-!
# A128309: a(n) = 2*A000069(n).

The programs for A128309, the canonical program `A128309.P14442768980274460626` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128309 has offset 1).

The definition of A128309 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000069(n+1)` (program `A128309.P14442768980274460626`, by `A128309.P14442768980274460626.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128309.P14442768980274460626

`2*A000069(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A128309

/-- `2*A000069(n+1)` -/
def P14442768980274460626.Spec : Prop :=
  ∀ n, P14442768980274460626.a n = A128309 (n + 1)

theorem P14442768980274460626.correct : P14442768980274460626.Spec := by
  intro n
  simp only [A128309, Nat.add_sub_cancel]

end A128309

/-! ## A128309.P8524936923422759359

`2*comp[xor(2*n, n)]`
-/

namespace A128309.P8524936923422759359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A128309.P8524936923422759359

namespace A128309

/-- `2*comp[xor(2*n, n)]` -/
def P8524936923422759359.Spec : Prop :=
  ∀ n, (P8524936923422759359.a n : ℤ) = A128309 (n + 1)

end A128309

/-! ## A128309.P17435467830859552836

`2*lt[-a(and(n, n-1)), 0]` with `a(0)=1`
-/

namespace A128309.P17435467830859552836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A128309.P17435467830859552836

namespace A128309

/-- `2*lt[-a(and(n, n-1)), 0]` -/
def P17435467830859552836.Spec : Prop :=
  ∀ n, (P17435467830859552836.a n : ℤ) = A128309 (n + 1)

end A128309

/-! ## A128309.P7921510112048988422

`2*(char[xor(2*n, n)]+2*n)`
-/

namespace A128309.P7921510112048988422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((if ∃ j, f1 j = n then 1 else 0) + 2 * n)

end

end A128309.P7921510112048988422

namespace A128309

/-- `2*(char[xor(2*n, n)]+2*n)` -/
def P7921510112048988422.Spec : Prop :=
  ∀ n, (P7921510112048988422.a n : ℤ) = A128309 (n + 1)

end A128309

/-! ## A128309.P12342092288192253833

`2*or(2*n, char[xor(n, 2*n)])`
-/

namespace A128309.P12342092288192253833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor (2 * n) (if ∃ j, f1 j = n then 1 else 0)

end

end A128309.P12342092288192253833

namespace A128309

/-- `2*or(2*n, char[xor(n, 2*n)])` -/
def P12342092288192253833.Spec : Prop :=
  ∀ n, (P12342092288192253833.a n : ℤ) = A128309 (n + 1)

end A128309

/-! ## A128309.P2753012525238529755

`2*xor(2*n, char[xor(n, 2*n)])`
-/

namespace A128309.P2753012525238529755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.xor (2 * n) (if ∃ j, f1 j = n then 1 else 0)

end

end A128309.P2753012525238529755

namespace A128309

/-- `2*xor(2*n, char[xor(n, 2*n)])` -/
def P2753012525238529755.Spec : Prop :=
  ∀ n, (P2753012525238529755.a n : ℤ) = A128309 (n + 1)

end A128309

/-! ## A128309.P2462852376980741567

`2*eq[-a(and(n, n-1)), -1]` with `a(0)=1`
-/

namespace A128309.P2462852376980741567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128309.P2462852376980741567

namespace A128309

/-- `2*eq[-a(and(n, n-1)), -1]` -/
def P2462852376980741567.Spec : Prop :=
  ∀ n, (P2462852376980741567.a n : ℤ) = A128309 (n + 1)

end A128309

/-! ## A128309.P4268033123214250962

`lt[-a(and(n, n-1)), (-1)^n]` with `a(0)=1`
-/

namespace A128309.P4268033123214250962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A128309.P4268033123214250962

namespace A128309

/-- `lt[-a(and(n, n-1)), (-1)^n]` -/
def P4268033123214250962.Spec : Prop :=
  ∀ n, (P4268033123214250962.a n : ℤ) = A128309 (n + 1)

end A128309

/-! ## A128309.P18072802818620267234

`2*lt[0, and(1, a(floor(n/2))+n)]` with `a(0)=0`
-/

namespace A128309.P18072802818620267234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Nat.land 1 (f2 ⌊(n : ℚ) / 2⌋.toNat + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A128309.P18072802818620267234

namespace A128309

/-- `2*lt[0, and(1, a(floor(n/2))+n)]` -/
def P18072802818620267234.Spec : Prop :=
  ∀ n, (P18072802818620267234.a n : ℤ) = A128309 (n + 1)

end A128309

/-! ## A128309.P9244322858031818049

`eq[0, 1-and(n+1, a(and(n, n-1)))]` with `a(0)=1`
-/

namespace A128309.P9244322858031818049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - Int.land (n + 1 : ℤ) (f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A128309.P9244322858031818049

namespace A128309

/-- `eq[0, 1-and(n+1, a(and(n, n-1)))]` -/
def P9244322858031818049.Spec : Prop :=
  ∀ n, (P9244322858031818049.a n : ℤ) = A128309 (n + 1)

end A128309

/-! ## A128309.P5636250716256147220

`eq[0, A254651(n)]`
-/

namespace A128309.P5636250716256147220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254651 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A128309.P5636250716256147220

namespace A128309

/-- `eq[0, A254651(n)]` -/
def P5636250716256147220.Spec : Prop :=
  ∀ n, (P5636250716256147220.a n : ℤ) = A128309 (n + 1)

end A128309

/-! ## A128309.P13016796811373447598

`eq[1, A254379(n)]`
-/

namespace A128309.P13016796811373447598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A128309.P13016796811373447598

namespace A128309

/-- `eq[1, A254379(n)]` -/
def P13016796811373447598.Spec : Prop :=
  ∀ n, (P13016796811373447598.a n : ℤ) = A128309 (n + 1)

end A128309

/-! ## A128309.P12920867610753259837

`eq[1, A316828(n)]`
-/

namespace A128309.P12920867610753259837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A128309.P12920867610753259837

namespace A128309

/-- `eq[1, A316828(n)]` -/
def P12920867610753259837.Spec : Prop :=
  ∀ n, (P12920867610753259837.a n : ℤ) = A128309 (n + 1)

end A128309

/-! ## A128309.P7213630197829630161

`A129771(n+1)-1`
-/

namespace A128309.P7213630197829630161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129771 (n + 1) - 1

end

end A128309.P7213630197829630161

namespace A128309

/-- `A129771(n+1)-1` -/
def P7213630197829630161.Spec : Prop :=
  ∀ n, P7213630197829630161.a n = A128309 (n + 1)

theorem P7213630197829630161.correct : P7213630197829630161.Spec := by
  intro n
  simp only [A128309, Nat.add_sub_cancel, A128309.P7213630197829630161.a, A128309.P14442768980274460626.a, A000069, A000069.P3917626109476666468.a, A129771, A129771.P17660305195438038504.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A128309

/-! ## A128309.P9791900213449754785

`xor(2, A125592(n+1))`
-/

namespace A128309.P9791900213449754785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A125592 (n + 1))

end

end A128309.P9791900213449754785

namespace A128309

/-- `xor(2, A125592(n+1))` -/
def P9791900213449754785.Spec : Prop :=
  ∀ n, P9791900213449754785.a n = A128309 (n + 1)

end A128309

/-! ## A128309.P17913287109526674999

`xor(3, A092246(n+1))`
-/

namespace A128309.P17913287109526674999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A092246 (n + 1))

end

end A128309.P17913287109526674999

namespace A128309

/-- `xor(3, A092246(n+1))` -/
def P17913287109526674999.Spec : Prop :=
  ∀ n, P17913287109526674999.a n = A128309 (n + 1)

end A128309

/-! ## A128309.P13337472465116549334

`filter[2*n, A254379(#)]`
-/

namespace A128309.P13337472465116549334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254379 (f1 j) = 1) n)

end

end A128309.P13337472465116549334

namespace A128309

/-- `filter[2*n, A254379(#)]` -/
def P13337472465116549334.Spec : Prop :=
  ∀ n, (P13337472465116549334.a n : ℤ) = A128309 (n + 1)

end A128309

/-! ## A128309.P16869622241970657627

`record[A268669(2*(n+1))]`
-/

namespace A128309.P16869622241970657627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268669 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128309.P16869622241970657627

namespace A128309

/-- `record[A268669(2*(n+1))]` -/
def P16869622241970657627.Spec : Prop :=
  ∀ n, P16869622241970657627.a n = A128309 (n + 1)

end A128309

/-! ## A128309.P595130646303250671

`2*(A181155(n+1)-1)`
-/

namespace A128309.P595130646303250671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A181155 (n + 1) - 1)

end

end A128309.P595130646303250671

namespace A128309

/-- `2*(A181155(n+1)-1)` -/
def P595130646303250671.Spec : Prop :=
  ∀ n, P595130646303250671.a n = A128309 (n + 1)

theorem P595130646303250671.correct : P595130646303250671.Spec := by
  intro n
  simp only [A128309, Nat.add_sub_cancel, A128309.P595130646303250671.a, A128309.P14442768980274460626.a, A000069, A000069.P3917626109476666468.a, A181155, A181155.P6532656100866929133.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A128309

/-!
# A128310: List of maximal breaks in generalized snooker.

The programs for A128310, there is no canonical definition to state claims against.
-/

/-! ## A128310.P8863565254216251731

`A056608(A011888(n)+2+n)+3*(n+1)`
-/

namespace A128310.P8863565254216251731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056608 (A011888 n + 2 + (n : ℤ)).toNat + (3 * (n + 1) : ℤ)

end

end A128310.P8863565254216251731

/-! ## A128310.P13671695472483474876

`A287517(n+3)-A006530(A198633(n+2))`
-/

namespace A128310.P13671695472483474876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287517 (n + 3) - A006530 (A198633 (n + 2)).toNat

end

end A128310.P13671695472483474876

/-! ## A128310.P4833820502621573714

`A232628(A008579(n))+A028310(3*n+4)`
-/

namespace A128310.P4833820502621573714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232628 (A008579 n).toNat + A028310 (3 * n + 4)

end

end A128310.P4833820502621573714

/-! ## A128310.P12140075889213391630

`A195019(2*n+3)-A105597(A179407(n+2))`
-/

namespace A128310.P12140075889213391630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195019 (2 * n + 3) - A105597 (A179407 (n + 2)).toNat

end

end A128310.P12140075889213391630

/-! ## A128310.P10418532256004248544

`A153671(3*n+4)+A000002(A109165(n))`
-/

namespace A128310.P10418532256004248544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153671 (3 * n + 4) + A000002 (A109165 n).toNat

end

end A128310.P10418532256004248544

/-!
# A128311: Remainder upon division of 2^(n-1)-1 by n.

The programs for A128311, the canonical program `A128311.P17126527137744134235` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128311 has offset 1).

The definition of A128311 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128311.P17126527137744134235

`(2^n-1)%(n+1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128311

/-- `(2^n-1)%(n+1)` -/
def P17126527137744134235.Spec : Prop :=
  ∀ n, P17126527137744134235.a n = A128311 (n + 1)

theorem P17126527137744134235.correct : P17126527137744134235.Spec := by
  intro n
  simp only [A128311, Nat.add_sub_cancel]

end A128311

/-! ## A128311.P2363597196357581480

`A062173(n+1)+A082495(n+1)-A015910(n+1)`
-/

namespace A128311.P2363597196357581480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062173 (n + 1) + (A082495 (n + 1) - A015910 (n + 1))

end

end A128311.P2363597196357581480

namespace A128311

/-- `A062173(n+1)+A082495(n+1)-A015910(n+1)` -/
def P2363597196357581480.Spec : Prop :=
  ∀ n, P2363597196357581480.a n = A128311 (n + 1)

end A128311

/-! ## A128311.P765057201532405544

`abs(A225883(n)%(n+1))`
-/

namespace A128311.P765057201532405544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A225883 n) (n + 1 : ℤ)|

end

end A128311.P765057201532405544

namespace A128311

/-- `abs(A225883(n)%(n+1))` -/
def P765057201532405544.Spec : Prop :=
  ∀ n, P765057201532405544.a n = A128311 (n + 1)

end A128311

/-! ## A128311.P11924799100436314859

`abs((A000918(n)+1)%(n+1))`
-/

namespace A128311.P11924799100436314859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A000918 n + 1) (n + 1 : ℤ)|

end

end A128311.P11924799100436314859

namespace A128311

/-- `abs((A000918(n)+1)%(n+1))` -/
def P11924799100436314859.Spec : Prop :=
  ∀ n, P11924799100436314859.a n = A128311 (n + 1)

end A128311

/-! ## A128311.P9835192260168315374

`abs((A000079(n)-1)%(n+1))`
-/

namespace A128311.P9835192260168315374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A000079 n - 1) (n + 1 : ℤ)|

end

end A128311.P9835192260168315374

namespace A128311

/-- `abs((A000079(n)-1)%(n+1))` -/
def P9835192260168315374.Spec : Prop :=
  ∀ n, P9835192260168315374.a n = A128311 (n + 1)

end A128311

/-! ## A128311.P11244812469084120124

`abs((A011782(n+1)-1)%(n+1))`
-/

namespace A128311.P11244812469084120124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A011782 (n + 1) - 1) (n + 1 : ℤ)|

end

end A128311.P11244812469084120124

namespace A128311

/-- `abs((A011782(n+1)-1)%(n+1))` -/
def P11244812469084120124.Spec : Prop :=
  ∀ n, P11244812469084120124.a n = A128311 (n + 1)

end A128311

/-! ## A128311.P10561483076933930892

`A006127(n)-A162213(n+1)`
-/

namespace A128311.P10561483076933930892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006127 n - A162213 (n + 1)

end

end A128311.P10561483076933930892

namespace A128311

/-- `A006127(n)-A162213(n+1)` -/
def P10561483076933930892.Spec : Prop :=
  ∀ n, P10561483076933930892.a n = A128311 (n + 1)

end A128311

/-! ## A128311.P11226633706675800107

`A002265(A134067(n)%(4*(n+1)))`
-/

namespace A128311.P11226633706675800107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.tmod (A134067 n) (4 * (n + 1) : ℤ)).toNat

end

end A128311.P11226633706675800107

namespace A128311

/-- `A002265(A134067(n)%(4*(n+1)))` -/
def P11226633706675800107.Spec : Prop :=
  ∀ n, P11226633706675800107.a n = A128311 (n + 1)

end A128311

/-! ## A128311.P17011699164281717554

`n-A036289(n)%(n+1)`
-/

namespace A128311.P17011699164281717554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A036289 n) (n + 1 : ℤ)

end

end A128311.P17011699164281717554

namespace A128311

/-- `n-A036289(n)%(n+1)` -/
def P17011699164281717554.Spec : Prop :=
  ∀ n, P17011699164281717554.a n = A128311 (n + 1)

end A128311

/-! ## A128311.P13059239824418929175

`A002262(A062173(n+1)+A000096(n))`
-/

namespace A128311.P13059239824418929175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A062173 (n + 1) + A000096 n).toNat

end

end A128311.P13059239824418929175

namespace A128311

/-- `A002262(A062173(n+1)+A000096(n))` -/
def P13059239824418929175.Spec : Prop :=
  ∀ n, P13059239824418929175.a n = A128311 (n + 1)

end A128311

/-!
# A128314: Triangle, A000012 * A128313.

The programs for A128314, there is no canonical definition to state claims against.
-/

/-! ## A128314.P670584844024937436

`A119328(n)-A018843(A090238(n))`
-/

namespace A128314.P670584844024937436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119328 n - A018843 (A090238 n).toNat

end

end A128314.P670584844024937436

/-! ## A128314.P6011565616329994126

`A226194(A256069(n+1))`
-/

namespace A128314.P6011565616329994126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226194 (A256069 (n + 1)).toNat

end

end A128314.P6011565616329994126

/-! ## A128314.P8561428352993095870

`A065551(n)-A058276(A199335(n))`
-/

namespace A128314.P8561428352993095870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065551 n - A058276 (A199335 n).toNat

end

end A128314.P8561428352993095870

/-! ## A128314.P12199739999487450905

`A238683(n)-A058276(A199335(n))`
-/

namespace A128314.P12199739999487450905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238683 n - A058276 (A199335 n).toNat

end

end A128314.P12199739999487450905

/-! ## A128314.P13279642684070522947

`A237996(n)-A077267(A370432(n))`
-/

namespace A128314.P13279642684070522947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237996 n - A077267 (A370432 n).toNat

end

end A128314.P13279642684070522947

/-!
# A128315: Inverse Moebius transform of signed A007318.

The programs for A128315, there is no canonical definition to state claims against.
-/

/-! ## A128315.P8985510514471019504

`A285136(A017006(n))+A130595(n)`
-/

namespace A128315.P8985510514471019504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285136 (A017006 n).toNat + A130595 n

end

end A128315.P8985510514471019504

/-! ## A128315.P15192464455912253072

`A170956(A086272(n+1))+A130595(n)`
-/

namespace A128315.P15192464455912253072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170956 (A086272 (n + 1)).toNat + A130595 n

end

end A128315.P15192464455912253072

/-! ## A128315.P17087812130906362229

`A130595(n)+A079978(A293204(3*n+1))`
-/

namespace A128315.P17087812130906362229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n + A079978 (A293204 (3 * n + 1)).toNat

end

end A128315.P17087812130906362229

/-! ## A128315.P10251372388753289802

`A341996(A356868(2*n+3))+A130595(n)`
-/

namespace A128315.P10251372388753289802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341996 (A356868 (2 * n + 3)).toNat + A130595 n

end

end A128315.P10251372388753289802

/-!
# A128316: Triangle read by rows: A000012 * A128315 as infinite lower triangular matrices.

The programs for A128316, there is no canonical definition to state claims against.
-/

/-! ## A128316.P15579218520870010675

`A128315(n+1)+T(n-1,k)` with `a(0)=1`
-/

namespace A128316.P15579218520870010675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A128315 (n + 1) + SequenceMachineLib.triUp a n

end

end A128316.P15579218520870010675

/-! ## A128316.P12179504413480607634

`Δ[A055396(A060543(n)*A267264(n+1))]+1`
-/

namespace A128316.P12179504413480607634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A060543 n * A267264 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A128316.P12179504413480607634

/-!
# A128318: G.f.: A(x) = 1+x*(1+2x*(1+3x*(...(1+n*x*(...)^2)^2...)^2)^2)^2.

The programs for A128318, there is no canonical definition to state claims against.
-/

/-! ## A128318.P4083757900404960808

`A128570(∑[n]+n)`
-/

namespace A128318.P4083757900404960808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128570 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A128318.P4083757900404960808

/-! ## A128318.P1987883494657487755

`gcd(A000038(n), A128570(A000096(n)))`
-/

namespace A128318.P1987883494657487755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A128570 (A000096 n).toNat)

end

end A128318.P1987883494657487755

/-! ## A128318.P6057757748826674474

`A007318(∑[n])*A128570(A000096(n))`
-/

namespace A128318.P6057757748826674474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A128570 (A000096 n).toNat

end

end A128318.P6057757748826674474

/-! ## A128318.P8852795287826975213

`A014963(20*n+10)*A128570(A000096(n))`
-/

namespace A128318.P8852795287826975213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (20 * n + 10) * A128570 (A000096 n).toNat

end

end A128318.P8852795287826975213

/-! ## A128318.P12723569241824450135

`A128570(A000096(n))/A014963(ceil(1/(n+1)))`
-/

namespace A128318.P12723569241824450135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128570 (A000096 n).toNat : ℚ) / (A014963 ⌈1 / (n + 1 : ℚ)⌉.toNat : ℚ)

end

end A128318.P12723569241824450135

/-!
# A128319: G.f.: A(x) = 1+x*(1+2x*(1+3x*(...(1+n*x*(...)^3)^3...)^3)^3)^3.

The programs for A128319, there is no canonical definition to state claims against.
-/

/-! ## A128319.P513263956015388986

`A272799(11*a(n-1)-10*a(n-2))` with `a(0)=1, a(1)=1, a(2)=6, a(3)=66`
-/

namespace A128319.P513263956015388986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 6, 66] fun n a =>
  A272799 (11 * a (n - 1) - 10 * a (n - 2)).toNat

end

end A128319.P513263956015388986

/-!
# A128321: Column 0 of triangle A128320.

The programs for A128321, the canonical program `A128321.P14333548036509809086` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128321 has offset 0).

The definition of A128321 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128321.P14333548036509809086

`∑{#}[floor(n/2), A000108(n-#)*A000108(#)*(#+1)!*C(n, 2*#)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A128321

/-- `∑{#}[floor(n/2), A000108(n-#)*A000108(#)*(#+1)!*C(n, 2*#)]` -/
def P14333548036509809086.Spec : Prop :=
  ∀ n, P14333548036509809086.a n = A128321 n

theorem P14333548036509809086.correct : P14333548036509809086.Spec := by
  intro n
  simp only [A128321]

end A128321

/-! ## A128321.P2568695277232737542

`A128320(∑[n])`
-/

namespace A128321.P2568695277232737542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128320 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128321.P2568695277232737542

namespace A128321

/-- `A128320(∑[n])` -/
def P2568695277232737542.Spec : Prop :=
  ∀ n, P2568695277232737542.a n = A128321 n

end A128321

/-! ## A128321.P7762049947480586246

`and(-1, A128320(A000217(n)))`
-/

namespace A128321.P7762049947480586246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A128320 (A000217 n).toNat)

end

end A128321.P7762049947480586246

namespace A128321

/-- `and(-1, A128320(A000217(n)))` -/
def P7762049947480586246.Spec : Prop :=
  ∀ n, P7762049947480586246.a n = A128321 n

end A128321

/-! ## A128321.P11190272965377934473

`A128320(A000217(n))+A000035(2*n)`
-/

namespace A128321.P11190272965377934473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128320 (A000217 n).toNat + A000035 (2 * n)

end

end A128321.P11190272965377934473

namespace A128321

/-- `A128320(A000217(n))+A000035(2*n)` -/
def P11190272965377934473.Spec : Prop :=
  ∀ n, P11190272965377934473.a n = A128321 n

end A128321

/-! ## A128321.P3070055682874081467

`A128320(A000217(n))%A001348(n+1)`
-/

namespace A128321.P3070055682874081467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128320 (A000217 n).toNat) (A001348 (n + 1))

end

end A128321.P3070055682874081467

namespace A128321

/-- `A128320(A000217(n))%A001348(n+1)` -/
def P3070055682874081467.Spec : Prop :=
  ∀ n, P3070055682874081467.a n = A128321 n

end A128321

/-! ## A128321.P113939838712378679

`A128320(A000217(n))*A327832(2*n+5)`
-/

namespace A128321.P113939838712378679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128320 (A000217 n).toNat * A327832 (2 * n + 5)

end

end A128321.P113939838712378679

namespace A128321

/-- `A128320(A000217(n))*A327832(2*n+5)` -/
def P113939838712378679.Spec : Prop :=
  ∀ n, P113939838712378679.a n = A128321 n

end A128321

/-!
# A128322: Column 1 of triangle A128320; a(n) = A128321(n) + 2n*A128321(n-1), where A128321 is column 0 of triangle A128320.

The programs for A128322, there is no canonical definition to state claims against.
-/

/-! ## A128322.P14227168296817718760

`record[A128320(comp[∑[n]])]`
-/

namespace A128322.P14227168296817718760
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128320 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128322.P14227168296817718760

/-! ## A128322.P1880542563287568276

`A128320(∑[n+1]+1)`
-/

namespace A128322.P1880542563287568276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128320 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A128322.P1880542563287568276

/-! ## A128322.P12430189248091565423

`record[A123110(n)*A128320(n)]`
-/

namespace A128322.P12430189248091565423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123110 n * A128320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128322.P12430189248091565423

/-! ## A128322.P16618304562649518230

`record[gcd(A098825(n), A128320(n))]`
-/

namespace A128322.P16618304562649518230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098825 n) (A128320 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128322.P16618304562649518230

/-! ## A128322.P18429246915782616955

`record[A128320(n)/A128137(n+1)]`
-/

namespace A128322.P18429246915782616955
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128320 n : ℚ) / (A128137 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128322.P18429246915782616955

/-!
# A128323: Column 2 of triangle A128320.

The programs for A128323, there is no canonical definition to state claims against.
-/

/-! ## A128323.P12445991831386105693

`A128320(∑[n+2]+3)`
-/

namespace A128323.P12445991831386105693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128320 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A128323.P12445991831386105693

/-! ## A128323.P13435389768595089204

`record[A128320(gcd(n, A059341(n)))]`
-/

namespace A128323.P13435389768595089204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128320 (Int.gcd (n : ℤ) (A059341 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128323.P13435389768595089204

/-! ## A128323.P11947011177896411016

`record[gcd(A128306(n+1), A128320(n+3))]`
-/

namespace A128323.P11947011177896411016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128306 (n + 1)) (A128320 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128323.P11947011177896411016

/-! ## A128323.P15084838950151142332

`record[gcd(A128307(n+1), A128320(n+4))]`
-/

namespace A128323.P15084838950151142332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128307 (n + 1)) (A128320 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128323.P15084838950151142332

/-!
# A128324: Row sums of triangle A128320.

The programs for A128324, there is no canonical definition to state claims against.
-/

/-! ## A128324.P6678592324209000926

`A004396(A030902(n+1)+A002262(n))`
-/

namespace A128324.P6678592324209000926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A030902 (n + 1) + A002262 n).toNat

end

end A128324.P6678592324209000926

/-! ## A128324.P13963353085184072535

`A049093(A049115(n+1)+A000142(n+1))`
-/

namespace A128324.P13963353085184072535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049093 (A049115 (n + 1) + A000142 (n + 1)).toNat

end

end A128324.P13963353085184072535

/-!
# A128325: Rectangular table, read by antidiagonals, where the g.f.s of row n, R(x,n), satisfy: R(x,n+1) = R(G(x),n) for n>=0 and x*R(x,0) = G(x) = x + x*G(G(x)) is the g.f. of A030266.

The programs for A128325, there is no canonical definition to state claims against.
-/

/-! ## A128325.P691515996591653697

`A335235(A336707(n)+1-A184348(n+1))`
-/

namespace A128325.P691515996591653697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335235 (A336707 n + (1 - A184348 (n + 1))).toNat

end

end A128325.P691515996591653697

/-! ## A128325.P3641342727644697823

`A160755(A111528(n)-char[18])`
-/

namespace A128325.P3641342727644697823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (A111528 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A128325.P3641342727644697823

/-! ## A128325.P3303363623823829470

`A160755(A089867(A111528(n)))`
-/

namespace A128325.P3303363623823829470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (A089867 (A111528 n).toNat).toNat

end

end A128325.P3303363623823829470

/-! ## A128325.P3331575483729640020

`A111528(n)-A004216(A156953(n))`
-/

namespace A128325.P3331575483729640020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111528 n - A004216 (A156953 n).toNat

end

end A128325.P3331575483729640020

/-! ## A128325.P5009764924693961747

`A335235(A184348(n+1)*A336707(n))`
-/

namespace A128325.P5009764924693961747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335235 (A184348 (n + 1) * A336707 n).toNat

end

end A128325.P5009764924693961747

/-!
# A128326: G.f.: A(x) = 1 + G(G(G(x))), where G(x) = x + x*G(G(x)) is the g.f. of A030266.

The programs for A128326, there is no canonical definition to state claims against.
-/

/-! ## A128326.P16655344207915778748

`A128325(∑[n+2]-1)`
-/

namespace A128326.P16655344207915778748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128325 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A128326.P16655344207915778748

/-! ## A128326.P14288507633146858745

`A128325(A034856(n+1))+char[9]`
-/

namespace A128326.P14288507633146858745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128325 (A034856 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A128326.P14288507633146858745

/-! ## A128326.P10759526563934028513

`A007318(∑[n])*A128325(A034856(n+1))`
-/

namespace A128326.P10759526563934028513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A128325 (A034856 (n + 1)).toNat

end

end A128326.P10759526563934028513

/-! ## A128326.P11902778772056535202

`A353481(n+1)+A128325(A034856(n+1))`
-/

namespace A128326.P11902778772056535202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353481 (n + 1) + A128325 (A034856 (n + 1)).toNat

end

end A128326.P11902778772056535202

/-! ## A128326.P15793807779737177397

`A128325(A034856(n+1))*A184348(n+1)`
-/

namespace A128326.P15793807779737177397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128325 (A034856 (n + 1)).toNat * A184348 (n + 1)

end

end A128326.P15793807779737177397

/-!
# A128327: Row 2 of table A128325.

The programs for A128327, there is no canonical definition to state claims against.
-/

/-! ## A128327.P8014424264177028361

`A128325(∑[n+3])`
-/

namespace A128327.P8014424264177028361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128325 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128327.P8014424264177028361

/-! ## A128327.P16993644304307432584

`A128325(A141214(n))+char[8]`
-/

namespace A128327.P16993644304307432584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128325 (A141214 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A128327.P16993644304307432584

/-! ## A128327.P9796292291482835826

`A198318(n)+A128325(A141214(n))`
-/

namespace A128327.P9796292291482835826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198318 n + A128325 (A141214 n).toNat

end

end A128327.P9796292291482835826

/-! ## A128327.P16618672211805614265

`or(A035930(n), A128325(A141214(n)))`
-/

namespace A128327.P16618672211805614265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035930 n) (A128325 (A141214 n).toNat)

end

end A128327.P16618672211805614265

/-!
# A128328: Row 3 of table A128325.

The programs for A128328, there is no canonical definition to state claims against.
-/

/-! ## A128328.P4285281332742277471

`A128325(∑[n+3]+n+3)`
-/

namespace A128328.P4285281332742277471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128325 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A128328.P4285281332742277471

/-! ## A128328.P15419410120608838936

`A313477(A337060(n)-1)`
-/

namespace A128328.P15419410120608838936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313477 (A337060 n - 1).toNat

end

end A128328.P15419410120608838936

/-!
# A128329: Main diagonal of table A128325.

The programs for A128329, there is no canonical definition to state claims against.
-/

/-! ## A128329.P6371469176191752774

`A128325(∑[4*n])`
-/

namespace A128329.P6371469176191752774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128325 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128329.P6371469176191752774

/-! ## A128329.P5367216696168137337

`lcm((n+1)/∏{p}[n+1, #], A128325(A106232(n+1)))`
-/

namespace A128329.P5367216696168137337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A128325 (A106232 (n + 1)).toNat)

end

end A128329.P5367216696168137337

/-!
# A128330: a(1)=1. a(n) = number of positive numbers <= n that are coprime to the product of the first n-1 terms of this sequence.

The programs for A128330, there is no canonical definition to state claims against.
-/

/-! ## A128330.P4942441321650398092

`A036234(n+1)-A004216(A288815(n+1))`
-/

namespace A128330.P4942441321650398092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) - A004216 (A288815 (n + 1)).toNat

end

end A128330.P4942441321650398092

/-!
# A128334: Binomial transform of A000594.

The programs for A128334, there is no canonical definition to state claims against.
-/

/-! ## A128334.P4208609529578157295

`∑{#}[n, C(n, #)*A000594(#+1)]`
-/

namespace A128334.P4208609529578157295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A000594 (k + 1)

end

end A128334.P4208609529578157295

/-!
# A128335: Numbers k such that (4^k + 5^k)/9 is prime.

The programs for A128335, there is no canonical definition to state claims against.
-/

/-! ## A128335.P15478752831787745847

`A256103(∑[ceil(A128437(n+3)/6)])`
-/

namespace A128335.P15478752831787745847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A128437 (n + 3) : ℚ) / 6⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256103 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A128335.P15478752831787745847

/-! ## A128335.P17798086367745658538

`A324697(A007040(n+1)+A000079(n))`
-/

namespace A128335.P17798086367745658538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324697 (A007040 (n + 1) + A000079 n).toNat

end

end A128335.P17798086367745658538

/-!
# A128336: Numbers k such that (6^k + 5^k)/11 is prime.

The programs for A128336, there is no canonical definition to state claims against.
-/

/-! ## A128336.P18231967381816443630

`A138980(A239543(n+1))`
-/

namespace A128336.P18231967381816443630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138980 (A239543 (n + 1)).toNat

end

end A128336.P18231967381816443630

/-!
# A128338: Numbers k such that (8^k + 5^k)/13 is prime.

The programs for A128338, there is no canonical definition to state claims against.
-/

/-! ## A128338.P6209643643689042352

`A176182(A390225(n+1))`
-/

namespace A128338.P6209643643689042352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176182 (A390225 (n + 1)).toNat

end

end A128338.P6209643643689042352

/-!
# A128339: Numbers k such that (9^k + 5^k)/14 is prime.

The programs for A128339, there is no canonical definition to state claims against.
-/

/-! ## A128339.P11462999634241522658

`A020612(ceil((n+2)²/5))`
-/

namespace A128339.P11462999634241522658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020612 ⌈((n + 2) ^ 2 : ℚ) / 5⌉.toNat

end

end A128339.P11462999634241522658

/-! ## A128339.P18299532817811008599

`A162779(A018106(n))`
-/

namespace A128339.P18299532817811008599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162779 (A018106 n).toNat

end

end A128339.P18299532817811008599

/-!
# A128341: Numbers k such that (12^k + 5^k)/17 is prime.

The programs for A128341, there is no canonical definition to state claims against.
-/

/-! ## A128341.P5865038254284510302

`A062252(A000073(comp[∑[n]])+1)`
-/

namespace A128341.P5865038254284510302
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062252 (A000073 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1).toNat

end

end A128341.P5865038254284510302

/-!
# A128344: Numbers k such that (7^k - 5^k)/2 is prime.

The programs for A128344, there is no canonical definition to state claims against.
-/

/-! ## A128344.P9318752408461866939

`record[A006530(C(4*n, gcd(15, n))+6)]`
-/

namespace A128344.P9318752408461866939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.choose (4 * n) (Nat.gcd 15 n) + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128344.P9318752408461866939

/-!
# A128346: Numbers k such that (9^k - 5^k)/4 is prime.

The programs for A128346, there is no canonical definition to state claims against.
-/

/-! ## A128346.P6016181637376244578

`A205680(A232067(n+1))`
-/

namespace A128346.P6016181637376244578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205680 (A232067 (n + 1)).toNat

end

end A128346.P6016181637376244578

/-!
# A128347: Numbers k such that (11^k - 5^k)/6 is prime.

The programs for A128347, there is no canonical definition to state claims against.
-/

/-! ## A128347.P2885137638860510371

`A137922(A281486(n+2))`
-/

namespace A128347.P2885137638860510371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137922 (A281486 (n + 2)).toNat

end

end A128347.P2885137638860510371

/-!
# A128348: Numbers k such that (12^k - 5^k)/7 is prime.

The programs for A128348, there is no canonical definition to state claims against.
-/

/-! ## A128348.P7185870634370808556

`p?[A058959(∑[A040001(n)])]`
-/

namespace A128348.P7185870634370808556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058959 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128348.P7185870634370808556

/-! ## A128348.P11494566901251558065

`p?[A058959(A126332(n+1)+1)]`
-/

namespace A128348.P11494566901251558065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058959 (A126332 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128348.P11494566901251558065

/-!
# A128349: Numbers k such that (13^k - 5^k)/8 is prime.

The programs for A128349, there is no canonical definition to state claims against.
-/

/-! ## A128349.P18161696368599798533

`A192281(A296552(n+2))`
-/

namespace A128349.P18161696368599798533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192281 (A296552 (n + 2)).toNat

end

end A128349.P18161696368599798533

/-!
# A128351: Numbers k such that (16^k - 5^k)/11 is prime.

The programs for A128351, there is no canonical definition to state claims against.
-/

/-! ## A128351.P11788675578431154298

`A215801(A215819(n+1)+A011371(n))`
-/

namespace A128351.P11788675578431154298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215801 (A215819 (n + 1) + A011371 n).toNat

end

end A128351.P11788675578431154298

/-!
# A128352: Numbers k such that (17^k - 5^k)/12 is prime.

The programs for A128352, there is no canonical definition to state claims against.
-/

/-! ## A128352.P5654180421687393890

`A368277(A217354(n+1))`
-/

namespace A128352.P5654180421687393890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368277 (A217354 (n + 1)).toNat

end

end A128352.P5654180421687393890

/-!
# A128353: Numbers k such that (18^k - 5^k)/13 is prime.

The programs for A128353, there is no canonical definition to state claims against.
-/

/-! ## A128353.P8159690684524644447

`A341832(A341813(n+1)²)+A341817(n+1)`
-/

namespace A128353.P8159690684524644447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341832 (A341813 (n + 1) ^ 2).toNat + A341817 (n + 1)

end

end A128353.P8159690684524644447

/-!
# A128354: Numbers k such that (19^k - 5^k)/14 is prime.

The programs for A128354, there is no canonical definition to state claims against.
-/

/-! ## A128354.P17328875465137936060

`A076310(A161633(n+1))+1`
-/

namespace A128354.P17328875465137936060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076310 (A161633 (n + 1)).toNat + 1

end

end A128354.P17328875465137936060

/-!
# A128356: Least number k > 1 (that is not the power of prime p) such that k divides (p+1)^k-1, where p = prime(n).

The programs for A128356, there is no canonical definition to state claims against.
-/

/-! ## A128356.P1601818909424446036

`p?[xor(1, n)+1]*A128357(n+1)`
-/

namespace A128356.P1601818909424446036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) * A128357 (n + 1)

end

end A128356.P1601818909424446036

/-! ## A128356.P4152822947472708136

`Δ[A007504(n)]*A128357(n+1)`
-/

namespace A128356.P4152822947472708136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A128357 (n + 1)

end

end A128356.P4152822947472708136

/-! ## A128356.P6818933346481821834

`A000040(n+1)*A128357(n+1)`
-/

namespace A128356.P6818933346481821834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A128357 (n + 1)

end

end A128356.P6818933346481821834

/-! ## A128356.P16259620465971574504

`A049551(n+1)*A128357(n+1)`
-/

namespace A128356.P16259620465971574504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1) * A128357 (n + 1)

end

end A128356.P16259620465971574504

/-! ## A128356.P7691592260363944600

`A049569(n+1)*A128357(n+1)`
-/

namespace A128356.P7691592260363944600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049569 (n + 1) * A128357 (n + 1)

end

end A128356.P7691592260363944600

/-!
# A128357: Quotients A128356(n)/prime(n).

The programs for A128357, there is no canonical definition to state claims against.
-/

/-! ## A128357.P5511900370173341861

`A128356(n+1)/A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A128357.P5511900370173341861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128356 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A128357.P5511900370173341861

/-! ## A128357.P14798515806383619587

`A128356(n+1)/Δ[A007504(n)]`
-/

namespace A128357.P14798515806383619587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128356 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A128357.P14798515806383619587

/-! ## A128357.P12631047736050013255

`A128356(n+1)/A049551(n+1)`
-/

namespace A128357.P12631047736050013255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128356 (n + 1) : ℚ) / (A049551 (n + 1) : ℚ)

end

end A128357.P12631047736050013255

/-! ## A128357.P8034825675944086163

`A128356(n+1)/A049569(n+1)`
-/

namespace A128357.P8034825675944086163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128356 (n + 1) : ℚ) / (A049569 (n + 1) : ℚ)

end

end A128357.P8034825675944086163

/-! ## A128357.P11239805517372992610

`A128356(n+1)/A049585(n+1)`
-/

namespace A128357.P11239805517372992610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128356 (n + 1) : ℚ) / (A049585 (n + 1) : ℚ)

end

end A128357.P11239805517372992610

/-!
# A128359: A007376(8n+5).

The programs for A128359, there is no canonical definition to state claims against.
-/

/-! ## A128359.P10501766375432026171

`A007376(8*n+5)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A128359.P10501766375432026171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (8 * n + 5)

end

end A128359.P10501766375432026171

/-! ## A128359.P10350513090047567524

`dr(A007376(record[lcm(4, n+1)+1]))`
-/

namespace A128359.P10350513090047567524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)))

end

end A128359.P10350513090047567524

/-! ## A128359.P12627218683961365409

`A007376(A004770(n+1))%10`
-/

namespace A128359.P12627218683961365409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (A004770 (n + 1)).toNat) 10

end

end A128359.P12627218683961365409

/-! ## A128359.P10444626712933985859

`A127414(Δ[n²])`
-/

namespace A128359.P10444626712933985859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127414 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A128359.P10444626712933985859

/-! ## A128359.P14788588792805109156

`dr(A127414(2*n+1))`
-/

namespace A128359.P14788588792805109156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A127414 (2 * n + 1))

end

end A128359.P14788588792805109156

/-! ## A128359.P17673600987949060325

`dr(A007376(A016813(Δ[n²])))`
-/

namespace A128359.P17673600987949060325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A016813 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat)

end

end A128359.P17673600987949060325

/-! ## A128359.P7497598254331962679

`A127050(4*n+2)`
-/

namespace A128359.P7497598254331962679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127050 (4 * n + 2)

end

end A128359.P7497598254331962679

/-! ## A128359.P16109801944266610452

`A033307(8*n+4)`
-/

namespace A128359.P16109801944266610452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (8 * n + 4)

end

end A128359.P16109801944266610452

/-! ## A128359.P5475791049631271833

`dr(A033307(Δ[(2*n)²]))`
-/

namespace A128359.P5475791049631271833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A033307 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A128359.P5475791049631271833

/-! ## A128359.P5657382174161540910

`A033307(Δ[(2*n)²])*A057427(or(4, n)-2)`
-/

namespace A128359.P5657382174161540910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A057427 (Nat.lor 4 n - 2)

end

end A128359.P5657382174161540910

/-! ## A128359.P10333752448644214353

`A136414(8*n+4)%10`
-/

namespace A128359.P10333752448644214353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136414 (8 * n + 4)) 10

end

end A128359.P10333752448644214353

/-! ## A128359.P10656290272680366402

`A108202(2*(8*n+6)-2)`
-/

namespace A128359.P10656290272680366402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (2 * (8 * n + 6) - 2)

end

end A128359.P10656290272680366402

/-! ## A128359.P11221236939228335222

`A108712(A106839(n)-2)`
-/

namespace A128359.P11221236939228335222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A106839 n - 2).toNat

end

end A128359.P11221236939228335222

/-! ## A128359.P17028569034350896222

`A108712(A113770(n+1)-1)`
-/

namespace A128359.P17028569034350896222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A113770 (n + 1) - 1).toNat

end

end A128359.P17028569034350896222

/-!
# A128361: a(n) = least k such that the remainder when 21^k is divided by k is n.

The programs for A128361, there is no canonical definition to state claims against.
-/

/-! ## A128361.P2430198311394912709

`A061581(A299399(n))+A008575(n+1)`
-/

namespace A128361.P2430198311394912709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061581 (A299399 n).toNat + A008575 (n + 1)

end

end A128361.P2430198311394912709

/-!
# A128363: a(n) = least k such that the remainder when 23^k is divided by k is n.

The programs for A128363, there is no canonical definition to state claims against.
-/

/-! ## A128363.P7026109279661336358

`A081715(a(n-1))-1` with `a(0)=2, a(1)=3, a(2)=5`
-/

namespace A128363.P7026109279661336358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5] fun n a =>
  A081715 (a (n - 1)).toNat - 1

end

end A128363.P7026109279661336358

/-!
# A128374: Emirps starting and ending with composite digit 9.

The programs for A128374, there is no canonical definition to state claims against.
-/

/-! ## A128374.P17413965468684527762

`∩[A006567(n+1), A062335(n+1)]`
-/

namespace A128374.P17413965468684527762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128374.P17413965468684527762

/-! ## A128374.P10255845197253169444

`∩[A062335(n+1), A000040(A156793(n+1))]`
-/

namespace A128374.P10255845197253169444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A156793 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128374.P10255845197253169444

/-!
# A128375: Palindromic primes that start and end with 9.

The programs for A128375, there is no canonical definition to state claims against.
-/

/-! ## A128375.P7189202710537980232

`∩[A002385(n+1), A043044(n+1)]`
-/

namespace A128375.P7189202710537980232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128375.P7189202710537980232

/-! ## A128375.P14196839659304352934

`∩[A043044(n+1), A072299(n+1)]`
-/

namespace A128375.P14196839659304352934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128375.P14196839659304352934

/-! ## A128375.P11775703652164141531

`∩[A043044(n+1), A324989(n+1)]`
-/

namespace A128375.P11775703652164141531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128375.P11775703652164141531

/-! ## A128375.P5383183250530151002

`∩[A043044(n+1), A327325(n+1)]`
-/

namespace A128375.P5383183250530151002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128375.P5383183250530151002

/-! ## A128375.P2065345625951411885

`∩[A043044(n+1), A340252(n+1)]`
-/

namespace A128375.P2065345625951411885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128375.P2065345625951411885

/-! ## A128375.P9907068324232455391

`∩[A043044(n+1), A169829(n+1)]`
-/

namespace A128375.P9907068324232455391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128375.P9907068324232455391

/-! ## A128375.P9278764083755146479

`∩[A043044(n+1), A232183(n+1)]`
-/

namespace A128375.P9278764083755146479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128375.P9278764083755146479

/-! ## A128375.P13603714099832473913

`∩[A043044(n+1), A350836(n+1)]`
-/

namespace A128375.P13603714099832473913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128375.P13603714099832473913

/-! ## A128375.P6211944601102142918

`∩[A043044(n+1), A069217(n+1)]`
-/

namespace A128375.P6211944601102142918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128375.P6211944601102142918

/-!
# A128376: Palindromic primes with only composite digits (i.e.,4,6,8,9).

The programs for A128376, there is no canonical definition to state claims against.
-/

/-! ## A128376.P3800397862646061678

`∩[A002385(n+1), A051416(n+1)]`
-/

namespace A128376.P3800397862646061678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128376.P3800397862646061678

/-! ## A128376.P11534396550224555936

`∩[A043044(n+1), A051416(n+1)]`
-/

namespace A128376.P11534396550224555936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128376.P11534396550224555936

/-! ## A128376.P5713611999427325381

`∩[A051416(n+1), A062687(n+1)]`
-/

namespace A128376.P5713611999427325381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128376.P5713611999427325381

/-! ## A128376.P3828896639260689214

`∩[A051416(n+1), A083137(n+1)]`
-/

namespace A128376.P3828896639260689214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128376.P3828896639260689214

/-! ## A128376.P18243363563290856443

`∩[A051416(n+1), A327325(n+1)]`
-/

namespace A128376.P18243363563290856443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128376.P18243363563290856443

/-!
# A128377: Inverse binomial transform of A000594 (assuming offset 0 in both sequences).

The programs for A128377, there is no canonical definition to state claims against.
-/

/-! ## A128377.P7997780817785498948

`∑{#}[n, (-1)^(n-#)*C(n, #)*A000594(#+1)]`
-/

namespace A128377.P7997780817785498948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A000594 (k + 1) : ℚ)

end

end A128377.P7997780817785498948

/-!
# A128378: Partial sums of A128379.

The programs for A128378, there is no canonical definition to state claims against.
-/

/-! ## A128378.P13694438022797667628

`∑[A128379(n+1)]`
-/

namespace A128378.P13694438022797667628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128378.P13694438022797667628

/-! ## A128378.P9302718567817198054

`A128379(n+1)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A128378.P9302718567817198054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A128379 (n + 1) + a (A028310 n - 1).toNat

end

end A128378.P9302718567817198054

/-! ## A128378.P6593111067478588364

`A128379(A087156(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A128378.P6593111067478588364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A128379 (A087156 (n + 1)).toNat + a (n - 1)

end

end A128378.P6593111067478588364

/-! ## A128378.P12014092711138732745

`a(n-1)+A128379(n+1)+A000007(n)` with `a(0)=1`
-/

namespace A128378.P12014092711138732745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A128379 (n + 1) + A000007 n)

end

end A128378.P12014092711138732745

/-! ## A128378.P17287375801389705505

`a(n-1)+A128379(n+1)%A128376(n+1)` with `a(0)=1`
-/

namespace A128378.P17287375801389705505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A128379 (n + 1)) (A128376 (n + 1))

end

end A128378.P17287375801389705505

/-!
# A128379: A000012^23 * A000594.

The programs for A128379, there is no canonical definition to state claims against.
-/

/-! ## A128379.P4967316150770401664

`Δ[A128378(A000038(n)+n)]`
-/

namespace A128379.P4967316150770401664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128378 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128379.P4967316150770401664

/-! ## A128379.P8747820021746607657

`Δ[A128378(or(n, A000038(n)))]`
-/

namespace A128379.P8747820021746607657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128378 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128379.P8747820021746607657

/-! ## A128379.P3875957168530937301

`Δ[A128378(A002260(∑[n+3]))]`
-/

namespace A128379.P3875957168530937301
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128378 (A002260 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128379.P3875957168530937301

/-! ## A128379.P16379408900982167290

`Δ[A128378(A185727(A008458(n)))]`
-/

namespace A128379.P16379408900982167290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128378 (A185727 (A008458 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128379.P16379408900982167290

/-! ## A128379.P6797095136090769559

`Δ[A128378(A028310(n))+A040000(n)]`
-/

namespace A128379.P6797095136090769559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128378 (A028310 n).toNat + A040000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128379.P6797095136090769559

/-!
# A128385: a(n) = denominator of r(n): r(n) is such that the continued fraction (of rational terms) [r(1);r(2),...,r(n)] = b(n) for every positive integer n, where b(1) = 1 and b(n+1) = 1 + 1/b(n)^2 for.every positive integer n.

The programs for A128385, there is no canonical definition to state claims against.
-/

/-! ## A128385.P13932357845265695029

`or(1, ∏[(n*(n*(n-5)+5)²)!])`
-/

namespace A128385.P13932357845265695029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n : ℤ) * ((n : ℤ) * ((n : ℤ) - 5) + 5) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A128385.P13932357845265695029

/-!
# A128386: Expansion of c(3*x^2)/(1-x*c(3*x^2)), c(x) the g.f. of A000108.

The programs for A128386, the canonical program `A128386.P13490791713065406224` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128386 has offset 0).

The definition of A128386 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128386.P271187737721612897

`∑{#}[n, 3^#*A120730(C(n+1, 2)+n-#)]`
-/

namespace A128386.P271187737721612897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (3 ^ k : ℤ) * A120730 ((Nat.choose (n + 1) 2 : ℤ) + ((n : ℤ) - (k : ℤ))).toNat

end

end A128386.P271187737721612897

namespace A128386

/-- `∑{#}[n, 3^#*A120730(C(n+1, 2)+n-#)]` -/
def P271187737721612897.Spec : Prop :=
  ∀ n, P271187737721612897.a n = A128386 n

end A128386

/-! ## A128386.P13490791713065406224

`∑{#}[floor(n/2), C(n, n-#)*(n-2*#+1)*3^#/(n-#+1)]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128386

/-- `∑{#}[floor(n/2), C(n, n-#)*(n-2*#+1)*3^#/(n-#+1)]` -/
def P13490791713065406224.Spec : Prop :=
  ∀ n, P13490791713065406224.a n = (A128386 n : ℚ)

end A128386

/-! ## A128386.P14557203554727534345

`∑{#}[floor(n/2), A009766(C(n-#+1, 2)+#)*3^#]`
-/

namespace A128386.P14557203554727534345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A009766 (Nat.choose ((n : ℤ) - (k : ℤ) + 1).toNat 2 + k) * (3 ^ k : ℤ)

end

end A128386.P14557203554727534345

namespace A128386

/-- `∑{#}[floor(n/2), A009766(C(n-#+1, 2)+#)*3^#]` -/
def P14557203554727534345.Spec : Prop :=
  ∀ n, P14557203554727534345.a n = A128386 n

end A128386

/-! ## A128386.P4279232347465908764

`A035610(ceil(n/2))/4^(n%2)`
-/

namespace A128386.P4279232347465908764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035610 ⌈(n : ℚ) / 2⌉.toNat : ℚ) / (4 ^ (n % 2) : ℚ)

end

end A128386.P4279232347465908764

namespace A128386

/-- `A035610(ceil(n/2))/4^(n%2)` -/
def P4279232347465908764.Spec : Prop :=
  ∀ n, P4279232347465908764.a n = (A128386 n : ℚ)

end A128386

/-! ## A128386.P3516886657059018875

`∑{#}[n, (-1)^(n-#)*C(n, #)*A151292(#)]`
-/

namespace A128386.P3516886657059018875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A151292 k : ℚ)

end

end A128386.P3516886657059018875

namespace A128386

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A151292(#)]` -/
def P3516886657059018875.Spec : Prop :=
  ∀ n, P3516886657059018875.a n = (A128386 n : ℚ)

end A128386

/-!
# A128387: Expansion of c(5x^2)/(1-x*c(5x^2)), where c(x) is the g.f. of A000108.

The programs for A128387, the canonical program `A128387.P5640538918158957168` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128387 has offset 0).

The definition of A128387 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128387.P5640538918158957168

`∑{#}[floor(n/2), C(n, n-#)*(n-2*#+1)*5^#/(n-#+1)]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A128387

/-- `∑{#}[floor(n/2), C(n, n-#)*(n-2*#+1)*5^#/(n-#+1)]` -/
def P5640538918158957168.Spec : Prop :=
  ∀ n, P5640538918158957168.a n = (A128387 n : ℚ)

end A128387

/-! ## A128387.P9630562452779319106

`∑{#}[n, 5^#*A120730(C(n+1, 2)+n-#)]`
-/

namespace A128387.P9630562452779319106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (5 ^ k : ℤ) * A120730 ((Nat.choose (n + 1) 2 : ℤ) + ((n : ℤ) - (k : ℤ))).toNat

end

end A128387.P9630562452779319106

namespace A128387

/-- `∑{#}[n, 5^#*A120730(C(n+1, 2)+n-#)]` -/
def P9630562452779319106.Spec : Prop :=
  ∀ n, P9630562452779319106.a n = A128387 n

end A128387

/-! ## A128387.P12343024943591089104

`∑{#}[floor(n/2), A009766(C(n-#+1, 2)+#)*5^#]`
-/

namespace A128387.P12343024943591089104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A009766 (Nat.choose ((n : ℤ) - (k : ℤ) + 1).toNat 2 + k) * (5 ^ k : ℤ)

end

end A128387.P12343024943591089104

namespace A128387

/-- `∑{#}[floor(n/2), A009766(C(n-#+1, 2)+#)*5^#]` -/
def P12343024943591089104.Spec : Prop :=
  ∀ n, P12343024943591089104.a n = A128387 n

end A128387

/-!
# A128388: Emirps with only prime digits (i.e., 2, 3, 5, 7).

The programs for A128388, there is no canonical definition to state claims against.
-/

/-! ## A128388.P12972858299224566885

`∩[A006567(n+1), A019546(n+1)]`
-/

namespace A128388.P12972858299224566885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128388.P12972858299224566885

/-! ## A128388.P9003051617969632009

`∩[A006567(n+1), A046034(n+1)]`
-/

namespace A128388.P9003051617969632009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128388.P9003051617969632009

/-! ## A128388.P2643543533367792013

`∩[A006567(n+1), A062087(n+1)]`
-/

namespace A128388.P2643543533367792013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128388.P2643543533367792013

/-! ## A128388.P15979746013776596667

`∩[A006567(n+1), A160748(n+1)]`
-/

namespace A128388.P15979746013776596667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128388.P15979746013776596667

/-! ## A128388.P17946163650094485238

`∪[A133554(n+1), A133753(n+1)]`
-/

namespace A128388.P17946163650094485238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A128388.P17946163650094485238

/-!
# A128390: Emirps with only nonprime digits (i.e., 0, 1, 4, 6, 8, 9).

The programs for A128390, there is no canonical definition to state claims against.
-/

/-! ## A128390.P1712473803978900497

`∩[A006567(n+1), A034844(n+1)]`
-/

namespace A128390.P1712473803978900497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128390.P1712473803978900497

/-! ## A128390.P16420105986042999038

`∩[A006567(n+1), A084984(n+1)]`
-/

namespace A128390.P16420105986042999038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128390.P16420105986042999038

/-! ## A128390.P4648179273425841790

`∩[A034844(n+1), A068893(n+1)]`
-/

namespace A128390.P4648179273425841790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128390.P4648179273425841790

/-! ## A128390.P7020680438571925343

`∩[A034844(n+1), A109019(n+1)]`
-/

namespace A128390.P7020680438571925343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128390.P7020680438571925343

/-! ## A128390.P13937373291726169589

`∩[A034844(n+1), A350867(n+1)]`
-/

namespace A128390.P13937373291726169589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128390.P13937373291726169589

/-!
# A128393: Numbers k such that k^2 divides 13^k - 1.

The programs for A128393, there is no canonical definition to state claims against.
-/

/-! ## A128393.P14124441508583480793

`∩[A116621(n+1), A177913(n+1)]`
-/

namespace A128393.P14124441508583480793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128393.P14124441508583480793

/-! ## A128393.P9716834001743252145

`∩[A078779(n+1), A116621(n+1)]`
-/

namespace A128393.P9716834001743252145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128393.P9716834001743252145

/-! ## A128393.P14153381105546353444

`or(A018321(A304479(n+1)), A018328(n+1))`
-/

namespace A128393.P14153381105546353444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A018321 (A304479 (n + 1)).toNat) (A018328 (n + 1))

end

end A128393.P14153381105546353444

/-! ## A128393.P12637920327629297575

`record[gcd(A028310(n), A032183(n+1))]`
-/

namespace A128393.P12637920327629297575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 n) (A032183 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128393.P12637920327629297575

/-!
# A128394: Numbers k such that k^2 divides 14^k - 1.

The programs for A128394, there is no canonical definition to state claims against.
-/

/-! ## A128394.P18399952890770830431

`A177914(A179254(n)+A022549(n+1))`
-/

namespace A128394.P18399952890770830431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177914 (A179254 n + A022549 (n + 1)).toNat

end

end A128394.P18399952890770830431

/-! ## A128394.P9711683105521558728

`A177914(or(A103438(n), A177729(n+1)))`
-/

namespace A128394.P9711683105521558728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177914 (Int.lor (A103438 n) (A177729 (n + 1))).toNat

end

end A128394.P9711683105521558728

/-! ## A128394.P5999872277282525301

`A177914(or(A177729(n+1), A243202(n)))`
-/

namespace A128394.P5999872277282525301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177914 (Int.lor (A177729 (n + 1)) (A243202 n)).toNat

end

end A128394.P5999872277282525301

/-! ## A128394.P5949153549469777148

`A177914(or(A177729(n+1), A177913(n+1)))`
-/

namespace A128394.P5949153549469777148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177914 (Int.lor (A177729 (n + 1)) (A177913 (n + 1))).toNat

end

end A128394.P5949153549469777148

/-!
# A128395: Numbers k such that k^2 divides 15^k-1.

The programs for A128395, there is no canonical definition to state claims against.
-/

/-! ## A128395.P13434143152096901500

`∩[A177805(n+1), A177915(n+1)]`
-/

namespace A128395.P13434143152096901500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128395.P13434143152096901500

/-! ## A128395.P231049003444993037

`∩[A103254(n+1), A177915(n+1)]`
-/

namespace A128395.P231049003444993037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128395.P231049003444993037

/-! ## A128395.P7381394311484806766

`∩[A177915(n+1), A329396(n+1)]`
-/

namespace A128395.P7381394311484806766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128395.P7381394311484806766

/-! ## A128395.P15259151408917130089

`∩[A177915(n+1), A329399(n+1)]`
-/

namespace A128395.P15259151408917130089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128395.P15259151408917130089

/-! ## A128395.P14979616243265831811

`∩[A177915(n+1), A334274(n+1)]`
-/

namespace A128395.P14979616243265831811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128395.P14979616243265831811

/-!
# A128396: Numbers k such that k^2 divides 16^k-1.

The programs for A128396, there is no canonical definition to state claims against.
-/

/-! ## A128396.P6089613476448598321

`∩[A014957(n+1), A177916(n+1)]`
-/

namespace A128396.P6089613476448598321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128396.P6089613476448598321

/-! ## A128396.P9489779270629275620

`∩[A014866(n+1), A177916(n+1)]`
-/

namespace A128396.P9489779270629275620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128396.P9489779270629275620

/-! ## A128396.P5535253902954015049

`record[A007947(A014957(n+1))]`
-/

namespace A128396.P5535253902954015049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A014957 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128396.P5535253902954015049

/-! ## A128396.P12048135758997222505

`filter[A014957(n+1), A008966(#)]`
-/

namespace A128396.P12048135758997222505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A128396.P12048135758997222505

/-! ## A128396.P10588802534098187360

`filter[A014957(n+1), A359590(#)]`
-/

namespace A128396.P10588802534098187360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A128396.P10588802534098187360

/-! ## A128396.P9507897791175655076

`filter[A014957(n+1), A359592(#)]`
-/

namespace A128396.P9507897791175655076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A128396.P9507897791175655076

/-! ## A128396.P16972386223732040673

`filter[A014957(n+1), A359834(#)]`
-/

namespace A128396.P16972386223732040673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A128396.P16972386223732040673

/-! ## A128396.P15474722014681715056

`∩[A005117(n+1), A014957(n+1)]`
-/

namespace A128396.P15474722014681715056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128396.P15474722014681715056

/-! ## A128396.P6530755149135027320

`filter[A014866(n+1), A323239(#)]`
-/

namespace A128396.P6530755149135027320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014866 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A128396.P6530755149135027320

/-! ## A128396.P14914317418383548320

`filter[A014957(n+1), A323154(#)]`
-/

namespace A128396.P14914317418383548320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A128396.P14914317418383548320

/-! ## A128396.P3049576881678902909

`filter[A014957(n+1), A323239(#)]`
-/

namespace A128396.P3049576881678902909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A128396.P3049576881678902909

/-! ## A128396.P13868778315161585954

`filter[A014957(n+1), A353559(#)]`
-/

namespace A128396.P13868778315161585954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A128396.P13868778315161585954

/-! ## A128396.P10382197377172340970

`filter[A014957(n+1), A353627(#)]`
-/

namespace A128396.P10382197377172340970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A128396.P10382197377172340970

/-!
# A128397: Numbers k such that k^2 divides 17^k-1.

The programs for A128397, there is no canonical definition to state claims against.
-/

/-! ## A128397.P7439173206162489106

`∩[A177807(n+1), A177917(n+1)]`
-/

namespace A128397.P7439173206162489106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128397.P7439173206162489106

/-! ## A128397.P15789279384312971079

`eq[log(A336898(n)), A092669(n+1)]`
-/

namespace A128397.P15789279384312971079
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A336898 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092669 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A128397.P15789279384312971079

/-! ## A128397.P6036647932357717792

`eq[A001221(A195637(n+1)), A336898(n)]`
-/

namespace A128397.P6036647932357717792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A195637 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128397.P6036647932357717792

/-! ## A128397.P3802723731435892139

`eq[A001221(A249817(n+1)), A336898(n)]`
-/

namespace A128397.P3802723731435892139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A249817 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128397.P3802723731435892139

/-! ## A128397.P6389255610082842362

`∩[A068563(n+1), A129618(n+1)]`
-/

namespace A128397.P6389255610082842362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128397.P6389255610082842362

/-!
# A128399: Numbers k such that k^2 divides 19^k-1.

The programs for A128399, there is no canonical definition to state claims against.
-/

/-! ## A128399.P9869472726151432369

`∩[A177919(n+1), A333506(n+1)]`
-/

namespace A128399.P9869472726151432369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128399.P9869472726151432369

/-! ## A128399.P17785628691538383432

`∩[A124455(n+1), A177919(n+1)]`
-/

namespace A128399.P17785628691538383432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128399.P17785628691538383432

/-! ## A128399.P4924804821299273306

`∩[A177919(n+1), A351467(n+1)]`
-/

namespace A128399.P4924804821299273306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128399.P4924804821299273306

/-! ## A128399.P5493132301509985132

`∩[A177919(n+1), A235591(n+1)]`
-/

namespace A128399.P5493132301509985132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128399.P5493132301509985132

/-! ## A128399.P1909634334744763541

`∩[A177919(n+1), A254075(n+1)]`
-/

namespace A128399.P1909634334744763541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128399.P1909634334744763541

