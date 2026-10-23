import SequenceMachineLib
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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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

/-!
# A079401: Partial sums of A079399.

The programs for A079401, the canonical program `A079401.P7706091807637651091` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079401 has offset 0).

The definition of A079401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079401.P7706091807637651091

`∑[A079399(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A079401

/-- `∑[A079399(n)]` -/
def P7706091807637651091.Spec : Prop :=
  ∀ n, P7706091807637651091.a n = A079401 n

theorem P7706091807637651091.correct : P7706091807637651091.Spec := by
  intro n
  simp only [A079401]

end A079401

/-! ## A079401.P17394511679046207922

`∑[A072283(n)-4]`
-/

namespace A079401.P17394511679046207922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072283 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079401.P17394511679046207922

namespace A079401

/-- `∑[A072283(n)-4]` -/
def P17394511679046207922.Spec : Prop :=
  ∀ n, P17394511679046207922.a n = A079401 n

end A079401

/-! ## A079401.P933458774634771222

`∑{digits}[n, A079399(#)]+a(n-1)` with `a(0)=3`
-/

namespace A079401.P933458774634771222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A079399 x).sum + a (n - 1)

end

end A079401.P933458774634771222

namespace A079401

/-- `∑{digits}[n, A079399(#)]+a(n-1)` -/
def P933458774634771222.Spec : Prop :=
  ∀ n, P933458774634771222.a n = A079401 n

end A079401

/-!
# A079402: Number of permutations of n^2 distinct integers free of any monotonic increasing or decreasing (n+1)-subsequence.

The programs for A079402, the canonical program `A079402.P8247950100287683807` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079402 has offset 0).

The definition of A079402 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079402.P8247950100287683807

`A039622(n)²`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A079402

/-- `A039622(n)²` -/
def P8247950100287683807.Spec : Prop :=
  ∀ n, P8247950100287683807.a n = A079402 n

theorem P8247950100287683807.correct : P8247950100287683807.Spec := by
  intro n
  simp only [A079402]

end A079402

/-! ## A079402.P7342559568426635808

`(A067700(n)/2)²`
-/

namespace A079402.P7342559568426635808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A067700 n : ℚ) / 2) ^ 2

end

end A079402.P7342559568426635808

namespace A079402

/-- `(A067700(n)/2)²` -/
def P7342559568426635808.Spec : Prop :=
  ∀ n, P7342559568426635808.a n = (A079402 n : ℚ)

end A079402

/-! ## A079402.P1985149148577698824

`A321716(∑[n]+n)²`
-/

namespace A079402.P1985149148577698824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321716 (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2

end

end A079402.P1985149148577698824

namespace A079402

/-- `A321716(∑[n]+n)²` -/
def P1985149148577698824.Spec : Prop :=
  ∀ n, P1985149148577698824.a n = A079402 n

end A079402

/-! ## A079402.P2826264786953059780

`A039622(n)^A000040(A323529(n))`
-/

namespace A079402.P2826264786953059780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039622 n : ℚ) ^ (A000040 (A323529 n).toNat : ℤ)

end

end A079402.P2826264786953059780

namespace A079402

/-- `A039622(n)^A000040(A323529(n))` -/
def P2826264786953059780.Spec : Prop :=
  ∀ n, P2826264786953059780.a n = (A079402 n : ℚ)

end A079402

/-! ## A079402.P6382289060097038345

`A039622(n)^A020639(A083260(n+1))`
-/

namespace A079402.P6382289060097038345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039622 n : ℚ) ^ (A020639 (A083260 (n + 1)).toNat : ℤ)

end

end A079402.P6382289060097038345

namespace A079402

/-- `A039622(n)^A020639(A083260(n+1))` -/
def P6382289060097038345.Spec : Prop :=
  ∀ n, P6382289060097038345.a n = (A079402 n : ℚ)

end A079402

/-!
# A079403: Let G(t) be the set of numbers between 2^(t-1) and 2^t-1, inclusive. There is a unique number a(t) in G(t) so that the denominator of the a(t)-th partial sum of the double harmonic series is divisible by smaller 2-powers than its neighbors.

The programs for A079403, there is no canonical definition to state claims against.
-/

/-! ## A079403.P14347785032251470411

`or(2*a(n-1), A104234(A239242(2*n)))` with `a(0)=3`
-/

namespace A079403.P14347785032251470411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.lor (2 * a (n - 1)) (A104234 (A239242 (2 * n)).toNat)

end

end A079403.P14347785032251470411

/-! ## A079403.P7533643878169661703

`or(A118255(n+1), A287723(A000079(n)))`
-/

namespace A079403.P7533643878169661703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A118255 (n + 1)) (A287723 (A000079 n).toNat)

end

end A079403.P7533643878169661703

/-! ## A079403.P6565569482142451402

`A184740(∑[2^n])+2`
-/

namespace A079403.P6565569482142451402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184740 (∑ j ∈ Finset.range (n + 1), f1 j) + 2

end

end A079403.P6565569482142451402

/-! ## A079403.P15245269164529832209

`A136617(A000051(n+1))-A047996(n)`
-/

namespace A079403.P15245269164529832209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136617 (A000051 (n + 1)).toNat - A047996 n

end

end A079403.P15245269164529832209

/-! ## A079403.P11551088217652003465

`floor(A136617(A077624(2*(n+1)))/2)`
-/

namespace A079403.P11551088217652003465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A136617 (A077624 (2 * (n + 1))).toNat : ℚ) / 2⌋

end

end A079403.P11551088217652003465

/-!
# A079405: Number of dots in primes in Braille.

The programs for A079405, the canonical program `A079405.P8261978597498823540` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079405 has offset 0).

The definition of A079405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079405.P13023342781712349558

`∑{digits}[Δ[A007504(n)], A079399(#)]`
-/

namespace A079405.P13023342781712349558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A079399 x).sum

end

end A079405.P13023342781712349558

namespace A079405

/-- `∑{digits}[Δ[A007504(n)], A079399(#)]` -/
def P13023342781712349558.Spec : Prop :=
  ∀ n, P13023342781712349558.a n = A079405 n

end A079405

/-! ## A079405.P8261978597498823540

`∑{digits}[A000040(n+1), A079399(#)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A079405

/-- `∑{digits}[A000040(n+1), A079399(#)]` -/
def P8261978597498823540.Spec : Prop :=
  ∀ n, P8261978597498823540.a n = A079405 n

theorem P8261978597498823540.correct : P8261978597498823540.Spec := by
  intro n
  simp only [A079405]

end A079405

/-! ## A079405.P8992478887380469299

`∑{digits}[record[A006530(n+2)], A079399(#)]`
-/

namespace A079405.P8992478887380469299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A079399 x).sum

end

end A079405.P8992478887380469299

namespace A079405

/-- `∑{digits}[record[A006530(n+2)], A079399(#)]` -/
def P8992478887380469299.Spec : Prop :=
  ∀ n, P8992478887380469299.a n = A079405 n

end A079405

/-! ## A079405.P9572927829521022825

`A072283(Δ[A007504(n)])-4`
-/

namespace A079405.P9572927829521022825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072283 (f1 (n + 1) - f1 n).toNat - 4

end

end A079405.P9572927829521022825

namespace A079405

/-- `A072283(Δ[A007504(n)])-4` -/
def P9572927829521022825.Spec : Prop :=
  ∀ n, P9572927829521022825.a n = A079405 n

end A079405

/-! ## A079405.P16634316222320080554

`A072283(A006093(n+1)+1)-4`
-/

namespace A079405.P16634316222320080554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072283 (A006093 (n + 1) + 1).toNat - 4

end

end A079405.P16634316222320080554

namespace A079405

/-- `A072283(A006093(n+1)+1)-4` -/
def P16634316222320080554.Spec : Prop :=
  ∀ n, P16634316222320080554.a n = A079405 n

end A079405

/-! ## A079405.P7667351985647969683

`A072283(p?[A007989(n)])-4`
-/

namespace A079405.P7667351985647969683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072283 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 4

end

end A079405.P7667351985647969683

namespace A079405

/-- `A072283(p?[A007989(n)])-4` -/
def P7667351985647969683.Spec : Prop :=
  ∀ n, P7667351985647969683.a n = A079405 n

end A079405

/-! ## A079405.P1196453905281104694

`A079399(A000040(n+1))`
-/

namespace A079405.P1196453905281104694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079399 (A000040 (n + 1)).toNat

end

end A079405.P1196453905281104694

namespace A079405

/-- `A079399(A000040(n+1))` -/
def P1196453905281104694.Spec : Prop :=
  ∀ n, P1196453905281104694.a n = A079405 n

end A079405

/-! ## A079405.P15174440010329952008

`A079399(A004087(n+1))`
-/

namespace A079405.P15174440010329952008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079399 (A004087 (n + 1)).toNat

end

end A079405.P15174440010329952008

namespace A079405

/-- `A079399(A004087(n+1))` -/
def P15174440010329952008.Spec : Prop :=
  ∀ n, P15174440010329952008.a n = A079405 n

end A079405

/-! ## A079405.P8592805124411978946

`A079399(A028906(n+1))`
-/

namespace A079405.P8592805124411978946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079399 (A028906 (n + 1)).toNat

end

end A079405.P8592805124411978946

namespace A079405

/-- `A079399(A028906(n+1))` -/
def P8592805124411978946.Spec : Prop :=
  ∀ n, P8592805124411978946.a n = A079405 n

end A079405

/-! ## A079405.P14235927369164135386

`A079399(A171018(n+1))`
-/

namespace A079405.P14235927369164135386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079399 (A171018 (n + 1)).toNat

end

end A079405.P14235927369164135386

namespace A079405

/-- `A079399(A171018(n+1))` -/
def P14235927369164135386.Spec : Prop :=
  ∀ n, P14235927369164135386.a n = A079405 n

end A079405

/-! ## A079405.P1329750327964810108

`A079399(A171025(n+1))`
-/

namespace A079405.P1329750327964810108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079399 (A171025 (n + 1)).toNat

end

end A079405.P1329750327964810108

namespace A079405

/-- `A079399(A171025(n+1))` -/
def P1329750327964810108.Spec : Prop :=
  ∀ n, P1329750327964810108.a n = A079405 n

end A079405

/-! ## A079405.P12739969347437053412

`A079399(A171026(n+1))`
-/

namespace A079405.P12739969347437053412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079399 (A171026 (n + 1)).toNat

end

end A079405.P12739969347437053412

namespace A079405

/-- `A079399(A171026(n+1))` -/
def P12739969347437053412.Spec : Prop :=
  ∀ n, P12739969347437053412.a n = A079405 n

end A079405

/-! ## A079405.P8743236004867756582

`A079399(A171032(n+1))`
-/

namespace A079405.P8743236004867756582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079399 (A171032 (n + 1)).toNat

end

end A079405.P8743236004867756582

namespace A079405

/-- `A079399(A171032(n+1))` -/
def P8743236004867756582.Spec : Prop :=
  ∀ n, P8743236004867756582.a n = A079405 n

end A079405

/-! ## A079405.P12368257147461519884

`A079399(A171045(n+1))`
-/

namespace A079405.P12368257147461519884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079399 (A171045 (n + 1)).toNat

end

end A079405.P12368257147461519884

namespace A079405

/-- `A079399(A171045(n+1))` -/
def P12368257147461519884.Spec : Prop :=
  ∀ n, P12368257147461519884.a n = A079405 n

end A079405

/-! ## A079405.P11038985085005953362

`A079399(A171047(n+1))`
-/

namespace A079405.P11038985085005953362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079399 (A171047 (n + 1)).toNat

end

end A079405.P11038985085005953362

namespace A079405

/-- `A079399(A171047(n+1))` -/
def P11038985085005953362.Spec : Prop :=
  ∀ n, P11038985085005953362.a n = A079405 n

end A079405

/-! ## A079405.P12250525205144652274

`A079399(A171051(n+1))`
-/

namespace A079405.P12250525205144652274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079399 (A171051 (n + 1)).toNat

end

end A079405.P12250525205144652274

namespace A079405

/-- `A079399(A171051(n+1))` -/
def P12250525205144652274.Spec : Prop :=
  ∀ n, P12250525205144652274.a n = A079405 n

end A079405

/-! ## A079405.P14785878683074459501

`A079399(A171052(n+1))`
-/

namespace A079405.P14785878683074459501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079399 (A171052 (n + 1)).toNat

end

end A079405.P14785878683074459501

namespace A079405

/-- `A079399(A171052(n+1))` -/
def P14785878683074459501.Spec : Prop :=
  ∀ n, P14785878683074459501.a n = A079405 n

end A079405

/-! ## A079405.P16976319120934050861

`A079399(A171054(n+1))`
-/

namespace A079405.P16976319120934050861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079399 (A171054 (n + 1)).toNat

end

end A079405.P16976319120934050861

namespace A079405

/-- `A079399(A171054(n+1))` -/
def P16976319120934050861.Spec : Prop :=
  ∀ n, P16976319120934050861.a n = A079405 n

end A079405

/-! ## A079405.P509425717843170784

`A072283(p?[A004442(n)])-4`
-/

namespace A079405.P509425717843170784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072283 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 4

end

end A079405.P509425717843170784

namespace A079405

/-- `A072283(p?[A004442(n)])-4` -/
def P509425717843170784.Spec : Prop :=
  ∀ n, P509425717843170784.a n = A079405 n

end A079405

/-! ## A079405.P15366374234750852518

`A072283(p?[A014681(n)])-4`
-/

namespace A079405.P15366374234750852518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072283 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 4

end

end A079405.P15366374234750852518

namespace A079405

/-- `A072283(p?[A014681(n)])-4` -/
def P15366374234750852518.Spec : Prop :=
  ∀ n, P15366374234750852518.a n = A079405 n

end A079405

/-!
# A079406: Recamán variation: a(1)=1, then a(n)=a(n-1)-n if n is already in the sequence, a(n)=a(n-1)+n otherwise.

The programs for A079406, there is no canonical definition to state claims against.
-/

/-! ## A079406.P12081750036710240686

`∑[(n+1)*A162511(A014217(n+1))]`
-/

namespace A079406.P12081750036710240686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A162511 (A014217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079406.P12081750036710240686

/-! ## A079406.P17592761622785688382

`∑[(n+1)*A087960(A145701(n+1))]`
-/

namespace A079406.P17592761622785688382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A087960 (A145701 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079406.P17592761622785688382

/-! ## A079406.P6569115016458180058

`∑[(n+1)*A033999(A319014(n+5))]`
-/

namespace A079406.P6569115016458180058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A033999 (A319014 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079406.P6569115016458180058

/-! ## A079406.P17778289711038802448

`∑[A087960(A145701(n+1))*A348553(n)]`
-/

namespace A079406.P17778289711038802448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A145701 (n + 1)).toNat * A348553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079406.P17778289711038802448

/-! ## A079406.P11515611388929605987

`∑[A077342(n+1)/A087960(A145701(n+1))]`
-/

namespace A079406.P11515611388929605987
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077342 (n + 1) : ℚ) / (A087960 (A145701 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079406.P11515611388929605987

/-!
# A079407: Numbers m such that the least s >= 0 such that Sum_{k=0..m} (k+s)!/C(m,k) is an integer satisfies s = m - 1.

The programs for A079407, there is no canonical definition to state claims against.
-/

/-! ## A079407.P16823366941383609638

`A046022(lt[A278073(n+2), A000108(n)])`
-/

namespace A079407.P16823366941383609638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278073 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A079407.P16823366941383609638

/-! ## A079407.P6021774922765564763

`eq[A010052(A321698(n+1)), A082024(n)]`
-/

namespace A079407.P6021774922765564763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A321698 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082024 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079407.P6021774922765564763

/-! ## A079407.P560224349172019448

`eq[A010052(A321698(n+1)), A338554(n)]`
-/

namespace A079407.P560224349172019448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A321698 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338554 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079407.P560224349172019448

/-! ## A079407.P8231611244727025519

`eq[A014963(A186020(n)), A117621(n+1)]`
-/

namespace A079407.P8231611244727025519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A186020 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117621 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079407.P8231611244727025519

/-! ## A079407.P14349171317724799408

`eq[A040730(n), A302129(n)]`
-/

namespace A079407.P14349171317724799408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040730 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302129 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079407.P14349171317724799408

/-!
# A079409: Array T(m,n) (m>=0, n>=0) read by antidiagonals: T(0, 0) = 1, T(0, n) = 0 if n > 0, T(m, n) = T(m-1, n - T(m-1, n)) + T(m-1, n - T(m-1, n-1)) if m > 0.

The programs for A079409, the canonical program `A079409.P10018844493359524927` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079409 has offset 0).

The definition of A079409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079409.P10018844493359524927

`C(A053616(A056023(n+1)), A002262(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A079409

/-- `C(A053616(A056023(n+1)), A002262(n))` -/
def P10018844493359524927.Spec : Prop :=
  ∀ n, (P10018844493359524927.a n : ℤ) = A079409 n

theorem P10018844493359524927.correct : P10018844493359524927.Spec := by
  intro n
  simp only [A079409]

end A079409

/-! ## A079409.P12594206910839541616

`A050873(n+1)*A057427(A123163(n))`
-/

namespace A079409.P12594206910839541616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A057427 (A123163 n).toNat

end

end A079409.P12594206910839541616

namespace A079409

/-- `A050873(n+1)*A057427(A123163(n))` -/
def P12594206910839541616.Spec : Prop :=
  ∀ n, P12594206910839541616.a n = A079409 n

end A079409

/-! ## A079409.P7507114611684333610

`A050873(n+1)%A107129(A089627(n))`
-/

namespace A079409.P7507114611684333610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050873 (n + 1)) (A107129 (A089627 n).toNat)

end

end A079409.P7507114611684333610

namespace A079409

/-- `A050873(n+1)%A107129(A089627(n))` -/
def P7507114611684333610.Spec : Prop :=
  ∀ n, P7507114611684333610.a n = A079409 n

end A079409

/-! ## A079409.P15879347923543307950

`A050873(n+1)*A057427(A185209(n+1))`
-/

namespace A079409.P15879347923543307950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A057427 (A185209 (n + 1)).toNat

end

end A079409.P15879347923543307950

namespace A079409

/-- `A050873(n+1)*A057427(A185209(n+1))` -/
def P15879347923543307950.Spec : Prop :=
  ∀ n, P15879347923543307950.a n = A079409 n

end A079409

/-! ## A079409.P8530245429585162066

`A101979(A123163(n))`
-/

namespace A079409.P8530245429585162066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101979 (A123163 n).toNat

end

end A079409.P8530245429585162066

namespace A079409

/-- `A101979(A123163(n))` -/
def P8530245429585162066.Spec : Prop :=
  ∀ n, P8530245429585162066.a n = A079409 n

end A079409

/-!
# A079411: a(1)=1, a(n) = n - a(a(ceiling(n/2))).

The programs for A079411, the canonical program `A079411.P6403883780516262924` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079411 has offset 1).

The definition of A079411 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-a(a(ceil((n+1)/2)-1)-1)` (program `A079411.P6403883780516262924`, by `A079411.P6403883780516262924.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A079411.P6403883780516262924

`n+1-a(a(ceil((n+1)/2)-1)-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079411

/-- `n+1-a(a(ceil((n+1)/2)-1)-1)` -/
def P6403883780516262924.Spec : Prop :=
  ∀ n, P6403883780516262924.a n = A079411 (n + 1)

theorem P6403883780516262924.correct : P6403883780516262924.Spec := by
  intro n
  simp only [A079411, Nat.add_sub_cancel]

end A079411

/-! ## A079411.P15999586250994355393

`1-a(a(floor(n/2))-1)+n` with `a(0)=1`
-/

namespace A079411.P15999586250994355393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - a (a ⌊(n : ℚ) / 2⌋.toNat - 1).toNat + (n : ℤ)

end

end A079411.P15999586250994355393

namespace A079411

/-- `1-a(a(floor(n/2))-1)+n` -/
def P15999586250994355393.Spec : Prop :=
  ∀ n, P15999586250994355393.a n = A079411 (n + 1)

end A079411

/-! ## A079411.P660542920789440754

`1-(a(a(floor(n/2))-1)-n)` with `a(0)=1`
-/

namespace A079411.P660542920789440754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a (a ⌊(n : ℚ) / 2⌋.toNat - 1).toNat - (n : ℤ))

end

end A079411.P660542920789440754

namespace A079411

/-- `1-(a(a(floor(n/2))-1)-n)` -/
def P660542920789440754.Spec : Prop :=
  ∀ n, P660542920789440754.a n = A079411 (n + 1)

end A079411

/-! ## A079411.P6545946996304465442

`n+1-a(A023443(a(floor(n/2))))` with `a(0)=1`
-/

namespace A079411.P6545946996304465442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) - a (A023443 (a ⌊(n : ℚ) / 2⌋.toNat).toNat).toNat

end

end A079411.P6545946996304465442

namespace A079411

/-- `n+1-a(A023443(a(floor(n/2))))` -/
def P6545946996304465442.Spec : Prop :=
  ∀ n, P6545946996304465442.a n = A079411 (n + 1)

end A079411

/-! ## A079411.P3966995611397892859

`abs(a(a(A008619(n)-1)-1)-n)+1` with `a(0)=1`
-/

namespace A079411.P3966995611397892859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (a (A008619 n - 1).toNat - 1).toNat - (n : ℤ)| + 1

end

end A079411.P3966995611397892859

namespace A079411

/-- `abs(a(a(A008619(n)-1)-1)-n)+1` -/
def P3966995611397892859.Spec : Prop :=
  ∀ n, P3966995611397892859.a n = A079411 (n + 1)

end A079411

/-!
# A079412: Number of ways to write n as sum of prime powers p^e such that e>0 and p does not divide n.

The programs for A079412, there is no canonical definition to state claims against.
-/

/-! ## A079412.P9449116793464423446

`A026810(((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1)%A077374(n+1))`
-/

namespace A079412.P9449116793464423446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1)) (A077374 (n + 1))).toNat

end

end A079412.P9449116793464423446

/-! ## A079412.P3632013167511370399

`A026810(A039650(n+1)%A129021(n))`
-/

namespace A079412.P3632013167511370399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (Int.tmod (A039650 (n + 1)) (A129021 n)).toNat

end

end A079412.P3632013167511370399

/-! ## A079412.P8823031012275655569

`A300580(or(A039649(n+1), A245792(n)))`
-/

namespace A079412.P8823031012275655569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300580 (Int.lor (A039649 (n + 1)) (A245792 n)).toNat

end

end A079412.P8823031012275655569

/-! ## A079412.P7108185497065256556

`A300580(or(A219793(n+1), A245792(n)))`
-/

namespace A079412.P7108185497065256556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300580 (Int.lor (A219793 (n + 1)) (A245792 n)).toNat

end

end A079412.P7108185497065256556

/-! ## A079412.P7015092015958696978

`A026810(A039649(n+1)%A074241(n+1))`
-/

namespace A079412.P7015092015958696978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (Int.tmod (A039649 (n + 1)) (A074241 (n + 1))).toNat

end

end A079412.P7015092015958696978

/-!
# A079413: Number of ways to write n as sum of powers p^e of distinct primes p such that e>0 and p does not divide n.

The programs for A079413, there is no canonical definition to state claims against.
-/

/-! ## A079413.P4878680231826146335

`A083893(4^A070804(n+1))`
-/

namespace A079413.P4878680231826146335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083893 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A070804 (n + 1) : ℤ))).toNat

end

end A079413.P4878680231826146335

/-! ## A079413.P1529707476562021200

`val(A152709(A293484(n+1)), 4)`
-/

namespace A079413.P1529707476562021200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A152709 (A293484 (n + 1)).toNat).toNat 4

end

end A079413.P1529707476562021200

/-! ## A079413.P5739277491936839788

`A001221(A007902((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]))`
-/

namespace A079413.P5739277491936839788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A007902 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat).toNat

end

end A079413.P5739277491936839788

/-! ## A079413.P6899000059078736842

`A141070(A067538((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]))`
-/

namespace A079413.P6899000059078736842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141070 (A067538 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat).toNat

end

end A079413.P6899000059078736842

/-! ## A079413.P15013221906207848020

`A358479(A111206((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]))`
-/

namespace A079413.P15013221906207848020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358479 (A111206 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat).toNat

end

end A079413.P15013221906207848020

/-!
# A079414: a(n) = 4*n^4 - 3*n^2.

The programs for A079414, the canonical program `A079414.P3032603617172421399` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079414 has offset 1).

The definition of A079414 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+1)^4-3*(n+1)²` (program `A079414.P3032603617172421399`, by `A079414.P3032603617172421399.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A079414.P3032603617172421399

`4*(n+1)^4-3*(n+1)²`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079414

/-- `4*(n+1)^4-3*(n+1)²` -/
def P3032603617172421399.Spec : Prop :=
  ∀ n, P3032603617172421399.a n = A079414 (n + 1)

theorem P3032603617172421399.correct : P3032603617172421399.Spec := by
  intro n
  simp only [A079414, Nat.add_sub_cancel]

end A079414

/-! ## A079414.P4876110675223105318

`∑[C(2*(2*n+1)², 2)/(2*n+1)]`
-/

namespace A079414.P4876110675223105318
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (2 * n + 1) ^ 2) 2 : ℚ) / (2 * n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079414.P4876110675223105318

namespace A079414

/-- `∑[C(2*(2*n+1)², 2)/(2*n+1)]` -/
def P4876110675223105318.Spec : Prop :=
  ∀ n, P4876110675223105318.a n = (A079414 (n + 1) : ℚ)

end A079414

/-! ## A079414.P2904025050341966441

`∑[A193250(n+1)]`
-/

namespace A079414.P2904025050341966441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079414.P2904025050341966441

namespace A079414

/-- `∑[A193250(n+1)]` -/
def P2904025050341966441.Spec : Prop :=
  ∀ n, P2904025050341966441.a n = A079414 (n + 1)

end A079414

/-! ## A079414.P5213422126003993213

`∑[∑[A158638(n)]+n]`
-/

namespace A079414.P5213422126003993213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158638 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079414.P5213422126003993213

namespace A079414

/-- `∑[∑[A158638(n)]+n]` -/
def P5213422126003993213.Spec : Prop :=
  ∀ n, P5213422126003993213.a n = A079414 (n + 1)

end A079414

/-! ## A079414.P6792148381205188207

`(n+1)²*A082109(n)`
-/

namespace A079414.P6792148381205188207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A082109 n

end

end A079414.P6792148381205188207

namespace A079414

/-- `(n+1)²*A082109(n)` -/
def P6792148381205188207.Spec : Prop :=
  ∀ n, P6792148381205188207.a n = A079414 (n + 1)

end A079414

/-! ## A079414.P398354974933113026

`∑[A322675(n)+1+n]`
-/

namespace A079414.P398354974933113026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322675 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079414.P398354974933113026

namespace A079414

/-- `∑[A322675(n)+1+n]` -/
def P398354974933113026.Spec : Prop :=
  ∀ n, P398354974933113026.a n = A079414 (n + 1)

end A079414

/-! ## A079414.P11149740648719724362

`(n+1)*∑[A069190(n+1)]`
-/

namespace A079414.P11149740648719724362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A079414.P11149740648719724362

namespace A079414

/-- `(n+1)*∑[A069190(n+1)]` -/
def P11149740648719724362.Spec : Prop :=
  ∀ n, P11149740648719724362.a n = A079414 (n + 1)

end A079414

/-! ## A079414.P5541971402099503732

`∑[A181773(n+1)+Δ[n²]]`
-/

namespace A079414.P5541971402099503732
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181773 (n + 1) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079414.P5541971402099503732

namespace A079414

/-- `∑[A181773(n+1)+Δ[n²]]` -/
def P5541971402099503732.Spec : Prop :=
  ∀ n, P5541971402099503732.a n = A079414 (n + 1)

end A079414

/-! ## A079414.P6538344983800266019

`∑[n*(A004767(n)²+1)+1]`
-/

namespace A079414.P6538344983800266019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A004767 n ^ 2 + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079414.P6538344983800266019

namespace A079414

/-- `∑[n*(A004767(n)²+1)+1]` -/
def P6538344983800266019.Spec : Prop :=
  ∀ n, P6538344983800266019.a n = A079414 (n + 1)

end A079414

/-! ## A079414.P3198267850483980607

`∑[(2*n+1)*A069129(n+1)]`
-/

namespace A079414.P3198267850483980607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A069129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079414.P3198267850483980607

namespace A079414

/-- `∑[(2*n+1)*A069129(n+1)]` -/
def P3198267850483980607.Spec : Prop :=
  ∀ n, P3198267850483980607.a n = A079414 (n + 1)

end A079414

/-! ## A079414.P10891261106354489330

`(n+1)*A144129(n+1)`
-/

namespace A079414.P10891261106354489330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A144129 (n + 1)

end

end A079414.P10891261106354489330

namespace A079414

/-- `(n+1)*A144129(n+1)` -/
def P10891261106354489330.Spec : Prop :=
  ∀ n, P10891261106354489330.a n = A079414 (n + 1)

end A079414

/-! ## A079414.P6438537632734372852

`(n+1)*sqrt(A239608(n+1))`
-/

namespace A079414.P6438537632734372852
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A239608 (n + 1) : ℝ)

end

end A079414.P6438537632734372852

namespace A079414

/-- `(n+1)*sqrt(A239608(n+1))` -/
def P6438537632734372852.Spec : Prop :=
  ∀ n, P6438537632734372852.a n = (A079414 (n + 1) : ℝ)

end A079414

/-! ## A079414.P3259241740837039275

`∑[∑[A005914(2*n)]]`
-/

namespace A079414.P3259241740837039275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005914 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079414.P3259241740837039275

namespace A079414

/-- `∑[∑[A005914(2*n)]]` -/
def P3259241740837039275.Spec : Prop :=
  ∀ n, P3259241740837039275.a n = A079414 (n + 1)

end A079414

/-! ## A079414.P9919149002350314985

`(n+1)*A154560(2*n)`
-/

namespace A079414.P9919149002350314985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A154560 (2 * n)

end

end A079414.P9919149002350314985

namespace A079414

/-- `(n+1)*A154560(2*n)` -/
def P9919149002350314985.Spec : Prop :=
  ∀ n, P9919149002350314985.a n = A079414 (n + 1)

end A079414

/-! ## A079414.P276622165679359114

`A212889(Δ[n²])/2`
-/

namespace A079414.P276622165679359114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212889 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A079414.P276622165679359114

namespace A079414

/-- `A212889(Δ[n²])/2` -/
def P276622165679359114.Spec : Prop :=
  ∀ n, P276622165679359114.a n = (A079414 (n + 1) : ℚ)

end A079414

/-! ## A079414.P12853064847629565924

`∑[∑[A110907(2*n)]]`
-/

namespace A079414.P12853064847629565924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110907 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079414.P12853064847629565924

namespace A079414

/-- `∑[∑[A110907(2*n)]]` -/
def P12853064847629565924.Spec : Prop :=
  ∀ n, P12853064847629565924.a n = A079414 (n + 1)

end A079414

/-! ## A079414.P14753606456923589237

`∑[A007588(2*n+1)]`
-/

namespace A079414.P14753606456923589237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079414.P14753606456923589237

namespace A079414

/-- `∑[A007588(2*n+1)]` -/
def P14753606456923589237.Spec : Prop :=
  ∀ n, P14753606456923589237.a n = A079414 (n + 1)

end A079414

/-! ## A079414.P11491536368433706111

`∑[sqrt(A277792(2*n+1))]`
-/

namespace A079414.P11491536368433706111
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A277792 (2 * n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079414.P11491536368433706111

namespace A079414

/-- `∑[sqrt(A277792(2*n+1))]` -/
def P11491536368433706111.Spec : Prop :=
  ∀ n, P11491536368433706111.a n = (A079414 (n + 1) : ℝ)

end A079414

/-! ## A079414.P7000214773653471949

`(n+1)*A215097(Δ[n²])`
-/

namespace A079414.P7000214773653471949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A215097 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A079414.P7000214773653471949

namespace A079414

/-- `(n+1)*A215097(Δ[n²])` -/
def P7000214773653471949.Spec : Prop :=
  ∀ n, P7000214773653471949.a n = A079414 (n + 1)

end A079414

/-!
# A079415: a(n) = floor(prime(n)/n) * ceiling(prime(n)/n) / 2.

The programs for A079415, the canonical program `A079415.P2317611460476883429` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079415 has offset 1).

The definition of A079415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079415.P9652112415523761031

`A038605(n+1)/2*A090973(n+1)`
-/

namespace A079415.P9652112415523761031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038605 (n + 1) : ℚ) / 2 * (A090973 (n + 1) : ℚ)

end

end A079415.P9652112415523761031

namespace A079415

/-- `A038605(n+1)/2*A090973(n+1)` -/
def P9652112415523761031.Spec : Prop :=
  ∀ n, P9652112415523761031.a n = (A079415 (n + 1) : ℚ)

end A079415

/-! ## A079415.P2317611460476883429

`C(A090973(n+1), A090973(C(2, a(n-1))+1))` with `a(0)=2`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A079415

/-- `C(A090973(n+1), A090973(C(2, a(n-1))+1))` -/
def P2317611460476883429.Spec : Prop :=
  ∀ n, (P2317611460476883429.a n : ℤ) = A079415 (n + 1)

theorem P2317611460476883429.correct : P2317611460476883429.Spec := by
  intro n
  simp only [A079415, Nat.add_sub_cancel]

end A079415

/-! ## A079415.P11133842696391138571

`C(A090973(n+1), A020639(A131055(n+1)))`
-/

namespace A079415.P11133842696391138571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A090973 (n + 1)).toNat (A020639 (A131055 (n + 1)).toNat).toNat

end

end A079415.P11133842696391138571

namespace A079415

/-- `C(A090973(n+1), A020639(A131055(n+1)))` -/
def P11133842696391138571.Spec : Prop :=
  ∀ n, (P11133842696391138571.a n : ℤ) = A079415 (n + 1)

end A079415

/-! ## A079415.P7548729617512376557

`A076079(n+1)*A090973(n+1)/A103517(n)`
-/

namespace A079415.P7548729617512376557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076079 (n + 1) * A090973 (n + 1) : ℚ) / (A103517 n : ℚ)

end

end A079415.P7548729617512376557

namespace A079415

/-- `A076079(n+1)*A090973(n+1)/A103517(n)` -/
def P7548729617512376557.Spec : Prop :=
  ∀ n, P7548729617512376557.a n = (A079415 (n + 1) : ℚ)

end A079415

/-! ## A079415.P4042261151854180120

`C(A090973(n+1), A020639(A034448(2*n+1)))`
-/

namespace A079415.P4042261151854180120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A090973 (n + 1)).toNat (A020639 (A034448 (2 * n + 1)).toNat).toNat

end

end A079415.P4042261151854180120

namespace A079415

/-- `C(A090973(n+1), A020639(A034448(2*n+1)))` -/
def P4042261151854180120.Spec : Prop :=
  ∀ n, (P4042261151854180120.a n : ℤ) = A079415 (n + 1)

end A079415

/-! ## A079415.P5484423095188384661

`C(A090973(n+1), A020639(A013916(n+1)))`
-/

namespace A079415.P5484423095188384661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A090973 (n + 1)).toNat (A020639 (A013916 (n + 1)).toNat).toNat

end

end A079415.P5484423095188384661

namespace A079415

/-- `C(A090973(n+1), A020639(A013916(n+1)))` -/
def P5484423095188384661.Spec : Prop :=
  ∀ n, (P5484423095188384661.a n : ℤ) = A079415 (n + 1)

end A079415

/-! ## A079415.P12296308785489986314

`A004736(A134869(n+1)+A076079(n+1))`
-/

namespace A079415.P12296308785489986314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A134869 (n + 1) + A076079 (n + 1)).toNat

end

end A079415.P12296308785489986314

namespace A079415

/-- `A004736(A134869(n+1)+A076079(n+1))` -/
def P12296308785489986314.Spec : Prop :=
  ∀ n, P12296308785489986314.a n = A079415 (n + 1)

end A079415

/-!
# A079416: a(n) = round(prime(n)/n).

The programs for A079416, the canonical program `A079416.P13839535260029094473` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079416 has offset 1).

The definition of A079416 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079416.P9285850209916102313

`A082893(n+1)/(n+1)`
-/

namespace A079416.P9285850209916102313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082893 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A079416.P9285850209916102313

namespace A079416

/-- `A082893(n+1)/(n+1)` -/
def P9285850209916102313.Spec : Prop :=
  ∀ n, P9285850209916102313.a n = (A079416 (n + 1) : ℚ)

end A079416

/-! ## A079416.P11358813274590437888

`round(Δ[A007504(n)]/(n+1))`
-/

namespace A079416.P11358813274590437888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ))

end

end A079416.P11358813274590437888

namespace A079416

/-- `round(Δ[A007504(n)]/(n+1))` -/
def P11358813274590437888.Spec : Prop :=
  ∀ n, P11358813274590437888.a n = A079416 (n + 1)

end A079416

/-! ## A079416.P13839535260029094473

`round(A000040(n+1)/(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A079416

/-- `round(A000040(n+1)/(n+1))` -/
def P13839535260029094473.Spec : Prop :=
  ∀ n, P13839535260029094473.a n = A079416 (n + 1)

theorem P13839535260029094473.correct : P13839535260029094473.Spec := by
  intro n
  simp only [A079416, Nat.add_sub_cancel]

end A079416

/-! ## A079416.P5567638845875064417

`round(sqrt(A001248(n+1))/(n+1))`
-/

namespace A079416.P5567638845875064417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ) / (n + 1 : ℝ))

end

end A079416.P5567638845875064417

namespace A079416

/-- `round(sqrt(A001248(n+1))/(n+1))` -/
def P5567638845875064417.Spec : Prop :=
  ∀ n, P5567638845875064417.a n = A079416 (n + 1)

end A079416

/-! ## A079416.P16050853445425306780

`round(∑[A054541(n+1)]/(n+1))`
-/

namespace A079416.P16050853445425306780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ))

end

end A079416.P16050853445425306780

namespace A079416

/-- `round(∑[A054541(n+1)]/(n+1))` -/
def P16050853445425306780.Spec : Prop :=
  ∀ n, P16050853445425306780.a n = A079416 (n + 1)

end A079416

/-! ## A079416.P2264179755666199597

`round((A006093(n+1)+1)/(n+1))`
-/

namespace A079416.P2264179755666199597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A006093 (n + 1) + 1 : ℚ) / (n + 1 : ℚ))

end

end A079416.P2264179755666199597

namespace A079416

/-- `round((A006093(n+1)+1)/(n+1))` -/
def P2264179755666199597.Spec : Prop :=
  ∀ n, P2264179755666199597.a n = A079416 (n + 1)

end A079416

/-! ## A079416.P4694029139063258837

`round((A040976(n+1)+2)/(n+1))`
-/

namespace A079416.P4694029139063258837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A040976 (n + 1) + 2 : ℚ) / (n + 1 : ℚ))

end

end A079416.P4694029139063258837

namespace A079416

/-- `round((A040976(n+1)+2)/(n+1))` -/
def P4694029139063258837.Spec : Prop :=
  ∀ n, P4694029139063258837.a n = A079416 (n + 1)

end A079416

/-! ## A079416.P14687857002342075386

`round((A175221(n+1)-4)/(n+1))`
-/

namespace A079416.P14687857002342075386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A175221 (n + 1) - 4 : ℚ) / (n + 1 : ℚ))

end

end A079416.P14687857002342075386

namespace A079416

/-- `round((A175221(n+1)-4)/(n+1))` -/
def P14687857002342075386.Spec : Prop :=
  ∀ n, P14687857002342075386.a n = A079416 (n + 1)

end A079416

/-! ## A079416.P10237693888337323238

`round((A014689(n+1)+1+n)/(n+1))`
-/

namespace A079416.P10237693888337323238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A014689 (n + 1) + 1 + (n : ℤ) : ℚ) / (n + 1 : ℚ))

end

end A079416.P10237693888337323238

namespace A079416

/-- `round((A014689(n+1)+1+n)/(n+1))` -/
def P10237693888337323238.Spec : Prop :=
  ∀ n, P10237693888337323238.a n = A079416 (n + 1)

end A079416

/-! ## A079416.P18333999241216205265

`round((A008347(n+1)+A008347(n))/(n+1))`
-/

namespace A079416.P18333999241216205265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008347 (n + 1) + A008347 n : ℚ) / (n + 1 : ℚ))

end

end A079416.P18333999241216205265

namespace A079416

/-- `round((A008347(n+1)+A008347(n))/(n+1))` -/
def P18333999241216205265.Spec : Prop :=
  ∀ n, P18333999241216205265.a n = A079416 (n + 1)

end A079416

/-! ## A079416.P13434611774507673145

`round(A008578(n+2)/(n+1))`
-/

namespace A079416.P13434611774507673145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008578 (n + 2) : ℚ) / (n + 1 : ℚ))

end

end A079416.P13434611774507673145

namespace A079416

/-- `round(A008578(n+2)/(n+1))` -/
def P13434611774507673145.Spec : Prop :=
  ∀ n, P13434611774507673145.a n = A079416 (n + 1)

end A079416

/-! ## A079416.P3939220340579273742

`round(record[A006530(n+2)]/(n+1))`
-/

namespace A079416.P3939220340579273742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ))

end

end A079416.P3939220340579273742

namespace A079416

/-- `round(record[A006530(n+2)]/(n+1))` -/
def P3939220340579273742.Spec : Prop :=
  ∀ n, P3939220340579273742.a n = A079416 (n + 1)

end A079416

/-! ## A079416.P8504215583356633275

`round(record[A020639(n+2)]/(n+1))`
-/

namespace A079416.P8504215583356633275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ))

end

end A079416.P8504215583356633275

namespace A079416

/-- `round(record[A020639(n+2)]/(n+1))` -/
def P8504215583356633275.Spec : Prop :=
  ∀ n, P8504215583356633275.a n = A079416 (n + 1)

end A079416

/-! ## A079416.P9828776072982817626

`round(A067747(2*n+1)/(n+1))`
-/

namespace A079416.P9828776072982817626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A067747 (2 * n + 1) : ℚ) / (n + 1 : ℚ))

end

end A079416.P9828776072982817626

namespace A079416

/-- `round(A067747(2*n+1)/(n+1))` -/
def P9828776072982817626.Spec : Prop :=
  ∀ n, P9828776072982817626.a n = A079416 (n + 1)

end A079416

/-! ## A079416.P6198777998022198115

`round(A129767(2*n+1)/(n+1))`
-/

namespace A079416.P6198777998022198115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A129767 (2 * n + 1) : ℚ) / (n + 1 : ℚ))

end

end A079416.P6198777998022198115

namespace A079416

/-- `round(A129767(2*n+1)/(n+1))` -/
def P6198777998022198115.Spec : Prop :=
  ∀ n, P6198777998022198115.a n = A079416 (n + 1)

end A079416

/-! ## A079416.P13563319319812595178

`round(A134735(2*n+1)/(n+1))`
-/

namespace A079416.P13563319319812595178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A134735 (2 * n + 1) : ℚ) / (n + 1 : ℚ))

end

end A079416.P13563319319812595178

namespace A079416

/-- `round(A134735(2*n+1)/(n+1))` -/
def P13563319319812595178.Spec : Prop :=
  ∀ n, P13563319319812595178.a n = A079416 (n + 1)

end A079416

/-! ## A079416.P13802999516027983779

`round(A209259(2*n+1)/(n+1))`
-/

namespace A079416.P13802999516027983779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A209259 (2 * n + 1) : ℚ) / (n + 1 : ℚ))

end

end A079416.P13802999516027983779

namespace A079416

/-- `round(A209259(2*n+1)/(n+1))` -/
def P13802999516027983779.Spec : Prop :=
  ∀ n, P13802999516027983779.a n = A079416 (n + 1)

end A079416

/-! ## A079416.P15722964157054918304

`round(record[A014963(n+2)]/(n+1))`
-/

namespace A079416.P15722964157054918304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ))

end

end A079416.P15722964157054918304

namespace A079416

/-- `round(record[A014963(n+2)]/(n+1))` -/
def P15722964157054918304.Spec : Prop :=
  ∀ n, P15722964157054918304.a n = A079416 (n + 1)

end A079416

/-! ## A079416.P592135752266190123

`A107609(A000040(n+1))`
-/

namespace A079416.P592135752266190123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107609 (A000040 (n + 1)).toNat

end

end A079416.P592135752266190123

namespace A079416

/-- `A107609(A000040(n+1))` -/
def P592135752266190123.Spec : Prop :=
  ∀ n, P592135752266190123.a n = A079416 (n + 1)

end A079416

/-! ## A079416.P14743015118184732881

`A107609(A008578(n+2))`
-/

namespace A079416.P14743015118184732881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107609 (A008578 (n + 2)).toNat

end

end A079416.P14743015118184732881

namespace A079416

/-- `A107609(A008578(n+2))` -/
def P14743015118184732881.Spec : Prop :=
  ∀ n, P14743015118184732881.a n = A079416 (n + 1)

end A079416

/-!
# A079418: Numbers k such that prime(k)/k < prime(k-1)/(k-1).

The programs for A079418, the canonical program `A079418.P154276308547552137` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079418 has offset 1).

The definition of A079418 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5537 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079418.P15377278342658020409

`A049084(A079419(n+1))`
-/

namespace A079418.P15377278342658020409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A079419 (n + 1)).toNat

end

end A079418.P15377278342658020409

namespace A079418

/-- `A049084(A079419(n+1))` -/
def P15377278342658020409.Spec : Prop :=
  ∀ n, P15377278342658020409.a n = A079418 (n + 1)

end A079418

/-! ## A079418.P15370420424386276291

`∑[A392982(n+1)]+1`
-/

namespace A079418.P15370420424386276291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A079418.P15370420424386276291

namespace A079418

/-- `∑[A392982(n+1)]+1` -/
def P15370420424386276291.Spec : Prop :=
  ∀ n, P15370420424386276291.a n = A079418 (n + 1)

end A079418

/-! ## A079418.P154276308547552137

`lt[A062357(n+1), 0]+2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A079418

/-- `lt[A062357(n+1), 0]+2` -/
def P154276308547552137.Spec : Prop :=
  ∀ n, (P154276308547552137.a n : ℤ) = A079418 (n + 1)

theorem P154276308547552137.correct : P154276308547552137.Spec := by
  intro n
  simp only [A079418, Nat.add_sub_cancel]

end A079418

/-! ## A079418.P17064775446445356929

`lt[n, A102551(n+1)]+2`
-/

namespace A079418.P17064775446445356929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102551 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A079418.P17064775446445356929

namespace A079418

/-- `lt[n, A102551(n+1)]+2` -/
def P17064775446445356929.Spec : Prop :=
  ∀ n, (P17064775446445356929.a n : ℤ) = A079418 (n + 1)

end A079418

/-! ## A079418.P6308284626492911797

`lt[A141042(n+1), A000040(n+1)]+2`
-/

namespace A079418.P6308284626492911797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A079418.P6308284626492911797

namespace A079418

/-- `lt[A141042(n+1), A000040(n+1)]+2` -/
def P6308284626492911797.Spec : Prop :=
  ∀ n, (P6308284626492911797.a n : ℤ) = A079418 (n + 1)

end A079418

/-! ## A079418.P13016723543303629240

`lt[A141042(n+1), A008864(n+1)]+2`
-/

namespace A079418.P13016723543303629240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A079418.P13016723543303629240

namespace A079418

/-- `lt[A141042(n+1), A008864(n+1)]+2` -/
def P13016723543303629240.Spec : Prop :=
  ∀ n, (P13016723543303629240.a n : ℤ) = A079418 (n + 1)

end A079418

/-! ## A079418.P14794117750042678822

`lt[A141042(n+1), A006093(n+1)+1]+2`
-/

namespace A079418.P14794117750042678822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A079418.P14794117750042678822

namespace A079418

/-- `lt[A141042(n+1), A006093(n+1)+1]+2` -/
def P14794117750042678822.Spec : Prop :=
  ∀ n, (P14794117750042678822.a n : ℤ) = A079418 (n + 1)

end A079418

/-! ## A079418.P10307011593248381676

`lt[A141042(n+1), A040976(n+1)+2]+2`
-/

namespace A079418.P10307011593248381676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A079418.P10307011593248381676

namespace A079418

/-- `lt[A141042(n+1), A040976(n+1)+2]+2` -/
def P10307011593248381676.Spec : Prop :=
  ∀ n, (P10307011593248381676.a n : ℤ) = A079418 (n + 1)

end A079418

/-! ## A079418.P3345867461044894694

`lt[n+1, A000040(n+1)/A001223(n+1)]+2`
-/

namespace A079418.P3345867461044894694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / (A001223 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 2

end

end A079418.P3345867461044894694

namespace A079418

/-- `lt[n+1, A000040(n+1)/A001223(n+1)]+2` -/
def P3345867461044894694.Spec : Prop :=
  ∀ n, (P3345867461044894694.a n : ℤ) = A079418 (n + 1)

end A079418

/-! ## A079418.P7900706477490933156

`lt[A141042(n+1), A001043(n)-a(n-1)]+2` with `a(0)=2`
-/

namespace A079418.P7900706477490933156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A001043 n - f2 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A079418.P7900706477490933156

namespace A079418

/-- `lt[A141042(n+1), A001043(n)-a(n-1)]+2` -/
def P7900706477490933156.Spec : Prop :=
  ∀ n, (P7900706477490933156.a n : ℤ) = A079418 (n + 1)

end A079418

/-! ## A079418.P7010715401297825354

`A061395(2*A079419(n+1))`
-/

namespace A079418.P7010715401297825354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A079419 (n + 1)).toNat

end

end A079418.P7010715401297825354

namespace A079418

/-- `A061395(2*A079419(n+1))` -/
def P7010715401297825354.Spec : Prop :=
  ∀ n, P7010715401297825354.a n = A079418 (n + 1)

end A079418

/-! ## A079418.P11064682074682418252

`A003963(p?[A079419(n+1)])`
-/

namespace A079418.P11064682074682418252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A079418.P11064682074682418252

namespace A079418

/-- `A003963(p?[A079419(n+1)])` -/
def P11064682074682418252.Spec : Prop :=
  ∀ n, P11064682074682418252.a n = A079418 (n + 1)

end A079418

/-!
# A079419: Primes p such that p/i(p) < prime(i(p)-1)/(i(p)-1), where i(p) = A049084(p).

The programs for A079419, the canonical program `A079419.P9032335639255501518` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079419 has offset 1).

The definition of A079419 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A079418, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A079419.P9032335639255501518

`A000040(A079418(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A079419

/-- `A000040(A079418(n+1))` -/
def P9032335639255501518.Spec : Prop :=
  ∀ n, P9032335639255501518.a n = A079419 (n + 1)

theorem P9032335639255501518.correct : P9032335639255501518.Spec := by
  intro n
  simp only [A079419, Nat.add_sub_cancel]

end A079419

/-! ## A079419.P16793237799234369353

`A065091(A079418(n+1)-1)`
-/

namespace A079419.P16793237799234369353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A079418 (n + 1) - 1).toNat

end

end A079419.P16793237799234369353

namespace A079419

/-- `A065091(A079418(n+1)-1)` -/
def P16793237799234369353.Spec : Prop :=
  ∀ n, P16793237799234369353.a n = A079419 (n + 1)

end A079419

/-! ## A079419.P9171614817037141406

`∑{d}[A079418(n+1), A007444(#)]`
-/

namespace A079419.P9171614817037141406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A079419.P9171614817037141406

namespace A079419

/-- `∑{d}[A079418(n+1), A007444(#)]` -/
def P9171614817037141406.Spec : Prop :=
  ∀ n, P9171614817037141406.a n = A079419 (n + 1)

end A079419

/-! ## A079419.P13015430704914119842

`A000040(lt[A062357(n+1), 0]+2)`
-/

namespace A079419.P13015430704914119842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062357 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A079419.P13015430704914119842

namespace A079419

/-- `A000040(lt[A062357(n+1), 0]+2)` -/
def P13015430704914119842.Spec : Prop :=
  ∀ n, P13015430704914119842.a n = A079419 (n + 1)

end A079419

/-! ## A079419.P5198211375424736715

`A000040(lt[n, A102551(n+1)]+2)`
-/

namespace A079419.P5198211375424736715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A079419.P5198211375424736715

namespace A079419

/-- `A000040(lt[n, A102551(n+1)]+2)` -/
def P5198211375424736715.Spec : Prop :=
  ∀ n, P5198211375424736715.a n = A079419 (n + 1)

end A079419

/-! ## A079419.P4909208084881499124

`A000040(record[n%A102551(n+1)+2])`
-/

namespace A079419.P4909208084881499124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A102551 (n + 1)) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A079419.P4909208084881499124

namespace A079419

/-- `A000040(record[n%A102551(n+1)+2])` -/
def P4909208084881499124.Spec : Prop :=
  ∀ n, P4909208084881499124.a n = A079419 (n + 1)

end A079419

/-! ## A079419.P7080391344516780685

`record[A000040(A079418(ceil(C(or(1, n), n)/2)))]`
-/

namespace A079419.P7080391344516780685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A079418 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079419.P7080391344516780685

namespace A079419

/-- `record[A000040(A079418(ceil(C(or(1, n), n)/2)))]` -/
def P7080391344516780685.Spec : Prop :=
  ∀ n, P7080391344516780685.a n = A079419 (n + 1)

end A079419

/-! ## A079419.P3596663859883893129

`A000040(lt[A141042(n+1), A000040(n+1)]+2)`
-/

namespace A079419.P3596663859883893129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2)

end

end A079419.P3596663859883893129

namespace A079419

/-- `A000040(lt[A141042(n+1), A000040(n+1)]+2)` -/
def P3596663859883893129.Spec : Prop :=
  ∀ n, P3596663859883893129.a n = A079419 (n + 1)

end A079419

/-! ## A079419.P18110315054651709208

`A008578(A079418(n+1)+1)`
-/

namespace A079419.P18110315054651709208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A079418 (n + 1) + 1).toNat

end

end A079419.P18110315054651709208

namespace A079419

/-- `A008578(A079418(n+1)+1)` -/
def P18110315054651709208.Spec : Prop :=
  ∀ n, P18110315054651709208.a n = A079419 (n + 1)

end A079419

/-! ## A079419.P10981197119495228409

`A082500(2*A079418(n+1))`
-/

namespace A079419.P10981197119495228409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A079418 (n + 1)).toNat

end

end A079419.P10981197119495228409

namespace A079419

/-- `A082500(2*A079418(n+1))` -/
def P10981197119495228409.Spec : Prop :=
  ∀ n, P10981197119495228409.a n = A079419 (n + 1)

end A079419

/-!
# A079421: Spiro-Fibonacci differences, a(n) = difference of two previous terms that are nearest when terms arranged in a spiral.

The programs for A079421, the canonical program `A079421.P9358731664964090965` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079421 has offset 0).

The definition of A079421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079421.P9358731664964090965

`A078510(n)%2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A079421

/-- `A078510(n)%2` -/
def P9358731664964090965.Spec : Prop :=
  ∀ n, P9358731664964090965.a n = A079421 n

theorem P9358731664964090965.correct : P9358731664964090965.Spec := by
  intro n
  simp only [A079421]

end A079421

/-! ## A079421.P11282288098164118328

`and(1, A078510(char[1]+n))`
-/

namespace A079421.P11282288098164118328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A078510 ((if ∃ j, f1 j = n then 1 else 0) + n))

end

end A079421.P11282288098164118328

namespace A079421

/-- `and(1, A078510(char[1]+n))` -/
def P11282288098164118328.Spec : Prop :=
  ∀ n, P11282288098164118328.a n = A079421 n

end A079421

/-! ## A079421.P6005504062435948678

`and(A078510(n), A082605(n))`
-/

namespace A079421.P6005504062435948678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078510 n) (A082605 n)

end

end A079421.P6005504062435948678

namespace A079421

/-- `and(A078510(n), A082605(n))` -/
def P6005504062435948678.Spec : Prop :=
  ∀ n, P6005504062435948678.a n = A079421 n

end A079421

/-! ## A079421.P3223030512510385059

`and(A078510(n), A083318(n))`
-/

namespace A079421.P3223030512510385059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078510 n) (A083318 n)

end

end A079421.P3223030512510385059

namespace A079421

/-- `and(A078510(n), A083318(n))` -/
def P3223030512510385059.Spec : Prop :=
  ∀ n, P3223030512510385059.a n = A079421 n

end A079421

/-! ## A079421.P7727001417362034858

`and(A078510(n), A083575(n))`
-/

namespace A079421.P7727001417362034858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078510 n) (A083575 n)

end

end A079421.P7727001417362034858

namespace A079421

/-- `and(A078510(n), A083575(n))` -/
def P7727001417362034858.Spec : Prop :=
  ∀ n, P7727001417362034858.a n = A079421 n

end A079421

/-! ## A079421.P12121550637123617416

`and(A078510(n), A195744(n))`
-/

namespace A079421.P12121550637123617416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078510 n) (A195744 n)

end

end A079421.P12121550637123617416

namespace A079421

/-- `and(A078510(n), A195744(n))` -/
def P12121550637123617416.Spec : Prop :=
  ∀ n, P12121550637123617416.a n = A079421 n

end A079421

/-! ## A079421.P8323199713489859267

`and(A078510(n), A206371(n))`
-/

namespace A079421.P8323199713489859267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078510 n) (A206371 n)

end

end A079421.P8323199713489859267

namespace A079421

/-- `and(A078510(n), A206371(n))` -/
def P8323199713489859267.Spec : Prop :=
  ∀ n, P8323199713489859267.a n = A079421 n

end A079421

/-! ## A079421.P13264431988149957779

`and(A078510(n), A122041(n+1))`
-/

namespace A079421.P13264431988149957779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078510 n) (A122041 (n + 1))

end

end A079421.P13264431988149957779

namespace A079421

/-- `and(A078510(n), A122041(n+1))` -/
def P13264431988149957779.Spec : Prop :=
  ∀ n, P13264431988149957779.a n = A079421 n

end A079421

/-! ## A079421.P19517410349425631

`and(A078510(n), A196657(n))`
-/

namespace A079421.P19517410349425631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078510 n) (A196657 n)

end

end A079421.P19517410349425631

namespace A079421

/-- `and(A078510(n), A196657(n))` -/
def P19517410349425631.Spec : Prop :=
  ∀ n, P19517410349425631.a n = A079421 n

end A079421

/-! ## A079421.P10722726810771409426

`and(A078510(n), A345109(n+1))`
-/

namespace A079421.P10722726810771409426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078510 n) (A345109 (n + 1))

end

end A079421.P10722726810771409426

namespace A079421

/-- `and(A078510(n), A345109(n+1))` -/
def P10722726810771409426.Spec : Prop :=
  ∀ n, P10722726810771409426.a n = A079421 n

end A079421

/-! ## A079421.P614271059801457413

`and(A078510(n), A131056(n+1))`
-/

namespace A079421.P614271059801457413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078510 n) (A131056 (n + 1))

end

end A079421.P614271059801457413

namespace A079421

/-- `and(A078510(n), A131056(n+1))` -/
def P614271059801457413.Spec : Prop :=
  ∀ n, P614271059801457413.a n = A079421 n

end A079421

/-! ## A079421.P4058626125469046363

`and(A078510(n), A345108(n+1))`
-/

namespace A079421.P4058626125469046363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078510 n) (A345108 (n + 1))

end

end A079421.P4058626125469046363

namespace A079421

/-- `and(A078510(n), A345108(n+1))` -/
def P4058626125469046363.Spec : Prop :=
  ∀ n, P4058626125469046363.a n = A079421 n

end A079421

/-! ## A079421.P7355280934632807756

`and(A078510(n), A080267(n+1))`
-/

namespace A079421.P7355280934632807756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078510 n) (A080267 (n + 1))

end

end A079421.P7355280934632807756

namespace A079421

/-- `and(A078510(n), A080267(n+1))` -/
def P7355280934632807756.Spec : Prop :=
  ∀ n, P7355280934632807756.a n = A079421 n

end A079421

/-! ## A079421.P5368587916162942151

`and(A078510(n), A392083(n))`
-/

namespace A079421.P5368587916162942151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078510 n) (A392083 n)

end

end A079421.P5368587916162942151

namespace A079421

/-- `and(A078510(n), A392083(n))` -/
def P5368587916162942151.Spec : Prop :=
  ∀ n, P5368587916162942151.a n = A079421 n

end A079421

/-! ## A079421.P9706242070891776917

`and(A078510(n), A288038(n+1))`
-/

namespace A079421.P9706242070891776917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078510 n) (A288038 (n + 1))

end

end A079421.P9706242070891776917

namespace A079421

/-- `and(A078510(n), A288038(n+1))` -/
def P9706242070891776917.Spec : Prop :=
  ∀ n, P9706242070891776917.a n = A079421 n

end A079421

/-! ## A079421.P2243561968224281068

`and(A078510(n), A134854(n+1))`
-/

namespace A079421.P2243561968224281068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078510 n) (A134854 (n + 1))

end

end A079421.P2243561968224281068

namespace A079421

/-- `and(A078510(n), A134854(n+1))` -/
def P2243561968224281068.Spec : Prop :=
  ∀ n, P2243561968224281068.a n = A079421 n

end A079421

/-! ## A079421.P14242258652380343660

`and(A078510(n), A295926(n+3))`
-/

namespace A079421.P14242258652380343660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078510 n) (A295926 (n + 3))

end

end A079421.P14242258652380343660

namespace A079421

/-- `and(A078510(n), A295926(n+3))` -/
def P14242258652380343660.Spec : Prop :=
  ∀ n, P14242258652380343660.a n = A079421 n

end A079421

/-! ## A079421.P4965725494151928821

`and(A078510(n), A115342(n+6))`
-/

namespace A079421.P4965725494151928821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078510 n) (A115342 (n + 6))

end

end A079421.P4965725494151928821

namespace A079421

/-- `and(A078510(n), A115342(n+6))` -/
def P4965725494151928821.Spec : Prop :=
  ∀ n, P4965725494151928821.a n = A079421 n

end A079421

/-! ## A079421.P3238964785426076138

`and(A078510(n), A168298(n))`
-/

namespace A079421.P3238964785426076138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078510 n) (A168298 n)

end

end A079421.P3238964785426076138

namespace A079421

/-- `and(A078510(n), A168298(n))` -/
def P3238964785426076138.Spec : Prop :=
  ∀ n, P3238964785426076138.a n = A079421 n

end A079421

/-! ## A079421.P9865739577288924029

`and(A078510(n), A248917(n))`
-/

namespace A079421.P9865739577288924029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078510 n) (A248917 n)

end

end A079421.P9865739577288924029

namespace A079421

/-- `and(A078510(n), A248917(n))` -/
def P9865739577288924029.Spec : Prop :=
  ∀ n, P9865739577288924029.a n = A079421 n

end A079421

/-!
# A079422: a(n) = number of 1's in the first n^2 Spiro-Fibonacci differences.

The programs for A079422, there is no canonical definition to state claims against.
-/

/-! ## A079422.P8172540683997138112

`A047470(n+1)-A386586(n²)`
-/

namespace A079422.P8172540683997138112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047470 (n + 1) - A386586 (n ^ 2)

end

end A079422.P8172540683997138112

/-! ## A079422.P5937704459774081307

`A004976(n)-A001222(A026671(n))`
-/

namespace A079422.P5937704459774081307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 n - A001222 (A026671 n).toNat

end

end A079422.P5937704459774081307

/-! ## A079422.P1412266045392628235

`A008574(n)-A106243(A000579(n))`
-/

namespace A079422.P1412266045392628235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A106243 (A000579 n).toNat

end

end A079422.P1412266045392628235

/-! ## A079422.P6765092184748528282

`A008574(n)-A002654(A190877(n))`
-/

namespace A079422.P6765092184748528282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A002654 (A190877 n).toNat

end

end A079422.P6765092184748528282

/-! ## A079422.P6594323063093895067

`A312895(n)-A000005(A091149(n))`
-/

namespace A079422.P6594323063093895067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312895 n - A000005 (A091149 n).toNat

end

end A079422.P6594323063093895067

/-!
# A079424: A bisection of A024675. Cf. A058296.

The programs for A079424, the canonical program `A079424.P16692156195540481726` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079424 has offset 1).

The definition of A079424 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079424.P6165313340075832591

`Δ[A007504(2*(n+1))/2]`
-/

namespace A079424.P6165313340075832591
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079424.P6165313340075832591

namespace A079424

/-- `Δ[A007504(2*(n+1))/2]` -/
def P6165313340075832591.Spec : Prop :=
  ∀ n, P6165313340075832591.a n = (A079424 (n + 1) : ℚ)

end A079424

/-! ## A079424.P16692156195540481726

`A162802(n+2)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A079424

/-- `A162802(n+2)` -/
def P16692156195540481726.Spec : Prop :=
  ∀ n, P16692156195540481726.a n = A079424 (n + 1)

theorem P16692156195540481726.correct : P16692156195540481726.Spec := by
  intro n
  simp only [A079424, Nat.add_sub_cancel]

end A079424

/-! ## A079424.P16968728322632718094

`A100479(n+2)/2`
-/

namespace A079424.P16968728322632718094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100479 (n + 2) : ℚ) / 2

end

end A079424.P16968728322632718094

namespace A079424

/-- `A100479(n+2)/2` -/
def P16968728322632718094.Spec : Prop :=
  ∀ n, P16968728322632718094.a n = (A079424 (n + 1) : ℚ)

end A079424

/-! ## A079424.P14236026085158529352

`ceil(sqrt(A089581(n+2)))`
-/

namespace A079424.P14236026085158529352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A089581 (n + 2) : ℝ)⌉

end

end A079424.P14236026085158529352

namespace A079424

/-- `ceil(sqrt(A089581(n+2)))` -/
def P14236026085158529352.Spec : Prop :=
  ∀ n, P14236026085158529352.a n = A079424 (n + 1)

end A079424

/-! ## A079424.P16656115842182915904

`Δ[A109722(n+1)/2]`
-/

namespace A079424.P16656115842182915904
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109722 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079424.P16656115842182915904

namespace A079424

/-- `Δ[A109722(n+1)/2]` -/
def P16656115842182915904.Spec : Prop :=
  ∀ n, P16656115842182915904.a n = (A079424 (n + 1) : ℚ)

end A079424

/-! ## A079424.P4307723323581188914

`(A031368(n+2)+A031215(n+2))/2`
-/

namespace A079424.P4307723323581188914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031368 (n + 2) + A031215 (n + 2) : ℚ) / 2

end

end A079424.P4307723323581188914

namespace A079424

/-- `(A031368(n+2)+A031215(n+2))/2` -/
def P4307723323581188914.Spec : Prop :=
  ∀ n, P4307723323581188914.a n = (A079424 (n + 1) : ℚ)

end A079424

/-! ## A079424.P17013723465980204541

`A031368(n+2)+A078584(n+2)/2`
-/

namespace A079424.P17013723465980204541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031368 (n + 2) : ℚ) + (A078584 (n + 2) : ℚ) / 2

end

end A079424.P17013723465980204541

namespace A079424

/-- `A031368(n+2)+A078584(n+2)/2` -/
def P17013723465980204541.Spec : Prop :=
  ∀ n, P17013723465980204541.a n = (A079424 (n + 1) : ℚ)

end A079424

/-! ## A079424.P11890052608742886116

`A024675(2*(n+1))`
-/

namespace A079424.P11890052608742886116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (2 * (n + 1))

end

end A079424.P11890052608742886116

namespace A079424

/-- `A024675(2*(n+1))` -/
def P11890052608742886116.Spec : Prop :=
  ∀ n, P11890052608742886116.a n = A079424 (n + 1)

end A079424

/-! ## A079424.P185708001226186736

`floor(sqrt(A293206(2*(n+1))))`
-/

namespace A079424.P185708001226186736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A293206 (2 * (n + 1)))

end

end A079424.P185708001226186736

namespace A079424

/-- `floor(sqrt(A293206(2*(n+1))))` -/
def P185708001226186736.Spec : Prop :=
  ∀ n, P185708001226186736.a n = A079424 (n + 1)

end A079424

/-! ## A079424.P15472215719235942882

`floor(sqrt(A075892(2*n+3)))`
-/

namespace A079424.P15472215719235942882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A075892 (2 * n + 3))

end

end A079424.P15472215719235942882

namespace A079424

/-- `floor(sqrt(A075892(2*n+3)))` -/
def P15472215719235942882.Spec : Prop :=
  ∀ n, P15472215719235942882.a n = A079424 (n + 1)

end A079424

/-! ## A079424.P7937867746435485749

`A058296(n+2)+A052288(2*n+1)`
-/

namespace A079424.P7937867746435485749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058296 (n + 2) + A052288 (2 * n + 1)

end

end A079424.P7937867746435485749

namespace A079424

/-- `A058296(n+2)+A052288(2*n+1)` -/
def P7937867746435485749.Spec : Prop :=
  ∀ n, P7937867746435485749.a n = A079424 (n + 1)

end A079424

/-! ## A079424.P16279696630452922051

`A162801(n+2)+A052288(2*n+1)`
-/

namespace A079424.P16279696630452922051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162801 (n + 2) + A052288 (2 * n + 1)

end

end A079424.P16279696630452922051

namespace A079424

/-- `A162801(n+2)+A052288(2*n+1)` -/
def P16279696630452922051.Spec : Prop :=
  ∀ n, P16279696630452922051.a n = A079424 (n + 1)

end A079424

/-! ## A079424.P11893128689375536746

`A375097(2*n+3)+A135275(n+2)`
-/

namespace A079424.P11893128689375536746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375097 (2 * n + 3) + A135275 (n + 2)

end

end A079424.P11893128689375536746

namespace A079424

/-- `A375097(2*n+3)+A135275(n+2)` -/
def P11893128689375536746.Spec : Prop :=
  ∀ n, P11893128689375536746.a n = A079424 (n + 1)

end A079424

/-! ## A079424.P14410841308596539839

`A089253(2*(n+1))+A089038(2*(n+1))`
-/

namespace A079424.P14410841308596539839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (2 * (n + 1)) + A089038 (2 * (n + 1))

end

end A079424.P14410841308596539839

namespace A079424

/-- `A089253(2*(n+1))+A089038(2*(n+1))` -/
def P14410841308596539839.Spec : Prop :=
  ∀ n, P14410841308596539839.a n = A079424 (n + 1)

end A079424

/-! ## A079424.P652553918214258649

`A105760(2*n+1)+A089192(2*(n+1))`
-/

namespace A079424.P652553918214258649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (2 * n + 1) + A089192 (2 * (n + 1))

end

end A079424.P652553918214258649

namespace A079424

/-- `A105760(2*n+1)+A089192(2*(n+1))` -/
def P652553918214258649.Spec : Prop :=
  ∀ n, P652553918214258649.a n = A079424 (n + 1)

end A079424

/-! ## A079424.P14168565843442358565

`A305748(2*(n+1))+A000040(2*(n+1))`
-/

namespace A079424.P14168565843442358565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305748 (2 * (n + 1)) + A000040 (2 * (n + 1))

end

end A079424.P14168565843442358565

namespace A079424

/-- `A305748(2*(n+1))+A000040(2*(n+1))` -/
def P14168565843442358565.Spec : Prop :=
  ∀ n, P14168565843442358565.a n = A079424 (n + 1)

end A079424

/-! ## A079424.P2737239172567323204

`A373699(2*(n+2))-A373699(2*n+3)`
-/

namespace A079424.P2737239172567323204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373699 (2 * (n + 2)) - A373699 (2 * n + 3)

end

end A079424.P2737239172567323204

namespace A079424

/-- `A373699(2*(n+2))-A373699(2*n+3)` -/
def P2737239172567323204.Spec : Prop :=
  ∀ n, P2737239172567323204.a n = A079424 (n + 1)

end A079424

/-! ## A079424.P11413196023528994673

`(A031131(2*(n+1))+A001043(2*(n+1)))/2`
-/

namespace A079424.P11413196023528994673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031131 (2 * (n + 1)) + A001043 (2 * (n + 1)) : ℚ) / 2

end

end A079424.P11413196023528994673

namespace A079424

/-- `(A031131(2*(n+1))+A001043(2*(n+1)))/2` -/
def P11413196023528994673.Spec : Prop :=
  ∀ n, P11413196023528994673.a n = (A079424 (n + 1) : ℚ)

end A079424

/-! ## A079424.P11219121116122870692

`A052288(2*n+1)+A001043(2*(n+1))/2`
-/

namespace A079424.P11219121116122870692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052288 (2 * n + 1) : ℚ) + (A001043 (2 * (n + 1)) : ℚ) / 2

end

end A079424.P11219121116122870692

namespace A079424

/-- `A052288(2*n+1)+A001043(2*(n+1))/2` -/
def P11219121116122870692.Spec : Prop :=
  ∀ n, P11219121116122870692.a n = (A079424 (n + 1) : ℚ)

end A079424

/-! ## A079424.P7811078505799983783

`(A065091(2*(n+1))+A004139(2*(n+1)))/2`
-/

namespace A079424.P7811078505799983783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065091 (2 * (n + 1)) + A004139 (2 * (n + 1)) : ℚ) / 2

end

end A079424.P7811078505799983783

namespace A079424

/-- `(A065091(2*(n+1))+A004139(2*(n+1)))/2` -/
def P7811078505799983783.Spec : Prop :=
  ∀ n, P7811078505799983783.a n = (A079424 (n + 1) : ℚ)

end A079424

/-!
# A079425: Marks on lexicographically earliest 9-mark optimal Golomb ruler.

The programs for A079425, there is no canonical definition to state claims against.
-/

/-! ## A079425.P18240162750641479867

`A106683(n+37)`
-/

namespace A079425.P18240162750641479867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106683 (n + 37)

end

end A079425.P18240162750641479867

/-! ## A079425.P2137175417610216827

`A031872(n+1)-1`
-/

namespace A079425.P2137175417610216827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031872 (n + 1) - 1

end

end A079425.P2137175417610216827

/-! ## A079425.P1332714599783060736

`abs(1-A031872(n-log2(1/2)))`
-/

namespace A079425.P1332714599783060736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A031872 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat|

end

end A079425.P1332714599783060736

/-! ## A079425.P15490060376716780569

`A023443(A031872(n+1))`
-/

namespace A079425.P15490060376716780569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A031872 (n + 1)).toNat

end

end A079425.P15490060376716780569

/-! ## A079425.P3806967534956275506

`record[Δ[A031872(A100727(n))]]`
-/

namespace A079425.P3806967534956275506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031872 (A100727 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079425.P3806967534956275506

/-!
# A079426: Marks on lexicographically earliest 10-mark optimal Golomb ruler.

The programs for A079426, there is no canonical definition to state claims against.
-/

/-! ## A079426.P11404442992221103679

`A106683(n+46)`
-/

namespace A079426.P11404442992221103679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106683 (n + 46)

end

end A079426.P11404442992221103679

/-! ## A079426.P2312001362085417299

`A031873(n+1)-1`
-/

namespace A079426.P2312001362085417299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031873 (n + 1) - 1

end

end A079426.P2312001362085417299

/-! ## A079426.P14444307886252884324

`A023443(A031873(n+1))`
-/

namespace A079426.P14444307886252884324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A031873 (n + 1)).toNat

end

end A079426.P14444307886252884324

/-! ## A079426.P12094040760242753345

`record[Δ[A031873(A100727(n))]]`
-/

namespace A079426.P12094040760242753345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031873 (A100727 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079426.P12094040760242753345

/-! ## A079426.P5034423666100197323

`record[Δ[A031873(A152271(n))]]`
-/

namespace A079426.P5034423666100197323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031873 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079426.P5034423666100197323

/-!
# A079427: Least m > n having the same number of divisors as n, a(1) = 1.

The programs for A079427, there is no canonical definition to state claims against.
-/

/-! ## A079427.P13269129792439750816

`A171937(n+1)+n+1`
-/

namespace A079427.P13269129792439750816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171937 (n + 1) + (n + 1 : ℤ)

end

end A079427.P13269129792439750816

/-!
# A079429: a(0) = 2, a(1) = 3, a(2) = 5; a(n) = a(n-1) + [a(n-1)-a(n-2)] * [a(n-2)-a(n-3)].

The programs for A079429, the canonical program `A079429.P1625536680600313769` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079429 has offset 0).

The definition of A079429 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+(a(n-1)-a(n-2))*(a(n-2)-a(n-3))` (program `A079429.P1625536680600313769`, by `A079429.P1625536680600313769.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A079429.P1625536680600313769

`a(n-1)+(a(n-1)-a(n-2))*(a(n-2)-a(n-3))` with `a(0)=2, a(1)=3, a(2)=5`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079429

/-- `a(n-1)+(a(n-1)-a(n-2))*(a(n-2)-a(n-3))` -/
def P1625536680600313769.Spec : Prop :=
  ∀ n, P1625536680600313769.a n = A079429 n

theorem P1625536680600313769.correct : P1625536680600313769.Spec := by
  intro n
  simp only [A079429]

end A079429

/-! ## A079429.P13508099201860373647

`∑[a(n-1)*a(n-2)]` with `a(0)=2, a(1)=1`
-/

namespace A079429.P13508099201860373647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079429.P13508099201860373647

namespace A079429

/-- `∑[a(n-1)*a(n-2)]` -/
def P13508099201860373647.Spec : Prop :=
  ∀ n, (P13508099201860373647.a n : ℤ) = A079429 n

end A079429

/-! ## A079429.P153269714435563489

`∑[a(n-1)²/a(n-3)]` with `a(0)=2, a(1)=1, a(2)=2`
-/

namespace A079429.P153269714435563489
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1, 2] fun n f1 =>
  f1 (n - 1) ^ 2 / f1 (n - 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079429.P153269714435563489

namespace A079429

/-- `∑[a(n-1)²/a(n-3)]` -/
def P153269714435563489.Spec : Prop :=
  ∀ n, P153269714435563489.a n = (A079429 n : ℚ)

end A079429

/-! ## A079429.P17526530447231912315

`∑[a(n-1)/a(n-2)^(-1)]` with `a(0)=2, a(1)=1`
-/

namespace A079429.P17526530447231912315
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) / f1 (n - 2) ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079429.P17526530447231912315

namespace A079429

/-- `∑[a(n-1)/a(n-2)^(-1)]` -/
def P17526530447231912315.Spec : Prop :=
  ∀ n, P17526530447231912315.a n = (A079429 n : ℚ)

end A079429

/-! ## A079429.P12491872408935931095

`∑[2^A212804(n)]`
-/

namespace A079429.P12491872408935931095
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A212804 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079429.P12491872408935931095

namespace A079429

/-- `∑[2^A212804(n)]` -/
def P12491872408935931095.Spec : Prop :=
  ∀ n, P12491872408935931095.a n = (A079429 n : ℚ)

end A079429

/-!
# A079430: Marks on lexicographically earliest 11-mark optimal Golomb ruler.

The programs for A079430, there is no canonical definition to state claims against.
-/

/-! ## A079430.P472749120713611337

`A106683(n+56)`
-/

namespace A079430.P472749120713611337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106683 (n + 56)

end

end A079430.P472749120713611337

/-! ## A079430.P17440015029490503528

`A031874(n+1)-1`
-/

namespace A079430.P17440015029490503528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031874 (n + 1) - 1

end

end A079430.P17440015029490503528

/-! ## A079430.P16270401971346509126

`A023443(A031874(n+1))`
-/

namespace A079430.P16270401971346509126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A031874 (n + 1)).toNat

end

end A079430.P16270401971346509126

/-! ## A079430.P9693018099920938281

`record[Δ[A031874(A100727(n))]]`
-/

namespace A079430.P9693018099920938281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031874 (A100727 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079430.P9693018099920938281

/-! ## A079430.P16329421974850826048

`record[Δ[A031874(A152271(n))]]`
-/

namespace A079430.P16329421974850826048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031874 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079430.P16329421974850826048

/-!
# A079431: Least m>n with same smallest odd prime factor as n.

The programs for A079431, there is no canonical definition to state claims against.
-/

/-! ## A079431.P17531362138332629035

`A031285(3*n+2-A222257(n))`
-/

namespace A079431.P17531362138332629035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 ((3 * n + 2 : ℤ) - A222257 n).toNat

end

end A079431.P17531362138332629035

/-! ## A079431.P5906949958157518530

`n%A008578(A232609(n+1))+2+n`
-/

namespace A079431.P5906949958157518530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A008578 (A232609 (n + 1)).toNat) + 2 + (n : ℤ)

end

end A079431.P5906949958157518530

/-! ## A079431.P153378024980371665

`A244477(A113655(n+1))+A000005(A011782(n+1))`
-/

namespace A079431.P153378024980371665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244477 (A113655 (n + 1)).toNat + A000005 (A011782 (n + 1)).toNat

end

end A079431.P153378024980371665

/-! ## A079431.P17233593002722896163

`A244477(A113655(n+1))+A001222(2^(n+1))`
-/

namespace A079431.P17233593002722896163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244477 (A113655 (n + 1)).toNat + A001222 (2 ^ (n + 1))

end

end A079431.P17233593002722896163

/-! ## A079431.P17049052977261193229

`A244477(A113655(n+1))+A057427(A000219(n))+n`
-/

namespace A079431.P17049052977261193229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244477 (A113655 (n + 1)).toNat + (A057427 (A000219 n).toNat + (n : ℤ))

end

end A079431.P17049052977261193229

/-!
# A079432: a(n) = A079431(A079431(n)).

The programs for A079432, there is no canonical definition to state claims against.
-/

/-! ## A079432.P5226820615814323630

`A079431(A079431(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A079432.P5226820615814323630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079431 (A079431 (n + 1)).toNat

end

end A079432.P5226820615814323630

/-!
# A079433: Marks on lexicographically earliest 12-mark optimal Golomb ruler.

The programs for A079433, there is no canonical definition to state claims against.
-/

/-! ## A079433.P12678939973387644973

`A106683(n+67)`
-/

namespace A079433.P12678939973387644973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106683 (n + 67)

end

end A079433.P12678939973387644973

/-! ## A079433.P6370764750852817325

`A031875(n+1)-1`
-/

namespace A079433.P6370764750852817325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031875 (n + 1) - 1

end

end A079433.P6370764750852817325

/-! ## A079433.P7146777182429254868

`A023443(A031875(n+1))`
-/

namespace A079433.P7146777182429254868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A031875 (n + 1)).toNat

end

end A079433.P7146777182429254868

/-! ## A079433.P3449120331924453915

`record[Δ[A031875(A100727(n))]]`
-/

namespace A079433.P3449120331924453915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031875 (A100727 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079433.P3449120331924453915

/-! ## A079433.P6499064385762066723

`record[Δ[A031875(A152271(n))]]`
-/

namespace A079433.P6499064385762066723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031875 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079433.P6499064385762066723

/-!
# A079434: Marks on lexicographically earliest 13-mark optimal Golomb ruler.

The programs for A079434, there is no canonical definition to state claims against.
-/

/-! ## A079434.P8679228617363463263

`A106683(n+79)`
-/

namespace A079434.P8679228617363463263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106683 (n + 79)

end

end A079434.P8679228617363463263

/-!
# A079435: Marks on lexicographically earliest 14-mark optimal Golomb ruler.

The programs for A079435, there is no canonical definition to state claims against.
-/

/-! ## A079435.P18046355891911255738

`A106683(n+92)`
-/

namespace A079435.P18046355891911255738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106683 (n + 92)

end

end A079435.P18046355891911255738

/-!
# A079436: Full Łukasiewicz word for each rooted plane tree (interpretation e in Stanley's exercise 19) encoded by A014486 (or A063171).

The programs for A079436, there is no canonical definition to state claims against.
-/

/-! ## A079436.P14995478186562502062

`10*A071153(n)`
-/

namespace A079436.P14995478186562502062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A071153 n

end

end A079436.P14995478186562502062

/-! ## A079436.P10653530731005570651

`A008592(A071153(n))`
-/

namespace A079436.P10653530731005570651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A071153 n).toNat

end

end A079436.P10653530731005570651

/-! ## A079436.P397104867109179352

`A108773(A071153(n))-A072643(n)`
-/

namespace A079436.P397104867109179352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108773 (A071153 n).toNat - A072643 n

end

end A079436.P397104867109179352

/-!
# A079437: Number of cycles in range [A014137(n-1)..A014138(n-1)] of permutation A071661.

The programs for A079437, there is no canonical definition to state claims against.
-/

/-! ## A079437.P11992757776672871292

`A081150(n)+A057507(n)`
-/

namespace A079437.P11992757776672871292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081150 n + A057507 n

end

end A079437.P11992757776672871292

/-! ## A079437.P5024501997278428310

`A081148(n)+2*A081150(n)`
-/

namespace A079437.P5024501997278428310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081148 n + 2 * A081150 n

end

end A079437.P5024501997278428310

/-! ## A079437.P17400893938783459417

`2*A057507(n)-A081148(n)`
-/

namespace A079437.P17400893938783459417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057507 n - A081148 n

end

end A079437.P17400893938783459417

/-! ## A079437.P17708209794568753974

`A081150(A071669(n))+A081150(n)+A081148(n)`
-/

namespace A079437.P17708209794568753974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081150 (A071669 n).toNat + (A081150 n + A081148 n)

end

end A079437.P17708209794568753974

/-! ## A079437.P12713111738299105272

`A081150(A071670(n))+A081150(n)+A081148(n)`
-/

namespace A079437.P12713111738299105272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081150 (A071670 n).toNat + (A081150 n + A081148 n)

end

end A079437.P12713111738299105272

/-!
# A079438: a(0) = a(1) = 1, a(n) = 2*(floor((n+1)/3) + (if n >= 14) (floor((n-10)/4) + floor((n-14)/8))).

The programs for A079438, there is no canonical definition to state claims against.
-/

/-! ## A079438.P816565717773255694

`floor(2/acot(A079440(n)))`
-/

namespace A079438.P816565717773255694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (A079440 n : ℝ)⌋

end

end A079438.P816565717773255694

/-! ## A079438.P11403283107475624397

`A004277(A079440(n))`
-/

namespace A079438.P11403283107475624397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A079440 n).toNat

end

end A079438.P11403283107475624397

/-! ## A079438.P6335802570066680525

`A004275(A079440(n)+1)`
-/

namespace A079438.P6335802570066680525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A079440 n + 1).toNat

end

end A079438.P6335802570066680525

/-! ## A079438.P16231090312904697539

`A028310(2*A079440(n))`
-/

namespace A079438.P16231090312904697539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * A079440 n).toNat

end

end A079438.P16231090312904697539

/-! ## A079438.P9653023423549946801

`A014681(2*A079440(n))+1`
-/

namespace A079438.P9653023423549946801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A079440 n).toNat + 1

end

end A079438.P9653023423549946801

/-! ## A079438.P4424743247869295310

`A014681(A079440(n)+A079440(n))+1`
-/

namespace A079438.P4424743247869295310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A079440 n + A079440 n).toNat + 1

end

end A079438.P4424743247869295310

/-! ## A079438.P3213803350183988047

`A065033(4*A079440(n))`
-/

namespace A079438.P3213803350183988047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (4 * A079440 n).toNat

end

end A079438.P3213803350183988047

/-! ## A079438.P18412698828452694020

`A123108(4*A079440(n))`
-/

namespace A079438.P18412698828452694020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (4 * A079440 n).toNat

end

end A079438.P18412698828452694020

/-! ## A079438.P3678666767643383843

`A000267(A079440(n)²)`
-/

namespace A079438.P3678666767643383843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A079440 n ^ 2).toNat

end

end A079438.P3678666767643383843

/-!
# A079439: Longest cycle in range [A014137(n-1)..A014138(n-1)] of permutation A071661.

The programs for A079439, there is no canonical definition to state claims against.
-/

/-! ## A079439.P12969026596799490808

`A194832(A261431(n)+A247302(3*n))`
-/

namespace A079439.P12969026596799490808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (A261431 n + A247302 (3 * n)).toNat

end

end A079439.P12969026596799490808

/-! ## A079439.P16499993101487023041

`A055087(abs(A323989(n+1)-A032123(n))+1)+1`
-/

namespace A079439.P16499993101487023041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 (|A323989 (n + 1) - A032123 n| + 1).toNat + 1

end

end A079439.P16499993101487023041

/-!
# A079440: Number of transpositions (2-cycles) in range [A014137(n-1)..A014138(n-1)] of permutation A057505 (= Donaghey's automorphism M).

The programs for A079440, there is no canonical definition to state claims against.
-/

/-! ## A079440.P2210449795309653142

`floor(A079438(n)/2)`
-/

namespace A079440.P2210449795309653142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A079438 n : ℚ) / 2⌋

end

end A079440.P2210449795309653142

/-! ## A079440.P5292213881383533804

`A001057(A079438(n)-1)`
-/

namespace A079440.P5292213881383533804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A079438 n - 1).toNat

end

end A079440.P5292213881383533804

/-! ## A079440.P6232548078818344914

`A004526(A079438(n))`
-/

namespace A079440.P6232548078818344914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A079438 n).toNat

end

end A079440.P6232548078818344914

/-! ## A079440.P647373958613871753

`A004524(A079438(n)+1)`
-/

namespace A079440.P647373958613871753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A079438 n + 1).toNat

end

end A079440.P647373958613871753

/-! ## A079440.P16849063539352274987

`A061721(A079438(n)+1)`
-/

namespace A079440.P16849063539352274987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061721 (A079438 n + 1).toNat

end

end A079440.P16849063539352274987

/-! ## A079440.P5021977337000333815

`A004524(or(1, A079438(n)))`
-/

namespace A079440.P5021977337000333815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lor 1 (A079438 n)).toNat

end

end A079440.P5021977337000333815

/-! ## A079440.P4292879977490503620

`A003602(A079438(n)+1)-1`
-/

namespace A079440.P4292879977490503620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A079438 n + 1).toNat - 1

end

end A079440.P4292879977490503620

/-! ## A079440.P1865090946452636856

`A002265(2*A079438(n))`
-/

namespace A079440.P1865090946452636856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A079438 n).toNat

end

end A079440.P1865090946452636856

/-! ## A079440.P10135410264301614239

`A008615(3*A079438(n))`
-/

namespace A079440.P10135410264301614239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A079438 n).toNat

end

end A079440.P10135410264301614239

/-! ## A079440.P5863872242998510257

`A337101(A079438(n)²)`
-/

namespace A079440.P5863872242998510257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (A079438 n ^ 2).toNat

end

end A079440.P5863872242998510257

/-!
# A079441: Number of cycles in range [A014137(n-1)..A014138(n-1)] of permutation A071663.

The programs for A079441, there is no canonical definition to state claims against.
-/

/-! ## A079441.P10883799612968840557

`A261387(A005382(n+1)+floor(exp(n)))`
-/

namespace A079441.P10883799612968840557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261387 (A005382 (n + 1) + ⌊Real.exp (n : ℝ)⌋).toNat

end

end A079441.P10883799612968840557

/-! ## A079441.P15253968787863722300

`A273735(3*n+1)%A273684(2*n+1)`
-/

namespace A079441.P15253968787863722300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273735 (3 * n + 1)) (A273684 (2 * n + 1))

end

end A079441.P15253968787863722300

/-! ## A079441.P16767135223702651465

`A273735(A290684(n)+A008486(n))`
-/

namespace A079441.P16767135223702651465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273735 (A290684 n + A008486 n).toNat

end

end A079441.P16767135223702651465

/-! ## A079441.P428400549478086120

`A131883(A055819(n))-A209229(n)`
-/

namespace A079441.P428400549478086120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131883 (A055819 n).toNat - A209229 n

end

end A079441.P428400549478086120

/-!
# A079442: Number of fixed points in range [A014137(n-1)..A014138(n)] of permutation A071663.

The programs for A079442, there is no canonical definition to state claims against.
-/

/-! ## A079442.P12284273711378316281

`A316355(A077169(n)*A097331(n))`
-/

namespace A079442.P12284273711378316281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (A077169 n * A097331 n).toNat

end

end A079442.P12284273711378316281

/-!
# A079443: The longest cycle in range [A014137(n-1)..A014138(n-1)] of permutation A071663.

The programs for A079443, there is no canonical definition to state claims against.
-/

/-! ## A079443.P4430352469865551231

`A284579(A307571(n)+A000225(n))`
-/

namespace A079443.P4430352469865551231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284579 (A307571 n + A000225 n).toNat

end

end A079443.P4430352469865551231

/-! ## A079443.P3121910523001942866

`A284579(A149877(n)+A054533(n+1))`
-/

namespace A079443.P3121910523001942866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284579 (A149877 n + A054533 (n + 1)).toNat

end

end A079443.P3121910523001942866

/-! ## A079443.P19008916308946244

`(A175186(A324840(n+1))+1)*A278949(n)`
-/

namespace A079443.P19008916308946244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A175186 (A324840 (n + 1)).toNat + 1) * A278949 n

end

end A079443.P19008916308946244

/-!
# A079444: Number of 3-cycles in range [A014137(2n+2)..A014138(2n+2)] of permutation A057505 (= Donaghey's automorphism M).

The programs for A079444, there is no canonical definition to state claims against.
-/

/-! ## A079444.P8380369978832783860

`A079442(2*n+3)/3`
-/

namespace A079444.P8380369978832783860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079442 (2 * n + 3) : ℚ) / 3

end

end A079444.P8380369978832783860

/-! ## A079444.P12413298670952613990

`ogf((1+x+x^2+x^3+3x^4-x^5+3x^6+x^7)/(1-2x))`
-/

namespace A079444.P12413298670952613990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, 1, 3, -1, 3, 1] [1, -2] n

end

end A079444.P12413298670952613990

/-! ## A079444.P12912436398184780080

`A381822(2^n)`
-/

namespace A079444.P12912436398184780080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381822 (2 ^ n)

end

end A079444.P12912436398184780080

/-! ## A079444.P14782912738892306840

`or(1, A026444(2^n))`
-/

namespace A079444.P14782912738892306840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A026444 (2 ^ n))

end

end A079444.P14782912738892306840

/-!
# A079445: phi(n)*(n-phi(n))-1 is prime.

The programs for A079445, there is no canonical definition to state claims against.
-/

/-! ## A079445.P18002279273770894824

`lt[A178834(n+4), A008316(A098548(2*n+1))]`
-/

namespace A079445.P18002279273770894824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178834 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008316 (A098548 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079445.P18002279273770894824

/-! ## A079445.P721431026144733764

`lt[A214825(2*(n+1)), A008316(A098548(2*n+1))]`
-/

namespace A079445.P721431026144733764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214825 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008316 (A098548 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079445.P721431026144733764

/-!
# A079446: Integers k such that phi(k)*(k-phi(k))+1 is prime.

The programs for A079446, there is no canonical definition to state claims against.
-/

/-! ## A079446.P12887601730980577944

`lt[A038106(A141256(3*n+1)), A115846(n)]`
-/

namespace A079446.P12887601730980577944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038106 (A141256 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079446.P12887601730980577944

/-!
# A079447: Primes p such that there is an integer k satisfying p = floor(k*H(k)) where H(k) denotes the k-th harmonic number (i.e., H(k) = 1 + 1/2 + 1/3 + ... + 1/k).

The programs for A079447, the canonical program `A079447.P17945913691685440795` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079447 has offset 1).

The definition of A079447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1010 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079447.P17945913691685440795

`p?[floor((n+1)*∑[1/(n+1)])]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079447

/-- `p?[floor((n+1)*∑[1/(n+1)])]` -/
def P17945913691685440795.Spec : Prop :=
  ∀ n, P17945913691685440795.a n = A079447 (n + 1)

theorem P17945913691685440795.correct : P17945913691685440795.Spec := by
  intro n
  simp only [A079447, Nat.add_sub_cancel]

end A079447

/-! ## A079447.P2093095076186547319

`filter[A052488(n+1), A010051(#)]`
-/

namespace A079447.P2093095076186547319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A079447.P2093095076186547319

namespace A079447

/-- `filter[A052488(n+1), A010051(#)]` -/
def P2093095076186547319.Spec : Prop :=
  ∀ n, P2093095076186547319.a n = A079447 (n + 1)

end A079447

/-! ## A079447.P11423316721551909997

`∩[A000040(n+1), A052488(n+1)]`
-/

namespace A079447.P11423316721551909997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079447.P11423316721551909997

namespace A079447

/-- `∩[A000040(n+1), A052488(n+1)]` -/
def P11423316721551909997.Spec : Prop :=
  ∀ n, (P11423316721551909997.a n : ℤ) = A079447 (n + 1)

end A079447

/-! ## A079447.P4632050947236285522

`∩[A051948(n+1), A052488(n+1)]`
-/

namespace A079447.P4632050947236285522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079447.P4632050947236285522

namespace A079447

/-- `∩[A051948(n+1), A052488(n+1)]` -/
def P4632050947236285522.Spec : Prop :=
  ∀ n, (P4632050947236285522.a n : ℤ) = A079447 (n + 1)

end A079447

/-! ## A079447.P5369843157712827369

`∩[A052488(n+1), A053813(n+1)]`
-/

namespace A079447.P5369843157712827369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079447.P5369843157712827369

namespace A079447

/-- `∩[A052488(n+1), A053813(n+1)]` -/
def P5369843157712827369.Spec : Prop :=
  ∀ n, (P5369843157712827369.a n : ℤ) = A079447 (n + 1)

end A079447

/-! ## A079447.P10824955868095302318

`∩[A052488(n+1), A064728(n+1)]`
-/

namespace A079447.P10824955868095302318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079447.P10824955868095302318

namespace A079447

/-- `∩[A052488(n+1), A064728(n+1)]` -/
def P10824955868095302318.Spec : Prop :=
  ∀ n, (P10824955868095302318.a n : ℤ) = A079447 (n + 1)

end A079447

/-! ## A079447.P6990145225118308809

`∩[A052488(n+1), A065091(n+1)]`
-/

namespace A079447.P6990145225118308809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079447.P6990145225118308809

namespace A079447

/-- `∩[A052488(n+1), A065091(n+1)]` -/
def P6990145225118308809.Spec : Prop :=
  ∀ n, (P6990145225118308809.a n : ℤ) = A079447 (n + 1)

end A079447

/-! ## A079447.P1765619896090425940

`∩[A052488(n+1), A065396(n+1)]`
-/

namespace A079447.P1765619896090425940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079447.P1765619896090425940

namespace A079447

/-- `∩[A052488(n+1), A065396(n+1)]` -/
def P1765619896090425940.Spec : Prop :=
  ∀ n, (P1765619896090425940.a n : ℤ) = A079447 (n + 1)

end A079447

/-! ## A079447.P11411485373057346320

`∩[A052488(n+1), A116974(n+1)]`
-/

namespace A079447.P11411485373057346320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079447.P11411485373057346320

namespace A079447

/-- `∩[A052488(n+1), A116974(n+1)]` -/
def P11411485373057346320.Spec : Prop :=
  ∀ n, (P11411485373057346320.a n : ℤ) = A079447 (n + 1)

end A079447

/-! ## A079447.P17701340891567307529

`∩[A052488(n+1), A161346(n+1)]`
-/

namespace A079447.P17701340891567307529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079447.P17701340891567307529

namespace A079447

/-- `∩[A052488(n+1), A161346(n+1)]` -/
def P17701340891567307529.Spec : Prop :=
  ∀ n, (P17701340891567307529.a n : ℤ) = A079447 (n + 1)

end A079447

/-! ## A079447.P11410643127064496282

`∩[A052488(n+1), A175787(n+1)]`
-/

namespace A079447.P11410643127064496282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079447.P11410643127064496282

namespace A079447

/-- `∩[A052488(n+1), A175787(n+1)]` -/
def P11410643127064496282.Spec : Prop :=
  ∀ n, (P11410643127064496282.a n : ℤ) = A079447 (n + 1)

end A079447

/-! ## A079447.P6875949690462931353

`∩[A052488(n+1), A182986(n+1)]`
-/

namespace A079447.P6875949690462931353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079447.P6875949690462931353

namespace A079447

/-- `∩[A052488(n+1), A182986(n+1)]` -/
def P6875949690462931353.Spec : Prop :=
  ∀ n, (P6875949690462931353.a n : ℤ) = A079447 (n + 1)

end A079447

/-! ## A079447.P12574865167974237760

`∩[A052488(n+1), A348283(n+1)]`
-/

namespace A079447.P12574865167974237760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079447.P12574865167974237760

namespace A079447

/-- `∩[A052488(n+1), A348283(n+1)]` -/
def P12574865167974237760.Spec : Prop :=
  ∀ n, (P12574865167974237760.a n : ℤ) = A079447 (n + 1)

end A079447

/-! ## A079447.P8337021652880726975

`∩[A052488(n+1), A351398(n+1)]`
-/

namespace A079447.P8337021652880726975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079447.P8337021652880726975

namespace A079447

/-- `∩[A052488(n+1), A351398(n+1)]` -/
def P8337021652880726975.Spec : Prop :=
  ∀ n, (P8337021652880726975.a n : ℤ) = A079447 (n + 1)

end A079447

/-! ## A079447.P2931824252974284013

`filter[A052488(n+1), A323153(#)]`
-/

namespace A079447.P2931824252974284013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A079447.P2931824252974284013

namespace A079447

/-- `filter[A052488(n+1), A323153(#)]` -/
def P2931824252974284013.Spec : Prop :=
  ∀ n, P2931824252974284013.a n = A079447 (n + 1)

end A079447

/-! ## A079447.P7613606083787355552

`filter[A052488(n+2), A323152(#)]`
-/

namespace A079447.P7613606083787355552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052488 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A079447.P7613606083787355552

namespace A079447

/-- `filter[A052488(n+2), A323152(#)]` -/
def P7613606083787355552.Spec : Prop :=
  ∀ n, P7613606083787355552.a n = A079447 (n + 1)

end A079447

/-! ## A079447.P1885245227356759790

`filter[A052488(n+2), A080339(#)]`
-/

namespace A079447.P1885245227356759790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052488 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A079447.P1885245227356759790

namespace A079447

/-- `filter[A052488(n+2), A080339(#)]` -/
def P1885245227356759790.Spec : Prop :=
  ∀ n, P1885245227356759790.a n = A079447 (n + 1)

end A079447

/-! ## A079447.P6987654396371054418

`filter[A052488(n+2), A080545(#)]`
-/

namespace A079447.P6987654396371054418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052488 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A079447.P6987654396371054418

namespace A079447

/-- `filter[A052488(n+2), A080545(#)]` -/
def P6987654396371054418.Spec : Prop :=
  ∀ n, P6987654396371054418.a n = A079447 (n + 1)

end A079447

/-! ## A079447.P163156966798883756

`∩[A052488(n+1), A240960(n+1)]`
-/

namespace A079447.P163156966798883756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079447.P163156966798883756

namespace A079447

/-- `∩[A052488(n+1), A240960(n+1)]` -/
def P163156966798883756.Spec : Prop :=
  ∀ n, (P163156966798883756.a n : ℤ) = A079447 (n + 1)

end A079447

/-!
# A079448: Primes p such that there is at least one integer x satisfying p = x*tau(x)-1 where tau(x) = A000005(x), the number of divisors of x.

The programs for A079448, there is no canonical definition to state claims against.
-/

/-! ## A079448.P3414547396292215519

`p?[A036438(n+1)-1]`
-/

namespace A079448.P3414547396292215519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036438 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079448.P3414547396292215519

/-! ## A079448.P7353164224977710592

`record[A006530(A036438(n+2)-1)]`
-/

namespace A079448.P7353164224977710592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A036438 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079448.P7353164224977710592

/-! ## A079448.P11261780384693018350

`record[A020639(A036438(n+2)-1)]`
-/

namespace A079448.P11261780384693018350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A036438 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079448.P11261780384693018350

/-! ## A079448.P3694245788401788616

`∩[A000040(n+1), A036438(n+1)-1]`
-/

namespace A079448.P3694245788401788616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036438 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079448.P3694245788401788616

/-! ## A079448.P800060223967137102

`p?[A023443(A036438(n+1))]`
-/

namespace A079448.P800060223967137102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A036438 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079448.P800060223967137102

/-! ## A079448.P6280553433880631843

`p?[A014681(A036438(n+2))]`
-/

namespace A079448.P6280553433880631843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A036438 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079448.P6280553433880631843

/-! ## A079448.P7681190737768294275

`record[A014963(A036438(n+2)-1)]`
-/

namespace A079448.P7681190737768294275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A036438 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079448.P7681190737768294275

/-! ## A079448.P772475960006720411

`record[A039634(A036438(n+2)-1)]`
-/

namespace A079448.P772475960006720411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (A036438 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079448.P772475960006720411

/-! ## A079448.P17026126494032559201

`record[A089026(A036438(n+2)-1)]`
-/

namespace A079448.P17026126494032559201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (A036438 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079448.P17026126494032559201

/-!
# A079449: Primes p such that there is at least one integer x satisfying p = x*tau(x)+1 where tau(x) = A000005(x), the number of divisors of x.

The programs for A079449, there is no canonical definition to state claims against.
-/

/-! ## A079449.P4767256795175147362

`p?[A036438(n+1)+1]`
-/

namespace A079449.P4767256795175147362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036438 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079449.P4767256795175147362

/-! ## A079449.P14617891249550878291

`record[A001414(A036438(n+1)+1)]`
-/

namespace A079449.P14617891249550878291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A036438 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079449.P14617891249550878291

/-! ## A079449.P4643652234157553115

`record[A006530(A036438(n+1)+1)]`
-/

namespace A079449.P4643652234157553115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A036438 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079449.P4643652234157553115

/-! ## A079449.P7730681375419204515

`record[A020639(A036438(n+1)+1)]`
-/

namespace A079449.P7730681375419204515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A036438 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079449.P7730681375419204515

/-! ## A079449.P17960003461216787759

`∩[A000040(n+1), A036438(n+1)+1]`
-/

namespace A079449.P17960003461216787759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036438 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079449.P17960003461216787759

/-! ## A079449.P16221180374001097639

`record[A014963(A036438(n+1)+1)]`
-/

namespace A079449.P16221180374001097639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A036438 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079449.P16221180374001097639

/-! ## A079449.P4440217403214860636

`record[A039634(A036438(n+1)+1)]`
-/

namespace A079449.P4440217403214860636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (A036438 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079449.P4440217403214860636

/-! ## A079449.P12609479678421906376

`record[A089026(A036438(n+1)+1)]`
-/

namespace A079449.P12609479678421906376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (A036438 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079449.P12609479678421906376

/-! ## A079449.P167247768555668882

`A008619(record[A087349(A036438(n+1))])`
-/

namespace A079449.P167247768555668882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087349 (A036438 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A079449.P167247768555668882

/-!
# A079450: a(n) = 2^(n-1)*u(n) where u(1)=1 and u(n) = frac(3/2*u(n-1)) + 1.

The programs for A079450, the canonical program `A079450.P14408967597039693827` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079450 has offset 1).

The definition of A079450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079450.P14408967597039693827

`(3*a(n-1))%(2^n)+2^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079450

/-- `(3*a(n-1))%(2^n)+2^n` -/
def P14408967597039693827.Spec : Prop :=
  ∀ n, (P14408967597039693827.a n : ℤ) = A079450 (n + 1)

theorem P14408967597039693827.correct : P14408967597039693827.Spec := by
  intro n
  simp only [A079450, Nat.add_sub_cancel]

end A079450

/-! ## A079450.P16828577638300190448

`or(3*a(n-1)-2^n, 2^n)` with `a(0)=1`
-/

namespace A079450.P16828577638300190448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (3 * a (n - 1) - (2 ^ n : ℤ)) (2 ^ n : ℤ)

end

end A079450.P16828577638300190448

namespace A079450

/-- `or(3*a(n-1)-2^n, 2^n)` -/
def P16828577638300190448.Spec : Prop :=
  ∀ n, P16828577638300190448.a n = A079450 (n + 1)

end A079450

/-! ## A079450.P8986626058019591544

`or((3*a(n-1))%A000079(n), A000079(n))` with `a(0)=1`
-/

namespace A079450.P8986626058019591544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (Int.tmod (3 * a (n - 1)) (A000079 n)) (A000079 n)

end

end A079450.P8986626058019591544

namespace A079450

/-- `or((3*a(n-1))%A000079(n), A000079(n))` -/
def P8986626058019591544.Spec : Prop :=
  ∀ n, P8986626058019591544.a n = A079450 (n + 1)

end A079450

/-! ## A079450.P14816882038834234771

`A000041(2*n+1)-A085977(A107466(2*n+1))`
-/

namespace A079450.P14816882038834234771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n + 1) - A085977 (A107466 (2 * n + 1)).toNat

end

end A079450.P14816882038834234771

namespace A079450

/-- `A000041(2*n+1)-A085977(A107466(2*n+1))` -/
def P14816882038834234771.Spec : Prop :=
  ∀ n, P14816882038834234771.a n = A079450 (n + 1)

end A079450

/-!
# A079451: Largest prime dividing the n-th Lucas number (A000032); 1 when no such prime exists.

The programs for A079451, the canonical program `A079451.P9098584017831837256` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079451 has offset 0).

The definition of A079451 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A079451.P9098584017831837256

`A006530(A000032(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A079451

/-- `A006530(A000032(n))` -/
def P9098584017831837256.Spec : Prop :=
  ∀ n, P9098584017831837256.a n = A079451 n

theorem P9098584017831837256.correct : P9098584017831837256.Spec := by
  intro n
  simp only [A079451]

end A079451

/-! ## A079451.P15385300635938030596

`A006530(sqrt(A001254(n)))`
-/

namespace A079451.P15385300635938030596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.sqrt (A001254 n : ℝ))).toNat

end

end A079451.P15385300635938030596

namespace A079451

/-- `A006530(sqrt(A001254(n)))` -/
def P15385300635938030596.Spec : Prop :=
  ∀ n, P15385300635938030596.a n = A079451 n

end A079451

/-! ## A079451.P11661314306182925532

`A006530(Δ[A001610(n)])`
-/

namespace A079451.P11661314306182925532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A079451.P11661314306182925532

namespace A079451

/-- `A006530(Δ[A001610(n)])` -/
def P11661314306182925532.Spec : Prop :=
  ∀ n, P11661314306182925532.a n = A079451 n

end A079451

/-! ## A079451.P4675347449923493559

`A006530(A001612(n)-1)`
-/

namespace A079451.P4675347449923493559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001612 n - 1).toNat

end

end A079451.P4675347449923493559

namespace A079451

/-- `A006530(A001612(n)-1)` -/
def P4675347449923493559.Spec : Prop :=
  ∀ n, P4675347449923493559.a n = A079451 n

end A079451

/-! ## A079451.P14159592511847091514

`A006530(A329723(n+2))`
-/

namespace A079451.P14159592511847091514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A329723 (n + 2)).toNat

end

end A079451.P14159592511847091514

namespace A079451

/-- `A006530(A329723(n+2))` -/
def P14159592511847091514.Spec : Prop :=
  ∀ n, P14159592511847091514.a n = A079451 n

end A079451

/-!
# A079452: Number of unlabeled and connected graphs on n vertices which are chordal and P5-free.

The programs for A079452, there is no canonical definition to state claims against.
-/

/-! ## A079452.P12698757718518908378

`A106432(round(Δ[2^n/sqrt(5)]²)+n%2)`
-/

namespace A079452.P12698757718518908378
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℝ) / Real.sqrt (5 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n) ^ 2) + ((n % 2 : ℕ) : ℤ)).toNat

end

end A079452.P12698757718518908378

/-! ## A079452.P8812698970201531039

`A026834(A150186(n))`
-/

namespace A079452.P8812698970201531039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026834 (A150186 n).toNat

end

end A079452.P8812698970201531039

/-! ## A079452.P3314016375945447132

`A026834(A150187(n))`
-/

namespace A079452.P3314016375945447132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026834 (A150187 n).toNat

end

end A079452.P3314016375945447132

/-!
# A079453: Number of unlabeled and connected graphs on n vertices which are HH-free ("house-hole-free").

The programs for A079453, there is no canonical definition to state claims against.
-/

/-! ## A079453.P16570621156990620779

`A008624(A263575(n)+A000142(n))`
-/

namespace A079453.P16570621156990620779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A263575 n + A000142 n).toNat

end

end A079453.P16570621156990620779

/-! ## A079453.P14340873768004763354

`A266858(n)+A230224(A161132(n))`
-/

namespace A079453.P14340873768004763354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266858 n + A230224 (A161132 n).toNat

end

end A079453.P14340873768004763354

/-! ## A079453.P15587988930330019875

`A194227(A000248(n))+A032742(n+1)`
-/

namespace A079453.P15587988930330019875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194227 (A000248 n).toNat + A032742 (n + 1)

end

end A079453.P15587988930330019875

/-!
# A079454: Marks on lexicographically earliest 15-mark optimal Golomb ruler.

The programs for A079454, there is no canonical definition to state claims against.
-/

/-! ## A079454.P2419983962834895483

`A106683(A135600(n+7))`
-/

namespace A079454.P2419983962834895483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106683 (A135600 (n + 7)).toNat

end

end A079454.P2419983962834895483

/-! ## A079454.P7624977069855713942

`record[A025437(A003056(n))*A106683(n+1)]`
-/

namespace A079454.P7624977069855713942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 (A003056 n).toNat * A106683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079454.P7624977069855713942

/-!
# A079455: Number of unlabeled and connected graphs on n vertices which are long hole-free (i.e., the graph contains no induced cycle of size 5 or more).

The programs for A079455, there is no canonical definition to state claims against.
-/

/-! ## A079455.P14078637395654602481

`A230294(A125276(n))+1`
-/

namespace A079455.P14078637395654602481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230294 (A125276 n).toNat + 1

end

end A079455.P14078637395654602481

/-! ## A079455.P14008140263577829123

`A000142(n)-A004198(A015540(n))`
-/

namespace A079455.P14008140263577829123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A004198 (A015540 n).toNat

end

end A079455.P14008140263577829123

/-!
# A079456: Number of unlabeled and connected graphs which are complements of chordal graphs.

The programs for A079456, there is no canonical definition to state claims against.
-/

/-! ## A079456.P3266961522423010377

`A157271(A123473(n+1))`
-/

namespace A079456.P3266961522423010377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A123473 (n + 1)).toNat

end

end A079456.P3266961522423010377

/-! ## A079456.P103880037715552619

`A255072(A004211(n)+n)`
-/

namespace A079456.P103880037715552619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A004211 n + (n : ℤ)).toNat

end

end A079456.P103880037715552619

/-! ## A079456.P6270608212347643234

`A140471(∑[A067186(n+1)])`
-/

namespace A079456.P6270608212347643234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140471 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A079456.P6270608212347643234

/-!
# A079457: Number of unlabeled and connected graphs which are weakly chordal. (G is weakly chordal iff there are no induced cycles of size 5 or more in G nor in its complement.)

The programs for A079457, there is no canonical definition to state claims against.
-/

/-! ## A079457.P7768644757437228335

`A034887(A007841(n)+∑[n])`
-/

namespace A079457.P7768644757437228335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A007841 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A079457.P7768644757437228335

/-! ## A079457.P14836364640573043386

`A052433(n+1)-A052418(A023105(n))`
-/

namespace A079457.P14836364640573043386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052433 (n + 1) - A052418 (A023105 n).toNat

end

end A079457.P14836364640573043386

/-! ## A079457.P9910997821010811251

`A079455(n+1)-A321936(A000079(n))`
-/

namespace A079457.P9910997821010811251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079455 (n + 1) - A321936 (A000079 n).toNat

end

end A079457.P9910997821010811251

/-!
# A079458: Number of Gaussian integers in a reduced system modulo n.

The programs for A079458, the canonical program `A079458.P11569741083462391680` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079458 has offset 1).

The definition of A079458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079458.P7897071807418018454

`A204617(n+1)*A062570(n+1)`
-/

namespace A079458.P7897071807418018454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204617 (n + 1) * A062570 (n + 1)

end

end A079458.P7897071807418018454

namespace A079458

/-- `A204617(n+1)*A062570(n+1)` -/
def P7897071807418018454.Spec : Prop :=
  ∀ n, P7897071807418018454.a n = A079458 (n + 1)

end A079458

/-! ## A079458.P13821337267935786076

`Δ[A049690(n)]*A204617(n+1)`
-/

namespace A079458.P13821337267935786076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A204617 (n + 1)

end

end A079458.P13821337267935786076

namespace A079458

/-- `Δ[A049690(n)]*A204617(n+1)` -/
def P13821337267935786076.Spec : Prop :=
  ∀ n, P13821337267935786076.a n = A079458 (n + 1)

end A079458

/-! ## A079458.P16532987050108951300

`A000010(n+1)*A395768(n+1)`
-/

namespace A079458.P16532987050108951300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A395768 (n + 1)

end

end A079458.P16532987050108951300

namespace A079458

/-- `A000010(n+1)*A395768(n+1)` -/
def P16532987050108951300.Spec : Prop :=
  ∀ n, P16532987050108951300.a n = A079458 (n + 1)

end A079458

/-! ## A079458.P3765399455380521367

`A000010(2*(n+1))*A204617(n+1)`
-/

namespace A079458.P3765399455380521367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 1)) * A204617 (n + 1)

end

end A079458.P3765399455380521367

namespace A079458

/-- `A000010(2*(n+1))*A204617(n+1)` -/
def P3765399455380521367.Spec : Prop :=
  ∀ n, P3765399455380521367.a n = A079458 (n + 1)

end A079458

/-! ## A079458.P13478352423282061812

`(A086932(n+1)+A060968(n+1))/2*A000010(n+1)`
-/

namespace A079458.P13478352423282061812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086932 (n + 1) + A060968 (n + 1) : ℚ) / 2 * (A000010 (n + 1) : ℚ)

end

end A079458.P13478352423282061812

namespace A079458

/-- `(A086932(n+1)+A060968(n+1))/2*A000010(n+1)` -/
def P13478352423282061812.Spec : Prop :=
  ∀ n, P13478352423282061812.a n = (A079458 (n + 1) : ℚ)

end A079458

/-! ## A079458.P11569741083462391680

`A096445(n+1)*A140434(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A079458

/-- `A096445(n+1)*A140434(n+1)` -/
def P11569741083462391680.Spec : Prop :=
  ∀ n, P11569741083462391680.a n = A079458 (n + 1)

theorem P11569741083462391680.correct : P11569741083462391680.Spec := by
  intro n
  simp only [A079458, Nat.add_sub_cancel]

end A079458

/-! ## A079458.P15700515870548410535

`A239611(n+1)/A239614(n+1)`
-/

namespace A079458.P15700515870548410535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239611 (n + 1) : ℚ) / (A239614 (n + 1) : ℚ)

end

end A079458.P15700515870548410535

namespace A079458

/-- `A239611(n+1)/A239614(n+1)` -/
def P15700515870548410535.Spec : Prop :=
  ∀ n, P15700515870548410535.a n = (A079458 (n + 1) : ℚ)

end A079458

/-! ## A079458.P10856791149817984215

`A391110(A047808(n+1))`
-/

namespace A079458.P10856791149817984215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391110 (A047808 (n + 1)).toNat

end

end A079458.P10856791149817984215

namespace A079458

/-- `A391110(A047808(n+1))` -/
def P10856791149817984215.Spec : Prop :=
  ∀ n, P10856791149817984215.a n = A079458 (n + 1)

end A079458

/-! ## A079458.P12444699477412561871

`A000003((2*(n+1))²)*A000010(n+1)`
-/

namespace A079458.P12444699477412561871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000003 ((2 * (n + 1)) ^ 2) * A000010 (n + 1)

end

end A079458.P12444699477412561871

namespace A079458

/-- `A000003((2*(n+1))²)*A000010(n+1)` -/
def P12444699477412561871.Spec : Prop :=
  ∀ n, P12444699477412561871.a n = A079458 (n + 1)

end A079458

/-!
# A079460: Let r(n) be the real positive root of Sum_{k=1..n} x^k = 1, then a(n) = round(1/(r(n) - 1/2)).

The programs for A079460, the canonical program `A079460.P9773607769593027518` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079460 has offset 1).

The definition of A079460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079460.P9773607769593027518

`∑[or(∑[2^(n+1)], A193291(n+1))]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A079460

/-- `∑[or(∑[2^(n+1)], A193291(n+1))]` -/
def P9773607769593027518.Spec : Prop :=
  ∀ n, P9773607769593027518.a n = A079460 (n + 1)

theorem P9773607769593027518.correct : P9773607769593027518.Spec := by
  intro n
  simp only [A079460, Nat.add_sub_cancel]

end A079460

/-! ## A079460.P14768573135170398166

`A300403(n+1)+A145654(n+2)`
-/

namespace A079460.P14768573135170398166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300403 (n + 1) + A145654 (n + 2)

end

end A079460.P14768573135170398166

namespace A079460

/-- `A300403(n+1)+A145654(n+2)` -/
def P14768573135170398166.Spec : Prop :=
  ∀ n, P14768573135170398166.a n = A079460 (n + 1)

end A079460

/-! ## A079460.P14867524365826590518

`A300403(n+1)+A005803(n+3)`
-/

namespace A079460.P14867524365826590518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300403 (n + 1) + A005803 (n + 3)

end

end A079460.P14867524365826590518

namespace A079460

/-- `A300403(n+1)+A005803(n+3)` -/
def P14867524365826590518.Spec : Prop :=
  ∀ n, P14867524365826590518.a n = A079460 (n + 1)

end A079460

/-! ## A079460.P7777046882932571789

`A300403(n+1)+∑[∑[A011782(n+2)]]`
-/

namespace A079460.P7777046882932571789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300403 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079460.P7777046882932571789

namespace A079460

/-- `A300403(n+1)+∑[∑[A011782(n+2)]]` -/
def P7777046882932571789.Spec : Prop :=
  ∀ n, P7777046882932571789.a n = A079460 (n + 1)

end A079460

/-! ## A079460.P7599578998386361983

`A134021(n)+A005408(A000247(n+2))`
-/

namespace A079460.P7599578998386361983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 n + A005408 (A000247 (n + 2)).toNat

end

end A079460.P7599578998386361983

namespace A079460

/-- `A134021(n)+A005408(A000247(n+2))` -/
def P7599578998386361983.Spec : Prop :=
  ∀ n, P7599578998386361983.a n = A079460 (n + 1)

end A079460

/-!
# A079461: Coefficients of the polynomials in the numerator of the generating function x/(1-x-x^2) for the Fibonacci sequence and its successive derivatives starting with the constant.

The programs for A079461, there is no canonical definition to state claims against.
-/

/-! ## A079461.P4375997154991338520

`A078991(A061579(n+1)-1)`
-/

namespace A079461.P4375997154991338520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078991 (A061579 (n + 1) - 1).toNat

end

end A079461.P4375997154991338520

/-! ## A079461.P10581559587491679850

`A078991(A114327(n+1)+n)`
-/

namespace A079461.P10581559587491679850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078991 (A114327 (n + 1) + (n : ℤ)).toNat

end

end A079461.P10581559587491679850

/-!
# A079462: Nonzero coefficients of the polynomials in the numerator of the generating function x/(1-x-x^2) for the Fibonacci sequence and its successive derivatives starting with the constant.

The programs for A079462, there is no canonical definition to state claims against.
-/

/-! ## A079462.P2987683299122135894

`A079461(comp[∑[n-2]])`
-/

namespace A079462.P2987683299122135894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079461 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A079462.P2987683299122135894

/-! ## A079462.P3468979757008327448

`A078992(∑[2*n]%comp[∑[n]])`
-/

namespace A079462.P3468979757008327448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078992 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A079462.P3468979757008327448

/-! ## A079462.P8771861963830759575

`A078992(∑[char[∑[n]]]²-n-1)`
-/

namespace A079462.P8771861963830759575
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078992 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A079462.P8771861963830759575

/-! ## A079462.P15952079257508853401

`A078992(A061579(n))^A019426(2*n)`
-/

namespace A079462.P15952079257508853401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078992 (A061579 n).toNat : ℚ) ^ (A019426 (2 * n) : ℤ)

end

end A079462.P15952079257508853401

/-!
# A079464: Numbers k such that the "inventory" A063850 of k is prime.

The programs for A079464, there is no canonical definition to state claims against.
-/

/-! ## A079464.P17968244034205132081

`A036978(∑[A306753(A090181(n))])`
-/

namespace A079464.P17968244034205132081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306753 (A090181 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036978 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A079464.P17968244034205132081

/-! ## A079464.P3296069786802772882

`or(A036978(n+1), A269955(A269955(n)))`
-/

namespace A079464.P3296069786802772882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036978 (n + 1)) (A269955 (A269955 n).toNat)

end

end A079464.P3296069786802772882

/-! ## A079464.P9115708446438847121

`or(A036978(n+1), A321936(A241409(n)))`
-/

namespace A079464.P9115708446438847121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036978 (n + 1)) (A321936 (A241409 n).toNat)

end

end A079464.P9115708446438847121

/-!
# A079466: Numbers k such that the "inventory" A063850 of k is a palindrome.

The programs for A079466, there is no canonical definition to state claims against.
-/

/-! ## A079466.P3646215126628670859

`eq[n, A336956(A139337(n))]`
-/

namespace A079466.P3646215126628670859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336956 (A139337 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A079466.P3646215126628670859

/-!
# A079468: Number of unlabeled and connected graphs on n vertices which have no induced subgraph isomorphic to the 'fork' (fork = 4 vertices forming a path with a fifth vertex adjacent only to one of the non-end vertices).

The programs for A079468, there is no canonical definition to state claims against.
-/

/-! ## A079468.P14741718478860726125

`A108954(A000046(3*n)+n)`
-/

namespace A079468.P14741718478860726125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A000046 (3 * n) + (n : ℤ)).toNat

end

end A079468.P14741718478860726125

/-! ## A079468.P17929639388176552455

`A177479(n)-A089311(A177479(n))`
-/

namespace A079468.P17929639388176552455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177479 n - A089311 (A177479 n).toNat

end

end A079468.P17929639388176552455

/-!
# A079469: Number of unlabeled and connected graphs on n vertices which are semi-P4-sparse (G is semi-P4-sparse iff G has no induced P5, House, or complement of a fork).

The programs for A079469, there is no canonical definition to state claims against.
-/

/-! ## A079469.P1474136962643811401

`A157271(A148207(n+1))`
-/

namespace A079469.P1474136962643811401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A148207 (n + 1)).toNat

end

end A079469.P1474136962643811401

/-! ## A079469.P16525219833845999950

`A008676(A305336(n+1))`
-/

namespace A079469.P16525219833845999950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A305336 (n + 1)).toNat

end

end A079469.P16525219833845999950

/-! ## A079469.P14815660001406081351

`A001168(n)-A056558(A145086(n))`
-/

namespace A079469.P14815660001406081351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 n - A056558 (A145086 n).toNat

end

end A079469.P14815660001406081351

/-!
# A079470: Primes with prime inventory number (as in A063850).

The programs for A079470, there is no canonical definition to state claims against.
-/

/-! ## A079470.P4460796212432793122

`p?[A079464(n+1)]`
-/

namespace A079470.P4460796212432793122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079470.P4460796212432793122

/-! ## A079470.P14568211906430290167

`p?[record[A079464(A133310(n))]]`
-/

namespace A079470.P14568211906430290167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079464 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079470.P14568211906430290167

/-! ## A079470.P6577244879319617389

`∩[A000040(n+1), A079464(n+1)]`
-/

namespace A079470.P6577244879319617389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079470.P6577244879319617389

/-! ## A079470.P8258234989253527241

`∩[A004139(n+1), A079464(n+1)]`
-/

namespace A079470.P8258234989253527241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079470.P8258234989253527241

/-! ## A079470.P3385976029162775443

`∩[A045319(n+1), A079464(n+1)]`
-/

namespace A079470.P3385976029162775443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079470.P3385976029162775443

/-! ## A079470.P7109428817698493438

`∩[A051948(n+1), A079464(n+1)]`
-/

namespace A079470.P7109428817698493438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079470.P7109428817698493438

/-! ## A079470.P7976781273153247221

`∩[A053813(n+1), A079464(n+1)]`
-/

namespace A079470.P7976781273153247221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079470.P7976781273153247221

/-! ## A079470.P16654396438046538364

`∩[A065091(n+1), A079464(n+1)]`
-/

namespace A079470.P16654396438046538364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079470.P16654396438046538364

/-! ## A079470.P6177809473573989562

`∩[A079464(n+1), A106118(n+1)]`
-/

namespace A079470.P6177809473573989562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079470.P6177809473573989562

/-! ## A079470.P1981630113554726889

`∩[A079464(n+1), A116974(n+1)]`
-/

namespace A079470.P1981630113554726889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079470.P1981630113554726889

/-! ## A079470.P1663788046300873202

`∩[A079464(n+1), A140826(n+1)]`
-/

namespace A079470.P1663788046300873202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079470.P1663788046300873202

/-! ## A079470.P8615863932521156489

`∩[A079464(n+1), A175787(n+1)]`
-/

namespace A079470.P8615863932521156489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079470.P8615863932521156489

/-! ## A079470.P11021512723310516425

`∩[A079464(n+1), A182140(n+1)]`
-/

namespace A079470.P11021512723310516425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079470.P11021512723310516425

/-! ## A079470.P2321865830484421307

`∩[A079464(n+1), A182986(n+1)]`
-/

namespace A079470.P2321865830484421307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079470.P2321865830484421307

/-! ## A079470.P18063204729021484538

`∩[A079464(n+1), A197636(n+1)]`
-/

namespace A079470.P18063204729021484538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079470.P18063204729021484538

/-! ## A079470.P7353934778181664690

`record[A020639(A079464(n+2))]`
-/

namespace A079470.P7353934778181664690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A079464 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079470.P7353934778181664690

/-! ## A079470.P5094482750088930240

`filter[A079464(n+1), A010051(#)]`
-/

namespace A079470.P5094482750088930240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A079470.P5094482750088930240

/-! ## A079470.P6482790041405441519

`filter[A079464(n+1), A323153(#)]`
-/

namespace A079470.P6482790041405441519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A079470.P6482790041405441519

/-! ## A079470.P14924656612044574121

`filter[A079464(n+2), A323152(#)]`
-/

namespace A079470.P14924656612044574121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079464 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A079470.P14924656612044574121

/-! ## A079470.P3597039450683337644

`p?[record[A079464(A126759(n))]]`
-/

namespace A079470.P3597039450683337644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079464 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079470.P3597039450683337644

/-!
# A079471: Fixed points of reversed binary words in reversed lexicographic order.

The programs for A079471, the canonical program `A079471.P14388610421718853340` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079471 has offset 0).

The definition of A079471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079471.P14388610421718853340

`eq[and(n, -n), A000120(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A079471

/-- `eq[and(n, -n), A000120(n)]` -/
def P14388610421718853340.Spec : Prop :=
  ∀ n, (P14388610421718853340.a n : ℤ) = A079471 n

theorem P14388610421718853340.correct : P14388610421718853340.Spec := by
  intro n
  simp only [A079471]

end A079471

/-! ## A079471.P5006967903372822878

`eq[A092391(n), A285326(n)]`
-/

namespace A079471.P5006967903372822878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285326 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079471.P5006967903372822878

namespace A079471

/-- `eq[A092391(n), A285326(n)]` -/
def P5006967903372822878.Spec : Prop :=
  ∀ n, (P5006967903372822878.a n : ℤ) = A079471 n

end A079471

/-! ## A079471.P12680562907473807860

`eq[A129343(n), A324377(n)]`
-/

namespace A079471.P12680562907473807860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129343 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324377 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079471.P12680562907473807860

namespace A079471

/-- `eq[A129343(n), A324377(n)]` -/
def P12680562907473807860.Spec : Prop :=
  ∀ n, (P12680562907473807860.a n : ℤ) = A079471 n

end A079471

/-! ## A079471.P5517217217494184306

`eq[n, A000120(n)*A030101(A030101(n))]`
-/

namespace A079471.P5517217217494184306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A030101 (A030101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A079471.P5517217217494184306

namespace A079471

/-- `eq[n, A000120(n)*A030101(A030101(n))]` -/
def P5517217217494184306.Spec : Prop :=
  ∀ n, (P5517217217494184306.a n : ℤ) = A079471 n

end A079471

/-! ## A079471.P4460640246877821177

`eq[and(n, -n), A001222(A278222(n))]`
-/

namespace A079471.P4460640246877821177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079471.P4460640246877821177

namespace A079471

/-- `eq[and(n, -n), A001222(A278222(n))]` -/
def P4460640246877821177.Spec : Prop :=
  ∀ n, (P4460640246877821177.a n : ℤ) = A079471 n

end A079471

/-! ## A079471.P9023934704265320983

`eq[and(n, -n), A023416(A054429(2*n+1))]`
-/

namespace A079471.P9023934704265320983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A054429 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079471.P9023934704265320983

namespace A079471

/-- `eq[and(n, -n), A023416(A054429(2*n+1))]` -/
def P9023934704265320983.Spec : Prop :=
  ∀ n, (P9023934704265320983.a n : ℤ) = A079471 n

end A079471

/-!
# A079472: Number of perfect matchings on an n X n L-shaped graph.

The programs for A079472, the canonical program `A079472.P15749559243718195313` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079472 has offset 1).

The definition of A079472 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079472.P15749559243718195313

`2*A001654(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A079472

/-- `2*A001654(n)` -/
def P15749559243718195313.Spec : Prop :=
  ∀ n, P15749559243718195313.a n = A079472 (n + 1)

theorem P15749559243718195313.correct : P15749559243718195313.Spec := by
  intro n
  simp only [A079472, Nat.add_sub_cancel]

end A079472

/-! ## A079472.P770128301470172686

`A001906(n+1)-A007598(n+1)`
-/

namespace A079472.P770128301470172686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) - A007598 (n + 1)

end

end A079472.P770128301470172686

namespace A079472

/-- `A001906(n+1)-A007598(n+1)` -/
def P770128301470172686.Spec : Prop :=
  ∀ n, P770128301470172686.a n = A079472 (n + 1)

end A079472

/-! ## A079472.P10439026576540675098

`2/5*(A002878(n)+A033999(n+1))`
-/

namespace A079472.P10439026576540675098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 5 * (A002878 n + A033999 (n + 1) : ℚ)

end

end A079472.P10439026576540675098

namespace A079472

/-- `2/5*(A002878(n)+A033999(n+1))` -/
def P10439026576540675098.Spec : Prop :=
  ∀ n, P10439026576540675098.a n = (A079472 (n + 1) : ℚ)

end A079472

/-! ## A079472.P2435891401760120314

`ogf(2x/(1-2x-2x^2+x^3))`
-/

namespace A079472.P2435891401760120314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -2, -2, 1] n

end

end A079472.P2435891401760120314

namespace A079472

/-- `ogf(2x/(1-2x-2x^2+x^3))` -/
def P2435891401760120314.Spec : Prop :=
  ∀ n, P2435891401760120314.a n = A079472 (n + 1)

end A079472

/-! ## A079472.P3276145491554164251

`record[a(n-2)-a(n-1)]+a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A079472.P3276145491554164251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + a (n - 2)

end

end A079472.P3276145491554164251

namespace A079472

/-- `record[a(n-2)-a(n-1)]+a(n-2)` -/
def P3276145491554164251.Spec : Prop :=
  ∀ n, P3276145491554164251.a n = A079472 (n + 1)

end A079472

/-! ## A079472.P12057501908905296096

`2*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=0, a(1)=2, a(2)=4`
-/

namespace A079472.P12057501908905296096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4] fun n a =>
  2 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A079472.P12057501908905296096

namespace A079472

/-- `2*(a(n-1)+a(n-2))-a(n-3)` -/
def P12057501908905296096.Spec : Prop :=
  ∀ n, P12057501908905296096.a n = A079472 (n + 1)

end A079472

/-! ## A079472.P3326170399928827055

`(3-a(n-3)/a(n-2))*a(n-1)` with `a(0)=0, a(1)=2, a(2)=4`
-/

namespace A079472.P3326170399928827055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2, 4] fun n a =>
  (3 - a (n - 3) / a (n - 2)) * a (n - 1)

end

end A079472.P3326170399928827055

namespace A079472

/-- `(3-a(n-3)/a(n-2))*a(n-1)` -/
def P3326170399928827055.Spec : Prop :=
  ∀ n, P3326170399928827055.a n = (A079472 (n + 1) : ℚ)

end A079472

/-! ## A079472.P1767940676315592650

`a(n-1)+a(n-1)/(1-a(n-2)/a(n-1))` with `a(0)=0, a(1)=2`
-/

namespace A079472.P1767940676315592650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) + a (n - 1) / (1 - a (n - 2) / a (n - 1))

end

end A079472.P1767940676315592650

namespace A079472

/-- `a(n-1)+a(n-1)/(1-a(n-2)/a(n-1))` -/
def P1767940676315592650.Spec : Prop :=
  ∀ n, P1767940676315592650.a n = (A079472 (n + 1) : ℚ)

end A079472

/-! ## A079472.P14855713301444526881

`a(n-1)-a(n-1)/(a(n-2)/a(n-1)-1)` with `a(0)=0, a(1)=2`
-/

namespace A079472.P14855713301444526881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) - a (n - 1) / (a (n - 2) / a (n - 1) - 1)

end

end A079472.P14855713301444526881

namespace A079472

/-- `a(n-1)-a(n-1)/(a(n-2)/a(n-1)-1)` -/
def P14855713301444526881.Spec : Prop :=
  ∀ n, P14855713301444526881.a n = (A079472 (n + 1) : ℚ)

end A079472

/-! ## A079472.P8511872886737764560

`∑[A175395(n)]`
-/

namespace A079472.P8511872886737764560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175395 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079472.P8511872886737764560

namespace A079472

/-- `∑[A175395(n)]` -/
def P8511872886737764560.Spec : Prop :=
  ∀ n, P8511872886737764560.a n = A079472 (n + 1)

end A079472

/-! ## A079472.P2833404553968770815

`A114215(Δ[n²])`
-/

namespace A079472.P2833404553968770815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114215 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A079472.P2833404553968770815

namespace A079472

/-- `A114215(Δ[n²])` -/
def P2833404553968770815.Spec : Prop :=
  ∀ n, P2833404553968770815.a n = A079472 (n + 1)

end A079472

/-! ## A079472.P11272398351229173117

`∑[A382845(n)+1]`
-/

namespace A079472.P11272398351229173117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382845 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079472.P11272398351229173117

namespace A079472

/-- `∑[A382845(n)+1]` -/
def P11272398351229173117.Spec : Prop :=
  ∀ n, P11272398351229173117.a n = A079472 (n + 1)

end A079472

/-! ## A079472.P1829604245586924549

`∑[2*A007598(n)]`
-/

namespace A079472.P1829604245586924549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079472.P1829604245586924549

namespace A079472

/-- `∑[2*A007598(n)]` -/
def P1829604245586924549.Spec : Prop :=
  ∀ n, P1829604245586924549.a n = A079472 (n + 1)

end A079472

/-! ## A079472.P9684690423865592140

`Δ[A126116(2*n)]`
-/

namespace A079472.P9684690423865592140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126116 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079472.P9684690423865592140

namespace A079472

/-- `Δ[A126116(2*n)]` -/
def P9684690423865592140.Spec : Prop :=
  ∀ n, P9684690423865592140.a n = A079472 (n + 1)

end A079472

/-! ## A079472.P12792997887503027457

`Δ[2*A166516(n)]`
-/

namespace A079472.P12792997887503027457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079472.P12792997887503027457

namespace A079472

/-- `Δ[2*A166516(n)]` -/
def P12792997887503027457.Spec : Prop :=
  ∀ n, P12792997887503027457.a n = A079472 (n + 1)

end A079472

/-! ## A079472.P8783509060875703767

`A295680(2*(n+1))`
-/

namespace A079472.P8783509060875703767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295680 (2 * (n + 1))

end

end A079472.P8783509060875703767

namespace A079472

/-- `A295680(2*(n+1))` -/
def P8783509060875703767.Spec : Prop :=
  ∀ n, P8783509060875703767.a n = A079472 (n + 1)

end A079472

/-! ## A079472.P2801962871707229029

`2*A074677(2*n)`
-/

namespace A079472.P2801962871707229029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074677 (2 * n)

end

end A079472.P2801962871707229029

namespace A079472

/-- `2*A074677(2*n)` -/
def P2801962871707229029.Spec : Prop :=
  ∀ n, P2801962871707229029.a n = A079472 (n + 1)

end A079472

/-! ## A079472.P4723060337272758377

`2/3*A120718(n)`
-/

namespace A079472.P4723060337272758377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A120718 n : ℚ)

end

end A079472.P4723060337272758377

namespace A079472

/-- `2/3*A120718(n)` -/
def P4723060337272758377.Spec : Prop :=
  ∀ n, P4723060337272758377.a n = (A079472 (n + 1) : ℚ)

end A079472

/-! ## A079472.P77958968176255855

`∑[2*A000045(n)²]`
-/

namespace A079472.P77958968176255855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079472.P77958968176255855

namespace A079472

/-- `∑[2*A000045(n)²]` -/
def P77958968176255855.Spec : Prop :=
  ∀ n, P77958968176255855.a n = A079472 (n + 1)

end A079472

/-!
# A079473: Number of prime graphs on n vertices. (G is prime iff G has no module. Modules are also called homogeneous sets.)

The programs for A079473, there is no canonical definition to state claims against.
-/

/-! ## A079473.P12243138499185968836

`A002266(n^floor(n-atan(n))+n)`
-/

namespace A079473.P12243138499185968836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ : ℤ) + (n : ℚ))).toNat

end

end A079473.P12243138499185968836

/-! ## A079473.P17190547390504496705

`A002266(n^(n-ceil(atan(n)))+n)`
-/

namespace A079473.P17190547390504496705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (SequenceMachineLib.roundAway ((n : ℚ) ^ ((n : ℤ) - ⌈Real.arctan (n : ℝ)⌉ : ℤ) + (n : ℚ))).toNat

end

end A079473.P17190547390504496705

/-! ## A079473.P1464085938079798312

`A341903(A380634(n))`
-/

namespace A079473.P1464085938079798312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341903 (A380634 n).toNat

end

end A079473.P1464085938079798312

/-!
# A079474: Triangular array: for s=0 to r-1, a(r,s) = p(s)^(r-s), where p(s) is the s-th primorial number. (p(0)=1, p(1)=2, p(2)=2*3, p(3)=2*3*5,...).

The programs for A079474, there is no canonical definition to state claims against.
-/

/-! ## A079474.P5666201055204101890

`A002110(n-C(∑[char[∑[n]]], 2))^(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A079474.P5666201055204101890
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
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2) : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ)

end

end A079474.P5666201055204101890

/-! ## A079474.P14065602265629195291

`A293524(2^(n-C(∑[char[∑[n]]], 2)))^(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A079474.P14065602265629195291
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
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293524 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))).toNat : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ)

end

end A079474.P14065602265629195291

/-! ## A079474.P8298213042716225470

`A276156(2^(n-C(∑[char[∑[n]]], 2)))^(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A079474.P8298213042716225470
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
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276156 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))).toNat : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ)

end

end A079474.P8298213042716225470

/-! ## A079474.P623616933116683442

`A277021(2^(n-C(∑[char[∑[n]]], 2)))^(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A079474.P623616933116683442
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
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277021 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))).toNat : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ)

end

end A079474.P623616933116683442

/-! ## A079474.P13600751889594072768

`A181821(2^(n-C(∑[char[∑[n]]], 2)))^(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A079474.P13600751889594072768
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
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181821 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))).toNat : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ)

end

end A079474.P13600751889594072768

/-!
# A079475: Number described by n using the "Look and Say" rule.

The programs for A079475, there is no canonical definition to state claims against.
-/

/-! ## A079475.P16652929183237127589

`A056967(n)+A007954(A051022(n))`
-/

namespace A079475.P16652929183237127589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056967 n + A007954 (A051022 n).toNat

end

end A079475.P16652929183237127589

/-! ## A079475.P10059351723646837233

`A062028(A056967(n))-A187844(n)`
-/

namespace A079475.P10059351723646837233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (A056967 n).toNat - A187844 n

end

end A079475.P10059351723646837233

/-! ## A079475.P16743742246064198052

`lcm(A010879(n), A321800(A056967(n)))`
-/

namespace A079475.P16743742246064198052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010879 n) (A321800 (A056967 n).toNat)

end

end A079475.P16743742246064198052

/-!
# A079476: First prime greater than or equal to phi(n^2).

The programs for A079476, the canonical program `A079476.P11192462529891876628` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079476 has offset 1).

The definition of A079476 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, A007918, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A079476.P11192462529891876628

`A007918(A002618(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A079476

/-- `A007918(A002618(n+1))` -/
def P11192462529891876628.Spec : Prop :=
  ∀ n, P11192462529891876628.a n = A079476 (n + 1)

theorem P11192462529891876628.correct : P11192462529891876628.Spec := by
  intro n
  simp only [A079476, Nat.add_sub_cancel]

end A079476

/-! ## A079476.P11996564620836449146

`A151800(A046151(n+1))`
-/

namespace A079476.P11996564620836449146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A046151 (n + 1)).toNat

end

end A079476.P11996564620836449146

namespace A079476

/-- `A151800(A046151(n+1))` -/
def P11996564620836449146.Spec : Prop :=
  ∀ n, P11996564620836449146.a n = A079476 (n + 1)

end A079476

/-! ## A079476.P9568835163689029303

`A151800(A002618(n+1)-1)`
-/

namespace A079476.P9568835163689029303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A002618 (n + 1) - 1).toNat

end

end A079476.P9568835163689029303

namespace A079476

/-- `A151800(A002618(n+1)-1)` -/
def P9568835163689029303.Spec : Prop :=
  ∀ n, P9568835163689029303.a n = A079476 (n + 1)

end A079476

/-! ## A079476.P1851555429327723072

`A151800(A000010((n+1)²)-1)`
-/

namespace A079476.P1851555429327723072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000010 ((n + 1) ^ 2) - 1).toNat

end

end A079476.P1851555429327723072

namespace A079476

/-- `A151800(A000010((n+1)²)-1)` -/
def P1851555429327723072.Spec : Prop :=
  ∀ n, P1851555429327723072.a n = A079476 (n + 1)

end A079476

/-! ## A079476.P15432271365697978756

`A151800(2*A023896(n+1)-1)`
-/

namespace A079476.P15432271365697978756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 * A023896 (n + 1) - 1).toNat

end

end A079476.P15432271365697978756

namespace A079476

/-- `A151800(2*A023896(n+1)-1)` -/
def P15432271365697978756.Spec : Prop :=
  ∀ n, P15432271365697978756.a n = A079476 (n + 1)

end A079476

/-! ## A079476.P6313365640340692175

`A151800((n+1)*A000010(n+1)-1)`
-/

namespace A079476.P6313365640340692175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n + 1 : ℤ) * A000010 (n + 1) - 1).toNat

end

end A079476.P6313365640340692175

namespace A079476

/-- `A151800((n+1)*A000010(n+1)-1)` -/
def P6313365640340692175.Spec : Prop :=
  ∀ n, P6313365640340692175.a n = A079476 (n + 1)

end A079476

/-! ## A079476.P15490234695192450696

`A151800(A002618(n+1)%A007931(n+1))`
-/

namespace A079476.P15490234695192450696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (Int.tmod (A002618 (n + 1)) (A007931 (n + 1))).toNat

end

end A079476.P15490234695192450696

namespace A079476

/-- `A151800(A002618(n+1)%A007931(n+1))` -/
def P15490234695192450696.Spec : Prop :=
  ∀ n, P15490234695192450696.a n = A079476 (n + 1)

end A079476

/-! ## A079476.P2170904562686963757

`A151800(A023896(n+1)+A023896(n+1)-1)`
-/

namespace A079476.P2170904562686963757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A023896 (n + 1) + (A023896 (n + 1) - 1)).toNat

end

end A079476.P2170904562686963757

namespace A079476

/-- `A151800(A023896(n+1)+A023896(n+1)-1)` -/
def P2170904562686963757.Spec : Prop :=
  ∀ n, P2170904562686963757.a n = A079476 (n + 1)

end A079476

/-! ## A079476.P2806704439627578209

`A151800(A004273(A023896(n+1)))`
-/

namespace A079476.P2806704439627578209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A004273 (A023896 (n + 1)).toNat).toNat

end

end A079476.P2806704439627578209

namespace A079476

/-- `A151800(A004273(A023896(n+1)))` -/
def P2806704439627578209.Spec : Prop :=
  ∀ n, P2806704439627578209.a n = A079476 (n + 1)

end A079476

/-! ## A079476.P12985357070064583918

`A007918(A000010((n+1)²))`
-/

namespace A079476.P12985357070064583918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A000010 ((n + 1) ^ 2)).toNat

end

end A079476.P12985357070064583918

namespace A079476

/-- `A007918(A000010((n+1)²))` -/
def P12985357070064583918.Spec : Prop :=
  ∀ n, P12985357070064583918.a n = A079476 (n + 1)

end A079476

/-! ## A079476.P10145663465573170204

`A151800(A109606((n+1)²))`
-/

namespace A079476.P10145663465573170204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A109606 ((n + 1) ^ 2)).toNat

end

end A079476.P10145663465573170204

namespace A079476

/-- `A151800(A109606((n+1)²))` -/
def P10145663465573170204.Spec : Prop :=
  ∀ n, P10145663465573170204.a n = A079476 (n + 1)

end A079476

/-! ## A079476.P16416228183031804192

`A007918(A144824(∑[n+1]))`
-/

namespace A079476.P16416228183031804192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A144824 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A079476.P16416228183031804192

namespace A079476

/-- `A007918(A144824(∑[n+1]))` -/
def P16416228183031804192.Spec : Prop :=
  ∀ n, P16416228183031804192.a n = A079476 (n + 1)

end A079476

/-! ## A079476.P2231937483784255994

`A007918(A046151(n+1)+1)`
-/

namespace A079476.P2231937483784255994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A046151 (n + 1) + 1).toNat

end

end A079476.P2231937483784255994

namespace A079476

/-- `A007918(A046151(n+1)+1)` -/
def P2231937483784255994.Spec : Prop :=
  ∀ n, P2231937483784255994.a n = A079476 (n + 1)

end A079476

/-! ## A079476.P3444642357137758109

`A007918(A046152(n+1)-1)`
-/

namespace A079476.P3444642357137758109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A046152 (n + 1) - 1).toNat

end

end A079476.P3444642357137758109

namespace A079476

/-- `A007918(A046152(n+1)-1)` -/
def P3444642357137758109.Spec : Prop :=
  ∀ n, P3444642357137758109.a n = A079476 (n + 1)

end A079476

/-! ## A079476.P767650173079191898

`A007918(2*A023896(n+1))`
-/

namespace A079476.P767650173079191898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (2 * A023896 (n + 1)).toNat

end

end A079476.P767650173079191898

namespace A079476

/-- `A007918(2*A023896(n+1))` -/
def P767650173079191898.Spec : Prop :=
  ∀ n, P767650173079191898.a n = A079476 (n + 1)

end A079476

/-! ## A079476.P2045894551355389678

`A007918((n+1)*A000010(n+1))`
-/

namespace A079476.P2045894551355389678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 ((n + 1 : ℤ) * A000010 (n + 1)).toNat

end

end A079476.P2045894551355389678

namespace A079476

/-- `A007918((n+1)*A000010(n+1))` -/
def P2045894551355389678.Spec : Prop :=
  ∀ n, P2045894551355389678.a n = A079476 (n + 1)

end A079476

/-! ## A079476.P2347323985439431700

`A007918(A009262(A009195((n+1)²)))`
-/

namespace A079476.P2347323985439431700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A009262 (A009195 ((n + 1) ^ 2)).toNat).toNat

end

end A079476.P2347323985439431700

namespace A079476

/-- `A007918(A009262(A009195((n+1)²)))` -/
def P2347323985439431700.Spec : Prop :=
  ∀ n, P2347323985439431700.a n = A079476 (n + 1)

end A079476

/-! ## A079476.P1784733326742813283

`A007918(A023896(n+1)+A023896(n+1))`
-/

namespace A079476.P1784733326742813283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A023896 (n + 1) + A023896 (n + 1)).toNat

end

end A079476.P1784733326742813283

namespace A079476

/-- `A007918(A023896(n+1)+A023896(n+1))` -/
def P1784733326742813283.Spec : Prop :=
  ∀ n, P1784733326742813283.a n = A079476 (n + 1)

end A079476

/-! ## A079476.P11168167892422326911

`A007918(A009195(n+1)*A009262(n+1))`
-/

namespace A079476.P11168167892422326911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A009195 (n + 1) * A009262 (n + 1)).toNat

end

end A079476.P11168167892422326911

namespace A079476

/-- `A007918(A009195(n+1)*A009262(n+1))` -/
def P11168167892422326911.Spec : Prop :=
  ∀ n, P11168167892422326911.a n = A079476 (n + 1)

end A079476

/-!
# A079477: First prime after phi(prime(n)^2).

The programs for A079477, the canonical program `A079477.P16249418504405446302` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079477 has offset 1).

The definition of A079477 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036689, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A079477.P16249418504405446302

`A151800(A036689(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A079477

/-- `A151800(A036689(n+1))` -/
def P16249418504405446302.Spec : Prop :=
  ∀ n, P16249418504405446302.a n = A079477 (n + 1)

theorem P16249418504405446302.correct : P16249418504405446302.Spec := by
  intro n
  simp only [A079477, Nat.add_sub_cancel]

end A079477

/-! ## A079477.P16158679383734797848

`A182047(A006093(n+1))`
-/

namespace A079477.P16158679383734797848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182047 (A006093 (n + 1)).toNat

end

end A079477.P16158679383734797848

namespace A079477

/-- `A182047(A006093(n+1))` -/
def P16158679383734797848.Spec : Prop :=
  ∀ n, P16158679383734797848.a n = A079477 (n + 1)

end A079477

/-! ## A079477.P68155899113960843

`A182047(Δ[A007504(n)]-1)`
-/

namespace A079477.P68155899113960843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182047 (f1 (n + 1) - f1 n - 1).toNat

end

end A079477.P68155899113960843

namespace A079477

/-- `A182047(Δ[A007504(n)]-1)` -/
def P68155899113960843.Spec : Prop :=
  ∀ n, P68155899113960843.a n = A079477 (n + 1)

end A079477

/-! ## A079477.P10550703703901624786

`A182047(record[A000010(n+1)])`
-/

namespace A079477.P10550703703901624786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182047 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A079477.P10550703703901624786

namespace A079477

/-- `A182047(record[A000010(n+1)])` -/
def P10550703703901624786.Spec : Prop :=
  ∀ n, P10550703703901624786.a n = A079477 (n + 1)

end A079477

/-! ## A079477.P11184661984693883936

`A182047(record[A002322(n+1)])`
-/

namespace A079477.P11184661984693883936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182047 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A079477.P11184661984693883936

namespace A079477

/-- `A182047(record[A002322(n+1)])` -/
def P11184661984693883936.Spec : Prop :=
  ∀ n, P11184661984693883936.a n = A079477 (n + 1)

end A079477

/-! ## A079477.P589899771509632770

`A182047(A000040(n+1)-1)`
-/

namespace A079477.P589899771509632770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182047 (A000040 (n + 1) - 1).toNat

end

end A079477.P589899771509632770

namespace A079477

/-- `A182047(A000040(n+1)-1)` -/
def P589899771509632770.Spec : Prop :=
  ∀ n, P589899771509632770.a n = A079477 (n + 1)

end A079477

/-! ## A079477.P11750649677085291609

`A378135(A000040(n+1)-1)`
-/

namespace A079477.P11750649677085291609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378135 (A000040 (n + 1) - 1).toNat

end

end A079477.P11750649677085291609

namespace A079477

/-- `A378135(A000040(n+1)-1)` -/
def P11750649677085291609.Spec : Prop :=
  ∀ n, P11750649677085291609.a n = A079477 (n + 1)

end A079477

/-! ## A079477.P13925621243777754991

`A182047(eq[1, A342001(n+1)])`
-/

namespace A079477.P13925621243777754991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A079477.P13925621243777754991

namespace A079477

/-- `A182047(eq[1, A342001(n+1)])` -/
def P13925621243777754991.Spec : Prop :=
  ∀ n, P13925621243777754991.a n = A079477 (n + 1)

end A079477

/-! ## A079477.P7605980963402247040

`A182047(eq[2, A000005(n+1)])`
-/

namespace A079477.P7605980963402247040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A079477.P7605980963402247040

namespace A079477

/-- `A182047(eq[2, A000005(n+1)])` -/
def P7605980963402247040.Spec : Prop :=
  ∀ n, P7605980963402247040.a n = A079477 (n + 1)

end A079477

/-! ## A079477.P375416908719138177

`A182047(eq[2, A073093(n+1)])`
-/

namespace A079477.P375416908719138177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A079477.P375416908719138177

namespace A079477

/-- `A182047(eq[2, A073093(n+1)])` -/
def P375416908719138177.Spec : Prop :=
  ∀ n, P375416908719138177.a n = A079477 (n + 1)

end A079477

/-! ## A079477.P13474577166600402206

`A182047(eq[n, A002322(n+1)])`
-/

namespace A079477.P13474577166600402206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A079477.P13474577166600402206

namespace A079477

/-- `A182047(eq[n, A002322(n+1)])` -/
def P13474577166600402206.Spec : Prop :=
  ∀ n, P13474577166600402206.a n = A079477 (n + 1)

end A079477

/-! ## A079477.P14338412855321301207

`A182047(p?[A000463(n+1)]-1)`
-/

namespace A079477.P14338412855321301207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182047 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A079477.P14338412855321301207

namespace A079477

/-- `A182047(p?[A000463(n+1)]-1)` -/
def P14338412855321301207.Spec : Prop :=
  ∀ n, P14338412855321301207.a n = A079477 (n + 1)

end A079477

/-! ## A079477.P15452962434279246993

`∩[A360567(n+1), A182047(n)]`
-/

namespace A079477.P15452962434279246993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079477.P15452962434279246993

namespace A079477

/-- `∩[A360567(n+1), A182047(n)]` -/
def P15452962434279246993.Spec : Prop :=
  ∀ n, (P15452962434279246993.a n : ℤ) = A079477 (n + 1)

end A079477

/-! ## A079477.P6078338902551256074

`∩[A360567(n+1), A378135(n)]`
-/

namespace A079477.P6078338902551256074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378135 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079477.P6078338902551256074

namespace A079477

/-- `∩[A360567(n+1), A378135(n)]` -/
def P6078338902551256074.Spec : Prop :=
  ∀ n, (P6078338902551256074.a n : ℤ) = A079477 (n + 1)

end A079477

/-!
# A079478: Coefficient of x^0 in P(n,x) = (Product_{i=0..n-1} i!^2)/matdet(M(n)) of degree n^2 where M(n) is the n X n matrix m(i,j) = 1/(i+j+x).

The programs for A079478, the canonical program `A079478.P5002699263476771425` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079478 has offset 0).

The definition of A079478 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079478.P5002699263476771425

`A000178(2*n)/A000178(n)²`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A079478

/-- `A000178(2*n)/A000178(n)²` -/
def P5002699263476771425.Spec : Prop :=
  ∀ n, P5002699263476771425.a n = (A079478 n : ℚ)

end A079478

/-! ## A079478.P18144994028778399877

`A009963(∑[4*n])`
-/

namespace A079478.P18144994028778399877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009963 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A079478.P18144994028778399877

namespace A079478

/-- `A009963(∑[4*n])` -/
def P18144994028778399877.Spec : Prop :=
  ∀ n, P18144994028778399877.a n = A079478 n

end A079478

/-! ## A079478.P10443056279464116958

`∏[A123072(n)]/n!`
-/

namespace A079478.P10443056279464116958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123072 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (Nat.factorial n : ℚ)

end

end A079478.P10443056279464116958

namespace A079478

/-- `∏[A123072(n)]/n!` -/
def P10443056279464116958.Spec : Prop :=
  ∀ n, P10443056279464116958.a n = (A079478 n : ℚ)

end A079478

/-! ## A079478.P4605128177421763985

`(2*n)!*A107252(n)/n!`
-/

namespace A079478.P4605128177421763985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (2 * n) : ℤ) * A107252 n : ℚ) / (Nat.factorial n : ℚ)

end

end A079478.P4605128177421763985

namespace A079478

/-- `(2*n)!*A107252(n)/n!` -/
def P4605128177421763985.Spec : Prop :=
  ∀ n, P4605128177421763985.a n = (A079478 n : ℚ)

end A079478

/-! ## A079478.P6507919335079728116

`∏[(2*n)!*A007318(2*n²)]/n!`
-/

namespace A079478.P6507919335079728116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℤ) * A007318 (2 * n ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (Nat.factorial n : ℚ)

end

end A079478.P6507919335079728116

namespace A079478

/-- `∏[(2*n)!*A007318(2*n²)]/n!` -/
def P6507919335079728116.Spec : Prop :=
  ∀ n, P6507919335079728116.a n = (A079478 n : ℚ)

end A079478

/-!
# A079479: Denominator of number J(n) arising in computation of second moment of A*_n lattice.

The programs for A079479, there is no canonical definition to state claims against.
-/

/-! ## A079479.P458659487809986019

`(n+1)²*A269400(A026557(2*(n+2)))`
-/

namespace A079479.P458659487809986019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A269400 (A026557 (2 * (n + 2))).toNat

end

end A079479.P458659487809986019

/-!
# A079483: Array read by rows in which n-th row lists the periodic part of the base-n expansion of 1/7.

The programs for A079483, there is no canonical definition to state claims against.
-/

/-! ## A079483.P9291716030225213863

`A262115(n+2)%A221616(n+1)`
-/

namespace A079483.P9291716030225213863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262115 (n + 2)) (A221616 (n + 1))

end

end A079483.P9291716030225213863

/-!
# A079484: a(n) = (2n-1)!! * (2n+1)!!, where the double factorial is A006882.

The programs for A079484, the canonical program `A079484.P3436902725837240594` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079484 has offset 0).

The definition of A079484 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079484.P3436902725837240594

`(4*n²-1)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079484

/-- `(4*n²-1)*a(n-1)` -/
def P3436902725837240594.Spec : Prop :=
  ∀ n, P3436902725837240594.a n = A079484 n

theorem P3436902725837240594.correct : P3436902725837240594.Spec := by
  intro n
  simp only [A079484]

end A079484

/-! ## A079484.P14474972477790293512

`(2*n+1)*A001818(n)`
-/

namespace A079484.P14474972477790293512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A001818 n

end

end A079484.P14474972477790293512

namespace A079484

/-- `(2*n+1)*A001818(n)` -/
def P14474972477790293512.Spec : Prop :=
  ∀ n, P14474972477790293512.a n = A079484 n

end A079484

/-! ## A079484.P2806550030592168964

`A001147(n)*A001147(n+1)`
-/

namespace A079484.P2806550030592168964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n * A001147 (n + 1)

end

end A079484.P2806550030592168964

namespace A079484

/-- `A001147(n)*A001147(n+1)` -/
def P2806550030592168964.Spec : Prop :=
  ∀ n, P2806550030592168964.a n = A079484 n

end A079484

/-! ## A079484.P41853807668263195

`(2*n+1)!*C(2*n, n)/2^(2*n)`
-/

namespace A079484.P41853807668263195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n + 1) * Nat.choose (2 * n) n : ℚ) / (2 ^ (2 * n) : ℚ)

end

end A079484.P41853807668263195

namespace A079484

/-- `(2*n+1)!*C(2*n, n)/2^(2*n)` -/
def P41853807668263195.Spec : Prop :=
  ∀ n, P41853807668263195.a n = (A079484 n : ℚ)

end A079484

/-! ## A079484.P14664472602367641226

`(2*n+1)!*(2*n)!/(n!*2^n)²`
-/

namespace A079484.P14664472602367641226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n + 1) * Nat.factorial (2 * n) : ℚ) / ((Nat.factorial n * 2 ^ n) ^ 2 : ℚ)

end

end A079484.P14664472602367641226

namespace A079484

/-- `(2*n+1)!*(2*n)!/(n!*2^n)²` -/
def P14664472602367641226.Spec : Prop :=
  ∀ n, P14664472602367641226.a n = (A079484 n : ℚ)

end A079484

/-!
# A079485: Number of chess games that end in checkmate after exactly n plies.

The programs for A079485, there is no canonical definition to state claims against.
-/

/-! ## A079485.P7776733644790270140

`Δ[A006494(n)-A048987(n)]`
-/

namespace A079485.P7776733644790270140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006494 n - A048987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079485.P7776733644790270140

/-! ## A079485.P3122241389411827931

`floor(A263625(n+1)/44)`
-/

namespace A079485.P3122241389411827931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A263625 (n + 1) : ℚ) / 44⌋

end

end A079485.P3122241389411827931

/-!
# A079487: Triangle read by rows giving Whitney numbers T(n,k) of Fibonacci lattices.

The programs for A079487, there is no canonical definition to state claims against.
-/

/-! ## A079487.P14874641023873010153

`A078807(or(1, comp[∑[n]]+n)-n)`
-/

namespace A079487.P14874641023873010153
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078807 (Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) - n)

end

end A079487.P14874641023873010153

/-! ## A079487.P1207409031408290108

`A123245(∑[2*n]%comp[∑[n]])`
-/

namespace A079487.P1207409031408290108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123245 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A079487.P1207409031408290108

/-! ## A079487.P8172904146253590127

`A123245(∑[char[∑[n]]]²-n-1)`
-/

namespace A079487.P8172904146253590127
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123245 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A079487.P8172904146253590127

/-! ## A079487.P11249033528567823413

`A390766(A256117(n+1))`
-/

namespace A079487.P11249033528567823413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390766 (A256117 (n + 1)).toNat

end

end A079487.P11249033528567823413

/-! ## A079487.P13158622837386282336

`A390767(A277767(n+1)+A083946(n))`
-/

namespace A079487.P13158622837386282336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390767 (A277767 (n + 1) + A083946 n).toNat

end

end A079487.P13158622837386282336

/-!
# A079488: Number of prime divisors (counted with multiplicity) of A138613(n).

The programs for A079488, there is no canonical definition to state claims against.
-/

/-! ## A079488.P5397592001700556200

`A244316(A244309(n))+A001405(n)`
-/

namespace A079488.P5397592001700556200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244316 (A244309 n).toNat + A001405 n

end

end A079488.P5397592001700556200

/-! ## A079488.P1976244294983675543

`A336678(n)+A244316(A244309(n))`
-/

namespace A079488.P1976244294983675543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336678 n + A244316 (A244309 n).toNat

end

end A079488.P1976244294983675543

/-! ## A079488.P7278629918140390711

`A000196(A306844(n+1)*A358457(n+1))`
-/

namespace A079488.P7278629918140390711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A306844 (n + 1) * A358457 (n + 1)).toNat

end

end A079488.P7278629918140390711

/-!
# A079489: a(n) = (2*4^n*binomial(2*n, n) - binomial(4*n + 1, 2*n)) / (n + 1).

The programs for A079489, the canonical program `A079489.P8305944385091836002` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079489 has offset 0).

The definition of A079489 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079489.P16636155452265833911

`A079514(2*n+1)`
-/

namespace A079489.P16636155452265833911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079514 (2 * n + 1)

end

end A079489.P16636155452265833911

namespace A079489

/-- `A079514(2*n+1)` -/
def P16636155452265833911.Spec : Prop :=
  ∀ n, P16636155452265833911.a n = A079489 n

end A079489

/-! ## A079489.P8305944385091836002

`(2*4^n*C(2*n, n)-C(4*n+1, 2*n))/(n+1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079489

/-- `(2*4^n*C(2*n, n)-C(4*n+1, 2*n))/(n+1)` -/
def P8305944385091836002.Spec : Prop :=
  ∀ n, P8305944385091836002.a n = (A079489 n : ℚ)

end A079489

/-! ## A079489.P1367192892106119594

`A078990(n*(n+2))`
-/

namespace A079489.P1367192892106119594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078990 (n * (n + 2))

end

end A079489.P1367192892106119594

namespace A079489

/-- `A078990(n*(n+2))` -/
def P1367192892106119594.Spec : Prop :=
  ∀ n, P1367192892106119594.a n = A079489 n

end A079489

/-! ## A079489.P6675019173516393861

`record[(6/(n+1)-4)*a(n-1)]-A066357(n)` with `a(0)=2`
-/

namespace A079489.P6675019173516393861
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  (6 / (n + 1 : ℚ) - 4) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A066357 n : ℚ)

end

end A079489.P6675019173516393861

namespace A079489

/-- `record[(6/(n+1)-4)*a(n-1)]-A066357(n)` -/
def P6675019173516393861.Spec : Prop :=
  ∀ n, P6675019173516393861.a n = (A079489 n : ℚ)

end A079489

/-! ## A079489.P4697837736722188519

`record[A079514(A099375(n))]`
-/

namespace A079489.P4697837736722188519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079514 (A099375 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079489.P4697837736722188519

namespace A079489

/-- `record[A079514(A099375(n))]` -/
def P4697837736722188519.Spec : Prop :=
  ∀ n, P4697837736722188519.a n = A079489 n

end A079489

/-! ## A079489.P5140356781839000879

`record[A079514(abs(A009001(n)))]`
-/

namespace A079489.P5140356781839000879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079514 |A009001 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079489.P5140356781839000879

namespace A079489

/-- `record[A079514(abs(A009001(n)))]` -/
def P5140356781839000879.Spec : Prop :=
  ∀ n, P5140356781839000879.a n = A079489 n

end A079489

/-! ## A079489.P5475634250682898605

`record[A079514(A000265(n+1))]`
-/

namespace A079489.P5475634250682898605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079514 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079489.P5475634250682898605

namespace A079489

/-- `record[A079514(A000265(n+1))]` -/
def P5475634250682898605.Spec : Prop :=
  ∀ n, P5475634250682898605.a n = A079489 n

end A079489

/-! ## A079489.P969719246664418791

`record[A079514(A028234(n+1))]`
-/

namespace A079489.P969719246664418791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079514 (A028234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079489.P969719246664418791

namespace A079489

/-- `record[A079514(A028234(n+1))]` -/
def P969719246664418791.Spec : Prop :=
  ∀ n, P969719246664418791.a n = A079489 n

end A079489

/-! ## A079489.P3196071935225710617

`A052707(n+1)-A024492(n)`
-/

namespace A079489.P3196071935225710617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052707 (n + 1) - A024492 n

end

end A079489.P3196071935225710617

namespace A079489

/-- `A052707(n+1)-A024492(n)` -/
def P3196071935225710617.Spec : Prop :=
  ∀ n, P3196071935225710617.a n = A079489 n

end A079489

/-! ## A079489.P2067623498599994303

`record[A079514(n+1)/A152271(n)]`
-/

namespace A079489.P2067623498599994303
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079514 (n + 1) : ℚ) / (A152271 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079489.P2067623498599994303

namespace A079489

/-- `record[A079514(n+1)/A152271(n)]` -/
def P2067623498599994303.Spec : Prop :=
  ∀ n, P2067623498599994303.a n = (A079489 n : ℚ)

end A079489

/-!
# A079490: Exp(n) is closer to an integer than any previous exp(k) for 1 <= k < n.

The programs for A079490, there is no canonical definition to state claims against.
-/

/-! ## A079490.P13405793171131419913

`A303336(A118043(n+1))`
-/

namespace A079490.P13405793171131419913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303336 (A118043 (n + 1)).toNat

end

end A079490.P13405793171131419913

/-! ## A079490.P18367589216330643328

`A316468(∑[∑[A035470(n+1)]])`
-/

namespace A079490.P18367589216330643328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035470 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316468 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A079490.P18367589216330643328

/-! ## A079490.P9713138821797440075

`A316468(∑[∑[A080400(n+1)]])`
-/

namespace A079490.P9713138821797440075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080400 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316468 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A079490.P9713138821797440075

/-!
# A079491: Numerator of Sum_{k=0..n} binomial(n,k)/2^(k*(k-1)/2).

The programs for A079491, there is no canonical definition to state claims against.
-/

/-! ## A079491.P9585932190881221684

`5*A343238(a(n-1))` with `a(0)=1, a(1)=2, a(2)=7`
-/

namespace A079491.P9585932190881221684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7] fun n a =>
  5 * A343238 (a (n - 1)).toNat

end

end A079491.P9585932190881221684

/-!
# A079492: Nearest integer to Sum_{k=0..n} binomial(n,k)/2^(k*(k-1)/2).

The programs for A079492, there is no canonical definition to state claims against.
-/

/-! ## A079492.P4901331811439473468

`round(A079491(n)/A006125(n))`
-/

namespace A079492.P4901331811439473468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A079491 n : ℚ) / (A006125 n : ℚ))

end

end A079492.P4901331811439473468

/-! ## A079492.P5844136744500591588

`A003056(A335666(n+1)+A009545(n))`
-/

namespace A079492.P5844136744500591588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A335666 (n + 1) + A009545 n).toNat

end

end A079492.P5844136744500591588

/-! ## A079492.P11881295393246311871

`A057428(n)+A002024(A335666(n+1)+A009545(n))`
-/

namespace A079492.P11881295393246311871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A002024 (A335666 (n + 1) + A009545 n).toNat

end

end A079492.P11881295393246311871

/-! ## A079492.P15972528701587732722

`round(root(A266939(2*n+1), 5))`
-/

namespace A079492.P15972528701587732722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A266939 (2 * n + 1) : ℝ) ^ (1 / (5 : ℝ)))

end

end A079492.P15972528701587732722

/-! ## A079492.P13144710347201849775

`∑[∑[A004602(A159331(n))]]`
-/

namespace A079492.P13144710347201849775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004602 (A159331 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079492.P13144710347201849775

/-!
# A079495: Numbers k such that the sum of the squares of the digits of k in base 3 is 0 (mod 3).

The programs for A079495, the canonical program `A079495.P9139398084234387535` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079495 has offset 1).

The definition of A079495 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079495.P9139398084234387535

`eq[1, (a(floor(n/3))+n²%3)%3]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079495

/-- `eq[1, (a(floor(n/3))+n²%3)%3]` -/
def P9139398084234387535.Spec : Prop :=
  ∀ n, (P9139398084234387535.a n : ℤ) = A079495 (n + 1)

theorem P9139398084234387535.correct : P9139398084234387535.Spec := by
  intro n
  simp only [A079495, Nat.add_sub_cancel]

end A079495

/-! ## A079495.P2706729466272798750

`lt[A001222(A006047(n))%3, 1]`
-/

namespace A079495.P2706729466272798750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A006047 n).toNat) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A079495.P2706729466272798750

namespace A079495

/-- `lt[A001222(A006047(n))%3, 1]` -/
def P2706729466272798750.Spec : Prop :=
  ∀ n, (P2706729466272798750.a n : ℤ) = A079495 (n + 1)

end A079495

/-! ## A079495.P16131966526628444185

`lt[0, A079978(A006287(n))]`
-/

namespace A079495.P16131966526628444185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A006287 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A079495.P16131966526628444185

namespace A079495

/-- `lt[0, A079978(A006287(n))]` -/
def P16131966526628444185.Spec : Prop :=
  ∀ n, (P16131966526628444185.a n : ℤ) = A079495 (n + 1)

end A079495

/-! ## A079495.P4905418785366935524

`lt[0, A079978(2*A053735(n)-A062756(n))]`
-/

namespace A079495.P4905418785366935524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (2 * A053735 n - A062756 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A079495.P4905418785366935524

namespace A079495

/-- `lt[0, A079978(2*A053735(n)-A062756(n))]` -/
def P4905418785366935524.Spec : Prop :=
  ∀ n, (P4905418785366935524.a n : ℤ) = A079495 (n + 1)

end A079495

/-! ## A079495.P16644942877508106899

`eq[0, A234538(n)]`
-/

namespace A079495.P16644942877508106899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234538 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A079495.P16644942877508106899

namespace A079495

/-- `eq[0, A234538(n)]` -/
def P16644942877508106899.Spec : Prop :=
  ∀ n, (P16644942877508106899.a n : ℤ) = A079495 (n + 1)

end A079495

/-! ## A079495.P13885975609571564578

`lt[A234538(n), A328578(2*n+3)]`
-/

namespace A079495.P13885975609571564578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234538 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328578 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079495.P13885975609571564578

namespace A079495

/-- `lt[A234538(n), A328578(2*n+3)]` -/
def P13885975609571564578.Spec : Prop :=
  ∀ n, (P13885975609571564578.a n : ℤ) = A079495 (n + 1)

end A079495

/-! ## A079495.P18037344048357285399

`lt[A234538(n), A131756(3*n+4)²]`
-/

namespace A079495.P18037344048357285399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234538 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131756 (3 * n + 4) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079495.P18037344048357285399

namespace A079495

/-- `lt[A234538(n), A131756(3*n+4)²]` -/
def P18037344048357285399.Spec : Prop :=
  ∀ n, (P18037344048357285399.a n : ℤ) = A079495 (n + 1)

end A079495

/-! ## A079495.P7817464512131328517

`lt[A234538(n), A010060(A340675(n+1))]`
-/

namespace A079495.P7817464512131328517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234538 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A340675 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079495.P7817464512131328517

namespace A079495

/-- `lt[A234538(n), A010060(A340675(n+1))]` -/
def P7817464512131328517.Spec : Prop :=
  ∀ n, (P7817464512131328517.a n : ℤ) = A079495 (n + 1)

end A079495

/-! ## A079495.P17709964140384220640

`lt[A234538(n), A384915(A000040(n+1))]`
-/

namespace A079495.P17709964140384220640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234538 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384915 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079495.P17709964140384220640

namespace A079495

/-- `lt[A234538(n), A384915(A000040(n+1))]` -/
def P17709964140384220640.Spec : Prop :=
  ∀ n, (P17709964140384220640.a n : ℤ) = A079495 (n + 1)

end A079495

/-! ## A079495.P2825573081877286600

`lt[A234538(n), A384915(A007947(n+1))]`
-/

namespace A079495.P2825573081877286600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234538 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384915 (A007947 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079495.P2825573081877286600

namespace A079495

/-- `lt[A234538(n), A384915(A007947(n+1))]` -/
def P2825573081877286600.Spec : Prop :=
  ∀ n, (P2825573081877286600.a n : ℤ) = A079495 (n + 1)

end A079495

/-! ## A079495.P12699717785127618896

`lt[A234538(n), A384915(A097393(2*(n+2)))]`
-/

namespace A079495.P12699717785127618896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234538 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384915 (A097393 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079495.P12699717785127618896

namespace A079495

/-- `lt[A234538(n), A384915(A097393(2*(n+2)))]` -/
def P12699717785127618896.Spec : Prop :=
  ∀ n, (P12699717785127618896.a n : ℤ) = A079495 (n + 1)

end A079495

/-!
# A079496: a(0) = a(1) = 1; thereafter a(2*n+1) = 2*a(2*n) - a(2*n-1), a(2*n) = 4*a(2*n-1) - a(2*n-2).

The programs for A079496, the canonical program `A079496.P13642259077477733113` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079496 has offset 0).

The definition of A079496 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079496.P13642259077477733113

`6*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079496

/-- `6*a(n-2)-a(n-4)` -/
def P13642259077477733113.Spec : Prop :=
  ∀ n, P13642259077477733113.a n = A079496 n

theorem P13642259077477733113.correct : P13642259077477733113.Spec := by
  intro n
  simp only [A079496]

end A079496

/-! ## A079496.P2326944609997381169

`A002965(or(1, n)+n)`
-/

namespace A079496.P2326944609997381169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (Nat.lor 1 n + n)

end

end A079496.P2326944609997381169

namespace A079496

/-- `A002965(or(1, n)+n)` -/
def P2326944609997381169.Spec : Prop :=
  ∀ n, P2326944609997381169.a n = A079496 n

end A079496

/-! ## A079496.P16486508730202416537

`∑[A000129(or(1, n)-1)]+1`
-/

namespace A079496.P16486508730202416537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (Nat.lor 1 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A079496.P16486508730202416537

namespace A079496

/-- `∑[A000129(or(1, n)-1)]+1` -/
def P16486508730202416537.Spec : Prop :=
  ∀ n, P16486508730202416537.a n = A079496 n

end A079496

/-! ## A079496.P7356603051822002518

`A155046(A053438(n))`
-/

namespace A079496.P7356603051822002518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155046 (A053438 n).toNat

end

end A079496.P7356603051822002518

namespace A079496

/-- `A155046(A053438(n))` -/
def P7356603051822002518.Spec : Prop :=
  ∀ n, P7356603051822002518.a n = A079496 n

end A079496

/-! ## A079496.P4520447606734088036

`A079934(A267528(n))`
-/

namespace A079496.P4520447606734088036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079934 (A267528 n).toNat

end

end A079496.P4520447606734088036

namespace A079496

/-- `A079934(A267528(n))` -/
def P4520447606734088036.Spec : Prop :=
  ∀ n, P4520447606734088036.a n = A079496 n

end A079496

/-! ## A079496.P2091146010900127038

`A002965(A042963(n+1))`
-/

namespace A079496.P2091146010900127038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A042963 (n + 1)).toNat

end

end A079496.P2091146010900127038

namespace A079496

/-- `A002965(A042963(n+1))` -/
def P2091146010900127038.Spec : Prop :=
  ∀ n, P2091146010900127038.a n = A079496 n

end A079496

/-! ## A079496.P1644312614955487152

`A092550(A038179(n+1))`
-/

namespace A079496.P1644312614955487152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092550 (A038179 (n + 1)).toNat

end

end A079496.P1644312614955487152

namespace A079496

/-- `A092550(A038179(n+1))` -/
def P1644312614955487152.Spec : Prop :=
  ∀ n, P1644312614955487152.a n = A079496 n

end A079496

/-! ## A079496.P17208193082561363862

`A116560(A087445(n+1))`
-/

namespace A079496.P17208193082561363862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (A087445 (n + 1)).toNat

end

end A079496.P17208193082561363862

namespace A079496

/-- `A116560(A087445(n+1))` -/
def P17208193082561363862.Spec : Prop :=
  ∀ n, P17208193082561363862.a n = A079496 n

end A079496

/-! ## A079496.P17590267630057698469

`A227972(A047241(n+1))`
-/

namespace A079496.P17590267630057698469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227972 (A047241 (n + 1)).toNat

end

end A079496.P17590267630057698469

namespace A079496

/-- `A227972(A047241(n+1))` -/
def P17590267630057698469.Spec : Prop :=
  ∀ n, P17590267630057698469.a n = A079496 n

end A079496

/-! ## A079496.P691608397917362475

`A002965(A109613(n)+n)`
-/

namespace A079496.P691608397917362475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A109613 n + (n : ℤ)).toNat

end

end A079496.P691608397917362475

namespace A079496

/-- `A002965(A109613(n)+n)` -/
def P691608397917362475.Spec : Prop :=
  ∀ n, P691608397917362475.a n = A079496 n

end A079496

/-! ## A079496.P7097364091465600536

`A002965(A042964(n+1)-1)`
-/

namespace A079496.P7097364091465600536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A042964 (n + 1) - 1).toNat

end

end A079496.P7097364091465600536

namespace A079496

/-- `A002965(A042964(n+1)-1)` -/
def P7097364091465600536.Spec : Prop :=
  ∀ n, P7097364091465600536.a n = A079496 n

end A079496

/-! ## A079496.P8059330667378499184

`A002965(A053438(n+1)-1)`
-/

namespace A079496.P8059330667378499184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A053438 (n + 1) - 1).toNat

end

end A079496.P8059330667378499184

namespace A079496

/-- `A002965(A053438(n+1)-1)` -/
def P8059330667378499184.Spec : Prop :=
  ∀ n, P8059330667378499184.a n = A079496 n

end A079496

/-! ## A079496.P3301767747986001928

`A249576(A047235(n+1)-1)`
-/

namespace A079496.P3301767747986001928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (A047235 (n + 1) - 1).toNat

end

end A079496.P3301767747986001928

namespace A079496

/-- `A249576(A047235(n+1)-1)` -/
def P3301767747986001928.Spec : Prop :=
  ∀ n, P3301767747986001928.a n = A079496 n

end A079496

/-! ## A079496.P17265844955691549279

`A002965(A014601(n+1)-2)`
-/

namespace A079496.P17265844955691549279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A014601 (n + 1) - 2).toNat

end

end A079496.P17265844955691549279

namespace A079496

/-- `A002965(A014601(n+1)-2)` -/
def P17265844955691549279.Spec : Prop :=
  ∀ n, P17265844955691549279.a n = A079496 n

end A079496

/-! ## A079496.P15157723457976731625

`A002965(A154708(n+1)-2)`
-/

namespace A079496.P15157723457976731625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A154708 (n + 1) - 2).toNat

end

end A079496.P15157723457976731625

namespace A079496

/-- `A002965(A154708(n+1)-2)` -/
def P15157723457976731625.Spec : Prop :=
  ∀ n, P15157723457976731625.a n = A079496 n

end A079496

/-! ## A079496.P17094425322686366198

`A116560(A092899(n+1)-2)`
-/

namespace A079496.P17094425322686366198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (A092899 (n + 1) - 2).toNat

end

end A079496.P17094425322686366198

namespace A079496

/-- `A116560(A092899(n+1)-2)` -/
def P17094425322686366198.Spec : Prop :=
  ∀ n, P17094425322686366198.a n = A079496 n

end A079496

/-! ## A079496.P16168468896606493431

`A227972(A047270(n+1)-2)`
-/

namespace A079496.P16168468896606493431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227972 (A047270 (n + 1) - 2).toNat

end

end A079496.P16168468896606493431

namespace A079496

/-- `A227972(A047270(n+1)-2)` -/
def P16168468896606493431.Spec : Prop :=
  ∀ n, P16168468896606493431.a n = A079496 n

end A079496

/-! ## A079496.P1724086350326659788

`A249576(2*A032766(n)+1)`
-/

namespace A079496.P1724086350326659788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (2 * A032766 n + 1).toNat

end

end A079496.P1724086350326659788

namespace A079496

/-- `A249576(2*A032766(n)+1)` -/
def P1724086350326659788.Spec : Prop :=
  ∀ n, P1724086350326659788.a n = A079496 n

end A079496

/-! ## A079496.P15141576048958110171

`A002965(A052928(n)+1+n)`
-/

namespace A079496.P15141576048958110171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A052928 n + 1 + (n : ℤ)).toNat

end

end A079496.P15141576048958110171

namespace A079496

/-- `A002965(A052928(n)+1+n)` -/
def P15141576048958110171.Spec : Prop :=
  ∀ n, P15141576048958110171.a n = A079496 n

end A079496

/-!
# A079497: a(1)=1; for n > 2, a(n) is the smallest integer > a(n-1) such that frac(sqrt(5)*a(n)) < frac(sqrt(5)*a(n-1)).

The programs for A079497, the canonical program `A079497.P14663922528850790487` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079497 has offset 1).

The definition of A079497 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079497.P14663922528850790487

`18*a(n-4)-a(n-8)` with `a(0)=1, a(1)=5, a(2)=9, a(3)=13, a(4)=17, a(5)=89, a(6)=161, a(7)=233`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079497

/-- `18*a(n-4)-a(n-8)` -/
def P14663922528850790487.Spec : Prop :=
  ∀ n, P14663922528850790487.a n = A079497 (n + 1)

theorem P14663922528850790487.correct : P14663922528850790487.Spec := by
  intro n
  simp only [A079497, Nat.add_sub_cancel]

end A079497

/-! ## A079497.P5888802446720408443

`∑[A001076(A131055(A080513(n)))]`
-/

namespace A079497.P5888802446720408443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 (A131055 (A080513 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079497.P5888802446720408443

namespace A079497

/-- `∑[A001076(A131055(A080513(n)))]` -/
def P5888802446720408443.Spec : Prop :=
  ∀ n, P5888802446720408443.a n = A079497 (n + 1)

end A079497

/-! ## A079497.P722330089555675968

`A389585(∑[n]+1)`
-/

namespace A079497.P722330089555675968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389585 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A079497.P722330089555675968

namespace A079497

/-- `A389585(∑[n]+1)` -/
def P722330089555675968.Spec : Prop :=
  ∀ n, P722330089555675968.a n = A079497 (n + 1)

end A079497

/-! ## A079497.P6601291704784571203

`eq[1, A194742(n+1)]+1`
-/

namespace A079497.P6601291704784571203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194742 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A079497.P6601291704784571203

namespace A079497

/-- `eq[1, A194742(n+1)]+1` -/
def P6601291704784571203.Spec : Prop :=
  ∀ n, (P6601291704784571203.a n : ℤ) = A079497 (n + 1)

end A079497

/-! ## A079497.P5948885108236379626

`eq[n, A194743(n+1)]+1`
-/

namespace A079497.P5948885108236379626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194743 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A079497.P5948885108236379626

namespace A079497

/-- `eq[n, A194743(n+1)]+1` -/
def P5948885108236379626.Spec : Prop :=
  ∀ n, (P5948885108236379626.a n : ℤ) = A079497 (n + 1)

end A079497

/-!
# A079498: Numbers whose sum of digits in base b gives 0 (mod b), for b = 3.

The programs for A079498, the canonical program `A079498.P499430270123216215` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079498 has offset 1).

The definition of A079498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079498.P499430270123216215

`eq[0, (a(floor(n/3))+n)%3]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079498

/-- `eq[0, (a(floor(n/3))+n)%3]` -/
def P499430270123216215.Spec : Prop :=
  ∀ n, (P499430270123216215.a n : ℤ) = A079498 (n + 1)

theorem P499430270123216215.correct : P499430270123216215.Spec := by
  intro n
  simp only [A079498, Nat.add_sub_cancel]

end A079498

/-! ## A079498.P4790431033070685517

`eq[1, (a(n-1)+val(n, 3))%3+1]` with `a(0)=1`
-/

namespace A079498.P4790431033070685517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  (f2 (n - 1) + SequenceMachineLib.valuation n 3) % 3 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079498.P4790431033070685517

namespace A079498

/-- `eq[1, (a(n-1)+val(n, 3))%3+1]` -/
def P4790431033070685517.Spec : Prop :=
  ∀ n, (P4790431033070685517.a n : ℤ) = A079498 (n + 1)

end A079498

/-! ## A079498.P1443260360887634259

`eq[0, -((20*n-a(floor(n/3)))%3)]` with `a(0)=0`
-/

namespace A079498.P1443260360887634259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  -Int.tmod ((20 * n : ℤ) - f2 ⌊(n : ℚ) / 3⌋.toNat) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A079498.P1443260360887634259

namespace A079498

/-- `eq[0, -((20*n-a(floor(n/3)))%3)]` -/
def P1443260360887634259.Spec : Prop :=
  ∀ n, (P1443260360887634259.a n : ℤ) = A079498 (n + 1)

end A079498

/-! ## A079498.P42394820178684267

`A026601(n+1)-1`
-/

namespace A079498.P42394820178684267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026601 (n + 1) - 1

end

end A079498.P42394820178684267

namespace A079498

/-- `A026601(n+1)-1` -/
def P42394820178684267.Spec : Prop :=
  ∀ n, P42394820178684267.a n = A079498 (n + 1)

end A079498

/-! ## A079498.P14306947929034484650

`A198680(n+1)/3`
-/

namespace A079498.P14306947929034484650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198680 (n + 1) : ℚ) / 3

end

end A079498.P14306947929034484650

namespace A079498

/-- `A198680(n+1)/3` -/
def P14306947929034484650.Spec : Prop :=
  ∀ n, P14306947929034484650.a n = (A079498 (n + 1) : ℚ)

end A079498

/-! ## A079498.P6239313784289902555

`A016789(n)-A090239(n)`
-/

namespace A079498.P6239313784289902555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A090239 n

end

end A079498.P6239313784289902555

namespace A079498

/-- `A016789(n)-A090239(n)` -/
def P6239313784289902555.Spec : Prop :=
  ∀ n, P6239313784289902555.a n = A079498 (n + 1)

end A079498

/-! ## A079498.P6989388294252928141

`A016933(n)-A092293(n)`
-/

namespace A079498.P6989388294252928141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 n - A092293 n

end

end A079498.P6989388294252928141

namespace A079498

/-- `A016933(n)-A092293(n)` -/
def P6989388294252928141.Spec : Prop :=
  ∀ n, P6989388294252928141.a n = A079498 (n + 1)

end A079498

/-! ## A079498.P11095274679783709730

`A016777(n)+1-A090239(n)`
-/

namespace A079498.P11095274679783709730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (1 - A090239 n)

end

end A079498.P11095274679783709730

namespace A079498

/-- `A016777(n)+1-A090239(n)` -/
def P11095274679783709730.Spec : Prop :=
  ∀ n, P11095274679783709730.a n = A079498 (n + 1)

end A079498

/-! ## A079498.P4868848171579563129

`A016945(n)-(A092293(n)+1)`
-/

namespace A079498.P4868848171579563129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n - (A092293 n + 1)

end

end A079498.P4868848171579563129

namespace A079498

/-- `A016945(n)-(A092293(n)+1)` -/
def P4868848171579563129.Spec : Prop :=
  ∀ n, P4868848171579563129.a n = A079498 (n + 1)

end A079498

/-! ## A079498.P4011345415381306939

`A053838(n)+A092296(n)-1`
-/

namespace A079498.P4011345415381306939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 n + (A092296 n - 1)

end

end A079498.P4011345415381306939

namespace A079498

/-- `A053838(n)+A092296(n)-1` -/
def P4011345415381306939.Spec : Prop :=
  ∀ n, P4011345415381306939.a n = A079498 (n + 1)

end A079498

/-! ## A079498.P1607309945189044612

`A090193(n)+A092292(n)-1`
-/

namespace A079498.P1607309945189044612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 n + (A092292 n - 1)

end

end A079498.P1607309945189044612

namespace A079498

/-- `A090193(n)+A092292(n)-1` -/
def P1607309945189044612.Spec : Prop :=
  ∀ n, P1607309945189044612.a n = A079498 (n + 1)

end A079498

/-! ## A079498.P13093912084713237306

`A008585(n)+2-A090239(n)`
-/

namespace A079498.P13093912084713237306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + (2 - A090239 n)

end

end A079498.P13093912084713237306

namespace A079498

/-- `A008585(n)+2-A090239(n)` -/
def P13093912084713237306.Spec : Prop :=
  ∀ n, P13093912084713237306.a n = A079498 (n + 1)

end A079498

/-! ## A079498.P940490286532683296

`A092292(n+1)-(A090239(n)+A026600(n+2))`
-/

namespace A079498.P940490286532683296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092292 (n + 1) - (A090239 n + A026600 (n + 2))

end

end A079498.P940490286532683296

namespace A079498

/-- `A092292(n+1)-(A090239(n)+A026600(n+2))` -/
def P940490286532683296.Spec : Prop :=
  ∀ n, P940490286532683296.a n = A079498 (n + 1)

end A079498

/-! ## A079498.P7441388106907605305

`lt[1, A090239(n)]`
-/

namespace A079498.P7441388106907605305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090239 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A079498.P7441388106907605305

namespace A079498

/-- `lt[1, A090239(n)]` -/
def P7441388106907605305.Spec : Prop :=
  ∀ n, (P7441388106907605305.a n : ℤ) = A079498 (n + 1)

end A079498

/-! ## A079498.P12804801765885284828

`A016789(n)-A026608(A016789(n)-1)`
-/

namespace A079498.P12804801765885284828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A026608 (A016789 n - 1).toNat

end

end A079498.P12804801765885284828

namespace A079498

/-- `A016789(n)-A026608(A016789(n)-1)` -/
def P12804801765885284828.Spec : Prop :=
  ∀ n, P12804801765885284828.a n = A079498 (n + 1)

end A079498

/-! ## A079498.P6185489743478593301

`A026610(A016777(n))-(2-A016789(n))`
-/

namespace A079498.P6185489743478593301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026610 (A016777 n).toNat - (2 - A016789 n)

end

end A079498.P6185489743478593301

namespace A079498

/-- `A026610(A016777(n))-(2-A016789(n))` -/
def P6185489743478593301.Spec : Prop :=
  ∀ n, P6185489743478593301.a n = A079498 (n + 1)

end A079498

/-! ## A079498.P4233833420531632695

`A330396(A092293(n))`
-/

namespace A079498.P4233833420531632695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330396 (A092293 n).toNat

end

end A079498.P4233833420531632695

namespace A079498

/-- `A330396(A092293(n))` -/
def P4233833420531632695.Spec : Prop :=
  ∀ n, P4233833420531632695.a n = A079498 (n + 1)

end A079498

/-! ## A079498.P18238874066050437012

`A130509(A026602(n+1))-1`
-/

namespace A079498.P18238874066050437012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130509 (A026602 (n + 1)).toNat - 1

end

end A079498.P18238874066050437012

namespace A079498

/-- `A130509(A026602(n+1))-1` -/
def P18238874066050437012.Spec : Prop :=
  ∀ n, P18238874066050437012.a n = A079498 (n + 1)

end A079498

/-! ## A079498.P16987600478842420048

`A090193(A092293(n))+A008585(n)`
-/

namespace A079498.P16987600478842420048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 (A092293 n).toNat + A008585 n

end

end A079498.P16987600478842420048

namespace A079498

/-- `A090193(A092293(n))+A008585(n)` -/
def P16987600478842420048.Spec : Prop :=
  ∀ n, P16987600478842420048.a n = A079498 (n + 1)

end A079498

/-!
# A079499: Total number of parts in all partitions of n into distinct odd parts.

The programs for A079499, there is no canonical definition to state claims against.
-/

/-! ## A079499.P13503499498673127508

`and(A004525(n), A005496(A003586(n+1)))`
-/

namespace A079499.P13503499498673127508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004525 n) (A005496 (A003586 (n + 1)).toNat)

end

end A079499.P13503499498673127508

